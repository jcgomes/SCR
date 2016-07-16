unit uCadRRes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPai, ActnList, ExtCtrls, ComCtrls, ToolWin, StdCtrls, DBCtrls,
  Mask;

type
  TfrmCadRRes = class(TfrmCadPai)
    Label2: TLabel;
    edtCodID: TDBEdit;
    Label10: TLabel;
    cbDesc: TDBLookupComboBox;
    Label11: TLabel;
    cbCarac: TDBLookupComboBox;
    Label12: TLabel;
    cbFonte: TDBLookupComboBox;
    Label7: TLabel;
    lblRP: TLabel;
    mmRP: TDBMemo;
    mmCP: TDBMemo;
    Label8: TLabel;
    lblCP: TLabel;
    procedure UPExecute(Sender: TObject);
    procedure SalvarExecute(Sender: TObject);
    procedure NovoExecute(Sender: TObject);
    procedure mmCPKeyPress(Sender: TObject; var Key: Char);
    procedure mmRPKeyPress(Sender: TObject; var Key: Char);
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
  frmCadRRes: TfrmCadRRes;

implementation

uses Udm, UPrincipal, uConsRRes;

{$R *.dfm}

{ TfrmCadRRes }

procedure TfrmCadRRes.abre(sender: TObject);
begin
    DM.Conexao.Open;
    try
       with DM.cdsRRes do
       begin
            Close;
            Params[0].AsInteger :=  DM.cdsRRes_ID.AsInteger;
            Open;
       end;
    finally
    DM.Conexao.Close;
    end;
end;

procedure TfrmCadRRes.atualiza;
begin
    DM.Conexao.Open;
    try
       with DM.cdsRRes_ do
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

       with DM.cdsRCP_ do
       begin
            Close;
            Params[0].AsString :=  '%';
            Open;
       end;

       with DM.cdsRFG_ do
       begin
            Close;
            Params[0].AsString :=  '%';
            Open;
       end;
    finally
    DM.Conexao.Close;
    end;
end;

procedure TfrmCadRRes.CancelarExecute(Sender: TObject);
begin
  inherited;
  DM.cdsRRes.CancelUpdates;
  atualiza;
  Close;
end;

procedure TfrmCadRRes.DownExecute(Sender: TObject);
begin
  inherited;
  DM.cdsRRes_.Next;

    if inserindo then
    Insere(nil)
    else
      abre(nil);

    if StrToInt(lblRP.Caption) <= 15 then
    begin
        lblRP.Font.Color := clred;
        lblRP.Caption    := IntToStr(1000 - Length(mmRP.Lines.Text))
    end
      else
          begin
              lblRP.Font.Color := clGray;
              lblRP.Caption    := IntToStr(1000 - Length(mmRP.Lines.Text))
          end;


    if StrToInt(lblCP.Caption) <= 15 then
    begin
        lblCP.Font.Color := clred;
        lblCP.Caption    := IntToStr(1000 - Length(mmCP.Lines.Text))
    end
      else
          begin
              lblCP.Font.Color := clGray;
              lblCP.Caption    := IntToStr(1000 - Length(mmCP.Lines.Text))
          end;
end;

procedure TfrmCadRRes.exclui(sender: TObject);
var exclui : integer;
begin
    exclui := Application.MessageBox('Deseja excluir esse registro?', 'Confirme', mb_yesno);
    if exclui = IDYES Then
    begin
        DM.Conexao.Open;
        try
          with DM.cdsRRes do
          begin
              Close;
              Params[0].AsInteger :=  DM.cdsRRes_ID.AsInteger;
              Open;
              delete;
              ApplyUpdates(0);
          end;

          frmConsRRes.atualiza;
        finally
          DM.Conexao.Close;
        end;
    end;
    close;
end;

procedure TfrmCadRRes.ExcluirExecute(Sender: TObject);
begin
  inherited;
  exclui(nil);
end;

