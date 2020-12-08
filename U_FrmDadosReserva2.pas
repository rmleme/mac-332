unit U_FrmDadosReserva2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, U_Global;

type
  TFrmDadosReserva2 = class(TForm)
    LabHotel: TLabel;
    LabQuarto: TLabel;
    LabPeriodo: TLabel;
    LabA: TLabel;
    LabCodigo: TLabel;
    LabTaxa: TLabel;
    LabPrazo: TLabel;
    EdtHotel: TEdit;
    EdtQuarto: TEdit;
    MskDtInicio: TMaskEdit;
    MskDtTermino: TMaskEdit;
    EdtCodigo: TEdit;
    EdtTaxa: TEdit;
    BtnApaga: TBitBtn;
    BtnVolta: TBitBtn;
    EdtPrazo: TEdit;
    LabDias: TLabel;
    procedure BtnApagaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
  public
  end;

var
  FrmDadosReserva2: TFrmDadosReserva2;

implementation

{$R *.DFM}

procedure TFrmDadosReserva2.FormActivate(Sender: TObject);
begin
  with Sistema.GetReservaAtual do
  Begin
    EdtHotel.Text     := GetHotel.GetNome;
    EdtQuarto.Text    := GetQuarto.GetTipo;
    MskDtInicio.Text  := DateToStr(GetDtInicio);
    MskDtTermino.Text := DateToStr(GetDtTermino);
    EdtCodigo.Text    := IntToStr(GetCodigo);
    EdtTaxa.Text      := FloatToStr(GetTaxaReserva);
    EdtPrazo.Text     := IntToStr(GetPrazoPagto);
  End;
end;

procedure TFrmDadosReserva2.BtnApagaClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente cancelar esta reserva?',
                mtInformation,[mbYes,mbNo],0) = mrYes then
    with Sistema do
    Begin
      GetReservaAtual.GetQuarto.Reservas.Remove(GetReservaAtual);
      GetClienteAtual.Reservas.Remove(GetReservaAtual);
      SetReservaAtual(nil);
      Close;
    End;
end;

end.
