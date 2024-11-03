unit LoadingR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.GIFImg;

type
  TlLoadingR = class(TForm)
    Label2: TLabel;
    Timer2: TTimer;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;

    procedure Timer2Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lLoadingR: TlLoadingR;
  c: integer;
  fontway:string;

implementation

{$R *.dfm}

uses LoadingL, Unit5;

procedure TlLoadingR.FormCreate(Sender: TObject);
begin
fontway:=extractfilepath(application.ExeName);
addfontresource(PChar(fontway + 'font\RDRGothica-Regular.ttf'));
end;

procedure TlLoadingR.FormDestroy(Sender: TObject);
begin
fontway:=extractfilepath(application.ExeName);
removefontresource(PChar(fontway + 'font\RDRGothica-Regular.ttf'));
end;

procedure TlLoadingR.FormHide(Sender: TObject);
begin
  Timer2.Enabled := False;
end;

procedure TlLoadingR.FormShow(Sender: TObject);
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

  Timer2.Enabled := True;
end;

procedure TlLoadingR.Timer2Timer(Sender: TObject);
begin
  Form5.Show;
  lLoadingR.Hide;
end;

end.

