object FrmPeriodoReserva: TFrmPeriodoReserva
  Left = 234
  Top = 54
  Width = 203
  Height = 135
  Caption = 'Per�odo da reserva'
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
  object LabDtInicio: TLabel
    Left = 8
    Top = 8
    Width = 34
    Height = 13
    Caption = 'In�cio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabDtTermino: TLabel
    Left = 8
    Top = 40
    Width = 46
    Height = 13
    Caption = 'T�rmino'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BtnOk: TBitBtn
    Left = 8
    Top = 72
    Width = 75
    Height = 25
    Caption = '&Ok'
    Default = True
    TabOrder = 2
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
    Left = 112
    Top = 72
    Width = 75
    Height = 25
    Caption = '&Cancela'
    TabOrder = 3
    Kind = bkCancel
  end
  object MskDtInicio: TMaskEdit
    Left = 56
    Top = 4
    Width = 65
    Height = 21
    EditMask = '99/99/9999;1; '
    MaxLength = 10
    TabOrder = 0
    Text = '  /  /    '
    OnExit = MskDtInicioExit
  end
  object MskDtTermino: TMaskEdit
    Left = 56
    Top = 36
    Width = 65
    Height = 21
    EditMask = '99/99/9999;1; '
    MaxLength = 10
    TabOrder = 1
    Text = '  /  /    '
    OnExit = MskDtTerminoExit
  end
end
