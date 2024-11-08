unit Zastavka;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.GIFImg;

type
  TzZastavka = class(TForm)
    Label1: TLabel;
    Image1: TImage;
    Timer1: TTimer;
    Image3: TImage;
    Image2: TImage;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  zZastavka: TzZastavka;
  c:integer;
  fontway:string;

implementation

{$R *.dfm}

uses MainMenu;

procedure TzZastavka.FormCreate(Sender: TObject);
begin
randomize;
(Image3.Picture.Graphic as TGIFImage).Animate := True;
  c := Random(100);
  if c < 50 then
  begin
    (Image1.Picture.Graphic as TGIFImage).Animate := True;
    Image1.Visible := True;
  end
  else
  begin
    (Image2.Picture.Graphic as TGIFImage).Animate := True;
    Image2.Visible := True;
  end;

fontway:=extractfilepath(application.ExeName);
addfontresource(PChar(fontway + 'font\Redemption.ttf'));
end;

procedure TzZastavka.FormDestroy(Sender: TObject);
begin
fontway:=extractfilepath(application.ExeName);
removefontresource(PChar(fontway + 'Redemption\days.ttf'));
end;

procedure TzZastavka.Timer1Timer(Sender: TObject);
begin
Timer1.Destroy;
mMainMenu.Show;
zZastavka.Hide;
end;

end.
