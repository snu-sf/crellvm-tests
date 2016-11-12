; ModuleID = './plug-ins/map-object/map-object-main.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct.MapObjectValues = type { %struct._GimpVector3, %struct._GimpVector3, %struct._GimpVector3, %struct._GimpVector3, %struct._GimpVector3, %struct._GimpVector3, %struct.LightSettings, %struct.MaterialSettings, %struct.MaterialSettings, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, double, double, double, double, [6 x i32], [2 x i32] }
%struct._GimpVector3 = type { double, double, double }
%struct.LightSettings = type { i32, %struct._GimpVector3, %struct._GimpVector3, %struct._GimpRGB, double }
%struct.MaterialSettings = type { double, double, double, double, double, %struct._GimpRGB }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@mapvals = global %struct.MapObjectValues zeroinitializer, align 8
@query.args = internal constant [49 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.31, i32 0, i32 0) }, %struct._GimpParamDef { i32 10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.35, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.35, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.35, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.39, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.39, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.39, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.43, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.45, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.47, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.49, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.51, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.53, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.55, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.57, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.59, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.61, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.63, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.65, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.67, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.69, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.71, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.75, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.77, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.79, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.81, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.83, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.85, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"maptype\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"Type of mapping (0=plane,1=sphere,2=box,3=cylinder)\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"viewpoint-x\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Position of viewpoint (x,y,z)\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"viewpoint-y\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"viewpoint-z\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"position-x\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"Object position (x,y,z)\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"position-y\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"position-z\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"firstaxis-x\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"First axis of object [x,y,z]\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"firstaxis-y\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"firstaxis-z\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"secondaxis-x\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"Second axis of object [x,y,z]\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"secondaxis-y\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"secondaxis-z\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"rotationangle-x\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"Rotation about X axis in degrees\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"rotationangle-y\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"Rotation about Y axis in degrees\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"rotationangle-z\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"Rotation about Z axis in degrees\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"lighttype\00", align 1
@.str.31 = private unnamed_addr constant [51 x i8] c"Type of lightsource (0=point,1=directional,2=none)\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"lightcolor\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"Lightsource color (r,g,b)\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"lightposition-x\00", align 1
@.str.35 = private unnamed_addr constant [29 x i8] c"Lightsource position (x,y,z)\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"lightposition-y\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"lightposition-z\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"lightdirection-x\00", align 1
@.str.39 = private unnamed_addr constant [30 x i8] c"Lightsource direction [x,y,z]\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"lightdirection-y\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"lightdirection-z\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"ambient_intensity\00", align 1
@.str.43 = private unnamed_addr constant [34 x i8] c"Material ambient intensity (0..1)\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"diffuse_intensity\00", align 1
@.str.45 = private unnamed_addr constant [34 x i8] c"Material diffuse intensity (0..1)\00", align 1
@.str.46 = private unnamed_addr constant [21 x i8] c"diffuse_reflectivity\00", align 1
@.str.47 = private unnamed_addr constant [37 x i8] c"Material diffuse reflectivity (0..1)\00", align 1
@.str.48 = private unnamed_addr constant [22 x i8] c"specular_reflectivity\00", align 1
@.str.49 = private unnamed_addr constant [38 x i8] c"Material specular reflectivity (0..1)\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"highlight\00", align 1
@.str.51 = private unnamed_addr constant [51 x i8] c"Material highlight (0..->), note: it's expotential\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"antialiasing\00", align 1
@.str.53 = private unnamed_addr constant [32 x i8] c"Apply antialiasing (TRUE/FALSE)\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"tiled\00", align 1
@.str.55 = private unnamed_addr constant [31 x i8] c"Tile source image (TRUE/FALSE)\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"newimage\00", align 1
@.str.57 = private unnamed_addr constant [32 x i8] c"Create a new image (TRUE/FALSE)\00", align 1
@.str.58 = private unnamed_addr constant [22 x i8] c"transparentbackground\00", align 1
@.str.59 = private unnamed_addr constant [41 x i8] c"Make background transparent (TRUE/FALSE)\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.61 = private unnamed_addr constant [55 x i8] c"Sphere/cylinder radius (only used when maptype=1 or 3)\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"x-scale\00", align 1
@.str.63 = private unnamed_addr constant [19 x i8] c"Box x size (0..->)\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"y-scale\00", align 1
@.str.65 = private unnamed_addr constant [19 x i8] c"Box y size (0..->)\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"z-scale\00", align 1
@.str.67 = private unnamed_addr constant [19 x i8] c"Box z size (0..->)\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"cylinder-length\00", align 1
@.str.69 = private unnamed_addr constant [24 x i8] c"Cylinder length (0..->)\00", align 1
@.str.70 = private unnamed_addr constant [19 x i8] c"box-front-drawable\00", align 1
@.str.71 = private unnamed_addr constant [45 x i8] c"Box front face (set these to -1 if not used)\00", align 1
@.str.72 = private unnamed_addr constant [18 x i8] c"box-back-drawable\00", align 1
@.str.73 = private unnamed_addr constant [14 x i8] c"Box back face\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c"box-top-drawable\00", align 1
@.str.75 = private unnamed_addr constant [13 x i8] c"Box top face\00", align 1
@.str.76 = private unnamed_addr constant [20 x i8] c"box-bottom-drawable\00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"Box bottom face\00", align 1
@.str.78 = private unnamed_addr constant [18 x i8] c"box-left-drawable\00", align 1
@.str.79 = private unnamed_addr constant [14 x i8] c"Box left face\00", align 1
@.str.80 = private unnamed_addr constant [19 x i8] c"box-right-drawable\00", align 1
@.str.81 = private unnamed_addr constant [15 x i8] c"Box right face\00", align 1
@.str.82 = private unnamed_addr constant [17 x i8] c"cyl-top-drawable\00", align 1
@.str.83 = private unnamed_addr constant [48 x i8] c"Cylinder top face (set these to -1 if not used)\00", align 1
@.str.84 = private unnamed_addr constant [20 x i8] c"cyl-bottom-drawable\00", align 1
@.str.85 = private unnamed_addr constant [21 x i8] c"Cylinder bottom face\00", align 1
@.str.86 = private unnamed_addr constant [19 x i8] c"plug-in-map-object\00", align 1
@.str.87 = private unnamed_addr constant [60 x i8] c"Map the image to an object (plane, sphere, box or cylinder)\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"No help yet\00", align 1
@.str.89 = private unnamed_addr constant [34 x i8] c"Tom Bech & Federico Mena Quintero\00", align 1
@.str.90 = private unnamed_addr constant [28 x i8] c"Version 1.2.0, July 16 1998\00", align 1
@.str.91 = private unnamed_addr constant [15 x i8] c"Map _Object...\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"RGB*\00", align 1
@.str.93 = private unnamed_addr constant [20 x i8] c"<Image>/Filters/Map\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.94 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@image_id = external global i32, align 4

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i32 0, i32 0), i32 1, i32 49, i32 0, %struct._GimpParamDef* getelementptr inbounds ([49 x %struct._GimpParamDef], [49 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.93, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @run(i8* %name, i32 %nparams, %struct._GimpParam* %param, i32* %nreturn_vals, %struct._GimpParam** %return_vals) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %nparams.addr = alloca i32, align 4
  %param.addr = alloca %struct._GimpParam*, align 8
  %nreturn_vals.addr = alloca i32*, align 8
  %return_vals.addr = alloca %struct._GimpParam**, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %run_mode = alloca i32, align 4
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %run_mode, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #5
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.94, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.95, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.94, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %2 = load i32, i32* %status, align 4
  store i32 %2, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %3 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %3, align 4
  %4 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %4, align 8
  call void @set_default_settings()
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 1
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_int326 = bitcast %union._GimpParamData* %data5 to i32*
  %6 = load i32, i32* %d_int326, align 4
  store i32 %6, i32* @image_id, align 4
  %7 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %7, i64 2
  %data8 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx7, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data8 to i32*
  %8 = load i32, i32* %d_drawable, align 4
  %call9 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %8)
  store %struct._GimpDrawable* %call9, %struct._GimpDrawable** %drawable, align 8
  %9 = load i32, i32* %run_mode, align 4
  switch i32 %9, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.13
    i32 1, label %sw.bb.16
  ]

