unit U_FrmOperacoesFunc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, U_Global;

type
  TFrmOperacoesFunc = class(TForm)
    LabCadCliente: TLabel;
    LabFazReserva: TLabel;
    LabCancelaReserva: TLabel;
    LabPagaReserva: TLabel;
    LabInfoCliente: TLabel;
    LabReativaReserva: TLabel;
    procedure LabCadClienteClick(Sender: TObject);
    procedure LabInfoClienteClick(Sender: TObject);
    procedure LabFazReservaClick(Sender: TObject);
    procedure LabCancelaReservaClick(Sender: TObject);
    procedure LabPagaReservaClick(Sender: TObject);
    procedure LabReativaReservaClick(Sender: TObject);
  private
  public
  end;

var
  FrmOperacoesFunc: TFrmOperacoesFunc;

implementation

uses U_FrmInfoClienteBusca, U_FrmFazReserva, U_FrmPagaReserva,
  U_FrmCancelaReservaFunc, U_FrmReativaReserva, U_FrmCadastraUsuarioFunc;

{$R *.DFM}

procedure TFrmOperacoesFunc.LabCadClienteClick(Sender: TObject);
begin
  FrmCadastraUsuarioFunc := TFrmCadastraUsuarioFunc.Create(Self);
  FrmCadastraUsuarioFunc.ShowModal;
  FrmCadastraUsuarioFunc.Free;
end;

procedure TFrmOperacoesFunc.LabInfoClienteClick(Sender: TObject);
begin
  if Sistema.GetClienteAtual = nil then
    ShowMessage('Selecione um cliente primeiro.')
  else
  Begin
    FrmInfoClienteBusca := TFrmInfoClienteBusca.Create(Self);
    FrmInfoClienteBusca.ShowModal;
    FrmInfoClienteBusca.Free;
  End;
end;

procedure TFrmOperacoesFunc.LabFazReservaClick(Sender: TObject);
begin
  if Sistema.GetClienteAtual = nil then
    ShowMessage('Erro: selecione um cliente primeiro.')
  else
  Begin
    FrmFazReserva := TFrmFazReserva.Create(Self);
    FrmFazReserva.ShowModal;
    FrmFazReserva.Free;
  End;
end;

procedure TFrmOperacoesFunc.LabCancelaReservaClick(Sender: TObject);
begin
  if Sistema.GetClienteAtual = nil then
    ShowMessage('Erro: selecione um cliente primeiro.')
  else
  Begin
    FrmCancelaReservaFunc := TFrmCancelaReservaFunc.Create(Self);
    FrmCancelaReservaFunc.ShowModal;
    FrmCancelaReservaFunc.Free;
  End;
end;

procedure TFrmOperacoesFunc.LabPagaReservaClick(Sender: TObject);
begin
  if Sistema.GetClienteAtual = nil then
    ShowMessage('Erro: selecione um cliente primeiro.')
  else
  Begin
    FrmPagaReserva := TFrmPagaReserva.Create(Self);
    FrmPagaReserva.ShowModal;
    FrmPagaReserva.Free;
  End;
end;

procedure TFrmOperacoesFunc.LabReativaReservaClick(Sender: TObject);
begin
  if Sistema.GetClienteAtual = nil then
    ShowMessage('Erro: selecione um cliente primeiro.')
  else
  Begin
    FrmReativaReserva := TFrmReativaReserva.Create(Self);
    FrmReativaReserva.ShowModal;
    FrmReativaReserva.Free;
  End;
end;

end.
