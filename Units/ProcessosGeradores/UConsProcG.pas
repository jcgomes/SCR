unit UConsProcG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UConsPai, ActnList, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls;

type
  TfrmConsProcG = class(TfrmConsPai)
    procedure atualizarExecute(Sender: TObject);
    procedure consultarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtParametroChange(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Atualiza;
    Procedure ChamaCadastro;
  end;

var
  frmConsProcG: TfrmConsProcG;

implementation

uses Udm, UCadProcG;

{$R *.dfm}

{ TfrmConsProcG }

procedure TfrmConsProcG.Atualiza;
begin
    DM.Conexao.Open;
    try
       with DM.cdsProc do
       begin
          Close;
          Params[1].AsString := '%';
          Open;
       end;
    finally
      DM.Conexao.Close;
    end;
    edtParametro.Clear;
end;

procedure TfrmConsProcG.atualizarExecute(Sender: TObject);
begin
  inherited;
  atualiza;
end;

procedure TfrmConsProcG.ChamaCadastro;
begin
    frmCadProcG := TfrmCadProcG.Create(Application);
    if frmCadProcG = nil then
    frmCadProcG.Inserindo := false;
    frmCadProcG.Show;
end;

procedure TfrmConsProcG.consultarExecute(Sender: TObject);
begin
  inherited;
  ChamaCadastro;
end;

procedure TfrmConsProcG.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ChamaCadastro;
end;

procedure TfrmConsProcG.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  // ordena o dgrid em ordem alfabetica
   DM.cdsProc.IndexFieldNames:= Column.FieldName;
end;

procedure TfrmConsProcG.edtParametroChange(Sender: TObject);
begin
  inherited;
       with DM.cdsProc do
       begin
          Close;
          Params[1].AsString := edtParametro.Text + '%';
          Open;
       end;
end;

procedure TfrmConsProcG.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key= #13 then
    begin
        ChamaCadastro;
    end;
end;

procedure TfrmConsProcG.FormShow(Sender: TObject);
begin
  inherited;
  atualiza;
end;

end.
