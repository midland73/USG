unit Unit15;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Imaging.jpeg;

type
  TGrunwald = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Grunwald: TGrunwald;
  fontway:string;

implementation

{$R *.dfm}

uses Unit5;


procedure TGrunwald.BitBtn1Click(Sender: TObject);
begin
Grunwald.Hide;
Form5.Show;
end;

procedure TGrunwald.FormCreate(Sender: TObject);
begin
fontway:=extractfilepath(application.ExeName);
addfontresource(PChar(fontway + 'font\RDRGothica-Regular.ttf'));
end;

procedure TGrunwald.FormDestroy(Sender: TObject);
begin
fontway:=extractfilepath(application.ExeName);
removefontresource(PChar(fontway + 'font\RDRGothica-Regular.ttf'));
end;

end.
