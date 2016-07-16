unit UConsPai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, ActnList,SqlExpr, DBClient;

type
  TfrmConsPai = class(TForm)
    ActionList1: TActionList;
    atualizar: TAction;
    cancelar: TAction;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    edtParametro: TEdit;
    btnConsultar: TSpeedButton;
    btnAtualizar: TSpeedButton;
    btnCancelar: TSpeedButton;
    Consultar: TAction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cancelarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    end;

var
  frmConsPai: TfrmConsPai;

implementation



{$R *.dfm}



procedure TfrmConsPai.cancelarExecute(Sender: TObject);
begin
    Close;
end;
procedure TfrmConsPai.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    frmConsPai := nil;
    action     := caFree;
end;

procedure TfrmConsPai.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if     ((Screen.ActiveControl is TDBGrid) or
            (Screen.ActiveControl is TEdit) or
            (Screen.ActiveControl is TBitbtn) or
            (Screen.ActiveForm.ClassName = 'TMessageForm')) then
    begin
        case key of
        vk_Escape:  Close;
        Vk_F5:      btnAtualizar.Click;
        Vk_F9:      btnConsultar.Click;  
        end;
    end;
end;

end.
