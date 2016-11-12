; ModuleID = './plug-ins/lighting/lighting-main.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct.LightingValues = type { i32, i32, i32, %struct._GimpVector3, %struct._GimpVector3, [6 x %struct.LightSettings], %struct.MaterialSettings, %struct.MaterialSettings, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double }
%struct._GimpVector3 = type { double, double, double }
%struct.LightSettings = type { i32, %struct._GimpVector3, %struct._GimpVector3, %struct._GimpRGB, double, i32 }
%struct.MaterialSettings = type { double, double, double, double, double, i32, %struct._GimpRGB }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@mapvals = global %struct.LightingValues zeroinitializer, align 8
@query.args = internal constant [24 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i32 0, i32 0) }, %struct._GimpParamDef { i32 10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.31, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.33, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.35, i32 0, i32 0) }, %struct._GimpParamDef { i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.37, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.39, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.41, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.43, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"bumpdrawable\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Bumpmap drawable (set to 0 if disabled)\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"envdrawable\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"Environmentmap drawable (set to 0 if disabled)\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"dobumpmap\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Enable bumpmapping (TRUE/FALSE)\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"doenvmap\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"Enable envmapping (TRUE/FALSE)\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"bumpmaptype\00", align 1
@.str.15 = private unnamed_addr constant [60 x i8] c"Type of mapping (0=linear,1=log, 2=sinusoidal, 3=spherical)\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"lighttype\00", align 1
@.str.17 = private unnamed_addr constant [58 x i8] c"Type of lightsource (0=point,1=directional,3=spot,4=none)\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"lightcolor\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"Lightsource color (r,g,b)\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"lightposition-x\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"Lightsource position (x,y,z)\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"lightposition-y\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"lightposition-z\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"lightdirection-x\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"Lightsource direction [x,y,z]\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"lightdirection-y\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"lightdirection-z\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"ambient-intensity\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"Material ambient intensity (0..1)\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"diffuse-intensity\00", align 1
@.str.31 = private unnamed_addr constant [34 x i8] c"Material diffuse intensity (0..1)\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"diffuse-reflectivity\00", align 1
@.str.33 = private unnamed_addr constant [37 x i8] c"Material diffuse reflectivity (0..1)\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"specular-reflectivity\00", align 1
@.str.35 = private unnamed_addr constant [38 x i8] c"Material specular reflectivity (0..1)\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"highlight\00", align 1
@.str.37 = private unnamed_addr constant [51 x i8] c"Material highlight (0..->), note: it's expotential\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"antialiasing\00", align 1
@.str.39 = private unnamed_addr constant [32 x i8] c"Apply antialiasing (TRUE/FALSE)\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"newimage\00", align 1
@.str.41 = private unnamed_addr constant [32 x i8] c"Create a new image (TRUE/FALSE)\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"transparentbackground\00", align 1
@.str.43 = private unnamed_addr constant [41 x i8] c"Make background transparent (TRUE/FALSE)\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"plug-in-lighting\00", align 1
@.str.45 = private unnamed_addr constant [43 x i8] c"Apply various lighting effects to an image\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"No help yet\00", align 1
@.str.47 = private unnamed_addr constant [34 x i8] c"Tom Bech & Federico Mena Quintero\00", align 1
@.str.48 = private unnamed_addr constant [29 x i8] c"Version 0.2.0, March 15 1998\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"_Lighting Effects...\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"RGB*\00", align 1
@.str.51 = private unnamed_addr constant [39 x i8] c"<Image>/Filters/Light and Shadow/Light\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.52 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@xpostab = external global double*, align 8
@ypostab = external global double*, align 8

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i32 1, i32 24, i32 0, %struct._GimpParamDef* getelementptr inbounds ([24 x %struct._GimpParamDef], [24 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.51, i32 0, i32 0))
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
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.52, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.52, i32 0, i32 0)) #4
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %4 = load i32, i32* %status, align 4
  store i32 %4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  call void @set_default_settings()
  %call4 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.44, i32 0, i32 0), i8* bitcast (%struct.LightingValues* @mapvals to i8*))
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 2
  %data6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx5, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data6 to i32*
  %6 = load i32, i32* %d_drawable, align 4
  %call7 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %6)
  store %struct._GimpDrawable* %call7, %struct._GimpDrawable** %drawable, align 8
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 0
  %8 = load i32, i32* %drawable_id, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 0), align 4
  call void @check_drawables()
  %9 = load i32, i32* %status, align 4
  %cmp = icmp eq i32 %9, 3
  br i1 %cmp, label %if.then, label %if.end.87

