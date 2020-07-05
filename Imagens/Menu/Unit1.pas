unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.TabControl, FMX.Objects, FMX.Controls.Presentation, FMX.StdCtrls,
  FMX.Effects, FMX.Ani, FMX.InertialMovement;

type
  TForm1 = class(TForm)
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    Circle1: TCircle;
    Label1: TLabel;
    Label2: TLabel;
    Line1: TLine;
    Text1: TText;
    Text2: TText;
    Text3: TText;
    Layout4: TLayout;
    ScrollBox1: TScrollBox;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    StyleBook1: TStyleBook;
    GridPanelLayout1: TGridPanelLayout;
    Layout5: TLayout;
    Layout6: TLayout;
    Layout7: TLayout;
    Layout8: TLayout;
    Layout9: TLayout;
    Layout10: TLayout;
    Line2: TLine;
    Line3: TLine;
    Line4: TLine;
    Line5: TLine;
    Line6: TLine;
    Line8: TLine;
    Line9: TLine;
    Rectangle1: TRectangle;
    FloatAnimation1: TFloatAnimation;
    FloatAnimation2: TFloatAnimation;
    ShadowEffect1: TShadowEffect;
    Img_Btn_Fornecedor: TImage;
    Lbl_Btn_Fornecedor: TText;
    Rectangle2: TRectangle;
    ShadowEffect2: TShadowEffect;
    FloatAnimation3: TFloatAnimation;
    FloatAnimation4: TFloatAnimation;
    Text4: TText;
    Image1: TImage;
    Rectangle3: TRectangle;
    ShadowEffect3: TShadowEffect;
    FloatAnimation5: TFloatAnimation;
    FloatAnimation6: TFloatAnimation;
    Text5: TText;
    Image2: TImage;
    Rectangle4: TRectangle;
    ShadowEffect4: TShadowEffect;
    FloatAnimation7: TFloatAnimation;
    FloatAnimation8: TFloatAnimation;
    Text6: TText;
    Image3: TImage;
    Rectangle5: TRectangle;
    ShadowEffect5: TShadowEffect;
    FloatAnimation9: TFloatAnimation;
    FloatAnimation10: TFloatAnimation;
    Text7: TText;
    Image4: TImage;
    Rectangle6: TRectangle;
    ShadowEffect6: TShadowEffect;
    FloatAnimation11: TFloatAnimation;
    FloatAnimation12: TFloatAnimation;
    Text8: TText;
    Image5: TImage;
    procedure Rectangle1MouseLeave(Sender: TObject);
    procedure Rectangle1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Single);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ConfigScrollBox;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.ConfigScrollBox;
var
    LCalculations: TAniCalculations;
begin
    LCalculations := TAniCalculations.Create(nil);
    try
        LCalculations.Animation        := true;
        LCalculations.BoundsAnimation  := true;
        LCalculations.Averaging        := true;
        LCalculations.AutoShowing      := true;
        LCalculations.DecelerationRate := 0.5;
        LCalculations.Elasticity       := 50;
        LCalculations.TouchTracking    := [ttHorizontal];
        //--- Passa as configurações para os componentes que possuem rolagem ---\\
        ScrollBox1.AniCalculations.Assign(LCalculations);
    finally
        LCalculations.Free;
    end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
    Self.ConfigScrollBox;
end;

procedure TForm1.Rectangle1MouseLeave(Sender: TObject);
begin
    Rectangle1.Fill.Gradient.Color  := TAlphaColors.Null;
    Rectangle1.Fill.Gradient.Color1 := TAlphaColors.Null;
end;

procedure TForm1.Rectangle1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Single);
begin
    Rectangle1.Fill.Kind      := TBrushKind.Gradient;
    Rectangle1.Fill.Gradient  := Form1.Fill.Gradient;
end;

end.
