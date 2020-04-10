' Ansoft HFSS macro for a fixed-fixed beam RF MEMS capacitive switch, switched capacitor and varactor.
' Content of RF_MEMS_CAPACITOR_UP_STATE.vbs. Open-source code covered by BSD license.
' 
' 30th of August, 2011
' K. Van Caekenberghe (vcaeken@umich.edu)

Dim oHfssApp
Dim oDesktop
Dim oProject
Dim oDesign
Dim oEditor
Dim oModule

Set oHfssApp  = CreateObject("AnsoftHfss.HfssScriptInterface")
Set oDesktop = oHfssApp.GetAppDesktop()
oDesktop.RestoreWindow 'Comment this out to start HFSS minimized.

Set oProject = oDesktop.NewProject
oProject.InsertDesign "HFSS", "Temporary", "DrivenModal", ""

Set oDesign = oProject.SetActiveDesign("Temporary")
Set oEditor = oDesign.SetActiveEditor("3D Modeler")

' #############################
' ### PARAMETER DEFINITIONS ###
' #############################

' ### Units ###
Dim Units
Units = "mm"
oEditor.SetModelUnits Array("NAME:Units Parameter", "Units:=", Units, "Rescale:=",  _
  false)

' ### Colors ###
Dim Air
Dim Alumina
Dim Copper
Dim FR4
Dim Gold

Air = "(128 255 255)"
Alumina = "(255 255 128)"
Copper = "(255 128 128)"
FR4 = "(128 255 128)"
Gold = "(255 128 64)"

' ### Substrate ###
oEditor.CreateBox Array("NAME:BoxParameters", "XPosition:=", "-10mm", "YPosition:=",  _
  "-10mm", "ZPosition:=", "0mm", "XSize:=", "20mm", "YSize:=", "20mm", "ZSize:=",  _
  "-0.8128mm"), Array("NAME:Attributes", "Name:=", "Substrate", "Flags:=", "", "Color:=",  _
  Alumina, "Transparency:=", 0.5, "PartCoordinateSystem:=", "Global", "MaterialName:=",  _
  "Rogers TMM 3 (tm)", "SolveInside:=", true)

' ### Air ###
oEditor.CreateBox Array("NAME:BoxParameters", "XPosition:=", "-10mm", "YPosition:=",  _
  "-10mm", "ZPosition:=", "0mm", "XSize:=", "20mm", "YSize:=", "20mm", "ZSize:=",  _
  "20mm"), Array("NAME:Attributes", "Name:=", "Air", "Flags:=", "", "Color:=",  _
  Air, "Transparency:=", 0.75, "PartCoordinateSystem:=", "Global", "MaterialName:=",  _
  "vacuum", "SolveInside:=", true)

' ### Electrode ###
oEditor.CreateBox Array("NAME:BoxParameters", "XPosition:=", "-1mm", "YPosition:=",  _
  "2.5mm", "ZPosition:=", "0mm", "XSize:=", "2mm", "YSize:=", "-5mm", "ZSize:=",  _
  "0.0175mm"), Array("NAME:Attributes", "Name:=", "Electrode", "Flags:=", "", "Color:=",  _
  copper, "Transparency:=", 0, "PartCoordinateSystem:=", "Global", "MaterialName:=",  _
  "pec", "SolveInside:=", false)

' ### Microstrip ###
oEditor.CreateBox Array("NAME:BoxParameters", "XPosition:=", "-10mm", "YPosition:=",  _
  "1mm", "ZPosition:=", "0mm", "XSize:=", "20mm", "YSize:=", "-2mm", "ZSize:=",  _
  "0.0175mm"), Array("NAME:Attributes", "Name:=", "Microstrip", "Flags:=", "", "Color:=",  _
  copper, "Transparency:=", 0, "PartCoordinateSystem:=", "Global", "MaterialName:=",  _
  "pec", "SolveInside:=", false)

oEditor.Unite Array("NAME:Selections", "Selections:=", "Microstrip,Electrode"), Array("NAME:UniteParameters", "KeepOriginals:=",  _
  false)

' ### Prepreg Spacer ###
oEditor.CreateBox Array("NAME:BoxParameters", "XPosition:=", "-7.5mm", "YPosition:=",  _
  "-10mm", "ZPosition:=", "0mm", "XSize:=", "15mm", "YSize:=", "5.8mm", "ZSize:=",  _
  "0.0429mm"), Array("NAME:Attributes", "Name:=", "Prepreg1a", "Flags:=", "", "Color:=",  _
  FR4, "Transparency:=", 0, "PartCoordinateSystem:=", "Global", "MaterialName:=",  _
  "FR4_epoxy", "SolveInside:=", true)

