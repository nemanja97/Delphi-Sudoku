unit Sudoku1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Gauges, StdCtrls, ExtCtrls, Menus;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel3: TPanel;
    Label7: TLabel;
    StringGrid1: TStringGrid;
    Button6: TButton;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Timer1: TTimer;
    Label8: TLabel;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Memo1: TMemo;
    Panel8: TPanel;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    Vreme,prov:integer;
    Brojevi:1..9;
    igra:boolean;
    Tablica:array [9..9,9..9] of integer;
    Pozicije,Provera:array [0..9,0..9] of string;
    MemoString:string;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
procedure ButtonEnable;
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
var i,j:integer;
begin
  for i:=0 to 8 do
    for j:=0 to 8 do
      StringGrid1.Cells[i,j]:='';
Timer1.Enabled:=False;
igra:=false;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Timer1.Enabled:=False;
igra:=false;
end;

procedure TForm1.Button4Click(Sender: TObject);
var i,j,prov:integer;
    k:char;
begin
Timer1.Enabled:=true;
Button1.Enabled:=false;
Button2.Enabled:=false;
Button3.Enabled:=false;
Button4.Enabled:=false;
Vreme:=0;
igra:=true;
prov:=0;
for i:=0 to 8 do
  for j:=0 to 8 do
    begin
       Pozicije[j,i]:='-';
       Provera[j,i]:='';
       for k:='1' to '9' do
        if StringGrid1.Cells[j,i]=k then
          begin
          Pozicije[j,i]:='x';
          Provera[j,i]:=k;
          end;
        if StringGrid1.Cells[i,j] = ''
          then
          else prov:=prov+1;
    end;
if prov = 81 then
    begin
    Timer1.Enabled:=false;
    ShowMessage('Pobedili ste!');
    end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
Vreme:=Vreme+Timer1.Interval;
Label8.Caption:=IntToStr(Vreme div 1000)+' s';
end;

procedure TForm1.Button2Click(Sender: TObject);
var i,j:integer;
begin
Memo1.Lines.Clear;
MemoString:='';
for i:=0 to 8 do
  begin
  for j:=0 to 8 do
    begin
      if StringGrid1.Cells[j,i]='1' then MemoString:=MemoString+StringGrid1.Cells[j,i];
      if StringGrid1.Cells[j,i]='2' then MemoString:=MemoString+StringGrid1.Cells[j,i];
      if StringGrid1.Cells[j,i]='3' then MemoString:=MemoString+StringGrid1.Cells[j,i];
      if StringGrid1.Cells[j,i]='4' then MemoString:=MemoString+StringGrid1.Cells[j,i];
      if StringGrid1.Cells[j,i]='5' then MemoString:=MemoString+StringGrid1.Cells[j,i];
      if StringGrid1.Cells[j,i]='6' then MemoString:=MemoString+StringGrid1.Cells[j,i];
      if StringGrid1.Cells[j,i]='7' then MemoString:=MemoString+StringGrid1.Cells[j,i];
      if StringGrid1.Cells[j,i]='8' then MemoString:=MemoString+StringGrid1.Cells[j,i];
      if StringGrid1.Cells[j,i]='9' then MemoString:=MemoString+StringGrid1.Cells[j,i];
      if StringGrid1.Cells[j,i]='' then MemoString:=MemoString+'0';
    end;
  Memo1.Lines.Add(MemoString);
  MemoString:='';
  end;
if SaveDialog1.Execute then Memo1.Lines.SaveToFile(SaveDialog1.FileName);
end;

procedure TForm1.Button3Click(Sender: TObject);
var i,j:integer;
begin
Memo1.Lines.Clear;
if OpenDialog1.Execute then Memo1.Lines.LoadFromFile(OpenDialog1.FileName);
MemoString:=Memo1.Lines.Text;
for i:=0 to 8 do
  for j:=1 to 9 do
    begin
      case MemoString[11*i+j] of
        '0':  StringGrid1.Cells[j-1,i] := '';
        '1':  StringGrid1.Cells[j-1,i] := '1';
        '2':  StringGrid1.Cells[j-1,i] := '2';
        '3':  StringGrid1.Cells[j-1,i] := '3';
        '4':  StringGrid1.Cells[j-1,i] := '4';
        '5':  StringGrid1.Cells[j-1,i] := '5';
        '6':  StringGrid1.Cells[j-1,i] := '6';
        '7':  StringGrid1.Cells[j-1,i] := '7';
        '8':  StringGrid1.Cells[j-1,i] := '8';
        '9':  StringGrid1.Cells[j-1,i] := '9';
        end;
    end;
