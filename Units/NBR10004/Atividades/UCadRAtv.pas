unit UCadRAtv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPai, ActnList, ExtCtrls, ComCtrls, ToolWin, StdCtrls, Mask,
  DBCtrls;

type
  TfrmCadRAtv = class(TfrmCadPai)
    Label1: TLabel;
    edtAtv: TDBEdit;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
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
  frmCadRAtv: TfrmCadRAtv;

implementation

uses Udm, UConsRAtv;

{$R *.dfm}

{ TfrmCadRAtv }

procedure TfrmCadRAtv.abre(sender: TObject);
begin
    DM.Conexao.Open;
    try
       with DM.cdsRAtv do
       begin
            Close;
            Params[0].AsInteger :=  DM.cdsRAtv_ID.AsInteger;
            Open;
       end;
    finally
    DM.Conexao.Close;
    end;
end;

procedure TfrmCadRAtv.atualiza;
begin
    DM.Conexao.Open;
    try
       with DM.cdsRAtv_ do
       begin
            Close;
            Params[0].AsString :=  '%';
            Open;
       end;

       with DM.cdsRDesc_ do
       begin
          Close;
          Params[0].AsString := '%';
          Open;
       end;
    finally
    DM.Conexao.Close;
    end;
end;

procedure TfrmCadRAtv.CancelarExecute(Sender: TObject);
begin
  inherited;
  DM.cdsRAtv.CancelUpdates;
  atualiza;
  Close;
end;

procedure TfrmCadRAtv.DownExecute(Sender: TObject);
begin
  inherited;
  DM.cdsRAtv_.Next;

    if inserindo then
    Insere(nil)
    else
      abre(nil);
end;

procedure TfrmCadRAtv.exclui(sender: TObject);
var exclui : integer;
begin
    exclui := Application.MessageBox('Deseja excluir esse registro?', 'Confirme', mb_yesno);
    if exclui = IDYES Then
    begin
        DM.Conexao.Open;
        try
          with DM.cdsRAtv do
          begin
              Close;
              Params[0].AsInteger :=  DM.cdsRAtv_ID.AsInteger;
              Open;
              delete;
              ApplyUpdates(0);
          end;

          frmConsRAtv.atualiza;
        finally
          DM.Conexao.Close;
        end;
    end;
    close;
end;

procedure TfrmCadRAtv.ExcluirExecute(Sender: TObject);
begin
  inherited;
  exclui(nil);
end;

procedure TfrmCadRAtv.FormShow(Sender: TObject);
begin
  inherited;
  if inserindo then
    Insere(nil)
    else
      abre(nil);
end;

procedure TfrmCadRAtv.insere(sender: TObject);
begin
    DM.Conexao.Open;
    try
       with DM.cdsRAtv do
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

procedure TfrmCadRAtv.NovoExecute(Sender: TObject);
begin
  inherited;
  Inserindo := true;
  insere(nil);
  Inserindo := false;
  edtAtv.SetFocus;
end;

procedure TfrmCadRAtv.SalvarExecute(Sender: TObject);
var salva : Integer;
begin
  inherited;
    if edtAtv.Text = '' then
        begin
            Raise Exception.create('O campo "Atividade" é obrigatório.');
            edtAtv.SetFocus;
        end
              else
                    begin
                        try
                          salva := Application.MessageBox('Deseja salvar esse registro?', 'Confirme', mb_yesno);
                          if salva = IDYES Then
                          begin
                              DM.cdsRAtv.Post;
                              DM.cdsRAtv.ApplyUpdates(0);

                              frmConsRAtv.atualiza;

                              Close;
                          end;

                      except On Exception do
                    Raise Exception.create('É preciso alterar algo para poder salvar');
                  end;
              end;
end;


procedure TfrmCadRAtv.UPExecute(Sender: TObject);
begin
  inherited;
  DM.cdsRAtv_.Prior;

    if inserindo then
    Insere(nil)
    else
      abre(nil);
end;

end.
