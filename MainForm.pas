unit MainForm;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, Eq2Form, ParesForm, SomaForm;

type
  TFrmMain = class(TForm)
    MainMenu1: TMainMenu;
    MEx1: TMenuItem;
    MEx2: TMenuItem;
    MEx3: TMenuItem;
    procedure MEx1Click(Sender: TObject);
    procedure MEx2Click(Sender: TObject);
    procedure MEx3Click(Sender: TObject);
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.lfm}

procedure TFrmMain.MEx1Click(Sender: TObject);
begin
  FrmEq2.Show;
end;

procedure TFrmMain.MEx2Click(Sender: TObject);
begin
  FrmPares.Show;
end;

procedure TFrmMain.MEx3Click(Sender: TObject);
begin
  FrmSoma.Show;
end;

end.
