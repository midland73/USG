unit MainMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.MPlayer, Vcl.Imaging.GIFImg, Vcl.Imaging.jpeg, Vcl.Menus, ShellAPI;
type
  TmMainMenu = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Image1: TImage;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure N4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mMainMenu: TmMainMenu;
  fontway:string;

implementation

{$R *.dfm}

uses LoadingR, Test;

procedure TmMainMenu.BitBtn1Click(Sender: TObject);
begin
mMainMenu.Hide;
lLoadingR.Show;
end;

procedure TmMainMenu.BitBtn3Click(Sender: TObject);
begin
if MessageDlgPos('Перед тестом рекомендуется изучить карту.Вы уверены?',
mtInformation,[mbYes,mbNo],0,770,538)
=mrYes
then
mMainMenu.Hide;
tTest.Show;
end;

procedure TmMainMenu.BitBtn4Click(Sender: TObject);
begin
close;
end;


procedure TmMainMenu.FormCreate(Sender: TObject);
begin
fontway:=extractfilepath(application.ExeName);
addfontresource(PChar(fontway + 'font\Redemption.ttf'));
end;

procedure TmMainMenu.FormDestroy(Sender: TObject);
begin
fontway:=extractfilepath(application.ExeName);
removefontresource(PChar(fontway + 'font\Redemption.ttf'));
end;

procedure TmMainMenu.N2Click(Sender: TObject);
begin
close;
end;

procedure TmMainMenu.N3Click(Sender: TObject);
begin
Showmessage('Программу разработал Ганисевский Александр ПЗТ-41');
end;

procedure TmMainMenu.N4Click(Sender: TObject);
begin
ShellExecute(0,PChar('Open'),PChar('USGhelp.chm'), nil,nil,SW_Show);
end;

end.
