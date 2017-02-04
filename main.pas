unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, GLCadencer, GLWin32Viewer,
  GLCrossPlatform, GLBaseClasses, GLScene, GLObjects, GLCoordinates,
  Vcl.StdCtrls, Vcl.ComCtrls;

type
  TMainForm = class(TForm)
    GLScene: TGLScene;
    GLSceneViewer: TGLSceneViewer;
    GLCadencer: TGLCadencer;
    Panel1: TPanel;
    Splitter: TSplitter;
    GLCamera: TGLCamera;
    GLLightSource: TGLLightSource;
    GLCube: TGLCube;
    Label1: TLabel;
    RedAmbient: TEdit;
    GreenAmbient: TEdit;
    BlueAmbient: TEdit;
    ApplyButton: TButton;
    Label2: TLabel;
    RedDiffuse: TEdit;
    GreenDiffuse: TEdit;
    BlueDiffuse: TEdit;
    GroupBox1: TGroupBox;
    GLPlane: TGLPlane;
    StatusBar1: TStatusBar;
    procedure OnSceneProgress(Sender: TObject; const deltaTime,
      newTime: Double);
    procedure ApplyButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.ApplyButtonClick(Sender: TObject);
var
  r, g, b: single;

begin
  r := StrToFloat(RedAmbient.Text);
  g := StrToFloat(GreenAmbient.Text);
  b := StrToFloat(BlueAmbient.Text);

  GLCube.Material.FrontProperties.Ambient.Red := r;
  GLCube.Material.FrontProperties.Ambient.Green := g;
  GLCube.Material.FrontProperties.Ambient.Blue := b;

  r := StrToFloat(RedDiffuse.Text);
  g := StrToFloat(GreenDiffuse.Text);
  b := StrToFloat(BlueDiffuse.Text);

  GLCube.Material.FrontProperties.Diffuse.Red := r;
  GLCube.Material.FrontProperties.Diffuse.Green := g;
  GLCube.Material.FrontProperties.Diffuse.Blue := b;
end;

procedure TMainForm.OnSceneProgress(Sender: TObject; const deltaTime,
  newTime: Double);
begin
  GLCube.Turn(45 * deltaTime);
end;

end.