end;

procedure TForm1.StringGrid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var i,j:integer;
begin
Button13.Enabled:=true;
Button14.Enabled:=true;
Button15.Enabled:=true;
Button10.Enabled:=true;
Button11.Enabled:=true;
Button12.Enabled:=true;
Button7.Enabled:=true;
Button8.Enabled:=true;
Button9.Enabled:=true;
Button5.Enabled:=true;
for i:=0 to 8 do
  for j:=1 to 9 do
        if StringGrid1.Cells[ACol,i] = IntToStr(j) then
          begin
            if j=1 then Button13.Enabled:=false;
            if j=2 then Button14.Enabled:=false;
            if j=3 then Button15.Enabled:=false;
            if j=4 then Button10.Enabled:=false;
            if j=5 then Button11.Enabled:=false;
            if j=6 then Button12.Enabled:=false;
            if j=7 then Button7.Enabled:=false;
            if j=8 then Button8.Enabled:=false;
            if j=9 then Button9.Enabled:=false;
          end;
for i:=0 to 8 do
  for j:=1 to 9 do
    if StringGrid1.Cells[i,ARow] = IntToStr(j) then
          begin
            if j=1 then Button13.Enabled:=false;
            if j=2 then Button14.Enabled:=false;
            if j=3 then Button15.Enabled:=false;
            if j=4 then Button10.Enabled:=false;
            if j=5 then Button11.Enabled:=false;
            if j=6 then Button12.Enabled:=false;
            if j=7 then Button7.Enabled:=false;
            if j=8 then Button8.Enabled:=false;
            if j=9 then Button9.Enabled:=false;
          end;
if (ARow = 0) or (ARow = 1) or (ARow = 2) then
	begin
		if (ACol = 0) or (ACol = 1) or (ACol = 2) then
			begin
				for i:=0 to 2 do
					for j:=0 to 2 do
						begin
							if StringGrid1.Cells[j,i] = '1' then Button13.Enabled := false;
							if StringGrid1.Cells[j,i] = '2' then Button14.Enabled := false;
							if StringGrid1.Cells[j,i] = '3' then Button15.Enabled := false;
              if StringGrid1.Cells[j,i] = '4' then Button10.Enabled := false;
              if StringGrid1.Cells[j,i] = '5' then Button11.Enabled := false;
              if StringGrid1.Cells[j,i] = '6' then Button12.Enabled := false;
              if StringGrid1.Cells[j,i] = '7' then Button7.Enabled := false;
              if StringGrid1.Cells[j,i] = '8' then Button8.Enabled := false;
              if StringGrid1.Cells[j,i] = '9' then Button9.Enabled := false;
						end;
			end;
			if (ACol = 3) or (ACol = 4) or (ACol = 5) then
			begin
				for i:=0 to 2 do
					for j:=3 to 5 do
						begin
							if StringGrid1.Cells[j,i] = '1' then Button13.Enabled := false;
							if StringGrid1.Cells[j,i] = '2' then Button14.Enabled := false;
							if StringGrid1.Cells[j,i] = '3' then Button15.Enabled := false;
              if StringGrid1.Cells[j,i] = '4' then Button10.Enabled := false;
              if StringGrid1.Cells[j,i] = '5' then Button11.Enabled := false;
              if StringGrid1.Cells[j,i] = '6' then Button12.Enabled := false;
              if StringGrid1.Cells[j,i] = '7' then Button7.Enabled := false;
              if StringGrid1.Cells[j,i] = '8' then Button8.Enabled := false;
              if StringGrid1.Cells[j,i] = '9' then Button9.Enabled := false;
						end;
			end;
			if (ACol = 6) or (ACol = 7) or (ACol = 8) then
			begin
				for i:=0 to 2 do
					for j:=6 to 8 do
						begin
							if StringGrid1.Cells[j,i] = '1' then Button13.Enabled := false;
							if StringGrid1.Cells[j,i] = '2' then Button14.Enabled := false;
							if StringGrid1.Cells[j,i] = '3' then Button15.Enabled := false;
              if StringGrid1.Cells[j,i] = '4' then Button10.Enabled := false;
              if StringGrid1.Cells[j,i] = '5' then Button11.Enabled := false;
              if StringGrid1.Cells[j,i] = '6' then Button12.Enabled := false;
              if StringGrid1.Cells[j,i] = '7' then Button7.Enabled := false;
              if StringGrid1.Cells[j,i] = '8' then Button8.Enabled := false;
              if StringGrid1.Cells[j,i] = '9' then Button9.Enabled := false;
						end;
			end;
	end;
