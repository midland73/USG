unit Unit13;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.Buttons;

type
  TRook = class(TForm)
    Label1: TLabel;
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
  Rook: TRook;
  fontway:string;

implementation

{$R *.dfm}

uses Unit5;

procedure TRook.BitBtn1Click(Sender: TObject);
begin
Form5.Show;
Rook.Hide;
end;

procedure TRook.FormCreate(Sender: TObject);
begin
fontway:=extractfilepath(application.ExeName);
addfontresource(PChar(fontway + 'font\RDRGothica-Regular.ttf'));
end;

procedure TRook.FormDestroy(Sender: TObject);
begin
 fontway:=extractfilepath(application.ExeName);
removefontresource(PChar(fontway + 'font\RDRGothica-Regular.ttf'));
end;

end.