procedure TfrmCadRRes.FormShow(Sender: TObject);
begin
  inherited;
  if inserindo then
    Insere(nil)
    else
      abre(nil);

    if StrToInt(lblRP.Caption) <= 15 then
    begin
        lblRP.Font.Color := clred;
        lblRP.Caption    := IntToStr(1000 - Length(mmRP.Lines.Text))
    end
      else
          begin
              lblRP.Font.Color := clGray;
              lblRP.Caption    := IntToStr(1000 - Length(mmRP.Lines.Text))
          end;


    if StrToInt(lblCP.Caption) <= 15 then
    begin
        lblCP.Font.Color := clred;
        lblCP.Caption    := IntToStr(1000 - Length(mmCP.Lines.Text))
    end
      else
          begin
              lblCP.Font.Color := clGray;
              lblCP.Caption    := IntToStr(1000 - Length(mmCP.Lines.Text))
          end;
end;

procedure TfrmCadRRes.insere(sender: TObject);
begin
    DM.Conexao.Open;
    try
       with DM.cdsRRes do
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

procedure TfrmCadRRes.mmCPKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if StrToInt(lblCP.Caption) <= 15 then
    begin
        lblCP.Font.Color := clred;
        lblCP.Caption    := IntToStr(1000 - Length(mmCP.Lines.Text))
    end
      else
          begin
              lblCP.Font.Color := clGray;
              lblCP.Caption    := IntToStr(1000 - Length(mmCP.Lines.Text))
          end;
end;

procedure TfrmCadRRes.mmRPKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if StrToInt(lblRP.Caption) <= 15 then
    begin
        lblRP.Font.Color := clred;
        lblRP.Caption    := IntToStr(1000 - Length(mmRP.Lines.Text))
    end
      else
          begin
              lblRP.Font.Color := clGray;
              lblRP.Caption    := IntToStr(1000 - Length(mmRP.Lines.Text))
          end;

end;

procedure TfrmCadRRes.NovoExecute(Sender: TObject);
begin
  inherited;
  Inserindo := true;
  insere(nil);
  Inserindo := false;
  edtCodID.SetFocus;
end;

procedure TfrmCadRRes.SalvarExecute(Sender: TObject);
var salva : Integer;
begin
  inherited;
    if edtCodID.Text = '' then
        begin
            Raise Exception.create('O campo "Código de identificação" é obrigatório.');
            edtCodID.SetFocus;
        end
          else
            if mmRP.Text = '' then
            begin
                Raise Exception.create('O campo "Resíduo" é obrigatório.');
                mmRP.SetFocus;
            end
               else
                   begin
                        try
                          salva := Application.MessageBox('Deseja salvar esse registro?', 'Confirme', mb_yesno);
                          if salva = IDYES Then
                          begin
                              DM.cdsRRes.Post;
                              DM.cdsRRes.ApplyUpdates(0);

                              frmConsRRes.atualiza;

                              Close;
                          end;

                      except On Exception do
                    Raise Exception.create('É preciso alterar algo para poder salvar');
                  end;
              end;
end;

procedure TfrmCadRRes.UPExecute(Sender: TObject);
begin
  inherited;
  DM.cdsRRes_.Prior;

    if inserindo then
    Insere(nil)
    else
      abre(nil);

    if StrToInt(lblRP.Caption) <= 15 then
    begin
        lblRP.Font.Color := clred;
        lblRP.Caption    := IntToStr(1000 - Length(mmRP.Lines.Text))
    end
      else
          begin
              lblRP.Font.Color := clGray;
              lblRP.Caption    := IntToStr(1000 - Length(mmRP.Lines.Text))
          end;


    if StrToInt(lblCP.Caption) <= 15 then
    begin
        lblCP.Font.Color := clred;
        lblCP.Caption    := IntToStr(1000 - Length(mmCP.Lines.Text))
    end
      else
          begin
              lblCP.Font.Color := clGray;
              lblCP.Caption    := IntToStr(1000 - Length(mmCP.Lines.Text))
          end;
end;

end.
