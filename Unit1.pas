unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnClose: TButton;
    Panel3: TPanel;
    before_step: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    fact_mm: TEdit;
    Button1: TButton;
    Label3: TLabel;
    afte_mm: TEdit;
    lbResult: TLabel;
    Label4: TLabel;
    procedure btnCloseClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btnCloseClick(Sender: TObject);
begin
    close;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  //lbResult.Text :=  FloatToStrF(StrToFloat(before_step.Text) * StrToFloat(afte_mm.Text) / StrToFloat(fact_mm.Text),ffFixed,2,2);   ;
    lbResult.Text :=  'Необходимо уставить:'+FloatToStr(StrToFloat(before_step.Text) * StrToFloat(afte_mm.Text) / StrToFloat(fact_mm.Text))+' step/mm';
end;

end.
