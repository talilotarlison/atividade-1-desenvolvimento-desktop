program project1;

{$mode objfpc}{$H+}

uses
  Interfaces, Forms, MainForm;

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
