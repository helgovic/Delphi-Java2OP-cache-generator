object FGenerateChache: TFGenerateChache
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  ClientHeight = 231
  ClientWidth = 582
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object AFEBridgeFile: TAdvFileNameEdit
    Left = 12
    Top = 28
    Width = 439
    Height = 21
    EmptyTextStyle = []
    Flat = False
    LabelCaption = 'Bridge file'
    LabelPosition = lpTopLeft
    LabelTransparent = True
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'Tahoma'
    LabelFont.Style = []
    Lookup.Separator = ';'
    Color = clWindow
    ReadOnly = False
    TabOrder = 0
    Text = ''
    Visible = True
    Version = '1.3.3.4'
    ButtonStyle = bsButton
    ButtonWidth = 18
    Etched = False
    Glyph.Data = {
      CE000000424DCE0000000000000076000000280000000C0000000B0000000100
      0400000000005800000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00D00000000DDD
      00000077777770DD00000F077777770D00000FF07777777000000FFF00000000
      00000FFFFFFF0DDD00000FFF00000DDD0000D000DDDDD0000000DDDDDDDDDD00
      0000DDDDD0DDD0D00000DDDDDD000DDD0000}
    Filter = 'Pas Files|*.pas'
    FilterIndex = 0
    DialogOptions = []
    DialogKind = fdOpen
  end
  object BGenerate: TButton
    Left = 254
    Top = 158
    Width = 75
    Height = 25
    Caption = 'Generate'
    TabOrder = 1
    OnClick = BGenerateClick
  end
  object AFECacheFile: TAdvFileNameEdit
    Left = 12
    Top = 86
    Width = 439
    Height = 21
    EmptyTextStyle = []
    Flat = False
    LabelCaption = 'Cache file'
    LabelPosition = lpTopLeft
    LabelTransparent = True
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'Tahoma'
    LabelFont.Style = []
    Lookup.Separator = ';'
    Color = clWindow
    ReadOnly = False
    TabOrder = 2
    Text = ''
    Visible = True
    Version = '1.3.3.4'
    ButtonStyle = bsButton
    ButtonWidth = 18
    Etched = False
    Glyph.Data = {
      CE000000424DCE0000000000000076000000280000000C0000000B0000000100
      0400000000005800000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00D00000000DDD
      00000077777770DD00000F077777770D00000FF07777777000000FFF00000000
      00000FFFFFFF0DDD00000FFF00000DDD0000D000DDDDD0000000DDDDDDDDDD00
      0000DDDDD0DDD0D00000DDDDDD000DDD0000}
    DefaultExt = 'pas'
    FilterIndex = 0
    DialogOptions = []
    DialogKind = fdOpen
  end
  object CBClipBoard: TCheckBox
    Left = 466
    Top = 88
    Width = 155
    Height = 17
    Caption = 'Copy to clipboard'
    TabOrder = 3
  end
end
