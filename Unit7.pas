unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Buttons;

type
  TDialogue = class(TForm)
    Label1: TLabel;
    Image1: TImage;
    Memo1: TMemo;
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
  Dialogue: TDialogue;
  fontway:string;

implementation

{$R *.dfm}

uses Unit5;



procedure TDialogue.BitBtn1Click(Sender: TObject);
begin
Form5.Show;
Dialogue.Hide;
end;



procedure TDialogue.FormCreate(Sender: TObject);
begin
fontway:=extractfilepath(application.ExeName);
addfontresource(PChar(fontway + 'font\RDRGothica-Regular.ttf'));
end;

procedure TDialogue.FormDestroy(Sender: TObject);
begin
fontway:=extractfilepath(application.ExeName);
removefontresource(PChar(fontway + 'font\RDRGothica-Regular.ttf'));
end;

end.
