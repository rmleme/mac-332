object FrmDadosReserva2: TFrmDadosReserva2
  Left = 405
  Top = 112
  Width = 283
  Height = 263
  Caption = 'Dados da reserva'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object LabHotel: TLabel
    Left = 8
    Top = 8
    Width = 83
    Height = 13
    Caption = 'Nome do hotel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabQuarto: TLabel
    Left = 8
    Top = 40
    Width = 84
    Height = 13
    Caption = 'Tipo de quarto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabPeriodo: TLabel
    Left = 8
    Top = 72
    Width = 46
    Height = 13
    Caption = 'Período'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabA: TLabel
    Left = 184
    Top = 72
    Width = 8
    Height = 13
    Caption = 'a'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabCodigo: TLabel
    Left = 8
    Top = 104
    Width = 40
    Height = 13
    Caption = 'Código'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabTaxa: TLabel
    Left = 8
    Top = 136
    Width = 136
    Height = 13
    Caption = 'Valor da taxa           R$'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabPrazo: TLabel
    Left = 8
    Top = 168
    Width = 128
    Height = 13
    Caption = 'Prazo para pagamento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabDias: TLabel
    Left = 180
    Top = 168
    Width = 24
    Height = 13
    Caption = 'dias'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object EdtHotel: TEdit
    Left = 144
    Top = 4
    Width = 121
    Height = 21
    Color = clSilver
    Enabled = False
    MaxLength = 15
    TabOrder = 0
  end
  object EdtQuarto: TEdit
    Left = 144
    Top = 36
    Width = 121
    Height = 21
    Color = clSilver
    Enabled = False
    MaxLength = 15
    TabOrder = 1
  end
  object MskDtInicio: TMaskEdit
    Left = 112
    Top = 68
    Width = 65
    Height = 21
    Color = clSilver
    Enabled = False
    EditMask = '99/99/9999;1; '
    MaxLength = 10
    TabOrder = 2
    Text = '  /  /    '
  end
  object MskDtTermino: TMaskEdit
    Left = 200
    Top = 68
    Width = 65
    Height = 21
    Color = clSilver
    Enabled = False
    EditMask = '99/99/9999;1; '
    MaxLength = 10
    TabOrder = 3
    Text = '  /  /    '
  end
  object EdtCodigo: TEdit
    Left = 144
    Top = 100
    Width = 121
    Height = 21
    Color = clSilver
    Enabled = False
    TabOrder = 4
  end
  object EdtTaxa: TEdit
    Left = 144
    Top = 132
    Width = 65
    Height = 21
    Color = clSilver
    Enabled = False
    TabOrder = 5
  end
  object BtnApaga: TBitBtn
    Left = 48
    Top = 200
    Width = 75
    Height = 25
    Caption = '&Apaga'
    Default = True
    TabOrder = 7
    OnClick = BtnApagaClick
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
  object BtnVolta: TBitBtn
    Left = 152
    Top = 200
    Width = 75
    Height = 25
    Caption = '&Volta'
    TabOrder = 8
    Kind = bkCancel
  end
  object EdtPrazo: TEdit
    Left = 144
    Top = 164
    Width = 33
    Height = 21
    Color = clSilver
    Enabled = False
    MaxLength = 3
    TabOrder = 6
  end
end
