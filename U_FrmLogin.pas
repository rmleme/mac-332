unit U_FrmLogin;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, U_Global;

type
  TFrmLogin = class(TForm)
    LabLogin: TLabel;
    EdtLogin: TEdit;
    LabSenha: TLabel;
    EdtSenha: TEdit;
    BtnOk: TBitBtn;
    BtnCancela: TBitBtn;
    procedure BtnOkClick(Sender: TObject);
  private
  public
  end;

var
  FrmLogin: TFrmLogin;

implementation

uses U_FrmOperacoesCliente, U_FrmOperacoesFunc;

{$R *.DFM}

procedure TFrmLogin.BtnOkClick(Sender: TObject);
Var AchouCliente,
    AchouFunc : Boolean;
begin
  if Trim(EdtLogin.Text) = '' then
  Begin
    ShowMessage('Login deve ser informado.');
    EdtLogin.SetFocus;
  End
  else
    if not Sistema.ExisteLogin(EdtLogin.Text) then
    Begin
      ShowMessage('Login não cadastrado no sistema.');
      EdtLogin.SetFocus;
    End
    else
    Begin
      AchouCliente := Sistema.ConfereSenhaCliente(EdtLogin.Text,EdtSenha.Text);
      AchouFunc    := Sistema.ConfereSenhaFunc(EdtLogin.Text,EdtSenha.Text);
      if (not AchouCliente) and (not AchouFunc) then
      Begin
        ShowMessage('Senha inválida.');
        EdtSenha.Clear;
        EdtSenha.SetFocus;
      End
      else
        if AchouCliente then
        Begin
          Sistema.SelecClienteAtual(EdtLogin.Text,EdtSenha.Text);
          if Sistema.GetClienteAtual.GetFuncionario = nil then
          Begin
            FrmOperacoesCliente := TFrmOperacoesCliente.Create(Self);
            FrmOperacoesCliente.ShowModal;
            FrmOperacoesCliente.Free;
          End
          else
            ShowMessage('Cliente cadastrado por funcionário.');
          Sistema.SetClienteAtual(nil);
          EdtLogin.Clear;
          EdtSenha.Clear;
          EdtLogin.SetFocus;
        End
        else            // Achou funcionário
        Begin
          Sistema.SelecFuncAtual(EdtLogin.Text,EdtSenha.Text);
          FrmOperacoesFunc := TFrmOperacoesFunc.Create(Self);
          FrmOperacoesFunc.ShowModal;
          FrmOperacoesFunc.Free;
          Sistema.SetClienteAtual(nil);
          Sistema.SetFuncAtual(nil);
          EdtLogin.Clear;
          EdtSenha.Clear;
          EdtLogin.SetFocus;
        End;
    End;
end;

end.
