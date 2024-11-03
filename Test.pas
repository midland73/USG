unit Test;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TtTest = class(TForm)
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure RadioGroup1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  tTest: TtTest;
  f: text;
  fontway, s: string;
  Nvern, ball, totalQuestions: integer;

implementation

{$R *.dfm}

uses Unit5, MainMenu;

procedure TtTest.BitBtn1Click(Sender: TObject);
begin
  if (RadioGroup2.ItemIndex > -1) and (not Eof(f)) then
  begin
    totalQuestions := totalQuestions + 1;
    if RadioGroup2.ItemIndex = Nvern - 1 then
    begin
      ball := ball + 1;
    end
    else
    begin
      Label1.Caption := '';
    end;
    RadioGroup2.Items.Clear;
    repeat
      if (s[1] = '-') then
      begin
        delete(s, 1, 1);
        RadioGroup2.Caption := s;
      end
      else if s[1] = '*' then
      begin
        delete(s, 1, 1);
        Nvern := StrToInt(s);
      end
      else
        RadioGroup2.Items.Add(s);
      readln(f, s);
    until (s[1] = '-') or Eof(f);
  end
  else if Eof(f) then
  begin
    delete(s, 1, 1);
    Nvern := StrToInt(s);
    totalQuestions := totalQuestions + 1;
    if RadioGroup2.ItemIndex = Nvern - 1 then
    begin
      ball := ball + 1;
    end
    else
    Label1.Caption := Format('Ваш результат: %d%% правильных ответов', [Round(ball / totalQuestions * 100)]);
    CloseFile(f);
    BitBtn1.Visible := False;
    BitBtn2.Visible := True;
  end;
end;

procedure TtTest.BitBtn2Click(Sender: TObject);
begin
mMainMenu.Show;
tTest.Hide;
end;

procedure TtTest.BitBtn3Click(Sender: TObject);
begin
Form5.Show;
tTest.Hide;
end;

procedure TtTest.FormCreate(Sender: TObject);
begin
fontway:=extractfilepath(application.ExeName);
addfontresource(PChar(fontway + 'font\RDRLino-Regular.ttf'));
end;

procedure TtTest.FormDestroy(Sender: TObject);
begin
fontway:=extractfilepath(application.ExeName);
removefontresource(PChar(fontway + 'font\RDRLino-Regular.ttf'));
end;

procedure TtTest.RadioGroup1Click(Sender: TObject);
begin
RadioGroup1.Enabled := false;
  RadioGroup2.Enabled := true;
  BitBtn1.Enabled := true;
  case RadioGroup1.ItemIndex of
  0: AssignFile(f, ExtractFilePath(Application.ExeName) + 'Test.txt');
end;
  reset(f);
  readln(f, s);
  ball := 0;
  totalQuestions := 0;
  repeat
    if (s[1] = '-') then
    begin
      delete(s, 1, 1);
      RadioGroup2.Caption := s;
    end
    else if s[1] = '*' then
    begin
      delete(s, 1, 1);
      Nvern := StrToInt(s);
    end
    else
      RadioGroup2.Items.Add(s);
    readln(f, s);
  until (s[1] = '-') or Eof(f);
end;
end.
