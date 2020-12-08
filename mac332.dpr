program mac332;

uses
  Forms,
  U_FrmPrincipal in 'U_FrmPrincipal.pas' {FrmPrincipal},
  U_FrmCadastraUsuarioCliente in 'U_FrmCadastraUsuarioCliente.pas' {FrmCadastraUsuarioCliente},
  U_FrmLogin in 'U_FrmLogin.pas' {FrmLogin},
  U_FrmOperacoesCliente in 'U_FrmOperacoesCliente.pas' {FrmOperacoesCliente},
  U_FrmAtualizaCadastro in 'U_FrmAtualizaCadastro.pas' {FrmAtualizaCadastro},
  U_FrmFazReserva in 'U_FrmFazReserva.pas' {FrmFazReserva},
  U_FrmCancelaReservaCliente in 'U_FrmCancelaReservaCliente.pas' {FrmCancelaReservaCliente},
  U_FrmPagaReserva in 'U_FrmPagaReserva.pas' {FrmPagaReserva},
  U_FrmEscolheQuarto in 'U_FrmEscolheQuarto.pas' {FrmEscolheQuarto},
  U_FrmPeriodoReserva in 'U_FrmPeriodoReserva.pas' {FrmPeriodoReserva},
  U_FrmDadosReserva in 'U_FrmDadosReserva.pas' {FrmDadosReserva},
  U_FrmDadosReserva2 in 'U_FrmDadosReserva2.pas' {FrmDadosReserva2},
  U_FrmDadosReserva3 in 'U_FrmDadosReserva3.pas' {FrmDadosReserva3},
  U_FrmOperacoesFunc in 'U_FrmOperacoesFunc.pas' {FrmOperacoesFunc},
  U_FrmInfoClienteBusca in 'U_FrmInfoClienteBusca.pas' {FrmInfoClienteBusca},
  U_FrmCancelaReservaFunc in 'U_FrmCancelaReservaFunc.pas' {FrmCancelaReservaFunc},
  U_FrmReativaReserva in 'U_FrmReativaReserva.pas' {FrmReativaReserva},
  U_FrmCadastraUsuarioFunc in 'U_FrmCadastraUsuarioFunc.pas' {FrmCadastraUsuarioFunc},
  U_FrmInfoClienteDados in 'U_FrmInfoClienteDados.pas' {FrmInfoClienteDados},
  U_FrmAtualizaDados in 'U_FrmAtualizaDados.pas' {FrmAtualizaDados},
  U_Global in 'U_Global.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'Sistema de Reserva de Hotéis';
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
