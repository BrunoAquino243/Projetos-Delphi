unit uDtmCRM1;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, ZSequence;

type
  TdtmCRM = class(TDataModule)
    conexao: TZConnection;
    qryCorretor: TZQuery;
    qryCorretorCODCORRETOR: TFloatField;
    qryCorretorNOME: TWideStringField;
    qryCorretorEMAIL: TWideStringField;
    dtsCorretor: TDataSource;
    seqCorretor: TZSequence;
    qryCorretorCELULAR: TWideStringField;
    qryCliente: TZQuery;
    dtsCliente: TDataSource;
    qryClienteNOME: TWideStringField;
    qryClienteCELULAR: TWideStringField;
    qryClienteEMAIL: TWideStringField;
    qryClienteCODCLIENTE: TFloatField;
    qryClienteCPF: TWideStringField;
    qryClienteRENDABRUTAFM: TWideStringField;
    procedure qryCorretorAfterPost(DataSet: TDataSet);
    procedure qryCorretorAfterDelete(DataSet: TDataSet);
    procedure qryCorretorAfterCancel(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmCRM: TdtmCRM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UfrmCadastroClientes;

{$R *.dfm}

procedure TdtmCRM.qryCorretorAfterCancel(DataSet: TDataSet);
begin
  qryCorretor.CancelUpdates;
end;

procedure TdtmCRM.qryCorretorAfterDelete(DataSet: TDataSet);
begin
  //qryCorretor.ApplyUpdates;
end;

procedure TdtmCRM.qryCorretorAfterPost(DataSet: TDataSet);
begin
  qryCorretor.ApplyUpdates;
end;

end.