sw.bb:                                            ; preds = %do.end
  %call10 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.86, i32 0, i32 0), i8* bitcast (%struct.MapObjectValues* @mapvals to i8*))
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @check_drawables(%struct._GimpDrawable* %10)
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call11 = call i32 @main_dialog(%struct._GimpDrawable* %11)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  call void @compute_image()
  %call12 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.86, i32 0, i32 0), i8* bitcast (%struct.MapObjectValues* @mapvals to i8*), i32 528)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb.13:                                         ; preds = %do.end
  %call14 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.86, i32 0, i32 0), i8* bitcast (%struct.MapObjectValues* @mapvals to i8*))
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @check_drawables(%struct._GimpDrawable* %12)
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call15 = call i32 @image_setup(%struct._GimpDrawable* %13, i32 0)
  call void @compute_image()
  br label %sw.epilog

sw.bb.16:                                         ; preds = %do.end
  %14 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp ne i32 %14, 49
  br i1 %cmp, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %sw.bb.16
  store i32 1, i32* %status, align 4
  br label %if.end.153

if.else:                                          ; preds = %sw.bb.16
  %15 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %15, i64 3
  %data19 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx18, i32 0, i32 1
  %d_int3220 = bitcast %union._GimpParamData* %data19 to i32*
  %16 = load i32, i32* %d_int3220, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 9), align 4
  %17 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %17, i64 4
  %data22 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx21, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data22 to double*
  %18 = load double, double* %d_float, align 8
  store double %18, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 0, i32 0), align 8
  %19 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx23 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %19, i64 5
  %data24 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx23, i32 0, i32 1
  %d_float25 = bitcast %union._GimpParamData* %data24 to double*
  %20 = load double, double* %d_float25, align 8
  store double %20, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 0, i32 1), align 8
  %21 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx26 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %21, i64 6
  %data27 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx26, i32 0, i32 1
  %d_float28 = bitcast %union._GimpParamData* %data27 to double*
  %22 = load double, double* %d_float28, align 8
  store double %22, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 0, i32 2), align 8
  %23 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx29 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %23, i64 7
  %data30 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx29, i32 0, i32 1
  %d_float31 = bitcast %union._GimpParamData* %data30 to double*
  %24 = load double, double* %d_float31, align 8
  store double %24, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4, i32 0), align 8
  %25 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx32 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %25, i64 8
  %data33 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx32, i32 0, i32 1
  %d_float34 = bitcast %union._GimpParamData* %data33 to double*
  %26 = load double, double* %d_float34, align 8
  store double %26, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4, i32 1), align 8
  %27 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx35 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %27, i64 9
  %data36 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx35, i32 0, i32 1
  %d_float37 = bitcast %union._GimpParamData* %data36 to double*
  %28 = load double, double* %d_float37, align 8
  store double %28, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4, i32 2), align 8
  %29 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %29, i64 10
  %data39 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx38, i32 0, i32 1
  %d_float40 = bitcast %union._GimpParamData* %data39 to double*
  %30 = load double, double* %d_float40, align 8
  store double %30, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 1, i32 0), align 8
  %31 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx41 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %31, i64 11
  %data42 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx41, i32 0, i32 1
  %d_float43 = bitcast %union._GimpParamData* %data42 to double*
  %32 = load double, double* %d_float43, align 8
  store double %32, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 1, i32 1), align 8
  %33 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx44 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %33, i64 12
  %data45 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx44, i32 0, i32 1
  %d_float46 = bitcast %union._GimpParamData* %data45 to double*
  %34 = load double, double* %d_float46, align 8
  store double %34, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 1, i32 2), align 8
  %35 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx47 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %35, i64 13
  %data48 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx47, i32 0, i32 1
  %d_float49 = bitcast %union._GimpParamData* %data48 to double*
  %36 = load double, double* %d_float49, align 8
  store double %36, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 2, i32 0), align 8
  %37 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx50 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %37, i64 14
  %data51 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx50, i32 0, i32 1
  %d_float52 = bitcast %union._GimpParamData* %data51 to double*
  %38 = load double, double* %d_float52, align 8
  store double %38, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 2, i32 1), align 8
  %39 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx53 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %39, i64 15
  %data54 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx53, i32 0, i32 1
  %d_float55 = bitcast %union._GimpParamData* %data54 to double*
  %40 = load double, double* %d_float55, align 8
  store double %40, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 2, i32 2), align 8
  %41 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx56 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %41, i64 16
  %data57 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx56, i32 0, i32 1
  %d_float58 = bitcast %union._GimpParamData* %data57 to double*
  %42 = load double, double* %d_float58, align 8
  store double %42, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 19), align 8
  %43 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx59 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %43, i64 17
  %data60 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx59, i32 0, i32 1
  %d_float61 = bitcast %union._GimpParamData* %data60 to double*
  %44 = load double, double* %d_float61, align 8
  store double %44, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 20), align 8
  %45 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx62 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %45, i64 18
  %data63 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx62, i32 0, i32 1
  %d_float64 = bitcast %union._GimpParamData* %data63 to double*
  %46 = load double, double* %d_float64, align 8
  store double %46, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 21), align 8
  %47 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx65 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %47, i64 19
  %data66 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx65, i32 0, i32 1
  %d_int3267 = bitcast %union._GimpParamData* %data66 to i32*
  %48 = load i32, i32* %d_int3267, align 4
  store i32 %48, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 0), align 4
  %49 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx68 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %49, i64 20
  %data69 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx68, i32 0, i32 1
  %d_color = bitcast %union._GimpParamData* %data69 to %struct._GimpRGB*
  %50 = bitcast %struct._GimpRGB* %d_color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct._GimpRGB* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 3) to i8*), i8* %50, i64 32, i32 8, i1 false)
  %51 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx70 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %51, i64 21
  %data71 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx70, i32 0, i32 1
  %d_float72 = bitcast %union._GimpParamData* %data71 to double*
  %52 = load double, double* %d_float72, align 8
  store double %52, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 1, i32 0), align 8
  %53 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx73 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %53, i64 22
  %data74 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx73, i32 0, i32 1
  %d_float75 = bitcast %union._GimpParamData* %data74 to double*
  %54 = load double, double* %d_float75, align 8
  store double %54, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 1, i32 1), align 8
  %55 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx76 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %55, i64 23
  %data77 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx76, i32 0, i32 1
  %d_float78 = bitcast %union._GimpParamData* %data77 to double*
  %56 = load double, double* %d_float78, align 8
  store double %56, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 1, i32 2), align 8
  %57 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx79 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %57, i64 24
  %data80 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx79, i32 0, i32 1
  %d_float81 = bitcast %union._GimpParamData* %data80 to double*
  %58 = load double, double* %d_float81, align 8
  store double %58, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 2, i32 0), align 8
  %59 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx82 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %59, i64 25
  %data83 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx82, i32 0, i32 1
  %d_float84 = bitcast %union._GimpParamData* %data83 to double*
  %60 = load double, double* %d_float84, align 8
  store double %60, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 2, i32 1), align 8
  %61 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx85 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %61, i64 26
  %data86 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx85, i32 0, i32 1
  %d_float87 = bitcast %union._GimpParamData* %data86 to double*
  %62 = load double, double* %d_float87, align 8
  store double %62, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 2, i32 2), align 8
  %63 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx88 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %63, i64 27
  %data89 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx88, i32 0, i32 1
  %d_float90 = bitcast %union._GimpParamData* %data89 to double*
  %64 = load double, double* %d_float90, align 8
  store double %64, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 7, i32 0), align 8
  %65 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx91 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %65, i64 28
  %data92 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx91, i32 0, i32 1
  %d_float93 = bitcast %union._GimpParamData* %data92 to double*
  %66 = load double, double* %d_float93, align 8
  store double %66, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 7, i32 1), align 8
  %67 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx94 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %67, i64 29
  %data95 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx94, i32 0, i32 1
  %d_float96 = bitcast %union._GimpParamData* %data95 to double*
  %68 = load double, double* %d_float96, align 8
  store double %68, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 7, i32 2), align 8
  %69 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx97 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %69, i64 30
  %data98 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx97, i32 0, i32 1
  %d_float99 = bitcast %union._GimpParamData* %data98 to double*
  %70 = load double, double* %d_float99, align 8
  store double %70, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 7, i32 3), align 8
  %71 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx100 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %71, i64 31
  %data101 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx100, i32 0, i32 1
  %d_float102 = bitcast %union._GimpParamData* %data101 to double*
  %72 = load double, double* %d_float102, align 8
  store double %72, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 7, i32 4), align 8
  %73 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx103 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %73, i64 32
  %data104 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx103, i32 0, i32 1
  %d_int32105 = bitcast %union._GimpParamData* %data104 to i32*
  %74 = load i32, i32* %d_int32105, align 4
  store i32 %74, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 10), align 4
  %75 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx106 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %75, i64 33
  %data107 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx106, i32 0, i32 1
  %d_int32108 = bitcast %union._GimpParamData* %data107 to i32*
  %76 = load i32, i32* %d_int32108, align 4
  store i32 %76, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 14), align 4
  %77 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx109 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %77, i64 34
  %data110 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx109, i32 0, i32 1
  %d_int32111 = bitcast %union._GimpParamData* %data110 to i32*
  %78 = load i32, i32* %d_int32111, align 4
  store i32 %78, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 11), align 4
  %79 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx112 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %79, i64 35
  %data113 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx112, i32 0, i32 1
  %d_int32114 = bitcast %union._GimpParamData* %data113 to i32*
  %80 = load i32, i32* %d_int32114, align 4
  store i32 %80, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 13), align 4
  %81 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx115 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %81, i64 36
  %data116 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx115, i32 0, i32 1
  %d_float117 = bitcast %union._GimpParamData* %data116 to double*
  %82 = load double, double* %d_float117, align 8
  store double %82, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 24), align 8
  %83 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx118 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %83, i64 36
  %data119 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx118, i32 0, i32 1
  %d_float120 = bitcast %union._GimpParamData* %data119 to double*
  %84 = load double, double* %d_float120, align 8
  store double %84, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 25), align 8
  %85 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx121 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %85, i64 37
  %data122 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx121, i32 0, i32 1
  %d_float123 = bitcast %union._GimpParamData* %data122 to double*
  %86 = load double, double* %d_float123, align 8
  store double %86, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 5, i32 0), align 8
  %87 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx124 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %87, i64 38
  %data125 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx124, i32 0, i32 1
  %d_float126 = bitcast %union._GimpParamData* %data125 to double*
  %88 = load double, double* %d_float126, align 8
  store double %88, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 5, i32 1), align 8
  %89 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx127 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %89, i64 39
  %data128 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx127, i32 0, i32 1
  %d_float129 = bitcast %union._GimpParamData* %data128 to double*
  %90 = load double, double* %d_float129, align 8
  store double %90, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 5, i32 2), align 8
  %91 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx130 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %91, i64 40
  %data131 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx130, i32 0, i32 1
  %d_float132 = bitcast %union._GimpParamData* %data131 to double*
  %92 = load double, double* %d_float132, align 8
  store double %92, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 26), align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %93 = load i32, i32* %i, align 4
  %cmp133 = icmp slt i32 %93, 6
  br i1 %cmp133, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %94 = load i32, i32* %i, align 4
  %add = add nsw i32 41, %94
  %idxprom = sext i32 %add to i64
  %95 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx134 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %95, i64 %idxprom
  %data135 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx134, i32 0, i32 1
  %d_drawable136 = bitcast %union._GimpParamData* %data135 to i32*
  %96 = load i32, i32* %d_drawable136, align 4
  %97 = load i32, i32* %i, align 4
  %idxprom137 = sext i32 %97 to i64
  %arrayidx138 = getelementptr inbounds [6 x i32], [6 x i32]* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 27), i32 0, i64 %idxprom137
  store i32 %96, i32* %arrayidx138, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %98 = load i32, i32* %i, align 4
  %inc = add nsw i32 %98, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.139

