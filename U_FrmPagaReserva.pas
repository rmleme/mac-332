unit U_FrmPagaReserva;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, U_Global;

type
  TFrmPagaReserva = class(TForm)
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
  FrmPagaReserva: TFrmPagaReserva;

implementation

uses U_FrmDadosReserva3;

{$R *.DFM}

procedure TFrmPagaReserva.FormActivate(Sender: TObject);
Var i : Integer;
begin
  for i := 0 to Sistema.GetClienteAtual.Reservas.Count - 1 do
    if (Sistema.GetClienteAtual.Reservas.Items[i] as TReserva).GetPrazoPagto >= 0 then
      CmbCodReservas.Items.Add(IntToStr((Sistema.GetClienteAtual.Reservas.Items[i] as TReserva).GetCodigo));
end;

procedure TFrmPagaReserva.BtnOkClick(Sender: TObject);
Var i : Integer;
begin
  Sistema.SetReservaAtual(Sistema.GetClienteAtual.Reservas.Items[CmbCodReservas.ItemIndex] as TReserva);
  FrmDadosReserva3 := TFrmDadosReserva3.Create(Self);
  FrmDadosReserva3.ShowModal;
  FrmDadosReserva3.Free;
  CmbCodReservas.Clear;
  for i := 0 to Sistema.GetClienteAtual.Reservas.Count - 1 do
    if (Sistema.GetClienteAtual.Reservas.Items[i] as TReserva).GetPrazoPagto >= 0 then
      CmbCodReservas.Items.Add(IntToStr((Sistema.GetClienteAtual.Reservas.Items[i] as TReserva).GetCodigo));
end;

end.
