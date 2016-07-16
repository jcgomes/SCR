unit UCadLeg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPai, ActnList, ExtCtrls, ComCtrls, ToolWin, DBCtrls, StdCtrls,
  Mask, Buttons;

type
  TfrmCadLeg = class(TfrmCadPai)
    cbArea: TDBComboBox;
    cbTipo: TDBComboBox;
    edtAnexo: TDBEdit;
    mmDesc: TDBMemo;
    btnProcurar: TSpeedButton;
    SpeedButton2: TSpeedButton;
    btnURL: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtNome: TDBEdit;
    edtURL: TDBEdit;
    SD: TSaveDialog;
    OD: TOpenDialog;
    lblOBS: TLabel;
    procedure mmDescKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure UPExecute(Sender: TObject);
    procedure btnURLClick(Sender: TObject);
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
  frmCadLeg: TfrmCadLeg;

implementation

uses Udm, UConsLeg, UFuncoes;

{$R *.dfm}



{ TfrmCadLeg }

procedure TfrmCadLeg.abre(sender: TObject);
begin
    DM.Conexao.Open;
    try
       with DM.cdsLeg do
       begin
            Close;
            Params[0].AsInteger :=  DM.cdsLeg_ID.AsInteger;
            Open;
       end;
       edtAnexo.Text  :=  DM.cdsLegANEXO.DisplayName;
    finally
    DM.Conexao.Close;
    end;
end;

procedure TfrmCadLeg.atualiza;
begin
    DM.Conexao.Open;
    try
       with DM.cdsLeg_ do
       begin
            Close;
            Params[0].AsString :=  '%';
            Open;
       end;
    finally
    DM.Conexao.Close;
    end;
end;

procedure TfrmCadLeg.btnProcurarClick(Sender: TObject);
begin
  inherited;
  if OD.Execute then
  edtAnexo.Text := OD.FileName;
end;

procedure TfrmCadLeg.btnURLClick(Sender: TObject);
begin
  inherited;
  if  edtURL.Text <> '' then
      abreURL(edtURL.Text)
end;

procedure TfrmCadLeg.CancelarExecute(Sender: TObject);
begin
  inherited;
  DM.cdsLeg.CancelUpdates;
  atualiza;
  Close;
end;

procedure TfrmCadLeg.DownExecute(Sender: TObject);
begin
  inherited;
  DM.cdsLeg_.Next;

    if inserindo then
    Insere(nil)
    else
      abre(nil);

    if StrToInt(lblOBS.Caption) <= 15 then
    begin
        lblOBS.Font.Color := clred;
        lblOBS.Caption    := IntToStr(500 - Length(mmDesc.Lines.Text))
    end
      else
          begin
              lblOBS.Font.Color := clGray;
              lblOBS.Caption    := IntToStr(500 - Length(mmDesc.Lines.Text))
          end;
end;

procedure TfrmCadLeg.exclui(sender: TObject);
var exclui : integer;
begin
    exclui := Application.MessageBox('Deseja excluir esse registro?', 'Confirme', mb_yesno);
    if exclui = IDYES Then
    begin
        DM.Conexao.Open;
        try
          with DM.cdsLeg do
          begin
              Close;
              Params[0].AsInteger :=  DM.cdsLeg_ID.AsInteger;
              Open;
              delete;
              ApplyUpdates(0);
          end;

          frmConsLeg.atualiza;
        finally
          DM.Conexao.Close;
        end;
    end;
    close;
end;

procedure TfrmCadLeg.ExcluirExecute(Sender: TObject);
begin
  inherited;
  exclui(nil);
end;

procedure TfrmCadLeg.FormShow(Sender: TObject);
begin
  inherited;
  if inserindo then
    Insere(nil)
    else
      abre(nil);

    if StrToInt(lblOBS.Caption) <= 15 then
    begin
        lblOBS.Font.Color := clred;
        lblOBS.Caption    := IntToStr(500 - Length(mmDesc.Lines.Text))
    end
      else
          begin
              lblOBS.Font.Color := clGray;
              lblOBS.Caption    := IntToStr(500 - Length(mmDesc.Lines.Text))
          end;
end;

procedure TfrmCadLeg.insere(sender: TObject);
begin
    DM.Conexao.Open;
    try
       with DM.cdsLeg do
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

procedure TfrmCadLeg.mmDescKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if StrToInt(lblOBS.Caption) <= 15 then
    begin
        lblOBS.Font.Color := clred;
        lblOBS.Caption    := IntToStr(500 - Length(mmDesc.Lines.Text))
    end
      else
          begin
              lblOBS.Font.Color := clGray;
              lblOBS.Caption    := IntToStr(500 - Length(mmDesc.Lines.Text))
          end;
end;

procedure TfrmCadLeg.NovoExecute(Sender: TObject);
begin
  inherited;
  Inserindo := true;
  insere(nil);
  Inserindo := false;
  edtNome.SetFocus;
end;

procedure TfrmCadLeg.SalvarExecute(Sender: TObject);
var salva : Integer;
begin
  inherited;
    if edtNome.Text = '' then
        begin
            Raise Exception.create('O campo "Nome" é obrigatório.');
            edtNome.SetFocus;
        end
              else
                    begin
                        try
                          salva := Application.MessageBox('Deseja salvar esse registro?', 'Confirme', mb_yesno);
                          if salva = IDYES Then
                          begin
                              //todo: aqui da pau se eu altero apenas o anexo
                              if edtAnexo.Text <> '' then
                              begin
                                  DM.cdsLegANEXO.LoadFromFile(edtAnexo.Text);
                              end;

                              DM.cdsLeg.Post;
                              DM.cdsLeg.ApplyUpdates(0);

                              frmConsLeg.atualiza;

                              Close;
                          end;

                      except On Exception do
                    Raise Exception.create('É preciso alterar algo para poder salvar');
                  end;
              end;
end;

procedure TfrmCadLeg.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if edtAnexo.Text <> '' then
  begin
      if SD.Execute then        
      //sd.FileName := 'teste';
      DM.cdsLegANEXO.SaveToFile(SD.FileName);
  end;
end;

procedure TfrmCadLeg.UPExecute(Sender: TObject);
begin
  inherited;
  DM.cdsLeg_.Prior;

    if inserindo then
    Insere(nil)
    else
      abre(nil);

    if StrToInt(lblOBS.Caption) <= 15 then
    begin
        lblOBS.Font.Color := clred;
        lblOBS.Caption    := IntToStr(500 - Length(mmDesc.Lines.Text))
    end
      else
          begin
              lblOBS.Font.Color := clGray;
              lblOBS.Caption    := IntToStr(500 - Length(mmDesc.Lines.Text))
          end;
end;

end.