for.cond.139:                                     ; preds = %for.inc.149, %for.end
  %99 = load i32, i32* %i, align 4
  %cmp140 = icmp slt i32 %99, 2
  br i1 %cmp140, label %for.body.141, label %for.end.151

for.body.141:                                     ; preds = %for.cond.139
  %100 = load i32, i32* %i, align 4
  %add142 = add nsw i32 47, %100
  %idxprom143 = sext i32 %add142 to i64
  %101 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx144 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %101, i64 %idxprom143
  %data145 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx144, i32 0, i32 1
  %d_drawable146 = bitcast %union._GimpParamData* %data145 to i32*
  %102 = load i32, i32* %d_drawable146, align 4
  %103 = load i32, i32* %i, align 4
  %idxprom147 = sext i32 %103 to i64
  %arrayidx148 = getelementptr inbounds [2 x i32], [2 x i32]* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 28), i32 0, i64 %idxprom147
  store i32 %102, i32* %arrayidx148, align 4
  br label %for.inc.149

for.inc.149:                                      ; preds = %for.body.141
  %104 = load i32, i32* %i, align 4
  %inc150 = add nsw i32 %104, 1
  store i32 %inc150, i32* %i, align 4
  br label %for.cond.139

for.end.151:                                      ; preds = %for.cond.139
  %105 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @check_drawables(%struct._GimpDrawable* %105)
  %106 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call152 = call i32 @image_setup(%struct._GimpDrawable* %106, i32 0)
  call void @compute_image()
  br label %if.end.153