if (ARow = 3) or (ARow = 4) or (ARow = 5) then
	begin
		if (ACol = 0) or (ACol = 1) or (ACol = 2) then
			begin
				for i:=3 to 5 do
					for j:=0 to 2 do
						begin
							if StringGrid1.Cells[j,i] = '1' then Button13.Enabled := false;
							if StringGrid1.Cells[j,i] = '2' then Button14.Enabled := false;
							if StringGrid1.Cells[j,i] = '3' then Button15.Enabled := false;
              if StringGrid1.Cells[j,i] = '4' then Button10.Enabled := false;
              if StringGrid1.Cells[j,i] = '5' then Button11.Enabled := false;
              if StringGrid1.Cells[j,i] = '6' then Button12.Enabled := false;
              if StringGrid1.Cells[j,i] = '7' then Button7.Enabled := false;
              if StringGrid1.Cells[j,i] = '8' then Button8.Enabled := false;
              if StringGrid1.Cells[j,i] = '9' then Button9.Enabled := false;
						end;
			end;
			if (ACol = 3) or (ACol = 4) or (ACol = 5) then
			begin
				for i:=3 to 5 do
					for j:=3 to 5 do
						begin
							if StringGrid1.Cells[j,i] = '1' then Button13.Enabled := false;
							if StringGrid1.Cells[j,i] = '2' then Button14.Enabled := false;
							if StringGrid1.Cells[j,i] = '3' then Button15.Enabled := false;
              if StringGrid1.Cells[j,i] = '4' then Button10.Enabled := false;
              if StringGrid1.Cells[j,i] = '5' then Button11.Enabled := false;
              if StringGrid1.Cells[j,i] = '6' then Button12.Enabled := false;
              if StringGrid1.Cells[j,i] = '7' then Button7.Enabled := false;
              if StringGrid1.Cells[j,i] = '8' then Button8.Enabled := false;
              if StringGrid1.Cells[j,i] = '9' then Button9.Enabled := false;
						end;
			end;
			if (ACol = 6) or (ACol = 7) or (ACol = 8) then
			begin
				for i:=3 to 5 do
					for j:=6 to 8 do
						begin
							if StringGrid1.Cells[j,i] = '1' then Button13.Enabled := false;
							if StringGrid1.Cells[j,i] = '2' then Button14.Enabled := false;
							if StringGrid1.Cells[j,i] = '3' then Button15.Enabled := false;
              if StringGrid1.Cells[j,i] = '4' then Button10.Enabled := false;
              if StringGrid1.Cells[j,i] = '5' then Button11.Enabled := false;
              if StringGrid1.Cells[j,i] = '6' then Button12.Enabled := false;
              if StringGrid1.Cells[j,i] = '7' then Button7.Enabled := false;
              if StringGrid1.Cells[j,i] = '8' then Button8.Enabled := false;
              if StringGrid1.Cells[j,i] = '9' then Button9.Enabled := false;
						end;
			end;
	end;
