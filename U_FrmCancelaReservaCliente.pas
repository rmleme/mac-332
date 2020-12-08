unit U_FrmCancelaReservaCliente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, U_Global;

type
  TFrmCancelaReservaCliente = class(TForm)
    BtnOk: TBitBtn;
    BtnCancela: TBitBtn;
    CmbCodReservas: TComboBox;
    LabCodReservas: TLabel;
    procedure BtnOkClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
  public
  end;

var
  FrmCancelaReservaCliente: TFrmCancelaReservaCliente;

implementation

uses U_FrmDadosReserva2;

{$R *.DFM}

procedure TFrmCancelaReservaCliente.FormActivate(Sender: TObject);
Var i : Integer;
begin
  for i := 0 to Sistema.GetClienteAtual.Reservas.Count - 1 do
    CmbCodReservas.Items.Add(IntToStr((Sistema.GetClienteAtual.Reservas.Items[i] as TReserva).GetCodigo));
end;

procedure TFrmCancelaReservaCliente.BtnOkClick(Sender: TObject);
Var i : Integer;
begin
  if CmbCodReservas.ItemIndex <> -1 then
  Begin
    Sistema.SetReservaAtual(Sistema.GetClienteAtual.Reservas.Items[CmbCodReservas.ItemIndex] as TReserva);
    FrmDadosReserva2 := TFrmDadosReserva2.Create(Self);
    FrmDadosReserva2.ShowModal;
    FrmDadosReserva2.Free;
    CmbCodReservas.Clear;
    for i := 0 to Sistema.GetClienteAtual.Reservas.Count - 1 do
      CmbCodReservas.Items.Add(IntToStr((Sistema.GetClienteAtual.Reservas.Items[i] as TReserva).GetCodigo));
  End;
end;

end.