if.then:                                          ; preds = %do.end
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id8 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 0
  %11 = load i32, i32* %drawable_id8, align 4
  %call9 = call i32 @gimp_drawable_is_rgb(i32 %11)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.then.10, label %if.else.85

if.then.10:                                       ; preds = %if.then
  call void @gimp_tile_cache_ntiles(i64 16)
  %12 = load i32, i32* %run_mode, align 4
  switch i32 %12, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.16
    i32 1, label %sw.bb.19
  ]

sw.bb:                                            ; preds = %if.then.10
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call11 = call i32 @main_dialog(%struct._GimpDrawable* %13)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %sw.bb
  call void @compute_image()
  %call14 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.44, i32 0, i32 0), i8* bitcast (%struct.LightingValues* @mapvals to i8*), i32 944)
  %call15 = call i32 @gimp_displays_flush()
  br label %if.end

if.end:                                           ; preds = %if.then.13, %sw.bb
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.then.10
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call17 = call i32 @image_setup(%struct._GimpDrawable* %14, i32 0)
  call void @compute_image()
  %call18 = call i32 @gimp_displays_flush()
  br label %sw.epilog

sw.bb.19:                                         ; preds = %if.then.10
  %15 = load i32, i32* %nparams.addr, align 4
  %cmp20 = icmp ne i32 %15, 24
  br i1 %cmp20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %sw.bb.19
  store i32 1, i32* %status, align 4
  br label %if.end.84