oEditor.CreateBox Array("NAME:BoxParameters", "XPosition:=", "-7.5mm", "YPosition:=",  _
  "10mm", "ZPosition:=", "0mm", "XSize:=", "15mm", "YSize:=", "-5.8mm", "ZSize:=",  _
  "0.0429mm"), Array("NAME:Attributes", "Name:=", "Prepreg1b", "Flags:=", "", "Color:=",  _
  FR4, "Transparency:=", 0, "PartCoordinateSystem:=", "Global", "MaterialName:=",  _
  "FR4_epoxy", "SolveInside:=", true)

' ### Prepreg Dielectric ###
oEditor.CreateBox Array("NAME:BoxParameters", "XPosition:=", "-0.75mm", "YPosition:=",  _
  "-5mm", "ZPosition:=", "0.0429mm", "XSize:=", "1.5mm", "YSize:=", "10mm", "ZSize:=",  _
  "0.0254mm"), Array("NAME:Attributes", "Name:=", "Prepreg2", "Flags:=", "", "Color:=",  _
  FR4, "Transparency:=", 0, "PartCoordinateSystem:=", "Global", "MaterialName:=",  _
  "FR4_epoxy", "SolveInside:=", true)

oEditor.Unite Array("NAME:Selections", "Selections:=", "Prepreg1a,Prepreg1b,Prepreg2"), Array("NAME:UniteParameters", "KeepOriginals:=",  _
  false)

oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DAttributeTab", Array("NAME:PropServers",  _
  "Prepreg1a"), Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "Prepreg"), Array("NAME:Transparent", "Value:=",  _
  0.5))))

' ### Membrane ###
oEditor.CreateBox Array("NAME:BoxParameters", "XPosition:=", "-0.75mm", "YPosition:=",  _
  "-5mm", "ZPosition:=", "0.0683mm", "XSize:=", "1.5mm", "YSize:=", "10mm", "ZSize:=",  _
  "0.0175mm"), Array("NAME:Attributes", "Name:=", "Membrane", "Flags:=", "", "Color:=",  _
  Gold, "Transparency:=", 0, "PartCoordinateSystem:=", "Global", "MaterialName:=",  _
  "pec", "SolveInside:=", false)

' ### Anchors ###
oEditor.CreateCylinder Array("NAME:CylinderParameters", "XCenter:=", "0mm", "YCenter:=",  _
  "5mm", "ZCenter:=", "0.0858mm", "Radius:=", "0.75mm", "Height:=", "-0.8986mm", "WhichAxis:=",  _
  "Z"), Array("NAME:Attributes", "Name:=", "Via1", "Flags:=", "", "Color:=",  _
  Gold, "Transparency:=", 0, "PartCoordinateSystem:=", "Global", "MaterialName:=",  _
  "pec", "SolveInside:=", false)

oEditor.CreateCylinder Array("NAME:CylinderParameters", "XCenter:=", "0mm", "YCenter:=",  _
  "-5mm", "ZCenter:=", "0.0858mm", "Radius:=", "0.75mm", "Height:=", "-0.8986mm", "WhichAxis:=",  _
  "Z"), Array("NAME:Attributes", "Name:=", "Via2", "Flags:=", "", "Color:=",  _
  Gold, "Transparency:=", 0, "PartCoordinateSystem:=", "Global", "MaterialName:=",  _
  "pec", "SolveInside:=", false)

' ### RF MEMS Switched Capacitor ###
oEditor.Unite Array("NAME:Selections", "Selections:=", "Membrane,Via1,Via2"), Array("NAME:UniteParameters", "KeepOriginals:=",  _
  false)

oEditor.Copy Array("NAME:Selections", "Selections:=", "Membrane")
oEditor.Subtract Array("NAME:Selections", "Blank Parts:=",  _
  "Air,Prepreg,Substrate", "Tool Parts:=",  _
  "Membrane"), Array("NAME:SubtractParameters", "KeepOriginals:=", false)
