unit LoginUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, PeopleUnit;

type
  TLoginForm = class(TForm)
    pnl_principal: TPanel;
    btn_fechar: TSpeedButton;
    Shape1: TShape;
    pnl_image: TPanel;
    Label1: TLabel;
    Image1: TImage;
    Label2: TLabel;
    pnl_username: TPanel;
    Label3: TLabel;
    edtUsername: TEdit;
    pnl_password: TPanel;
    Label4: TLabel;
    edtPassword: TEdit;
    Button1: TButton;
    procedure BtnfecharClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LoginForm: TLoginForm;

implementation

{$R *.dfm}

procedure TLoginForm.Button1Click(Sender: TObject);
begin
  if ((edtUsername.Text = 'teste') and (edtPassword.Text = '102030')) then
  begin
    LoginForm.Hide;
    PeopleForm.Show;
  end;
end;

procedure TLoginForm.FormResize(Sender: TObject);
begin
  edtPassword.PasswordChar := '*';
  pnl_principal.Top := Round(LoginForm.Height / 2 - pnl_principal.Height / 2);
  pnl_principal.left := Round(LoginForm.Width / 2 - pnl_principal.Width / 2);
end;

procedure TLoginForm.BtnfecharClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.
