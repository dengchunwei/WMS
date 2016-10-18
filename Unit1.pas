unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ToolWin, IniFiles, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Menus, cxButtons;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Memo1: TMemo;
    CheckBox1: TCheckBox;
    RadioButton1: TRadioButton;
    ListBox1: TListBox;
    GroupBox1: TGroupBox;
    procedure Button1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    xpos, ypos: integer; 
    { Private declarations }
    procedure WriteControlPlacement;
    procedure ReadControlPlacement;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  releasecapture;
  if (x>=0)and(x<=3) then
  begin
    if (y>=0)and(y<=3) then (Sender as TControl).perform(wm_syscommand,$f004,0);
    if (y>3)and(y<(Sender as TControl).height-3) then (Sender as TControl).perform(wm_syscommand,$f001,0);
    if (y>=(Sender as TControl).height-3)and(y<=(Sender as TControl).height) then (Sender as TControl).perform(wm_syscommand,$f007,0);
  end
  else if (x>3)and(x<(Sender as TControl).width-3) then
  begin
    if (y>=0)and(y<=3) then (Sender as TControl).perform(wm_syscommand,$f003,0);
    if (y>3)and(y<(Sender as TControl).height-3) then (Sender as TControl).perform(wm_syscommand,$f012,0);
    if (y>=(Sender as TControl).height-3)and(y<=(Sender as TControl).width) then (Sender as TControl).perform(wm_syscommand,$f006,0);
  end
  else if (x>=(Sender as TControl).width-3)and(x<=(Sender as TControl).width) then
  begin
    if (y>=0)and(y<=3) then (Sender as TControl).perform(wm_syscommand,$f005,0);
    if (y>3)and(y<(Sender as TControl).height-3) then (Sender as TControl).perform(wm_syscommand,$f002,0);
    if (y>=(Sender as TControl).height-3)and(y<=(Sender as TControl).width) then (Sender as TControl).perform(wm_syscommand,$f008,0);
  end;
end;

procedure TForm1.Button1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if (x>=0)and(x<=3) then
  begin
    if (y>=0)and(y<=3) then (Sender as TControl).cursor:=crsizenwse;
    if (y>3)and(y<(Sender as TControl).height-3) then (Sender as TControl).cursor:=crsizewe;
    if (y>=(Sender as TControl).height-3)and(y<=(Sender as TControl).height) then (Sender as TControl).cursor:=crsizenesw;
  end
  else if (x>3)and(x<(Sender as TControl).width-3) then
  begin
    if (y>=0)and(y<=3) then (Sender as TControl).cursor:=crsizens;
    if (y>3)and(y<(Sender as TControl).height-3) then (Sender as TControl).cursor:=crarrow;
    if (y>=(Sender as TControl).height-3)and(y<=(Sender as TControl).width) then (Sender as TControl).cursor:=crsizens;
  end
  else if (x>=(Sender as TControl).width-3)and(x<=(Sender as TControl).width) then
  begin
    if (y>=0)and(y<=3) then (Sender as TControl).cursor:=crsizenesw;
    if (y>3)and(y<(Sender as TControl).height-3) then (Sender as TControl).cursor:=crsizewe;
    if (y>=(Sender as TControl).height-3)and(y<=(Sender as TControl).width) then (Sender as TControl).cursor:=crsizenwse;
  end;
end;

procedure TForm1.WriteControlPlacement;
var
   iniFile : TIniFile;
   idx : integer;
   ctrl : TControl;
begin
   iniFile := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini')) ;
   try
     for idx := 0 to Self.ComponentCount-1  do
     begin
       if Components[idx] is TControl then
       begin
         ctrl := TControl(Components[idx]) ;
         iniFile.WriteInteger(ctrl.Name,'Top',ctrl.Top) ;
         iniFile.WriteInteger(ctrl.Name,'Left',ctrl.Left) ;
         iniFile.WriteInteger(ctrl.Name,'Width',ctrl.Width) ;
         iniFile.WriteInteger(ctrl.Name,'Height',ctrl.Height) ;
       end;
     end;
   finally
     FreeAndNil(iniFile) ;
   end;
end;

procedure TForm1.ReadControlPlacement;
var
   iniFile : TIniFile;
   idx : integer;
   ctrl : TControl;
begin
   iniFile := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini')) ;
   try
     for idx := 0 to -1 + Self.ComponentCount do
     begin
       if Components[idx] is TControl then
       begin
         ctrl := TControl(Components[idx]) ;
         ctrl.Top := iniFile.ReadInteger(ctrl.Name,'Top',ctrl.Top) ;
         ctrl.Left := iniFile.ReadInteger(ctrl.Name,'Left',ctrl.Left) ;
         ctrl.Width := iniFile.ReadInteger(ctrl.Name,'Width',ctrl.Width) ;
         ctrl.Height := iniFile.ReadInteger(ctrl.Name,'Height',ctrl.Height);
         if Components[idx] is TButton  then  //按钮
         begin
           (Components[idx] as TButton).OnMouseDown := Button1MouseDown;
           (Components[idx] as TButton).OnMouseMove := Button1MouseMove;
         end
         else if Components[idx] is TLabel  then  //标签
         begin
           (Components[idx] as TLabel).OnMouseDown := Button1MouseDown;
           (Components[idx] as TLabel).OnMouseMove := Button1MouseMove;
         end
         else if Components[idx] is TEdit then  //编辑框
         begin
           (Components[idx] as TEdit).OnMouseDown := Button1MouseDown;
           (Components[idx] as TEdit).OnMouseMove := Button1MouseMove;
         end
         else if Components[idx] is TMemo then  //备注
         begin
           (Components[idx] as TMemo).OnMouseDown := Button1MouseDown;
           (Components[idx] as TMemo).OnMouseMove := Button1MouseMove;
         end
         else if Components[idx] is TCheckBox then  //复选框
         begin
           (Components[idx] as TCheckBox).OnMouseDown := Button1MouseDown;
           (Components[idx] as TCheckBox).OnMouseMove := Button1MouseMove;
         end
         else if Components[idx] is TRadioButton then //单选框
         begin
           (Components[idx] as TRadioButton).OnMouseDown := Button1MouseDown;
           (Components[idx] as TRadioButton).OnMouseMove := Button1MouseMove;
         end
         else if Components[idx] is TListBox then //列表
         begin
           (Components[idx] as TListBox).OnMouseDown := Button1MouseDown;
           (Components[idx] as TListBox).OnMouseMove := Button1MouseMove;
         end
         else if Components[idx] is TGroupBox then //分类框
         begin
           (Components[idx] as TGroupBox).OnMouseDown := Button1MouseDown;
           (Components[idx] as TGroupBox).OnMouseMove := Button1MouseMove;
         end;
       end;
     end;
   finally
     FreeAndNil(iniFile) ;
   end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ReadControlPlacement;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  WriteControlPlacement;
end;

end.
