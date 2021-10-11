unit AvtorUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image1: TImage;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses tennis;

{$R *.dfm}

procedure TForm3.BitBtn1Click(Sender: TObject);
begin
 Form3.Close;
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if f = true then
begin
 Form1.Timer1.Interval:=50;
 Form1.Timer2.Interval:=1000;
 Form1.Timer3.Interval:=50;
end; 
end;

end.
