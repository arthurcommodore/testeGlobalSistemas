unit PeopleUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, REST.Types, Vcl.StdCtrls, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope, System.JSON, Vcl.Menus;

type
  TPeopleForm = class(TForm)
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    Button1: TButton;
    StringGrid1: TStringGrid;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PeopleForm: TPeopleForm;
  JSonValue: TJSonValue;
  nameRequest: string;
  HeightRequest: string;
  MassRequest: string;

  I : integer;
implementation

{$R *.dfm}

procedure TPeopleForm.Button1Click(Sender: TObject);
begin

  StringGrid1.ColCount := 3;
  StringGrid1.RowCount := 9;
  StringGrid1.FixedCols := 0;
  StringGrid1.FixedRows := 1;

  StringGrid1.Cells[0, 0] := 'Nome';
  StringGrid1.Cells[1, 0] := 'Height';
  StringGrid1.Cells[2, 0] := 'Mass';

  StringGrid1.ColWidths[0] := 100;
  StringGrid1.ColWidths[1] := 100;
  StringGrid1.ColWidths[2] := 100;

  RESTRequest1.Execute();


  for I := 1 to 9 do
  begin
    nameRequest := RESTRequest1.Response.JSONValue.GetValue<string>('results[' + IntToStr(I) + '].name');
    HeightRequest := RESTRequest1.Response.JSONValue.GetValue<string>('results[' + IntToStr(I) + '].height');
    MassRequest := RESTRequest1.Response.JSONValue.GetValue<string>('results[' + IntToStr(I) + '].mass');

    StringGrid1.Cells[0, I] := nameRequest;
    StringGrid1.Cells[1, I] := HeightRequest;
    StringGrid1.Cells[2, I] := MassRequest;
  end;

end;

procedure TPeopleForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  Application.Terminate;
end;

end.
