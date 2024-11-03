unit Unit14;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Imaging.jpeg;

type
  TWorker = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Image1: TImage;
    Image2: TImage;
    Memo1: TMemo;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Worker: TWorker;
  fontway:string;

implementation

{$R *.dfm}

uses Unit5;

procedure TWorker.BitBtn1Click(Sender: TObject);
begin
Form5.Show;
Worker.Hide;
end;

procedure TWorker.FormCreate(Sender: TObject);
begin
fontway:=extractfilepath(application.ExeName);
addfontresource(PChar(fontway + 'font\RDRGothica-Regular.ttf'));
end;

procedure TWorker.FormDestroy(Sender: TObject);
begin
fontway:=extractfilepath(application.ExeName);
removefontresource(PChar(fontway + 'font\RDRGothica-Regular.ttf'));
end;

end.
