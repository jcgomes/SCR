unit UConsLeg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UConsPai, ActnList, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls;

type
  TfrmConsLeg = class(TfrmConsPai)
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
  frmConsLeg: TfrmConsLeg;

implementation

uses Udm, UPrincipal, UCadLeg;

{$R *.dfm}

{ TfrmConsLeg }

procedure TfrmConsLeg.Atualiza;
begin
    DM.Conexao.Open;
    try
       with DM.cdsLeg_ do
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

procedure TfrmConsLeg.atualizarExecute(Sender: TObject);
begin
  inherited;
  atualiza;
end;

procedure TfrmConsLeg.ChamaCadastro;
begin
    frmCadLeg := TfrmCadLeg.Create(Application);
    if frmCadLeg = nil then
    frmCadLeg.Inserindo := false;
    frmCadLeg.Show;
end;

procedure TfrmConsLeg.consultarExecute(Sender: TObject);
begin
  inherited;
  ChamaCadastro;
end;

procedure TfrmConsLeg.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ChamaCadastro;
end;

procedure TfrmConsLeg.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  // ordena o dgrid em ordem alfabetica
   DM.cdsLeg_.IndexFieldNames:= Column.FieldName;
end;

procedure TfrmConsLeg.edtParametroChange(Sender: TObject);
begin
  inherited;
       with DM.cdsLeg_ do
       begin
          Close;
          Params[0].AsString := edtParametro.Text + '%';
          Open;
       end;
end;

procedure TfrmConsLeg.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key= #13 then
    begin
        ChamaCadastro;
    end;
end;

procedure TfrmConsLeg.FormShow(Sender: TObject);
begin
  inherited;
  atualiza;
end;

end.
