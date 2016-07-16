unit UPreferencias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ActnList, ComCtrls, ToolWin;

type
  TfrmPreferencias = class(TForm)
    ToolBar1: TToolBar;
    ToolButton5: TToolButton;
    Btn_Up: TToolButton;
    ToolButton6: TToolButton;
    Btn_Cancelar: TToolButton;
    ToolButton12: TToolButton;
    ActionList1: TActionList;
    UP: TAction;
    Down: TAction;
    Novo: TAction;
    Salvar: TAction;
    Excluir: TAction;
    Cancelar: TAction;
    Panel2: TPanel;
    RG1: TRadioGroup;
    procedure SalvarExecute(Sender: TObject);
    procedure RG1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CancelarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GetEP;
    procedure SaveEP;
  end;

var
  frmPreferencias: TfrmPreferencias;

implementation

uses Udm, DBClient, DB;

{$R *.dfm}

{ TfrmPreferencias }

procedure TfrmPreferencias.CancelarExecute(Sender: TObject);
begin
    Close;
end;

procedure TfrmPreferencias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    FrmPreferencias   := nil;
    Action            := caFree;
end;

procedure TfrmPreferencias.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if     ((Screen.ActiveControl is TRadioGroup) or
            (Screen.ActiveControl is TRadioButton)) then
    begin
        case key of
        vk_Escape:  FrmPreferencias.Close;
        end;
    end;
end;

procedure TfrmPreferencias.FormShow(Sender: TObject);
begin
    GetEP;
end;

procedure TfrmPreferencias.GetEP;
var
i, id_empresa : integer;
begin
    DM.Conexao.Open;
    try

       // carrega o ClientDataSet com todos os registros
       DM.cdsEmpresas_.Close;
       DM.cdsEmpresas_.Params[0].AsString :=  '%';
       DM.cdsEmpresas_.Open;

       // carrega o TRadio Group com todos os registros do ClientDataSet
       DM.cdsEmpresas_.First;
       while not DM.cdsEmpresas_.Eof do
       begin
          RG1.Items.Add(DM.cdsEmpresas_RAZAO_SOCIAL.AsString);
          DM.cdsEmpresas_.Next;
       end;

       // pega o valor da empresa padrão na tabela "empresa_padrao"
       {with dm.cdsEmprEP do
          begin
              close;
              CommandText := 'select * from empr_ep where id=1';
              open;
          end;}
          dm.cdsEmprEP.CommandText := 'select * from EMPR_EP rows 1 to 1'; // seleciona todos os campos do primeiro registro da tabela EMPR_EP 
          dm.cdsEmprEP.Open;
          id_empresa := DM.cdsEmprEPID_EMPRESA.AsInteger;
          ShowMessage('id empresa padrão: '+IntToStr(id_empresa));
          
       // procura na tabela "empresas" a empresa cujo ID =  "empresa_padrao.ID_EMPRESA"
       DM.cdsEmpresas.Close;
       DM.cdsEmpresas.Params[0].AsInteger := id_empresa;
       DM.cdsEmpresas.Open;
       ShowMessage('nome da empresa padrao: '+dm.cdsEmpresasRAZAO_SOCIAL.AsString);

       // procura no RadioGroup pelo radio Button cujo Caption =  "empresas.Razao_Social"
       with RG1 do
       begin
          for i := 0 to ComponentCount-1 do
              if Components[i] is TRadioButton then
              begin
                  if TRadioButton(Components[i]).Caption = DM.cdsEmpresasRAZAO_SOCIAL.AsString then
                  begin
                      TRadioButton(Components[i]).Checked := true;
                      ShowMessage('radiobutton.caption := '+TRadioButton(Components[i]).Caption);
                  end;
              end;

       end;

       // atribui a propriedade checked para true do radiobutton encontrado
    finally
      DM.Conexao.Close;
    end;

end;


procedure TfrmPreferencias.RG1Click(Sender: TObject);
var
  i : Integer;
begin
  with RG1 do begin
    // Limpa estilos de todos botões
    for i := 0 to ComponentCount-1 do
      if Components[i] is TRadioButton then
        TRadioButton(Components[i]).Font.Style := [];
    // Seta estilo do selecionado
    (Components[ItemIndex] as TRadioButton).Font.Style := [fsBold];
  end;
end;

procedure TfrmPreferencias.SalvarExecute(Sender: TObject);
begin
    SaveEP;
end;

procedure TfrmPreferencias.SaveEP;
var
  i, salva : Integer;
begin
  // edita a empresa padrão
  with RG1 do begin
    for i := 0 to ComponentCount-1 do
      if Components[i] is TRadioButton then
      begin
          if TRadioButton(Components[i]).Checked = true then
          begin
              salva := Application.MessageBox('Deseja salvar esse registro?', 'Confirme', mb_yesno);
              if salva = IDYES Then
              begin
                  DM.Conexao.Open;
                  try

                    // busca pelo nome do registro que foi selecionado no radiobutton
                    DM.cdsEmpresas_.Close;
                    DM.cdsEmpresas_.Params[0].AsString :=  TRadioButton(Components[i]).Caption;
                    DM.cdsEmpresas_.Open;
                    Showmessage('selecionado: ' + DM.cdsEmpresas_.Params[0].AsString);

                    // busca pelo id do registro cujo nome é igual ao da busca acima
                    DM.cdsEmpresas.Close;
                    DM.cdsEmpresas.Params[0].AsInteger :=  DM.cdsEmpresas_ID.AsInteger;
                    DM.cdsEmpresas.Open;
                    Showmessage('id registro selecionado: '+ DM.cdsEmpresas.Params[0].AsString);

                    //todo: ta dando pau quando tento salvar a emrpresa padrao
                    // edita a empresa padrão
                    With DM.cdsEmprEP do
                    begin
                        open;
                        CommandText := 'delete from empr_ep rows 1 to 1';
                        ApplyUpdates(0);
                    end;

                   { With DM.cdsEmprEP do
                    begin
                         open;
                         insert;
                         FieldByName('ID_EMPRESA').AsInteger := DM.cdsEmpresasID.AsInteger;
                         post;
                         ApplyUpdates(0);
                    end;}

                    finally
                      DM.Conexao.Close;
                    end;
              end;
          end;
      end;                  
  end;  
end;


end.
