unit uCadRDesc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPai, ActnList, ExtCtrls, ComCtrls, ToolWin, StdCtrls, DBCtrls,
  Mask;

type
  TfrmCadRDesc = class(TfrmCadPai)
    Label1: TLabel;
    edtDescricao: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    edtAnexo: TDBEdit;
    cbCarater: TDBComboBox;
    procedure UPExecute(Sender: TObject);
    procedure SalvarExecute(Sender: TObject);
    procedure NovoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ExcluirExecute(Sender: TObject);
    procedure DownExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
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
  frmCadRDesc: TfrmCadRDesc;

implementation

uses Udm, uConsRDesc;

{$R *.dfm}

{ TfrmCadRDesc }

procedure TfrmCadRDesc.abre(sender: TObject);
begin
    DM.Conexao.Open;
    try
       with DM.cdsRDesc do
       begin
            Close;
            Params[0].AsInteger :=  DM.cdsRDesc_ID.AsInteger;
            Open;
       end;
    finally
    DM.Conexao.Close;
    end;
end;

procedure TfrmCadRDesc.atualiza;
begin
    DM.Conexao.Open;
    try
       with DM.cdsRDesc_ do
       begin
            Close;
            Params[0].AsString :=  '%';
            Open;
       end;
    finally
    DM.Conexao.Close;
    end;
end;

procedure TfrmCadRDesc.CancelarExecute(Sender: TObject);
begin
  inherited;
  DM.cdsRDesc.CancelUpdates;
  atualiza;
  Close;
end;

procedure TfrmCadRDesc.DownExecute(Sender: TObject);
begin
  inherited;
  DM.cdsRDesc_.Next;

    if inserindo then
    Insere(nil)
    else
      abre(nil);
end;

procedure TfrmCadRDesc.exclui(sender: TObject);
var exclui : integer;
begin
    exclui := Application.MessageBox('Deseja excluir esse registro?', 'Confirme', mb_yesno);
    if exclui = IDYES Then
    begin
        DM.Conexao.Open;
        try
          with DM.cdsRDesc do
          begin
              Close;
              Params[0].AsInteger :=  DM.cdsRDesc_ID.AsInteger;
              Open;
              delete;
              ApplyUpdates(0);
          end;

          frmConsRDesc.atualiza;
        finally
          DM.Conexao.Close;
        end;
    end;
    close;
end;


procedure TfrmCadRDesc.ExcluirExecute(Sender: TObject);
begin
  inherited;
  exclui(nil);
end;

procedure TfrmCadRDesc.FormShow(Sender: TObject);
begin
  inherited;
  if inserindo then
    Insere(nil)
    else
      abre(nil);
end;

procedure TfrmCadRDesc.insere(sender: TObject);
begin
    DM.Conexao.Open;
    try
       with DM.cdsRDesc do
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

procedure TfrmCadRDesc.NovoExecute(Sender: TObject);
begin
  inherited;
  Inserindo := true;
  insere(nil);
  Inserindo := false;
  edtDescricao.SetFocus;
end;

procedure TfrmCadRDesc.SalvarExecute(Sender: TObject);
var salva : Integer;
begin
  inherited;
    if edtDescricao.Text = '' then
        begin
            Raise Exception.create('O campo "Descrição" é obrigatório.');
            edtDescricao.SetFocus;
        end
          else
            if cbCarater.Text = '' then
            begin
                Raise Exception.create('O campo "Carater" é obrigatório.');
                cbCarater.SetFocus;
            end
                else
                    begin
                        try
                          salva := Application.MessageBox('Deseja salvar esse registro?', 'Confirme', mb_yesno);
                          if salva = IDYES Then
                          begin
                              DM.cdsRDesc.Post;
                              DM.cdsRDesc.ApplyUpdates(0);

                              frmConsRDesc.atualiza;

                              Close;
                          end;

                      except On Exception do
                    Raise Exception.create('É preciso alterar algo para poder salvar');
                  end;
              end;
end;

procedure TfrmCadRDesc.UPExecute(Sender: TObject);
begin
  inherited;
  DM.cdsRDesc_.Prior;

    if inserindo then
    Insere(nil)
    else
      abre(nil);
end;

end.
