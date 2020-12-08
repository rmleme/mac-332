unit U_FrmInfoClienteDados;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, StdCtrls, Buttons, U_Global;

type
  TFrmInfoClienteDados = class(TForm)
    LabNome: TLabel;
    LabEndereco: TLabel;
    LabTelefone: TLabel;
    LabRG: TLabel;
    EdtNome: TEdit;
    EdtTelefone: TEdit;
    EdtRG: TEdit;
    EdtEndereco: TEdit;
    BtnOk: TBitBtn;
    GrbReservas: TGroupBox;
    StgReservas: TStringGrid;
    LabAtualizaDados: TLabel;
    procedure LabAtualizaDadosClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
  public
  end;

var
  FrmInfoClienteDados: TFrmInfoClienteDados;

implementation

uses U_FrmAtualizaDados;

{$R *.DFM}

procedure TFrmInfoClienteDados.FormActivate(Sender: TObject);
Var i : Integer;
begin
  EdtNome.Text     := Sistema.GetClienteAtual.GetNome;
  EdtEndereco.Text := Sistema.GetClienteAtual.GetEndereco;
  EdtTelefone.Text := Sistema.GetClienteAtual.GetTelefone;
  EdtRG.Text       := Sistema.GetClienteAtual.GetRG;

  with StgReservas do
  Begin
    Cells[0,0] := 'Código';
    Cells[1,0] := 'Quarto';
    Cells[2,0] := 'Hotel';
    Cells[3,0] := 'Período';
    Cells[4,0] := 'Prazo de pagto.';

    for i := 0 to Sistema.GetClienteAtual.Reservas.Count - 1 do
    Begin
      RowCount := RowCount + 1;
      Cells[0,i + 1] := IntToStr((Sistema.GetClienteAtual.Reservas.Items[i] as TReserva).GetCodigo);
      Cells[1,i + 1] := IntToStr((Sistema.GetClienteAtual.Reservas.Items[i] as TReserva).GetQuarto.GetNumero);
      Cells[2,i + 1] := (Sistema.GetClienteAtual.Reservas.Items[i] as TReserva).GetHotel.GetNome;
      Cells[3,i + 1] := DateToStr((Sistema.GetClienteAtual.Reservas.Items[i] as TReserva).GetDtInicio) + ' a ' + DateToStr((Sistema.GetClienteAtual.Reservas.Items[i] as TReserva).GetDtTermino);
      Cells[4,i + 1] := IntToStr((Sistema.GetClienteAtual.Reservas.Items[i] as TReserva).GetPrazoPagto);
    End;
  End;
end;

procedure TFrmInfoClienteDados.LabAtualizaDadosClick(Sender: TObject);
begin
  FrmAtualizaDados := TFrmAtualizaDados.Create(Self);
  FrmAtualizaDados.ShowModal;
  FrmAtualizaDados.Free;
  EdtEndereco.Text := Sistema.GetClienteAtual.GetEndereco;
  EdtTelefone.Text := Sistema.GetClienteAtual.GetTelefone;
end;

end.