if (ARow = 6) or (ARow = 7) or (ARow = 8) then
	begin
		if (ACol = 0) or (ACol = 1) or (ACol = 2) then
			begin
				for i:=6 to 8 do
					for j:=0 to 2 do
						begin
							if StringGrid1.Cells[j,i] = '1' then Button13.Enabled := false;
							if StringGrid1.Cells[j,i] = '2' then Button14.Enabled := false;
							if StringGrid1.Cells[j,i] = '3' then Button15.Enabled := false;
              if StringGrid1.Cells[j,i] = '4' then Button10.Enabled := false;
              if StringGrid1.Cells[j,i] = '5' then Button11.Enabled := false;
              if StringGrid1.Cells[j,i] = '6' then Button12.Enabled := false;
              if StringGrid1.Cells[j,i] = '7' then Button7.Enabled := false;
              if StringGrid1.Cells[j,i] = '8' then Button8.Enabled := false;
              if StringGrid1.Cells[j,i] = '9' then Button9.Enabled := false;
						end;
			end;
			if (ACol = 3) or (ACol = 4) or (ACol = 5) then
			begin
				for i:=6 to 8 do
					for j:=3 to 5 do
						begin
							if StringGrid1.Cells[j,i] = '1' then Button13.Enabled := false;
							if StringGrid1.Cells[j,i] = '2' then Button14.Enabled := false;
							if StringGrid1.Cells[j,i] = '3' then Button15.Enabled := false;
              if StringGrid1.Cells[j,i] = '4' then Button10.Enabled := false;
              if StringGrid1.Cells[j,i] = '5' then Button11.Enabled := false;
              if StringGrid1.Cells[j,i] = '6' then Button12.Enabled := false;
              if StringGrid1.Cells[j,i] = '7' then Button7.Enabled := false;
              if StringGrid1.Cells[j,i] = '8' then Button8.Enabled := false;
              if StringGrid1.Cells[j,i] = '9' then Button9.Enabled := false;
						end;
			end;
			if (ACol = 6) or (ACol = 7) or (ACol = 8) then
			begin
				for i:=6 to 8 do
					for j:=6 to 8 do
						begin
							if StringGrid1.Cells[j,i] = '1' then Button13.Enabled := false;
							if StringGrid1.Cells[j,i] = '2' then Button14.Enabled := false;
							if StringGrid1.Cells[j,i] = '3' then Button15.Enabled := false;
              if StringGrid1.Cells[j,i] = '4' then Button10.Enabled := false;
              if StringGrid1.Cells[j,i] = '5' then Button11.Enabled := false;
              if StringGrid1.Cells[j,i] = '6' then Button12.Enabled := false;
              if StringGrid1.Cells[j,i] = '7' then Button7.Enabled := false;
              if StringGrid1.Cells[j,i] = '8' then Button8.Enabled := false;
              if StringGrid1.Cells[j,i] = '9' then Button9.Enabled := false;
						end;
			end;
	end;
if Pozicije[ACol,ARow] = 'x' then
  begin
    Button13.Enabled:=false;
    Button14.Enabled:=false;
    Button15.Enabled:=false;
    Button10.Enabled:=false;
    Button11.Enabled:=false;
    Button12.Enabled:=false;
    Button7.Enabled:=false;
    Button8.Enabled:=false;
    Button9.Enabled:=false;
    Button5.Enabled:=false;
  end;
end;

procedure TForm1.Button13Click(Sender: TObject);
var i,j:integer;
begin
StringGrid1.Cells[StringGrid1.Col,StringGrid1.Row]:='1';
Provera[StringGrid1.Col,StringGrid1.Row]:='1';
if igra = true then
  begin
  prov:=0;
  for i:=0 to 8 do
    for j:=0 to 8 do
      if StringGrid1.Cells[i,j] = '' then
                                     else prov:=prov+1;
  if prov = 81 then
    begin
    Timer1.Enabled:=false;
    ShowMessage('Pobedili ste!');
    end;
  end;
end;

procedure TForm1.Button14Click(Sender: TObject);
var i,j:integer;
begin
StringGrid1.Cells[StringGrid1.Col,StringGrid1.Row]:='2';
Provera[StringGrid1.Col,StringGrid1.Row]:='2';
if igra = true then
  begin
  prov:=0;
  for i:=0 to 8 do
    for j:=0 to 8 do
            if StringGrid1.Cells[i,j] = '' then
                                     else prov:=prov+1;
  if prov = 81 then
    begin
    Timer1.Enabled:=false;
    ShowMessage('Pobedili ste!');
    end;
  end;
end;

procedure TForm1.Button15Click(Sender: TObject);
var i,j:integer;
begin
StringGrid1.Cells[StringGrid1.Col,StringGrid1.Row]:='3';
Provera[StringGrid1.Col,StringGrid1.Row]:='3';
if igra = true then
  begin
  prov:=0;
  for i:=0 to 8 do
    for j:=0 to 8 do
            if StringGrid1.Cells[i,j] = '' then
                                     else prov:=prov+1;
  if prov = 81 then
    begin
    Timer1.Enabled:=false;
    ShowMessage('Pobedili ste!');
    end;
  end;
end;

procedure TForm1.Button10Click(Sender: TObject);
var i,j:integer;
begin
StringGrid1.Cells[StringGrid1.Col,StringGrid1.Row]:='4';
Provera[StringGrid1.Col,StringGrid1.Row]:='4';
if igra = true then
  begin
  prov:=0;
  for i:=0 to 8 do
    for j:=0 to 8 do
            if StringGrid1.Cells[i,j] = '' then
                                     else prov:=prov+1;
  if prov = 81 then
    begin
    Timer1.Enabled:=false;
    ShowMessage('Pobedili ste!');
    end;
  end;
