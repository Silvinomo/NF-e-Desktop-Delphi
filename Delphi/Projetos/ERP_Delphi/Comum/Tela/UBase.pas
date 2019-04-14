{ *******************************************************************************
  Title: T2Ti ERP
  Description: Janela Cadastro de Bancos

  The MIT License

  Copyright: Copyright (C) 2010 T2Ti.COM

  Permission is hereby granted, free of charge, to any person
  obtaining a copy of this software and associated documentation
  files (the "Software"), to deal in the Software without
  restriction, including without limitation the rights to use,
  copy, modify, merge, publish, distribute, sublicense, and/or sell
  copies of the Software, and to permit persons to whom the
  Software is furnished to do so, subject to the following
  conditions:

  The above copyright notice and this permission notice shall be
  included in all copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
  OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
  HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
  WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
  OTHER DEALINGS IN THE SOFTWARE.

  The author may be contacted at:
  t2ti.com@gmail.com</p>

  @author F�bio Thomaz (T2Ti.COM)
  @version 1.0
  ******************************************************************************* }
unit UBase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SessaoUsuario, JvArrowButton, Buttons, Tipos, UDataModule,
  JvPageList, Rtti, Atributos, ActnList, Menus, ConexaoBD;

type
  TFBase = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    function GetSessaoUsuario: TSessaoUsuario;
    function GetCustomKeyPreview: Boolean;
    procedure SetCustomKeyPreview(const Value: Boolean);
    { Private declarations }
  public
    { Public declarations }
    property Sessao: TSessaoUsuario read GetSessaoUsuario;

    procedure IconeBotao(pBotao: TBitBtn; pTipo: TImagem; pStatus: TStatusImagem; pTamanho: TTamanhoImagem); overload;
    procedure IconeBotao(pBotao: TJvArrowButton; pTipo: TImagem; pStatus: TStatusImagem; pTamanho: TTamanhoImagem); overload;
    procedure IconeBotao(pBotao: TSpeedButton; pTipo: TImagem; pStatus: TStatusImagem; pTamanho: TTamanhoImagem); overload;

    procedure IconePopupMenu(pMenu: TMenuItem; pTipo: TImagem; pStatus: TStatusImagem; pTamanho: TTamanhoImagem); overload;

    procedure FechaFormulario;

    function TemAcesso(pFuncaoObjeto: string): Boolean;
    procedure VerificaPermissoes;

    property CustomKeyPreview: Boolean read GetCustomKeyPreview write SetCustomKeyPreview default False;
  end;

var
  FBase: TFBase;

implementation

uses UMenu, ComCtrls;
{$R *.dfm}
{ TFBase }

procedure TFBase.FechaFormulario;
begin
  if (Self.Owner is TJvStandardPage) and (Assigned(FMenu)) then
    FMenu.FecharPagina(TJvStandardPage(Self.Owner))
  else
    Self.Close;
end;

procedure TFBase.FormCreate(Sender: TObject);
begin
  if TSessaoUsuario.Instance.Camadas = 2 then
  begin
    TDBExpress.Conectar('MySQL');
  end;
  VerificaPermissoes;
end;

function TFBase.GetCustomKeyPreview: Boolean;
begin
  Result := Self.KeyPreview;
end;

procedure TFBase.SetCustomKeyPreview(const Value: Boolean);
begin
  Self.KeyPreview := Value;

  if (Self.Owner is TJvStandardPage) and (Assigned(FMenu)) then
  begin
    FMenu.KeyPreview := Value;
  end;
end;

function TFBase.TemAcesso(pFuncaoObjeto: string): Boolean;
begin
  Result := Sessao.TemAcesso(Self.ClassName, pFuncaoObjeto);
end;

procedure TFBase.VerificaPermissoes;
var
  Obj: TObject;
  Habilitar: Boolean;
  Contexto: TRttiContext;
  Tipo: TRttiType;
  Campo: TRttiField;
  Atributo: TCustomAttribute;
begin
  Contexto := TRttiContext.Create;
  try
    Tipo := Contexto.GetType(Self.ClassType);

    for Campo in Tipo.GetFields do
    begin
      for Atributo in Campo.GetAttributes do
      begin
        if (Atributo is TComponentDescription) then
        begin
          if Campo.GetValue(Self).IsObject then
          begin
            Obj := Campo.GetValue(Self).AsObject;
            if Obj is TComponent then
            begin
              Habilitar := TemAcesso(TComponent(Obj).Name);

              if Obj is TControl then
              begin
                TControl(Obj).Enabled := Habilitar;

                if Obj is TTabSheet then
                begin
                  TTabSheet(Obj).TabVisible := Habilitar;
                end;
              end
              else if Obj is TAction then
              begin
                TAction(Obj).Enabled := Habilitar;
              end;
            end;
          end;
        end;
      end;
    end;
  finally
    Contexto.Free;
  end;
end;

function TFBase.GetSessaoUsuario: TSessaoUsuario;
begin
  Result := TSessaoUsuario.Instance;
end;

procedure TFBase.IconeBotao(pBotao: TBitBtn; pTipo: TImagem; pStatus: TStatusImagem; pTamanho: TTamanhoImagem);
begin
  if Assigned(pBotao.Glyph) then
    pBotao.Glyph.FreeImage;

  pBotao.Glyph := FDataModule.Imagem(pTipo, pStatus, pTamanho);
end;

procedure TFBase.IconeBotao(pBotao: TJvArrowButton; pTipo: TImagem; pStatus: TStatusImagem; pTamanho: TTamanhoImagem);
begin
  if Assigned(pBotao.Glyph) then
    pBotao.Glyph.FreeImage;

  pBotao.Glyph := FDataModule.Imagem(pTipo, pStatus, pTamanho);
end;

procedure TFBase.IconeBotao(pBotao: TSpeedButton; pTipo: TImagem; pStatus: TStatusImagem; pTamanho: TTamanhoImagem);
begin
  if Assigned(pBotao.Glyph) then
    pBotao.Glyph.FreeImage;

  pBotao.Glyph := FDataModule.Imagem(pTipo, pStatus, pTamanho);
end;

procedure TFBase.IconePopupMenu(pMenu: TMenuItem; pTipo: TImagem; pStatus: TStatusImagem; pTamanho: TTamanhoImagem);
begin
  if Assigned(pMenu.Bitmap) then
  begin
    pMenu.Bitmap.FreeImage;
  end;
  pMenu.Bitmap := FDataModule.Imagem(pTipo, pStatus, pTamanho);
end;

end.
