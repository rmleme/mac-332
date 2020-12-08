unit U_FrmCadastraUsuarioCliente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, U_Global;

type
  TFrmCadastraUsuarioCliente = class(TForm)
    LabNome: TLabel;
    LabEndereco: TLabel;
    LabTelefone: TLabel;
    LabRG: TLabel;
    LabLogin: TLabel;
    LabSenha: TLabel;
    LabConfirmacao: TLabel;
    EdtNome: TEdit;
    EdtTelefone: TEdit;
    EdtRG: TEdit;
    EdtLogin: TEdit;
    EdtSenha: TEdit;
    EdtConfirmacao: TEdit;
    EdtEndereco: TEdit;
    BtnOk: TBitBtn;
    BtnCancela: TBitBtn;
    procedure EdtLoginChange(Sender: TObject);
    procedure EdtSenhaChange(Sender: TObject);
    procedure EdtConfirmacaoChange(Sender: TObject);
    procedure EdtConfirmacaoExit(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure EdtLoginExit(Sender: TObject);
    procedure EdtNomeExit(Sender: TObject);
    procedure EdtRGExit(Sender: TObject);
  private
  public
  end;

var
  FrmCadastraUsuarioCliente: TFrmCadastraUsuarioCliente;

implementation

{$R *.DFM}

procedure TFrmCadastraUsuarioCliente.EdtLoginChange(Sender: TObject);
begin
  if (Trim(EdtLogin.Text) <> '') and (Trim(EdtSenha.Text) <> '') and
     (Trim(EdtConfirmacao.Text) <> '') then
    BtnOk.Enabled := True
  else
    BtnOk.Enabled := False;
end;

procedure TFrmCadastraUsuarioCliente.EdtLoginExit(Sender: TObject);
begin
  if Sistema.ExisteLogin(EdtLogin.Text) then
  Begin
    ShowMessage('Este login já esta sendo usado.');
    EdtLogin.SetFocus;
  End;
end;

procedure TFrmCadastraUsuarioCliente.EdtSenhaChange(Sender: TObject);
begin
  if (Trim(EdtLogin.Text) <> '') and (Trim(EdtSenha.Text) <> '') and
     (Trim(EdtConfirmacao.Text) <> '') then
    BtnOk.Enabled := True
  else
    BtnOk.Enabled := False;
end;

procedure TFrmCadastraUsuarioCliente.EdtConfirmacaoChange(Sender: TObject);
begin
  if (Trim(EdtLogin.Text) <> '') and (Trim(EdtSenha.Text) <> '') and
     (Trim(EdtConfirmacao.Text) <> '') then
    BtnOk.Enabled := True
  else
    BtnOk.Enabled := False;
end;

procedure TFrmCadastraUsuarioCliente.EdtConfirmacaoExit(Sender: TObject);
begin
  if FrmCadastraUsuarioCliente.ActiveControl <> BtnCancela then
    if (Trim(EdtSenha.Text) <> '') and (Trim(EdtConfirmacao.Text) <> '') and
      (Trim(EdtSenha.Text) <> Trim(EdtConfirmacao.Text)) then
    Begin
      ShowMessage('Não confere com senha.');
      BtnOk.Enabled := False;
      EdtSenha.Clear;
      EdtConfirmacao.Clear;
      EdtSenha.SetFocus;
    End;
end;

procedure TFrmCadastraUsuarioCliente.BtnOkClick(Sender: TObject);
Var NovoUsuario : TCliente;
begin
  NovoUsuario := TCliente.Create;
  NovoUsuario.SetNome(EdtNome.Text);
  NovoUsuario.SetEndereco(EdtEndereco.Text);
  NovoUsuario.SetTelefone(EdtTelefone.Text);
  NovoUsuario.SetRG(EdtRG.Text);
  NovoUsuario.SetLogin(EdtLogin.Text);
  NovoUsuario.SetSenha(EdtSenha.Text);
  Sistema.Clientes.Add(NovoUsuario);
  Close;
end;

procedure TFrmCadastraUsuarioCliente.EdtNomeExit(Sender: TObject);
begin
  if Sistema.ExisteNomeCliente(EdtNome.Text) then
  Begin
    ShowMessage('Este cliente já existe.');
    EdtNome.SetFocus;
  End;
end;

procedure TFrmCadastraUsuarioCliente.EdtRGExit(Sender: TObject);
begin
  if Sistema.ExisteRGCliente(EdtRG.Text) then
  Begin
    ShowMessage('Este cliente já existe.');
    EdtRG.SetFocus;
  End;
end;

end.