if.else:                                          ; preds = %sw.bb.19
  %16 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %16, i64 3
  %data23 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx22, i32 0, i32 1
  %d_drawable24 = bitcast %union._GimpParamData* %data23 to i32*
  %17 = load i32, i32* %d_drawable24, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 1), align 4
  %18 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx25 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %18, i64 4
  %data26 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx25, i32 0, i32 1
  %d_drawable27 = bitcast %union._GimpParamData* %data26 to i32*
  %19 = load i32, i32* %d_drawable27, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 2), align 4
  %20 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx28 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %20, i64 5
  %data29 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx28, i32 0, i32 1
  %d_int3230 = bitcast %union._GimpParamData* %data29 to i32*
  %21 = load i32, i32* %d_int3230, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 16), align 4
  %22 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx31 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %22, i64 6
  %data32 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx31, i32 0, i32 1
  %d_int3233 = bitcast %union._GimpParamData* %data32 to i32*
  %23 = load i32, i32* %d_int3233, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 17), align 4
  %24 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx34 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %24, i64 7
  %data35 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx34, i32 0, i32 1
  %d_int3236 = bitcast %union._GimpParamData* %data35 to i32*
  %25 = load i32, i32* %d_int3236, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 12), align 4
  %26 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx37 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %26, i64 8
  %data38 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx37, i32 0, i32 1
  %d_int3239 = bitcast %union._GimpParamData* %data38 to i32*
  %27 = load i32, i32* %d_int3239, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5, i64 0, i32 0), align 4
  %28 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx40 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %28, i64 9
  %data41 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx40, i32 0, i32 1
  %d_color = bitcast %union._GimpParamData* %data41 to %struct._GimpRGB*
  %29 = bitcast %struct._GimpRGB* %d_color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct._GimpRGB* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5, i64 0, i32 3) to i8*), i8* %29, i64 32, i32 8, i1 false)
  %30 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx42 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %30, i64 10
  %data43 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx42, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data43 to double*
  %31 = load double, double* %d_float, align 8
  store double %31, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5, i64 0, i32 1, i32 0), align 8
  %32 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx44 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %32, i64 11
  %data45 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx44, i32 0, i32 1
  %d_float46 = bitcast %union._GimpParamData* %data45 to double*
  %33 = load double, double* %d_float46, align 8
  store double %33, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5, i64 0, i32 1, i32 1), align 8
  %34 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx47 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %34, i64 12
  %data48 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx47, i32 0, i32 1
  %d_float49 = bitcast %union._GimpParamData* %data48 to double*
  %35 = load double, double* %d_float49, align 8
  store double %35, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5, i64 0, i32 1, i32 2), align 8
  %36 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx50 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %36, i64 13
  %data51 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx50, i32 0, i32 1
  %d_float52 = bitcast %union._GimpParamData* %data51 to double*
  %37 = load double, double* %d_float52, align 8
  store double %37, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5, i64 0, i32 2, i32 0), align 8
  %38 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx53 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %38, i64 14
  %data54 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx53, i32 0, i32 1
  %d_float55 = bitcast %union._GimpParamData* %data54 to double*
  %39 = load double, double* %d_float55, align 8
  store double %39, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5, i64 0, i32 2, i32 1), align 8
  %40 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx56 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %40, i64 15
  %data57 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx56, i32 0, i32 1
  %d_float58 = bitcast %union._GimpParamData* %data57 to double*
  %41 = load double, double* %d_float58, align 8
  store double %41, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5, i64 0, i32 2, i32 2), align 8
  %42 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx59 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %42, i64 16
  %data60 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx59, i32 0, i32 1
  %d_float61 = bitcast %union._GimpParamData* %data60 to double*
  %43 = load double, double* %d_float61, align 8
  store double %43, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 6, i32 0), align 8
  %44 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx62 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %44, i64 17
  %data63 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx62, i32 0, i32 1
  %d_float64 = bitcast %union._GimpParamData* %data63 to double*
  %45 = load double, double* %d_float64, align 8
  store double %45, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 6, i32 1), align 8
  %46 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx65 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %46, i64 18
  %data66 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx65, i32 0, i32 1
  %d_float67 = bitcast %union._GimpParamData* %data66 to double*
  %47 = load double, double* %d_float67, align 8
  store double %47, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 6, i32 2), align 8
  %48 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx68 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %48, i64 19
  %data69 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx68, i32 0, i32 1
  %d_float70 = bitcast %union._GimpParamData* %data69 to double*
  %49 = load double, double* %d_float70, align 8
  store double %49, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 6, i32 3), align 8
  %50 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx71 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %50, i64 20
  %data72 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx71, i32 0, i32 1
  %d_float73 = bitcast %union._GimpParamData* %data72 to double*
  %51 = load double, double* %d_float73, align 8
  store double %51, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 6, i32 4), align 8
  %52 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx74 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %52, i64 21
  %data75 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx74, i32 0, i32 1
  %d_int3276 = bitcast %union._GimpParamData* %data75 to i32*
  %53 = load i32, i32* %d_int3276, align 4
  store i32 %53, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 13), align 4
  %54 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx77 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %54, i64 22
  %data78 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx77, i32 0, i32 1
  %d_int3279 = bitcast %union._GimpParamData* %data78 to i32*
  %55 = load i32, i32* %d_int3279, align 4
  store i32 %55, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 14), align 4
  %56 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx80 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %56, i64 23
  %data81 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx80, i32 0, i32 1
  %d_int3282 = bitcast %union._GimpParamData* %data81 to i32*
  %57 = load i32, i32* %d_int3282, align 4
  store i32 %57, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 15), align 4
  call void @check_drawables()
  %58 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call83 = call i32 @image_setup(%struct._GimpDrawable* %58, i32 0)
  call void @compute_image()
  br label %if.end.84

if.end.84:                                        ; preds = %if.else, %if.then.21
  br label %sw.default

sw.default:                                       ; preds = %if.then.10, %if.end.84
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.16, %if.end
  br label %if.end.86

