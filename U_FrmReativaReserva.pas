unit U_FrmReativaReserva;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, U_Global;

type
  TFrmReativaReserva = class(TForm)
    LabCodReservas: TLabel;
    BtnOk: TBitBtn;
    BtnCancela: TBitBtn;
    CmbCodReservas: TComboBox;
    procedure BtnOkClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
  public
  end;

var
  FrmReativaReserva: TFrmReativaReserva;

implementation

uses U_FrmDadosReserva;

{$R *.DFM}

procedure TFrmReativaReserva.FormActivate(Sender: TObject);
Var i : Integer;
begin
  for i := 0 to Sistema.GetClienteAtual.Reservas.Count - 1 do
    if not (Sistema.GetClienteAtual.Reservas.Items[i] as TReserva).GetAtiva then
      CmbCodReservas.Items.Add(IntToStr((Sistema.GetClienteAtual.Reservas.Items[i] as TReserva).GetCodigo));
end;

procedure TFrmReativaReserva.BtnOkClick(Sender: TObject);
Var i : Integer;
begin
  if MessageDlg('Deseja realmente reativar esta reserva?',
                mtInformation,[mbYes,mbNo],0) = mrYes then
    with Sistema do
    Begin
      SetReservaAtual(GetClienteAtual.Reservas.Items[CmbCodReservas.ItemIndex] as TReserva);
      GetReservaAtual.SetPrazoPagto(7);       // Assume 7 dias de prazo como padrão
      GetReservaAtual.SetAtiva(True);
      FrmDadosReserva := TFrmDadosReserva.Create(Self);
      FrmDadosReserva.ShowModal;
      FrmDadosReserva.Free;
      CmbCodReservas.Clear;
      for i := 0 to Sistema.GetClienteAtual.Reservas.Count - 1 do
        if not (Sistema.GetClienteAtual.Reservas.Items[i] as TReserva).GetAtiva then
          CmbCodReservas.Items.Add(IntToStr((Sistema.GetClienteAtual.Reservas.Items[i] as TReserva).GetCodigo));
    End;
end;

end.
