unit uCadClassificacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPai, ActnList, ExtCtrls, ComCtrls, ToolWin, StdCtrls, Buttons,
  OleCtrls, SHDocVw,dbClient,db,ActiveX,MSHTML, Mask, DBCtrls, Grids, DBGrids,
  CheckLst,jpeg, ExtDlgs, RpRender, RpRenderPDF, RpBase, RpSystem, RpRave,
  RpDefine, RpCon,RvCsStd,RvDLCommon, RpConDS,RVClass;

type
  TfrmCadClassificacao = class(TfrmCadPai)
    PC1: TPageControl;
    tsDA: TTabSheet;
    tsRC: TTabSheet;
    tsRD: TTabSheet;
    tsClasse: TTabSheet;
    PB: TProgressBar;
    SB: TStatusBar;
    PageControl2: TPageControl;
    tsCar: TTabSheet;
    GroupBox9: TGroupBox;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label51: TLabel;
    edtFQA: TDBEdit;
    edtFQU: TDBEdit;
    edtFQD: TDBEdit;
    edtFQL: TDBEdit;
    Panel3: TPanel;
    Label4: TLabel;
    edtFQLeg: TDBEdit;
    tsInf: TTabSheet;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    tsCorr: TTabSheet;
    GroupBox1: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    edtCP1: TEdit;
    edtCL1: TEdit;
    edtCLQ1: TDBEdit;
    edtCR1: TDBEdit;
    tsRea: TTabSheet;
    GroupBox3: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    edtRP1: TEdit;
    edtRL1: TEdit;
    edtRP2: TEdit;
    edtRL2: TEdit;
    edtRLQ1: TDBEdit;
    edtRR1: TDBEdit;
    edtRLQ2: TDBEdit;
    edtRR2: TDBEdit;
    tsTox: TTabSheet;
    GroupBox12: TGroupBox;
    dbgTox: TDBGrid;
    GroupBox4: TGroupBox;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    edtTts: TDBEdit;
    edtTse: TDBEdit;
    edtTpH1: TDBEdit;
    edtTpH2: TDBEdit;
    edtTtl: TDBEdit;
    edtTvl: TDBEdit;
    tsPat: TTabSheet;
    GroupBox5: TGroupBox;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label47: TLabel;
    tsSol: TTabSheet;
    WB: TWebBrowser;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnConsultar: TSpeedButton;
    edtR: TEdit;
    edtC: TEdit;
    edtS: TEdit;
    PC2: TPageControl;
    Label71: TLabel;
    Label72: TLabel;
    GroupBox8: TGroupBox;
    Label66: TLabel;
    Label68: TLabel;
    lblAnexos: TLabel;
    Label69: TLabel;
    lblAvaliacao: TLabel;
    mmAvaliacao: TDBMemo;
    mmConsideracoes: TDBMemo;
    Label73: TLabel;
    lblConsideracoes: TLabel;
    imgFQ: TImage;
    SpeedButton1: TSpeedButton;
    Img: TAction;
    opd: TOpenPictureDialog;
    cbI1: TComboBox;
    cbI2: TComboBox;
    cbI3: TComboBox;
    cbI4: TComboBox;
    cbC1: TComboBox;
    cbR1: TComboBox;
    cbR2: TComboBox;
    cbR3: TComboBox;
    cbR4: TComboBox;
    cbR5: TComboBox;
    cbR6: TComboBox;
    cbR7: TComboBox;
    cbP1: TComboBox;
    cbP2: TComboBox;
    ExcluiParamSol: TAction;
    ExcluiParamTox: TAction;
    ToolBar3: TToolBar;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton8: TToolButton;
    SpeedButton2: TSpeedButton;
    mmAnexos: TMemo;
    cbClasse: TComboBox;
    Consultar: TAction;
    LimparWB: TAction;
    rvDSCconfig: TRvDataSetConnection;
    rvDSCang: TRvDataSetConnection;
    rvDSCanf: TRvDataSetConnection;
    rvDSCatividade: TRvDataSetConnection;
    rvDSCprocessos: TRvDataSetConnection;
    rvDSCempresas: TRvDataSetConnection;
    rvDSCclassf03: TRvDataSetConnection;
    rvDSCclassf02: TRvDataSetConnection;
    rvDSCclassf01: TRvDataSetConnection;
    rvDSCPaginas: TRvDataSetConnection;
    cdsPaginas: TClientDataSet;
    cdsPaginaspaginas: TStringField;
    RvPLaudo: TRvProject;
    RvSLaudo: TRvSystem;
    RvRenderPDF1: TRvRenderPDF;
    GroupBox7: TGroupBox;
    Label42: TLabel;
    Label46: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label52: TLabel;
    Label54: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label48: TLabel;
    lblMet: TLabel;
    Label41: TLabel;
    lblObs: TLabel;
    lblDA: TLabel;
    Label53: TLabel;
    edtNFC: TDBEdit;
    edtDataColeta: TDBEdit;
    edtHoraColeta: TDBEdit;
    edtDataEntrada: TDBEdit;
    edtColetores: TDBEdit;
    edtPontoColeta: TDBEdit;
    edtOutrosCodigos: TDBEdit;
    mmDA: TDBMemo;
    mmObs: TDBMemo;
    edtOrigem: TDBEdit;
    edtSegregacao: TDBEdit;
    edtEstocagem: TDBEdit;
    mmMetodologia: TDBMemo;
    cbProcesso: TDBLookupComboBox;
    cbCliente: TDBLookupComboBox;
    rg: TRadioGroup;
    GroupBox6: TGroupBox;
    GroupBox10: TGroupBox;
    dbgSol: TDBGrid;
    ToolBar2: TToolBar;
    ToolButton3: TToolButton;
    btnExcluirParam: TToolButton;
    ToolButton7: TToolButton;
    Label65: TLabel;
    edtSolUmidade: TDBEdit;
    Label67: TLabel;
    edtSolpHI: TDBEdit;
    Label70: TLabel;
    edtSolpHF: TDBEdit;
    procedure CancelarExecute(Sender: TObject);
    procedure SBDrawPanel(StatusBar: TStatusBar; Panel: TStatusPanel;
      const Rect: TRect);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtRKeyPress(Sender: TObject; var Key: Char);
    procedure edtDataColetaKeyPress(Sender: TObject; var Key: Char);
    procedure edtHoraColetaKeyPress(Sender: TObject; var Key: Char);
    procedure edtDataEntradaKeyPress(Sender: TObject; var Key: Char);
    procedure mmDAKeyPress(Sender: TObject; var Key: Char);
    procedure mmMetodologiaKeyPress(Sender: TObject; var Key: Char);
    procedure mmObsKeyPress(Sender: TObject; var Key: Char);
    procedure edtFQUKeyPress(Sender: TObject; var Key: Char);
    procedure edtCLQ1KeyPress(Sender: TObject; var Key: Char);
    procedure edtTtsKeyPress(Sender: TObject; var Key: Char);
    procedure mmAvaliacaoKeyPress(Sender: TObject; var Key: Char);
    procedure mmConsideracoesKeyPress(Sender: TObject; var Key: Char);
    procedure ExcluirExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NovoExecute(Sender: TObject);
    procedure dbgToxKeyPress(Sender: TObject; var Key: Char);
    procedure dbgSolKeyPress(Sender: TObject; var Key: Char);
    procedure dbgSolDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgToxColExit(Sender: TObject);
    procedure dbgSolColExit(Sender: TObject);
    procedure ImgExecute(Sender: TObject);
    procedure SalvarExecute(Sender: TObject);
    procedure cbClasseEnter(Sender: TObject);
    procedure edtCR1Exit(Sender: TObject);
    procedure edtRR1Exit(Sender: TObject);
    procedure edtRR2Exit(Sender: TObject);
    procedure cbI1Exit(Sender: TObject);
    procedure cbI2Exit(Sender: TObject);
    procedure cbI3Exit(Sender: TObject);
    procedure cbI4Exit(Sender: TObject);
    procedure cbC1Exit(Sender: TObject);
    procedure cbR1Exit(Sender: TObject);
    procedure cbR2Exit(Sender: TObject);
    procedure cbR3Exit(Sender: TObject);
    procedure cbR4Exit(Sender: TObject);
    procedure cbR5Exit(Sender: TObject);
    procedure cbR6Exit(Sender: TObject);
    procedure cbR7Exit(Sender: TObject);
    procedure cbP1Exit(Sender: TObject);
    procedure cbP2Exit(Sender: TObject);
    procedure ExcluiParamSolExecute(Sender: TObject);
    procedure ExcluiParamToxExecute(Sender: TObject);
    procedure mmAnexosKeyPress(Sender: TObject; var Key: Char);
    procedure ConsultarExecute(Sender: TObject);
    procedure LimparWBExecute(Sender: TObject);
    procedure dbgToxDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DownExecute(Sender: TObject);
    procedure rvDSCPaginasGetRow(Connection: TRvCustomConnection);
    procedure edtRR1KeyPress(Sender: TObject; var Key: Char);
    procedure edtRR2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    // desativar botao direito do mouse no TWebbrowser
    FOleInPlaceActiveObject: IOleInPlaceActiveObject;
    procedure MsgHandler(var Msg: TMsg; var Handled: Boolean);
  public
    { Public declarations }
    idClassificacao, Imagem : String;
    published
      procedure atualiza;
      procedure abre(sender: TObject);
      procedure insere(sender: TObject);
      procedure exclui(sender: TObject);

    procedure ValidaCombo(cb:TComboBox);  // valida as informaçoes dos combos ao sair OnExit
    procedure SaveCombo;                  // salva as informaçoes dos comboboxes
    procedure GetTextCombo;               // recupera as informaçoes contidas na tabela do banco e insere nos comboboxes.
    procedure LimpaCds;                   // cancelUpdates em todos os cds temporarios do DM
    Procedure ShowJpg;                    // mostra a imagem salva na tabela no TImage
    procedure SaveBlob(cds : TClientDataSet; Campo : TBlobField; Path: string);  // salva qualquer tipo de arquivo em campos blob
    procedure VerificaResult;             // verifica o resultado da corrosividade e reatividade
    procedure ClassificaTudo;             // faz a classificaçao geral (tudo = origem conhecida e desconhecida)
    procedure GetSugestao;                // sugestão do sistema para qua a classe mais adequada a escolher
    procedure ResetComponents;            // reseta os valores dos componentes

    // procedures responsáveis pela consulta e classificaçao dos residuos de origem desconhecida ------------
    procedure GetEnsaiosFeitos;     // verifica quais os ensaios foram feitos
    procedure GetAvaliacaoEnsaios;  // faz avaliaçao (anexos) dos resultados obtidos nos ensaios feitos
    procedure ClassificarEnsaios;   // classifica os ensaios feitos
    //-------------------------------------------------------------------------------------------------------


    // procedures responsáveis pela consulta dos residuos de origem conhecida -------------------------------
    procedure InsTermosCds;       // insere arquivos nas tabelas temporarias (memória) dos ClientDataSet's
    procedure PreConsulta;        // faz a pre-consulta dos residuos e substancias informadas pelo usuário
    procedure AtualizaCdsSubs;    // faz um select *.* na tabela substancias
    procedure AtualizaCdsRes;     // faz um select *.* na tabela residuos
    procedure GeraHTML;           // Gera o relatório em HTML, resultando da "procedure preconsulta"
    procedure ExcluiHTML;         // exclui toos os arquivos de extensao .html contidos na pasta \relat do sistema
    procedure AtualizaCdsEmpresa; // faz um select *.* via parametros na tabela empresa
    //-------------------------------------------------------------------------------------------------------

    // procedures responsaveis por recuperar as informaçoes do Twebrowser e pré-classificar elas.
    procedure ProcuraTexto(aText: string);  // procura uma string em arquivo HTML
    procedure GetHTMLValues;                // recupera o valor dos componentes checados no TWebbrowser pelo usuário na pre-classificação.(geralmente esse valor é o código dele na tabela do banco)
    procedure GetResiduo;                   // recupera as informações do residuo contidas na tabela NBR_10004_RES, atravez do DM.CdsResiduoID
    procedure GetOrigem;                    // procura pela origem do resíduo dentro do campo resíduo da tabela NBR_10004_RES
    Procedure GetAvaliacaoHTML;             // faz avaliaçao dos resultados recuperados do relatorio HTML (anexo A e B da norma)
    procedure ClassificarHTML;              // Classifica as informaçoes recuperadas do HTML e avaliadas pelo procedure GetAvaliacaoHTML
    procedure insereSubs(ID, Subs, Resultado, IDAnF,Lim, Font: string);// insere as substancias e resultados no DM.cdssubstancias
    //-------------------------------------------------------------------------------------------------------

    // procedures do laudo ----------------------------------------------------------------------------------
    procedure JPGtoBMPFoto;
    procedure JPGtoBMPLogo;
    Procedure ChamaRelatorio;
    procedure GetDadosRelat;
    procedure ExcluiBMP;
    //-------------------------------------------------------------------------------------------------------

  end;

var
  frmCadClassificacao: TfrmCadClassificacao;
  AchouR, AchouS : Boolean;
  MouseHook: THandle;



  // variaveis responsaveis por recuperar as informaçoes do Twebrowser e pré-classificar elas.
  Anexo_Residuo  : String;  // anexo
  DA_Residuo     : String;  // descrição do anexo
  CA_Residuo     : String;  // carater do anexo
  CI_Residuo     : String;  // código de identificação do resíduo
  RP_Residuo     : String;  // Residuo perigoso
  ConstP_Residuo : String;  // constituinte perigoso
  CaracP_Residuo : String;  // caracteristica de periculosidade
  FG_Residuo     : String;  // fonte geradora
  origem_residuo : string;  // origem do resíduo
  //-----------------------------------------------------------------------------------------

implementation

uses UPrincipal, Udm, UFuncoes, uConsClassificacao;

{$R *.dfm}

function MouseProc(nCode: Integer; wParam, lParam: Longint): LongInt; stdcall;
//desabilitando o menu popup do Webbrowser
//http://delphi.about.com/cs/adptips2004/a/bltip0504_3.htm
var
   classbuf: array[0..255] of Char;
const
   ie = 'Internet Explorer_Server';
begin
   case nCode < 0 of
     True:
       Result := CallNextHookEx(MouseHook, nCode, wParam, lParam);
     False:
         case wParam of
           WM_RBUTTONDOWN, WM_RBUTTONUP:
             begin
               GetClassName(PMOUSEHOOKSTRUCT(lParam)^.HWND, classbuf, SizeOf(classbuf)) ;
               if lstrcmp(@classbuf[0], @ie[1]) = 0 then
                 Result := HC_SKIP
               else
                 Result := CallNextHookEx(MouseHook, nCode, wParam, lParam) ;
             end
             else
             begin
               Result := CallNextHookEx(MouseHook, nCode, wParam, lParam) ;
             end;
         end; //case wParam
   end; //case nCode 
end;    (*MouseProc*)


procedure TfrmCadClassificacao.AtualizaCdsRes;
begin
  DM.Conexao.Open;
  try
    DM.cdsRClasfRes.Close;
    DM.cdsRClasfRes.CommandText := 'select * from NBR10004_RES';
    DM.cdsRClasfRes.Open;
  finally
    DM.Conexao.Close;
  end;
end;

procedure TfrmCadClassificacao.AtualizaCdsSubs;
begin
  DM.Conexao.Open;
  try
    DM.cdsRClasfSubs.Close;
    DM.cdsRClasfSubs.CommandText := 'select * from NBR10004_SUBS';
    DM.cdsRClasfSubs.Open;
  finally
    DM.Conexao.Close;
  end;
end;

procedure TfrmCadClassificacao.CancelarExecute(Sender: TObject);
begin
  inherited;  
  idClassificacao := '';
  Close;
end;

procedure TfrmCadClassificacao.cbC1Exit(Sender: TObject);
begin
  inherited;
  ValidaCombo(cbC1);
end;

procedure TfrmCadClassificacao.cbClasseEnter(Sender: TObject);
begin
  inherited;
  DM.cdsRClasse.First;
  while not DM.cdsRClasse.Eof do
  begin
    if not StrIsInList(cbClasse.items,DM.cdsRClasseclasse.AsString) then // verifica se a string ja existe no ComboBox, caso nao exista entao adiciona ela no cb
    begin
      cbClasse.Items.Add(DM.cdsRClasseclasse.AsString);
      DM.cdsRClasse.Next;
    end
      else
        begin
          DM.cdsRClasse.Next;
        end;
  end;
  


end;

procedure TfrmCadClassificacao.cbI1Exit(Sender: TObject);
begin
  inherited;
  ValidaCombo(cbI1);
end;

procedure TfrmCadClassificacao.cbI2Exit(Sender: TObject);
begin
  inherited;
  ValidaCombo(cbI2);
end;

procedure TfrmCadClassificacao.cbI3Exit(Sender: TObject);
begin
  inherited;
  ValidaCombo(cbI3);
end;

procedure TfrmCadClassificacao.cbI4Exit(Sender: TObject);
begin
  inherited;
  ValidaCombo(cbI4);
end;

procedure TfrmCadClassificacao.cbP1Exit(Sender: TObject);
begin
  inherited;
  ValidaCombo(cbP1);
end;

procedure TfrmCadClassificacao.cbP2Exit(Sender: TObject);
begin
  inherited;
  ValidaCombo(cbP2);
end;

procedure TfrmCadClassificacao.cbR1Exit(Sender: TObject);
begin
  inherited;
  ValidaCombo(cbR1);
end;

procedure TfrmCadClassificacao.cbR2Exit(Sender: TObject);
begin
  inherited;
  ValidaCombo(cbR2);
end;

procedure TfrmCadClassificacao.cbR3Exit(Sender: TObject);
begin
  inherited;
  ValidaCombo(cbR3);
end;

procedure TfrmCadClassificacao.cbR4Exit(Sender: TObject);
begin
  inherited;
  ValidaCombo(cbR4);
end;

procedure TfrmCadClassificacao.cbR5Exit(Sender: TObject);
begin
  inherited;
  ValidaCombo(cbR5);
end;

procedure TfrmCadClassificacao.cbR6Exit(Sender: TObject);
begin
  inherited;
  ValidaCombo(cbR6);
end;

procedure TfrmCadClassificacao.cbR7Exit(Sender: TObject);
begin
  inherited;
  ValidaCombo(cbR7);
end;

procedure TfrmCadClassificacao.ChamaRelatorio;
begin

  // essa tabela serve só pra rotina das paginas do relatório funcionarem
  cdsPaginas.CancelUpdates;
  cdsPaginas.Close;
  cdsPaginas.Open;
  cdsPaginas.Insert;
  cdsPaginaspaginas.AsString := 'Sim';
  cdsPaginas.Post;
  // --------------------------------------------------------------------

  GetDadosRelat;

  RvPLaudo.ProjectFile  := ExtractFilePath(Application.ExeName)+ 'Laudo.rav';
  RvPLaudo.Open;
  RvPLaudo.SelectReport('RptLaudo', false);
  RvPLaudo.Execute;
  RvPLaudo.Close;


end;

