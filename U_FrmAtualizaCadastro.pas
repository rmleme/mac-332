unit U_FrmAtualizaCadastro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, U_Global;

type
  TFrmAtualizaCadastro = class(TForm)
    LabEndereco: TLabel;
    LabTelefone: TLabel;
    LabSenha: TLabel;
    LabConfirmacao: TLabel;
    EdtTelefone: TEdit;
    EdtSenha: TEdit;
    EdtConfirmacao: TEdit;
    EdtEndereco: TEdit;
    BtnOk: TBitBtn;
    BtnCancela: TBitBtn;
    procedure EdtSenhaChange(Sender: TObject);
    procedure EdtConfirmacaoChange(Sender: TObject);
    procedure EdtConfirmacaoExit(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
  public
  end;

var
  FrmAtualizaCadastro: TFrmAtualizaCadastro;

implementation

{$R *.DFM}

procedure TFrmAtualizaCadastro.FormActivate(Sender: TObject);
begin
  EdtEndereco.Text := Sistema.GetClienteAtual.GetEndereco;
  EdtTelefone.Text := Sistema.GetClienteAtual.GetTelefone;
end;

procedure TFrmAtualizaCadastro.EdtSenhaChange(Sender: TObject);
begin
  if (Trim(EdtSenha.Text) <> '') and (Trim(EdtConfirmacao.Text) <> '') then
    BtnOk.Enabled := True
  else
    BtnOk.Enabled := False;
end;

procedure TFrmAtualizaCadastro.EdtConfirmacaoChange(Sender: TObject);
begin
  if (Trim(EdtSenha.Text) <> '') and (Trim(EdtConfirmacao.Text) <> '') then
    BtnOk.Enabled := True
  else
    BtnOk.Enabled := False;
end;

procedure TFrmAtualizaCadastro.EdtConfirmacaoExit(Sender: TObject);
begin
  if FrmAtualizaCadastro.ActiveControl <> BtnCancela then
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

procedure TFrmAtualizaCadastro.BtnOkClick(Sender: TObject);
begin
   Sistema.AtualizaClienteAtual(EdtEndereco.Text,EdtTelefone.Text,EdtSenha.Text);
   Close;
end;

end.
