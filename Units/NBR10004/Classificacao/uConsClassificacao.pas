unit uConsClassificacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UConsPai, ActnList, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls;

type
  TfrmConsClassificacao = class(TfrmConsPai)
    procedure atualizarExecute(Sender: TObject);
    procedure consultarExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure edtParametroChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Atualiza;
    Procedure ChamaCadastro;
  end;

var
  frmConsClassificacao: TfrmConsClassificacao;

implementation

uses uCadClassificacao, Udm,UPrincipal;

{$R *.dfm}

{ TfrmConsClassificacao }

procedure TfrmConsClassificacao.Atualiza;
begin
  DM.Conexao.Open;
    try
       with DM.cdsClassf01_ do
       begin
          Close;
          Params[0].AsString := '%';
          Open;
       end;

       with DM.cdsEmpresas do
       begin
          Close;
          Params[1].AsString := '%';
          Open;
       end;

       with DM.cdsRAnF_ do
       begin
          Close;
          Params[0].AsString := '%';
          Open;
       end;

       with DM.cdsRAnG_ do
       begin
          Close;
          Params[0].AsString := '%';
          Open;
       end;

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

procedure TfrmConsClassificacao.atualizarExecute(Sender: TObject);
begin
  inherited;
  atualiza;
end;

procedure TfrmConsClassificacao.ChamaCadastro;
begin
  frmCadClassificacao := TfrmCadClassificacao.Create(Application);
  if frmCadClassificacao = nil then
  frmCadClassificacao.Show;
end;

procedure TfrmConsClassificacao.consultarExecute(Sender: TObject);
begin
  inherited;
  ChamaCadastro;
end;

procedure TfrmConsClassificacao.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ChamaCadastro;
end;

procedure TfrmConsClassificacao.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  // ordena o dgrid em ordem alfabetica
   DM.cdsClassf01_.IndexFieldNames:= Column.FieldName;
end;

procedure TfrmConsClassificacao.edtParametroChange(Sender: TObject);
begin
  inherited;
       with DM.cdsClassf01_ do
       begin
          Close;
          Params[0].AsString := edtParametro.Text + '%';
          Open;
       end;
end;

procedure TfrmConsClassificacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Atualiza;
end;

procedure TfrmConsClassificacao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key= #13 then
    begin
        ChamaCadastro;
    end;
end;

procedure TfrmConsClassificacao.FormShow(Sender: TObject);
begin
  inherited;
  Atualiza;
end;

end.