procedure TfrmCadClassificacao.ClassificarEnsaios;
begin
  DM.Conexao.Open;
  try
    // caso tenha sido feito o ensaio de inflamabilidade
    if DM.cdsClassf04INFLAMABILIDADE.AsString = 'Sim' then
    begin
      // caso seja inflamavel
      if DM.cdsClassf04INFLAMAVEL.AsString = 'Sim' then
      begin
        DM.cdsRClasse.Open;
        DM.cdsRClasse.Insert;
        DM.cdsRClasseEnsaio.AsString := 'Inflamabilidade';
        DM.cdsRClasseClasse.AsString := 'Resíduo Classe I - Perigoso';
        DM.cdsRClasse.Post;
      end
        else
          begin
            DM.cdsRClasse.Open;
            DM.cdsRClasse.Insert;
            DM.cdsRClasseEnsaio.AsString := 'Inflamabilidade';
            DM.cdsRClasseClasse.AsString := 'Resíduo Classe II - Não Perigoso';
            DM.cdsRClasse.Post;
          end;
    end;

      // caso tenha sido feito o ensaio de corrosividade
      if DM.cdsClassf04CORROSIVIDADE.AsString = 'Sim' then
      begin
        // caso seja corrosivo
        if DM.cdsClassf04CORROSIVO.AsString = 'Sim' then
        begin
          DM.cdsRClasse.Open;
          DM.cdsRClasse.Insert;
          DM.cdsRClasseEnsaio.AsString := 'Corrosividade';
          DM.cdsRClasseClasse.AsString := 'Resíduo Classe I - Perigoso';
          DM.cdsRClasse.Post;
        end
          else
            begin
              DM.cdsRClasse.Open;
              DM.cdsRClasse.Insert;
              DM.cdsRClasseEnsaio.AsString := 'Corrosividade';
              DM.cdsRClasseClasse.AsString := 'Resíduo Classe II - Não Perigoso';
              DM.cdsRClasse.Post;
            end;
      end;

        // caso tenha sido feito o ensaio de reatividade
        if DM.cdsClassf04REATIVIDADE.AsString = 'Sim' then
        begin
          // caso seja reativo
          if DM.cdsClassf04REATIVO.AsString = 'Sim' then
          begin
            DM.cdsRClasse.Open;
            DM.cdsRClasse.Insert;
            DM.cdsRClasseEnsaio.AsString := 'Reatividade';
            DM.cdsRClasseClasse.AsString := 'Resíduo Classe I - Perigoso';
            DM.cdsRClasse.Post;
          end
            else
              begin
                DM.cdsRClasse.Open;
                DM.cdsRClasse.Insert;
                DM.cdsRClasseEnsaio.AsString := 'Reatividade';
                DM.cdsRClasseClasse.AsString := 'Resíduo Classe II - Não Perigoso';
                DM.cdsRClasse.Post;
              end;
        end;

          // caso tenha sido feito o ensaio de toxicidade
          if DM.cdsClassf04TOXICIDADE.AsString = 'Sim' then
          begin
            // caso seja toxico
            if DM.cdsClassf04TOXICO.AsString = 'Sim' then
            begin
              DM.cdsRClasse.Open;
              DM.cdsRClasse.Insert;
              DM.cdsRClasseEnsaio.AsString := 'Toxicidade';
              DM.cdsRClasseClasse.AsString := 'Resíduo Classe I - Perigoso';
              DM.cdsRClasse.Post;
            end
              else
                begin
                  DM.cdsRClasse.Open;
                  DM.cdsRClasse.Insert;
                  DM.cdsRClasseEnsaio.AsString := 'Toxicidade';
                  DM.cdsRClasseClasse.AsString := 'Resíduo Classe II - Não Perigoso';
                  DM.cdsRClasse.Post;
                end;
          end;

        // caso tenha sido feito o ensaio de patogenicidade
        if DM.cdsClassf04PATOGENICIDADE.AsString = 'Sim' then
        begin
          // caso seja patogenico
          if DM.cdsClassf04PATOGENICO.AsString = 'Sim' then
          begin
            DM.cdsRClasse.Open;
            DM.cdsRClasse.Insert;
            DM.cdsRClasseEnsaio.AsString := 'Patogenicidade';
            DM.cdsRClasseClasse.AsString := 'Resíduo Classe I - Perigoso';
            DM.cdsRClasse.Post;
          end
            else
              begin
                DM.cdsRClasse.Open;
                DM.cdsRClasse.Insert;
                DM.cdsRClasseEnsaio.AsString := 'Patogenicidade';
                DM.cdsRClasseClasse.AsString := 'Resíduo Classe II - Não Perigoso';
                DM.cdsRClasse.Post;
              end;
        end;

      // caso tenha sido feito o ensaio de solubilidade
      if DM.cdsClassf04SOLUBILIDADE.AsString = 'Sim' then
      begin
        // caso exceda anexo G
        if DM.cdsClassf04SOLUVEL.AsString = 'Sim' then
        begin
          DM.cdsRClasse.Open;
          DM.cdsRClasse.Insert;
          DM.cdsRClasseEnsaio.AsString := 'Solubilidade';
          DM.cdsRClasseClasse.AsString := 'Resíduo Classe II A - Não Inerte';
          DM.cdsRClasse.Post;
        end
          else
            begin
              // caso nao exceda anexo G
              DM.cdsRClasse.Open;
              DM.cdsRClasse.Insert;
              DM.cdsRClasseEnsaio.AsString := 'Solubilidade';
              DM.cdsRClasseClasse.AsString := 'Resíduo Classe II B - Inerte';
              DM.cdsRClasse.Post;
            end;
        end;
  finally
    DM.Conexao.Close;
  end;
end;

