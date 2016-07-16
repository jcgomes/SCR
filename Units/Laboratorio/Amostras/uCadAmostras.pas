unit uCadAmostras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPai, ActnList, ExtCtrls, ComCtrls, ToolWin, StdCtrls, Mask,
  DBCtrls, Grids, DBGrids,db;

type
  TfrmCadAmostras = class(TfrmCadPai)
    Label1: TLabel;
    cbCliente: TDBLookupComboBox;
    Label2: TLabel;
    Label3: TLabel;
    edtPontoColeta: TDBEdit;
    Label4: TLabel;
    edtDataColeta: TDBEdit;
    Label5: TLabel;
    edtDataEntrada: TDBEdit;
    mmDescricao: TDBMemo;
    Label6: TLabel;
    mmObs: TDBMemo;
    lblDesc: TLabel;
    lblObs: TLabel;
    GroupBox1: TGroupBox;
    SalvarParametros: TAction;
    ToolBar2: TToolBar;
    ToolButton3: TToolButton;
    dbgParametros: TDBGrid;
    btnExcluirParam: TToolButton;
    ExcluirParametros: TAction;
    ToolButton9: TToolButton;
    Label7: TLabel;
    edtOutrosCodigos: TDBEdit;
    procedure mmDescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure mmObsKeyPress(Sender: TObject; var Key: Char);
    procedure UPExecute(Sender: TObject);
    procedure DownExecute(Sender: TObject);
    procedure edtDataColetaKeyPress(Sender: TObject; var Key: Char);
    procedure edtDataEntradaKeyPress(Sender: TObject; var Key: Char);
    procedure CancelarExecute(Sender: TObject);
    procedure ExcluirExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NovoExecute(Sender: TObject);
    procedure SalvarExecute(Sender: TObject);
    procedure ExcluirParametrosExecute(Sender: TObject);
    procedure dbgParametrosColEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    published
      procedure atualiza;
      procedure abre(sender: TObject);
      procedure insere(sender: TObject);
      procedure exclui(sender: TObject);
      procedure GetDadosParam;

  end;

var
  frmCadAmostras: TfrmCadAmostras;
  idAmostra: String;
implementation

uses Udm, UPrincipal, uConsAmostras, UFuncoes;

{$R *.dfm}

procedure TfrmCadAmostras.abre(sender: TObject);
begin
  DM.Conexao.Open;
    try
      With DM.cdsAmostras02_ do   // obtem as informaçoes dos registros da tabela amostras_02 para o campo lkParametro funcionar
       begin
        Close;
        Params[0].AsString :=  '%';
        Open;
       end;

       idAmostra := DM.cdsAmostras_IDAMOSTRA.AsString;

       if idAmostra = '' then
       begin
         idAmostra := '-1';
         dbgParametros.Enabled   := false;
         btnExcluirParam.Enabled := false;
       end;

       with DM.cdsAmostras do
       begin
            Close;
            Params[0].AsInteger :=  StrToInt(idAmostra);
            Open;
       end;


       with DM.cdsEmpresas do
       begin
            Close;
            Params[0].AsInteger :=  DM.cdsAmostrasID_EMPRESA.AsInteger;
            Open;
       end;

    finally
    DM.Conexao.Close;
    end;

end;

procedure TfrmCadAmostras.atualiza;
begin
  DM.Conexao.Open;
    try
       with DM.cdsAmostras_ do
       begin
            Close;
            Params[0].AsString :=  '%';
            Open;
       end;

       with DM.cdsEmpresas do
       begin
          Close;
          Params[1].AsString := '%';
          Open;
       end;

    finally
    DM.Conexao.Close;
    end;
end;

procedure TfrmCadAmostras.CancelarExecute(Sender: TObject);
begin
  inherited;
  DM.cdsAmostras.CancelUpdates;
  atualiza;
  idAmostra := '';
  Close;
end;

procedure TfrmCadAmostras.dbgParametrosColEnter(Sender: TObject);
begin
  inherited;
  if DM.cdsAmostras01.State in [dsEdit, dsInsert]  then
  begin
    DM.cdsAmostras01ID_AMOSTRA.AsInteger := StrToInt(idAmostra); // insere o ID da amostra pra nao dar erro
  end;
end;


procedure TfrmCadAmostras.DownExecute(Sender: TObject);
begin
  inherited;
  DM.cdsAmostras_.Next;

    if inserindo then
    Insere(nil)
    else
      abre(nil);

  if StrToInt(lblDesc.Caption) <= 15 then
    begin
        lblDesc.Font.Color := clred;
        lblDesc.Caption    := IntToStr(500 - Length(mmDescricao.Lines.Text))
    end
      else
          begin
              lblDesc.Font.Color := clGray;
              lblDesc.Caption    := IntToStr(500 - Length(mmDescricao.Lines.Text))
          end;

  if StrToInt(lblObs.Caption) <= 15 then
    begin
        lblObs.Font.Color := clred;
        lblObs.Caption    := IntToStr(500 - Length(mmObs.Lines.Text))
    end
      else
          begin
              lblObs.Font.Color := clGray;
              lblObs.Caption    := IntToStr(500 - Length(mmObs.Lines.Text))
          end;
end;

procedure TfrmCadAmostras.edtDataColetaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  FormataData(edtDataColeta);
end;

procedure TfrmCadAmostras.edtDataEntradaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  FormataData(edtDataEntrada);
end;

