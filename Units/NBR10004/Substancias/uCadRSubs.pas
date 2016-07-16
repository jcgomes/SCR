unit uCadRSubs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPai, ActnList, ExtCtrls, ComCtrls, ToolWin, StdCtrls, Mask,
  DBCtrls;

type
  TfrmCadRSubs = class(TfrmCadPai)
    Label7: TLabel;
    cbDesc: TDBLookupComboBox;
    Label2: TLabel;
    edtSubstancia: TDBEdit;
    Label3: TLabel;
    edtOD: TDBEdit;
    Label4: TLabel;
    edtCodID: TDBEdit;
    Label5: TLabel;
    edtCAS: TDBEdit;
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
  frmCadRSubs: TfrmCadRSubs;

implementation

uses Udm, uConsSubs;

{$R *.dfm}

{ TfrmCadRSubs }

procedure TfrmCadRSubs.abre(sender: TObject);
begin
    DM.Conexao.Open;
    try
       with DM.cdsRSubs do
       begin
            Close;
            Params[0].AsInteger :=  DM.cdsRSubs_ID.AsInteger;
            Open;
       end;
    finally
    DM.Conexao.Close;
    end;
end;

procedure TfrmCadRSubs.atualiza;
begin
    DM.Conexao.Open;
    try
       with DM.cdsRSubs_ do
       begin
            Close;
            Params[0].AsString :=  '%';
            Open;
       end;

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

procedure TfrmCadRSubs.CancelarExecute(Sender: TObject);
begin
  inherited;
  DM.cdsRSubs.CancelUpdates;
  atualiza;
  Close;
end;

procedure TfrmCadRSubs.DownExecute(Sender: TObject);
begin
  inherited;
  DM.cdsRSubs_.Next;

    if inserindo then
    Insere(nil)
    else
      abre(nil);
end;

procedure TfrmCadRSubs.exclui(sender: TObject);
var exclui : integer;
begin
    exclui := Application.MessageBox('Deseja excluir esse registro?', 'Confirme', mb_yesno);
    if exclui = IDYES Then
    begin
        DM.Conexao.Open;
        try
          with DM.cdsRSubs do
          begin
              Close;
              Params[0].AsInteger :=  DM.cdsRSubs_ID.AsInteger;
              Open;
              delete;
              ApplyUpdates(0);
          end;

          frmConsRSubs.atualiza;
        finally
          DM.Conexao.Close;
        end;
    end;
    close;
end;

procedure TfrmCadRSubs.ExcluirExecute(Sender: TObject);
begin
  inherited;
  exclui(nil);
end;

procedure TfrmCadRSubs.FormShow(Sender: TObject);
begin
  inherited;
  if inserindo then
    Insere(nil)
    else
      abre(nil);
end;

procedure TfrmCadRSubs.insere(sender: TObject);
begin
    DM.Conexao.Open;
    try
       with DM.cdsRSubs do
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

procedure TfrmCadRSubs.NovoExecute(Sender: TObject);
begin
  inherited;
  Inserindo := true;
  insere(nil);
  Inserindo := false;
  cbDesc.SetFocus;
end;

procedure TfrmCadRSubs.SalvarExecute(Sender: TObject);
var salva : Integer;
begin
  inherited;
    if cbDesc.Text = '' then
        begin
            Raise Exception.create('O campo "Descrição" é obrigatório.');
            cbDesc.SetFocus;
        end
          else
              if edtSubstancia.Text = '' then
              begin
                  Raise Exception.create('O campo "Substância" é obrigatório.');
                  edtSubstancia.SetFocus;
              end
                else
                    begin
                        try
                          salva := Application.MessageBox('Deseja salvar esse registro?', 'Confirme', mb_yesno);
                          if salva = IDYES Then
                          begin
                              DM.cdsRSubs.Post;
                              DM.cdsRSubs.ApplyUpdates(0);

                              frmConsRSubs.atualiza;

                              Close;
                          end;

                      except On Exception do
                    Raise Exception.create('É preciso alterar algo para poder salvar');
                  end;
              end;
end;

procedure TfrmCadRSubs.UPExecute(Sender: TObject);
begin
  inherited;
  DM.cdsRSubs_.Prior;

    if inserindo then
    Insere(nil)
    else
      abre(nil);
end;

end.