if.end.153:                                       ; preds = %for.end.151, %if.then.17
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end.153, %sw.bb.13, %if.end
  %107 = load i32, i32* %status, align 4
  store i32 %107, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %108 = load i32, i32* %run_mode, align 4
  %cmp154 = icmp ne i32 %108, 1
  br i1 %cmp154, label %if.then.155, label %if.end.157

if.then.155:                                      ; preds = %sw.epilog
  %call156 = call i32 @gimp_displays_flush()
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.155, %sw.epilog
  %109 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %109)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %call = call i32 @gimp_main(%struct._GimpPlugInInfo* @PLUG_IN_INFO, i32 %0, i8** %1)
  ret i32 %call
}

declare i32 @gimp_main(%struct._GimpPlugInInfo*, i32, i8**) #1

declare void @gimp_install_procedure(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct._GimpParamDef*, %struct._GimpParamDef*) #1

declare i32 @gimp_plugin_menu_register(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare i8* @gimp_locale_directory() #3

; Function Attrs: nounwind
declare i8* @bind_textdomain_codeset(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @set_default_settings() #0 {
entry:
  %i = alloca i32, align 4
  call void @gimp_vector3_set(%struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 0), double 5.000000e-01, double 5.000000e-01, double 2.000000e+00)
  call void @gimp_vector3_set(%struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 1), double 1.000000e+00, double 0.000000e+00, double 0.000000e+00)
  call void @gimp_vector3_set(%struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 2), double 0.000000e+00, double 1.000000e+00, double 0.000000e+00)
  call void @gimp_vector3_set(%struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 3), double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  call void @gimp_vector3_set(%struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4), double 5.000000e-01, double 5.000000e-01, double 0.000000e+00)
  call void @gimp_vector3_set(%struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 1), double -5.000000e-01, double -5.000000e-01, double 2.000000e+00)
  call void @gimp_vector3_set(%struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 2), double -1.000000e+00, double -1.000000e+00, double 1.000000e+00)
  call void @gimp_vector3_set(%struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 5), double 5.000000e-01, double 5.000000e-01, double 5.000000e-01)
  store i32 0, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 9), align 4
  store double 2.500000e-01, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 23), align 8
  store double 0.000000e+00, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 19), align 8
  store double 0.000000e+00, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 20), align 8
  store double 0.000000e+00, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 21), align 8
  store double 3.000000e+00, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 22), align 8
  store double 2.500000e-01, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 24), align 8
  store double 2.500000e-01, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 25), align 8
  store double 1.000000e+00, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 26), align 8
  store double 1.000000e+00, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 18), align 8
  store i32 0, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 0), align 4
  store i32 1, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 10), align 4
  store i32 0, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 11), align 4
  store i32 0, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 12), align 4
  store i32 0, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 13), align 4
  store i32 0, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 14), align 4
  store i32 0, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 15), align 4
  store i32 1, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 16), align 4
  store double 1.000000e+00, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 4), align 8
  call void @gimp_rgba_set(%struct._GimpRGB* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 3), double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  store double 3.000000e-01, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 7, i32 0), align 8
  store double 1.000000e+00, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 7, i32 1), align 8
  store double 5.000000e-01, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 7, i32 2), align 8
  store double 5.000000e-01, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 7, i32 3), align 8
  store double 2.700000e+01, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 7, i32 4), align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 27), i32 0, i64 %idxprom
  store i32 -1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.6, %for.end
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %3, 2
  br i1 %cmp2, label %for.body.3, label %for.end.8

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [2 x i32], [2 x i32]* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 28), i32 0, i64 %idxprom4
  store i32 -1, i32* %arrayidx5, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.body.3
  %5 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %5, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond.1

