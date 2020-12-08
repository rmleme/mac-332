unit U_FrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, StdCtrls, contnrs;

type
  TFrmPrincipal = class(TForm)
    LabCadUsuario: TLabel;
    LabLogin: TLabel;
    StgHoteis: TStringGrid;
    procedure LabCadUsuarioClick(Sender: TObject);
    procedure LabLoginClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
  public
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses U_FrmCadastraUsuarioCliente, U_FrmLogin, U_Global;

{$R *.DFM}

procedure TFrmPrincipal.LabCadUsuarioClick(Sender: TObject);
begin
  FrmCadastraUsuarioCliente := TFrmCadastraUsuarioCliente.Create(Self);
  FrmCadastraUsuarioCliente.ShowModal;
  FrmCadastraUsuarioCliente.Free;
end;

procedure TFrmPrincipal.LabLoginClick(Sender: TObject);
begin
  FrmLogin := TFrmLogin.Create(Self);
  FrmLogin.ShowModal;
  FrmLogin.Free;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
Var NovoHotel  : Array [1..3] of THotel;
    NovoQuarto : Array [1..6] of TQuarto;
    NovoFunc   : Array [1..3] of TFuncionario;
begin
  Sistema := TSistema.Create;

  // Cria alguns funcionários
  NovoFunc[1] := TFuncionario.Create;
  NovoFunc[1].SetLogin('func1');
  NovoFunc[1].SetSenha ('func1');
  Sistema.Funcionarios.Add(NovoFunc[1]);
  NovoFunc[2] := TFuncionario.Create;
  NovoFunc[2].SetLogin('func2');
  NovoFunc[2].SetSenha ('func2');
  Sistema.Funcionarios.Add(NovoFunc[2]);
  NovoFunc[3] := TFuncionario.Create;
  NovoFunc[3].SetLogin('func3');
  NovoFunc[3].SetSenha ('func3');
  Sistema.Funcionarios.Add(NovoFunc[3]);

  // Cria alguns hotéis e quartos
  NovoHotel[1] := THotel.Create;
  NovoHotel[1].SetNome('Maksoud Plaza');
  NovoHotel[1].SetLocalizacao('Jardins');
  NovoHotel[1].SetTelefones('(11) 3333-3333');
  NovoHotel[1].SetEmails('maksoud@ig.com.br');
  NovoHotel[1].SetCategoria('5 estrelas');
  NovoHotel[1].SetDescricao('Hotel padrao internacional');
  NovoQuarto[1] := TQuarto.Create;
  NovoQuarto[1].SetNumero(10);
  NovoQuarto[1].SetTipo('Presidencial');
  NovoQuarto[1].SetPreco(100.00);
  NovoQuarto[2] := TQuarto.Create;
  NovoQuarto[2].SetNumero(20);
  NovoQuarto[2].SetTipo('Real');
  NovoQuarto[2].SetPreco(200.00);
  NovoHotel[1].Quartos.Add(NovoQuarto[1]);
  NovoHotel[1].Quartos.Add(NovoQuarto[2]);
  Sistema.Hoteis.Add(NovoHotel[1]);

  NovoHotel[2] := THotel.Create;
  NovoHotel[2].SetNome('Waldorf Astoria');
  NovoHotel[2].SetLocalizacao('Nova York');
  NovoHotel[2].SetTelefones('(212) 111-1111');
  NovoHotel[2].SetEmails('waldorf@aol.com');
  NovoHotel[2].SetCategoria('6 estrelas');
  NovoHotel[2].SetDescricao('Hotel de luxo');
  NovoQuarto[3] := TQuarto.Create;
  NovoQuarto[3].SetNumero(30);
  NovoQuarto[3].SetTipo('President');
  NovoQuarto[3].SetPreco(300.00);
  NovoQuarto[4] := TQuarto.Create;
  NovoQuarto[4].SetNumero(40);
  NovoQuarto[4].SetTipo('King');
  NovoQuarto[4].SetPreco(400.00);
  NovoHotel[2].Quartos.Add(NovoQuarto[3]);
  NovoHotel[2].Quartos.Add(NovoQuarto[4]);
  Sistema.Hoteis.Add(NovoHotel[2]);

  NovoHotel[3] := THotel.Create;
  NovoHotel[3].SetNome('Sheraton');
  NovoHotel[3].SetLocalizacao('Trianon-MASP');
  NovoHotel[3].SetTelefones('(11) 9999-9999');
  NovoHotel[3].SetEmails('mofarrej@bol.com.br');
  NovoHotel[3].SetCategoria('1 estrela');
  NovoHotel[3].SetDescricao('Hotel caseiro');
  NovoQuarto[5] := TQuarto.Create;
  NovoQuarto[5].SetNumero(50);
  NovoQuarto[5].SetTipo('Porão');
  NovoQuarto[5].SetPreco(500.00);
  NovoQuarto[6] := TQuarto.Create;
  NovoQuarto[6].SetNumero(60);
  NovoQuarto[6].SetTipo('Sotão');
  NovoQuarto[6].SetPreco(600.00);
  NovoHotel[3].Quartos.Add(NovoQuarto[5]);
  NovoHotel[3].Quartos.Add(NovoQuarto[6]);
  Sistema.Hoteis.Add(NovoHotel[3]);
end;

procedure TFrmPrincipal.FormActivate(Sender: TObject);
Var i : Integer;
begin
  with StgHoteis do
  Begin
    Cells[0,0] := 'Nome';
    Cells[1,0] := 'Localização';
    Cells[2,0] := 'Telefones';
    Cells[3,0] := 'E-mails';

    for i := 0 to Sistema.Hoteis.Count - 1 do
    Begin
      RowCount := RowCount + 1;
      Cells[0,i + 1] := (Sistema.Hoteis.Items[i] as THotel).GetNome;
      Cells[1,i + 1] := (Sistema.Hoteis.Items[i] as THotel).GetLocalizacao;
      Cells[2,i + 1] := (Sistema.Hoteis.Items[i] as THotel).GetTelefones;
      Cells[3,i + 1] := (Sistema.Hoteis.Items[i] as THotel).GetEMails;
    End;
  End;
end;

end.
