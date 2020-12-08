unit U_FrmDadosReserva3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, U_Global;

type
  TFrmDadosReserva3 = class(TForm)
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
    BtnOk: TBitBtn;
    BtnCancela: TBitBtn;
    LabNumCartao: TLabel;
    LabDataValid: TLabel;
    EdtNumCartao: TEdit;
    MskDataValid: TMaskEdit;
    EdtPrazo: TEdit;
    LabDias: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure MskDataValidExit(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
  private
  public
  end;

var
  FrmDadosReserva3: TFrmDadosReserva3;

implementation

{$R *.DFM}

procedure TFrmDadosReserva3.FormActivate(Sender: TObject);
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

procedure TFrmDadosReserva3.MskDataValidExit(Sender: TObject);
begin
  try
    if MskDataValid.Text <> '  /  /    ' then
    Begin
      MskDataValid.Text := DateToStr(StrToDate(MskDataValid.Text));
      if StrToDate(MskDataValid.Text) < Date() then
      Begin
        ShowMessage('Data de validade anterior à data atual.');
        MskDataValid.SetFocus;
      End;
    End;
  except
    on EConvertError do
    Begin
      ShowMessage('Data de validade inválida.');
      MskDataValid.Clear;
      MskDataValid.SetFocus;
    End;
  End;
end;

procedure TFrmDadosReserva3.BtnOkClick(Sender: TObject);
begin
  if MskDataValid.Text = '  /  /    ' then
  Begin
    ShowMessage('A data de validade é obrigatória.');
    MskDataValid.SetFocus;
  End
  else
  Begin
    Sistema.GetReservaAtual.SetPrazoPagto(-1);
    Close;
  End;
end;

end.
