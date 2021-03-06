unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.ComCtrls,DM, Data.DB,DBUtilsEh, Vcl.StdCtrls;

type
  TMainForm = class(TForm)
    dbgrdh1: TDBGridEh;
    pgc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    ts3: TTabSheet;
    ds1: TDataSource;
    dbgrdh2: TDBGridEh;
    ds2: TDataSource;
    dbgrdh3: TDBGridEh;
    ds3: TDataSource;
    btn1: TButton;
    procedure dbgrdh1ApplyFilter(Sender: TObject);
    procedure dbgrdh2ApplyFilter(Sender: TObject);
    procedure dbgrdh3ApplyFilter(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.btn1Click(Sender: TObject);
var
i:byte;
begin

for i:=0 to dbgrdh1.Columns.Count-1 do
      dbgrdh1.Columns[i].OptimizeWidth;

end;

procedure TMainForm.dbgrdh1ApplyFilter(Sender: TObject);
begin

TDBGridEh(Sender).DataSource.DataSet.Filter :=
      GetExpressionAsFilterString(TDBGridEh(Sender),
        GetOneExpressionAsLocalFilterString, nil, False, True);
end;

procedure TMainForm.dbgrdh2ApplyFilter(Sender: TObject);
begin
TDBGridEh(Sender).DataSource.DataSet.Filter :=
      GetExpressionAsFilterString(TDBGridEh(Sender),
        GetOneExpressionAsLocalFilterString, nil, False, True);
end;

procedure TMainForm.dbgrdh3ApplyFilter(Sender: TObject);
begin
TDBGridEh(Sender).DataSource.DataSet.Filter :=
      GetExpressionAsFilterString(TDBGridEh(Sender),
        GetOneExpressionAsLocalFilterString, nil, False, True);
end;

end.

