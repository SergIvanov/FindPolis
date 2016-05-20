object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 494
  Width = 509
  object fdphysfbdrvrlnk1: TFDPhysFBDriverLink
    Left = 255
    Top = 11
  end
  object con1: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=TGA378Lm'
      'Protocol=TCPIP'
      'Server=172.31.8.123'
      'Database=C:\NUZService\Sprav.fdb'
      'RoleName=ROOT'
      'CharacterSet=WIN1251'
      'DriverID=FB')
    LoginPrompt = False
    Left = 249
    Top = 67
  end
  object fdtrnsctn1: TFDTransaction
    Options.Isolation = xiSnapshot
    Options.ReadOnly = True
    Connection = con1
    Left = 199
    Top = 70
  end
  object fdqryOMS: TFDQuery
    Filtered = True
    FilterOptions = [foCaseInsensitive]
    Connection = con1
    Transaction = fdtrnsctn1
    SQL.Strings = (
      'Select * from Polis')
    Left = 251
    Top = 126
  end
  object fdqryDMS: TFDQuery
    Filtered = True
    FilterOptions = [foCaseInsensitive]
    Connection = con1
    Transaction = fdtrnsctn1
    SQL.Strings = (
      'Select * from PolisDMS')
    Left = 326
    Top = 123
  end
  object fdqrySOGAZ: TFDQuery
    Filtered = True
    FilterOptions = [foCaseInsensitive]
    Connection = con1
    Transaction = fdtrnsctn1
    SQL.Strings = (
      'Select * from PolisSOGAZ')
    Left = 378
    Top = 123
  end
end