if.else.85:                                       ; preds = %if.then
  store i32 0, i32* %status, align 4
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.85, %sw.epilog
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %do.end
  %59 = load i32, i32* %status, align 4
  store i32 %59, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %60 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %60)
  %61 = load double*, double** @xpostab, align 8
  %62 = bitcast double* %61 to i8*
  call void @g_free(i8* %62)
  %63 = load double*, double** @ypostab, align 8
  %64 = bitcast double* %63 to i8*
  call void @g_free(i8* %64)
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
  %k = alloca i32, align 4
  store i32 1, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 23), align 4
  store i32 0, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 24), align 4
  store i32 0, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 25), align 4
  call void @gimp_vector3_set(%struct._GimpVector3* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 3), double 5.000000e-01, double 5.000000e-01, double 2.500000e-01)
  call void @gimp_vector3_set(%struct._GimpVector3* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 4), double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  call void @gimp_vector3_set(%struct._GimpVector3* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5, i64 0, i32 1), double -1.000000e+00, double -1.000000e+00, double 1.000000e+00)
  call void @gimp_vector3_set(%struct._GimpVector3* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5, i64 0, i32 2), double -1.000000e+00, double -1.000000e+00, double 1.000000e+00)
  call void @gimp_rgba_set(%struct._GimpRGB* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5, i64 0, i32 3), double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  store double 1.000000e+00, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5, i64 0, i32 4), align 8
  store i32 0, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5, i64 0, i32 0), align 4
  store i32 1, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5, i64 0, i32 5), align 4
  call void @gimp_vector3_set(%struct._GimpVector3* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5, i64 1, i32 1), double 2.000000e+00, double -1.000000e+00, double 1.000000e+00)
  call void @gimp_vector3_set(%struct._GimpVector3* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5, i64 1, i32 2), double 1.000000e+00, double -1.000000e+00, double 1.000000e+00)
  call void @gimp_vector3_set(%struct._GimpVector3* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5, i64 2, i32 1), double 1.000000e+00, double 2.000000e+00, double 1.000000e+00)
  call void @gimp_vector3_set(%struct._GimpVector3* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5, i64 2, i32 2), double 0.000000e+00, double 1.000000e+00, double 1.000000e+00)
  store i32 3, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %0, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %k, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom
  %position = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx, i32 0, i32 1
  call void @gimp_vector3_set(%struct._GimpVector3* %position, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %2 = load i32, i32* %k, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom1
  %direction = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx2, i32 0, i32 2
  call void @gimp_vector3_set(%struct._GimpVector3* %direction, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %k, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %k, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.14, %for.end
  %4 = load i32, i32* %k, align 4
  %cmp4 = icmp slt i32 %4, 6
  br i1 %cmp4, label %for.body.5, label %for.end.16

for.body.5:                                       ; preds = %for.cond.3
  %5 = load i32, i32* %k, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom6
  %color = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx7, i32 0, i32 3
  call void @gimp_rgba_set(%struct._GimpRGB* %color, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  %6 = load i32, i32* %k, align 4
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom8
  %intensity = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx9, i32 0, i32 4
  store double 1.000000e+00, double* %intensity, align 8
  %7 = load i32, i32* %k, align 4
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom10
  %type = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx11, i32 0, i32 0
  store i32 3, i32* %type, align 4
  %8 = load i32, i32* %k, align 4
  %idxprom12 = sext i32 %8 to i64
  %arrayidx13 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom12
  %active = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx13, i32 0, i32 5
  store i32 1, i32* %active, align 4
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.body.5
  %9 = load i32, i32* %k, align 4
  %inc15 = add nsw i32 %9, 1
  store i32 %inc15, i32* %k, align 4
  br label %for.cond.3

for.end.16:                                       ; preds = %for.cond.3
  store double 2.000000e-01, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 6, i32 0), align 8
  store double 5.000000e-01, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 6, i32 1), align 8
  store double 4.000000e-01, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 6, i32 2), align 8
  store double 5.000000e-01, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 6, i32 3), align 8
  store double 2.700000e+01, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 6, i32 4), align 8
  store i32 0, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 6, i32 5), align 4
  store double 2.500000e-01, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 8), align 8
  store i32 3, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 11), align 4
  store double 1.000000e+00, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 26), align 8
  store i32 0, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 12), align 4
  store double 0.000000e+00, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 10), align 8
  store double 1.000000e-01, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 9), align 8
  store i32 0, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 13), align 4
  store i32 0, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 14), align 4
  store i32 0, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 15), align 4
  store i32 0, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 16), align 4
  store i32 0, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 17), align 4
  store i32 0, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 18), align 4
  store i32 0, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 20), align 4
  store i32 1, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 22), align 4
  store i32 -1, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 1), align 4
  store i32 -1, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 2), align 4
  ret void
}

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

