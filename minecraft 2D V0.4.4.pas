uses graphabc,timers,events,abcobjects;
var
A : array [-50..100,-50..100] of char;
P : pictureabc;
pack : string;
S1,S2,S3,S4,S5,S6 : integer;

X,Y : integer;
XX,YY : integer;

mx,my : integer;

T1,T2,T3,T4,T5,T6,T7  ,T8 : timer; //T8 - таймер для мобов

P0,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23 : integer;

TIP : integer;

money,prmon : integer;

GAME : integer;

OB : objectabc;

BIOM,RUDGEN : integer;

LIVE,GOLOD : integer;
goloding : integer;
diwn : integer;


F1 : text;
SLOT : integer;














procedure SAVEup;
begin

assign(F1,'сохранения/SAVE'+inttostr(SLOT));
rewrite(F1);

writeln(F1,pack);
writeln(F1,X);
writeln(F1,Y);
writeln(F1,mx);
writeln(F1,my);
writeln(F1,P0);
writeln(F1,P1);
writeln(F1,P2);
writeln(F1,P3);
writeln(F1,P4);
writeln(F1,P5);
writeln(F1,P6);
writeln(F1,P7);
writeln(F1,P8);
writeln(F1,P9);
writeln(F1,P10);
writeln(F1,P11);
writeln(F1,P12);
writeln(F1,P13);
writeln(F1,P14);
writeln(F1,P15);
writeln(F1,P16);
writeln(F1,P17);
writeln(F1,P18);
writeln(F1,P19);
writeln(F1,P20);
writeln(F1,P21);
writeln(F1,P22);
writeln(F1,P23);
writeln(F1,money);
writeln(F1,LIVE);
writeln(F1,GOLOD);

for var iy:=0 to 50 do begin
for var ix:=0 to 50 do begin
write(F1,A[ix,iy]);
end;
writeln(F1);
end;

close(F1);

end;















procedure gizni;
var i : integer;
begin
 