for.end.8:                                        ; preds = %for.cond.1
  ret void
}

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @check_drawables(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %i = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 27), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp eq i32 %2, -1
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [6 x i32], [6 x i32]* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 27), i32 0, i64 %idxprom2
  %4 = load i32, i32* %arrayidx3, align 4
  %call = call i32 @gimp_item_is_valid(i32 %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false.4, label %if.then

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %5 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [6 x i32], [6 x i32]* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 27), i32 0, i64 %idxprom5
  %6 = load i32, i32* %arrayidx6, align 4
  %call7 = call i32 @gimp_drawable_is_gray(i32 %6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false, %for.body
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 0
  %8 = load i32, i32* %drawable_id, align 4
  %9 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [6 x i32], [6 x i32]* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 27), i32 0, i64 %idxprom9
  store i32 %8, i32* %arrayidx10, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.32, %for.end
  %11 = load i32, i32* %i, align 4
  %cmp12 = icmp slt i32 %11, 2
  br i1 %cmp12, label %for.body.13, label %for.end.34

for.body.13:                                      ; preds = %for.cond.11
  %12 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds [2 x i32], [2 x i32]* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 28), i32 0, i64 %idxprom14
  %13 = load i32, i32* %arrayidx15, align 4
  %cmp16 = icmp eq i32 %13, -1
  br i1 %cmp16, label %if.then.27, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %for.body.13
  %14 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %14 to i64
  %arrayidx19 = getelementptr inbounds [2 x i32], [2 x i32]* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 28), i32 0, i64 %idxprom18
  %15 = load i32, i32* %arrayidx19, align 4
  %call20 = call i32 @gimp_item_is_valid(i32 %15)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %lor.lhs.false.22, label %if.then.27

