unit U_Global;

interface

uses contnrs;

Type TFuncionario = class;
     TCliente     = class;
     THotel       = class;
     TReserva     = class;

     TSistema = class
       Hoteis,
       Funcionarios,
       Clientes : TObjectList;
     private
       ContCodReserva : Integer;
       ClienteAtual   : TCliente;
       FuncAtual      : TFuncionario;
       HotelAtual     : THotel;
       ReservaAtual   : TReserva;
     public
       constructor Create;
       Function ExisteLogin(Login : String) : Boolean;
       Function ExisteNomeCliente(Nome : String) : Boolean;
       Function ExisteRGCliente(RG : String) : Boolean;
       Function ConfereSenhaCliente(Login, Senha : String) : Boolean;
       Function ConfereSenhaFunc(Login, Senha : String) : Boolean;
       Procedure AtualizaContCodReserva;
       Procedure SelecClienteAtual(Login, Senha : String);
       Procedure SelecClienteAtualNome(Nome : String);
       Procedure SelecClienteAtualRG(RG : String);
       Procedure AtualizaClienteAtual(NovoEndereco, NovoTelefone, NovoSenha : String); overload;
       Procedure AtualizaClienteAtual(NovoEndereco, NovoTelefone : String); overload;
       Procedure SelecFuncAtual(Login, Senha : String);
       Function GetContCodReserva : Integer;
       Function GetClienteAtual : TCliente;
       Function GetFuncAtual : TFuncionario;
       Function GetHotelAtual : THotel;
       Function GetReservaAtual : TReserva;
       Procedure SetHotelAtual(i : Integer);
       Procedure SetReservaAtual(NovoReserva : TReserva);
       Procedure SetClienteAtual(NovoCliente : TCliente);
       Procedure SetFuncAtual(NovoFunc : TFuncionario);
     end;

     THotel = class
       Quartos : TObjectList;
     private
       Nome,
       Localizacao : String[15];
       Telefones   : String[20];
       Emails      : String[25];
       Categoria   : String[10];
       Descricao   : String[30];
     public
       constructor Create;
       Function GetNome : String;
       Function GetLocalizacao : String;
       Function GetTelefones : String;
       Function GetEmails : String;
       Function GetCategoria : String;
       Function GetDescricao : String;
       Procedure SetNome(NovoNome : String);
       Procedure SetLocalizacao(NovaLocalizacao : String);
       Procedure SetTelefones(NovoTelefones : String);
       Procedure SetEmails(NovoEmails : String);
       Procedure SetCategoria(NovoCategoria : String);
       Procedure SetDescricao(NovoDescricao : String);
     end;

     TQuarto = class
       Reservas : TObjectList;
     private
       Numero : Integer;
       Tipo   : String[15];
       Preco  : Real;
       Hotel  : THotel;
     public
       constructor Create;
       Function GetNumero : Integer;
       Function GetTipo : String;
       Function GetPreco : Real;
       Function GetHotel : THotel;
       Procedure SetNumero(NovoNumero : Integer);
       Procedure SetTipo(NovoTipo : String);
       Procedure SetPreco(NovoPreco : Real);
       Procedure SetHotel(NovoHotel : THotel);
     end;

     TFuncionario = class
     private
       Login,
       Senha : String[10];
     public
       Function GetLogin : String;
       Function GetSenha : String;
       Procedure SetLogin(NovoLogin : String);
       Procedure SetSenha(NovoSenha : String);
     end;

     TCliente = class
       Reservas : TObjectList;
     private
       Nome        : String[30];
       Endereco    : String[60];
       Telefone,
       RG          : String[15];
       Login,
       Senha       : String[10];
       Funcionario : TFuncionario;
     public
       constructor Create;
       Function GetNome : String;
       Function GetEndereco : String;
       Function GetTelefone : String;
       Function GetRG : String;
       Function GetLogin : String;
       Function GetSenha : String;
       Function GetFuncionario : TFuncionario;
       Procedure SetNome(NovoNome : String);
       Procedure SetEndereco(NovoEndereco : String);
       Procedure SetTelefone(NovoTelefone : String);
       Procedure SetRG(NovoRG : String);
       Procedure SetLogin(NovoLogin : String);
       Procedure SetSenha(NovoSenha : String);
       Procedure SetFuncionario(NovoFuncionario : TFuncionario);
     end;

     TReserva = class
     private
       Codigo       : Integer;
       Cliente      : TCliente;
       Hotel        : THotel;
       Quarto       : TQuarto;
       DtInicio,
       DtTermino    : TDateTime;
       TaxaReserva  : Real;
       PrazoPagto   : Integer;
       Ativa        : Boolean;
       DtFezReserva : TDateTime;
     public
       constructor Create;
       Function GetCodigo : Integer;
       Function GetCliente : TCliente;
       Function GetHotel : THotel;
       Function GetQuarto : TQuarto;
       Function GetDtInicio : TDateTime;
       Function GetDtTermino : TDateTime;
       Function GetTaxaReserva : Real;
       Function GetPrazoPagto : Integer;
       Function GetAtiva : Boolean;
       Function GetDtFezReserva : TDateTime;
       Procedure SetCodigo(NovoCodigo : Integer);
       Procedure SetCliente(NovoCliente : TCliente);
       Procedure SetHotel(NovoHotel : THotel);
       Procedure SetQuarto(NovoQuarto : TQuarto);
       Procedure SetDtInicio(NovoDtInicio : TDateTime);
       Procedure SetDtTermino(NovoDtTermino : TDateTime);
       Procedure SetTaxaReserva(NovoTaxaReserva : Real);
       Procedure SetPrazoPagto(NovoPrazoPagto : Integer);
       Procedure SetAtiva(NovoAtiva : Boolean);
       Procedure SetDtFezReserva(NovoDtFezReserva : TDateTime);
     end;

