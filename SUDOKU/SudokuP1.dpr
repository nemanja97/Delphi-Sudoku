program SudokuP1;

uses
  Forms,
  Sudoku1 in 'Sudoku1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