; Function Attrs: nounwind uwtable
define internal void @check_drawables() #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 16), align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 1), align 4
  %cmp = icmp ne i32 %1, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %2 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 1), align 4
  %call = call i32 @gimp_item_get_image(i32 %2)
  %cmp1 = icmp eq i32 %call, -1
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %land.lhs.true
  store i32 0, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 16), align 4
  store i32 -1, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 1), align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %land.lhs.true, %if.then
  %3 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 1), align 4
  %call3 = call i32 @gimp_drawable_is_indexed(i32 %3)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 0), align 4
  %call5 = call i32 @gimp_drawable_width(i32 %4)
  %5 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 1), align 4
  %call6 = call i32 @gimp_drawable_width(i32 %5)
  %cmp7 = icmp ne i32 %call5, %call6
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %6 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 0), align 4
  %call9 = call i32 @gimp_drawable_height(i32 %6)
  %7 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 1), align 4
  %call10 = call i32 @gimp_drawable_height(i32 %7)
  %cmp11 = icmp ne i32 %call9, %call10
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %lor.lhs.false.8, %lor.lhs.false, %if.end
  store i32 0, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 16), align 4
  store i32 -1, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 1), align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %lor.lhs.false.8
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %entry
  %8 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 17), align 4
  %tobool15 = icmp ne i32 %8, 0
  br i1 %tobool15, label %if.then.16, label %if.end.30

if.then.16:                                       ; preds = %if.end.14
  %9 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 2), align 4
  %cmp17 = icmp ne i32 %9, -1
  br i1 %cmp17, label %land.lhs.true.18, label %if.end.22

land.lhs.true.18:                                 ; preds = %if.then.16
  %10 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 2), align 4
  %call19 = call i32 @gimp_item_get_image(i32 %10)
  %cmp20 = icmp eq i32 %call19, -1
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %land.lhs.true.18
  store i32 0, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 17), align 4
  store i32 -1, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 2), align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %land.lhs.true.18, %if.then.16
  %11 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 2), align 4
  %call23 = call i32 @gimp_drawable_is_gray(i32 %11)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.28, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %if.end.22
  %12 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 2), align 4
  %call26 = call i32 @gimp_drawable_has_alpha(i32 %12)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %lor.lhs.false.25, %if.end.22
  store i32 0, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 17), align 4
  store i32 -1, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 2), align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %lor.lhs.false.25
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end.14
  ret void
}

declare i32 @gimp_drawable_is_rgb(i32) #1

declare void @gimp_tile_cache_ntiles(i64) #1

declare i32 @main_dialog(%struct._GimpDrawable*) #1

declare void @compute_image() #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare i32 @gimp_displays_flush() #1

declare i32 @image_setup(%struct._GimpDrawable*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare void @g_free(i8*) #1

declare void @gimp_vector3_set(%struct._GimpVector3*, double, double, double) #1

declare void @gimp_rgba_set(%struct._GimpRGB*, double, double, double, double) #1

declare i32 @gimp_item_get_image(i32) #1

declare i32 @gimp_drawable_is_indexed(i32) #1

declare i32 @gimp_drawable_width(i32) #1

declare i32 @gimp_drawable_height(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
