unit U_FrmFazReserva;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, U_Global;

type
  TFrmFazReserva = class(TForm)
    StgHoteis: TStringGrid;
    BtnOk: TBitBtn;
    BtnCancela: TBitBtn;
    procedure BtnOkClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
  public
  end;

var
  FrmFazReserva: TFrmFazReserva;

implementation

uses U_FrmEscolheQuarto;

{$R *.DFM}

procedure TFrmFazReserva.BtnOkClick(Sender: TObject);
begin
  Sistema.SetHotelAtual(StgHoteis.Row - 1);
  FrmEscolheQuarto := TFrmEscolheQuarto.Create(Self);
  FrmEscolheQuarto.ShowModal;
  FrmEscolheQuarto.Free;
end;

procedure TFrmFazReserva.FormActivate(Sender: TObject);
Var i : Integer;
begin
  with StgHoteis do
  Begin
    Cells[0,0] := 'Nome do hotel';
    Cells[1,0] := 'Categoria';
    Cells[2,0] := 'Descrição';

    for i := 0 to Sistema.Hoteis.Count - 1 do
    Begin
      RowCount := RowCount + 1;
      Cells[0,i + 1] := (Sistema.Hoteis.Items[i] as THotel).GetNome;
      Cells[1,i + 1] := (Sistema.Hoteis.Items[i] as THotel).GetCategoria;
      Cells[2,i + 1] := (Sistema.Hoteis.Items[i] as THotel).GetDescricao;
    End;
  End;
end;

end.
