unit U_FrmAtualizaDados;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, U_Global;

type
  TFrmAtualizaDados = class(TForm)
    LabEndereco: TLabel;
    LabTelefone: TLabel;
    EdtTelefone: TEdit;
    EdtEndereco: TEdit;
    BtnOk: TBitBtn;
    BtnCancela: TBitBtn;
    procedure BtnOkClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
  public
  end;

var
  FrmAtualizaDados: TFrmAtualizaDados;

implementation

{$R *.DFM}

procedure TFrmAtualizaDados.FormActivate(Sender: TObject);
begin
  EdtEndereco.Text := Sistema.GetClienteAtual.GetEndereco;
  EdtTelefone.Text := Sistema.GetClienteAtual.GetTelefone;
end;

procedure TFrmAtualizaDados.BtnOkClick(Sender: TObject);
begin
  Sistema.AtualizaClienteAtual(EdtEndereco.Text,EdtTelefone.Text);
end;

end.
