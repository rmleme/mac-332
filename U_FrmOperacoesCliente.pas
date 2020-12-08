unit U_FrmOperacoesCliente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TFrmOperacoesCliente = class(TForm)
    LabAtualizaCad: TLabel;
    LabFazReserva: TLabel;
    LabCancelaReserva: TLabel;
    LabPagaReserva: TLabel;
    procedure LabAtualizaCadClick(Sender: TObject);
    procedure LabFazReservaClick(Sender: TObject);
    procedure LabCancelaReservaClick(Sender: TObject);
    procedure LabPagaReservaClick(Sender: TObject);
  private
  public
  end;

var
  FrmOperacoesCliente: TFrmOperacoesCliente;

implementation

uses U_FrmAtualizaCadastro, U_FrmFazReserva, U_FrmCancelaReservaCliente,
  U_FrmPagaReserva;

{$R *.DFM}

procedure TFrmOperacoesCliente.LabAtualizaCadClick(Sender: TObject);
begin
  FrmAtualizaCadastro := TFrmAtualizaCadastro.Create(Self);
  FrmAtualizaCadastro.ShowModal;
  FrmAtualizaCadastro.Free;
end;

procedure TFrmOperacoesCliente.LabFazReservaClick(Sender: TObject);
begin
  FrmFazReserva := TFrmFazReserva.Create(Self);
  FrmFazReserva.ShowModal;
  FrmFazReserva.Free;
end;

procedure TFrmOperacoesCliente.LabCancelaReservaClick(Sender: TObject);
begin
  FrmCancelaReservaCliente := TFrmCancelaReservaCliente.Create(Self);
  FrmCancelaReservaCliente.ShowModal;
  FrmCancelaReservaCliente.Free;
end;

procedure TFrmOperacoesCliente.LabPagaReservaClick(Sender: TObject);
begin
  FrmPagaReserva := TFrmPagaReserva.Create(Self);
  FrmPagaReserva.ShowModal;
  FrmPagaReserva.Free;
end;

end.