procedure TfrmCadAmostras.exclui(sender: TObject);
var exclui : integer;
begin
    exclui := Application.MessageBox('Deseja excluir esse registro?', 'Confirme', mb_yesno);
    if exclui = IDYES Then
    begin
        DM.Conexao.Open;
        try

          with DM.cdsAmostras do
          begin
              Open;
              delete;
              ApplyUpdates(0);
          end;

          frmConsAmostras.atualiza;
        finally
          DM.Conexao.Close;
        end;
    end;
    close;
end;

procedure TfrmCadAmostras.ExcluirExecute(Sender: TObject);
begin
  inherited;
  exclui(nil);
end;

procedure TfrmCadAmostras.ExcluirParametrosExecute(Sender: TObject);
var
exclui: integer;
begin
  inherited;
  exclui := Application.MessageBox('Deseja excluir esse(s) registro(s)?', 'Confirme', mb_yesno);
  if exclui = IDYES Then
  begin
   DM.Conexao.Open;
   try
    with DM.cdsAmostras01 do
    begin
      Open;
      delete;
      ApplyUpdates(0);
    end;
   finally
      DM.Conexao.Close;
    end;
      end
        else
          begin
            DM.cdsAmostras01.CancelUpdates;
          end;

end;

procedure TfrmCadAmostras.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmConsAmostras.atualiza;
  idAmostra := '';
  DM.conexao.Close;
end;

procedure TfrmCadAmostras.FormShow(Sender: TObject);
begin
  inherited;
  if inserindo then
    Insere(nil)
    else
      abre(nil);
end;



procedure TfrmCadAmostras.GetDadosParam;
begin
  DM.Conexao.Open;
    try
      With DM.cdsAmostras02_ do   // obtem as informaçoes dos registros da tabela amostras_02 para o campo lkParametro funcionar
       begin
        Close;
        Params[0].AsString :=  '%';
        Open;
       end;


       with DM.cdsAmostras do
       begin
            Close;
            Params[0].AsInteger :=  StrToInt(idAmostra);
            Open;
       end;    

       with DM.cdsEmpresas do
       begin
            Close;
            Params[0].AsInteger :=  DM.cdsAmostrasID_EMPRESA.AsInteger;
            Open;
       end;

    finally
    DM.Conexao.Close;
    end;

end;


procedure TfrmCadAmostras.insere(sender: TObject);
begin
  DM.Conexao.Open;
    try
       with DM.cdsAmostras do
       begin
          //Close;
          //Params[0].AsInteger :=  -1;
          //Open;
          Insert;
       end;

    finally
      DM.Conexao.Close;
    end;
end;


procedure TfrmCadAmostras.mmDescricaoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if StrToInt(lblDesc.Caption) <= 15 then
    begin
        lblDesc.Font.Color := clred;
        lblDesc.Caption    := IntToStr(500 - Length(mmDescricao.Lines.Text))
    end
      else
          begin
              lblDesc.Font.Color := clGray;
              lblDesc.Caption    := IntToStr(500 - Length(mmDescricao.Lines.Text))
          end;
end;

procedure TfrmCadAmostras.mmObsKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if StrToInt(lblObs.Caption) <= 15 then
    begin
        lblObs.Font.Color := clred;
        lblObs.Caption    := IntToStr(500 - Length(mmObs.Lines.Text))
    end
      else
          begin
              lblObs.Font.Color := clGray;
              lblObs.Caption    := IntToStr(500 - Length(mmObs.Lines.Text))
          end;
end;

procedure TfrmCadAmostras.NovoExecute(Sender: TObject);
begin
  inherited;
  Inserindo := true;
  insere(nil);
  Inserindo := false;
  dbgParametros.Enabled   := false;
  btnExcluirParam.Enabled := false;
  cbCliente.SetFocus;
end;

procedure TfrmCadAmostras.SalvarExecute(Sender: TObject);
var salva : Integer;
begin
  inherited;
    if cbCliente.Text = '' then
    begin
      Raise Exception.create('O campo "Cliente" é obrigatório.');
      cbCliente.SetFocus;
    end
      else
        begin

          salva := Application.MessageBox('Deseja salvar esse registro?', 'Confirme', mb_yesno);
          if salva = IDYES Then
          begin

            if DM.cdsAmostras.State in [dsEdit, dsInsert]  then
            begin
              DM.cdsAmostras.ApplyUpdates(0);
            end;

            dbgParametros.Enabled   := true;
            btnExcluirParam.Enabled := true;

            frmPrincipal.UC.Log('Inclusão de registro',1);
          end;
        end;

end;

procedure TfrmCadAmostras.UPExecute(Sender: TObject);
begin
  inherited;
  DM.cdsAmostras_.Prior;

    if inserindo then
    Insere(nil)
    else
      abre(nil);

  if StrToInt(lblDesc.Caption) <= 15 then
    begin
        lblDesc.Font.Color := clred;
        lblDesc.Caption    := IntToStr(500 - Length(mmDescricao.Lines.Text))
    end
      else
          begin
              lblDesc.Font.Color := clGray;
              lblDesc.Caption    := IntToStr(500 - Length(mmDescricao.Lines.Text))
          end;

  if StrToInt(lblObs.Caption) <= 15 then
    begin
        lblObs.Font.Color := clred;
        lblObs.Caption    := IntToStr(500 - Length(mmObs.Lines.Text))
    end
      else
          begin
              lblObs.Font.Color := clGray;
              lblObs.Caption    := IntToStr(500 - Length(mmObs.Lines.Text))
          end;
end;

end.
