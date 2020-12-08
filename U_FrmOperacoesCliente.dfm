object FrmOperacoesCliente: TFrmOperacoesCliente
  Left = 354
  Top = 188
  Width = 175
  Height = 128
  Caption = 'Operações'
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
  object LabAtualizaCad: TLabel
    Left = 8
    Top = 8
    Width = 103
    Height = 13
    Caption = 'Atualizar cadastro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    OnClick = LabAtualizaCadClick
  end
  object LabFazReserva: TLabel
    Left = 8
    Top = 32
    Width = 84
    Height = 13
    Caption = 'Fazer reservas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    OnClick = LabFazReservaClick
  end
  object LabCancelaReserva: TLabel
    Left = 8
    Top = 56
    Width = 151
    Height = 13
    Caption = 'Cancelamento de reservas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    OnClick = LabCancelaReservaClick
  end
  object LabPagaReserva: TLabel
    Left = 8
    Top = 80
    Width = 134
    Height = 13
    Caption = 'Pagamento de reservas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    OnClick = LabPagaReservaClick
  end
end