case LIVE of
0 : begin  P:=pictureabc.Create(510,diwn,'текстуры\'+pack+'\без сердечка.bmp'); P:=pictureabc.Create(520,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(530,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(540,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(550,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(560,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(570,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(580,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(590,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(600,diwn,'текстуры\'+pack+'\без сердечка.bmp'); end;
1 : begin  P:=pictureabc.Create(510,diwn,'текстуры\'+pack+'\пол сердечка.bmp'); P:=pictureabc.Create(520,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(530,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(540,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(550,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(560,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(570,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(580,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(590,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(600,diwn,'текстуры\'+pack+'\без сердечка.bmp'); end;
2 : begin  P:=pictureabc.Create(510,diwn,'текстуры\'+pack+'\сердечко.bmp'); P:=pictureabc.Create(520,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(530,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(540,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(550,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(560,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(570,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(580,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(590,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(600,diwn,'текстуры\'+pack+'\без сердечка.bmp'); end;
3 : begin  P:=pictureabc.Create(510,diwn,'текстуры\'+pack+'\сердечко.bmp'); P:=pictureabc.Create(520,diwn,'текстуры\'+pack+'\пол сердечка.bmp');P:=pictureabc.Create(530,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(540,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(550,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(560,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(570,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(580,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(590,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(600,diwn,'текстуры\'+pack+'\без сердечка.bmp'); end;
4 : begin  P:=pictureabc.Create(510,diwn,'текстуры\'+pack+'\сердечко.bmp'); P:=pictureabc.Create(520,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(530,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(540,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(550,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(560,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(570,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(580,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(590,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(600,diwn,'текстуры\'+pack+'\без сердечка.bmp'); end;
5 : begin  P:=pictureabc.Create(510,diwn,'текстуры\'+pack+'\сердечко.bmp'); P:=pictureabc.Create(520,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(530,diwn,'текстуры\'+pack+'\пол сердечка.bmp');P:=pictureabc.Create(540,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(550,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(560,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(570,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(580,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(590,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(600,diwn,'текстуры\'+pack+'\без сердечка.bmp'); end;
6 : begin  P:=pictureabc.Create(510,diwn,'текстуры\'+pack+'\сердечко.bmp'); P:=pictureabc.Create(520,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(530,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(540,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(550,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(560,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(570,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(580,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(590,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(600,diwn,'текстуры\'+pack+'\без сердечка.bmp'); end;
7 : begin  P:=pictureabc.Create(510,diwn,'текстуры\'+pack+'\сердечко.bmp'); P:=pictureabc.Create(520,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(530,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(540,diwn,'текстуры\'+pack+'\пол сердечка.bmp');P:=pictureabc.Create(550,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(560,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(570,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(580,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(590,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(600,diwn,'текстуры\'+pack+'\без сердечка.bmp'); end;
8 : begin  P:=pictureabc.Create(510,diwn,'текстуры\'+pack+'\сердечко.bmp'); P:=pictureabc.Create(520,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(530,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(540,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(550,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(560,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(570,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(580,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(590,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(600,diwn,'текстуры\'+pack+'\без сердечка.bmp'); end;
9 : begin  P:=pictureabc.Create(510,diwn,'текстуры\'+pack+'\сердечко.bmp'); P:=pictureabc.Create(520,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(530,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(540,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(550,diwn,'текстуры\'+pack+'\пол сердечка.bmp');P:=pictureabc.Create(560,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(570,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(580,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(590,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(600,diwn,'текстуры\'+pack+'\без сердечка.bmp'); end;
10 : begin  P:=pictureabc.Create(510,diwn,'текстуры\'+pack+'\сердечко.bmp'); P:=pictureabc.Create(520,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(530,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(540,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(550,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(560,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(570,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(580,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(590,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(600,diwn,'текстуры\'+pack+'\без сердечка.bmp'); end;

11 : begin  P:=pictureabc.Create(510,diwn,'текстуры\'+pack+'\сердечко.bmp'); P:=pictureabc.Create(520,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(530,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(540,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(550,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(560,diwn,'текстуры\'+pack+'\пол сердечка.bmp');P:=pictureabc.Create(570,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(580,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(590,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(600,diwn,'текстуры\'+pack+'\без сердечка.bmp'); end;
12 : begin  P:=pictureabc.Create(510,diwn,'текстуры\'+pack+'\сердечко.bmp'); P:=pictureabc.Create(520,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(530,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(540,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(550,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(560,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(570,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(580,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(590,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(600,diwn,'текстуры\'+pack+'\без сердечка.bmp'); end;
13 : begin  P:=pictureabc.Create(510,diwn,'текстуры\'+pack+'\сердечко.bmp'); P:=pictureabc.Create(520,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(530,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(540,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(550,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(560,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(570,diwn,'текстуры\'+pack+'\пол сердечка.bmp');P:=pictureabc.Create(580,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(590,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(600,diwn,'текстуры\'+pack+'\без сердечка.bmp'); end;
14 : begin  P:=pictureabc.Create(510,diwn,'текстуры\'+pack+'\сердечко.bmp'); P:=pictureabc.Create(520,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(530,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(540,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(550,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(560,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(570,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(580,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(590,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(600,diwn,'текстуры\'+pack+'\без сердечка.bmp'); end;
15 : begin  P:=pictureabc.Create(510,diwn,'текстуры\'+pack+'\сердечко.bmp'); P:=pictureabc.Create(520,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(530,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(540,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(550,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(560,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(570,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(580,diwn,'текстуры\'+pack+'\пол сердечка.bmp');P:=pictureabc.Create(590,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(600,diwn,'текстуры\'+pack+'\без сердечка.bmp'); end;
16 : begin  P:=pictureabc.Create(510,diwn,'текстуры\'+pack+'\сердечко.bmp'); P:=pictureabc.Create(520,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(530,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(540,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(550,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(560,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(570,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(580,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(590,diwn,'текстуры\'+pack+'\без сердечка.bmp');P:=pictureabc.Create(600,diwn,'текстуры\'+pack+'\без сердечка.bmp'); end;
17 : begin  P:=pictureabc.Create(510,diwn,'текстуры\'+pack+'\сердечко.bmp'); P:=pictureabc.Create(520,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(530,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(540,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(550,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(560,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(570,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(580,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(590,diwn,'текстуры\'+pack+'\пол сердечка.bmp');P:=pictureabc.Create(600,diwn,'текстуры\'+pack+'\без сердечка.bmp'); end;
18 : begin  P:=pictureabc.Create(510,diwn,'текстуры\'+pack+'\сердечко.bmp'); P:=pictureabc.Create(520,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(530,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(540,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(550,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(560,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(570,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(580,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(590,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(600,diwn,'текстуры\'+pack+'\без сердечка.bmp'); end;
19 : begin  P:=pictureabc.Create(510,diwn,'текстуры\'+pack+'\сердечко.bmp'); P:=pictureabc.Create(520,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(530,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(540,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(550,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(560,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(570,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(580,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(590,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(600,diwn,'текстуры\'+pack+'\пол сердечка.bmp'); end;
20 : begin  P:=pictureabc.Create(510,diwn,'текстуры\'+pack+'\сердечко.bmp'); P:=pictureabc.Create(520,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(530,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(540,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(550,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(560,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(570,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(580,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(590,diwn,'текстуры\'+pack+'\сердечко.bmp');P:=pictureabc.Create(600,diwn,'текстуры\'+pack+'\сердечко.bmp'); end;
end;

//diwn

if (LIVE<0) then begin LIVE:=LIVE+1; end;
if (LIVE>=21) then begin LIVE:=LIVE-1; end;

end;
















procedure golid;
var i : integer;
begin
 
case GOLOD of
0 : begin  P:=pictureabc.Create(510,diwn+10,'текстуры\'+pack+'\без голода.bmp'); P:=pictureabc.Create(520,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(530,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(540,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(550,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(560,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(570,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(580,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(590,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(600,diwn+10,'текстуры\'+pack+'\без голода.bmp'); end;
1 : begin  P:=pictureabc.Create(510,diwn+10,'текстуры\'+pack+'\пол голода.bmp'); P:=pictureabc.Create(520,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(530,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(540,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(550,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(560,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(570,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(580,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(590,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(600,diwn+10,'текстуры\'+pack+'\без голода.bmp'); end;
2 : begin  P:=pictureabc.Create(510,diwn+10,'текстуры\'+pack+'\голод.bmp'); P:=pictureabc.Create(520,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(530,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(540,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(550,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(560,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(570,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(580,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(590,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(600,diwn+10,'текстуры\'+pack+'\без голода.bmp'); end;
3 : begin  P:=pictureabc.Create(510,diwn+10,'текстуры\'+pack+'\голод.bmp'); P:=pictureabc.Create(520,diwn+10,'текстуры\'+pack+'\пол голода.bmp');P:=pictureabc.Create(530,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(540,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(550,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(560,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(570,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(580,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(590,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(600,diwn+10,'текстуры\'+pack+'\без голода.bmp'); end;
4 : begin  P:=pictureabc.Create(510,diwn+10,'текстуры\'+pack+'\голод.bmp'); P:=pictureabc.Create(520,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(530,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(540,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(550,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(560,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(570,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(580,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(590,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(600,diwn+10,'текстуры\'+pack+'\без голода.bmp'); end;
5 : begin  P:=pictureabc.Create(510,diwn+10,'текстуры\'+pack+'\голод.bmp'); P:=pictureabc.Create(520,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(530,diwn+10,'текстуры\'+pack+'\пол голода.bmp');P:=pictureabc.Create(540,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(550,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(560,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(570,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(580,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(590,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(600,diwn+10,'текстуры\'+pack+'\без голода.bmp'); end;
6 : begin  P:=pictureabc.Create(510,diwn+10,'текстуры\'+pack+'\голод.bmp'); P:=pictureabc.Create(520,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(530,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(540,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(550,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(560,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(570,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(580,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(590,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(600,diwn+10,'текстуры\'+pack+'\без голода.bmp'); end;
7 : begin  P:=pictureabc.Create(510,diwn+10,'текстуры\'+pack+'\голод.bmp'); P:=pictureabc.Create(520,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(530,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(540,diwn+10,'текстуры\'+pack+'\пол голода.bmp');P:=pictureabc.Create(550,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(560,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(570,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(580,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(590,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(600,diwn+10,'текстуры\'+pack+'\без голода.bmp'); end;
8 : begin  P:=pictureabc.Create(510,diwn+10,'текстуры\'+pack+'\голод.bmp'); P:=pictureabc.Create(520,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(530,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(540,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(550,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(560,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(570,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(580,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(590,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(600,diwn+10,'текстуры\'+pack+'\без голода.bmp'); end;
9 : begin  P:=pictureabc.Create(510,diwn+10,'текстуры\'+pack+'\голод.bmp'); P:=pictureabc.Create(520,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(530,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(540,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(550,diwn+10,'текстуры\'+pack+'\пол голода.bmp');P:=pictureabc.Create(560,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(570,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(580,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(590,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(600,diwn+10,'текстуры\'+pack+'\без голода.bmp'); end;
10 : begin  P:=pictureabc.Create(510,diwn+10,'текстуры\'+pack+'\голод.bmp'); P:=pictureabc.Create(520,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(530,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(540,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(550,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(560,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(570,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(580,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(590,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(600,diwn+10,'текстуры\'+pack+'\без голода.bmp'); end;

11 : begin  P:=pictureabc.Create(510,diwn+10,'текстуры\'+pack+'\голод.bmp'); P:=pictureabc.Create(520,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(530,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(540,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(550,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(560,diwn+10,'текстуры\'+pack+'\пол голода.bmp');P:=pictureabc.Create(570,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(580,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(590,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(600,diwn+10,'текстуры\'+pack+'\без голода.bmp'); end;
12 : begin  P:=pictureabc.Create(510,diwn+10,'текстуры\'+pack+'\голод.bmp'); P:=pictureabc.Create(520,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(530,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(540,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(550,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(560,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(570,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(580,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(590,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(600,diwn+10,'текстуры\'+pack+'\без голода.bmp'); end;
13 : begin  P:=pictureabc.Create(510,diwn+10,'текстуры\'+pack+'\голод.bmp'); P:=pictureabc.Create(520,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(530,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(540,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(550,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(560,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(570,diwn+10,'текстуры\'+pack+'\пол голода.bmp');P:=pictureabc.Create(580,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(590,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(600,diwn+10,'текстуры\'+pack+'\без голода.bmp'); end;
14 : begin  P:=pictureabc.Create(510,diwn+10,'текстуры\'+pack+'\голод.bmp'); P:=pictureabc.Create(520,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(530,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(540,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(550,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(560,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(570,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(580,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(590,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(600,diwn+10,'текстуры\'+pack+'\без голода.bmp'); end;
15 : begin  P:=pictureabc.Create(510,diwn+10,'текстуры\'+pack+'\голод.bmp'); P:=pictureabc.Create(520,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(530,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(540,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(550,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(560,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(570,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(580,diwn+10,'текстуры\'+pack+'\пол голода.bmp');P:=pictureabc.Create(590,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(600,diwn+10,'текстуры\'+pack+'\без голода.bmp'); end;
16 : begin  P:=pictureabc.Create(510,diwn+10,'текстуры\'+pack+'\голод.bmp'); P:=pictureabc.Create(520,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(530,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(540,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(550,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(560,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(570,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(580,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(590,diwn+10,'текстуры\'+pack+'\без голода.bmp');P:=pictureabc.Create(600,diwn+10,'текстуры\'+pack+'\без голода.bmp'); end;
17 : begin  P:=pictureabc.Create(510,diwn+10,'текстуры\'+pack+'\голод.bmp'); P:=pictureabc.Create(520,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(530,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(540,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(550,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(560,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(570,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(580,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(590,diwn+10,'текстуры\'+pack+'\пол голода.bmp');P:=pictureabc.Create(600,diwn+10,'текстуры\'+pack+'\без голода.bmp'); end;
18 : begin  P:=pictureabc.Create(510,diwn+10,'текстуры\'+pack+'\голод.bmp'); P:=pictureabc.Create(520,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(530,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(540,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(550,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(560,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(570,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(580,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(590,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(600,diwn+10,'текстуры\'+pack+'\без голода.bmp'); end;
19 : begin  P:=pictureabc.Create(510,diwn+10,'текстуры\'+pack+'\голод.bmp'); P:=pictureabc.Create(520,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(530,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(540,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(550,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(560,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(570,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(580,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(590,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(600,diwn+10,'текстуры\'+pack+'\пол голода.bmp'); end;
20 : begin  P:=pictureabc.Create(510,diwn+10,'текстуры\'+pack+'\голод.bmp'); P:=pictureabc.Create(520,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(530,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(540,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(550,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(560,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(570,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(580,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(590,diwn+10,'текстуры\'+pack+'\голод.bmp');P:=pictureabc.Create(600,diwn+10,'текстуры\'+pack+'\голод.bmp'); end;
end;


//diwn

if (GOLOD<0) then begin GOLOD:=GOLOD+1; end;
if (GOLOD>=21) then begin GOLOD:=GOLOD-1; end;

end;

















procedure generate;
var
RA : integer;
begin

if (GAME=1) then begin


S1:=random(50,100);
S2:=random(50,150);
S3:=random(100,200);
S4:=random(150,300);
S5:=random(200,300);
S6:=random(50,100);


for var iy:=0 to 49 do begin               
for var ix:=0 to 49 do begin 
 

if (iy>-1) and (iy<51) then begin A[ix,iy]:='0'; end; 
 

if (BIOM=1) then begin
  
if (iy>9) and (iy<11) then begin A[ix,iy]:='*'; end;                                          
if (iy>10) and (iy<14) then begin A[ix,iy]:='1'; end;  //генерация верхнего слоя земли
RA:=random(2);   //вероятность генерации земли в камне
if (iy>13) and (iy<17) then begin if (RA=1) then begin A[ix,iy]:='1'; end; if (RA<>1) then begin A[ix,iy]:='2'; end; end;   //генерация камня и земли 1/50
if (iy>=17) and (iy<51) then begin A[ix,iy]:='2'; end;    //генерация камня  

RUDGEN:=1;

end;



if (BIOM=2) then begin  
                                         
if (iy>6) and (iy<8) then begin A[ix,iy]:='9'; end; 
RA:=random(2);   
if (iy>7) and (iy<12) then begin if (RA=1) then begin A[ix,iy]:='y'; end; if (RA<>1) then begin A[ix,iy]:='9'; end; end;   //генерация камня и земли 1/50
if (iy>=10) and (iy<20) then begin A[ix,iy]:='y'; end; 
RA:=random(2); 
if (iy>19) and (iy<23) then begin if (RA=1) then begin A[ix,iy]:='y'; end; if (RA<>1) then begin A[ix,iy]:='2'; end; end;  
if (iy>=23) and (iy<51) then begin A[ix,iy]:='2'; end;
RA:=random(15);
if (A[ix,iy]='9') and (A[ix+1,iy-1]='0') and (A[ix-1,iy-1]='0') and (A[ix+2,iy-1]='0') and (A[ix-2,iy-1]='0') and (RA=1) then begin A[ix,iy-1]:='t'; end; 

RUDGEN:=1;

end;



if (BIOM=3) then begin  
  
RA:=random(2);  
if (iy>7) and (iy<12) and (RA=1) then begin A[ix,iy]:='1'; end; 
if (iy>7) and (iy<12) and (RA=0) then begin A[ix,iy]:='9'; end; 
RA:=random(3);
if (iy>11) and (iy<15) and (RA=1) then begin A[ix,iy]:='2'; end; 
if (iy>11) and (iy<15) and (RA=2) then begin A[ix,iy]:='y'; end;
if (iy>11) and (iy<15) and (RA=0) then begin A[ix,iy]:='1'; end;
RA:=random(4);
if (iy>14) and (iy<30) then begin A[ix,iy]:='2'; end; 
if (iy>14) and (iy<30) and (RA=0) then begin A[ix,iy]:='1'; end; 
if (iy>29) and (iy<51) then begin A[ix,iy]:='2'; end; 

RA:=random(15);
if (iy>6) and (iy<8) and (RA=1) then begin A[ix,iy]:='8'; end;

RUDGEN:=1;

end;



if (BIOM=4) then begin
  
if (iy>10) and (iy<12) then begin A[ix,iy]:='*'; end;                                          
if (iy>11) and (iy<14) then begin A[ix,iy]:='1'; end;  //генерация верхнего слоя земли
RA:=random(2);   //вероятность генерации земли в камне
if (iy>13) and (iy<17) then begin if (RA=1) then begin A[ix,iy]:='1'; end; if (RA<>1) then begin A[ix,iy]:='2'; end; end;   //генерация камня и земли 1/50
if (iy>=16) and (iy<51) then begin A[ix,iy]:='2'; end;    //генерация камня 

RA:=random(50);
if (RA=1) then begin A[ix,iy]:='0'; end;

RA:=random(2);
if (A[ix+1,iy]='0') and (RA=1) then begin A[ix,iy]:='0'; end;
if (A[ix-1,iy]='0') and (RA=1) then begin A[ix,iy]:='0'; end;
if (A[ix,iy+1]='0') and (RA=1) then begin A[ix,iy]:='0'; end;
if (A[ix,iy-1]='0') and (RA=1) then begin A[ix,iy]:='0'; end;

RUDGEN:=1;

end;



if (BIOM=5) then begin 

if (iy>44) and (iy<46) then begin A[ix,iy]:='*'; end;
if (iy>45) and (iy<51) then begin A[ix,iy]:='1'; end;
RUDGEN:=0;
MONEY:=100000000;

end;


if (BIOM=6) then begin

if (iy>15) and (iy<17) then begin A[ix,iy]:='*'; end;
if (iy>16) and (iy<19) then begin A[ix,iy]:='1'; end;
RA:=random(2);
if (iy>18) and (iy<23) and (RA=1) then begin A[ix,iy]:='2'; end;
if (iy>18) and (iy<23) and (RA=0) then begin A[ix,iy]:='1'; end;

if (iy>22) and (iy<51) then begin A[ix,iy]:='2'; end;

RA:=random(15);
if (iy>14) and (iy<16) and (RA=1) then begin A[ix,iy]:='i' end;

RA:=random(2);
if (iy>14) and (iy<16) and (RA=1) then begin A[ix,iy]:='e'; A[ix,iy-1]:='o'; end;

end;








if (RUDGEN=1) then begin

RA:=random(S1);
if (iy>=17) and (iy<51) and (RA=1) then begin A[ix,iy]:='3'; end;
RA:=random(S2);
if (iy>=22) and (iy<51) and (RA=1) then begin A[ix,iy]:='4'; end;
RA:=random(S3);
if (iy>=30) and (iy<51) and (RA=1) then begin A[ix,iy]:='5'; end;
RA:=random(S4);
if (iy>=35) and (iy<51) and (RA=1) then begin A[ix,iy]:='6'; end;  
RA:=random(S5);
if (iy>=40) and (iy<51) and (RA=1) then begin A[ix,iy]:='7'; end; 
RA:=random(S6);
if (iy>=45) and (iy<51) and (RA=1) then begin A[ix,iy]:='q'; end; 

end; 



                            
end;                                       
end;    

end;                               

end;







procedure ris;
begin

if (GAME=1) then begin

for var iy:=0 to 49 do begin               
for var ix:=0 to 49 do begin               

if (A[ix,iy]='0') then begin P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\воздух.bmp'); end;
if (A[ix,iy]='*') then begin P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\трава.bmp'); end;
if (A[ix,iy]='1') then begin P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\земля.bmp'); end;
if (A[ix,iy]='2') then begin P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\камень.bmp'); end;  
if (A[ix,iy]='3') then begin P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\уголь.bmp'); end;   
if (A[ix,iy]='4') then begin P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\железо.bmp'); end;  
if (A[ix,iy]='5') then begin P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\золото.bmp'); end; 
if (A[ix,iy]='6') then begin P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\алмаз.bmp'); end;   
if (A[ix,iy]='7') then begin P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\рубин.bmp'); end;   
if (A[ix,iy]='8') then begin P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\тростник.bmp'); end; 
if (A[ix,iy]='9') then begin P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\песок.bmp'); end;  
if (A[ix,iy]='q') then begin P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\гравий.bmp'); end;
if (A[ix,iy]='e') then begin P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\древесина.bmp'); end;
if (A[ix,iy]='r') then begin P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\доски.bmp'); end;
if (A[ix,iy]='t') then begin P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\кактус.bmp'); end;
if (A[ix,iy]='y') then begin P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\песчаник.bmp'); end;
if (A[ix,iy]='u') then begin P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\листва.bmp'); end;
if (A[ix,iy]='i') then begin P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\росток.bmp'); end;
if (A[ix,iy]='o') then begin P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\грибы.bmp'); end;
if (A[ix,iy]='p') then begin P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\АСБ1.bmp'); end;
if (A[ix,iy]='a') then begin P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\стекло.bmp'); end;
if (A[ix,iy]='s') then begin P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\слизень.bmp'); end;

if (A[ix,iy]='w') then begin P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\СТФ1.bmp'); end;                                       

end;                                       
end;    

P:=pictureabc.Create(X,Y,'текстуры\'+pack+'\игрок.bmp');  

end;   

end;
































procedure information;
var nad : integer;
begin

if (GAME=1) then begin

nad:=0;
textout(510,nad-2,'трава:'); P:=pictureabc.Create(600,nad+2,'текстуры\'+pack+'\трава.bmp'); textout(670,nad-2,'2');
nad:=nad+15;
textout(510,nad-2,'земля:'); P:=pictureabc.Create(600,nad+2,'текстуры\'+pack+'\земля.bmp'); textout(670,nad-2,'2'); 
nad:=nad+15;
textout(510,nad-2,'камень:'); P:=pictureabc.Create(600,nad+2,'текстуры\'+pack+'\камень.bmp'); textout(670,nad-2,'3');
nad:=nad+15;
textout(510,nad-2,'уголь:'); P:=pictureabc.Create(600,nad+2,'текстуры\'+pack+'\уголь.bmp'); textout(670,nad-2,'6');
nad:=nad+15;
textout(510,nad-2,'железо:'); P:=pictureabc.Create(600,nad+2,'текстуры\'+pack+'\железо.bmp'); textout(670,nad-2,'12');
nad:=nad+15;
textout(510,nad-2,'золото:'); P:=pictureabc.Create(600,nad+2,'текстуры\'+pack+'\золото.bmp'); textout(670,nad-2,'24');
nad:=nad+15;
textout(510,nad-2,'алмаз:'); P:=pictureabc.Create(600,nad+2,'текстуры\'+pack+'\алмаз.bmp'); textout(670,nad-2,'58');
nad:=nad+15;
textout(510,nad-2,'рубин:'); P:=pictureabc.Create(600,nad+2,'текстуры\'+pack+'\рубин.bmp'); textout(670,nad-2,'120');
nad:=nad+15;
textout(510,nad-2,'тростник:'); P:=pictureabc.Create(600,nad+2,'текстуры\'+pack+'\тростник.bmp'); textout(670,nad-2,'400');
nad:=nad+15;
textout(510,nad-2,'песок:'); P:=pictureabc.Create(600,nad+2,'текстуры\'+pack+'\песок.bmp'); textout(670,nad-2,'3');
nad:=nad+15;
textout(510,nad-2,'гравий:'); P:=pictureabc.Create(600,nad+2,'текстуры\'+pack+'\гравий.bmp'); textout(670,nad-2,'3');
nad:=nad+15;
textout(510,nad-2,'СТФ1:'); P:=pictureabc.Create(600,nad+2,'текстуры\'+pack+'\СТФ1.bmp'); textout(670,nad-2,'1220');
nad:=nad+15;
textout(510,nad-2,'древесина:'); P:=pictureabc.Create(600,nad+2,'текстуры\'+pack+'\древесина.bmp'); textout(670,nad-2,'4');
nad:=nad+15;
textout(510,nad-2,'доски:'); P:=pictureabc.Create(600,nad+2,'текстуры\'+pack+'\доски.bmp'); textout(670,nad-2,'2');
nad:=nad+15;
textout(510,nad-2,'кактус:'); P:=pictureabc.Create(600,nad+2,'текстуры\'+pack+'\кактус.bmp'); textout(670,nad-2,'200');
nad:=nad+15;
textout(510,nad-2,'песчаник:'); P:=pictureabc.Create(600,nad+2,'текстуры\'+pack+'\песчаник.bmp'); textout(670,nad-2,'3');
nad:=nad+15;
textout(510,nad-2,'листва:'); P:=pictureabc.Create(600,nad+2,'текстуры\'+pack+'\листва.bmp'); textout(670,nad-2,'4');
nad:=nad+15;
textout(510,nad-2,'росток:'); P:=pictureabc.Create(600,nad+2,'текстуры\'+pack+'\росток.bmp'); textout(670,nad-2,'15');
nad:=nad+15;
textout(510,nad-2,'грибы:'); P:=pictureabc.Create(600,nad+2,'текстуры\'+pack+'\грибы.bmp'); textout(670,nad-2,'40');
nad:=nad+15;
textout(510,nad-2,'свинина:'); P:=pictureabc.Create(600,nad+2,'текстуры\'+pack+'\свинина.bmp'); textout(670,nad-2,'50');
nad:=nad+15;
textout(510,nad-2,'АСБ1:'); P:=pictureabc.Create(600,nad+2,'текстуры\'+pack+'\АСБ1.bmp'); textout(670,nad-2,'700');
nad:=nad+15;
textout(510,nad-2,'стекло:'); P:=pictureabc.Create(600,nad+2,'текстуры\'+pack+'\стекло.bmp'); textout(670,nad-2,'7');
nad:=nad+15;
textout(510,nad-2,'слизень:'); P:=pictureabc.Create(600,nad+2,'текстуры\'+pack+'\слизень.bmp'); textout(670,nad-2,'50');
nad:=nad+15;

textout(510,nad-2,'ядро генерации: '+inttostr(S1)+'.'+inttostr(S2)+'.'+inttostr(S3)+'.'+inttostr(S4)+'.'+inttostr(S5));
nad:=nad+30;
textout(510,nad,'МОНЕТЫ:');
nad:=nad+40;



end;

end;


procedure info;
var nad : integer;
begin

if (GAME=1) then begin

nad:=0;
textout(620,nad-2,''+inttostr(P0)+'       '); if (TIP=1) then textout(735,nad-2,'ВЫБРАНО') else textout(700,nad-2,'                             '); line(500,nad+12,800,nad+12);
nad:=nad+15;
textout(620,nad-2,''+inttostr(P1)+'       '); if (TIP=2) then textout(735,nad-2,'ВЫБРАНО') else textout(700,nad-2,'                             '); line(500,nad+12,800,nad+12);
nad:=nad+15;
textout(620,nad-2,''+inttostr(P2)+'       '); if (TIP=3) then textout(735,nad-2,'ВЫБРАНО') else textout(700,nad-2,'                             '); line(500,nad+12,800,nad+12);
nad:=nad+15;
textout(620,nad-2,''+inttostr(P3)+'       '); if (TIP=4) then textout(735,nad-2,'ВЫБРАНО') else textout(700,nad-2,'                             '); line(500,nad+12,800,nad+12);
nad:=nad+15;
textout(620,nad-2,''+inttostr(P4)+'       '); if (TIP=5) then textout(735,nad-2,'ВЫБРАНО') else textout(700,nad-2,'                             '); line(500,nad+12,800,nad+12);
nad:=nad+15;
textout(620,nad-2,''+inttostr(P5)+'       '); if (TIP=6) then textout(735,nad-2,'ВЫБРАНО') else textout(700,nad-2,'                             '); line(500,nad+12,800,nad+12);
nad:=nad+15;
textout(620,nad-2,''+inttostr(P6)+'       '); if (TIP=7) then textout(735,nad-2,'ВЫБРАНО') else textout(700,nad-2,'                             '); line(500,nad+12,800,nad+12);
nad:=nad+15;
textout(620,nad-2,''+inttostr(P7)+'       '); if (TIP=8) then textout(735,nad-2,'ВЫБРАНО') else textout(700,nad-2,'                             '); line(500,nad+12,800,nad+12);
nad:=nad+15;
textout(620,nad-2,''+inttostr(P9)+'       '); if (TIP=9) then textout(735,nad-2,'ВЫБРАНО') else textout(700,nad-2,'                             '); line(500,nad+12,800,nad+12);
nad:=nad+15;
textout(620,nad-2,''+inttostr(P10)+'       '); if (TIP=10) then textout(735,nad-2,'ВЫБРАНО') else textout(700,nad-2,'                             '); line(500,nad+12,800,nad+12);
nad:=nad+15;
textout(620,nad-2,''+inttostr(P11)+'       '); if (TIP=11) then textout(735,nad-2,'ВЫБРАНО') else textout(700,nad-2,'                             '); line(500,nad+12,800,nad+12);
nad:=nad+15;
textout(620,nad-2,''+inttostr(P12)+'       '); if (TIP=12) then textout(735,nad-2,'ВЫБРАНО') else textout(700,nad-2,'                             '); line(500,nad+12,800,nad+12);
nad:=nad+15;
textout(620,nad-2,''+inttostr(P13)+'       '); if (TIP=13) then textout(735,nad-2,'ВЫБРАНО') else textout(700,nad-2,'                             '); line(500,nad+12,800,nad+12);
nad:=nad+15;
textout(620,nad-2,''+inttostr(P14)+'       '); if (TIP=14) then textout(735,nad-2,'ВЫБРАНО') else textout(700,nad-2,'                             '); line(500,nad+12,800,nad+12);
nad:=nad+15;
textout(620,nad-2,''+inttostr(P15)+'       '); if (TIP=15) then textout(735,nad-2,'ВЫБРАНО') else textout(700,nad-2,'                             '); line(500,nad+12,800,nad+12);
nad:=nad+15;
textout(620,nad-2,''+inttostr(P16)+'       '); if (TIP=16) then textout(735,nad-2,'ВЫБРАНО') else textout(700,nad-2,'                             '); line(500,nad+12,800,nad+12);
nad:=nad+15;
textout(620,nad-2,''+inttostr(P17)+'       '); if (TIP=17) then textout(735,nad-2,'ВЫБРАНО') else textout(700,nad-2,'                             '); line(500,nad+12,800,nad+12);
nad:=nad+15;
textout(620,nad-2,''+inttostr(P18)+'       '); if (TIP=18) then textout(735,nad-2,'ВЫБРАНО') else textout(700,nad-2,'                             '); line(500,nad+12,800,nad+12);
nad:=nad+15;
textout(620,nad-2,''+inttostr(P19)+'       '); if (TIP=19) then textout(735,nad-2,'ВЫБРАНО') else textout(700,nad-2,'                             '); line(500,nad+12,800,nad+12);
nad:=nad+15;
textout(620,nad-2,''+inttostr(P20)+'       '); if (TIP=20) then textout(735,nad-2,'ВЫБРАНО') else textout(700,nad-2,'                             '); line(500,nad+12,800,nad+12);
nad:=nad+15;
textout(620,nad-2,''+inttostr(P21)+'       '); if (TIP=21) then textout(735,nad-2,'ВЫБРАНО') else textout(700,nad-2,'                             '); line(500,nad+12,800,nad+12);
nad:=nad+15;
textout(620,nad-2,''+inttostr(P22)+'       '); if (TIP=22) then textout(735,nad-2,'ВЫБРАНО') else textout(700,nad-2,'                             '); line(500,nad+12,800,nad+12);
nad:=nad+15;
textout(620,nad-2,''+inttostr(P23)+'       '); if (TIP=23) then textout(735,nad-2,'ВЫБРАНО') else textout(700,nad-2,'                             '); line(500,nad+12,800,nad+12);
nad:=nad+15;

 line(500,nad+12,800,nad+12);  
nad:=nad+30;
textout(580,nad,''+inttostr(money)+'                                            ');
nad:=nad+15;

end;

end;





















procedure DOWNLOADdown;
begin

assign(F1,'сохранения/SAVE'+inttostr(SLOT));
reset(F1);

readln(F1,pack);
readln(F1,X);
readln(F1,Y);
readln(F1,mx);
readln(F1,my);
readln(F1,P0);
readln(F1,P1);
readln(F1,P2);
readln(F1,P3);
readln(F1,P4);
readln(F1,P5);
readln(F1,P6);
readln(F1,P7);
readln(F1,P8);
readln(F1,P9);
readln(F1,P10);
readln(F1,P11);
readln(F1,P12);
readln(F1,P13);
readln(F1,P14);
readln(F1,P15);
readln(F1,P16);
readln(F1,P17);
readln(F1,P18);
readln(F1,P19);
readln(F1,P20);
readln(F1,P21);
readln(F1,P22);
readln(F1,P23);
readln(F1,money);
readln(F1,LIVE);
readln(F1,GOLOD);

for var iy:=0 to 50 do begin
for var ix:=0 to 50 do begin
read(F1,A[ix,iy]);
end;
readln(F1);
end;
close(F1);


ris;
information;
info;

end;


















procedure keydown(key: integer);
begin




try




if (GAME=1) then begin


if (TIP=1) and (key=109) and (P0>0) then begin P0:=P0-1; money:=money+1; end;
if (TIP=2) and (key=109) and (P1>0) then begin P1:=P1-1; money:=money+1; end;
if (TIP=3) and (key=109) and (P2>0) then begin P2:=P2-1; money:=money+2; end;
if (TIP=4) and (key=109) and (P3>0) then begin P3:=P3-1; money:=money+5; end;
if (TIP=5) and (key=109) and (P4>0) then begin P4:=P4-1; money:=money+10; end;
if (TIP=6) and (key=109) and (P5>0) then begin P5:=P5-1; money:=money+20; end;
if (TIP=7) and (key=109) and (P6>0) then begin P6:=P6-1; money:=money+50; end;
if (TIP=8) and (key=109) and (P7>0) then begin P7:=P7-1; money:=money+100; end;
if (TIP=9) and (key=109) and (P9>0) then begin P9:=P9-1; money:=money+20; end;
if (TIP=10) and (key=109) and (P10>0) then begin P10:=P10-1; money:=money+2; end;
if (TIP=11) and (key=109) and (P11>0) then begin P11:=P11-1; money:=money+2; end;
if (TIP=12) and (key=109) and (P12>0) then begin P12:=P12-1; money:=money+1100; end;
if (TIP=13) and (key=109) and (P13>0) then begin P13:=P13-1; money:=money+3; end;
if (TIP=14) and (key=109) and (P14>0) then begin P14:=P14-1; money:=money+1; end;
if (TIP=15) and (key=109) and (P15>0) then begin P15:=P15-1; money:=money+5; end;
if (TIP=16) and (key=109) and (P16>0) then begin P16:=P16-1; money:=money+2; end;
if (TIP=17) and (key=109) and (P17>0) then begin P17:=P17-1; money:=money+3; end;
if (TIP=18) and (key=109) and (P18>0) then begin P18:=P18-1; money:=money+10; end;
if (TIP=19) and (key=109) and (P19>0) then begin P19:=P19-1; money:=money+15; end;
if (TIP=20) and (key=109) and (P20>0) then begin P20:=P20-1; money:=money+35; end;
if (TIP=21) and (key=109) and (P21>0) then begin P21:=P21-1; money:=money+500; end;
if (TIP=22) and (key=109) and (P22>0) then begin P22:=P22-1; money:=money+5; end;
if (TIP=23) and (key=109) and (P23>0) then begin P23:=P23-1; money:=money+45; end;

if (TIP=1) and (key=107) and (money>=2) then begin P0:=P0+1; money:=money-2; end;
if (TIP=2) and (key=107) and (money>=2) then begin P1:=P1+1; money:=money-2; end;
if (TIP=3) and (key=107) and (money>=3) then begin P2:=P2+1; money:=money-3; end;
if (TIP=4) and (key=107) and (money>=6) then begin P3:=P3+1; money:=money-6; end;
if (TIP=5) and (key=107) and (money>=12) then begin P4:=P4+1; money:=money-12; end;
if (TIP=6) and (key=107) and (money>=24) then begin P5:=P5+1; money:=money-24; end;
if (TIP=7) and (key=107) and (money>=58) then begin P6:=P6+1; money:=money-58; end;
if (TIP=8) and (key=107) and (money>=120) then begin P7:=P7+1; money:=money-120; end;
if (TIP=9) and (key=107) and (money>=400) then begin P9:=P9+1; money:=money-400; end;
if (TIP=10) and (key=107) and (money>=3) then begin P10:=P10+1; money:=money-3; end;
if (TIP=11) and (key=107) and (money>=3) then begin P11:=P11+1; money:=money-3; end;
if (TIP=12) and (key=107) and (money>=1220) then begin P12:=P12+1; money:=money-1220; end;
if (TIP=13) and (key=107) and (money>=4) then begin P13:=P13+1; money:=money-4; end;
if (TIP=14) and (key=107) and (money>=3) then begin P14:=P14+1; money:=money-2; end;
if (TIP=15) and (key=107) and (money>=200) then begin P15:=P15+1; money:=money-200; end;
if (TIP=16) and (key=107) and (money>=6) then begin P16:=P16+1; money:=money-3; end;
if (TIP=17) and (key=107) and (money>=4) then begin P17:=P17+1; money:=money-4; end;
if (TIP=18) and (key=107) and (money>=15) then begin P18:=P18+1; money:=money-15; end;
if (TIP=19) and (key=107) and (money>=40) then begin P19:=P19+1; money:=money-40; end;
if (TIP=20) and (key=107) and (money>=50) then begin P20:=P20+1; money:=money-50; end;
if (TIP=21) and (key=107) and (money>=700) then begin P21:=P21+1; money:=money-700; end;
if (TIP=22) and (key=107) and (money>=7) then begin P22:=P22+1; money:=money-7; end;
if (TIP=23) and (key=107) and (money>=50) then begin P23:=P23+1; money:=money-50; end;




if (key=96) then begin clearwindow; T1.Start; T2.Start; T3.Start; T4.Start; T5.Start; T6.Start; T7.Start; T8.Start; info; information; ris; end;
if (key=97) then begin generate; ris; end;

if (key=83) then begin SAVEup; end;
if (key=68) then begin DOWNLOADdown; end;


if (key=49) then begin MONEY:=MONEY+100; end;
if (key=50) then begin LIVE:=LIVE+1; end;
if (key=51) then begin GOLOD:=GOLOD+1; end;


XX:=X;
YY:=Y;

P:=pictureabc.Create(XX,YY,'текстуры\'+pack+'\воздух.bmp');
P:=pictureabc.Create(XX,YY+10,'текстуры\'+pack+'\воздух.bmp');

if (key=Vk_right) and (A[mx+1,my]='0') and (A[mx+1,my+1]='0') and (X+10<=500) then begin X:=X+10; mx:=mx+1; end;
if (key=Vk_left) and (A[mx-1,my]='0') and (A[mx-1,my+1]='0') and (X-10>=0) then begin X:=X-10; mx:=mx-1; end;
if (key=Vk_up) and (A[mx,my-1]='0') and (A[mx,my+2]<>'0') and (Y-10>=0) then begin Y:=Y-10; my:=my-1; end;
if (key=Vk_down) and (A[mx,my+2]='0') and (Y+20<=500) then begin Y:=Y+10; my:=my+1; end;

if (A[mx,my+3]='0') and (A[mx,my+2]='0') then begin my:=my+1; Y:=Y+10; end;

P:=pictureabc.Create(X,Y,'текстуры\'+pack+'\игрок.bmp');

end;


if (GAME=0) then begin //ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd





end;




except
setwindowtitle('Произошла ошибка! Карта перезагружается, ждите...');
SAVEup;
ris;
info;
information;
setwindowtitle('WELCOME TO PASCALCRAFT V0.4.4 TEST');
end;



end;



procedure mousedown(x,y,mb: integer);
var nad : integer;
begin



try



if (GAME=1) then begin








for var iy:=1 to 50 do begin
for var ix:=1 to 50 do begin                //блоки строители
if (mb=2) then begin



if (x>ix*10) and (x<ix*10+10) and (y>iy*10) and (y<iy*10+10) and (A[ix,iy]='w') then begin    // СФТ1

A[ix,iy]:='2'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\камень.bmp');
A[ix-1,iy]:='2'; P:=pictureabc.Create(ix*10-10,iy*10,'текстуры\'+pack+'\камень.bmp');
A[ix+1,iy]:='9'; P:=pictureabc.Create(ix*10+10,iy*10,'текстуры\'+pack+'\песок.bmp');
A[ix+2,iy]:='9'; P:=pictureabc.Create(ix*10+20,iy*10,'текстуры\'+pack+'\песок.bmp');
A[ix+3,iy]:='9'; P:=pictureabc.Create(ix*10+30,iy*10,'текстуры\'+pack+'\песок.bmp');
A[ix+4,iy]:='2'; P:=pictureabc.Create(ix*10+40,iy*10,'текстуры\'+pack+'\камень.bmp');
A[ix+4,iy-1]:='2'; P:=pictureabc.Create(ix*10+40,iy*10-10,'текстуры\'+pack+'\камень.bmp');
A[ix+4,iy-2]:='2'; P:=pictureabc.Create(ix*10+40,iy*10-20,'текстуры\'+pack+'\камень.bmp');
A[ix+4,iy-3]:='2'; P:=pictureabc.Create(ix*10+40,iy*10-30,'текстуры\'+pack+'\камень.bmp');
A[ix+4,iy-4]:='2'; P:=pictureabc.Create(ix*10+40,iy*10-40,'текстуры\'+pack+'\камень.bmp');
A[ix+3,iy-4]:='2'; P:=pictureabc.Create(ix*10+30,iy*10-40,'текстуры\'+pack+'\камень.bmp');
A[ix+2,iy-4]:='2'; P:=pictureabc.Create(ix*10+20,iy*10-40,'текстуры\'+pack+'\камень.bmp');
A[ix+1,iy-4]:='2'; P:=pictureabc.Create(ix*10+10,iy*10-40,'текстуры\'+pack+'\камень.bmp');
A[ix,iy-4]:='2'; P:=pictureabc.Create(ix*10,iy*10-40,'текстуры\'+pack+'\камень.bmp');
A[ix-1,iy-4]:='2'; P:=pictureabc.Create(ix*10-10,iy*10-40,'текстуры\'+pack+'\камень.bmp');
A[ix-1,iy-3]:='2'; P:=pictureabc.Create(ix*10-10,iy*10-30,'текстуры\'+pack+'\камень.bmp');
A[ix+1,iy-1]:='8'; P:=pictureabc.Create(ix*10+10,iy*10-10,'текстуры\'+pack+'\тростник.bmp');
A[ix+2,iy-1]:='8'; P:=pictureabc.Create(ix*10+20,iy*10-10,'текстуры\'+pack+'\тростник.bmp');
A[ix+3,iy-1]:='8'; P:=pictureabc.Create(ix*10+30,iy*10-10,'текстуры\'+pack+'\тростник.bmp');
A[ix-1,iy+1]:='2'; P:=pictureabc.Create(ix*10-10,iy*10+10,'текстуры\'+pack+'\камень.bmp');
A[ix+1,iy+1]:='2'; P:=pictureabc.Create(ix*10+10,iy*10+10,'текстуры\'+pack+'\камень.bmp');
A[ix+2,iy+1]:='2'; P:=pictureabc.Create(ix*10+20,iy*10+10,'текстуры\'+pack+'\камень.bmp');
A[ix+3,iy+1]:='2'; P:=pictureabc.Create(ix*10+30,iy*10+10,'текстуры\'+pack+'\камень.bmp');
A[ix+4,iy+1]:='2'; P:=pictureabc.Create(ix*10+40,iy*10+10,'текстуры\'+pack+'\камень.bmp');
A[ix,iy+1]:='2'; P:=pictureabc.Create(ix*10,iy*10+10,'текстуры\'+pack+'\камень.bmp');
A[ix+1,iy-2]:='0'; P:=pictureabc.Create(ix*10+10,iy*10-20,'текстуры\'+pack+'\воздух.bmp');
A[ix+2,iy-2]:='0'; P:=pictureabc.Create(ix*10+20,iy*10-20,'текстуры\'+pack+'\воздух.bmp');
A[ix+3,iy-2]:='0'; P:=pictureabc.Create(ix*10+30,iy*10-20,'текстуры\'+pack+'\воздух.bmp');
A[ix+1,iy-3]:='0'; P:=pictureabc.Create(ix*10+10,iy*10-30,'текстуры\'+pack+'\воздух.bmp');
A[ix+2,iy-3]:='0'; P:=pictureabc.Create(ix*10+20,iy*10-30,'текстуры\'+pack+'\воздух.bmp');
A[ix+3,iy-3]:='0'; P:=pictureabc.Create(ix*10+30,iy*10-30,'текстуры\'+pack+'\воздух.bmp');
A[ix,iy-3]:='0'; P:=pictureabc.Create(ix*10,iy*10-30,'текстуры\'+pack+'\воздух.bmp');
A[ix,iy-2]:='0'; P:=pictureabc.Create(ix*10,iy*10-20,'текстуры\'+pack+'\воздух.bmp');
A[ix,iy-1]:='0'; P:=pictureabc.Create(ix*10,iy*10-10,'текстуры\'+pack+'\воздух.bmp');
A[ix-1,iy-2]:='0'; P:=pictureabc.Create(ix*10-10,iy*10-20,'текстуры\'+pack+'\воздух.bmp');
A[ix-1,iy-1]:='0'; P:=pictureabc.Create(ix*10-10,iy*10-10,'текстуры\'+pack+'\воздух.bmp');

end;



end;
end;
end;












if (mb=1) and (x>500) and (x<800) and (y>0+nad) and (y<10+nad) then TIP:=1;
nad:=nad+15;
if (mb=1) and (x>500) and (x<800) and (y>0+nad) and (y<10+nad) then TIP:=2;
nad:=nad+15;
if (mb=1) and (x>500) and (x<800) and (y>0+nad) and (y<10+nad) then TIP:=3;
nad:=nad+15;
if (mb=1) and (x>500) and (x<800) and (y>0+nad) and (y<10+nad) then TIP:=4;
nad:=nad+15;
if (mb=1) and (x>500) and (x<800) and (y>0+nad) and (y<10+nad) then TIP:=5;
nad:=nad+15;
if (mb=1) and (x>500) and (x<800) and (y>0+nad) and (y<10+nad) then TIP:=6;
nad:=nad+15;
if (mb=1) and (x>500) and (x<800) and (y>0+nad) and (y<10+nad) then TIP:=7;
nad:=nad+15;
if (mb=1) and (x>500) and (x<800) and (y>0+nad) and (y<10+nad) then TIP:=8;
nad:=nad+15;
if (mb=1) and (x>500) and (x<800) and (y>0+nad) and (y<10+nad) then TIP:=9;
nad:=nad+15;
if (mb=1) and (x>500) and (x<800) and (y>0+nad) and (y<10+nad) then TIP:=10;
nad:=nad+15;
if (mb=1) and (x>500) and (x<800) and (y>0+nad) and (y<10+nad) then TIP:=11;
nad:=nad+15;
if (mb=1) and (x>500) and (x<800) and (y>0+nad) and (y<10+nad) then TIP:=12;
nad:=nad+15;
if (mb=1) and (x>500) and (x<800) and (y>0+nad) and (y<10+nad) then TIP:=13;
nad:=nad+15;
if (mb=1) and (x>500) and (x<800) and (y>0+nad) and (y<10+nad) then TIP:=14;
nad:=nad+15;
if (mb=1) and (x>500) and (x<800) and (y>0+nad) and (y<10+nad) then TIP:=15;
nad:=nad+15;
if (mb=1) and (x>500) and (x<800) and (y>0+nad) and (y<10+nad) then TIP:=16;
nad:=nad+15;
if (mb=1) and (x>500) and (x<800) and (y>0+nad) and (y<10+nad) then TIP:=17;
nad:=nad+15;
if (mb=1) and (x>500) and (x<800) and (y>0+nad) and (y<10+nad) then TIP:=18;
nad:=nad+15;
if (mb=1) and (x>500) and (x<800) and (y>0+nad) and (y<10+nad) then TIP:=19;
nad:=nad+15;
if (mb=1) and (x>500) and (x<800) and (y>0+nad) and (y<10+nad) then TIP:=20;
nad:=nad+15;
if (mb=1) and (x>500) and (x<800) and (y>0+nad) and (y<10+nad) then TIP:=21;
nad:=nad+15;
if (mb=1) and (x>500) and (x<800) and (y>0+nad) and (y<10+nad) then TIP:=22;
nad:=nad+15;
if (mb=1) and (x>500) and (x<800) and (y>0+nad) and (y<10+nad) then TIP:=23;
nad:=nad+15;



if (mb=1) then begin
for var iy:=0 to 49 do begin                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   //   if (A[ix,iy]='a') then begin P22:=P22+1; end; 
for var ix:=0 to 49 do begin                     

if (x>ix*10) and (x<ix*10+10) and (y>iy*10) and (y<iy*10+10) and (x>mx*10+10) and (x<mx*10+10+10) and (y>my*10) and (y<my*10+10+10) then begin if (A[ix,iy]='*') then begin P0:=P0+1; end; if (A[ix,iy]='1') then begin P1:=P1+1; end; if (A[ix,iy]='2') then begin P2:=P2+1; end; if (A[ix,iy]='3') then begin P3:=P3+1; end; if (A[ix,iy]='4') then begin P4:=P4+1; end; if (A[ix,iy]='5') then begin P5:=P5+1; end; if (A[ix,iy]='6') then begin P6:=P6+1; end; if (A[ix,iy]='7') then begin P7:=P7+1; end; if (A[ix,iy]='8') then begin P9:=P9+1; end; if (A[ix,iy]='9') then begin P10:=P10+1; end;  if (A[ix,iy]='q') then begin P11:=P11+1; end; if (A[ix,iy]='w') then begin P12:=P12+1; end; if (A[ix,iy]='e') then begin P13:=P13+1; end;  if (A[ix,iy]='r') then begin P14:=P14+1; end;  if (A[ix,iy]='t') then begin P15:=P15+1; end; if (A[ix,iy]='y') then begin P16:=P16+1; end; if (A[ix,iy]='u') then begin P17:=P17+1; end; if (A[ix,iy]='i') then begin P18:=P18+1; end; if (A[ix,iy]='o') then begin P19:=P19+1; end; if (A[ix,iy]='p') then begin P21:=P21+1; end;  if (A[ix,iy]='a') then begin P22:=P22; end;  if (A[ix,iy]='s') then begin P23:=P23+1; end;   A[ix,iy]:='0'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\воздух.bmp');  end;   //в право 
if (x>ix*10) and (x<ix*10+10) and (y>iy*10) and (y<iy*10+10) and (x>mx*10) and (x<mx*10+10) and (y>my*10+10+10) and (y<my*10+10+10+10) then begin if (A[ix,iy]='*') then begin P0:=P0+1; end; if (A[ix,iy]='1') then begin P1:=P1+1; end; if (A[ix,iy]='2') then begin P2:=P2+1; end; if (A[ix,iy]='3') then begin P3:=P3+1; end; if (A[ix,iy]='4') then begin P4:=P4+1; end; if (A[ix,iy]='5') then begin P5:=P5+1; end; if (A[ix,iy]='6') then begin P6:=P6+1; end; if (A[ix,iy]='7') then begin P7:=P7+1; end; if (A[ix,iy]='8') then begin P9:=P9+1; end; if (A[ix,iy]='9') then begin P10:=P10+1; end;  if (A[ix,iy]='q') then begin P11:=P11+1; end; if (A[ix,iy]='w') then begin P12:=P12+1; end; if (A[ix,iy]='e') then begin P13:=P13+1; end; if (A[ix,iy]='r') then begin P14:=P14+1; end;  if (A[ix,iy]='t') then begin P15:=P15+1; end; if (A[ix,iy]='y') then begin P16:=P16+1; end; if (A[ix,iy]='u') then begin P17:=P17+1; end; if (A[ix,iy]='i') then begin P18:=P18+1; end; if (A[ix,iy]='o') then begin P19:=P19+1; end; if (A[ix,iy]='p') then begin P21:=P21+1; end;  if (A[ix,iy]='a') then begin P22:=P22; end; if (A[ix,iy]='s') then begin P23:=P23+1; end;  A[ix,iy]:='0'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\воздух.bmp');  end;  //в низ
if (x>ix*10) and (x<ix*10+10) and (y>iy*10) and (y<iy*10+10) and (x>mx*10) and (x<mx*10+10) and (y>my*10-10) and (y<my*10+10) then begin if (A[ix,iy]='*') then begin P0:=P0+1; end; if (A[ix,iy]='1') then begin P1:=P1+1; end; if (A[ix,iy]='2') then begin P2:=P2+1; end; if (A[ix,iy]='3') then begin P3:=P3+1; end; if (A[ix,iy]='4') then begin P4:=P4+1; end; if (A[ix,iy]='5') then begin P5:=P5+1; end; if (A[ix,iy]='6') then begin P6:=P6+1; end; if (A[ix,iy]='7') then begin P7:=P7+1; end; if (A[ix,iy]='8') then begin P9:=P9+1; end; if (A[ix,iy]='9') then begin P10:=P10+1; end;  if (A[ix,iy]='q') then begin P11:=P11+1; end; if (A[ix,iy]='w') then begin P12:=P12+1; end; if (A[ix,iy]='e') then begin P13:=P13+1; end; if (A[ix,iy]='r') then begin P14:=P14+1; end;  if (A[ix,iy]='t') then begin P15:=P15+1; end; if (A[ix,iy]='y') then begin P16:=P16+1; end; if (A[ix,iy]='u') then begin P17:=P17+1; end; if (A[ix,iy]='i') then begin P18:=P18+1; end; if (A[ix,iy]='o') then begin P19:=P19+1; end; if (A[ix,iy]='p') then begin P21:=P21+1; end;  if (A[ix,iy]='a') then begin P22:=P22; end; if (A[ix,iy]='s') then begin P23:=P23+1; end;  A[ix,iy]:='0'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\воздух.bmp');  end;     //в верх
if (x>ix*10) and (x<ix*10+10) and (y>iy*10) and (y<iy*10+10) and (x>mx*10-10) and (x<mx*10) and (y>my*10) and (y<my*10+10+10) then begin if (A[ix,iy]='*') then begin P0:=P0+1; end; if (A[ix,iy]='1') then begin P1:=P1+1; end; if (A[ix,iy]='2') then begin P2:=P2+1; end; if (A[ix,iy]='3') then begin P3:=P3+1; end; if (A[ix,iy]='4') then begin P4:=P4+1; end; if (A[ix,iy]='5') then begin P5:=P5+1; end; if (A[ix,iy]='6') then begin P6:=P6+1; end; if (A[ix,iy]='7') then begin P7:=P7+1; end; if (A[ix,iy]='8') then begin P9:=P9+1; end; if (A[ix,iy]='9') then begin P10:=P10+1; end;  if (A[ix,iy]='q') then begin P11:=P11+1; end; if (A[ix,iy]='w') then begin P12:=P12+1; end; if (A[ix,iy]='e') then begin P13:=P13+1; end; if (A[ix,iy]='r') then begin P14:=P14+1; end;  if (A[ix,iy]='t') then begin P15:=P15+1; end; if (A[ix,iy]='y') then begin P16:=P16+1; end; if (A[ix,iy]='u') then begin P17:=P17+1; end; if (A[ix,iy]='i') then begin P18:=P18+1; end; if (A[ix,iy]='o') then begin P19:=P19+1; end; if (A[ix,iy]='p') then begin P21:=P21+1; end;  if (A[ix,iy]='a') then begin P22:=P22; end; if (A[ix,iy]='s') then begin P23:=P23+1; end;  A[ix,iy]:='0'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\воздух.bmp');  end;  //в лево

end;                                       
end;  
end;


if (mb=2) then begin
for var iy:=0 to 49 do begin               
for var ix:=0 to 49 do begin                     

if (x>ix*10) and (x<ix*10+10) and (y>iy*10) and (y<iy*10+10) then begin if (A[ix,iy]='0') then begin       
if (TIP=8) and (P7>0) then begin A[ix,iy]:='7'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\рубин.bmp'); P7:=P7-1;  end;
if (TIP=7) and (P6>0) then begin A[ix,iy]:='6'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\алмаз.bmp'); P6:=P6-1;  end;
if (TIP=6) and (P5>0) then begin A[ix,iy]:='5'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\золото.bmp'); P5:=P5-1;  end;
if (TIP=5) and (P4>0) then begin A[ix,iy]:='4'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\железо.bmp'); P4:=P4-1;  end;
if (TIP=4) and (P3>0) then begin A[ix,iy]:='3'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\уголь.bmp'); P3:=P3-1;  end;
if (TIP=3) and (P2>0) then begin A[ix,iy]:='2'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\камень.bmp'); P2:=P2-1;  end;
if (TIP=2) and (P1>0) then begin A[ix,iy]:='1'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\земля.bmp'); P1:=P1-1;  end;
if (TIP=1) and (P0>0) then begin A[ix,iy]:='*'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\трава.bmp'); P0:=P0-1;  end; 
if (TIP=9) and (P9>0) then begin  A[ix,iy]:='8'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\тростник.bmp'); P9:=P9-1; end;
if (TIP=10) and (P10>0) then begin  A[ix,iy]:='9'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\песок.bmp'); P10:=P10-1; end;  
if (TIP=11) and (P11>0) then begin  A[ix,iy]:='q'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\гравий.bmp'); P11:=P11-1; end; 
 if (TIP=12) and (P12>0) then begin  A[ix,iy]:='w'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\СТФ1.bmp'); P12:=P12-1; end;  
 if (TIP=13) and (P13>0) then begin  A[ix,iy]:='e'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\древесина.bmp'); P13:=P13-1; end;    
 if (TIP=14) and (P14>0) then begin  A[ix,iy]:='r'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\доски.bmp'); P14:=P14-1; end;   
 if (TIP=15) and (P15>0) then begin  A[ix,iy]:='t'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\кактус.bmp'); P15:=P15-1; end;
  if (TIP=16) and (P16>0) then begin  A[ix,iy]:='y'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\песчаник.bmp'); P16:=P16-1; end;
  if (TIP=17) and (P17>0) then begin  A[ix,iy]:='u'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\листва.bmp'); P17:=P17-1; end;       
  if (TIP=18) and (P18>0) then begin  A[ix,iy]:='i'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\росток.bmp'); P18:=P18-1; end;      
if (TIP=19) and (P19>0) then begin  A[ix,iy]:='o'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\грибы.bmp'); P19:=P19-1; end;
if (TIP=21) and (P21>0) then begin  A[ix,iy]:='p'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\АСБ1.bmp'); P21:=P21-1; end;
if (TIP=22) and (P22>0) then begin  A[ix,iy]:='a'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\стекло.bmp'); P22:=P22-1; end;
if (TIP=23) and (P23>0) then begin  A[ix,iy]:='s'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\слизень.bmp'); P23:=P23-1; end;
if (TIP=20) and (P20>0) then begin P20:=P20-1; GOLOD:=GOLOD+4 end;       end;  end;   //в право




end;                                       
end;


 
end;

end;

if (GAME=0) then begin //ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd





end;




except
setwindowtitle('Произошла ошибка! Карта перезагружается, ждите...');
SAVEup;
ris;
info;
information;
setwindowtitle('WELCOME TO PASCALCRAFT V0.4.4 TEST');
end;



end;



















procedure mainris;
begin
if (GAME=0) then begin



end;
end;



procedure MD(x,y,mb: integer);
begin
if (GAME=0) then begin



end;
end;



procedure KD(key: integer);
begin
if (GAME=0) then begin



end;
end;



















procedure trostnik;
var ix,iy : integer;
begin


try



ix:=random(1,50);
iy:=random(1,50);

if (A[ix,iy]='8') then begin
if (A[ix,iy+1]<>'*') and (A[ix,iy+1]<>'1') and (A[ix,iy+1]<>'8') and (A[ix,iy+1]<>'9') then begin A[ix,iy]:='0'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\воздух2.bmp'); end;
end;

if (A[ix,iy]='8') then begin
if (A[ix,iy+2]<>'8') and (A[ix,iy-1]='0') then begin A[ix,iy-1]:='8'; P:=pictureabc.Create(ix*10,iy*10-10,'текстуры\'+pack+'\тростник2.bmp'); end;
end;





if (A[ix,iy]='t') then begin
if (A[ix,iy+1]<>'9') and (A[ix,iy+1]<>'t') then begin A[ix,iy]:='0'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\воздух2.bmp'); end;
end;

if (A[ix,iy]='t') then begin
if (A[ix+1,iy]<>'0') and (A[ix-1,iy]<>'0') then begin A[ix,iy]:='0'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\воздух2.bmp'); end;
end;

if (A[ix,iy]='t') then begin
if (A[ix,iy+2]<>'t') and (A[ix,iy-1]='0') then begin A[ix,iy-1]:='t'; P:=pictureabc.Create(ix*10,iy*10-10,'текстуры\'+pack+'\кактус2.bmp'); end;
end;






if (A[ix,iy]='u') then begin
if (A[ix+1,iy]<>'e') and (A[ix-1,iy]<>'e') and (A[ix,iy+1]<>'e') and (A[ix,iy-1]<>'e') and (A[ix+2,iy]<>'e') and (A[ix-2,iy]<>'e') and (A[ix,iy+2]<>'e') and (A[ix,iy-2]<>'e') and (A[ix+1,iy+1]<>'e') and (A[ix-1,iy-1]<>'e') and (A[ix-1,iy+1]<>'e') and (A[ix+1,iy-1]<>'e') then begin A[ix,iy]:='0'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\воздух2.bmp'); end;
end;




if (A[ix,iy]='i') then begin
if (A[ix+1,iy]<>'0') and (A[ix-1,iy]<>'0') and (A[ix,iy+1]<>'0') and (A[ix,iy-1]<>'0') then begin A[ix,iy]:='0'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\воздух2.bmp'); end;
end;

if (A[ix,iy]='i') then begin
if (A[ix,iy+1]<>'*') and (A[ix,iy+1]<>'1') then begin A[ix,iy]:='0'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\воздух2.bmp'); end;
end;

if (A[ix,iy]='i') then begin
if (A[ix,iy-1]='0') and (A[ix,iy-2]='0') and (A[ix,iy-3]='0') and (A[ix,iy-4]='0') then begin

A[ix,iy]:='e'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\древесина.bmp'); 
A[ix,iy-1]:='e'; P:=pictureabc.Create(ix*10,iy*10-10,'текстуры\'+pack+'\древесина.bmp');
A[ix,iy-2]:='e'; P:=pictureabc.Create(ix*10,iy*10-20,'текстуры\'+pack+'\древесина.bmp');
A[ix,iy-3]:='e'; P:=pictureabc.Create(ix*10,iy*10-30,'текстуры\'+pack+'\древесина.bmp');

A[ix+1,iy-2]:='u'; P:=pictureabc.Create(ix*10+10,iy*10-20,'текстуры\'+pack+'\листва.bmp');
A[ix+2,iy-2]:='u'; P:=pictureabc.Create(ix*10+20,iy*10-20,'текстуры\'+pack+'\листва.bmp');
A[ix-1,iy-2]:='u'; P:=pictureabc.Create(ix*10-10,iy*10-20,'текстуры\'+pack+'\листва.bmp');
A[ix-2,iy-2]:='u'; P:=pictureabc.Create(ix*10-20,iy*10-20,'текстуры\'+pack+'\листва.bmp');

A[ix+1,iy-3]:='u'; P:=pictureabc.Create(ix*10+10,iy*10-30,'текстуры\'+pack+'\листва.bmp');
A[ix+2,iy-3]:='u'; P:=pictureabc.Create(ix*10+20,iy*10-30,'текстуры\'+pack+'\листва.bmp');
A[ix-1,iy-3]:='u'; P:=pictureabc.Create(ix*10-10,iy*10-30,'текстуры\'+pack+'\листва.bmp');
A[ix-2,iy-3]:='u'; P:=pictureabc.Create(ix*10-20,iy*10-30,'текстуры\'+pack+'\листва.bmp');

A[ix,iy-4]:='u'; P:=pictureabc.Create(ix*10,iy*10-40,'текстуры\'+pack+'\листва.bmp');
A[ix+1,iy-4]:='u'; P:=pictureabc.Create(ix*10+10,iy*10-40,'текстуры\'+pack+'\листва.bmp');
A[ix-1,iy-4]:='u'; P:=pictureabc.Create(ix*10-10,iy*10-40,'текстуры\'+pack+'\листва.bmp');

A[ix,iy-5]:='u'; P:=pictureabc.Create(ix*10,iy*10-50,'текстуры\'+pack+'\листва.bmp');
 
end;
end;





if (A[ix,iy]='*') or (A[ix,iy]='1') then begin
if (A[ix,iy-1]='0') and (A[ix,iy-2]='0') and (A[ix,iy-3]='0') and (A[ix,iy-4]='0') and (A[ix,iy-5]='0') and (A[ix,iy-6]='0') and (A[ix,iy-7]='0') and (A[ix,iy-8]='0') and (A[ix,iy-9]='0') then begin A[ix,iy]:='*'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\трава2.bmp'); end
else begin A[ix,iy]:='1'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\земля2.bmp'); end;
end;




if (A[ix,iy]='o') then begin  
if (A[ix,iy+1]<>'e') then begin A[ix,iy]:='0'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\воздух2.bmp'); end;
end;

if (A[ix,iy]='o') then begin  
if (A[ix+1,iy+1]='e') and (A[ix+1,iy]='0') then begin A[ix+1,iy]:='o'; P:=pictureabc.Create(ix*10+10,iy*10,'текстуры\'+pack+'\грибы.bmp'); end;
if (A[ix-1,iy+1]='e') and (A[ix-1,iy]='0') then begin A[ix-1,iy]:='o'; P:=pictureabc.Create(ix*10-10,iy*10,'текстуры\'+pack+'\грибы.bmp'); end;
end;




except
setwindowtitle('Произошла ошибка! Карта перезагружается, ждите...');
SAVEup;
ris;
info;
information;
setwindowtitle('WELCOME TO PASCALCRAFT V0.4.4 TEST');
end;



end;
















procedure pesok;
begin



try



for var iy:=51 downto -1 do begin
for var ix:=51 downto -1 do begin

if (A[ix,iy]='9') and (A[ix,iy+1]='0') then begin A[ix,iy]:='0'; A[ix,iy+1]:='9'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\воздух3.bmp');  P:=pictureabc.Create(ix*10,iy*10+10,'текстуры\'+pack+'\песок3.bmp');  end;

end;
end;

for var iy:=51 downto -1 do begin
for var ix:=51 downto -1 do begin

if (A[ix,iy]='q') and (A[ix,iy+1]='0') then begin A[ix,iy]:='0'; A[ix,iy+1]:='q'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\воздух3.bmp');  P:=pictureabc.Create(ix*10,iy*10+10,'текстуры\'+pack+'\гравий3.bmp');  end;

end;
end;


for var iy:=51 downto -1 do begin
for var ix:=51 downto -1 do begin

if (A[ix,iy]='8') and (A[ix,iy+1]='0') then begin A[ix,iy]:='0'; A[ix,iy+1]:='8'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\воздух3.bmp');  P:=pictureabc.Create(ix*10,iy*10+10,'текстуры\'+pack+'\тростник3.bmp');  end;

end;
end;


for var iy:=51 downto -1 do begin
for var ix:=51 downto -1 do begin

if (A[ix,iy]='t') and (A[ix,iy+1]='0') then begin A[ix,iy]:='0'; A[ix,iy+1]:='t'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\воздух3.bmp');  P:=pictureabc.Create(ix*10,iy*10+10,'текстуры\'+pack+'\кактус3.bmp');  end;

end;
end;


for var iy:=51 downto -1 do begin
for var ix:=51 downto -1 do begin

if (A[ix,iy]='o') and (A[ix,iy+1]='0') then begin A[ix,iy]:='0'; A[ix,iy+1]:='o'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\воздух3.bmp');  P:=pictureabc.Create(ix*10,iy*10+10,'текстуры\'+pack+'\грибы3.bmp');  end;

end;
end;


for var iy:=51 downto -1 do begin
for var ix:=51 downto -1 do begin

if (A[ix,iy]='i') and (A[ix,iy+1]='0') then begin A[ix,iy]:='0'; A[ix,iy+1]:='i'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\воздух3.bmp');  P:=pictureabc.Create(ix*10,iy*10+10,'текстуры\'+pack+'\росток3.bmp');  end;

end;
end;




except
setwindowtitle('Произошла ошибка! Карта перезагружается, ждите...');
SAVEup;
ris;
info;
information;
setwindowtitle('WELCOME TO PASCALCRAFT V0.4.4 TEST');
end;




end;



















procedure control;
begin



try




goloding:=goloding+1;
if (goloding>=90) then begin goloding:=0; GOLOD:=GOLOD-1; end;
if (GOLOD>=15) then begin LIVE:=LIVE+1; end;
if (GOLOD<=0) then begin LIVE:=LIVE-1; end;




for var iy:=1 to 500 do begin
for var ix:=1 to 500 do begin



if (mx=ix) and (my=iy) then begin
if (A[ix+1,iy]='t') then begin LIVE:=LIVE-1; end;
if (A[ix-1,iy]='t') then begin LIVE:=LIVE-1; end;
if (A[ix+1,iy+1]='t') then begin LIVE:=LIVE-1; end;
if (A[ix-1,iy+1]='t') then begin LIVE:=LIVE-1; end;
if (A[ix,iy+2]='t') then begin LIVE:=LIVE-1; end;
end;


if (mx=ix) and (my=iy) then begin
if (A[ix+1,iy]='s') then begin LIVE:=LIVE-2; end;
if (A[ix-1,iy]='s') then begin LIVE:=LIVE-2; end;
if (A[ix+1,iy+1]='s') then begin LIVE:=LIVE-2; end;
if (A[ix-1,iy+1]='s') then begin LIVE:=LIVE-2; end;
if (A[ix,iy+2]='s') then begin LIVE:=LIVE-2; end;
if (A[ix,iy]='s') then begin LIVE:=LIVE-2; end;
end;



end;
end;




except
setwindowtitle('Произошла ошибка! Карта перезагружается, ждите...');
SAVEup;
ris;
info;
information;
setwindowtitle('WELCOME TO PASCALCRAFT V0.4.4 TEST');
end;



end;

















procedure sbor;
begin



try



for var iy:=1 to 50 do begin
for var ix:=1 to 50 do begin

if (A[ix,iy]='p') then begin


if (A[ix,iy+1]='8') then begin A[ix,iy+1]:='0'; P:=pictureabc.Create(ix*10,iy*10+10,'текстуры\'+pack+'\воздух4.bmp'); P9:=P9+1; end;
if (A[ix+1,iy]='8') then begin A[ix+1,iy]:='0'; P:=pictureabc.Create(ix*10+10,iy*10,'текстуры\'+pack+'\воздух4.bmp'); P9:=P9+1; end;
if (A[ix-1,iy]='8') then begin A[ix-1,iy]:='0'; P:=pictureabc.Create(ix*10-10,iy*10,'текстуры\'+pack+'\воздух4.bmp'); P9:=P9+1; end;

if (A[ix,iy+1]='t') then begin A[ix,iy+1]:='0'; P:=pictureabc.Create(ix*10,iy*10+10,'текстуры\'+pack+'\воздух4.bmp'); P15:=P15+1; end;
if (A[ix+1,iy]='t') then begin A[ix+1,iy]:='0'; P:=pictureabc.Create(ix*10+10,iy*10,'текстуры\'+pack+'\воздух4.bmp'); P15:=P15+1; end;
if (A[ix-1,iy]='t') then begin A[ix-1,iy]:='0'; P:=pictureabc.Create(ix*10-10,iy*10,'текстуры\'+pack+'\воздух4.bmp'); P15:=P15+1; end;

if (A[ix,iy+1]='o') then begin A[ix,iy+1]:='0'; P:=pictureabc.Create(ix*10,iy*10+10,'текстуры\'+pack+'\воздух4.bmp'); P19:=P19+1; end;
if (A[ix+1,iy]='o') then begin A[ix+1,iy]:='0'; P:=pictureabc.Create(ix*10+10,iy*10,'текстуры\'+pack+'\воздух4.bmp'); P19:=P19+1; end;
if (A[ix-1,iy]='o') then begin A[ix-1,iy]:='0'; P:=pictureabc.Create(ix*10-10,iy*10,'текстуры\'+pack+'\воздух4.bmp'); P19:=P19+1; end;

if (A[ix,iy+1]='s') then begin A[ix,iy+1]:='0'; P:=pictureabc.Create(ix*10,iy*10+10,'текстуры\'+pack+'\воздух4.bmp'); P23:=P23+1; end;
if (A[ix+1,iy]='s') then begin A[ix+1,iy]:='0'; P:=pictureabc.Create(ix*10+10,iy*10,'текстуры\'+pack+'\воздух4.bmp'); P23:=P23+1; end;
if (A[ix-1,iy]='s') then begin A[ix-1,iy]:='0'; P:=pictureabc.Create(ix*10-10,iy*10,'текстуры\'+pack+'\воздух4.bmp'); P23:=P23+1; end;


end;

end;
end;



except
setwindowtitle('Произошла ошибка! Карта перезагружается, ждите...');
SAVEup;
ris;
info;
information;
setwindowtitle('WELCOME TO PASCALCRAFT V0.4.4 TEST');
end;



end;
















procedure MOB;
var
R9,R10 : integer;
begin
try

for var iy:=51 downto 0 do begin
for var ix:=51 downto 0 do begin












if (A[ix,iy] = '2') and (A[ix,iy-1] = '0') then begin  //спавн слизней на камнях

R10:=random(1,18000);  //вероятность спавна слизней

if (R10 = 1) then begin A[ix,iy-1]:='s'; P:=pictureabc.Create(ix*10,iy*10-10,'текстуры\'+pack+'\слизень.bmp'); end;

end;


if (A[ix,iy] = 's') then begin //передвижение слизней





if (A[ix,iy+1] <> '0') then begin

R9:=random(1,3);

if (R9 = 1) and (A[ix+1,iy] = '0') and (mx<>ix+1) and (my<>iy) then begin A[ix,iy]:='0'; A[ix+1,iy]:='s'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\воздух5.bmp'); P:=pictureabc.Create(ix*10+10,iy*10,'текстуры\'+pack+'\слизень.bmp'); end;
if (R9 = 2) and (A[ix-1,iy] = '0') and (mx<>ix-1) and (my<>iy) then begin A[ix,iy]:='0'; A[ix-1,iy]:='s'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\воздух5.bmp'); P:=pictureabc.Create(ix*10-10,iy*10,'текстуры\'+pack+'\слизень.bmp'); end;

end;




if (A[ix,iy+1] = '0') then begin A[ix,iy]:='0'; A[ix,iy+1]:='s'; P:=pictureabc.Create(ix*10,iy*10,'текстуры\'+pack+'\воздух5.bmp'); P:=pictureabc.Create(ix*10,iy*10+10,'текстуры\'+pack+'\слизень.bmp'); end;



end;














end;
end;

except
setwindowtitle('Произошла ошибка! Карта перезагружается, ждите...');
SAVEup;
ris;
info;
information;
setwindowtitle('WELCOME TO PASCALCRAFT V0.4.4 TEST');
end;
end;
























begin



try



setwindowtitle('WELCOME TO PASCALCRAFT V0.4.4 TEST');


LIVE:=20;
GOLOD:=20;
diwn:=390;

BIOM:=1;
RUDGEN:=1;
money:=0;
TIP:=0;
mx:=0;
my:=0;
GAME:=1;

pack:='texturpack1';



setwindowsize(800,500);


writeln('выберите биом для генерации:');
writeln();
writeln('1: стандартный');
writeln('2: пустыня');
writeln('3: тростники');
writeln('4: пищерный');
writeln('5: свободная игра');
writeln('6: грибной биом');
readln(BIOM);
clearwindow;


if (GAME=1) then begin
for var i:=0 to 50 do begin
line(0,i*10,500,i*10);
line(i*10,0,i*10,500);
end;
generate;
ris;
information;
end;

onmousedown:=mousedown;
onkeydown:=keydown;

T1:=timer.Create(100,info);
T1.Start;

T2:=timer.Create(80,trostnik);
T2.Start;

T3:=timer.Create(100,pesok);
T3.start;

T4:=timer.Create(100,gizni);
T4.Start;

T5:=timer.Create(100,golid);
T5.Start;

T6:=timer.Create(500,control);
T6.start;

T7:=timer.Create(500,sbor);
T7.Start;

T8:=timer.Create(200,MOB);
T8.Start;


if (GAME=0) then begin

textout(0,0,'нажмите ENTER');
readln();

onmousedown:=MD;
onkeydown:=KD;

mainris;

end;



except
setwindowtitle('Произошла ошибка! Карта перезагружается, ждите...');
SAVEup;
ris;
info;
information;
setwindowtitle('WELCOME TO PASCALCRAFT V0.4.4 TEST');
end;



end.





 
 

//БЛОКИ

//0 воздух
//* трава
//1 земля
//2 камень
//3 уголь
//4 метал
//5 золото
//6 алмазы
//7 рубины
//8 тростник
//9 песок
//q гравий
//w СТФ1
//e древесина
//r доски
//t кактус
//y песчаник
//u листва
//i росток
//o грибы
//p АСБ1
//a стекло

//МОБЫ

//s слизень 