oEditor.Paste

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=",  _
  true, Array("NAME:PolylinePoints", Array("NAME:PLPoint", "X:=", "10mm", "Y:=", "-5mm", "Z:=",  _
  "-0.8128mm"), Array("NAME:PLPoint", "X:=", "10mm", "Y:=", "5mm", "Z:=", "-0.8128mm"), Array("NAME:PLPoint", "X:=",  _
  "10mm", "Y:=", "5mm", "Z:=", "10mm"), Array("NAME:PLPoint", "X:=", "10mm", "Y:=",  _
  "-5mm", "Z:=", "10mm"), Array("NAME:PLPoint", "X:=", "10mm", "Y:=", "-5mm", "Z:=",  _
  "-0.8128mm")), Array("NAME:PolylineSegments", Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=",  _
  0, "NoOfPoints:=", 2), Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=",  _
  1, "NoOfPoints:=", 2), Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=",  _
  2, "NoOfPoints:=", 2), Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=",  _
  3, "NoOfPoints:=", 2))), Array("NAME:Attributes", "Name:=", "Port1", "Flags:=",  _
  "", "Color:=", "(132 132 193)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "MaterialName:=", "vacuum", "SolveInside:=", true)

oEditor.CreatePolyline Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=",  _
  true, Array("NAME:PolylinePoints", Array("NAME:PLPoint", "X:=", "-10mm", "Y:=", "-5mm", "Z:=",  _
  "-0.8128mm"), Array("NAME:PLPoint", "X:=", "-10mm", "Y:=", "5mm", "Z:=", "-0.8128mm"), Array("NAME:PLPoint", "X:=",  _
  "-10mm", "Y:=", "5mm", "Z:=", "10mm"), Array("NAME:PLPoint", "X:=", "-10mm", "Y:=",  _
  "-5mm", "Z:=", "10mm"), Array("NAME:PLPoint", "X:=", "-10mm", "Y:=", "-5mm", "Z:=",  _
  "-0.8128mm")), Array("NAME:PolylineSegments", Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=",  _
  0, "NoOfPoints:=", 2), Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=",  _
  1, "NoOfPoints:=", 2), Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=",  _
  2, "NoOfPoints:=", 2), Array("NAME:PLSegment", "SegmentType:=", "Line", "StartIndex:=",  _
  3, "NoOfPoints:=", 2))), Array("NAME:Attributes", "Name:=", "Port2", "Flags:=",  _
  "", "Color:=", "(132 132 193)", "Transparency:=", 0, "PartCoordinateSystem:=",  _
  "Global", "MaterialName:=", "vacuum", "SolveInside:=", true)

' ######################
' ### BOUNDARY SETUP ###
' ###################### 

Set oModule = oDesign.GetModule("BoundarySetup")

oModule.AssignWavePort Array("NAME:P1", "NumModes:=", 1, "PolarizeEField:=",  _
  false, "DoDeembed:=", true, "DeembedDist:=", "9mm", "DoRenorm:=", true, "RenormValue:=",  _
  "50Ohm", Array("NAME:Modes", Array("NAME:Mode1", "ModeNum:=", 1, "UseIntLine:=", false)), "Objects:=", Array( _
  "Port1"))
oModule.AssignWavePort Array("NAME:P2", "NumModes:=", 1, "PolarizeEField:=",  _
  false, "DoDeembed:=", true, "DeembedDist:=", "9mm", "DoRenorm:=", true, "RenormValue:=",  _
  "50Ohm", Array("NAME:Modes", Array("NAME:Mode1", "ModeNum:=", 1, "UseIntLine:=", false)), "Objects:=", Array( _
  "Port2"))

' ######################
' ### SOLUTION SETUP ###
' ###################### 

Set oModule = oDesign.GetModule("AnalysisSetup")

oModule.InsertSetup "HfssDriven", Array("NAME:Setup1", "Frequency:=", "1GHz", "PortsOnly:=",  _
  false, "MaxDeltaS:=", 0.001, "UseMatrixConv:=", false, "MaximumPasses:=", 7, "MinimumPasses:=",  _
  1, "MinimumConvergedPasses:=", 1, "PercentRefinement:=", 20, "ReducedSolutionBasis:=",  _
  false, "DoLambdaRefine:=", true, "DoMaterialLambda:=", true, "Target:=",  _
  0.3333, "PortAccuracy:=", 2, "SetPortMinMaxTri:=", false)

oModule.InsertDrivenSweep "Setup1", Array("NAME:Sweep1", "Type:=", "Discrete", "SetupType:=",  _
  "LinearStep", "StartFreq:=", "0.5GHz", "StopFreq:=", "1.5GHz", "StepSize:=",  _
  "100MHz", "SaveFields:=", false, "ExtrapToDC:=", false)
