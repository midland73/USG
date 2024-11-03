unit Unit10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Buttons;

type
  TClown = class(TForm)
    Label1: TLabel;
    Memo1: TMemo;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Clown: TClown;
  fontway:string;

implementation

{$R *.dfm}

uses Unit5;

procedure TClown.BitBtn1Click(Sender: TObject);
begin
Form5.Show;
Clown.Hide;
end;

procedure TClown.FormCreate(Sender: TObject);
begin
fontway:=extractfilepath(application.ExeName);
addfontresource(PChar(fontway + 'font\RDRGothica-Regular.ttf'));
end;

procedure TClown.FormDestroy(Sender: TObject);
begin
 fontway:=extractfilepath(application.ExeName);
removefontresource(PChar(fontway + 'font\RDRGothica-Regular.ttf'));
end;

end.