Var Sistema : TSistema;

implementation

{**************************************************************************
 * Classe: TSistema                                                       *
 *************************************************************************}

constructor TSistema.Create;
Begin
  inherited Create;
  ContCodReserva := 0;
  Hoteis         := TObjectList.Create;
  Funcionarios   := TObjectList.Create;
  Clientes       := TObjectList.Create;
End;

Function TSistema.ExisteLogin(Login : String) : Boolean;
Var i      : Integer;
    Existe : Boolean;
Begin
  Existe := False;
  for i := 0 to Clientes.Count - 1 do
    if (Clientes.Items[i] as TCliente).GetLogin = Login then
      Existe := True;
  if not Existe then
  for i := 0 to Funcionarios.Count - 1 do
    if (Funcionarios.Items[i] as TFuncionario).GetLogin = Login then
      Existe := True;
  ExisteLogin := Existe;
End;

Function TSistema.ExisteNomeCliente(Nome : String) : Boolean;
Var i      : Integer;
    Existe : Boolean;
Begin
  Existe := False;
  for i := 0 to Clientes.Count - 1 do
    if (Clientes.Items[i] as TCliente).GetNome = Nome then
      Existe := True;
  ExisteNomeCliente := Existe;
End;

Function TSistema.ExisteRGCliente(RG : String) : Boolean;
Var i      : Integer;
    Existe : Boolean;
Begin
  Existe := False;
  for i := 0 to Clientes.Count - 1 do
    if (Clientes.Items[i] as TCliente).GetRG = RG then
      Existe := True;
  ExisteRGCliente := Existe;
End;

Function TSistema.ConfereSenhaCliente(Login, Senha : String) : Boolean;
Var i       : Integer;
    Confere : Boolean;
Begin
  Confere := False;
  for i := 0 to Clientes.Count - 1 do
    if ((Clientes.Items[i] as TCliente).GetLogin = Login) and
       ((Clientes.Items[i] as TCliente).GetSenha = Senha) then
      Confere := True;
  ConfereSenhaCliente := Confere;
End;

Function TSistema.ConfereSenhaFunc(Login, Senha : String) : Boolean;
Var i       : Integer;
    Confere : Boolean;