end;

procedure TForm1.Button11Click(Sender: TObject);
var i,j:integer;
begin
StringGrid1.Cells[StringGrid1.Col,StringGrid1.Row]:='5';
Provera[StringGrid1.Col,StringGrid1.Row]:='5';
if igra = true then
  begin
  prov:=0;
  for i:=0 to 8 do
    for j:=0 to 8 do
            if StringGrid1.Cells[i,j] = '' then
                                     else prov:=prov+1;
  if prov = 81 then
    begin
    Timer1.Enabled:=false;
    ShowMessage('Pobedili ste!');
    end;
  end;
end;

procedure TForm1.Button12Click(Sender: TObject);
var i,j:integer;
begin
StringGrid1.Cells[StringGrid1.Col,StringGrid1.Row]:='6';
Provera[StringGrid1.Col,StringGrid1.Row]:='6';
if igra = true then
  begin
  prov:=0;
  for i:=0 to 8 do
    for j:=0 to 8 do
           if StringGrid1.Cells[i,j] = '' then
                                     else prov:=prov+1;
  if prov = 81 then
    begin
    Timer1.Enabled:=false;
    ShowMessage('Pobedili ste!');
    end;
  end;
end;

procedure TForm1.Button7Click(Sender: TObject);
var i,j:integer;
begin
StringGrid1.Cells[StringGrid1.Col,StringGrid1.Row]:='7';
Provera[StringGrid1.Col,StringGrid1.Row]:='7';
if igra = true then
  begin
  prov:=0;
  for i:=0 to 8 do
    for j:=0 to 8 do
           if StringGrid1.Cells[i,j] = '' then
                                     else prov:=prov+1;
  if prov = 81 then
    begin
    Timer1.Enabled:=false;
    ShowMessage('Pobedili ste!');
    end;
  end;
end;

procedure TForm1.Button8Click(Sender: TObject);
var i,j:integer;
begin
StringGrid1.Cells[StringGrid1.Col,StringGrid1.Row]:='8';
Provera[StringGrid1.Col,StringGrid1.Row]:='8';
if igra = true then
  begin
  prov:=0;
  for i:=0 to 8 do
    for j:=0 to 8 do
            if StringGrid1.Cells[i,j] = '' then
                                     else prov:=prov+1;
  if prov = 81 then
    begin
    Timer1.Enabled:=false;
    ShowMessage('Pobedili ste!');
    end;
  end;
end;

procedure TForm1.Button9Click(Sender: TObject);
var i,j:integer;
begin
StringGrid1.Cells[StringGrid1.Col,StringGrid1.Row]:='9';
Provera[StringGrid1.Col,StringGrid1.Row]:='9';
if igra = true then
  begin
  prov:=0;
  for i:=0 to 8 do
    for j:=0 to 8 do
            if StringGrid1.Cells[i,j] = '' then
                                     else prov:=prov+1;
  if prov = 81 then
    begin
    Timer1.Enabled:=false;
    ShowMessage('Pobedili ste!');
    end;
  end;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
StringGrid1.Cells[StringGrid1.Col,StringGrid1.Row]:='';
Provera[StringGrid1.Col,StringGrid1.Row]:='';
end;

procedure TForm1.Button6Click(Sender: TObject);
var i,j:integer;
begin
igra:=false;
Timer1.Enabled:=false;
Label8.Caption:='';
Button1.Enabled:=true;
Button2.Enabled:=true;
Button3.Enabled:=true;
Button4.Enabled:=true;
for i:=0 to 8 do
  for j:=0 to 8 do
    Pozicije[j,i]:='-';
end;

procedure TForm1.StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var i:char;
begin
if igra = true then
  with Sender as TStringGrid do
      with Canvas do
      begin
        for i:='1' to '9' do
            if Pozicije[ACol,ARow] = 'x'
              then
                begin
                  Font.Color := clWhite;
                  Brush.Color := clActiveCaption;
                end;
            if Provera[ACol,ARow] = i
              then
                begin
                  Font.Color := clBlack;
                  Brush.Color := clWhite;
                end;
        FillRect(Rect);
        TextOut(Rect.Left,Rect.Top,Provera[ACol,ARow]);
      end;
end;


end.
