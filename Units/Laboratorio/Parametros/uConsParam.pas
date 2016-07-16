unit uConsParam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UConsPai, ActnList, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls;

type
  TfrmConsParam = class(TfrmConsPai)
    procedure atualizarExecute(Sender: TObject);
    procedure consultarExecute(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure edtParametroChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Atualiza;
    Procedure ChamaCadastro;
  end;

var
  frmConsParam: TfrmConsParam;

implementation

uses Udm, UPrincipal, uCadParam;

{$R *.dfm}

{ TfrmConsParam }

procedure TfrmConsParam.Atualiza;
begin
  DM.Conexao.Open;
    try
       with DM.cdsAmostras02_ do
       begin
          Close;
          Params[0].AsString := '%';
          Open;
       end;
    finally
      DM.Conexao.Close;
    end;
  edtParametro.Clear;
end;

procedure TfrmConsParam.atualizarExecute(Sender: TObject);
begin
  inherited;
  atualiza;
end;

procedure TfrmConsParam.ChamaCadastro;
begin
  frmCadParam := TfrmCadParam.Create(Application);
  if frmCadParam = nil then
  frmCadParam.Inserindo := false;
  frmCadParam.Show;
end;

procedure TfrmConsParam.consultarExecute(Sender: TObject);
begin
  inherited;
  ChamaCadastro;
end;

procedure TfrmConsParam.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ChamaCadastro;
end;

procedure TfrmConsParam.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  // ordena o dgrid em ordem alfabetica
   DM.cdsAmostras02_.IndexFieldNames:= Column.FieldName;
end;

procedure TfrmConsParam.edtParametroChange(Sender: TObject);
begin
  inherited;
       with DM.cdsAmostras02_ do
       begin
          Close;
          Params[0].AsString := edtParametro.Text + '%';
          Open;
       end;
end;

procedure TfrmConsParam.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key= #13 then
    begin
        ChamaCadastro;
    end;
end;

procedure TfrmConsParam.FormShow(Sender: TObject);
begin
  inherited;
  atualiza;
end;

end.
