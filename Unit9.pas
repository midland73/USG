unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Buttons;

type
  TMail = class(TForm)
    Label1: TLabel;
    p: TImage;
    Image2: TImage;
    Memo1: TMemo;
    Image1: TImage;
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
  Mail: TMail;
  fontway:string;

implementation

{$R *.dfm}

uses Unit5;

procedure TMail.BitBtn1Click(Sender: TObject);
begin
Form5.Show;
Mail.Hide;
end;

procedure TMail.FormCreate(Sender: TObject);
begin
 fontway:=extractfilepath(application.ExeName);
addfontresource(PChar(fontway + 'font\RDRGothica-Regular.ttf'));
end;

procedure TMail.FormDestroy(Sender: TObject);
begin
 fontway:=extractfilepath(application.ExeName);
removefontresource(PChar(fontway + 'font\RDRGothica-Regular.ttf'));
end;

end.
