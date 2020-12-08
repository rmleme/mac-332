object FrmPrincipal: TFrmPrincipal
  Left = 138
  Top = 40
  Width = 629
  Height = 138
  Caption = 'Sistema de reserva de hotéis'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LabCadUsuario: TLabel
    Left = 8
    Top = 16
    Width = 120
    Height = 13
    Caption = 'Cadastro de usuários'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    OnClick = LabCadUsuarioClick
  end
  object LabLogin: TLabel
    Left = 8
    Top = 40
    Width = 32
    Height = 13
    Caption = 'Login'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    OnClick = LabLoginClick
  end
  object StgHoteis: TStringGrid
    Left = 144
    Top = 16
    Width = 465
    Height = 81
    ColCount = 4
    DefaultColWidth = 80
    DefaultRowHeight = 16
    FixedCols = 0
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ColWidths = (
      94
      103
      96
      150)
  end
end
