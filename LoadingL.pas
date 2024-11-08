unit LoadingL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.GIFImg, Vcl.ExtCtrls;

type
  TlLoadingL = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Image2: TImage;
    Image3: TImage;
    Timer3: TTimer;
    procedure FormShow(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lLoadingL: TlLoadingL;
  c: integer;
  fontway:string;

implementation

{$R *.dfm}

uses MainMenu;

procedure TlLoadingL.FormCreate(Sender: TObject);
begin
fontway:=extractfilepath(application.ExeName);
addfontresource(PChar(fontway + 'font\RDRGothica-Regular.ttf'));
end;

procedure TlLoadingL.FormDestroy(Sender: TObject);
begin
 fontway:=extractfilepath(application.ExeName);
removefontresource(PChar(fontway + 'font\RDRGothica-Regular.ttf'));
end;

procedure TlLoadingL.FormHide(Sender: TObject);
begin
  Timer3.Enabled := False;
end;

procedure TlLoadingL.FormShow(Sender: TObject);
begin
  Randomize;
  c := Random(150);

  Image1.Visible := False;
  Image2.Visible := False;
  Image3.Visible := False;

  if Image1.Picture.Graphic is TGIFImage then
    (Image1.Picture.Graphic as TGIFImage).Animate := False;
  if Image2.Picture.Graphic is TGIFImage then
    (Image2.Picture.Graphic as TGIFImage).Animate := False;
  if Image3.Picture.Graphic is TGIFImage then
    (Image3.Picture.Graphic as TGIFImage).Animate := False;

  if c < 50 then
  begin
    Image1.Visible := True;
    (Image1.Picture.Graphic as TGIFImage).Animate := True;
  end
  else if c < 100 then
  begin
    Image2.Visible := True;
    (Image2.Picture.Graphic as TGIFImage).Animate := True;
  end
  else
  begin
    Image3.Visible := True;
    (Image3.Picture.Graphic as TGIFImage).Animate := True;
  end;

  Timer3.Enabled := True;
end;

procedure TlLoadingL.Timer3Timer(Sender: TObject);
begin
  mMainMenu.Show;
  lLoadingL.Hide;
end;

end.