Begin
  Confere := False;
  for i := 0 to Funcionarios.Count - 1 do
    if ((Funcionarios.Items[i] as TFuncionario).GetLogin = Login) and
       ((Funcionarios.Items[i] as TFuncionario).GetSenha = Senha) then
      Confere := True;
  ConfereSenhaFunc := Confere;
End;

Procedure TSistema.AtualizaContCodReserva;
Begin
  Inc(ContCodReserva);
End;

Procedure TSistema.SelecClienteAtual(Login, Senha : String);
Var i       : Integer;
    Cliente : TCliente;
Begin
  Cliente := nil;
  for i := 0 to Clientes.Count - 1 do
    if ((Clientes.Items[i] as TCliente).GetLogin = Login) and
       ((Clientes.Items[i] as TCliente).GetSenha = Senha) then
      Cliente := (Clientes.Items[i] as TCliente);
  ClienteAtual := Cliente;
End;

Procedure TSistema.SelecClienteAtualNome(Nome : String);
Var i       : Integer;
    Cliente : TCliente;
Begin
  Cliente := nil;
  for i := 0 to Clientes.Count - 1 do
    if (Clientes.Items[i] as TCliente).GetNome = Nome then
      Cliente := (Clientes.Items[i] as TCliente);
  ClienteAtual := Cliente;
End;

Procedure TSistema.SelecClienteAtualRG(RG : String);
Var i       : Integer;
    Cliente : TCliente;
Begin
  Cliente := nil;
  for i := 0 to Clientes.Count - 1 do
    if (Clientes.Items[i] as TCliente).GetRG = RG then
      Cliente := (Clientes.Items[i] as TCliente);
  ClienteAtual := Cliente;
End;

Procedure TSistema.AtualizaClienteAtual(NovoEndereco, NovoTelefone, NovoSenha : String);
Var i : Integer;
Begin
  ClienteAtual.SetEndereco(NovoEndereco);
  ClienteAtual.SetTelefone(NovoTelefone);
  ClienteAtual.SetSenha(NovoSenha);
  Clientes.OwnsObjects := False;
  for i := 0 to Clientes.Count - 1 do
    if ((Clientes.Items[i] as TCliente).GetLogin = ClienteAtual.GetLogin) and
       ((Clientes.Items[i] as TCliente).GetSenha = ClienteAtual.GetSenha) then
       Clientes.Items[i] := ClienteAtual;
  Clientes.OwnsObjects := True;
End;

Procedure TSistema.AtualizaClienteAtual(NovoEndereco, NovoTelefone : String);
Var i : Integer;
Begin
  ClienteAtual.SetEndereco(NovoEndereco);
  ClienteAtual.SetTelefone(NovoTelefone);
  Clientes.OwnsObjects := False;
  for i := 0 to Clientes.Count - 1 do
    if (Clientes.Items[i] as TCliente).GetRG = ClienteAtual.GetRG then
      Clientes.Items[i] := ClienteAtual;
  Clientes.OwnsObjects := True;
End;

Procedure TSistema.SelecFuncAtual(Login, Senha : String);
Var i    : Integer;
    Func : TFuncionario;
Begin
  Func := nil;
  for i := 0 to Funcionarios.Count - 1 do
    if ((Funcionarios.Items[i] as TFuncionario).GetLogin = Login) and
       ((Funcionarios.Items[i] as TFuncionario).GetSenha = Senha) then
      Func := (Funcionarios.Items[i] as TFuncionario);
  FuncAtual := Func;
End;

Function TSistema.GetClienteAtual : TCliente;
Begin
  GetClienteAtual := ClienteAtual;
End;

Function TSistema.GetFuncAtual : TFuncionario;
Begin
  GetFuncAtual := FuncAtual;
End;

Function TSistema.GetHotelAtual : THotel;
Begin
  GetHotelAtual := HotelAtual;
End;

Function TSistema.GetReservaAtual : TReserva;
Begin
  GetReservaAtual := ReservaAtual;
End;

Function TSistema.GetContCodReserva : Integer;
Begin
  GetContCodReserva := ContCodReserva;
