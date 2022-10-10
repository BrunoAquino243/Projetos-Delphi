object dtmCRM: TdtmCRM
  OldCreateOrder = False
  Height = 351
  Width = 601
  object conexao: TZConnection
    ControlsCodePage = cCP_UTF16
    AutoEncodeStrings = True
    Catalog = ''
    Connected = True
    HostName = 'localhost'
    Port = 1521
    Database = 'xe'
    User = 'system'
    Password = 'system'
    Protocol = 'oracle'
    LibraryLocation = 'C:\oraclexe\app\oracle\product\11.2.0\server\bin\oci.dll'
    Left = 24
    Top = 8
  end
  object qryCorretor: TZQuery
    Connection = conexao
    AutoCalcFields = False
    AfterPost = qryCorretorAfterPost
    AfterCancel = qryCorretorAfterCancel
    AfterDelete = qryCorretorAfterDelete
    Active = True
    SQL.Strings = (
      'select c.* '
      'from corretor c'
      'order by c.nome, c.codcorretor')
    Params = <>
    Sequence = seqCorretor
    SequenceField = 'CODCORRETOR'
    Left = 24
    Top = 72
    object qryCorretorCODCORRETOR: TFloatField
      DisplayLabel = 'C'#243'd.Corretor'
      DisplayWidth = 10
      FieldName = 'CODCORRETOR'
      Required = True
    end
    object qryCorretorNOME: TWideStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 30
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object qryCorretorEMAIL: TWideStringField
      DisplayLabel = 'E-mail'
      DisplayWidth = 30
      FieldName = 'EMAIL'
      Size = 100
    end
    object qryCorretorCELULAR: TWideStringField
      FieldName = 'CELULAR'
      EditMask = '!\(00\)00000-0000;1;_'
      Size = 25
    end
  end
  object dtsCorretor: TDataSource
    AutoEdit = False
    DataSet = qryCorretor
    Left = 96
    Top = 72
  end
  object seqCorretor: TZSequence
    Connection = conexao
    SequenceName = 'SEQCORRETOR'
    Left = 168
    Top = 72
  end
  object qryCliente: TZQuery
    Connection = conexao
    Active = True
    SQL.Strings = (
      'SELECT * FROM CLIENTES')
    Params = <>
    MasterSource = dtsCliente
    Left = 24
    Top = 136
    object qryClienteNOME: TWideStringField
      FieldName = 'NOME'
      Required = True
      Size = 30
    end
    object qryClienteCELULAR: TWideStringField
      FieldName = 'CELULAR'
      Size = 25
    end
    object qryClienteEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object qryClienteCODCLIENTE: TFloatField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object qryClienteCPF: TWideStringField
      FieldName = 'CPF'
      Required = True
      Size = 15
    end
    object qryClienteRENDABRUTAFM: TWideStringField
      FieldName = 'RENDABRUTAFM'
    end
  end
  object dtsCliente: TDataSource
    AutoEdit = False
    DataSet = qryCliente
    Left = 88
    Top = 136
  end
end
