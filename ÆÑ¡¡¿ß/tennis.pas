unit tennis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Menus;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    Label1: TLabel;
    Timer2: TTimer;
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    procedure Timer1Timer(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label1Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  x,y,y1: integer;
  fx,fy,b: boolean;
  game: boolean;
  n,m: byte;
  s,h: byte;

const
dx = 3;
dy = 3;

implementation

uses InfoUnit, AvtorUnit;

{$R *.dfm}

procedure krug(x,y: integer);
begin
 form1.Image1.Canvas.Brush.Color:=clBlack;
 Form1.Image1.Canvas.Rectangle(10,0,form1.ClientWidth,form1.ClientHeight);
 form1.Image1.Canvas.Pen.Color:=clBlack;
 form1.Image1.Canvas.Brush.Color:=clWhite;
 Form1.Image1.Canvas.Ellipse(x+1*dx,y+1*dy,x+5*dx,y+5*dy);
end; 

procedure TForm1.Timer1Timer(Sender: TObject);
begin
if x<6 then
 begin
  if (y>y1+15) or (y<y1-28) then
   game:= false;
 end;

if game = true then
begin
if x+15>=image1.Width then
 fx:=false;
if x<=5 then
 fx:=true;

 if fx = true then
  x:=x+n
 else
  x:=x-n;

if y+15>=image1.Height then
 fy:=false;
if y<=0 then
 fy:=true;

 if fy = true then
  y:=y+m
 else
  y:=y-m;

 krug(x,y);
end else
begin
 Timer1.Interval:=0;
 Timer2.Interval:=0;
 ShowMessage('Игра закончена'+#10+#13+'Вы проиграли!!!');
 form1.Image1.Canvas.Brush.Color:=clBlack;
 form1.Image1.Canvas.Rectangle(0,0,form1.Width,form1.Height);
 StatusBar1.SimpleText:='';
 Label1.Visible:=true;
 b:=false;
end;

end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 y1:=y;
if b = true then
begin
 form1.Image1.Canvas.Brush.Color:=clBlack;
 form1.Image1.Canvas.Rectangle(0,0,10,form1.Height);
 form1.Image1.Canvas.Pen.Color:=clBlack;
 form1.Image1.Canvas.Brush.Color:=clWhite;
 form1.Image1.Canvas.Rectangle(0,y-15,10,y+15);
end;
end;

procedure TForm1.Label1Click(Sender: TObject);
begin
 n:=5;
 m:=5;
 s:=0;
 h:=1;
 fx:=true;
 fy:=true;
 x:=15;
 y:=125;
 Timer1.Interval:=50;
 Timer2.Interval:=1000;
 b:=true;
 game:=true;
 Label1.Visible:=false;
 StatusBar1.SimpleText:=IntToStr(h)+'-я скорость'
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
s:=s+1;
if s=20 then
 begin
  n:=n+1;
  h:=h+1;
  if h>4 then
   begin
    m:=m+1;
   end;
   s:=0;
  end;
StatusBar1.SimpleText:=IntToStr(h)+'-я скорость';
end;

procedure TForm1.N2Click(Sender: TObject);
begin
 n:=5;
 m:=5;
 s:=0;
 h:=1;
 fx:=true;
 fy:=true;
 x:=15;
 y:=125;
 Timer1.Interval:=50;
 Timer2.Interval:=1000;
 b:=true;
 game:=true;
 Label1.Visible:=false;
 StatusBar1.SimpleText:=IntToStr(h)+'-я скорость'
end;

procedure TForm1.N4Click(Sender: TObject);
begin
 Form1.Close;
end;

procedure TForm1.N5Click(Sender: TObject);
begin
 Timer1.Interval:=0;
 Timer2.Interval:=0;
 form1.Image1.Canvas.Brush.Color:=clBlack;
 form1.Image1.Canvas.Rectangle(0,0,form1.Width,form1.Height);
 Label1.Visible:=true;
 b:=false;
 StatusBar1.SimpleText:='';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 form1.Image1.Canvas.Brush.Color:=clBlack;
 form1.Image1.Canvas.Rectangle(0,0,form1.Width,form1.Height);
 Timer1.Interval:=0;
 Timer2.Interval:=0;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
 Timer1.Interval:=0;
 Timer2.Interval:=0;
end;

procedure TForm1.Image1Click(Sender: TObject);
begin
if b = true then
begin
 Timer1.Interval:=50;
 Timer2.Interval:=1000;
end;
end;

procedure TForm1.N6Click(Sender: TObject);
begin
 Timer1.Interval:=0;
 Timer2.Interval:=0;
end;

procedure TForm1.N7Click(Sender: TObject);
begin
 Form2.ShowModal;
end;

procedure TForm1.N8Click(Sender: TObject);
begin
 Form3.ShowModal;
end;

end.
