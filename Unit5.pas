unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.GIFImg, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TForm5 = class(TForm)
    BitBtn1: TBitBtn;
    Image0: TImage;
    Image2: TImage;
    Label1: TLabel;
    Image3: TImage;
    Label2: TLabel;
    Image1: TImage;
    Label3: TLabel;
    Image4: TImage;
    Label4: TLabel;
    Image5: TImage;
    Label5: TLabel;
    Image6: TImage;
    Label6: TLabel;
    Image7: TImage;
    Label7: TLabel;
    Image8: TImage;
    Label8: TLabel;
    Image9: TImage;
    Label9: TLabel;
    Image10: TImage;
    Label10: TLabel;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure Label7Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  fontway:string;

implementation

{$R *.dfm}

uses LoadingL, Unit6, Unit10, Unit7, Unit12, Unit14, Unit13, Unit9, Unit8, Unit11,
  Unit15, Test;

procedure TForm5.BitBtn1Click(Sender: TObject);
begin
lLoadingL.Show;
Form5.Hide;
end;

procedure TForm5.Image2Click(Sender: TObject);
begin
 if Label2.Visible then
    Label2.Visible := False
  else
    Label2.Visible := True;
end;



procedure TForm5.Image3Click(Sender: TObject);
begin
  if Label3.Visible then
    Label3.Visible := False
  else
    Label3.Visible := True;
end;


procedure TForm5.Image4Click(Sender: TObject);
begin
if Label4.Visible then
    Label4.Visible := False
  else
    Label4.Visible := True;
end;

procedure TForm5.Image5Click(Sender: TObject);
begin
 if Label5.Visible then
    Label5.Visible := False
  else
    Label5.Visible := True;
end;

procedure TForm5.Image6Click(Sender: TObject);
begin
   if Label6.Visible then
    Label6.Visible := False
  else
    Label6.Visible := True;
end;

procedure TForm5.Image7Click(Sender: TObject);
begin
if Label7.Visible then
    Label7.Visible := False
  else
    Label7.Visible := True;
end;

procedure TForm5.Image8Click(Sender: TObject);
begin
if Label8.Visible then
    Label8.Visible := False
  else
    Label8.Visible := True;
end;

procedure TForm5.Image9Click(Sender: TObject);
begin
 if Label9.Visible then
    Label9.Visible := False
  else
    Label9.Visible := True;
end;

procedure TForm5.BitBtn2Click(Sender: TObject);
begin
Form5.Hide;
tTest.Show;
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
fontway:=extractfilepath(application.ExeName);
addfontresource(PChar(fontway + 'font\RDRLino-Regular.ttf'));
end;

procedure TForm5.FormDestroy(Sender: TObject);
begin
fontway:=extractfilepath(application.ExeName);
removefontresource(PChar(fontway + 'font\RDRLino-Regular.ttf'));
end;





procedure TForm5.Image10Click(Sender: TObject);
begin
if Label10.Visible then
    Label10.Visible := False
  else
    Label10.Visible := True;
end;

procedure TForm5.Image1Click(Sender: TObject);
begin
  if Label1.Visible then
    Label1.Visible := False
  else
    Label1.Visible := True;
end;

procedure TForm5.Label10Click(Sender: TObject);
begin
Form5.Hide;
Grunwald.Show;
end;

procedure TForm5.Label1Click(Sender: TObject);
begin
Form5.Hide;
Zhiliber.Show;
end;

procedure TForm5.Label2Click(Sender: TObject);
begin
Form5.Hide;
Clown.Show;
end;

procedure TForm5.Label3Click(Sender: TObject);
begin
Form5.Hide;
Dialogue.Show;
end;

procedure TForm5.Label4Click(Sender: TObject);
begin
Form5.Hide;
Lighthouse.Show;
end;

procedure TForm5.Label5Click(Sender: TObject);
begin
Form5.Hide;
Worker.Show;
end;

procedure TForm5.Label6Click(Sender: TObject);
begin
Form5.Hide;
Rook.Show;
end;

procedure TForm5.Label7Click(Sender: TObject);
begin
Form5.Hide;
Mail.Show;
end;

procedure TForm5.Label8Click(Sender: TObject);
begin
Form5.Hide;
Frog.Show;
end;

procedure TForm5.Label9Click(Sender: TObject);
begin
Form5.Hide;
Loyalty.Show;
end;

end.
