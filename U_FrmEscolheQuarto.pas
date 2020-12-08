unit U_FrmEscolheQuarto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, U_Global;

type
  TFrmEscolheQuarto = class(TForm)
    BtnOk: TBitBtn;
    BtnCancela: TBitBtn;
    StgQuartos: TStringGrid;
    procedure BtnOkClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
  public
  end;

var
  FrmEscolheQuarto: TFrmEscolheQuarto;

implementation

uses U_FrmPeriodoReserva;

{$R *.DFM}

procedure TFrmEscolheQuarto.BtnOkClick(Sender: TObject);
Var NovaReserva : TReserva;
    QualQuarto  : TQuarto;
begin
  NovaReserva := TReserva.Create;
  NovaReserva.SetCliente(Sistema.GetClienteAtual);
  NovaReserva.SetHotel(Sistema.GetHotelAtual);
  QualQuarto := Sistema.GetHotelAtual.Quartos.Items[StgQuartos.Row - 1] as TQuarto;
  NovaReserva.SetQuarto(QualQuarto);
  NovaReserva.SetTaxaReserva(QualQuarto.GetPreco);
  NovaReserva.SetPrazoPagto(7);       // Assume 7 dias de prazo como padrão
  NovaReserva.SetDtFezReserva(Date());
  Sistema.SetReservaAtual(NovaReserva);

  FrmPeriodoReserva := TFrmPeriodoReserva.Create(Self);
  FrmPeriodoReserva.ShowModal;
  FrmPeriodoReserva.Free;
end;

procedure TFrmEscolheQuarto.FormActivate(Sender: TObject);
Var i : Integer;
begin
  with StgQuartos do
  Begin
    Cells[0,0] := 'Tipo de quarto';
    Cells[1,0] := 'Preço';

    for i := 0 to Sistema.GetHotelAtual.Quartos.Count - 1 do
    Begin
      RowCount := RowCount + 1;
      Cells[0,i + 1] := (Sistema.GetHotelAtual.Quartos.Items[i] as TQuarto).GetTipo;
      Cells[1,i + 1] := FloatToStr((Sistema.GetHotelAtual.Quartos.Items[i] as TQuarto).GetPreco);
    End;
  End;
end;

end.
