unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Buttons;

type
  TZhiliber = class(TForm)
    Label1: TLabel;
    Image1: TImage;
    Label2: TLabel;
    Memo1: TMemo;
    Image2: TImage;
    Label3: TLabel;
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
  Zhiliber: TZhiliber;
  fontway:string;

implementation

{$R *.dfm}

uses Unit5;

procedure TZhiliber.BitBtn1Click(Sender: TObject);
begin
Form5.Show;
Zhiliber.Hide;
end;

procedure TZhiliber.FormCreate(Sender: TObject);
begin
fontway:=extractfilepath(application.ExeName);
addfontresource(PChar(fontway + 'font\RDRGothica-Regular.ttf'));
end;

procedure TZhiliber.FormDestroy(Sender: TObject);
begin
 fontway:=extractfilepath(application.ExeName);
removefontresource(PChar(fontway + 'font\RDRGothica-Regular.ttf'));
end;

end.
