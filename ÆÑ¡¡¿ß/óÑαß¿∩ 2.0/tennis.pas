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
    Timer3: TTimer;
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
    procedure Timer3Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  x,y,y1: integer;
  a,b: integer;
  fx,fy,f: boolean;
  game,over: boolean;
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
 form1.Image1.Canvas.Pen.Color:=clBlack;
 form1.Image1.Canvas.Brush.Color:=clBlack;
 Form1.Image1.Canvas.Rectangle(10,0,form1.ClientWidth-10,form1.ClientHeight);
 form1.Image1.Canvas.Pen.Color:=clWhite;
 form1.Image1.Canvas.Brush.Color:=clWhite;
 Form1.Image1.Canvas.Ellipse(x+1*dx,y+1*dy,x+5*dx,y+5*dy);
end;

procedure vrag(a,b: integer);
begin
 form1.Image1.Canvas.Brush.Color:=clBlack;
 form1.Image1.Canvas.Pen.Color:=clBlack;
 form1.Image1.Canvas.Rectangle(form1.ClientWidth-10,0,
                                   form1.ClientWidth,form1.ClientHeight);
 form1.Image1.Canvas.Brush.Color:=clWhite;
 form1.Image1.Canvas.Rectangle(form1.ClientWidth-10,b-15,form1.ClientWidth,b+15);
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
if x+1*dx<10 then
 begin
  if (y+1*dy>y1+15) or (y+3*dy<y1-15) then
   game:= false;
 end;

if game = true then
begin
if x+5*dx>=image1.Width-10 then
 fx:=false;
if x<=5 then
 fx:=true;

 if fx = true then
  x:=x+n
 else
  x:=x-n;

if y+5*dy>=image1.Height then
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
 Timer3.Interval:=0;
 ShowMessage('Игра закончена'+#10+#13+'Вы проиграли!!!');
 form1.Image1.Canvas.Brush.Color:=clBlack;
 form1.Image1.Canvas.Rectangle(0,0,form1.Width,form1.Height);
 StatusBar1.SimpleText:='';
 Label1.Visible:=true;
 f:=false;
end;

if x+5*dx>Image1.Width-10 then
 begin
  if (b-15>y+5*dy) or (b+15<y+1*dy) then
   over:=true;
 end;

end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 y1:=y;
if f = true then
begin
 form1.Image1.Canvas.Pen.Color:=clBlack;
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
 b:=125;
 Timer1.Interval:=50;
 Timer2.Interval:=1000;
 Timer3.Interval:=50;
 f:=true;
 game:=true;
 over:=false;
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
 b:=125;
 Timer1.Interval:=50;
 Timer2.Interval:=1000;
 Timer3.Interval:=50;
 f:=true;
 game:=true;
 over:=false;
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
 Timer3.Interval:=0;
 form1.Image1.Canvas.Brush.Color:=clBlack;
 form1.Image1.Canvas.Rectangle(0,0,form1.Width,form1.Height);
 Label1.Visible:=true;
 f:=false;
 StatusBar1.SimpleText:='';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 form1.Image1.Canvas.Brush.Color:=clBlack;
 form1.Image1.Canvas.Rectangle(0,0,form1.Width,form1.Height);
 Timer1.Interval:=0;
 Timer2.Interval:=0;
 Timer3.Interval:=0;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
 Timer1.Interval:=0;
 Timer2.Interval:=0;
 Timer3.Interval:=0;
end;

procedure TForm1.Image1Click(Sender: TObject);
begin
if f = true then
begin
 Timer1.Interval:=50;
 Timer2.Interval:=1000;
 Timer3.Interval:=50;
end;
end;

procedure TForm1.N6Click(Sender: TObject);
begin
 Timer1.Interval:=0;
 Timer2.Interval:=0;
 Timer3.Interval:=0;
end;

procedure TForm1.N7Click(Sender: TObject);
begin
 Form2.ShowModal;
end;

procedure TForm1.N8Click(Sender: TObject);
begin
 Form3.ShowModal;
end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
if over = false then
begin
if fx then
begin
 while b<>y do
  begin
   if b<y then
    b:=b+1
   else b:=b-1;
  end;
 end;
vrag(a,b);
end else
 begin
  Timer1.Interval:=0;
  Timer2.Interval:=0;
  Timer3.Interval:=0;
  ShowMessage('Игра закончена'+#10+#13+'Вы выиграли!!!');
  form1.Image1.Canvas.Brush.Color:=clBlack;
  form1.Image1.Canvas.Rectangle(0,0,form1.Width,form1.Height);
  StatusBar1.SimpleText:='';
  Label1.Visible:=true;
  f:=false;
 end;
end;

end.
