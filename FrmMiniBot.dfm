object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  BiDiMode = bdLeftToRight
  BorderStyle = bsDialog
  Caption = 'Mini Bot para Treinar'
  ClientHeight = 140
  ClientWidth = 332
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 326
    Height = 134
    Align = alClient
    Color = clBtnHighlight
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    object lblSpell: TLabel
      Left = 10
      Top = 18
      Width = 33
      Height = 19
      Caption = 'Spell:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object lblMana: TLabel
      Left = 181
      Top = 18
      Width = 38
      Height = 19
      Caption = 'Mana:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object lblManaTotal: TLabel
      Left = 206
      Top = 100
      Width = 83
      Height = 19
      Caption = '1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object lblManaMana: TLabel
      Left = 165
      Top = 100
      Width = 35
      Height = 19
      Caption = 'Mana'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object StartButton: TButton
      Left = 10
      Top = 99
      Width = 75
      Height = 25
      Caption = 'Start'
      TabOrder = 0
    end
    object lbdSpell: TLabeledEdit
      Left = 48
      Top = 16
      Width = 121
      Height = 23
      BiDiMode = bdLeftToRight
      Color = clBtnHighlight
      EditLabel.Width = 3
      EditLabel.Height = 13
      EditLabel.BiDiMode = bdLeftToRight
      EditLabel.ParentBiDiMode = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
    end
    object CheckBox1: TCheckBox
      Left = 10
      Top = 56
      Width = 97
      Height = 17
      Caption = 'Anti-Kick'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object CheckBox2: TCheckBox
      Left = 129
      Top = 56
      Width = 97
      Height = 17
      Caption = 'Eat Food'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object lbdMana: TLabeledEdit
      Left = 223
      Top = 16
      Width = 66
      Height = 21
      EditLabel.Width = 3
      EditLabel.Height = 13
      TabOrder = 4
    end
    object ComboBox1: TComboBox
      Left = 208
      Top = 55
      Width = 81
      Height = 21
      TabOrder = 5
      Text = 'ComboBox1'
    end
  end
  object castSpell: TTimer
    Left = 155
    Top = 35
  end
  object endereco: TTimer
    Left = 115
    Top = 35
  end
  object kick: TTimer
    Left = 75
    Top = 35
  end
  object food: TTimer
    Left = 35
    Top = 35
  end
end
