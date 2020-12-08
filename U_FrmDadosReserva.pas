unit U_FrmDadosReserva;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, U_Global;

type
  TFrmDadosReserva = class(TForm)
    BtnOk: TBitBtn;
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
    EdtPrazo: TEdit;
    LabDias: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
  private
  public
  end;

var
  FrmDadosReserva: TFrmDadosReserva;

implementation

{$R *.DFM}

procedure TFrmDadosReserva.FormActivate(Sender: TObject);
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

procedure TFrmDadosReserva.BtnOkClick(Sender: TObject);
begin
  Sistema.GetReservaAtual.GetQuarto.Reservas.Add(Sistema.GetReservaAtual);
  Sistema.GetClienteAtual.Reservas.Add(Sistema.GetReservaAtual);
end;

end.
