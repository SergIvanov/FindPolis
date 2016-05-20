unit DM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Phys.FBDef, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Phys.IBBase,System.IniFiles;

type
  TDataModule1 = class(TDataModule)
    fdphysfbdrvrlnk1: TFDPhysFBDriverLink;
    con1: TFDConnection;
    fdtrnsctn1: TFDTransaction;
    fdqryOMS: TFDQuery;
    fdqryDMS: TFDQuery;
    fdqrySOGAZ: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataModule1.DataModuleCreate(Sender: TObject);
var
xIniFile : TIniFile;
begin
fdphysfbdrvrlnk1.VendorLib :=ExtractFileDir(ParamStr(0)) +pathdelim+'fbclient' + pathdelim +'fbclient.dll';


   xIniFile := TIniFile.Create('.\config.ini');

  try

    xIniFile.ReadSectionValues('connection', con1.Params);
    Try
     con1.Open();
    Except
     Exit;
    End;


 finally
    xIniFile.Free;

  end;

  fdqryOMS.Open();
  fdqryDMS.Open();
  fdqrySOGAZ.Open();
end;

end.