procedure TfrmCadClassificacao.ClassificarHTML;
var
anexo,carater  : string;
begin
      GetHTMLValues;
      GetOrigem;
      // verifica se tem algo no cdsResiduo, se tiver é sinal de que algum resíduo
      // foi selecionado, do contrário cria a exceção
      if DM.cdsResiduo.RecordCount > 0 then
      begin
        GetAvaliacaoHTML;
        // verificação para saber se o resíduo é do anexo H, se for tem que
        // saber se está contaminado com alguma substância
        DM.cdsResiduo.First;
        DM.Conexao.Open;
        try
          with DM.cdsRRes do
          begin
            Close;
            CommandText := 'select * from NBR10004_RES where ID = ' + QuotedStr(DM.cdsResiduoID.AsString);
            Open;
          end;

          with DM.cdsRDesc do
          begin
            Close;
            CommandText := 'select * from NBR10004_DESC where ID = ' + QuotedStr(DM.cdsRResID_DESCRICAO.AsString);
            Open;
          end;
          anexo   := UpperCase(DM.cdsRDescANEXO.AsString);
          carater := DM.cdsRDescCARATER.AsString;

        finally
          DM.Conexao.Close;
        end;

          if anexo = 'H' then // caso o resíduo seja do anexo H
          begin
            if DM.cdsSubstancias.RecordCount > 0 then // caso o residuo esteja contaminado
            begin                                     // com alguma substancia entao classe = 1
              try
                DM.cdsSubstancias.First;
                while not DM.cdsSubstancias.Eof  do
                begin
                  if DM.cdsSubstanciasResultado.AsString <> '' then   // caso seja informado um resultado para a substancia, fazer verificação se a mesma existe no anexo F e comparar limites
                  begin
                      if DM.cdsSubstanciasResultado.AsFloat <= DM.cdsSubstanciasLimite.AsFloat then // caso não exceda o limite do anexo F entao (classe II - não perigosa)
                      begin
                        DM.cdsSubsClasse.Open;
                        DM.cdsSubsClasse.Insert;
                        DM.cdsSubsClasseperigosa.AsBoolean := false;
                        DM.cdsSubsClasse.Post;
                      end;

                      if DM.cdsSubstanciasResultado.AsFloat > DM.cdsSubstanciasLimite.AsFloat then // caso exceda o limite do anexo F entao (classe I - perigosa)
                      begin
                        DM.cdsSubsClasse.Open;
                        DM.cdsSubsClasse.Insert;
                        DM.cdsSubsClasseperigosa.AsBoolean := true;
                        DM.cdsSubsClasse.Post;
                        ShowMessage('A substância '+ DM.cdsSubstanciasSubstancia.AsString + ', cujo limite é: ' + DM.cdsSubstanciasLimite.AsString + ' mg/L, com resultado: ' + DM.cdsSubstanciasResultado.AsString + ' mg/L, ' +#13+ 'classifica o resíduo como Perigoso - Classe I');
                      end;
                  end
                    else   // caso nao seja informado um resultado a substância é classificada como perigosa
                      begin
                        DM.cdsSubsClasse.Open;
                        DM.cdsSubsClasse.Insert;
                        DM.cdsSubsClasseperigosa.AsBoolean := true;
                        DM.cdsSubsClasse.Post;
                        ShowMessage('Foi identificado a substância ' + DM.cdsSubstanciasSubstancia.AsString + ', com concentração desconhecida, podendo apresentar toxicidade em potencial. Portanto essa substância classifica o resíduo como Perigoso Classe I.');
                      end;
                  DM.cdsSubstancias.Next;
                end;

              finally
                DM.Conexao.Close;
              end;

              if DM.cdsSubsClasse.Locate('perigosa',true,[loCaseInsensitive]) = True then // caso encontre um true no cdsSubsClasse, é sinal de que a substancia é perigosa
              begin
                DM.cdsRClasse.Open;
                DM.cdsRClasse.Insert;
                DM.cdsRClasseEnsaio.AsString := 'Consulta aos anexos';
                DM.cdsRClasseClasse.AsString := 'Resíduo Classe I - Perigoso';
                DM.cdsRClasse.Post;
              end
                else  // caso nao encontre um true no cdsSubsClasse, é sinal de que a substancia nao é perigosa
                  begin
                    DM.cdsRClasse.Open;
                    DM.cdsRClasse.Insert;
                    DM.cdsRClasseEnsaio.AsString := 'Consulta aos anexos';
                    DM.cdsRClasseClasse.AsString := 'Resíduo Classe II - Não Perigoso';
                    DM.cdsRClasse.Post;
                  end;
            end
              else
                begin
                  // caso o residuo não esteja contaminado com alguma substancia entao classe = 0
                  DM.cdsRClasse.Open;
                  DM.cdsRClasse.Insert;
                  DM.cdsRClasseEnsaio.AsString := 'Consulta aos anexos';
                  DM.cdsRClasseClasse.AsString := 'Resíduo Classe II - Não Perigoso';
                  DM.cdsRClasse.Post;
                end;
          end
            else
              begin
                // caso o resíduo não seja do anexo H
                if (anexo <> 'H') and (LowerCase(carater) = 'informativo') then // verifica se o resíduo é de carater informativo (caso ele nao seja de origem da NBR 10004:2004)
                begin
                  DM.cdsRClasse.Open;
                  DM.cdsRClasse.Insert;
                  DM.cdsRClasseEnsaio.AsString := 'Consulta aos anexos';
                  DM.cdsRClasseClasse.AsString := 'Resíduo Classe II - Não Perigoso';
                  DM.cdsRClasse.Post;
                end
                  else
                    begin  // caso o resíduo seja de carater normativo}
                      DM.cdsRClasse.Open;
                      DM.cdsRClasse.Insert;
                      DM.cdsRClasseEnsaio.AsString := 'Consulta aos anexos';
                      DM.cdsRClasseClasse.AsString := 'Resíduo Classe I - Perigoso';
                      DM.cdsRClasse.Post;
                    end;
              end;
        

      end;

end;

procedure TfrmCadClassificacao.ClassificaTudo;
begin
  // classificar o HTML ---------------------------
  DM.cdsSubstancias.CancelUpdates;
  DM.cdsResiduo.CancelUpdates;
  DM.cdsSubsClasse.CancelUpdates;
  DM.cdsRare.CancelUpdates;

  if not DM.cdsClassf01HTML.IsNull then
  begin
    ClassificarHTML;
  end;
  //-----------------------------------------------


  // residuo de origem desconhecida (ensaios) -----
  GetAvaliacaoEnsaios;
  ClassificarEnsaios;
  //-----------------------------------------------


  // RadioGroup responsavel pela coleta ----------------------------------------------
  if DM.cdsClassf01COLETA.AsString = 'interessado' then
  begin
    if DM.cdsClassf01.State in [dsEdit]  then
    begin
      DM.cdsClassf01CONSIDERACOES.AsString := 'A amostra ensaiada foi coletada pelo cliente, sendo que é de inteira responsabilidade do mesmo a representatividade e a identificação do material.';
    end
      else
        begin
          DM.cdsClassf01.Edit;
          DM.cdsClassf01CONSIDERACOES.AsString := 'A amostra ensaiada foi coletada pelo cliente, sendo que é de inteira responsabilidade do mesmo a representatividade e a identificação do material.';
        end;
  end;
  //---------------------------------------------------------------------------------


  // avaliaçao dos resultados (Anexos) ------------
  mmAnexos.Lines.Clear;
  cbClasse.Clear;
  DM.cdsRare.Open;
  DM.cdsRare.First;
  //caso exista avaliação dos resultados do ensaio
  if DM.cdsRare.RecordCount > 0 then
  begin
    while not DM.cdsRare.Eof do
    begin
      mmAnexos.Lines.Add(DM.cdsRareEnsaio.AsString +' '+DM.cdsRareAvaliacao.AsString + #13);
      DM.cdsRare.Next;
    end;

    // verifica o quanto de informaçao ainda pode ser inserido no memo
    if StrToInt(lblAnexos.Caption) <= 15 then
    begin
        lblAnexos.Font.Color := clred;
        lblAnexos.Caption    := IntToStr(10000 - Length(mmAnexos.Lines.Text))
    end
      else
          begin
              lblAnexos.Font.Color := clGray;
              lblAnexos.Caption    := IntToStr(10000 - Length(mmAnexos.Lines.Text))
          end;

  end;
  //-----------------------------------------------
end;

procedure TfrmCadClassificacao.ConsultarExecute(Sender: TObject);
begin
  inherited;
  LimpaCds;
    try
      InsTermosCds; // insere arquivos nas tabelas temporarias (memória) dos ClientDataSet's
      PreConsulta;  //faz a pre-consulta

      if achouR = true then
      begin
        GeraHTML;     //gera o pre-relatório
      end;

    except on exception do
    LimpaCds;
    end;
end;

procedure TfrmCadClassificacao.dbgSolColExit(Sender: TObject);
begin
  inherited;
  // recupera o valor do limite maximo
  if DM.cdsClassf03.State in [dsEdit, dsInsert]  then
    begin
      if (dbgSol.Fields[0].Text <> '') then
      begin
        DM.cdsClassf03LIMITE.AsString  := DM.cdsRAnG_LIMITE_MAXIMO.AsString;
      end;
    end;
end;

procedure TfrmCadClassificacao.dbgSolDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;  

   // aqui é realizado o calculo. todos os campos sao obrigatorios para o calculo funcionar
   if (DM.cdsClassf03LIMITE.AsString <> '') and (DM.cdsClassf03LQ.AsString <> '') and (DM.cdsClassf03RESULTADO.AsString <> '') then
   begin
     if (DM.cdsClassf03RESULTADO.AsString <> '< L.Q') and (DM.cdsClassf03RESULTADO.AsString <> '<') and (DM.cdsClassf03RESULTADO.AsString <> 'NA') and (DM.cdsClassf03RESULTADO.AsString <> 'AN') then
     begin

      if StrToFloat(DM.cdsClassf03RESULTADO.AsString) > StrToFloat(DM.cdsClassf03LIMITE.AsString) then // se o resultado for maior que o limite
      begin
        dbgSol.Canvas.Font.Color  := clWhite;
        dbgSol.Canvas.Brush.Color := clblue;
        dbgSol.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end;

      if StrToFloat(DM.cdsClassf03RESULTADO.AsString) < StrToFloat(DM.cdsClassf03LQ.AsString) then  // se o resultado for menor que o LQ
      begin
        DM.cdsClassf03.Edit;
        DM.cdsClassf03RESULTADO.AsString := '< L.Q';
      end;

     end;
   end;

   if DM.cdsClassf03RESULTADO.AsString = '< L.Q' then  // caso o resultado seja < L.Q entao pinta de azul
    begin
      dbgSol.Canvas.Font.Color  := clBlue;
      dbgSol.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;

end;

procedure TfrmCadClassificacao.dbgSolKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  // ponto decimal (Validação)
  if Key in [',','.'] then Key := DecimalSeparator;

  if (dbgSol.Fields[1].Text <> '') or (dbgSol.Fields[2].Text <> '') or (dbgSol.Fields[3].Text <> '') then
  begin
    // Apenas Numeros (Validação)
    If not( key in[',','.','0'..'9','<','N','A',#8] ) then
    begin
      beep;{somente delphi 2.0 ou >}
      key:=#0;
    end;
  end;

  if Key in ['<'] then
  begin
    key := ' ';
    DM.cdsClassf03.Edit;
    DM.cdsClassf03RESULTADO.AsString := '< L.Q';
  end;
  
end;

procedure TfrmCadClassificacao.dbgToxColExit(Sender: TObject);
begin
  inherited;
  // recupera o valor do limite maximo
  if DM.cdsClassf02.State in [dsEdit, dsInsert]  then
  begin
    if (dbgTox.Fields[0].Text <> '') then
    begin
      DM.cdsClassf02LIMITE.AsString := DM.cdsRAnF_LIMITE_MAXIMO.AsString;
    end;    
  end;

  {if dbgTox.SelectedIndex = 3 then // ao sair da ultima coluna
    begin
      if (DM.cdsClassf02RESULTADO.AsString = '') then
      begin
        Raise Exception.Create('O campo Resultado é Obrigatório');
      end;
    end;}

end;

procedure TfrmCadClassificacao.dbgToxDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;

   // aqui é realizado o calculo. todos os campos sao obrigatorios para o calculo funcionar
   if (DM.cdsClassf02LIMITE.AsString <> '') and (DM.cdsClassf02LQ.AsString <> '') and (DM.cdsClassf02RESULTADO.AsString <> '') then
   begin
     if (DM.cdsClassf02RESULTADO.AsString <> '< L.Q') and (DM.cdsClassf02RESULTADO.AsString <> '<') and (DM.cdsClassf02RESULTADO.AsString <> 'NA') and (DM.cdsClassf02RESULTADO.AsString <> 'AN') then
     begin

      if StrToFloat(DM.cdsClassf02RESULTADO.AsString) > StrToFloat(DM.cdsClassf02LIMITE.AsString) then // se o resultado for maior que o limite
      begin
        dbgTox.Canvas.Font.Color  := clWhite;
        dbgTox.Canvas.Brush.Color := clRed;
        dbgTox.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end;

      if StrToFloat(DM.cdsClassf02RESULTADO.AsString) < StrToFloat(DM.cdsClassf02LQ.AsString) then  // se o resultado for menor que o LQ
      begin
        DM.cdsClassf02.Edit;
        DM.cdsClassf02RESULTADO.AsString := '< L.Q';
      end;

     end;
   end;

   if DM.cdsClassf02RESULTADO.AsString = '< L.Q' then  // caso o resultado seja < L.Q entao pinta de azul
    begin
      dbgTox.Canvas.Font.Color  := clBlue;
      dbgTox.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;


    

end;

procedure TfrmCadClassificacao.dbgToxKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  // ponto decimal (Validação)
  if Key in [',','.'] then Key := DecimalSeparator;

  if (dbgTox.Fields[1].Text <> '') or (dbgTox.Fields[2].Text <> '') or (dbgTox.Fields[3].Text <> '') then
  begin
    // Apenas Numeros (Validação)
    If not( key in[',','.','0'..'9','<','N','A','L','Q',#8] ) then
    begin
      beep;{somente delphi 2.0 ou >}
      key:=#0;
    end;
  end;

  
  if Key in ['<'] then
  begin
    key := ' ';
    DM.cdsClassf02.Edit;
    DM.cdsClassf02RESULTADO.AsString := '< L.Q';
  end;
  
end;

procedure TfrmCadClassificacao.DownExecute(Sender: TObject);
begin
  inherited;
  ChamaRelatorio;
end;

procedure TfrmCadClassificacao.edtCLQ1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  // Apenas Numeros (Validação)
  If not( key in[',','.','0'..'9','<','N','A',#8] ) then
  begin
  beep;{somente delphi 2.0 ou >}
  key:=#0;
  end;
  
  // ponto decimal (Validação)
  if Key in [',','.'] then Key := DecimalSeparator;

  if Key in ['<'] then
  begin
    key := ' ';
    DM.cdsClassf01.Edit;
    DM.cdsClassf01CORRR.AsString := '< L.Q';
  end;
end;

procedure TfrmCadClassificacao.edtCR1Exit(Sender: TObject);
begin
  inherited;
  VerificaResult;  

end;

procedure TfrmCadClassificacao.edtDataColetaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  FormataData(edtDataColeta);
end;

procedure TfrmCadClassificacao.edtDataEntradaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  FormataData(edtDataEntrada);
end;

procedure TfrmCadClassificacao.edtFQUKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  // ponto decimal (Validação)
  if Key in [',','.'] then Key := DecimalSeparator;
end;

procedure TfrmCadClassificacao.edtHoraColetaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  FormataHora(edtHoraColeta);
end;

procedure TfrmCadClassificacao.edtRKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    LimpaCds;
    try
      InsTermosCds; // insere arquivos nas tabelas temporarias (memória) dos ClientDataSet's
      PreConsulta;  //faz a pre-consulta

      if achouR = true then
      begin
        GeraHTML;     //gera o pre-relatório
      end;

    except on exception do
    LimpaCds;
    end;
  end;
end;

procedure TfrmCadClassificacao.edtRR1Exit(Sender: TObject);
begin
  inherited;
  VerificaResult;
end;

procedure TfrmCadClassificacao.edtRR1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  // Apenas Numeros (Validação)
  If not( key in[',','.','0'..'9','<','N','A',#8] ) then
  begin
  beep;{somente delphi 2.0 ou >}
  key:=#0;
  end;
  
  // ponto decimal (Validação)
  if Key in [',','.'] then Key := DecimalSeparator;

  if Key in ['<'] then
  begin
    key := ' ';
    DM.cdsClassf01.Edit;
    DM.cdsClassf01REAR1.AsString := '< L.Q';
  end;
end;

procedure TfrmCadClassificacao.edtRR2Exit(Sender: TObject);
begin
  inherited;
  VerificaResult;
end;

procedure TfrmCadClassificacao.edtRR2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  // Apenas Numeros (Validação)
  If not( key in[',','.','0'..'9','<','N','A',#8] ) then
  begin
  beep;{somente delphi 2.0 ou >}
  key:=#0;
  end;
  
  // ponto decimal (Validação)
  if Key in [',','.'] then Key := DecimalSeparator;

  if Key in ['<'] then
  begin
    key := ' ';
    DM.cdsClassf01.Edit;
    DM.cdsClassf01REAR2.AsString := '< L.Q';
  end;
end;

procedure TfrmCadClassificacao.edtTtsKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmCadClassificacao.exclui(sender: TObject);
var exclui : integer;
begin
    exclui := Application.MessageBox('Deseja excluir esse registro?', 'Confirme', mb_yesno);
    if exclui = IDYES Then
    begin
        DM.Conexao.Open;
        try

          with DM.cdsClassf02 do
          begin
              First;
              while not Eof do // deleta os parametros da amostra que vai ser excluida
              begin
                delete;
                ApplyUpdates(0);
              end;
          end;

          with DM.cdsClassf03 do
          begin
              First;
              while not Eof do // deleta os parametros da amostra que vai ser excluida
              begin
                delete;
                ApplyUpdates(0);
              end;
          end;

          with DM.cdsClassf04 do
          begin
              First;
              while not Eof do // deleta os parametros da amostra que vai ser excluida
              begin
                delete;
                ApplyUpdates(0);
              end;
          end;

          with DM.cdsClassf01 do
          begin
              Open;
              delete;
              ApplyUpdates(0);
          end;

          frmConsClassificacao.atualiza;
        finally
          DM.Conexao.Close;
        end;
    end;
    close;
end;


procedure TfrmCadClassificacao.ExcluiBMP;
var
  SR: TSearchRec;
  I: integer;
  Dir : String;
begin
  Dir := ExtractFilePath(Application.ExeName)+'relat';
  I := FindFirst(Dir + '\*.bmp', faAnyFile, SR);
  while I = 0 do
  begin
    if (SR.Attr and faDirectory) <> faDirectory then
    if not DeleteFile(Dir + '\' + SR.Name) then
      ShowMessage(Dir + '\' + SR.Name);
      I := FindNext(SR);
  end;

end;

procedure TfrmCadClassificacao.ExcluiHTML;
var
  SR: TSearchRec;
  I: integer;
  Dir : String;
begin
  Dir := ExtractFilePath(Application.ExeName)+'relat';
  I := FindFirst(Dir + '\*.html', faAnyFile, SR);
  while I = 0 do
  begin
    if (SR.Attr and faDirectory) <> faDirectory then
    if not DeleteFile(Dir + '\' + SR.Name) then
      ShowMessage(Dir + '\' + SR.Name);
      I := FindNext(SR);
  end;

end;

procedure TfrmCadClassificacao.ExcluiParamSolExecute(Sender: TObject);
var
exclui: integer;
begin
  inherited;
  exclui := Application.MessageBox('Deseja excluir esse(s) registro(s)?', 'Confirme', mb_yesno);
  if exclui = IDYES Then
  begin
   DM.Conexao.Open;
   try
    with DM.cdsClassf03 do
    begin
      Open;
      delete;
    end;
   finally
      DM.Conexao.Close;
    end;
      end
        else
          begin
            DM.cdsClassf03.CancelUpdates;
          end;

end;

procedure TfrmCadClassificacao.ExcluiParamToxExecute(Sender: TObject);
var
exclui: integer;
begin
  inherited;
  exclui := Application.MessageBox('Deseja excluir esse(s) registro(s)?', 'Confirme', mb_yesno);
  if exclui = IDYES Then
  begin
   DM.Conexao.Open;
   try
    with DM.cdsClassf02 do
    begin
      Open;
      delete;
    end;
   finally
      DM.Conexao.Close;
    end;
      end
        else
          begin
            DM.cdsClassf02.CancelUpdates;
          end;

end;

procedure TfrmCadClassificacao.ExcluirExecute(Sender: TObject);
begin
  inherited;
  exclui(nil);
end;

procedure TfrmCadClassificacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  ExcluiHTML;
  ExcluiBMP;
  LimpaCds;
  atualiza;
end;

procedure TfrmCadClassificacao.FormShow(Sender: TObject);
begin
  inherited;
  abre(nil);
  //Application.OnMessage := MsgHandler;
  //MouseHook := SetWindowsHookEx(WH_MOUSE, MouseProc, 0, GetCurrentThreadId()) ;
  
  if StrToInt(lblDA.Caption) <= 15 then
    begin
        lblDA.Font.Color := clred;
        lblDA.Caption    := IntToStr(500 - Length(mmDA.Lines.Text))
    end
      else
          begin
              lblDA.Font.Color := clGray;
              lblDA.Caption    := IntToStr(500 - Length(mmDA.Lines.Text))
          end;


if StrToInt(lblMet.Caption) <= 15 then
    begin
        lblMet.Font.Color := clred;
        lblMet.Caption    := IntToStr(1000 - Length(mmMetodologia.Lines.Text))
    end
      else
          begin
              lblMet.Font.Color := clGray;
              lblMet.Caption    := IntToStr(1000 - Length(mmMetodologia.Lines.Text))
          end;


if StrToInt(lblObs.Caption) <= 15 then
    begin
        lblObs.Font.Color := clred;
        lblObs.Caption    := IntToStr(1000 - Length(mmObs.Lines.Text))
    end
      else
          begin
              lblObs.Font.Color := clGray;
              lblObs.Caption    := IntToStr(1000 - Length(mmObs.Lines.Text))
          end;


if StrToInt(lblAnexos.Caption) <= 15 then
    begin
        lblAnexos.Font.Color := clred;
        lblAnexos.Caption    := IntToStr(10000 - Length(mmAnexos.Lines.Text))
    end
      else
          begin
              lblAnexos.Font.Color := clGray;
              lblAnexos.Caption    := IntToStr(10000 - Length(mmAnexos.Lines.Text))
          end;


if StrToInt(lblAvaliacao.Caption) <= 15 then
    begin
        lblAvaliacao.Font.Color := clred;
        lblAvaliacao.Caption    := IntToStr(10000 - Length(mmAvaliacao.Lines.Text))
    end
      else
          begin
              lblAvaliacao.Font.Color := clGray;
              lblAvaliacao.Caption    := IntToStr(10000 - Length(mmAvaliacao.Lines.Text))
          end;


if StrToInt(lblConsideracoes.Caption) <= 15 then
    begin
        lblConsideracoes.Font.Color := clred;
        lblConsideracoes.Caption    := IntToStr(10000 - Length(mmConsideracoes.Lines.Text))
    end
      else
          begin
              lblConsideracoes.Font.Color := clGray;
              lblConsideracoes.Caption    := IntToStr(10000 - Length(mmConsideracoes.Lines.Text))
          end;
end;

procedure TfrmCadClassificacao.GeraHTML;
var
  htmlfile: TextFile;
  anexoH: Boolean;
  arquivo : string;
const
  wrap=#13+#10; {estamos declarando esta constante com o valor da tecla enter ...}
begin
    arquivo :=  ExtractFilePath(Application.ExeName)+'relat\ResiduoConhecido_nbr10004_'+FormatDateTime('ddmmyyy_',Date)+FormatDateTime('hhmmss',time)+'.html';
    AssignFile(HtmlFile, arquivo);
    Rewrite(HtmlFile);

    writeln(htmlfile, '<html><head>' + wrap + {estamos gerando o inicio do arquivo html}
        '<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />' +
        wrap + '<title>Sistema para classificação de resíduos</title>'+
        wrap + '<style type="text/css"> '+
        wrap + '<!--'+
        wrap + 'body,td,th {	font-family: tahoma;	font-size: 12px;}'+
        wrap +'a:link {	color: #003366;text-decoration: none;}'+
        wrap +'a:visited {	text-decoration: none;	color: #003366;}'+
        wrap +'a:hover {	text-decoration: underline;	color: #003366;}'+
        wrap +'a:active {	text-decoration: none;	color: #003366;}'+
        wrap +'body {	background-color: #F4F4F4;}'+
        wrap +'#borda-tabela {BORDER-RIGHT: #a3c5a4 1px solid; BORDER-TOP: #a3c5a4 1px solid; FONT-SIZE: 11px; MARGIN: 2px 2px 2px 2px; BORDER-LEFT: #a3c5a4 1px solid; WIDTH: 500px; BORDER-BOTTOM: #a3c5a4 1px solid; FONT-FAMILY: Tahoma}'  +
        wrap +'#hr {BORDER-RIGHT: #a3c5a4 ; BORDER-TOP: #a3c5a4; BORDER-LEFT: #a3c5a4;  BORDER-BOTTOM: #a3c5a4 solid;}' +
        wrap + '.style1 {	color: #666666;	font-weight: bold;} '+
        wrap + '--> '+
        wrap + '</style> '+
        wrap + '</head><body><div align="center">'+
        wrap + '<table width="500" cellspacing="0" border="0" bgcolor="#FFFFFF" id="borda-tabela"><tr><td colspan="2"><table width="500" border="0"><tr><td colspan="2"><div align="center"><img src="images/topo.jpg" /></div></td></tr> '+
        wrap + '<tr><td >&nbsp;</td><td width="68"></td></tr> '+ wrap);
        // verifica se tem algum registro no cdsResultRes. caso tenha, entao imprime o resultado na tabela html
        DM.cdsResultRes.First;
        if DM.cdsResultRes.RecordCount > 0 then
        begin
            writeln(htmlfile,'<tr><td colspan="2"><div align="center" class="style1"><font color ="#FF0000">Resíduo(s) encontrado(s) </font></div></td></tr><tr><td colspan="2">&nbsp;</td></tr></table> '+ wrap);

            DM.cdsResultRes.First;
            while not DM.cdsResultRes.Eof do
            begin

                writeln(htmlfile, '<div align="center"><table width="500" border="0" cellspacing="0" bordercolor="#E1E1E1" id="borda-tabela"><tr><td colspan="2" bgcolor="#F3F3F3"><div align="left"><p><label>'+ wrap);

                // radio button
                writeln(htmlfile, '<input type="radio" name="RG" value="'+DM.cdsResultResID.AsString+'" /> '+ wrap);

                // nome do resíduo
                writeln(htmlfile, '</label><font color="#003366"><B>'+DM.cdsResultResID_IDENTIFICACAO.AsString+'</B></font></div></td></tr><tr><td colspan="2">&nbsp;</td></tr> '+ wrap);

                if DM.cdsResultResANEXO.AsString <> 'H' then
                begin
                  // Anexo
                  writeln(htmlfile, '<tr><td colspan="2"><div align="justify"><strong>Anexo: </strong>'+DM.cdsResultResANEXO.AsString+' - ('+DM.cdsResultResCARATER.AsString+') - '+DM.cdsResultResDESCRICAO.AsString+'</div></td></tr><tr>'+ wrap);
                  anexoH := false;
                end
                else
                    begin
                        // Anexo
                        writeln(htmlfile, '<tr><td colspan="2"><div align="justify"><strong>Anexo: </strong><font color ="#FF0000">'+DM.cdsResultResANEXO.AsString+' - ('+DM.cdsResultResCARATER.AsString+') - '+DM.cdsResultResDESCRICAO.AsString+'</font> '+ wrap);
                        writeln(htmlfile, '<br>NOTA: Excluídos aqueles contaminados por substâncias constantes nos anexos C, D ou E e que apresentem características de periculosidade.</div></td></tr><tr>'+wrap);
                        anexoH := true;
                    end;

                writeln(htmlfile, '</tr><tr><td width="279"><div align="left"><strong>Fonte geradora:</strong> </div></td><td width="311"><div align="left"><strong>Caracter&iacute;stica de per&iacute;culosidade:</strong></div></td></tr><tr>'+ wrap);

                if DM.cdsResultResFONTE.AsString <> '' then
                //fonte geradora
                writeln(htmlfile, '<td><div align="justify">'+DM.cdsResultResFONTE.AsString+'</div></td> '+ wrap)
                else
                    //fonte geradora
                    writeln(htmlfile, '<td><div align="justify">Não consta.</div></td> '+ wrap);

                if DM.cdsResultResCARAC_PERIC.AsString <> '' then
                //caracteristica de periculosidade
                writeln(htmlfile, '<td><div align="justify">'+DM.cdsResultResCARAC_PERIC.AsString+'</div></td> '+ wrap)
                else
                    //caracteristica de periculosidade
                    writeln(htmlfile, '<td><div align="justify">Não consta.</div></td> '+ wrap);

                writeln(htmlfile, '</tr><tr><td colspan="2">&nbsp;</td></tr><tr><td colspan="2"><div align="left"><strong>Res&iacute;duo: </strong></div><div align="left"></div></td></tr><tr> '+ wrap);

                if DM.cdsResultResRP.AsString <> '' then
                //resíduo
                writeln(htmlfile, '<td colspan="2"><div align="justify">'+DM.cdsResultResRP.AsString+'</div></td>'+ wrap)
                else
                    //resíduo
                    writeln(htmlfile, '<td colspan="2"><div align="justify">Não consta.</div></td>'+ wrap);

                writeln(htmlfile, '</tr><tr><td colspan="2">&nbsp;</td></tr><tr><td colspan="2"><div align="left"><strong>Consituinte: </strong></div></td></tr><tr> '+ wrap);


                if DM.cdsResultResCP.AsString <> '' then
                // Constituinte
                writeln(htmlfile, '<td colspan="2"><div align="justify">'+DM.cdsResultResCP.AsString+'</div></td>'+ wrap)
                else
                    // Constituinte
                    writeln(htmlfile, '<td colspan="2"><div align="justify">Não consta.</div></td>'+ wrap);

                writeln(htmlfile, '</tr><tr><td colspan="2">&nbsp;</td></tr></table></div> '+ wrap);
                writeln(htmlfile, '<br> '+ wrap);
                writeln(htmlfile, ' '+ wrap);

                DM.cdsResultRes.Next;
            end;

            // verifica se tem algum registro no cdsResultSubs. caso tenha, entao imprime o resultado na tabela html
            DM.cdsResultSubs.First;
            if DM.cdsResultSubs.RecordCount > 0 then
            begin
                writeln(htmlfile, '<tr><td colspan="2">&nbsp;</td></tr><tr><td colspan="2"><div align="center"><span class="style3"><font color ="#FF0000"><b>Substância(s) encontrada(s)</b></font> </span></div></td></tr><tr><td colspan="2">&nbsp;</td></tr>  ' + wrap);

                DM.cdsResultSubs.First;
                while not DM.cdsResultSubs.Eof do
                begin
                    writeln(htmlfile, '<tr><td colspan="2"><table width="500" cellspacing="0" border="0" id="borda-tabela"><tr><td bgcolor="#F3F3F3"><div align="left"><p><label>  ' + wrap);
                    //CheckBox
                    writeln(htmlfile, '<input type="checkbox" name="CB" value="'+DM.cdsResultSubsID.AsString+'" /></label>  ' + wrap);
                    //Substância
                    writeln(htmlfile, '<font color="#003366"><b>'+DM.cdsResultSubsSUBSTANCIA.AsString+'</b></font> </p></div></td></tr>  ' + wrap);
                    //Anexo
                      writeln(htmlfile, '<tr><td><div align="justify"><strong>Anexo: </strong>'+DM.cdsResultSubsANEXO.AsString+' - ('+DM.cdsResultSubsCARATER.AsString+') - '+DM.cdsResultSubsDESCRICAO.AsString+'</div></td></tr>  ' + wrap);

                    if DM.cdsResultSubsID_IDENTIFICACAO.AsString <> '' then
                    //ID Identificação
                    writeln(htmlfile, '<tr><td><div align="justify"><strong>Código de identificação: </strong>'+DM.cdsResultSubsID_IDENTIFICACAO.AsString+'</div></td></tr>  ' + wrap)
                    else
                        //CAS
                        writeln(htmlfile, '<tr><td><div align="justify"><strong>Código de identificação: </strong>Não consta</div></td></tr>  ' + wrap);

                    if DM.cdsResultSubsCAS.AsString <> '' then
                    //CAS
                    writeln(htmlfile, '<tr><td><div align="justify"><strong>CAS (Chemical Abstract Subtance): </strong>'+DM.cdsResultSubsCAS.AsString+'</div></td></tr>  ' + wrap)
                    else
                        //CAS
                        writeln(htmlfile, '<tr><td><div align="justify"><strong>CAS (Chemical Abstract Subtance): </strong>Não consta.</div></td></tr>  ' + wrap);


                    if DM.cdsResultSubsOUTRA_DENOMINACAO.AsString <> '' then
                    //Outra denominação
                    writeln(htmlfile, '<tr><td><div align="justify"><strong>Outra denominação</strong>: '+DM.cdsResultSubsOUTRA_DENOMINACAO.AsString+'</div><div align="left"></div></td></tr>  ' + wrap)
                    else
                        begin
                            //Outra denominação
                            writeln(htmlfile, '<tr><td><div align="justify"><strong>Outra denominação: </strong>Não consta.</div><div align="left"></div></td></tr>  ' + wrap);
                        end;

                    // resultado do ensaio (FAZER VERIFICAÇÃO SE É DO ANEXO H, SE FOR ELE APARECE DO CONTRARIO NAO APARECE)
                    if anexoH = true then
                    begin
                      // verifica se a substancia existe no anexo F
                      DM.Conexao.Open;
                      try
                        with DM.cdsRAnF do
                        begin
                          Close;
                          CommandText := 'select *  from NBR10004_ANF  WHERE PARAMETRO = ' + QuotedStr(DM.cdsResultSubsSUBSTANCIA.AsString);
                          Open;
                        end;

                        if DM.cdsRAnF.RecordCount > 0 then  // caso a substancia exista no Anexo F
                        begin
                          writeln(htmlfile, '<tr><td><div align="justify"><br></div></td></tr>  ' + wrap);

                          writeln(htmlfile, '<tr><td><div align="center"><table bgcolor="#F3F3F3" width="500" cellspacing="0" border="0" id="borda-tabela" cellpadding="0"> ' + wrap);
                          writeln(htmlfile, '<tr> ' + wrap);
                          writeln(htmlfile, '   <td width="5">&nbsp;</td> ' + wrap);
                          writeln(htmlfile, '   <td width="160"><div align="justify"><strong>Código de identificação:</strong></div></td> ' + wrap);
                          writeln(htmlfile, '   <td><div align="justify"><strong>Fonte:</strong></div></td> ' + wrap);
                          writeln(htmlfile, '</tr> ' + wrap);

                          writeln(htmlfile, '<tr> ' + wrap);
                          writeln(htmlfile, '   <td width="5">&nbsp;</td> ' + wrap);
                          writeln(htmlfile, '   <td><label><input type="TEXT" size="20" disabled="disabled" value="'+DM.cdsRAnFID_IDENTIFICACAO.AsString+'" name="txtID'+DM.cdsResultSubsID.AsString+'" /></label></td> ' + wrap);
                          writeln(htmlfile, '   <td><label><input type="TEXT" size="50" disabled="disabled" value="ABNT NBR 1004:2004 - Anexo F" name="txtF'+DM.cdsResultSubsID.AsString+'" /></label></td> ' + wrap);
                          writeln(htmlfile, '</tr> ' + wrap);

                          writeln(htmlfile, '<tr> ' + wrap);
                          writeln(htmlfile, '   <td width="5">&nbsp;</td> ' + wrap);
                          writeln(htmlfile, '   <td><div align="justify"><strong>Limite(mg/L):</strong></div></td> ' + wrap);
                          writeln(htmlfile, '   <td><div align="justify"><strong>Resultado(mg/L):</strong></div></td> ' + wrap);
                          writeln(htmlfile, '</tr> ' + wrap);

                          writeln(htmlfile, '<tr> ' + wrap);
                          writeln(htmlfile, '   <td width="5">&nbsp;</td> ' + wrap);
                          writeln(htmlfile, '   <td><label><input type="TEXT" size="20" disabled="disabled" value="'+DM.cdsRAnFLIMITE_MAXIMO.AsString+'" name="txtL'+DM.cdsResultSubsID.AsString+'" /></label></td> ' + wrap);
                          writeln(htmlfile, '   <td><label><input type="TEXT" value="" name="txtR'+DM.cdsResultSubsID.AsString+'" /></label></td> ' + wrap);
                          writeln(htmlfile, '</tr> ' + wrap);
                          writeln(htmlfile, '</table></div></td></tr> ' + wrap);

                        end
                          else // caso a substancia não exista no Anexo F
                            begin
                              writeln(htmlfile, '<tr><td><div align="justify"><br></div></td></tr>  ' + wrap);

                              writeln(htmlfile, '<tr><td><div align="center"><table bgcolor="#F3F3F3" width="500" cellspacing="0" border="0" id="borda-tabela" cellpadding="0"> ' + wrap);
                              writeln(htmlfile, '<tr> ' + wrap);
                              writeln(htmlfile, '   <td width="5">&nbsp;</td> ' + wrap);
                              writeln(htmlfile, '   <td width="160"><div align="justify"><strong><font color="#9D9D9D">Código de identificação:</font></strong></div></td> ' + wrap);
                              writeln(htmlfile, '   <td><div align="justify"><strong>Fonte:</strong></div></td> ' + wrap);
                              writeln(htmlfile, '</tr> ' + wrap);

                              writeln(htmlfile, '<tr> ' + wrap);
                              writeln(htmlfile, '   <td width="5">&nbsp;</td> ' + wrap);
                              writeln(htmlfile, '   <td><label><input type="TEXT" size="20" value="" disabled="disabled" name="txtID'+DM.cdsResultSubsID.AsString+'" /></label></td> ' + wrap);
                              writeln(htmlfile, '   <td><label><input type="TEXT" size="50" value="" name="txtF'+DM.cdsResultSubsID.AsString+'" /></label></td> ' + wrap);
                              writeln(htmlfile, '</tr> ' + wrap);

                              writeln(htmlfile, '<tr> ' + wrap);
                              writeln(htmlfile, '   <td width="5">&nbsp;</td> ' + wrap);
                              writeln(htmlfile, '   <td><div align="justify"><strong>Limite(mg/L):</strong></div></td> ' + wrap);
                              writeln(htmlfile, '   <td><div align="justify"><strong>Resultado(mg/L):</strong></div></td> ' + wrap);
                              writeln(htmlfile, '</tr> ' + wrap);

                              writeln(htmlfile, '<tr> ' + wrap);
                              writeln(htmlfile, '   <td width="5">&nbsp;</td> ' + wrap);
                              writeln(htmlfile, '   <td><label><input type="TEXT" size="20" value="" name="txtL'+DM.cdsResultSubsID.AsString+'" /></label></td> ' + wrap);
                              writeln(htmlfile, '   <td><label><input type="TEXT" value="" name="txtR'+DM.cdsResultSubsID.AsString+'" /></label></td> ' + wrap);
                              writeln(htmlfile, '</tr> ' + wrap);
                              writeln(htmlfile, '</table></div></td></tr> ' + wrap);
                            end;
                      finally
                         DM.Conexao.Close;
                      end;
                    end;

                    writeln(htmlfile, '</table>  ' + wrap);

                    DM.cdsResultSubs.Next;
              end;
                writeln(htmlfile, '<hr id="hr">  ' + wrap);
                    end
                        else
                            begin

                            end;

            // quantidade de registro encontrados na busca
            writeln(htmlfile, '</td></tr><tr><td width="516"><div align="left">Foram encontrados: <font color="#FF0000">'+IntToStr(DM.cdsResultRes.RecordCount)+'</font> resíduos e <font color="#FF0000">'+IntToStr(DM.cdsResultSubs.RecordCount)+'</font> substâncias.'+  '</div></td>'+ wrap);
            writeln(htmlfile, '<td width="80"><div align="right"></div></td></tr></table></div> '+ wrap);

        end
            else
                begin
                    writeln(htmlfile,'<tr><td colspan="2"><div align="center" class="style1"><font color ="#FF0000"> </font></div></td></tr><tr><td colspan="2">&nbsp;</td></tr></table> '+ wrap);
                    writeln(htmlfile, '</td></tr><tr><td width="516"><div align="left">Foram encontrados: <font color="#FF0000">'+IntToStr(DM.cdsResultRes.RecordCount)+'</font> resíduos e <font color="#FF0000">'+IntToStr(DM.cdsResultSubs.RecordCount)+'</font> substâncias.'+  '</div></td>'+ wrap);
                end;



    writeln(htmlfile, '</body></html>'); {Finaliza o arquivo html}
    CloseFile(htmlfile);

    if FileExists(arquivo) then
    begin
        WB.Navigate(arquivo);
    end;



end;


procedure TfrmCadClassificacao.GetAvaliacaoEnsaios;
var
i,j,count   : Integer;
infS, infN, corrS, corrN, corrNA, reaN, reaS, reaNA, toxN, toxS, toxNA, patN, patS, solN, solS,solNA  : String;

begin
    count := 1; // contador para fazer a numeração do tópico da avaliação (inicia no item 2 por que a consulta aos anexos a e b é o item 1)
  DM.Conexao.Open;
  try

    // caso tenha sido feito o ensaio de inflamabilidade
    if DM.cdsClassf04INFLAMABILIDADE.AsString = 'Sim' then
    begin

        for i := 1 to 4 do
        begin
          // verifica se a resposta de algum combobox foi não
          if DM.cdsClassf01.FieldByName('inf' + inttostr(i)).AsString = 'Não' then
          begin
            if i = 1 then
            begin
              infN := infN+ ' Não apresentou ponto de fulgor inferior a 60ºC.';
            end;

            if i = 2 then
            begin
              infN := infN+ ' Não apresentou condições de produzir fogo.';
            end;

            if i = 3 then
            begin
              infN := infN+ ' Não apresentou ser um oxidante capaz de liberar oxigênio.';
            end;

            if i = 4 then
            begin
              infN := infN+ ' Não apresentou ser um gás comprimido inflamável.';
            end;

          end;

          // verifica se a resposta de algum combobox foi sim
          if DM.cdsClassf01.FieldByName('inf' + inttostr(i)).AsString = 'Sim' then
          begin
            if i = 1 then
            begin
              infS := infS+ ' Apresentou ponto de fulgor inferior a 60ºC.';
            end;

            if i = 2 then
            begin
              infS := infS+ ' Apresentou condições de produzir fogo.';
            end;

            if i = 3 then
            begin
              infS := infS+ ' Apresentou ser um oxidante capaz de liberar oxigênio.';
            end;

            if i = 4 then
            begin
              infS := infS+ ' Apresentou ser um gás comprimido inflamável.';
            end;

          end;

        end;

          count := count + 1;
          // caso seja encontrado sim e nao como resposta
          if (InfN <> '') and (InfS <> '') then
          begin
            DM.cdsRare.Open;
            DM.cdsRare.Insert;
            DM.cdsRareEnsaio.AsString := IntToStr(count)+'. Inflamabilidade: ';
            DM.cdsRareAvaliacao.AsString := infN + ' porém ' + infS + ' conforme o item "4.2.1.1 Inflamabilidade" da ABNT NRB 10004:2004, portanto nesse ensaio o resíduo foi classificado como Classe I - Perigoso.' ;
            DM.cdsRare.Post;
          end;

          //caso nao seja encontrado um não como resposta, porém seja em contrado um sim
          if (InfN = '') and (InfS <> '') then
          begin
            DM.cdsRare.Open;
            DM.cdsRare.Insert;
            DM.cdsRareEnsaio.AsString := IntToStr(count)+'. Inflamabilidade: ';
            DM.cdsRareAvaliacao.AsString := infS + ' conforme o item "4.2.1.1 Inflamabilidade" da ABNT NRB 10004:2004, portanto nesse ensaio o resíduo foi classificado como Classe I - Perigoso.';
            DM.cdsRare.Post;
          end;

          //caso nao seja encontrado um sim como resposta, porém seja em contrado um não
          if  (InfS = '') and (InfN <> '') then
          begin
            DM.cdsRare.Open;
            DM.cdsRare.Insert;
            DM.cdsRareEnsaio.AsString := IntToStr(count)+'. Inflamabilidade: ';
            DM.cdsRareAvaliacao.AsString := infN + ' conforme o item "4.2.1.1 Inflamabilidade" da ABNT NRB 10004:2004' ;
            DM.cdsRare.Post;
          end;
      end;


      // caso tenha sido feito o ensaio de corrosividade
      if DM.cdsClassf04CORROSIVIDADE.AsString = 'Sim' then
      begin
        if edtCR1.Text <> '' then
        begin
          if ValidaNum(edtCR1.Text) = false  then // caso o valor digitado seja numérico (false)
          begin
            if (StrToFloat(edtCR1.Text) <= 2) or (StrToFloat(edtCR1.Text) >= 12.5) then
            begin
              CorrS := CorrS + ' Apresentou pH = '+ edtCR1.Text +' em sua mistura com a água na proporção de 1:1 em peso, ultrapassando o limite de '+ edtCL1.Text +'.'
            end
              else
                begin
                  CorrN := CorrN + ' Apresentou pH = '+ edtCR1.Text +' em sua mistura com a água na proporção de 1:1 em peso, não ultrapassando o limite de '+ edtCL1.Text +'.'
                end;
          end
            else
              begin
                if edtCR1.Text = 'NA' then
                  begin
                    corrNA := edtCP1.Text;
                  end
                    else // < L.Q
                      begin
                        CorrN := CorrN + ' O valor obtido no ensaio para o parâmetro ' + edtCP1.Text + ' está abaixo do limite máximo permitido pela norma, não ultrapassando o limite de '+ edtCL1.Text +'.'
                      end;
              end;
        end;

        if cbC1.Text = 'Sim' then
        begin
          CorrS := CorrS + ' Demonstrou corroer aço a uma razão maior que 6,35 mm ao ano, a uma temperatura de 55°C.';
        end;

        if cbC1.Text = 'Não' then
        begin
          CorrN := CorrN + ' Não demonstrou corroer aço a uma razão maior que 6,35 mm ao ano, a uma temperatura de 55°C.';
        end;

          count := count + 1;
          // caso seja encontrado sim, nao e NA como resposta
          if (CorrN <> '') and (CorrS <> '') and (CorrNA <> '') then
          begin
            DM.cdsRare.Open;
            DM.cdsRare.Insert;
            DM.cdsRareEnsaio.AsString := IntToStr(count)+'. Corrosividade: ';
            DM.cdsRareAvaliacao.AsString := CorrN + ' porém ' + CorrS + ' conforme o item "4.2.1.2 Corrosividade" da ABNT NBR 10004:2004, portanto nesse ensaio o resíduo foi classificado como Classe I - Perigoso.' + ' Observações: O(s) Parâmetro(s) '+ corrNA +' não foi/foram analizado(s).';
            DM.cdsRare.Post;
          end;

          // caso seja encontrado apenas sim e nao como resposta
          if (CorrN <> '') and (CorrS <> '') and (corrNA = '') then
          begin
            DM.cdsRare.Open;
            DM.cdsRare.Insert;
            DM.cdsRareEnsaio.AsString := IntToStr(count)+'. Corrosividade: ';
            DM.cdsRareAvaliacao.AsString := CorrN + ' porém ' + CorrS + ' conforme o item "4.2.1.2 Corrosividade" da ABNT NBR 10004:2004, portanto nesse ensaio o resíduo foi classificado como Classe I - Perigoso.';
            DM.cdsRare.Post;
          end;

          //caso nao seja encontrado um não como resposta, porém seja em contrado um sim e um NA
          if (CorrN = '') and (CorrS <> '') and (corrNA <> '') then
          begin
            DM.cdsRare.Open;
            DM.cdsRare.Insert;
            DM.cdsRareEnsaio.AsString := IntToStr(count)+'. Corrosividade: ';
            DM.cdsRareAvaliacao.AsString := CorrS + ' conforme o item "4.2.1.2 Corrosividade" da ABNT NBR 10004:2004, portanto nesse ensaio o resíduo foi classificado como Classe I - Perigoso.' + ' Observações: O(s) Parâmetro(s) '+ corrNA +' não foi/foram analisado(s).';
            DM.cdsRare.Post;
          end;

          //caso nao seja encontrado um não como resposta, porém seja em contrado apenas um sim
          if (CorrN = '') and (CorrS <> '') and (corrNA = '')  then
          begin
            DM.cdsRare.Open;
            DM.cdsRare.Insert;
            DM.cdsRareEnsaio.AsString := IntToStr(count)+'. Corrosividade: ';
            DM.cdsRareAvaliacao.AsString := CorrS + ' conforme o item "4.2.1.2 Corrosividade" da ABNT NBR 10004:2004, portanto nesse ensaio o resíduo foi classificado como Classe I - Perigoso.';
            DM.cdsRare.Post;
          end;

          //caso nao seja encontrado um sim como resposta, porém seja em contrado um não e um NA
          if  (CorrS = '') and (CorrN <> '') and (corrNA <> '') then
          begin
            DM.cdsRare.Open;
            DM.cdsRare.Insert;
            DM.cdsRareEnsaio.AsString := IntToStr(count)+'. Corrosividade: ';
            DM.cdsRareAvaliacao.AsString := CorrN + ' conforme o item "4.2.1.2 Corrosividade" da ABNT NBR 10004:2004.'+ ' Observações: O(s) Parâmetro(s) '+ corrNA +' não foi/foram analisado(s).';
            DM.cdsRare.Post;
          end;

          //caso nao seja encontrado um sim como resposta, porém seja em contrado apenas um não
          if  (CorrS = '') and (CorrN <> '') and (corrNA = '') then
          begin
            DM.cdsRare.Open;
            DM.cdsRare.Insert;
            DM.cdsRareEnsaio.AsString := IntToStr(count)+'. Corrosividade: ';
            DM.cdsRareAvaliacao.AsString := CorrN + ' conforme o item "4.2.1.2 Corrosividade" da ABNT NBR 10004:2004.' ;
            DM.cdsRare.Post;
          end;

          //caso nao seja encontrado apenas NA
          if  (CorrS = '') and (CorrN = '') and (corrNA <> '') then
          begin
            DM.cdsRare.Open;
            DM.cdsRare.Insert;
            DM.cdsRareEnsaio.AsString := IntToStr(count)+'. Corrosividade: ';
            DM.cdsRareAvaliacao.AsString := 'Observações: O Parâmetro '+ corrNA +' não foi analisado.';
            DM.cdsRare.Post;
          end;
      end;


      // caso tenha sido feito o ensaio de Reatividade
      if DM.cdsClassf04REATIVIDADE.AsString = 'Sim' then
      begin
        for i := 1 to 2 do
        begin

          if TEdit(FindComponent('edtRR' + inttostr(i))).text <> '' then
          begin
            if ValidaNum(TEdit(FindComponent('edtRR' + inttostr(i))).text) = false  then // caso o valor digitado seja numérico (false)
            begin
              // se algum parametro não excedeu o limite
              if StrToFloat(TEdit(FindComponent('edtRR' + inttostr(i))).text) <=  StrToFloat(TEdit(FindComponent('edtRL' + inttostr(i))).text) then
              begin
                  reaN := reaN+ ' Apresentou '+ TEdit(FindComponent('edtRR' + inttostr(i))).text +' mg/kg de '+ TEdit(FindComponent('edtRP' + inttostr(i))).text +', não ultrapassando o limite de ' + TEdit(FindComponent('edtRL' + inttostr(i))).text + ' mg/kg.';
              end;

              // se algum parametro excedeu o limite
              if StrToFloat(TEdit(FindComponent('edtRR' + inttostr(i))).text) >  StrToFloat(TEdit(FindComponent('edtRL' + inttostr(i))).text) then
              begin
                  reaS := reaS+ ' Apresentou '+ TEdit(FindComponent('edtRR' + inttostr(i))).text +' mg/kg de '+ TEdit(FindComponent('edtRP' + inttostr(i))).text +', ultrapassando o limite de ' + TEdit(FindComponent('edtRL' + inttostr(i))).text + ' mg/kg.';
              end;
            end
              else
                begin // caso o valor digitado nao seja numérico (true)

                  if TEdit(FindComponent('edtRR' + inttostr(i))).text = 'NA' then
                  begin
                    reaNA := reaNA +', '+ TEdit(FindComponent('edtRP' + inttostr(i))).text;
                  end
                    else
                      begin // < L.Q
                        reaN := reaN+ ' O valor obtido no ensaio para o parâmetro ' + TEdit(FindComponent('edtRP' + inttostr(i))).text + ' está abaixo do limite máximo permitido pela norma, não ultrapassando o limite de ' + TEdit(FindComponent('edtRL' + inttostr(i))).text + ' mg/kg.';
                      end;

                end;
          end;

        end;


        for j := 1 to 7 do
        begin

          // verifica se a resposta de algum combobox foi não
          if TComboBox(FindComponent('cbR' + inttostr(j))).text = 'Não' then
          begin
            if j = 1 then
            begin
              reaN := reaN+ ' Não apresentou ser  normalmente instável e reagir de forma violenta e imediata sem detonar.';
            end;

            if j = 2 then
            begin
              reaN := reaN+ ' Não apresentou reagir violentamente com água.';
            end;

            if j = 3 then
            begin
              reaN := reaN+ ' Não apresentou formar misturas potencialmente explosivas com a água.';
            end;

            if j = 4 then
            begin
              reaN := reaN+ ' Não apresentou Gera gases, vapores e fumos tóxicos em quantidades suficientes para provocar danos à saúde pública ou ao meio ambiente, quando misturados com água.';
            end;

            if j = 5 then
            begin
              reaN := reaN+ ' Não apresentou ser capaz de produzir reação explosiva ou detonante sob a ação de forte estímulo, ação catalítica ou temperatura em ambientes confinados.';
            end;

            if j = 6 then
            begin
              reaN := reaN+ ' Não apresentou ser capaz de produzir, prontamente, reação ou decomposição detonante ou explosiva a 25°C e 0,1 MPa (1 atm).';
            end;

            if j = 7 then
            begin
              reaN := reaN+ ' Não apresentou ser explosivo, definido como uma substância fabricada para produzir um resultado prático, através de explosão ou efeito pirotécnico.';
            end;
          end;

          // verifica se a resposta de algum combobox foi não
          if TComboBox(FindComponent('cbR' + inttostr(j))).text = 'Sim' then
          begin
            if j = 1 then
            begin
              reaS := reaS+ ' Apresentou ser  normalmente instável e reagir de forma violenta e imediata, sem detonar.';
            end;

            if j = 2 then
            begin
              reaS := reaS+ ' Apresentou reagir violentamente com água.';
            end;

            if j = 3 then
            begin
              reaS := reaS+ ' Apresentou formar misturas potencialmente explosivas com a água.';
            end;

            if j = 4 then
            begin
              reaS := reaS+ ' Apresentou Gera gases, vapores e fumos tóxicos em quantidades suficientes para provocar danos à saúde pública ou ao meio ambiente, quando misturados com água.';
            end;

            if j = 5 then
            begin
              reaS := reaS+ ' Apresentou ser capaz de produzir reação explosiva ou detonante sob a ação de forte estímulo, ação catalítica ou temperatura em ambientes confinados.';
            end;

            if j = 6 then
            begin
              reaS := reaS+ ' Apresentou ser capaz de produzir, prontamente, reação ou decomposição detonante ou explosiva a 25°C e 0,1 MPa (1 atm).';
            end;

            if j = 7 then
            begin
              reaS := reaS+ ' Apresentou ser explosivo, definido como uma substância fabricada para produzir um resultado prático, através de explosão ou efeito pirotécnico.';
            end;
          end;

        end;

          count := count + 1;
          // caso seja encontrado sim, nao e NA como resposta
          if (reaN <> '') and (reaS <> '') and (reaNA <> '') then
          begin
            DM.cdsRare.Open;
            DM.cdsRare.Insert;
            DM.cdsRareEnsaio.AsString := IntToStr(count)+'. Reatividade: ';
            DM.cdsRareAvaliacao.AsString := reaN + ' porém ' + reaS + ' conforme o item "4.2.1.3 Reatividade" da ABNT NBR 10004:2004, portanto nesse ensaio o resíduo foi classificado como Classe I - Perigoso.' + ' Observações: O(s) Parâmetro(s) '+ reaNA +' não foi/foram analisado(s).';
            DM.cdsRare.Post;
          end;

          // caso seja encontrado sim e nao como resposta
          if (reaN <> '') and (reaS <> '') and (reaNA = '') then
          begin
            DM.cdsRare.Open;
            DM.cdsRare.Insert;
            DM.cdsRareEnsaio.AsString := IntToStr(count)+'. Reatividade: ';
            DM.cdsRareAvaliacao.AsString := reaN + ' porém ' + reaS + ' conforme o item "4.2.1.3 Reatividade" da ABNT NBR 10004:2004, portanto nesse ensaio o resíduo foi classificado como Classe I - Perigoso.' ;
            DM.cdsRare.Post;
          end;

          //caso nao seja encontrado um não como resposta, porém seja em contrado um sim e um NA
          if (reaN = '') and (reaS <> '') and (reaNA <> '') then
          begin
            DM.cdsRare.Open;
            DM.cdsRare.Insert;
            DM.cdsRareEnsaio.AsString := IntToStr(count)+'. Reatividade: ';
            DM.cdsRareAvaliacao.AsString := reaS + ' conforme o item "4.2.1.3 Reatividade" da ABNT NBR 10004:2004, portanto nesse ensaio o resíduo foi classificado como Classe I - Perigoso.' + ' Observações: O(s) Parâmetro(s) '+ reaNA +' não foi/foram analisado(s).';
            DM.cdsRare.Post;
          end;

          //caso nao seja encontrado um não como resposta, porém seja em contrado um sim
          if (reaN = '') and (reaS <> '') and (reaNA = '') then
          begin
            DM.cdsRare.Open;
            DM.cdsRare.Insert;
            DM.cdsRareEnsaio.AsString := IntToStr(count)+'. Reatividade: ';
            DM.cdsRareAvaliacao.AsString := reaS + ' conforme o item "4.2.1.3 Reatividade" da ABNT NBR 10004:2004, portanto nesse ensaio o resíduo foi classificado como Classe I - Perigoso.';
            DM.cdsRare.Post;
          end;

          //caso nao seja encontrado um sim como resposta, porém seja em contrado um não e um NA
          if  (reaS = '') and (reaN <> '') and (reaNA <> '') then
          begin
            DM.cdsRare.Open;
            DM.cdsRare.Insert;
            DM.cdsRareEnsaio.AsString := IntToStr(count)+'. Reatividade: ';
            DM.cdsRareAvaliacao.AsString := reaN + ' conforme o item "4.2.1.3 Reatividade" da ABNT NBR 10004:2004' + ' Observações: O(s) Parâmetro(s) '+ reaNA +' não foi/foram analisado(s).';
            DM.cdsRare.Post;
          end;

          //caso nao seja encontrado um sim como resposta, porém seja em contrado um não
          if  (reaS = '') and (reaN <> '') and (reaNA = '') then
          begin
            DM.cdsRare.Open;
            DM.cdsRare.Insert;
            DM.cdsRareEnsaio.AsString := IntToStr(count)+'. Reatividade: ';
            DM.cdsRareAvaliacao.AsString := reaN + ' conforme o item "4.2.1.3 Reatividade" da ABNT NBR 10004:2004' ;
            DM.cdsRare.Post;
          end;

          //caso nao seja encontrado apenas NA
          if  (reaS = '') and (reaN = '') and (reaNA <> '') then
          begin
            DM.cdsRare.Open;
            DM.cdsRare.Insert;
            DM.cdsRareEnsaio.AsString := IntToStr(count)+'. Reatividade: ';
            DM.cdsRareAvaliacao.AsString := 'O(s) Parâmetro(s) '+ reaNA +' não foi/foram analisado(s).';
            DM.cdsRare.Post;
          end;

      end;


      // caso tenha sido feito o ensaio de Toxicidade
      if DM.cdsClassf04TOXICIDADE.AsString = 'Sim' then
      begin

        DM.cdsClassf02.First;
        while not DM.cdsClassf02.Eof do
        begin

          with dm.cdsRAnF do
          begin
            close;
            Params[0].AsInteger := DM.cdsClassf02ID_ANF.AsInteger;
            open;
          end;

          if (DM.cdsClassf02RESULTADO.AsString <> '') and (DM.cdsClassf02LIMITE.AsString <> '') then
          begin
            if ValidaNum(DM.cdsClassf02RESULTADO.AsString) = false then
            begin
              if strToFloat(DM.cdsClassf02RESULTADO.AsString) <= StrToFloat(DM.cdsClassf02LIMITE.AsString) then
              begin
                toxN := toxN+ ' Apresentou '+ DM.cdsClassf02RESULTADO.AsString +' mg/L de '+ DM.cdsRAnFPARAMETRO.AsString +' no ensaio de lixiviação, não ultrapassando o limite de ' + DM.cdsClassf02LIMITE.AsString + ' mg/L.';
              end;

              if strToFloat(DM.cdsClassf02RESULTADO.AsString) > StrToFloat(DM.cdsClassf02LIMITE.AsString) then
              begin
                toxS := toxS+ ' Apresentou '+ DM.cdsClassf02RESULTADO.AsString +' mg/L de '+ DM.cdsRAnFPARAMETRO.AsString +' no ensaio de lixiviação, ultrapassando o limite de ' + DM.cdsClassf02LIMITE.AsString + ' mg/L.';
              end;
            end
              else // caso o valor digitado não seja numérico (false)
                begin

                  if DM.cdsClassf02RESULTADO.AsString = 'NA' then
                  begin
                    toxNA := toxNA+ ', '+DM.cdsRAnFPARAMETRO.AsString;
                  end
                    else // < L.Q
                      begin
                        toxN := toxN+ ' O valor obtido no ensaio para o parâmetro ' + DM.cdsRAnFPARAMETRO.AsString + ' está abaixo do limite máximo permitido pela norma, não ultrapassando o limite de ' + DM.cdsClassf02LIMITE.AsString + ' mg/L.';
                      end;

                end;
          end;
          DM.cdsClassf02.next;
        end;


          count := count + 1;
          // caso seja encontrado sim, nao e NA como resposta
          if (toxN <> '') and (toxS <> '') and (toxNA <> '') then
          begin
            DM.cdsRare.Open;
            DM.cdsRare.Insert;
            DM.cdsRareEnsaio.AsString := IntToStr(count)+'. Toxicidade: ';
            DM.cdsRareAvaliacao.AsString := toxN + ' porém ' + toxS + ' conforme o item "4.2.1.4 Toxicidade" da ABNT NBR 10004:2004, portanto nesse ensaio o resíduo foi classificado como Classe I - Perigoso.' + ' Observações: O(s) Parâmetro(s) '+ toxNA +' não foi/foram analisado(s).';
            DM.cdsRare.Post;
          end;

          // caso seja encontrado apenas sim e nao como resposta
          if (toxN <> '') and (toxS <> '') and (toxNA = '') then
          begin
            DM.cdsRare.Open;
            DM.cdsRare.Insert;
            DM.cdsRareEnsaio.AsString := IntToStr(count)+'. Toxicidade: ';
            DM.cdsRareAvaliacao.AsString := toxN + ' porém ' + toxS + ' conforme o item "4.2.1.4 Toxicidade" da ABNT NBR 10004:2004, portanto nesse ensaio o resíduo foi classificado como Classe I - Perigoso.' ;
            DM.cdsRare.Post;
          end;




          //caso nao seja encontrado um não como resposta, porém seja em contrado um sim e um NA
          if (toxN = '') and (toxS <> '') and (toxNA <> '') then
          begin
            DM.cdsRare.Open;
            DM.cdsRare.Insert;
            DM.cdsRareEnsaio.AsString := IntToStr(count)+'. Toxicidade: ';
            DM.cdsRareAvaliacao.AsString := toxS + ' conforme o item "4.2.1.4 Toxicidade" da ABNT NBR 10004:2004, portanto nesse ensaio o resíduo foi classificado como Classe I - Perigoso.' + ' Observações: O(s) Parâmetro(s) '+ toxNA +' não foi/foram analisado(s).';
            DM.cdsRare.Post;
          end;

          //caso nao seja encontrado um não como resposta, porém seja em contrado apenas um sim
          if (toxN = '') and (toxS <> '') and (toxNA = '') then
          begin
            DM.cdsRare.Open;
            DM.cdsRare.Insert;
            DM.cdsRareEnsaio.AsString := IntToStr(count)+'. Toxicidade: ';
            DM.cdsRareAvaliacao.AsString := toxS + ' conforme o item "4.2.1.4 Toxicidade" da ABNT NBR 10004:2004, portanto nesse ensaio o resíduo foi classificado como Classe I - Perigoso.';
            DM.cdsRare.Post;
          end;




          //caso nao seja encontrado um sim como resposta, porém seja em contrado um não
          if  (toxS = '') and (toxN <> '') and (toxNA <> '') then
          begin
            DM.cdsRare.Open;
            DM.cdsRare.Insert;
            DM.cdsRareEnsaio.AsString := IntToStr(count)+'. Toxicidade: ';
            DM.cdsRareAvaliacao.AsString := toxN + ' conforme o item "4.2.1.4 Toxicidade" da ABNT NBR 10004:2004, Observações: O(s) Parâmetro(s) '+ toxNA +' não foi/foram analisado(s).';
            DM.cdsRare.Post;
          end;

          //caso nao seja encontrado um sim como resposta, porém seja em contrado um não
          if  (toxS = '') and (toxN <> '') and (toxNA = '') then
          begin
            DM.cdsRare.Open;
            DM.cdsRare.Insert;
            DM.cdsRareEnsaio.AsString := IntToStr(count)+'. Toxicidade: ';
            DM.cdsRareAvaliacao.AsString := toxN + ' conforme o item "4.2.1.4 Toxicidade" da ABNT NBR 10004:2004';
            DM.cdsRare.Post;
          end;

      end;

      // caso tenha sido feito o ensaio de Patogenicidade
      if DM.cdsClassf04PATOGENICIDADE.AsString = 'Sim' then
      begin

        if cbP1.Text = 'Sim' then
        begin
          patS := patS + ' Apresentou características de patogenicidade.';
        end;

        if cbP1.Text = 'Não' then
        begin
          patN := patN + ' Não apresentou características de patogenicidade.';
        end;

        if cbP2.Text = 'Sim' then
        begin
          patS := patS + ' Apresentou ser originados na assistência à saúde da pessoa ou animal.';
        end;

        if cbP2.Text = 'Não' then
        begin
          patN := patN + ' Não apresentou ser originados na assistência à saúde da pessoa ou animal.';
        end;

          count := count + 1;
          // caso seja encontrado sim e nao como resposta
          if (patN <> '') and (patS <> '') then
          begin
            DM.cdsRare.Open;
            DM.cdsRare.Insert;
            DM.cdsRareEnsaio.AsString := IntToStr(count)+'. Patogenicidade: ';
            DM.cdsRareAvaliacao.AsString := patN + ' porém ' + patS + ' conforme o item "4.2.1.5 Patogenicidade" da NRB 10004:2004, portanto nesse ensaio o resíduo foi classificado como Classe I - Perigoso.' ;
            DM.cdsRare.Post;
          end;

          //caso nao seja encontrado um não como resposta, porém seja em contrado um sim
          if (patN = '') and (patS <> '') then
          begin
            DM.cdsRare.Open;
            DM.cdsRare.Insert;
            DM.cdsRareEnsaio.AsString := IntToStr(count)+'. Patogenicidade: ';
            DM.cdsRareAvaliacao.AsString := patS + ' conforme o item "4.2.1.5 Patogenicidade" da NRB 10004:2004, portanto nesse ensaio o resíduo foi classificado como Classe I - Perigoso.';
            DM.cdsRare.Post;
          end;

          //caso nao seja encontrado um sim como resposta, porém seja em contrado um não
          if  (patS = '') and (patN <> '') then
          begin
            DM.cdsRare.Open;
            DM.cdsRare.Insert;
            DM.cdsRareEnsaio.AsString := IntToStr(count)+'. Patogenicidade: ';
            DM.cdsRareAvaliacao.AsString := patN + ' conforme o item "4.2.1.5 Patogenicidade" da NRB 10004:2004' ;
            DM.cdsRare.Post;
          end;

      end;


      // caso tenha sido feito o ensaio de Solubilizado
      if DM.cdsClassf04SOLUBILIDADE.AsString = 'Sim' then
      begin

        DM.cdsClassf03.First;
        while not DM.cdsClassf03.Eof do
        begin

          with dm.cdsRAnG do
          begin
            close;
            Params[0].AsInteger := DM.cdsClassf03ID_ANG.AsInteger;
            open;
          end;

          if (DM.cdsClassf03RESULTADO.AsString <> '') and (DM.cdsClassf03LIMITE.AsString <> '') then
          begin
            if ValidaNum(DM.cdsClassf03RESULTADO.AsString) = false then
            begin
              if strToFloat(DM.cdsClassf03RESULTADO.AsString) <= StrToFloat(DM.cdsClassf03LIMITE.AsString) then
              begin
                SolN := SolN+ ' Apresentou '+ DM.cdsClassf03RESULTADO.AsString +' mg/L de '+ DM.cdsRAnGPARAMETRO.AsString +' no ensaio de solubilização, não ultrapassando o limite de ' + DM.cdsClassf03LIMITE.AsString + ' mg/L.';
              end;

              if strToFloat(DM.cdsClassf03RESULTADO.AsString) > StrToFloat(DM.cdsClassf03LIMITE.AsString) then
              begin
                SolS := SolS+ ' Apresentou '+ DM.cdsClassf03RESULTADO.AsString +' mg/L de '+ DM.cdsRAnGPARAMETRO.AsString +' no ensaio de solubilização, ultrapassando o limite de ' + DM.cdsClassf03LIMITE.AsString + ' mg/L.';
              end;
            end
              else // caso o valor digitado não seja numérico (false)
                begin

                  if DM.cdsClassf03RESULTADO.AsString = 'NA' then
                  begin
                    SolNA := SolNA+ ', '+DM.cdsRAnGPARAMETRO.AsString;
                  end
                    else // < L.Q
                      begin
                        SolN := SolN+ ' O valor obtido no ensaio para o parâmetro ' + DM.cdsRAnGPARAMETRO.AsString + ' está abaixo do limite máximo permitido pela norma, não ultrapassando o limite de ' + DM.cdsClassf03LIMITE.AsString + ' mg/L.';
                      end;

                end;
          end;
          DM.cdsClassf03.next;
        end;


       
          count := count + 1;
          // caso seja encontrado sim, nao e NA como resposta
          if (solN <> '') and (solS <> '') and (solNA <> '') then
          begin
            DM.cdsRare.Open;
            DM.cdsRare.Insert;
            DM.cdsRareEnsaio.AsString := IntToStr(count)+'. Solubilizado: ';
            DM.cdsRareAvaliacao.AsString := solN + ' porém ' + solS + ' estabelecido no "anexo G (normativo)" da ABNT NBR 10004:2004, portanto nesse ensaio o resíduo foi classificado como não-inerte - Classe II A.' + ' Observações: O(s) Parâmetro(s) ' + solNA +' não foi/foram analisado(s).';
            DM.cdsRare.Post;
          end;

          // caso seja encontrado apenas sim e nao como resposta
          if (solN <> '') and (solS <> '') and (solNA = '') then
          begin
            DM.cdsRare.Open;
            DM.cdsRare.Insert;
            DM.cdsRareEnsaio.AsString := IntToStr(count)+'. Solubilizado: ';
            DM.cdsRareAvaliacao.AsString := solN + ' porém ' + solS + ' conforme o "anexo G (normativo)" da ABNT NBR 10004:2004, portanto nesse ensaio o resíduo foi classificado como não-inerte - Classe II A.';
            DM.cdsRare.Post;
          end;




          //caso nao seja encontrado um não como resposta, porém seja em contrado um sim e um NA
          if (solN = '') and (solS <> '') and (solNA <> '') then
          begin
            DM.cdsRare.Open;
            DM.cdsRare.Insert;
            DM.cdsRareEnsaio.AsString := IntToStr(count)+'. Solubilizado: ';
            DM.cdsRareAvaliacao.AsString := solS + ' conforme o "anexo G (normativo)" da ABNT NBR 10004:2004, portanto nesse ensaio o resíduo foi classificado como não-inerte - Classe II A.' + ' Observações: O(s) Parâmetro(s) ' + solNA +' não foi/foram analisado(s).';
            DM.cdsRare.Post;
          end;

          //caso nao seja encontrado um não como resposta, porém seja em contrado apenas um sim
          if (solN = '') and (solS <> '') and (solNA = '')then
          begin
            DM.cdsRare.Open;
            DM.cdsRare.Insert;
            DM.cdsRareEnsaio.AsString := IntToStr(count)+'. Solubilizado: ';
            DM.cdsRareAvaliacao.AsString := solS + ' conforme o "anexo G (normativo)" da ABNT NBR 10004:2004, portanto nesse ensaio o resíduo foi classificado como não-inerte - Classe II A.';
            DM.cdsRare.Post;
          end;



          //caso nao seja encontrado um sim como resposta, porém seja em contrado um não e um NA
          if  (solS = '') and (solN <> '') and (solNA <> '') then
          begin
            DM.cdsRare.Open;
            DM.cdsRare.Insert;
            DM.cdsRareEnsaio.AsString := IntToStr(count)+'. Solubilizado: ';
            DM.cdsRareAvaliacao.AsString := solN + ' conforme o "anexo G (normativo)" da ABNT NBR 10004:2004, portanto nesse ensaio o resíduo foi classificado como inerte - Classe II B.' + ' Observações: O(s) Parâmetro(s) ' + solNA +' não foi/foram analisado(s).';
            DM.cdsRare.Post;
          end;

          //caso nao seja encontrado um sim como resposta, porém seja em contrado apenas um não
          if  (solS = '') and (solN <> '') and (solNA = '') then
          begin
            DM.cdsRare.Open;
            DM.cdsRare.Insert;
            DM.cdsRareEnsaio.AsString := IntToStr(count)+'. Solubilizado: ';
            DM.cdsRareAvaliacao.AsString := solN + ' conforme o "anexo G (normativo)" da ABNT NBR 10004:2004, portanto nesse ensaio o resíduo foi classificado como inerte - Classe II B.';
            DM.cdsRare.Post;
          end;
      
      end;
  finally
    DM.Conexao.Close;
  end;
end;

procedure TfrmCadClassificacao.GetAvaliacaoHTML;
var
substancia, anexo,carater,SubsClasseN,SubsClasseS : string;
count: integer;
begin
      // faz avaliação dos resultados da substância
      // checa se o resíduo está contaminado com alguma substancia dos anexos
      if DM.cdsSubstancias.RecordCount > 0 then
      begin
        DM.cdsSubstancias.Open;
        DM.cdsSubstancias.First;
        DM.cdsRare.Open;

        DM.Conexao.Open;
        try
          count := 1;

          while not DM.cdsSubstancias.Eof do
          begin
            with DM.cdsRRes do
            begin
              Close;
              CommandText := 'select * from NBR10004_RES where ID = ' + QuotedStr(DM.cdsResiduoID.AsString);
              Open;
            end;

            with DM.cdsRDesc do
            begin
              Close;
              CommandText := 'select * from NBR10004_DESC where ID = ' + QuotedStr(DM.cdsRResID_DESCRICAO.AsString);
              Open;
            end;
            anexo   := UpperCase(DM.cdsRDescANEXO.AsString);

            SubsClasseN := '';
            SubsClasseS := '';

            if Anexo = 'H' then // se  o resíduo for do anexo H entao verifica o resultado da substancia...
            begin
              if DM.cdsSubstanciasResultado.AsString <> '' then   // caso tenha resultado para a substancia, fazer Comparação entre limite estabelecido e resultado obtido
              begin
                if DM.cdsSubstanciasResultado.AsFloat <= DM.cdsSubstanciasLimite.AsFloat then // caso não exceda o limite estabelecido entao (classe II - não perigosa)
                begin
                  if DM.cdsSubstanciasIDAnexoF.AsString <> '' then // caso a substância seja do anexo F
                  begin
                    SubsClasseN := ', com concentração de '+ DM.cdsSubstanciasResultado.AsString + ' mg/L, não excedendo o limite de ' +  DM.cdsSubstanciasLimite.AsString + ' mg/L estabelecido no Anexo F da ABNT NBR 1004:2004.';
                  end
                    else // caso a substância nao seja do Anexo F, entao informar a fonte, etc...
                      begin
                        SubsClasseN := ', com concentração de '+ DM.cdsSubstanciasResultado.AsString + ' mg/L, não excedendo o limite de ' +  DM.cdsSubstanciasLimite.AsString + ' mg/L estabelecido por '+ DM.cdsSubstanciasFonte.AsString;
                      end;
                end;

                if DM.cdsSubstanciasResultado.AsFloat > DM.cdsSubstanciasLimite.AsFloat then // caso exceda o limite estabelecido entao (classe I - perigosa)
                begin
                  if DM.cdsSubstanciasIDAnexoF.AsString <> '' then // caso a substância seja do anexo F
                  begin
                    SubsClasseS := ', com concentração de '+ DM.cdsSubstanciasResultado.AsString + ' mg/L, excedendo o limite de ' +  DM.cdsSubstanciasLimite.AsString + ' mg/L estabelecido no Anexo F da ABNT NBR 1004:2004.';
                  end
                    else // caso a substância nao seja do Anexo F, entao informar a fonte, etc...
                      begin
                        SubsClasseS := ', com concentração de '+ DM.cdsSubstanciasResultado.AsString + ' mg/L, excedendo o limite de ' +  DM.cdsSubstanciasLimite.AsString + ' mg/L estabelecido por '+ DM.cdsSubstanciasFonte.AsString;
                      end;
                end;
              end
                else // caso nao seja informado um resultado o resíduo é classificado como perigoso
                  begin
                    SubsClasseS :=  ', com concentração desconhecida, podendo apresentar toxicidade em potencial.';
                  end;

              with DM.cdsRSubs do
              begin
                Close;
                CommandText := 'select * from NBR10004_SUBS where ID = ' + QuotedStr(DM.cdsSubstanciasID.AsString);
                Open;
              end;
              Substancia := DM.cdsRSubsID_IDENTIFICACAO.AsString;// todo: nao recupera todas as substancias, principalmente quando elas estao em sequencia. quando nao estao em sequencia a ultima nunca é recuperada.

              with DM.cdsRDesc do
              begin
                Close;
                CommandText := 'select * from NBR10004_DESC where ID = ' + QuotedStr(DM.cdsRSubsID_DESCRICAO.AsString);
                Open;
              end;
              anexo := UpperCase(DM.cdsRDescANEXO.AsString);

              if (SubsClasseN <> '') and (SubsClasseS = '') then
              begin
                DM.cdsRare.Insert;
                DM.cdsRareEnsaio.AsString := '1.'+IntToStr(count)+ ' Consulta ao anexo '+anexo+ ':';
                DM.cdsRareAvaliacao.AsString := 'Foi identificado a substância de código de identificação ' + Substancia + SubsClasseN;
                DM.cdsRare.Post;
              end;

              if (SubsClasseN = '') and (SubsClasseS <> '') then
              begin
                DM.cdsRare.Insert;
                DM.cdsRareEnsaio.AsString := '1.'+IntToStr(count)+ ' Consulta ao anexo '+anexo+ ':';
                DM.cdsRareAvaliacao.AsString := 'Foi identificado a substância de código de identificação ' + Substancia + SubsClasseS + ' Portanto essa substância classifica o resíduo como Perigoso Classe I.';
                DM.cdsRare.Post;
              end;
            end
              else  // se  o resíduo não for do anexo H
                begin
                  with DM.cdsRSubs do
                  begin
                    Close;
                    CommandText := 'select * from NBR10004_SUBS where ID = ' + QuotedStr(DM.cdsSubstanciasID.AsString);
                    Open;
                  end;
                  Substancia := DM.cdsRSubsID_IDENTIFICACAO.AsString;// todo: nao recupera todas as substancias, principalmente quando elas estao em sequencia. quando nao estao em sequencia a ultima nunca é recuperada.

                  with DM.cdsRDesc do
                  begin
                    Close;
                    CommandText := 'select * from NBR10004_DESC where ID = ' + QuotedStr(DM.cdsRSubsID_DESCRICAO.AsString);
                    Open;
                  end;
                  anexo := UpperCase(DM.cdsRDescANEXO.AsString);

                  DM.cdsRare.Insert;
                  DM.cdsRareEnsaio.AsString := '1.'+IntToStr(count)+ ' Consulta ao anexo '+anexo+ ':';
                  DM.cdsRareAvaliacao.AsString := 'Foi identificado a substância de código de identificação ' + Substancia;
                  DM.cdsRare.Post;
                end;

          count := count + 1;
          DM.cdsSubstancias.Next;
          end;

        finally
            DM.Conexao.Close;
        end;
      end;


      // faz avaliação dos resultados do resíduo
      DM.cdsResiduo.First;
      DM.Conexao.Open;
      try
        with DM.cdsRRes do
        begin
          Close;
          CommandText := 'select * from NBR10004_RES where ID = ' + QuotedStr(DM.cdsResiduoID.AsString);
          Open;
        end;

        with DM.cdsRDesc do
        begin
          Close;
          CommandText := 'select * from NBR10004_DESC where ID = ' + QuotedStr(DM.cdsRResID_DESCRICAO.AsString);
          Open;
        end;
        anexo   := UpperCase(DM.cdsRDescANEXO.AsString);
        carater := DM.cdsRDescCARATER.AsString;

        finally
          DM.Conexao.Close;
        end;

      DM.cdsRare.Open;
      DM.cdsRare.Insert;
      DM.cdsRareEnsaio.AsString := '1. Consulta aos anexos: ';
      DM.cdsRareAvaliacao.AsString := 'Consta na Norma NBR 10004:2004 o resíduo de código de identificação '+DM.cdsRResID_IDENTIFICACAO.AsString+ ', do anexo '+anexo+', de caráter '+carater +'.' ;
      DM.cdsRare.Post;
end;

procedure TfrmCadClassificacao.GetDadosRelat;
begin
  DM.Conexao.Open;
  try
    if not DM.cdsClassf01FOTO.IsNull then
    begin
      JPGtoBMPFoto;
    end;

    with DM.cdsRAtv do
    begin
      Close;
      Params[0].AsInteger :=  DM.cdsEmprAtvID_ATIVIDADE.AsInteger;
      Open;
      first;
    end;

    with DM.cdsConfig do
    begin
      Close;
      Params[1].AsString := '%';
      Open;
      First;
    end;

    if not DM.cdsConfigLOGO.IsNull then
    begin
      JPGtoBMPLogo;
    end;
  finally
    DM.Conexao.Close;
  end;
end;

procedure TfrmCadClassificacao.GetEnsaiosFeitos;
var
i : integer;
begin

  DM.Conexao.Open;
  try

    if DM.cdsClassf04.RecordCount > 0 then //caso ja exista o resgitro na tabela entao deleta ele e insere denovo, do contrario só insere.
    begin
      DM.cdsClassf04.Delete;
      DM.cdsClassf04.ApplyUpdates(0);
      DM.cdsClassf04.Insert;
    end
      else
        begin
          DM.cdsClassf04.Insert;
        end;

  DM.cdsClassf04ID_CLASSF01.AsInteger := StrToInt(idClassificacao);

  // inflamabilidade --------------------------------------------------------------------
  for I := 1 to 4 do
  begin
    if DM.cdsClassf01.FieldByName('inf' + inttostr(i)).AsString <> 'Não informado' then
    begin
      DM.cdsClassf04INFLAMABILIDADE.AsString := 'Sim';

      if DM.cdsClassf01.FieldByName('inf' + inttostr(i)).AsString = 'Sim' then // comboboxes
      begin
        DM.cdsClassf04INFLAMAVEL.AsString := 'Sim';
      end;

    end;
  end;    
  // ------------------------------------------------------------------------------------




  // corrosividade ----------------------------------------------------------------------
  if (DM.cdsClassf01CORRR.AsString <> '') or (DM.cdsClassf01CORR1.AsString <> 'Não informado' ) then
  begin
    DM.cdsClassf04CORROSIVIDADE.AsString := 'Sim';

    if DM.cdsClassf01CORRR.AsString <> '' then
    begin
      if ValidaNum(DM.cdsClassf01CORRR.AsString) = false then
      begin
        if (StrToFloat(DM.cdsClassf01CORRR.AsString) <= 2) or (StrToFloat(DM.cdsClassf01CORRR.AsString) >= 12.5) then
        begin
          DM.cdsClassf04CORROSIVO.AsString := 'Sim';
        end;
      end;
    end;

     if DM.cdsClassf01CORR1.AsString = 'Sim' then
      begin
        DM.cdsClassf04CORROSIVO.AsString := 'Sim';
      end;

  end;

  // ------------------------------------------------------------------------------------



  // reatividade ------------------------------------------------------------------------
  if (DM.cdsClassf01REAR1.AsString <> '') or (DM.cdsClassf01REAR2.AsString <> '') then
  begin
    DM.cdsClassf04REATIVIDADE.AsString := 'Sim';

    for i := 1 to 2 do //edits
    begin
      if DM.cdsClassf01.FieldByName('ReaR' + inttostr(i)).AsString <> '' then
      begin
        if ValidaNum(DM.cdsClassf01.FieldByName('ReaR' + inttostr(i)).AsString) = false then
        begin
          if StrToFloat(DM.cdsClassf01.FieldByName('ReaR' + inttostr(i)).AsString) > StrToFloat(TEdit(FindComponent('edtRL' + inttostr(i))).Text)  then
          begin
            DM.cdsClassf04REATIVO.AsString := 'Sim';
          end;
        end;
      end;
    end;

  end;

  for I := 1 to 7 do
  begin
    if DM.cdsClassf01.FieldByName('Rea' + inttostr(i)).AsString <> 'Não informado' then
    begin
      DM.cdsClassf04REATIVIDADE.AsString := 'Sim';

      if DM.cdsClassf01.FieldByName('Rea' + inttostr(i)).AsString = 'Sim' then
      begin
        DM.cdsClassf04REATIVO.AsString := 'Sim';
      end;

    end;
  end;
  // ------------------------------------------------------------------------------------



  // toxicidade -------------------------------------------------------------------------

  if DM.cdsClassf02.RecordCount > 0 then
  begin
    DM.cdsClassf04TOXICIDADE.AsString := 'Sim';

    DM.cdsClassf02.first;
    while not DM.cdsClassf02.Eof do
    begin
      if ValidaNum(DM.cdsClassf02RESULTADO.AsString) = false then // caso o valor seja numerico
      begin
        if StrToFloat(DM.cdsClassf02RESULTADO.AsString) > StrToFloat(DM.cdsClassf02LIMITE.AsString) then
        begin
          DM.cdsClassf04TOXICO.AsString := 'Sim';
        end;
      end;
      DM.cdsClassf02.Next;
    end;      

  end;
  // ------------------------------------------------------------------------------------




  // Patogenicidade ---------------------------------------------------------------------
  for I := 1 to 2 do
  begin
    if DM.cdsClassf01.FieldByName('Pat' + inttostr(i)).AsString <> 'Não informado' then
    begin
      DM.cdsClassf04PATOGENICIDADE.AsString := 'Sim';

      if DM.cdsClassf01.FieldByName('Pat' + inttostr(i)).AsString = 'Sim' then
      begin
        DM.cdsClassf04PATOGENICO.AsString := 'Sim';
      end;           

    end;
  end;
  // ------------------------------------------------------------------------------------



  // solubilidade -----------------------------------------------------------------------

  if DM.cdsClassf03.RecordCount > 0 then
  begin
    DM.cdsClassf04SOLUBILIDADE.AsString := 'Sim';

    DM.cdsClassf03.first;
    while not DM.cdsClassf03.Eof do
    begin
      if ValidaNum(DM.cdsClassf03RESULTADO.AsString) = false then // caso o valor seja numerico
      begin
        if StrToFloat(DM.cdsClassf03RESULTADO.AsString) > StrToFloat(DM.cdsClassf03LIMITE.AsString) then
        begin
          DM.cdsClassf04SOLUVEL.AsString := 'Sim';
        end;
      end;
        DM.cdsClassf03.Next;
    end;

  end;                                                 
  // ------------------------------------------------------------------------------------

  DM.cdsClassf04.post;
  DM.cdsClassf04.ApplyUpdates(0);
  
  finally
    DM.conexao.Close;
  end;
end;

procedure TfrmCadClassificacao.GetHTMLValues;
var
//http://www.experts-exchange.com/Programming/Languages/Pascal/Delphi/Q_20421786.html?qid=20421786
 Doc: IHTMLDocument2;
 I: Integer;
 Element: OleVariant;
 Elements: IHTMLElementCollection;

 anexo : string;

 Checado : Boolean;
 StringTemp,ValueCheck,ResultSubs : string;
 IdAnexoF,Limite, Fonte,substancia : String;

begin

  Doc := Wb.Document as IHTMLDocument2;
  Elements := Doc.All;

      for I := 0 to Elements.length - 1 do
      begin
        Element := Elements.item(I, varEmpty);
        if (UpperCase(Element.tagName) = 'INPUT') and (UpperCase(Element.Type) = 'RADIO') then
        begin
          if (Element.Checked = true) then
          begin
            //ShowMessage('RadioButton: ' + Element.value);
            DM.cdsResiduo.CancelUpdates;
            DM.cdsResiduo.Open;
            DM.cdsResiduo.insert;
            DM.cdsResiduoID.AsInteger := Element.value;
            DM.cdsResiduo.Post;
          end;
        end;
      end;


  //verifica se o resíduo é do anexo H
  DM.cdsResiduo.First;
  DM.Conexao.Open;
  try
    with DM.cdsRRes do
    begin
      Close;
      CommandText := 'select * from NBR10004_RES where ID = ' + QuotedStr(IntToStr(DM.cdsResiduoID.AsInteger));
      Open;
    end;

    with DM.cdsRDesc do
    begin
      Close;
      CommandText := 'select * from NBR10004_DESC where ID = ' + QuotedStr(IntToStr(DM.cdsRResID_DESCRICAO.AsInteger));
      Open;
    end;
    anexo   := UpperCase(DM.cdsRDescANEXO.AsString);
  finally
    DM.Conexao.Close;
  end;



 if anexo = 'H' then
 begin
   Checado := false;

   for I := 0 to Elements.length - 1 do
   begin
      Element := Elements.item(I, varEmpty);

          if (UpperCase(Element.tagName) = 'INPUT') and (UpperCase(Element.Type) = 'CHECKBOX') then
          begin
              if (Element.Checked = true) then
              begin
                ValueCheck := Element.value;
                StringTemp := ValueCheck;
                Checado := true;
                //ShowMessage('CheckBox: ' + ValueCheck[i]);
              end;
          end;


          if (UpperCase(Element.tagName) = 'INPUT') and (UpperCase(Element.Type) = 'TEXT') then
          begin
            if (Element.Name = 'txtID'+StringTemp) then
            begin
              IdAnexoF := Element.Value;
              //ShowMessage('IdAnexoF: ' + IdAnexoF);
            end;

            if (Element.Name = 'txtF'+StringTemp) then
            begin
              if Element.Value <> '' then
              begin
                Fonte := Element.Value;
                //ShowMessage('fonte: ' + fonte);
              end
                else
                  begin
                    Fonte := '.';
                  end;
            end;

            if (Element.Name = 'txtL'+StringTemp) then
            begin
              if Element.Value <> '' then
              begin
                Limite := ReplaceStr(RemoveChar(Element.Value),'.',',');// transforma a variavel em apenas numeros e virgula
                //ShowMessage('Limite: ' + Limite);
              end
                else
                  begin
                    Limite := '.';
                  end;
            end;

            if (Element.Name = 'txtR'+StringTemp) then
            begin
              ResultSubs := ReplaceStr(RemoveChar(Element.Value),'.',',');// transforma a variavel em apenas numeros e virgula
              //ShowMessage('resultado: ' + ResultSubs);
              if Checado = true then
              begin
                Checado := false;

                if (Fonte <> '') and (Limite <> '') then   // caso seja informado um resultado, fonte de referencia, e limite para a substancia
                begin
                  with DM.cdsRSubs do
                  begin
                    Close;
                    CommandText := 'select * from NBR10004_SUBS where ID = ' + QuotedStr(ValueCheck);
                    Open;
                  end;
                  Substancia := DM.cdsRSubsSUBSTANCIA.AsString;
                  InsereSubs( StringTemp, Substancia, ResultSubs, IdAnexoF,Limite,Fonte);
                end
                  else
                    begin
                      Raise Exception.create('Verifique se os campos "Fonte" e "Limite" estão preenchidos corretamente.');
                    end;
              end;
            end;
          end;

   end; // final do laço For



 end
  else // caso o resíduo nao seja do anexo H
    begin
      for I := 0 to Elements.length - 1 do
      begin
        Element := Elements.item(I, varEmpty);
          if (UpperCase(Element.tagName) = 'INPUT') and (UpperCase(Element.Type) = 'CHECKBOX') then
          begin
            if (Element.Checked = true) then
            begin
              //ShowMessage('CheckBox: ' + Element.value);
              DM.cdsSubstancias.Open;
              DM.cdsSubstancias.Insert;
              DM.cdsSubstanciasID.AsInteger  := Element.value;
              DM.cdsSubstancias.Post;
            end;
          end;
      end;
    end;
end;




procedure TfrmCadClassificacao.GetOrigem;
{
  - O locate serve para localizar o resíduo (que o usuário selecionou no radiobutton,
  no pre-relatório html) dentro da tabela DM.cdsResultRes.

  - A função ProcuraStr verifica se no campo DM.cdsResultResRP exite a String
  solicitada, exemplo: verificar se no campo RP da tabela DM.cdsResultRes
  existe a String Resíduo. ProcuraStr(DM.cdsResultResRP.AsString,'resíduo')

  Obs: essa é uma forma de poder atualizar as strings para a procura com mais
  facilidade...
 }
begin
    origem_residuo := '';
    DM.cdsResultRes.First;
    DM.cdsResiduo.First;
    if DM.cdsResultRes.Locate('ID',DM.cdsResiduoID.AsInteger,[loCaseInsensitive]) = True then
        begin
            if ProcuraStr(DM.cdsResultResRP.AsString,'originado') = true then
            begin
                origem_residuo := Depois(DM.cdsResultResRP.AsString,'originado');
            end
              else
                  if ProcuraStr(DM.cdsResultResRP.AsString,'originados') = true then
                  begin
                      origem_residuo := Depois(DM.cdsResultResRP.AsString,'originados');
                  end
                      else
                          if ProcuraStr(DM.cdsResultResRP.AsString,'proveniente') = true then
                          begin
                              origem_residuo := Depois(DM.cdsResultResRP.AsString,'proveniente');
                          end
                      else
                  if ProcuraStr(DM.cdsResultResRP.AsString,'provenientes') = true then
                  begin
                      origem_residuo := Depois(DM.cdsResultResRP.AsString,'provenientes');
                  end

        end;
end;


procedure TfrmCadClassificacao.GetResiduo;
begin
      DM.cdsResiduo.Open;
      DM.cdsResiduo.First;

      DM.cdsRRes.Close;
      DM.cdsRRes.Params[0].AsInteger := DM.cdsResiduoID.AsInteger;
      DM.cdsRRes.Open;

      CI_Residuo      := DM.cdsRResID_IDENTIFICACAO.AsString;
      RP_Residuo      := DM.cdsRResRP.AsString;
      ConstP_Residuo  := DM.cdsRResCP.AsString;

      DM.cdsRDesc.Close;
      DM.cdsRDesc.Params[0].AsInteger := DM.cdsRResID_DESCRICAO.AsInteger;
      DM.cdsRDesc.Open;

      Anexo_Residuo   := DM.cdsRDescANEXO.AsString;
      DA_Residuo      := DM.cdsRDescDESCRICAO.AsString;
      CA_Residuo      := DM.cdsRDescCARATER.AsString;

      DM.cdsRCP.Close;
      DM.cdsRCP.Params[0].AsInteger := DM.cdsRResID_CARACTERISTICA.AsInteger;
      DM.cdsRCP.Open;

      CaracP_Residuo  := DM.cdsRCPCARACTERISTICA.AsString;

      DM.cdsRFG.Close;
      DM.cdsRFG.Params[0].AsInteger := DM.cdsRResID_FONTE.AsInteger;
      DM.cdsRFG.Open;

      FG_Residuo      := DM.cdsRFGFONTE.AsString;


end;

procedure TfrmCadClassificacao.GetSugestao;
var
a,b,c,d, msg : string;
begin
  a   := 'Resíduo Classe I - Perigoso';
  b   := 'Resíduo Classe II A - Não Inerte';
  c   := 'Resíduo Classe II B - Inerte';
  d   := 'Resíduo Classe II - Não Perigoso';
  msg := 'O sistema sugere que esse resíduo seja classificado como: ';

  DM.cdsRClasse.First;
  while not DM.cdsRClasse.Eof do
  begin
    if not StrIsInList(cbClasse.items,DM.cdsRClasseclasse.AsString) then // verifica se a string ja existe no ComboBox, caso nao exista entao adiciona ela no cb
    begin
      cbClasse.Items.Add(DM.cdsRClasseclasse.AsString);
      DM.cdsRClasse.Next;
    end
      else
        begin
          DM.cdsRClasse.Next;
        end;
  end;


  if StrIsInList(cbClasse.Items,a) then // verifica se a string existe no ComboBox
  begin
    msg := msg + a;
  end
    else
      if StrIsInList(cbClasse.Items,b) then
      begin
        msg := msg +  b;
      end
        else
          if StrIsInList(cbClasse.Items,c) then
          begin
            msg := msg +  c;
          end
            else
              if StrIsInList(cbClasse.Items,d) then
              begin
                msg := 'O sistema detectou que o resíduo é do tipo ' + d + '.' +#13 + 'Nesse caso sugere-se que seja realizado o ensaio de solubilidade para saber' +#13+ 'se esse resíduo é ou não inerte.';
              end
                else
                  begin
                    msg := 'Não foi detectado classe alguma para esse resíduo.';
                  end;

    ShowMessage(msg + #13 + 'A classificação final deverá ser feita através da avaliação dos anexos fornecido pelo' +#13+ 'sistema e dos resultados das análises.' + #13 + 'Determine a classe mais adequada para o resíduo, forneça a avaliação dos resultados, ' +#13+ 'considerações finais e salve as alterações.');

end;

procedure TfrmCadClassificacao.GetTextCombo;
var
i : integer;
begin
        
    for i := 1 to 4 do
    begin
      if DM.cdsClassf01.FieldByName('inf' + inttostr(i)).AsString <> '' then
      begin
          TComboBox(FindComponent('cbI' + inttostr(i))).ItemIndex := TComboBox(FindComponent('cbI' + inttostr(i))).Items.IndexOf(DM.cdsClassf01.FieldByName('inf' + inttostr(i)).AsString);

          if TComboBox(FindComponent('cbI' + inttostr(i))).text = 'Sim' then
          begin
            TComboBox(FindComponent('cbI' + inttostr(i))).Color := clRed;
          end
            else
              begin
                TComboBox(FindComponent('cbI' + inttostr(i))).Color := clWindow
              end;

      end;
    end;

    for i := 1 to 1 do
    begin
      if DM.cdsClassf01.FieldByName('Corr' + inttostr(i)).AsString <> '' then
      begin
          TComboBox(FindComponent('cbC' + inttostr(i))).ItemIndex := TComboBox(FindComponent('cbC' + inttostr(i))).Items.IndexOf(DM.cdsClassf01.FieldByName('Corr' + inttostr(i)).AsString);

          if TComboBox(FindComponent('cbC' + inttostr(i))).text = 'Sim' then
          begin
            TComboBox(FindComponent('cbC' + inttostr(i))).Color := clRed;
          end
            else
              begin
                TComboBox(FindComponent('cbC' + inttostr(i))).Color := clWindow
              end;
      end;
    end;

    for i := 1 to 7 do
    begin
      if DM.cdsClassf01.FieldByName('Rea' + inttostr(i)).AsString <> '' then
      begin
          TComboBox(FindComponent('cbR' + inttostr(i))).ItemIndex := TComboBox(FindComponent('cbR' + inttostr(i))).Items.IndexOf(DM.cdsClassf01.FieldByName('Rea' + inttostr(i)).AsString);

          if TComboBox(FindComponent('cbR' + inttostr(i))).text = 'Sim' then
          begin
            TComboBox(FindComponent('cbR' + inttostr(i))).Color := clRed;
          end
            else
              begin
                TComboBox(FindComponent('cbR' + inttostr(i))).Color := clWindow
              end;
      end;
    end;

    for i := 1 to 2 do
    begin
      if DM.cdsClassf01.FieldByName('Pat' + inttostr(i)).AsString <> '' then
      begin
          TComboBox(FindComponent('cbP' + inttostr(i))).ItemIndex := TComboBox(FindComponent('cbP' + inttostr(i))).Items.IndexOf(DM.cdsClassf01.FieldByName('Pat' + inttostr(i)).AsString);

          if TComboBox(FindComponent('cbP' + inttostr(i))).text = 'Sim' then
          begin
            TComboBox(FindComponent('cbP' + inttostr(i))).Color := clRed;
          end
            else
              begin
                TComboBox(FindComponent('cbP' + inttostr(i))).Color := clWindow
              end;
      end;
    end;

end;

procedure TfrmCadClassificacao.ImgExecute(Sender: TObject);
begin
  inherited;
  if opd.Execute then
  begin
    imgFQ.Picture.LoadFromFile(opd.FileName);
  end;
end;

procedure TfrmCadClassificacao.insere(sender: TObject);
begin
  DM.Conexao.Open;
    try
       with DM.cdsClassf01 do
       begin          
          Insert;
       end;

    finally
      DM.Conexao.Close;
    end;

    wb.Navigate('about:blank');

end;

procedure TfrmCadClassificacao.insereSubs(ID, Subs, Resultado, IDAnF, Lim,
  Font: string);
begin
   // insere as substâncias e seus resultados no CdsSubstancias
   DM.cdsSubstancias.Open;
   DM.cdsSubstancias.Insert;
   DM.cdsSubstanciasID.AsInteger         := StrToint(ID);
   DM.cdsSubstanciasSubstancia.AsString  := Subs;
   DM.cdsSubstanciasResultado.AsString   := Resultado;
   DM.cdsSubstanciasIDAnexoF.AsString    := IDAnF;
   DM.cdsSubstanciasLimite.AsString      := Lim;
   DM.cdsSubstanciasFonte.AsString       := Font;

   DM.cdsSubstancias.Post;

end;

procedure TfrmCadClassificacao.abre(sender: TObject);
begin
  DM.Conexao.Open;
    try
       with DM.cdsClassf01 do 
       begin
            Close;
            Params[0].AsInteger :=  DM.cdsClassf01_IDCLASSIFICACAO.AsInteger;
            Open;
       end;

       idClassificacao := IntToStr(DM.cdsClassf01_IDCLASSIFICACAO.AsInteger);
       

       with DM.cdsEmpresas do
       begin
            Close;
            Params[0].AsInteger :=  DM.cdsClassf01_IDCLIENTE.AsInteger;
            Open;
       end;


       with DM.cdsProc do
       begin
            Close;
            Params[0].AsInteger :=  DM.cdsClassf01_IDPROCESSO.AsInteger;
            Open;
       end;
                   

      // caso exista um arquivo html na tabela, entao salva ele no hd e recupera ele no wb
      if not DM.cdsClassf01HTML.IsNull then
      begin
        DM.cdsClassf01HTML.SaveToFile(ExtractFilePath(Application.ExeName)+'relat\ResiduoConhecido_nbr10004_'+FormatDateTime('ddmmyyy_',Date)+FormatDateTime('hhmmss',time)+'.html');
        WB.Navigate(ExtractFilePath(Application.ExeName)+'relat\ResiduoConhecido_nbr10004_'+FormatDateTime('ddmmyyy_',Date)+FormatDateTime('hhmmss',time)+'.html');
      end
        else
          begin
            wb.Navigate('about:blank');
          end;

      //----------------------------------------------------------------------------------


      // caso exista uma foto na tabela, entao exibe no dbiFoto --------------------------
      if not DM.cdsClassf01FOTO.IsNull then
      begin
        ShowJpg;
      end;
      //----------------------------------------------------------------------------------

      // RadioGroup responsavel pela coleta ----------------------------------------------
      if DM.cdsClassf01COLETA.AsString = 'laboratório' then
      begin
        rg.ItemIndex := 0;
      end
        else
          if DM.cdsClassf01COLETA.AsString = 'interessado' then
          begin
            rg.ItemIndex := 1;
          end;
      //---------------------------------------------------------------------------------

      // caso o resíduo tenha uma classe na tabela, entao recupera no cdClasse -----------
      cbClasse.Items.Clear;
      if DM.cdsClassf01CLASSE.AsString <> '' then
      begin
        cbClasse.Items.Add(DM.cdsClassf01CLASSE.AsString);
        cbClasse.ItemIndex := 0; // poe o registro em foco
      end;
      //----------------------------------------------------------------------------------
      mmAnexos.Lines.Clear;
      mmAnexos.Lines.Add(DM.cdsClassf01ANEXOS.AsString);
      GetTextCombo; // recupera os valores dos combos que estao no banco
      VerificaResult;

      if DM.cdsClassf01CLASSE.AsString <> '' then // se o resíduo ja foi classificado, entao habilita o botao
      begin
        Btn_Up.Enabled := true;
      end
        else
          begin
            Btn_Up.Enabled := false;
          end;

          
    finally
    DM.Conexao.Close;
    end;


end;

procedure TfrmCadClassificacao.atualiza;
begin
  DM.Conexao.Open;
    try
       with DM.cdsClassf01_ do
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

end;

procedure TfrmCadClassificacao.AtualizaCdsEmpresa;
begin
  DM.Conexao.Open;
  try
    DM.cdsEmpresas.Close;
    DM.cdsEmpresas.Params[1].AsString := '%';
    DM.cdsEmpresas.Open;
  finally
    DM.Conexao.Close;
  end;
end;

procedure TfrmCadClassificacao.InsTermosCds;
var
TermoR, TermoC, TermoSub: TStringList;
Tr, Tc, Ts, sconta : integer;
begin
    // trata o resíduo
    if edtR.Text <> '' then
    begin
    // trata os termos do resíduo ---------
    TermoR := Termos(edtR.Text,';');
    sconta := TermoR.Count;
    for Tr := 0 to sconta-1 do
    begin
        // verifica se o registro não existe
        if not DM.cdsTermosR.Locate('TERMO',LowerCase(TermoR[Tr]),[loCaseInsensitive]) = True then
        begin
            try
              DM.cdsTermosR.insert;                                       // ClientDataSet
              DM.cdsTermosR.Fields[0].AsString := LowerCase(TermoR[Tr]);   // Fields[0] = primeiro campo do ClientDataSet
              DM.cdsTermosR.Post;
            except on exception do
              DM.cdsTermosR.CancelUpdates;
            end;
        end
          else
              begin
                  // se o registro existir passa batido
              end;
    end;
    end;



    // trata o constituinte
    if edtC.Text <> '' then
    begin
    // trata os termos do Constituinte ----
    TermoC := Termos(edtC.Text,';');
    sconta := TermoC.Count;
    for Tc := 0 to sconta-1 do
    begin
        // verifica se o registro não existe
        if not DM.cdsTermosC.Locate('TERMO',LowerCase(TermoC[Tc]),[loCaseInsensitive]) = True then
        begin
            try
              DM.cdsTermosC.insert;                                       // ClientDataSet
              DM.cdsTermosC.Fields[0].AsString := LowerCase(TermoC[Tc]);   // Fields[0] = primeiro campo do ClientDataSet
              DM.cdsTermosC.Post;
            except on exception do
              DM.cdsTermosC.CancelUpdates;
            end;
        end
          else
              begin
                  // se o registro existir passa batido
              end;
    end;
    end;




    // trata a Substância
    if edtS.Text <> '' then
    begin
    // trata os termos da substância
    TermoSub  := Termos(edtS.Text,';');
    sconta    := TermoSub.Count;
    for Ts := 0 to sconta-1 do
    begin
        // verifica se o registro não existe
        if not DM.cdsTermosS.Locate('TERMO',LowerCase(TermoSub[Ts]),[loCaseInsensitive]) = True then
        begin
            try
              DM.cdsTermosS.insert;                                       // ClientDataSet
              DM.cdsTermosS.Fields[0].AsString := LowerCase(TermoSub[Ts]);   // Fields[0] = primeiro campo do ClientDataSet
              DM.cdsTermosS.Post;
            except on exception do
              DM.cdsTermosS.CancelUpdates;
            end;
        end
          else
              begin
                  // se o registro existir passa batido
              end;
    end;
    end;


end;

procedure TfrmCadClassificacao.JPGtoBMPFoto;
var
  bS  : TClientBlobStream;
  Jpg : TJpegImage;
  Bmp: TBitmap;
begin
  bS := TClientBlobStream.Create (DM.cdsClassf01FOTO, bmRead);
  try
    Jpg:=TJpegImage.Create;
    try
     Jpg.LoadFromStream(bS);
     Bmp := TBitmap.Create;

     Imagem := ExtractFilePath(Application.ExeName)+'relat\FOTO'+FormatDateTime('ddmmyyy_',Date)+FormatDateTime('hhmmss',time);

      try
        Bmp.Assign(JPg);
        Bmp.SaveToFile(ChangeFileExt(Imagem, '.bmp'));
      finally
        Bmp.Free;
      end;

    finally
     Jpg.Free;
    end;
  finally
    bS.Free
  end;

  DM.cdsClassf01.Edit;
  DM.cdsClassf01TMP.AsString := Imagem+'.bmp';
  DM.cdsClassf01.Post;

end;

procedure TfrmCadClassificacao.JPGtoBMPLogo;
var
  bS  : TClientBlobStream;
  Jpg : TJpegImage;
  Bmp : TBitmap;
begin
  bS := TClientBlobStream.Create (DM.cdsConfigLOGO, bmRead);
  try
    Jpg:=TJpegImage.Create;
    try
     Jpg.LoadFromStream(bS);
     Bmp := TBitmap.Create;

     Imagem := ExtractFilePath(Application.ExeName)+'relat\LOGO'+FormatDateTime('ddmmyyy_',Date)+FormatDateTime('hhmmss',time);

      try
        Bmp.Assign(JPg);
        Bmp.SaveToFile(ChangeFileExt(Imagem, '.bmp'));
      finally
        Bmp.Free;
      end;

    finally
     Jpg.Free;
    end;
  finally
    bS.Free
  end;


    DM.cdsConfig.Open;
    DM.cdsConfig.Edit;
    DM.cdsConfigTMP.AsString := Imagem+'.bmp';
    DM.cdsConfig.Post;
  

end;

procedure TfrmCadClassificacao.LimpaCds;
begin
    DM.cdsTermosC.CancelUpdates;
    DM.cdsTermosS.CancelUpdates;
    DM.cdsTermosR.CancelUpdates;
    DM.cdsResultSubs.CancelUpdates;
    DM.cdsResultRes.CancelUpdates;

    DM.cdsResiduo.CancelUpdates;
    DM.cdsSubstancias.CancelUpdates;
    DM.cdsSubsClasse.CancelUpdates;
    DM.cdsSubsAnF.CancelUpdates;

    DM.cdsRClasse.CancelUpdates;
    DM.cdsRare.CancelUpdates;



    //DM.cdsRClasfSubs.CancelUpdates;
    //DM.cdsRClasfRes.CancelUpdates;
    //DM.cdsRClasfFG.CancelUpdates;
    //DM.cdsRClasfCP.CancelUpdates;
    //DM.cdsRClasfDesc.CancelUpdates;
end;

procedure TfrmCadClassificacao.LimparWBExecute(Sender: TObject);
begin
  inherited;
  wb.Navigate('about:blank');
  edtR.Clear;
  edtC.Clear;
  edtS.Clear;
end;

procedure TfrmCadClassificacao.mmAnexosKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if StrToInt(lblAnexos.Caption) <= 15 then
    begin
        lblAnexos.Font.Color := clred;
        lblAnexos.Caption    := IntToStr(10000 - Length(mmAnexos.Lines.Text))
    end
      else
          begin
              lblAnexos.Font.Color := clGray;
              lblAnexos.Caption    := IntToStr(10000 - Length(mmAnexos.Lines.Text))
          end;
end;

procedure TfrmCadClassificacao.mmAvaliacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  // simula o pressionamento das teclas ctrl+enter
  //if key = #13 then
  //begin
    { Mantém pressionada CTRL }
    //keybd_event(VK_CONTROL, 0, KEYEVENTF_EXTENDEDKEY or 0, 0);

    { Pressiona Enter }
    //keybd_event(VK_RETURN, 0, 0, 0);

    { Libera (solta) CTRL }
    //keybd_event(VK_CONTROL, $45, KEYEVENTF_EXTENDEDKEY or KEYEVENTF_KEYUP, 0);  
  //end;

  if StrToInt(lblAvaliacao.Caption) <= 15 then
    begin
        lblAvaliacao.Font.Color := clred;
        lblAvaliacao.Caption    := IntToStr(10000 - Length(mmAvaliacao.Lines.Text))
    end
      else
          begin
              lblAvaliacao.Font.Color := clGray;
              lblAvaliacao.Caption    := IntToStr(10000 - Length(mmAvaliacao.Lines.Text))
          end;
end;

procedure TfrmCadClassificacao.mmConsideracoesKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if StrToInt(lblConsideracoes.Caption) <= 15 then
    begin
        lblConsideracoes.Font.Color := clred;
        lblConsideracoes.Caption    := IntToStr(10000 - Length(mmConsideracoes.Lines.Text))
    end
      else
          begin
              lblConsideracoes.Font.Color := clGray;
              lblConsideracoes.Caption    := IntToStr(10000 - Length(mmConsideracoes.Lines.Text))
          end;
end;

procedure TfrmCadClassificacao.mmDAKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if StrToInt(lblDA.Caption) <= 15 then
    begin
        lblDA.Font.Color := clred;
        lblDA.Caption    := IntToStr(500 - Length(mmDA.Lines.Text))
    end
      else
          begin
              lblDA.Font.Color := clGray;
              lblDA.Caption    := IntToStr(500 - Length(mmDA.Lines.Text))
          end;
end;

procedure TfrmCadClassificacao.mmMetodologiaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if StrToInt(lblMet.Caption) <= 15 then
    begin
        lblMet.Font.Color := clred;
        lblMet.Caption    := IntToStr(1000 - Length(mmMetodologia.Lines.Text))
    end
      else
          begin
              lblMet.Font.Color := clGray;
              lblMet.Caption    := IntToStr(1000 - Length(mmMetodologia.Lines.Text))
          end;
end;

procedure TfrmCadClassificacao.mmObsKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if StrToInt(lblObs.Caption) <= 15 then
    begin
        lblObs.Font.Color := clred;
        lblObs.Caption    := IntToStr(1000 - Length(mmObs.Lines.Text))
    end
      else
          begin
              lblObs.Font.Color := clGray;
              lblObs.Caption    := IntToStr(1000 - Length(mmObs.Lines.Text))
          end;
end;



procedure TfrmCadClassificacao.MsgHandler(var Msg: TMsg; var Handled: Boolean);
const
  StdKeys = [VK_BACK, VK_UP, VK_DOWN, VK_LEFT, VK_RIGHT];
var IOIPAO: IOleInPlaceActiveObject;
  Dispatch: IDispatch;
begin
  if wb = nil then
  begin
    Handled := False;
    Exit;
  end;
  Handled := (IsDialogMessage(wb.Handle, Msg) = True);
  if (Handled) and (not wb.Busy) then
  begin
    if FOleInPlaceActiveObject = nil then
    begin 
      Dispatch := wb.Application; 
      if Dispatch <> nil then 
      begin 
        Dispatch.QueryInterface(IOleInPlaceActiveObject, IOIPAO); 
        if IOIPAO <> nil then FOleInPlaceActiveObject := IOIPAO; 
      end; 
    end; 
    if FOleInPlaceActiveObject <> nil then 
      if ((Msg.message = WM_KEYDOWN) or (Msg.message = WM_KEYUP)) and 
        (Msg.wParam in StdKeys) then 
        //nothing  -  do not pass on Backspace, Left, Right, Up, Down arrows 
      else FOleInPlaceActiveObject.TranslateAccelerator(Msg); 
  end; 
end; 


procedure TfrmCadClassificacao.NovoExecute(Sender: TObject);
begin
  inherited;

  Inserindo := true;
  insere(nil);
  Inserindo := false;
  ResetComponents;

  Btn_Up.Enabled := false;
  dbgTox.Enabled := false;
  dbgSol.Enabled := false;
  PC1.ActivePage := tsDA;
  cbCliente.SetFocus;
end;

procedure TfrmCadClassificacao.PreConsulta;
{http://forum.clubedelphi.net/viewtopic.php?t=84519&highlight=}
var
sql, sqlDesc, sqlFG, sqlCP : string;
contador, pergunta : integer;
begin

    // se vc quiser que tenha TODAS AS PALAVRAS, independente da ordem use AND
    //se vc quiser que tenha QUALQUER UMA DAS PALAVRAS, troque o and por or.

    //faz a consulta na tabela de Resíduos
    AtualizaCdsRes;
    Dm.cdsRClasfRes.First;

    // gera a clausula SQL do campo RP
    if edtR.Text <> '' then
        begin
            // varre cds Termos do resíduo para consultar termo a termo na tabela
            sql := 'select * from NBR10004_RES where ';
            Dm.cdsTermosR.First;
            while not Dm.cdsTermosR.Eof do
            begin
                //caso cdsTermosR tenha mais de um registro
                if Dm.cdsTermosR.Recno > 1 then sql := sql + ' AND ';
                // a clausula containing é case insensitive(nao afetada pela diferença de caixa alta/baixa)
                sql := sql + ' RP containing '+quotedstr(Dm.cdsTermosRTERMO.AsString);
                Dm.cdsTermosR.next;
            end;
        end
            else
                begin
                    Raise Exception.create('O campo "Resíduo" é obrigatório.');
                    edtR.SetFocus;
                end;

                // gera a clausula SQL do campo CP
                if edtC.Text <> '' then
                begin
                    // varre cds Termos do resíduo para consultar termo a termo na tabela
                    sql := sql + ' AND ';
                    Dm.cdsTermosC.First;
                    while not Dm.cdsTermosC.Eof do
                    begin
                        //caso cdsTermosR tenha mais de um registro
                        if Dm.cdsTermosC.Recno > 1 then sql := sql + ' AND ';
                        // a clausula containing é case insensitive(nao afetada pela diferença de caixa alta/baixa)
                        sql := sql + ' CP containing '+quotedstr(Dm.cdsTermosCTERMO.AsString);
                        Dm.cdsTermosC.next;
                    end;
                end;

                  //ShowMessage(sql);

                  DM.Conexao.Open;
                  try
                    // envia o sql ao servidor
                    DM.cdsRClasfRes.Close;
                    DM.cdsRClasfRes.CommandText := sql;
                    DM.cdsRClasfRes.Open;

                    // se a consulta retornou algum resultado
                    if not DM.cdsRClasfRes.Eof then
                    begin
                        pb.Max      := DM.cdsRClasfRes.RecordCount;
                        pb.Position := pb.Min;

                        contador := 0;
                        DM.cdsRClasfRes.First;
                        // varre o cdsRClasfRes, e insere os resultados da consulta no cdsResultRes
                        while not DM.cdsRClasfRes.Eof do
                        begin
                            contador            := contador + 1;
                            pb.Position         := contador;
                            SB.Repaint; { Repinta a StatusBar para forçar a atualização visual }
                            SB.Panels[0].Text := 'Pré-classificando o resíduo: '+DM.cdsRClasfResID_IDENTIFICACAO.AsString;
                            SB.Panels[2].Text := IntToStr((pb.Position*100)div pb.max)+' %';
                            Application.ProcessMessages;

                            Dm.cdsResultRes.Insert;
                            Dm.cdsResultRes.Fields[0].AsInteger  := DM.cdsRClasfResID.AsInteger;
                            Dm.cdsResultRes.Fields[1].AsString   := DM.cdsRClasfResID_IDENTIFICACAO.AsString;
                            Dm.cdsResultRes.Fields[2].AsString   := 'residuo';

                            if DM.cdsRClasfResID_DESCRICAO.AsString <> '' then
                            begin
                                sqlDesc := 'select * from NBR10004_DESC where id ='+DM.cdsRClasfResID_DESCRICAO.AsString;
                                DM.cdsRClasfDesc.Close;
                                DM.cdsRClasfDesc.CommandText := sqlDesc;
                                DM.cdsRClasfDesc.Open;

                                Dm.cdsResultRes.Fields[3].AsString   := DM.cdsRClasfDescANEXO.AsString;
                                Dm.cdsResultRes.Fields[4].AsString   := DM.cdsRClasfDescDESCRICAO.AsString;
                                Dm.cdsResultRes.Fields[5].AsString   := DM.cdsRClasfDescCARATER.AsString;

                            end;

                            Dm.cdsResultRes.Fields[6].AsString   := DM.cdsRClasfResCP.AsString;
                            Dm.cdsResultRes.Fields[7].AsString   := DM.cdsRClasfResRP.AsString;

                            if DM.cdsRClasfResID_FONTE.AsString <> '' then
                            begin
                                sqlFG := 'select * from NBR10004_FG where id ='+DM.cdsRClasfResID_FONTE.AsString;
                                DM.cdsRClasfFG.Close;
                                DM.cdsRClasfFG.CommandText := sqlFG;
                                DM.cdsRClasfFG.Open;

                                Dm.cdsResultRes.Fields[8].AsString   := DM.cdsRClasfFGFONTE.AsString;
                            end;

                            if DM.cdsRClasfResID_CARACTERISTICA.AsString <> '' then
                            begin
                                sqlCP := 'select * from NBR10004_CP where id ='+DM.cdsRClasfResID_CARACTERISTICA.AsString;
                                DM.cdsRClasfCP.Close;
                                DM.cdsRClasfCP.CommandText := sqlCP;
                                DM.cdsRClasfCP.Open;

                                Dm.cdsResultRes.Fields[9].AsString   := DM.cdsRClasfCPCARACTERISTICA.AsString;
                            end;

                            Dm.cdsResultRes.Fields[10].AsInteger     := contador;

                            Dm.cdsResultRes.Post;

                            DM.cdsRClasfRes.Next;
                        end;
                        achouR := true;
                    end
                        else
                            begin
                                achouR := false;
                                pergunta := Application.MessageBox('Nenhum resíduo foi encontrado, gostaria de fazer os outros ensaios?', 'Confirme', mb_yesno);
                                if pergunta = IDYES Then
                                begin
                                 DM.cdsRare.Open;
                                 DM.cdsRare.Insert;
                                 DM.cdsRareEnsaio.AsString := '1. Consulta aos anexos A e B: ';
                                 DM.cdsRareAvaliacao.AsString := 'O resíduo não consta nos anexos A ou B da Norma NBR 10004:2004.';
                                 DM.cdsRare.Post;

                                 // vai para proxima aba (residuo de origem desconohecida)
                                 PC1.ActivePage := tsRD;
                                end;
                            end;
                  finally
                      DM.Conexao.Close;
                  end;


        //faz a consulta na tabela de substâncias
        AtualizaCdsSubs;
        Dm.cdsRClasfSubs.First;

        // gera a clausula SQL do campo RP
        if edtS.Text <> '' then
            begin
                // varre cds Termos do resíduo para consultar termo a termo na tabela
                sql := 'select * from NBR10004_SUBS where ';
                Dm.cdsTermosS.First;
                while not Dm.cdsTermosS.Eof do
                begin
                    //caso cdsTermosR tenha mais de um registro
                    if Dm.cdsTermosS.Recno > 1 then sql := sql + ' OR ';
                    // a clausula containing é case insensitive(nao afetada pela diferença de caixa alta/baixa)
                    sql := sql + ' SUBSTANCIA containing '+quotedstr(Dm.cdsTermosSTERMO.AsString);
                    Dm.cdsTermosS.next;
                end;

                //ShowMessage(sql);

                DM.Conexao.Open;
                  try
                    // envia o sql ao servidor
                    DM.cdsRClasfSubs.Close;
                    DM.cdsRClasfSubs.CommandText := sql;
                    DM.cdsRClasfSubs.Open;

                    // se a consulta retornou algum resultado
                    if not DM.cdsRClasfSubs.Eof then
                    begin
                        pb.Max      := DM.cdsRClasfSubs.RecordCount;
                        pb.Position := pb.Min;

                        contador := 0;
                        DM.cdsRClasfSubs.First;
                        // varre o cdsRClasfSubs, e insere os resultados da consulta no cdsResultSubs
                        while not DM.cdsRClasfSubs.Eof do
                        begin
                            contador := contador + 1;
                            pb.Position         := contador;
                            SB.Repaint; { Repinta a StatusBar para forçar a atualização visual }
                            SB.Panels[0].Text := 'Pré-classificando a substância: '+DM.cdsRClasfSubsSUBSTANCIA.AsString;
                            SB.Panels[2].Text := IntToStr((pb.Position*100)div pb.max)+' %';
                            Application.ProcessMessages;

                            Dm.cdsResultSubs.Insert;
                            Dm.cdsResultSubs.Fields[0].AsInteger  := DM.cdsRClasfSubsID.AsInteger;
                            Dm.cdsResultSubs.Fields[1].AsString   := DM.cdsRClasfSubsID_IDENTIFICACAO.AsString;
                            Dm.cdsResultSubs.Fields[2].AsString   := 'substancia';
                            Dm.cdsResultSubs.Fields[3].AsString   := DM.cdsRClasfSubsCAS.AsString;
                            Dm.cdsResultSubs.Fields[4].AsString   := DM.cdsRClasfSubsSUBSTANCIA.AsString;
                            Dm.cdsResultSubs.Fields[5].AsString   := DM.cdsRClasfSubsOUTRA_DENOMINACAO.AsString;

                            if DM.cdsRClasfSubsID_DESCRICAO.AsString <> '' then
                            begin
                                sqlDesc := 'select * from NBR10004_DESC where id ='+DM.cdsRClasfSubsID_DESCRICAO.AsString;
                                DM.cdsRClasfDesc.Close;
                                DM.cdsRClasfDesc.CommandText := sqlDesc;
                                DM.cdsRClasfDesc.Open;

                                Dm.cdsResultSubs.Fields[6].AsString   := DM.cdsRClasfDescANEXO.AsString;
                                Dm.cdsResultSubs.Fields[7].AsString   := DM.cdsRClasfDescDESCRICAO.AsString;
                                Dm.cdsResultSubs.Fields[8].AsString   := DM.cdsRClasfDescCARATER.AsString;
                            end;

                            Dm.cdsResultSubs.Post;

                            DM.cdsRClasfSubs.Next;
                        end;
                        achouS := true;
                    end
                        else
                            begin
                                 achouS := false;
                                // passa batido caso a consulta nao retornou algum resultado
                            end;
                  finally
                      DM.Conexao.Close;
                  end;
            end;


    { Reseta (zera) a ProgressBar }
    PB.Position := PB.Min;
    { Repinta a StatusBar para forçar a atualização visual }
    SB.Repaint;
    SB.Panels[0].Text :='';
    SB.Panels[2].Text :='';

end;


procedure TfrmCadClassificacao.ProcuraTexto(aText: string);
{var
procura : string;
begin
    procura := inputbox('Procurar','Texto:','');
    if procura <> '' then
    begin
      ProcuraTexto(procura);
    end;
end;
}
var
  tr: IHTMLTxtRange; //TextRange Object
begin
  if not WB.Busy then
  begin
    tr := ((WB.Document as IHTMLDocument2).body as IHTMLBodyElement).createTextRange;
    //Get a body with IHTMLDocument2 Interface and then a TextRang obj. with IHTMLBodyElement Intf.

    while tr.findText(aText, 1, 0) do //while we have result
    begin
      tr.pasteHTML('<span style="background-color: Lime; font-weight: bolder;">' +
        tr.htmlText + '</span>');
      //Set the highlight, now background color will be Lime
      tr.scrollIntoView(True);
      //When IE find a match, we ask to scroll the window... you dont need this...
    end;
  end;
end;


procedure TfrmCadClassificacao.ResetComponents;
var
  i : Integer;
begin
  WB.Navigate('about:blank');
  imgFQ.Picture := nil;
  opd.FileName  := '';

    for i := 1 to 4 do
    begin
      TComboBox(FindComponent('cbI' + inttostr(i))).ItemIndex := 2;
    end;

    for i := 1 to 1 do
    begin
      TComboBox(FindComponent('cbC' + inttostr(i))).ItemIndex := 2;
    end;

    for i := 1 to 7 do
    begin
      TComboBox(FindComponent('cbR' + inttostr(i))).ItemIndex := 2;
    end;

    for i := 1 to 2 do
    begin
      TComboBox(FindComponent('cbP' + inttostr(i))).ItemIndex := 2;
    end;

  cbClasse.Items.Clear;
  mmAnexos.Lines.Clear;
  
end;

procedure TfrmCadClassificacao.rvDSCPaginasGetRow(
  Connection: TRvCustomConnection);
var
Mb : TRavePage;
Tox: TRavePage;
Sol: TRavePage;
Ava: TRavePage;
Ane: TRavePage;
Img: TRavePage;
Met: TRavePage;
begin
  inherited;
  
  Mb  := RvPLaudo.ProjMan.FindRaveComponent('RptLaudo.MassaBruta', nil) as TRavePage;
  Tox := RvPLaudo.ProjMan.FindRaveComponent('RptLaudo.Lixiviado', nil) as TRavePage;
  Sol := RvPLaudo.ProjMan.FindRaveComponent('RptLaudo.Solubilizado', nil) as TRavePage;
  Ava := RvPLaudo.ProjMan.FindRaveComponent('RptLaudo.Avaliacao', nil) as TRavePage;
  Ane := RvPLaudo.ProjMan.FindRaveComponent('RptLaudo.Anexos', nil) as TRavePage;
  Img := RvPLaudo.ProjMan.FindRaveComponent('RptLaudo.Imagem', nil) as TRavePage;
  Met := RvPLaudo.ProjMan.FindRaveComponent('RptLaudo.Metodologias', nil) as TRavePage;


  Mb.GotoPage   := nil;
  Tox.GotoPage  := nil;
  Sol.GotoPage  := nil;

  DM.cdsClassf04.First;
  
  if DM.cdsClassf04TOXICIDADE.AsString = 'Sim' then //caso tenha sido feito o ensaio de toxicidade
  begin
    Mb.GotoPage := Tox;

    if DM.cdsClassf04SOLUBILIDADE.AsString = 'Sim' then //caso tenha sido feito o ensaio de solubilidade
    begin
      Tox.GotoPage := Sol;
      Sol.GotoPage := Met;
    end
      else  //caso nao tenha sido feito a toxicidade mas nao tenha sido feito a solubilidade
        begin
          Tox.GotoPage := Met;
        end;

  end
    else // caso nao tenha sido feito a toxicidade, entao checa se foi feito a solubilidade
      if DM.cdsClassf04SOLUBILIDADE.AsString = 'Sim' then
      begin
        Mb.GotoPage  := Sol;
        Sol.GotoPage := Met;
      end
        else // caso cdsTox e cdsSol não possuam registros
          begin
            Mb.GotoPage := Met;
          end;

  if not DM.cdsClassf01FOTO.IsNull then
  begin
    Ane.GotoPage := Img;
  end;

end;

procedure TfrmCadClassificacao.SalvarExecute(Sender: TObject);
var
salva, classifica : Integer;
extensao,url : string;
begin
  inherited; 

salva := Application.MessageBox('Deseja salvar esse registro?', 'Confirme', mb_yesno);
if salva = IDYES Then
begin
 
  if DM.cdsClassf01ID_EMPRESA.IsNull then
  begin
    PC1.ActivePage := tsDA;
    cbCliente.SetFocus;
    raise exception.Create('o campo "Cliente" é obrigatório.');
  end
    else
      begin

      // salva a imagem na tabela -----------------------------------------------------------------
      extensao := UpperCase(ExtractFileExt(opd.FileName));
      if (opd.FileName <> '') and (extensao = '.JPG') then //se uma foto do tipo JPG foi selecionada
      begin
        SaveBlob(DM.cdsClassf01,DM.cdsClassf01FOTO,opd.FileName);
      end;
      // ------------------------------------------------------------------------------------------

      // salva o relatório HTMl na tabela ---------------------------------------------------------
      if WB.LocationName <> 'about:blank' then
      begin
        url :=  ExtractFilePath(Application.ExeName)+'relat\'+WB.LocationName+'.html';
        if url <> '' then
        begin
          SaveBlob(DM.cdsClassf01,DM.cdsClassf01HTML,url);
        end;
      end
        else
          begin
            if DM.cdsClassf01.State in [dsEdit, dsInsert]  then
            begin
              DM.cdsClassf01HTML.Assign(nil);
            end
              else
                begin
                  DM.cdsClassf01.Edit;
                  DM.cdsClassf01HTML.Assign(nil);
                end;
          end;
      // ------------------------------------------------------------------------------------------

      // salva os dados do formulario -------------------------------------------------------------
      if DM.cdsClassf01.State in [dsEdit, dsInsert]  then
      begin
        SaveCombo;
        DM.cdsClassf01ANEXOS.AsString := mmAnexos.Text;
        DM.cdsClassf01.ApplyUpdates(0);
      end
        else
          begin
            DM.cdsClassf01.edit;
            SaveCombo;
            DM.cdsClassf01ANEXOS.AsString := mmAnexos.Text;
            DM.cdsClassf01.ApplyUpdates(0);
          end;
      // ------------------------------------------------------------------------------------------

      dbgTox.Enabled := true;
      dbgSol.Enabled := true;        


      GetEnsaiosFeitos;           // verifica qual dos ensaios foram feitos e salva na tabela Classf04

      classifica := Application.MessageBox('Deseja realizar a classificação agora?', 'Confirme', mb_yesno);
      if classifica = IDYES Then
      begin
        ClassificaTudo;             // faz a classificaçao geral
        PC1.ActivePage := tsClasse; // poe em foco a aba classificaçao
        GetSugestao;
      end;

    end;
  end;

      if DM.cdsClassf01CLASSE.AsString <> '' then // se o resíduo ja foi classificado, entao habilita o botao
      begin
        Btn_Up.Enabled := true;
      end
        else
          begin
            Btn_Up.Enabled := false;
          end;

end;

procedure TfrmCadClassificacao.SaveBlob(cds: TClientDataSet; Campo: TBlobField;
  Path: string);
var
  fS  : TFileStream;
  // campo é o campo do tipo blob da tabela ex: clientdataset1FOTO
  // cds é o nome do clientdataset
  // path é o file name do OpenPictureDialog (nao esquecer de verificar se filename <> '' ao usar a procedure) ou um caminho fisico mesmo.
begin
  fs:=TFileStream.Create(Path, fmOpenRead);
  try

   if cds.State in [dsEdit, dsInsert]  then
    begin
      Campo.LoadFromStream(fs);
    end
      else
        begin
          cds.Edit;
          Campo.LoadFromStream(fs);
        end;

  finally
   fs.Free;
  end;
end;

procedure TfrmCadClassificacao.SaveCombo;
var
i : integer;
begin

    if rg.ItemIndex = 0 then
    begin
      DM.cdsClassf01COLETA.AsString := 'laboratório';
    end
      else
        if rg.ItemIndex = 1 then
        begin
          DM.cdsClassf01COLETA.AsString := 'interessado';
        end
          else
            begin
              raise Exception.Create('O campo responsável pela coleta é obrigatório.');
            end;

   
    for i := 1 to 4 do
    begin
      if TComboBox(FindComponent('cbI' + inttostr(i))).Text <> '' then
      begin
        DM.cdsClassf01.FieldByName('Inf' + inttostr(i)).AsString := TComboBox(FindComponent('cbI' + inttostr(i))).Text;
      end;
    end;

    for i := 1 to 1 do
    begin
      if TComboBox(FindComponent('cbC' + inttostr(i))).Text <> '' then
      begin
        DM.cdsClassf01.FieldByName('Corr' + inttostr(i)).AsString := TComboBox(FindComponent('cbC' + inttostr(i))).Text;;
      end;
    end;

    for i := 1 to 7 do
    begin
      if TComboBox(FindComponent('cbR' + inttostr(i))).Text <> '' then
      begin
        DM.cdsClassf01.FieldByName('Rea' + inttostr(i)).AsString := TComboBox(FindComponent('cbR' + inttostr(i))).Text;
      end;
    end;

    for i := 1 to 2 do
    begin
      if TComboBox(FindComponent('cbP' + inttostr(i))).Text <> '' then
      begin
        DM.cdsClassf01.FieldByName('Pat' + inttostr(i)).AsString := TComboBox(FindComponent('cbP' + inttostr(i))).Text;
      end;
    end;

    DM.cdsClassf01CLASSE.AsString := cbClasse.Text;

end;

procedure TfrmCadClassificacao.SBDrawPanel(StatusBar: TStatusBar;
  Panel: TStatusPanel; const Rect: TRect);
begin
  inherited;
  { Se for o primeiro painel... }
  if Panel.Index = 1 then
  begin
    { Ajusta a tamanho da ProgressBar de acordo com  o tamanho do painel }
    Pb.Width := Rect.Right - Rect.Left +1;
    Pb.Height := Rect.Bottom - Rect.Top +1;
    { Pinta a ProgressBar no DC (device-context) da StatusBar }
    Pb.PaintTo(StatusBar.Canvas.Handle, Rect.Left, Rect.Top);
  end;
end;

procedure TfrmCadClassificacao.ShowJpg;
var
  bS  : TClientBlobStream;
  Pic : TJpegImage;
begin
  bS := TClientBlobStream.Create (DM.cdsClassf01FOTO, bmRead);
  try
    Pic:=TJpegImage.Create;
    try
     Pic.LoadFromStream(bS);
     imgFQ.Picture.Graphic:=Pic;
    finally
     Pic.Free;
    end;
  finally
    bS.Free
  end;
end;


procedure TfrmCadClassificacao.ValidaCombo(cb: TComboBox);
begin
  if cb.Text = 'Sim' then
  begin
    cb.Color := clRed;
  end
    else
      begin
        cb.Color := clWindow;
      end;
end;

procedure TfrmCadClassificacao.VerificaResult;
begin
 try
  // verifica a corrosividade
    if ValidaNum(DM.cdsClassf01CORRR.AsString) = false  then // caso o valor digitado seja numérico (false)
    begin
      if StrToFloat(DM.cdsClassf01CORRR.AsString) < StrToFloat(DM.cdsClassf01CORRLQ.AsString) then  
      begin
        DM.cdsClassf01CORRR.AsString := '< L.Q';
        edtCR1.Color := clWindow;
      end;

      if (StrToFloat(DM.cdsClassf01CORRR.AsString) <= 2) or (StrToFloat(DM.cdsClassf01CORRR.AsString) >= 12.5) then
      begin
        edtCR1.Color := clRed;
      end
        else
          begin
            edtCR1.Color := clWindow;
          end;
    end;




  // verifica reatividade 1
    if ValidaNum(DM.cdsClassf01REAR1.AsString) = false  then // caso o valor digitado seja numérico (false)
    begin
      if StrToFloat(DM.cdsClassf01REAR1.AsString) < StrToFloat(DM.cdsClassf01REALQ1.AsString) then
      begin
        DM.cdsClassf01REAR1.AsString := '< L.Q';
        edtRR1.Color := clWindow;
      end;

      if strToFloat(DM.cdsClassf01REAR1.AsString) > StrToFloat(edtRL1.Text) then
      begin
        edtRR1.Color := clRed;
      end
        else
          begin
            edtRR1.Color := clWindow;
          end;
    end;




  // verifica reatividade 2
    if ValidaNum(DM.cdsClassf01REAR2.AsString) = false  then // caso o valor digitado seja numérico (false)
    begin
      if StrToFloat(DM.cdsClassf01REAR2.AsString) < StrToFloat(DM.cdsClassf01REALQ2.AsString) then
      begin
        DM.cdsClassf01REAR2.AsString := '< L.Q';
        edtRR2.Color := clWindow;
      end;

      if strToFloat(DM.cdsClassf01REAR2.AsString) > StrToFloat(edtRL2.Text) then
      begin
        edtRR2.Color := clRed;
      end
        else
          begin
            edtRR2.Color := clWindow;
          end;
    end;

  Except on exception do
  begin
    //não faz nada
  end;
  end;
end;

end.
