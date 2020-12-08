object FrmCadastraUsuarioCliente: TFrmCadastraUsuarioCliente
  Left = 242
  Top = 183
  Width = 425
  Height = 269
  Caption = 'Cadastro de informações do usuário'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object LabNome: TLabel
    Left = 8
    Top = 8
    Width = 33
    Height = 13
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabEndereco: TLabel
    Left = 8
    Top = 40
    Width = 55
    Height = 13
    Caption = 'Endereço'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabTelefone: TLabel
    Left = 8
    Top = 72
    Width = 51
    Height = 13
    Caption = 'Telefone'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabRG: TLabel
    Left = 8
    Top = 104
    Width = 19
    Height = 13
    Caption = 'RG'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabLogin: TLabel
    Left = 8
    Top = 136
    Width = 32
    Height = 13
    Caption = 'Login'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabSenha: TLabel
    Left = 8
    Top = 168
    Width = 37
    Height = 13
    Caption = 'Senha'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabConfirmacao: TLabel
    Left = 160
    Top = 168
    Width = 71
    Height = 13
    Caption = 'Confirmação'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object EdtNome: TEdit
    Left = 64
    Top = 4
    Width = 225
    Height = 21
    MaxLength = 30
    TabOrder = 0
    OnExit = EdtNomeExit
  end
  object EdtTelefone: TEdit
    Left = 64
    Top = 68
    Width = 121
    Height = 21
    MaxLength = 15
    TabOrder = 2
  end
  object EdtRG: TEdit
    Left = 64
    Top = 100
    Width = 97
    Height = 21
    MaxLength = 15
    TabOrder = 3
    OnExit = EdtRGExit
  end
  object EdtLogin: TEdit
    Left = 64
    Top = 132
    Width = 73
    Height = 21
    MaxLength = 10
    TabOrder = 4
    OnChange = EdtLoginChange
    OnExit = EdtLoginExit
  end
  object EdtSenha: TEdit
    Left = 64
    Top = 164
    Width = 73
    Height = 21
    MaxLength = 10
    PasswordChar = '*'
    TabOrder = 5
    OnChange = EdtSenhaChange
  end
  object EdtConfirmacao: TEdit
    Left = 232
    Top = 164
    Width = 73
    Height = 21
    MaxLength = 10
    PasswordChar = '*'
    TabOrder = 6
    OnChange = EdtConfirmacaoChange
    OnExit = EdtConfirmacaoExit
  end
  object EdtEndereco: TEdit
    Left = 64
    Top = 36
    Width = 345
    Height = 21
    MaxLength = 60
    TabOrder = 1
  end
  object BtnOk: TBitBtn
    Left = 112
    Top = 208
    Width = 75
    Height = 25
    Caption = '&Ok'
    Default = True
    Enabled = False
    TabOrder = 7
    OnClick = BtnOkClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object BtnCancela: TBitBtn
    Left = 216
    Top = 208
    Width = 75
    Height = 25
    Caption = '&Cancela'
    TabOrder = 8
    Kind = bkCancel
  end
end
