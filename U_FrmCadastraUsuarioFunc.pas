unit U_FrmCadastraUsuarioFunc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, U_Global;

type
  TFrmCadastraUsuarioFunc = class(TForm)
    LabNome: TLabel;
    LabEndereco: TLabel;
    LabTelefone: TLabel;
    LabRG: TLabel;
    EdtNome: TEdit;
    EdtTelefone: TEdit;
    EdtRG: TEdit;
    EdtEndereco: TEdit;
    BtnOk: TBitBtn;
    BtnCancela: TBitBtn;
    procedure BtnOkClick(Sender: TObject);
    procedure EdtNomeExit(Sender: TObject);
    procedure EdtRGExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    ExisteCliente : Boolean;
  public
  end;

var
  FrmCadastraUsuarioFunc: TFrmCadastraUsuarioFunc;

implementation

{$R *.DFM}

procedure TFrmCadastraUsuarioFunc.FormActivate(Sender: TObject);
begin
  ExisteCliente := False;
end;

procedure TFrmCadastraUsuarioFunc.BtnOkClick(Sender: TObject);
Var NovoUsuario : TCliente;
begin
  if not ExisteCliente then       // Cria um novo cliente
  Begin
    NovoUsuario := TCliente.Create;
    NovoUsuario.SetNome(EdtNome.Text);
    NovoUsuario.SetEndereco(EdtEndereco.Text);
    NovoUsuario.SetTelefone(EdtTelefone.Text);
    NovoUsuario.SetRG(EdtRG.Text);
    NovoUsuario.SetFuncionario(Sistema.GetFuncAtual);
    Sistema.Clientes.Add(NovoUsuario);
    Sistema.SetClienteAtual(NovoUsuario);
  End
  else             // Cliente já existe, atualiza cliente atual
    Sistema.AtualizaClienteAtual(EdtEndereco.Text,EdtTelefone.Text);
  Close;
end;

procedure TFrmCadastraUsuarioFunc.EdtNomeExit(Sender: TObject);
begin
  if Sistema.ExisteNomeCliente(EdtNome.Text) then
  Begin
    ExisteCliente := True;
    Sistema.SelecClienteAtualNome(EdtNome.Text);
    EdtEndereco.Text := Sistema.GetClienteAtual.GetEndereco;
    EdtTelefone.Text := Sistema.GetClienteAtual.GetTelefone;
    EdtRG.Text       := Sistema.GetClienteAtual.GetRG;
  End;
end;

procedure TFrmCadastraUsuarioFunc.EdtRGExit(Sender: TObject);
begin
  if Sistema.ExisteRGCliente(EdtRG.Text) then
  Begin
    ExisteCliente := True;
    Sistema.SelecClienteAtualRG(EdtRG.Text);
    EdtNome.Text     := Sistema.GetClienteAtual.GetNome;
    EdtEndereco.Text := Sistema.GetClienteAtual.GetEndereco;
    EdtTelefone.Text := Sistema.GetClienteAtual.GetTelefone;
  End;
end;

end.
