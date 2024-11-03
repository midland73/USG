unit Unit11;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.Buttons;

type
  TLoyalty = class(TForm)
    Label1: TLabel;
    Memo1: TMemo;
    Image1: TImage;
    Image2: TImage;
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
  Loyalty: TLoyalty;
  fontway:string;

implementation

{$R *.dfm}

uses Unit5;

procedure TLoyalty.BitBtn1Click(Sender: TObject);
begin
Form5.Show;
Loyalty.Hide;
end;

procedure TLoyalty.FormCreate(Sender: TObject);
begin
fontway:=extractfilepath(application.ExeName);
addfontresource(PChar(fontway + 'font\RDRGothica-Regular.ttf'));
end;

procedure TLoyalty.FormDestroy(Sender: TObject);
begin
 fontway:=extractfilepath(application.ExeName);
removefontresource(PChar(fontway + 'font\RDRGothica-Regular.ttf'));
end;

end.
