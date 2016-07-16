unit UCadPai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ActnList, ComCtrls, ToolWin,DBCtrls,db,StdCtrls;

type
  TfrmCadPai = class(TForm)
    ToolBar1: TToolBar;
    ToolButton5: TToolButton;
    Btn_Down: TToolButton;
    ToolButton14: TToolButton;
    Btn_Up: TToolButton;
    ToolButton2: TToolButton;
    Btn_Novo: TToolButton;
    ToolButton1: TToolButton;
    Btn_Salvar: TToolButton;
    ToolButton4: TToolButton;
    Btn_Excluir: TToolButton;
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
    Panel1: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Inserindo : Boolean;
  end;

var
  frmCadPai: TfrmCadPai;

implementation

uses uDM, uPrincipal;

{$R *.dfm}

procedure TfrmCadPai.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    frmCadPai := nil;
    action    := caFree;
end;

procedure TfrmCadPai.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if     ((Screen.ActiveControl is TEdit) or
            (Screen.ActiveControl is TCombobox)  or
            (Screen.ActiveControl is TdbEdit) or
            (Screen.ActiveControl is TdbCombobox) or
            (Screen.ActiveControl is TdbMemo) or
            (Screen.ActiveControl is TDBLookupComboBox) or
            (Screen.ActiveForm.ClassName = 'TMessageForm')) then
    begin
        case key of
        vk_Escape:  Close;
        end;
    end;
end;

end.
