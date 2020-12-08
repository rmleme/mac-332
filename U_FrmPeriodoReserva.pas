unit U_FrmPeriodoReserva;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, U_Global;

type
  TFrmPeriodoReserva = class(TForm)
    BtnOk: TBitBtn;
    BtnCancela: TBitBtn;
    LabDtInicio: TLabel;
    LabDtTermino: TLabel;
    MskDtInicio: TMaskEdit;
    MskDtTermino: TMaskEdit;
    procedure BtnOkClick(Sender: TObject);
    procedure MskDtInicioExit(Sender: TObject);
    procedure MskDtTerminoExit(Sender: TObject);
  private
  public
  end;

var
  FrmPeriodoReserva: TFrmPeriodoReserva;

implementation

uses U_FrmDadosReserva;

{$R *.DFM}

procedure TFrmPeriodoReserva.MskDtInicioExit(Sender: TObject);
begin
  try
    if MskDtInicio.Text <> '  /  /    ' then
    Begin
      MskDtInicio.Text := DateToStr(StrToDate(MskDtInicio.Text));
      if StrToDate(MskDtInicio.Text) < Date() then
      Begin
        ShowMessage('Data de in�cio anterior � data atual.');
        MskDtInicio.SetFocus;
      End
      else
        if(MskDtTermino.Text <> '  /  /    ') and
          (StrToDate(MskDtInicio.Text) > StrToDate(MskDtTermino.Text)) then
        Begin
          ShowMessage('Data de in�cio posterior � de t�rmino.');
          MskDtInicio.SetFocus;
        End;
    End;
  except
    on EConvertError do
    Begin
      ShowMessage('Erro: data de in�cio inv�lida.');
      MskDtInicio.Clear;
      MskDtInicio.SetFocus;
    End;
  End;
end;

procedure TFrmPeriodoReserva.MskDtTerminoExit(Sender: TObject);
begin
  try
    if MskDtTermino.Text <> '  /  /    ' then
    Begin
      MskDtTermino.Text := DateToStr(StrToDate(MskDtTermino.Text));
      if StrToDate(MskDtTermino.Text) < Date() then
      Begin
        ShowMessage('Data de t�rmino anterior � data atual.');
        MskDtTermino.SetFocus;
      End
      else
        if(MskDtInicio.Text <> '  /  /    ') and
          (StrToDate(MskDtTermino.Text) < StrToDate(MskDtInicio.Text)) then
        Begin
          ShowMessage('Data de t�rmino anterior � de in�cio.');
          MskDtTermino.SetFocus;
        End;
    End;
  except
    on EConvertError do
    Begin
      ShowMessage('Data de t�rmino inv�lida.');
      MskDtTermino.Clear;
      MskDtTermino.SetFocus;
    End;
  End;
end;

procedure TFrmPeriodoReserva.BtnOkClick(Sender: TObject);
Var i            : Integer;
    MesmoPeriodo : Boolean;
begin
  if MskDtInicio.Text = '  /  /    ' then
  Begin
    ShowMessage('A data de in�cio � obrigat�ria.');
    MskDtInicio.SetFocus;
  End
  else
    if MskDtTermino.Text = '  /  /    '  then
    Begin
      ShowMessage('A data de t�rmino � obrigat�ria.');
      MskDtTermino.SetFocus;
    End
    else
    Begin
      MesmoPeriodo := False;
      for i := 0 to Sistema.GetReservaAtual.GetQuarto.Reservas.Count - 1 do
        if ((StrToDate(MskDtInicio.Text) >= (Sistema.GetReservaAtual.GetQuarto.Reservas.Items[i] as TReserva).GetDtInicio) and
            (StrToDate(MskDtInicio.Text) <= (Sistema.GetReservaAtual.GetQuarto.Reservas.Items[i] as TReserva).GetDtTermino)) or
           ((StrToDate(MskDtTermino.Text) >= (Sistema.GetReservaAtual.GetQuarto.Reservas.Items[i] as TReserva).GetDtInicio) and
            (StrToDate(MskDtTermino.Text) <= (Sistema.GetReservaAtual.GetQuarto.Reservas.Items[i] as TReserva).GetDtTermino)) then
          MesmoPeriodo := True;

      if MesmoPeriodo then
      Begin
        ShowMessage('Este quarto j� est� reservado para este per�odo.');
        MskDtInicio.SetFocus;
      End
      else
      Begin
        Sistema.GetReservaAtual.SetDtInicio(StrToDate(MskDtInicio.Text));
        Sistema.GetReservaAtual.SetDtTermino(StrToDate(MskDtTermino.Text));
        FrmDadosReserva := TFrmDadosReserva.Create(Self);
        FrmDadosReserva.ShowModal;
        FrmDadosReserva.Free;
        Close;
      End;
    End;
end;

end.
