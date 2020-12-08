unit U_FrmCancelaReservaFunc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, U_Global;

type
  TFrmCancelaReservaFunc = class(TForm)
    LabCodReservas: TLabel;
    BtnApaga: TBitBtn;
    BtnVolta: TBitBtn;
    CmbCodReservas: TComboBox;
    procedure BtnApagaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
  public
  end;

var
  FrmCancelaReservaFunc: TFrmCancelaReservaFunc;

implementation

{$R *.DFM}

procedure TFrmCancelaReservaFunc.FormActivate(Sender: TObject);
Var i : Integer;
begin
  for i := 0 to Sistema.GetClienteAtual.Reservas.Count - 1 do
    CmbCodReservas.Items.Add(IntToStr((Sistema.GetClienteAtual.Reservas.Items[i] as TReserva).GetCodigo));
end;

procedure TFrmCancelaReservaFunc.BtnApagaClick(Sender: TObject);
Var i : Integer;
begin
  if MessageDlg('Deseja realmente cancelar esta reserva?',
                mtInformation,[mbYes,mbNo],0) = mrYes then
    with Sistema do
    Begin
      SetReservaAtual(GetClienteAtual.Reservas.Items[CmbCodReservas.ItemIndex] as TReserva);
      GetReservaAtual.GetQuarto.Reservas.Remove(GetReservaAtual);
      GetClienteAtual.Reservas.Remove(GetReservaAtual);
      SetReservaAtual(nil);
      CmbCodReservas.Clear;
      for i := 0 to Sistema.GetClienteAtual.Reservas.Count - 1 do
        CmbCodReservas.Items.Add(IntToStr((Sistema.GetClienteAtual.Reservas.Items[i] as TReserva).GetCodigo));
    End;
end;

end.