End;

Procedure TSistema.SetHotelAtual(i : Integer);
Begin
  HotelAtual := (Hoteis.Items[i] as THotel);
End;

Procedure TSistema.SetReservaAtual(NovoReserva : TReserva);
Begin
  ReservaAtual := NovoReserva;
End;

Procedure TSistema.SetClienteAtual(NovoCliente : TCliente);
Begin
  ClienteAtual := NovoCliente;
End;

Procedure TSistema.SetFuncAtual(NovoFunc : TFuncionario);
Begin
  FuncAtual := NovoFunc;
End;

{**************************************************************************
 * Classe: THotel                                                         *
 *************************************************************************}

constructor THotel.Create;
Begin
  inherited Create;
  Quartos := TObjectList.Create;
End;

Function THotel.GetNome : String;
Begin
  GetNome := Nome;
End;

Function THotel.GetLocalizacao : String;
Begin
  GetLocalizacao := Localizacao;
End;

Function THotel.GetTelefones : String;
Begin
  GetTelefones := Telefones;
End;

Function THotel.GetEmails : String;
Begin
  GetEmails := Emails;
End;

Function THotel.GetCategoria : String;
Begin
  GetCategoria := Categoria;
End;

Function THotel.GetDescricao : String;
Begin
  GetDescricao := Descricao;
End;

Procedure THotel.SetNome(NovoNome : String);
Begin
  Nome := NovoNome;
End;

Procedure THotel.SetLocalizacao(NovaLocalizacao : String);
Begin
  Localizacao := NovaLocalizacao;
End;

Procedure THotel.SetTelefones(NovoTelefones : String);
Begin
  Telefones := NovoTelefones;
End;

Procedure THotel.SetEmails(NovoEmails : String);
Begin
  Emails := NovoEmails;
End;

Procedure THotel.SetCategoria(NovoCategoria : String);
Begin
  Categoria := NovoCategoria;
End;

Procedure THotel.SetDescricao(NovoDescricao : String);
Begin
  Descricao := NovoDescricao;
End;


{**************************************************************************
 * Classe: TQuarto                                                        *
 *************************************************************************}

constructor TQuarto.Create;
Begin
  inherited Create;
  Reservas := TObjectList.Create;
End;

Function TQuarto.GetNumero : Integer;
Begin
  GetNumero := Numero;
End;

Function TQuarto.GetTipo : String;
Begin
  GetTipo := Tipo;
End;

Function TQuarto.GetPreco : Real;
Begin
  GetPreco := Preco;
End;

Function TQuarto.GetHotel : THotel;
Begin
  GetHotel := Hotel;
End;

Procedure TQuarto.SetNumero(NovoNumero : Integer);
Begin
  Numero := NovoNumero;
End;

Procedure TQuarto.SetTipo(NovoTipo : String);
Begin
  Tipo := NovoTipo;
End;

Procedure TQuarto.SetPreco(NovoPreco : Real);
Begin
  Preco := NovoPreco;
End;

Procedure TQuarto.SetHotel(NovoHotel : THotel);
Begin
  Hotel := NovoHotel;
End;


{**************************************************************************
 * Classe: TFuncionario                                                   *
 *************************************************************************}

Function TFuncionario.GetLogin : String;
Begin
  GetLogin := Login;
End;

Function TFuncionario.GetSenha : String;
Begin
  GetSenha := Senha;
End;

Procedure TFuncionario.SetLogin(NovoLogin : String);
Begin
  Login := NovoLogin;
End;

Procedure TFuncionario.SetSenha(NovoSenha : String);
Begin
  Senha := NovoSenha;
End;


{**************************************************************************
 * Classe: TCliente                                                       *
 *************************************************************************}

constructor TCliente.Create;
Begin
  inherited Create;
  Reservas := TObjectList.Create;
End;

Function TCliente.GetNome : String;
Begin
  GetNome := Nome;
End;

Function TCliente.GetEndereco : String;
Begin
  GetEndereco := Endereco;
End;

Function TCliente.GetTelefone : String;
Begin
  GetTelefone := Telefone;
