unit LoginUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, PeopleUnit;

type
  Tform_login = class(TForm)
    pnl_principal: TPanel;
    btn_fechar: TSpeedButton;
    Shape1: TShape;
    pnl_image: TPanel;
    Label1: TLabel;
    Image1: TImage;
    Label2: TLabel;
    pnl_username: TPanel;
    Label3: TLabel;
    edt_username: TEdit;
    pnl_password: TPanel;
    Label4: TLabel;
    edt_password: TEdit;
    Button1: TButton;
    procedure btn_fecharClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_login: Tform_login;

implementation

{$R *.dfm}

procedure Tform_login.Button1Click(Sender: TObject);
begin
  if((edt_username.Text = 'teste') and (edt_password.Text = '102030')) then
  begin
    form_login.Hide;
    PeopleForm.Show;
  end;
end;

procedure Tform_login.FormResize(Sender: TObject);
begin
  edt_password.PasswordChar := '*';
  pnl_principal.Top :=  Round (form_login.Height / 2 - pnl_principal.Height / 2);
  pnl_principal.left :=  Round (form_login.Width / 2 - pnl_principal.Width / 2);
end;

procedure Tform_login.btn_fecharClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.
