object PeopleForm: TPeopleForm
  Left = 0
  Top = 0
  Caption = 'PeopleForm'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  TextHeight = 15
  object Button1: TButton
    Left = 534
    Top = 399
    Width = 75
    Height = 25
    Caption = 'Get Resquest'
    TabOrder = 0
    OnClick = Button1Click
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 8
    Width = 601
    Height = 369
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goFixedRowDefAlign]
    TabOrder = 1
  end
  object RESTClient1: TRESTClient
    BaseURL = 'https://swapi.dev/api/people'
    Params = <>
    SynchronizedEvents = False
    Left = 120
    Top = 384
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    SynchronizedEvents = False
    Left = 64
    Top = 392
  end
  object RESTResponse1: TRESTResponse
    Left = 24
    Top = 400
  end
  object PopupMenu1: TPopupMenu
    Left = 328
    Top = 232
    object N1: TMenuItem
      Caption = '-'
    end
    object TMenuItem
    end
    object TMenuItem
    end
    object TMenuItem
    end
  end
end