End;

Function TCliente.GetRG : String;
Begin
  GetRG := RG;
End;

Function TCliente.GetLogin : String;
Begin
  GetLogin := Login;
End;

Function TCliente.GetSenha : String;
Begin
  GetSenha := Senha;
End;

Function TCliente.GetFuncionario : TFuncionario;
Begin
  GetFuncionario := Funcionario;
End;

Procedure TCliente.SetNome(NovoNome : String);
Begin
  Nome := NovoNome;
End;

Procedure TCliente.SetEndereco(NovoEndereco : String);
Begin
  Endereco := NovoEndereco;
End;

Procedure TCliente.SetTelefone(NovoTelefone : String);
Begin
  Telefone := NovoTelefone;
End;

Procedure TCliente.SetRG(NovoRG : String);
Begin
  RG := NovoRG;
End;

Procedure TCliente.SetLogin(NovoLogin : String);
Begin
  Login := NovoLogin;
End;

Procedure TCliente.SetSenha(NovoSenha : String);
Begin
  Senha := NovoSenha;
End;

Procedure TCliente.SetFuncionario(NovoFuncionario : TFuncionario);
Begin
  Funcionario := NovoFuncionario;
End;


{**************************************************************************
 * Classe: TReserva                                                       *
 *************************************************************************}

constructor TReserva.Create;
Begin
  inherited Create;
  Sistema.AtualizaContCodReserva;
  Codigo := Sistema.GetContCodReserva;
  Ativa  := True;
End;

Function TReserva.GetCodigo : Integer;
Begin
  GetCodigo := Codigo;
End;

Function TReserva.GetCliente : TCliente;
Begin
  GetCliente := Cliente;
End;

Function TReserva.GetHotel : THotel;
Begin
  GetHotel := Hotel;
End;

Function TReserva.GetQuarto : TQuarto;
Begin
  GetQuarto := Quarto;
End;

Function TReserva.GetDtInicio : TDateTime;
Begin
  GetDtInicio := DtInicio;
End;

Function TReserva.GetDtTermino : TDateTime;
Begin
  GetDtTermino := DtTermino;
End;

Function TReserva.GetTaxaReserva : Real;
Begin
  GetTaxaReserva := TaxaReserva;
End;

Function TReserva.GetPrazoPagto : Integer;
Begin
  GetPrazoPagto := PrazoPagto;
End;

Function TReserva.GetAtiva : Boolean;
Begin
  GetAtiva := Ativa;
End;

Function TReserva.GetDtFezReserva : TDateTime;
Begin
  GetDtFezReserva := DtFezReserva;
End;

Procedure TReserva.SetCodigo(NovoCodigo : Integer);
Begin
  Codigo := NovoCodigo;
End;

Procedure TReserva.SetCliente(NovoCliente : TCliente);
Begin
  Cliente := NovoCliente;
End;

Procedure TReserva.SetHotel(NovoHotel : THotel);
Begin
  Hotel := NovoHotel;
End;

Procedure TReserva.SetQuarto(NovoQuarto : TQuarto);
Begin
  Quarto := NovoQuarto;
End;

Procedure TReserva.SetDtInicio(NovoDtInicio : TDateTime);
Begin
  DtInicio := NovoDtInicio;
End;

Procedure TReserva.SetDtTermino(NovoDtTermino : TDateTime);
Begin
  DtTermino := NovoDtTermino;
End;

Procedure TReserva.SetTaxaReserva(NovoTaxaReserva : Real);
Begin
  TaxaReserva := NovoTaxaReserva;
End;

Procedure TReserva.SetPrazoPagto(NovoPrazoPagto : Integer);
Begin
  PrazoPagto := NovoPrazoPagto;
End;

Procedure TReserva.SetAtiva(NovoAtiva : Boolean);
Begin
  Ativa := NovoAtiva;
End;

Procedure TReserva.SetDtFezReserva(NovoDtFezReserva : TDateTime);
Begin
  DtFezReserva := NovoDtFezReserva;
End;

end.
