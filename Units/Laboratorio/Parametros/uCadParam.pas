unit uCadParam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPai, ActnList, ExtCtrls, ComCtrls, ToolWin, StdCtrls, Mask,
  DBCtrls;

type
  TfrmCadParam = class(TfrmCadPai)
    Label1: TLabel;
    edtParametro: TDBEdit;
    Label2: TLabel;
    edtPreco: TDBEdit;
    procedure CancelarExecute(Sender: TObject);
    procedure DownExecute(Sender: TObject);
    procedure ExcluirExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NovoExecute(Sender: TObject);
    procedure SalvarExecute(Sender: TObject);
    procedure UPExecute(Sender: TObject);
    procedure edtPrecoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    published
      procedure atualiza;
      procedure abre(sender: TObject);
      procedure insere(sender: TObject);
      procedure exclui(sender: TObject);
  end;

var
  frmCadParam: TfrmCadParam;

implementation

uses Udm, UPrincipal, uConsParam;

{$R *.dfm}

procedure TfrmCadParam.abre(sender: TObject);
begin
  DM.Conexao.Open;
    try
       with DM.cdsAmostras02 do
       begin
        Close;
        Params[0].AsInteger :=  DM.cdsAmostras02_ID_AMOSTRA02.AsInteger;
        Open;
       end;
    finally
    DM.Conexao.Close;
    end;
end;

procedure TfrmCadParam.atualiza;
begin
  DM.Conexao.Open;
    try
       with DM.cdsAmostras02_ do
       begin
            Close;
            Params[0].AsString :=  '%';
            Open;
       end;
    finally
    DM.Conexao.Close;
    end;
end;

procedure TfrmCadParam.CancelarExecute(Sender: TObject);
begin
  inherited;
  DM.cdsAmostras02.CancelUpdates;
  atualiza;
  Close;
end;

procedure TfrmCadParam.DownExecute(Sender: TObject);
begin
  inherited;
  DM.cdsAmostras02_.Next;

    if inserindo then
    Insere(nil)
    else
      abre(nil);
end;

procedure TfrmCadParam.edtPrecoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  // Apenas Numeros (Validação)
  If not( key in[',','.','0'..'9',#8] ) then
  begin
  beep;{somente delphi 2.0 ou >}
  key:=#0;
  end;
  
  // ponto decimal (Validação)
  if Key in [',','.'] then Key := DecimalSeparator;
end;

procedure TfrmCadParam.exclui(sender: TObject);
var exclui : integer;
begin
    exclui := Application.MessageBox('Deseja excluir esse registro?', 'Confirme', mb_yesno);
    if exclui = IDYES Then
    begin
        DM.Conexao.Open;
        try
          with DM.cdsAmostras02 do
          begin
            Close;
            Params[0].AsInteger :=  DM.cdsAmostras02_ID_AMOSTRA02.AsInteger;
            Open;
            delete;
            ApplyUpdates(0);
          end;

          frmConsParam.atualiza;
        finally
          DM.Conexao.Close;
        end;
    end;
    close;
end;

procedure TfrmCadParam.ExcluirExecute(Sender: TObject);
begin
  inherited;
  exclui(nil);
end;

procedure TfrmCadParam.FormShow(Sender: TObject);
begin
  inherited;
  if inserindo then
    Insere(nil)
    else
      abre(nil);
end;

procedure TfrmCadParam.insere(sender: TObject);
begin
  DM.Conexao.Open;
    try
       with DM.cdsAmostras02 do
       begin
          Close;
          Params[0].AsInteger :=  -1;
          Open;
          Insert;
       end;
    finally
      DM.Conexao.Close;
    end;
end;

procedure TfrmCadParam.NovoExecute(Sender: TObject);
begin
  inherited;
  Inserindo := true;
  insere(nil);
  Inserindo := false;
  edtParametro.SetFocus;
end;

procedure TfrmCadParam.SalvarExecute(Sender: TObject);
var salva : Integer;
begin
  inherited;
    if edtParametro.Text = '' then
        begin
            Raise Exception.create('O campo "Parâmetro" é obrigatório.');
            edtParametro.SetFocus;
        end
          else
            begin
              try
                salva := Application.MessageBox('Deseja salvar esse registro?', 'Confirme', mb_yesno);
                if salva = IDYES Then
                begin
                  DM.cdsAmostras02.Post;
                  DM.cdsAmostras02.ApplyUpdates(0);

                  frmConsParam.atualiza;

                  Close;
                end;

              except On Exception do
                Raise Exception.create('É preciso alterar algo para poder salvar');
              end;
            end;
end;


procedure TfrmCadParam.UPExecute(Sender: TObject);
begin
  inherited;
  DM.cdsAmostras02_.Prior;

    if inserindo then
    Insere(nil)
    else
      abre(nil);
end;

end.