lor.lhs.false.22:                                 ; preds = %lor.lhs.false.17
  %16 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %16 to i64
  %arrayidx24 = getelementptr inbounds [2 x i32], [2 x i32]* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 28), i32 0, i64 %idxprom23
  %17 = load i32, i32* %arrayidx24, align 4
  %call25 = call i32 @gimp_drawable_is_gray(i32 %17)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.31

if.then.27:                                       ; preds = %lor.lhs.false.22, %lor.lhs.false.17, %for.body.13
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id28 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %18, i32 0, i32 0
  %19 = load i32, i32* %drawable_id28, align 4
  %20 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %20 to i64
  %arrayidx30 = getelementptr inbounds [2 x i32], [2 x i32]* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 28), i32 0, i64 %idxprom29
  store i32 %19, i32* %arrayidx30, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.27, %lor.lhs.false.22
  br label %for.inc.32

for.inc.32:                                       ; preds = %if.end.31
  %21 = load i32, i32* %i, align 4
  %inc33 = add nsw i32 %21, 1
  store i32 %inc33, i32* %i, align 4
  br label %for.cond.11

for.end.34:                                       ; preds = %for.cond.11
  ret void
}

declare i32 @main_dialog(%struct._GimpDrawable*) #1

declare void @compute_image() #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare i32 @image_setup(%struct._GimpDrawable*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare i32 @gimp_displays_flush() #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare void @gimp_vector3_set(%struct._GimpVector3*, double, double, double) #1

declare void @gimp_rgba_set(%struct._GimpRGB*, double, double, double, double) #1

declare i32 @gimp_item_is_valid(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
