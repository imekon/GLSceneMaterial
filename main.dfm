object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'GLScene Material  Test'
  ClientHeight = 556
  ClientWidth = 903
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter: TSplitter
    Left = 249
    Top = 0
    Height = 537
    ResizeStyle = rsUpdate
    ExplicitLeft = 272
    ExplicitTop = 128
    ExplicitHeight = 100
  end
  object GLSceneViewer: TGLSceneViewer
    Left = 252
    Top = 0
    Width = 651
    Height = 537
    Camera = GLCamera
    Buffer.BackgroundColor = clBlack
    Buffer.AmbientColor.Color = {9A99193E9A99193E9A99193E0000803F}
    FieldOfView = 158.902450561523400000
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 383
    ExplicitHeight = 500
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 249
    Height = 537
    Align = alLeft
    TabOrder = 1
    ExplicitHeight = 500
    DesignSize = (
      249
      537)
    object ApplyButton: TButton
      Left = 168
      Top = 506
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Apply'
      TabOrder = 0
      OnClick = ApplyButtonClick
      ExplicitTop = 450
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 16
      Width = 209
      Height = 113
      Caption = 'Cube Front Material'
      TabOrder = 1
      object Label1: TLabel
        Left = 8
        Top = 16
        Width = 39
        Height = 13
        Caption = 'Ambient'
      end
      object Label2: TLabel
        Left = 8
        Top = 64
        Width = 34
        Height = 13
        Caption = 'Diffuse'
      end
      object RedAmbient: TEdit
        Left = 8
        Top = 35
        Width = 57
        Height = 21
        TabOrder = 0
        Text = '0.2'
      end
      object GreenAmbient: TEdit
        Left = 71
        Top = 35
        Width = 57
        Height = 21
        TabOrder = 1
        Text = '0.2'
      end
      object BlueAmbient: TEdit
        Left = 134
        Top = 35
        Width = 57
        Height = 21
        TabOrder = 2
        Text = '0.2'
      end
      object RedDiffuse: TEdit
        Left = 8
        Top = 83
        Width = 57
        Height = 21
        TabOrder = 3
        Text = '0.8'
      end
      object GreenDiffuse: TEdit
        Left = 71
        Top = 83
        Width = 57
        Height = 21
        TabOrder = 4
        Text = '0.8'
      end
      object BlueDiffuse: TEdit
        Left = 134
        Top = 83
        Width = 57
        Height = 21
        TabOrder = 5
        Text = '0.8'
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 537
    Width = 903
    Height = 19
    Panels = <>
    ExplicitLeft = 328
    ExplicitTop = 264
    ExplicitWidth = 0
  end
  object GLScene: TGLScene
    Left = 280
    Top = 264
    object GLLightSource: TGLLightSource
      ConstAttenuation = 1.000000000000000000
      Position.Coordinates = {000000400000803F000000400000803F}
      SpotCutOff = 180.000000000000000000
    end
    object GLCamera: TGLCamera
      DepthOfView = 100.000000000000000000
      FocalLength = 50.000000000000000000
      Position.Coordinates = {000000000000803F0000C0400000803F}
    end
    object GLCube: TGLCube
      Position.Coordinates = {000000000000803F000000000000803F}
      Scale.Coordinates = {00000040000000400000004000000000}
    end
    object GLPlane: TGLPlane
      Material.FrontProperties.Ambient.Color = {0000000000000000CDCC4C3E0000803F}
      Material.FrontProperties.Diffuse.Color = {0000000000000000CDCC4C3F0000803F}
      Direction.Coordinates = {D7CC30A80000803F02006FA800000000}
      PitchAngle = 90.000000000000000000
      Position.Coordinates = {00000000000000BF000000000000803F}
      Scale.Coordinates = {0000C8420000C8420000803F00000000}
      Up.Coordinates = {B8C387B4010010A9000080BF00000000}
      Height = 1.000000000000000000
      Width = 1.000000000000000000
    end
  end
  object GLCadencer: TGLCadencer
    Scene = GLScene
    OnProgress = OnSceneProgress
    Left = 408
    Top = 376
  end
end
