unit U_FrmInfoClienteBusca;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, U_Global;

type
  TFrmInfoClienteBusca = class(TForm)
    LabNome: TLabel;
    LabRG: TLabel;
    EdtNome: TEdit;
    EdtRG: TEdit;
    BtnBusca: TBitBtn;
    BtnCancela: TBitBtn;
    procedure BtnBuscaClick(Sender: TObject);
    procedure EdtNomeExit(Sender: TObject);
    procedure EdtRGExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    ExisteCliente : Boolean;
  public
  end;

var
  FrmInfoClienteBusca: TFrmInfoClienteBusca;

implementation

uses U_FrmInfoClienteDados;

{$R *.DFM}

procedure TFrmInfoClienteBusca.FormActivate(Sender: TObject);
begin
  ExisteCliente := False;
end;

procedure TFrmInfoClienteBusca.EdtNomeExit(Sender: TObject);
begin
  if Sistema.ExisteNomeCliente(EdtNome.Text) then
  Begin
    ExisteCliente := True;
    Sistema.SelecClienteAtualNome(EdtNome.Text);
    EdtRG.Text := Sistema.GetClienteAtual.GetRG;
  End;
end;

procedure TFrmInfoClienteBusca.EdtRGExit(Sender: TObject);
begin
  if Sistema.ExisteRGCliente(EdtRG.Text) then
  Begin
    ExisteCliente := True;
    Sistema.SelecClienteAtualRG(EdtRG.Text);
    EdtNome.Text := Sistema.GetClienteAtual.GetNome;
  End;
end;

procedure TFrmInfoClienteBusca.BtnBuscaClick(Sender: TObject);
begin
  if ExisteCliente then
  Begin
    FrmInfoClienteDados := TFrmInfoClienteDados.Create(Self);
    FrmInfoClienteDados.ShowModal;
    FrmInfoClienteDados.Free;
    Close;
  End
  else
    ShowMessage('Este cliente não existe.');
end;

end.
