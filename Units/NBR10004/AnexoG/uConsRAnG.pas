unit uConsRAnG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UConsPai, ActnList, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls;

type
  TfrmConsRAnG = class(TfrmConsPai)
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtParametroChange(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure consultarExecute(Sender: TObject);
    procedure atualizarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Atualiza;
    Procedure ChamaCadastro;
  end;

var
  frmConsRAnG: TfrmConsRAnG;

implementation

uses Udm, UPrincipal, uCadRAnG;

{$R *.dfm}

{ TfrmConsRAnG }

procedure TfrmConsRAnG.Atualiza;
begin
    DM.Conexao.Open;
    try
       with DM.cdsRAnG_ do
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

procedure TfrmConsRAnG.atualizarExecute(Sender: TObject);
begin
  inherited;
  atualiza;
end;

procedure TfrmConsRAnG.ChamaCadastro;
begin
    frmCadRAnG := TfrmCadRAnG.Create(Application);
    if frmCadRAnG = nil then
    frmCadRAnG.Inserindo := false;
    frmCadRAnG.Show;
end;

procedure TfrmConsRAnG.consultarExecute(Sender: TObject);
begin
  inherited;
  ChamaCadastro;
end;

procedure TfrmConsRAnG.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ChamaCadastro;
end;

procedure TfrmConsRAnG.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  // ordena o dgrid em ordem alfabetica
   DM.cdsRAnG_.IndexFieldNames:= Column.FieldName;
end;

procedure TfrmConsRAnG.edtParametroChange(Sender: TObject);
begin
  inherited;
       with DM.cdsRAnG_ do
       begin
          Close;
          Params[0].AsString := edtParametro.Text + '%';
          Open;
       end;
end;

procedure TfrmConsRAnG.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key= #13 then
    begin
        ChamaCadastro;
    end;
end;

procedure TfrmConsRAnG.FormShow(Sender: TObject);
begin
  inherited;
  atualiza;
end;

end.
