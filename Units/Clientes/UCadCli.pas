unit UCadCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPai, ActnList, ExtCtrls, ComCtrls, ToolWin, DBCtrls, Buttons,
  StdCtrls, Mask;

type
  TfrmCadCli = class(TfrmCadPai)
    Label1: TLabel;
    edtNome: TDBEdit;
    Label2: TLabel;
    edtRG: TDBEdit;
    Label3: TLabel;
    edtCPF: TDBEdit;
    Label4: TLabel;
    edtNascimento: TDBEdit;
    Label5: TLabel;
    edtFone1: TDBEdit;
    Label6: TLabel;
    edtFone2: TDBEdit;
    Label7: TLabel;
    edtEmail: TDBEdit;
    Label8: TLabel;
    edtURL: TDBEdit;
    Label17: TLabel;
    cbUF: TDBLookupComboBox;
    Label18: TLabel;
    cbCidade: TDBLookupComboBox;
    Label9: TLabel;
    edtCEP: TDBEdit;
    Label10: TLabel;
    edtBairro: TDBEdit;
    Label11: TLabel;
    edtLogradouro: TDBEdit;
    Label12: TLabel;
    edtEdificio: TDBEdit;
    Label13: TLabel;
    edtBloco: TDBEdit;
    Label14: TLabel;
    edtNumero: TDBEdit;
    Label15: TLabel;
    edtImediacoes: TDBEdit;
    Label16: TLabel;
    edtObs: TDBEdit;
    SpeedButton1: TSpeedButton;
    Label21: TLabel;
    edtIE: TDBEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure UPExecute(Sender: TObject);
    procedure SalvarExecute(Sender: TObject);
    procedure NovoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ExcluirExecute(Sender: TObject);
    procedure edtNascimentoChange(Sender: TObject);
    procedure edtFone2Change(Sender: TObject);
    procedure edtFone1Change(Sender: TObject);
    procedure edtCPFExit(Sender: TObject);
    procedure edtCEPExit(Sender: TObject);
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
  frmCadCli: TfrmCadCli;

implementation

uses Udm, UConsCli;

{$R *.dfm}

{ TfrmCadCli }

function FormataData(edt: TdbEdit): String ; stdcall; external 'funcGen.dll';
function ValidaCEP(const CEP: string): string; stdcall; external 'funcGen.dll';
function ValidaCnpjCpf(Numero : String) : Boolean; stdcall; external 'funcGen.dll';
function FormataFone(edt : TdbEdit): string; stdcall; external 'funcGen.dll';  
function AbreURL(const aAdress: String): string; stdcall; external 'funcGen.dll';

procedure TfrmCadCli.abre(sender: TObject);
begin
    DM.Conexao.Open;
    try
       with DM.cdsClientes do
       begin
            Close;
            Params[0].AsInteger :=  DM.cdsClientes_ID.AsInteger;
            Open;
       end;
    finally
    DM.Conexao.Close;
    end;
end;

procedure TfrmCadCli.atualiza;
begin
    DM.Conexao.Open;
    try
       with DM.cdsClientes_ do
       begin
            Close;
            Params[0].AsString :=  '%';
            Open;
       end;
    finally
    DM.Conexao.Close;
    end;
end;

procedure TfrmCadCli.CancelarExecute(Sender: TObject);
begin
  inherited;
  DM.cdsClientes.CancelUpdates;
  atualiza;
  Close;
end;

procedure TfrmCadCli.DownExecute(Sender: TObject);
begin
  inherited;
  DM.cdsClientes_.Next;

    if inserindo then
    Insere(nil)
    else
      abre(nil);
end;

procedure TfrmCadCli.edtCEPExit(Sender: TObject);
begin
  inherited;
  if edtCEP.Text <> '' then
     edtCEP.Text := ValidaCEP(edtCEP.Text)
end;

procedure TfrmCadCli.edtCPFExit(Sender: TObject);
begin
  inherited;
  if edtCPF.Text <> '' then
    begin
         if not ValidaCnpjCpf(edtCPF.Text) Then
         begin
             Raise Exception.Create('CPF / CNPJ incorreto. por favor corrija');
         end;
    end;
end;

procedure TfrmCadCli.edtFone1Change(Sender: TObject);
begin
  inherited;
  FormataFone(edtFone1);
end;

procedure TfrmCadCli.edtFone2Change(Sender: TObject);
begin
  inherited;
  FormataFone(edtFone2);
end;

procedure TfrmCadCli.edtNascimentoChange(Sender: TObject);
begin
  inherited;
  FormataData(edtNascimento);
end;

procedure TfrmCadCli.exclui(sender: TObject);
var exclui : integer;
begin
    exclui := Application.MessageBox('Deseja excluir esse registro?', 'Confirme', mb_yesno);
    if exclui = IDYES Then
    begin
        DM.Conexao.Open;
        try
          with DM.cdsClientes do
          begin
              Close;
              Params[0].AsInteger :=  DM.cdsClientes_ID.AsInteger;
              Open;
              delete;
              ApplyUpdates(0);
          end;

          frmConsCli.atualiza;
        finally
          DM.Conexao.Close;
        end;
    end;
    close;
end;

procedure TfrmCadCli.ExcluirExecute(Sender: TObject);
begin
  inherited;
  exclui(nil);
end;

procedure TfrmCadCli.FormShow(Sender: TObject);
begin
  inherited;
  if inserindo then
    Insere(nil)
    else
      abre(nil);
end;

procedure TfrmCadCli.insere(sender: TObject);
begin
    DM.Conexao.Open;
    try
       with DM.cdsClientes do
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

procedure TfrmCadCli.NovoExecute(Sender: TObject);
begin
  inherited;
  Inserindo := true;
  insere(nil);
  Inserindo := false;
  edtNome.SetFocus;
end;

procedure TfrmCadCli.SalvarExecute(Sender: TObject);
var salva : Integer;
begin
  inherited;
    if edtNome.Text = '' then
        begin
            Raise Exception.create('O campo "Nome / Razão social" é obrigatório.');
            edtNome.SetFocus;
        end
                else
                    begin
                        try
                          salva := Application.MessageBox('Deseja salvar esse registro?', 'Confirme', mb_yesno);
                          if salva = IDYES Then
                          begin
                              DM.cdsClientes.Post;
                              DM.cdsClientes.ApplyUpdates(0);

                              frmConsCli.atualiza;

                              Close;
                          end;

                      except On Exception do
                    Raise Exception.create('É preciso alterar algo para poder salvar');
                  end;
              end;
end;

procedure TfrmCadCli.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if  edtURL.Text <> '' then
      abreURL(edtURL.Text)
end;

procedure TfrmCadCli.UPExecute(Sender: TObject);
begin
  inherited;
  DM.cdsClientes_.Prior;

    if inserindo then
    Insere(nil)
    else
      abre(nil);
end;

end.
