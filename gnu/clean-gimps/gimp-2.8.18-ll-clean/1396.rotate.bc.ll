; ModuleID = './plug-ins/common/rotate.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct.RotateValues = type { i32, i32 }
%struct.GuideInfo = type { i32, i32, i32 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [5 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"angle\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Angle { 90 (1), 180 (2), 270 (3) } degrees\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"everything\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Rotate the whole image { TRUE, FALSE }\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"plug-in-rotate\00", align 1
@.str.11 = private unnamed_addr constant [61 x i8] c"Rotates a layer or the whole image by 90, 180 or 270 degrees\00", align 1
@.str.12 = private unnamed_addr constant [167 x i8] c"This plug-in does rotate the active layer or the whole image clockwise by multiples of 90 degrees. When the whole image is choosen, the image is resized if necessary.\00", align 1
@.str.13 = private unnamed_addr constant [59 x i8] c"Sven Neumann <sven@gimp.org>, Adam D. Moss <adam@gimp.org>\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Sven Neumann, Adam D. Moss\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"v1.0 (2000/06/18)\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"RGB*, INDEXED*, GRAY*\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.17 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@image_ID = internal global i32 -1, align 4
@active_drawable = internal global %struct._GimpDrawable* null, align 8
@rotvals = internal global %struct.RotateValues { i32 1, i32 1 }, align 4
@.str.19 = private unnamed_addr constant [59 x i8] c"You can not rotate the whole image if there's a selection.\00", align 1
@.str.20 = private unnamed_addr constant [68 x i8] c"You can not rotate the whole image if there's a floating selection.\00", align 1
@.str.21 = private unnamed_addr constant [46 x i8] c"Sorry, channels and masks can not be rotated.\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"Rotating\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([167 x i8], [167 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i32 1, i32 5, i32 0, %struct._GimpParamDef* getelementptr inbounds ([5 x %struct._GimpParamDef], [5 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
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
  %run_mode = alloca i32, align 4
  %status = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %run_mode, align 4
  store i32 3, i32* %status, align 4
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %4 = load i32, i32* %status, align 4
  store i32 %4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #6
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 1
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_int326 = bitcast %union._GimpParamData* %data5 to i32*
  %6 = load i32, i32* %d_int326, align 4
  store i32 %6, i32* @image_ID, align 4
  %7 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %7, i64 2
  %data8 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx7, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data8 to i32*
  %8 = load i32, i32* %d_drawable, align 4
  %call9 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %8)
  store %struct._GimpDrawable* %call9, %struct._GimpDrawable** @active_drawable, align 8
  %9 = load i8*, i8** %name.addr, align 8
  %call10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0)) #7
  %cmp = icmp eq i32 %call10, 0
  br i1 %cmp, label %if.then, label %if.else.23

if.then:                                          ; preds = %do.end
  %10 = load i32, i32* %run_mode, align 4
  switch i32 %10, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %if.then, %if.then
  %11 = load i32, i32* %nparams.addr, align 4
  %cmp11 = icmp eq i32 %11, 5
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %sw.bb
  %12 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx13 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %12, i64 3
  %data14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx13, i32 0, i32 1
  %d_int3215 = bitcast %union._GimpParamData* %data14 to i32*
  %13 = load i32, i32* %d_int3215, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.RotateValues, %struct.RotateValues* @rotvals, i32 0, i32 0), align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.RotateValues, %struct.RotateValues* @rotvals, i32 0, i32 0), align 4
  %rem = srem i32 %14, 4
  store i32 %rem, i32* getelementptr inbounds (%struct.RotateValues, %struct.RotateValues* @rotvals, i32 0, i32 0), align 4
  %15 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %15, i64 4
  %data17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx16, i32 0, i32 1
  %d_int3218 = bitcast %union._GimpParamData* %data17 to i32*
  %16 = load i32, i32* %d_int3218, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.RotateValues, %struct.RotateValues* @rotvals, i32 0, i32 1), align 4
  %call19 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* bitcast (%struct.RotateValues* @rotvals to i8*), i32 8)
  br label %if.end

if.else:                                          ; preds = %sw.bb
  store i32 1, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.12
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.then
  %call21 = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* bitcast (%struct.RotateValues* @rotvals to i8*))
  %17 = load i32, i32* getelementptr inbounds (%struct.RotateValues, %struct.RotateValues* @rotvals, i32 0, i32 0), align 4
  %rem22 = srem i32 %17, 4
  store i32 %rem22, i32* getelementptr inbounds (%struct.RotateValues, %struct.RotateValues* @rotvals, i32 0, i32 0), align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.20, %if.end
  br label %if.end.24

if.else.23:                                       ; preds = %do.end
  store i32 1, i32* %status, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.23, %sw.epilog
  %18 = load i32, i32* %status, align 4
  %cmp25 = icmp eq i32 %18, 3
  br i1 %cmp25, label %if.then.26, label %if.end.31

if.then.26:                                       ; preds = %if.end.24
  call void @rotate()
  %19 = load i32, i32* %run_mode, align 4
  %cmp27 = icmp ne i32 %19, 1
  br i1 %cmp27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.then.26
  %call29 = call i32 @gimp_displays_flush()
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.then.26
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end.24
  %20 = load i32, i32* %status, align 4
  store i32 %20, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
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

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare i8* @gimp_locale_directory() #3

; Function Attrs: nounwind
declare i8* @bind_textdomain_codeset(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) #2

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @rotate() #0 {
entry:
  %drawable = alloca %struct._GimpDrawable*, align 8
  %layers = alloca i32*, align 8
  %i = alloca i32, align 4
  %nlayers = alloca i32, align 4
  %guide_ID = alloca i32, align 4
  %guide = alloca %struct.GuideInfo*, align 8
  %guides = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GList* null, %struct._GList** %guides, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.RotateValues, %struct.RotateValues* @rotvals, i32 0, i32 0), align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.RotateValues, %struct.RotateValues* @rotvals, i32 0, i32 1), align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %2 = load i32, i32* @image_ID, align 4
  %call = call i32 @gimp_selection_is_empty(i32 %2)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end.6, label %if.then.3

if.then.3:                                        ; preds = %if.then.1
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.19, i32 0, i32 0)) #5
  %call5 = call i32 @gimp_message(i8* %call4)
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** @active_drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %3)
  br label %return

if.end.6:                                         ; preds = %if.then.1
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** @active_drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 0
  %5 = load i32, i32* %drawable_id, align 4
  %call7 = call i32 @gimp_item_is_layer(i32 %5)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.end.6
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** @active_drawable, align 8
  %drawable_id9 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 0
  %7 = load i32, i32* %drawable_id9, align 4
  %call10 = call i32 @gimp_layer_is_floating_sel(i32 %7)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %land.lhs.true
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.20, i32 0, i32 0)) #5
  %call14 = call i32 @gimp_message(i8* %call13)
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** @active_drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %8)
  br label %return

if.end.15:                                        ; preds = %land.lhs.true, %if.end.6
  br label %if.end.23

if.else:                                          ; preds = %if.end
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** @active_drawable, align 8
  %drawable_id16 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 0
  %10 = load i32, i32* %drawable_id16, align 4
  %call17 = call i32 @gimp_item_is_layer(i32 %10)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end.22, label %if.then.19

if.then.19:                                       ; preds = %if.else
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.21, i32 0, i32 0)) #5
  %call21 = call i32 @gimp_message(i8* %call20)
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** @active_drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %11)
  br label %return

if.end.22:                                        ; preds = %if.else
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end.15
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0)) #5
  %call25 = call i32 @gimp_progress_init(i8* %call24)
  %12 = load i32, i32* @image_ID, align 4
  %call26 = call i32 @gimp_image_undo_group_start(i32 %12)
  %13 = load i32, i32* getelementptr inbounds (%struct.RotateValues, %struct.RotateValues* @rotvals, i32 0, i32 1), align 4
  %tobool27 = icmp ne i32 %13, 0
  br i1 %tobool27, label %if.then.28, label %if.else.107

if.then.28:                                       ; preds = %if.end.23
  %14 = load i32, i32* @image_ID, align 4
  %call29 = call i32 @gimp_image_width(i32 %14)
  store i32 %call29, i32* %width, align 4
  %15 = load i32, i32* @image_ID, align 4
  %call30 = call i32 @gimp_image_height(i32 %15)
  store i32 %call30, i32* %height, align 4
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** @active_drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %16)
  %17 = load i32, i32* @image_ID, align 4
  %call31 = call i32* @gimp_image_get_layers(i32 %17, i32* %nlayers)
  store i32* %call31, i32** %layers, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.28
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %nlayers, align 4
  %cmp32 = icmp slt i32 %18, %19
  br i1 %cmp32, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %i, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load i32*, i32** %layers, align 8
  %arrayidx = getelementptr inbounds i32, i32* %21, i64 %idxprom
  %22 = load i32, i32* %arrayidx, align 4
  %call33 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %22)
  store %struct._GimpDrawable* %call33, %struct._GimpDrawable** %drawable, align 8
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @rotate_drawable(%struct._GimpDrawable* %23)
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %24)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load i32*, i32** %layers, align 8
  %27 = bitcast i32* %26 to i8*
  call void @g_free(i8* %27)
  store i32 0, i32* %guide_ID, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %28 = load i32, i32* @image_ID, align 4
  %29 = load i32, i32* %guide_ID, align 4
  %call34 = call i32 @gimp_image_find_next_guide(i32 %28, i32 %29)
  store i32 %call34, i32* %guide_ID, align 4
  %cmp35 = icmp ne i32 %call34, 0
  br i1 %cmp35, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call36 = call noalias i8* @g_malloc_n(i64 1, i64 12)
  %30 = bitcast i8* %call36 to %struct.GuideInfo*
  store %struct.GuideInfo* %30, %struct.GuideInfo** %guide, align 8
  %31 = load i32, i32* %guide_ID, align 4
  %32 = load %struct.GuideInfo*, %struct.GuideInfo** %guide, align 8
  %ID = getelementptr inbounds %struct.GuideInfo, %struct.GuideInfo* %32, i32 0, i32 0
  store i32 %31, i32* %ID, align 4
  %33 = load i32, i32* @image_ID, align 4
  %34 = load i32, i32* %guide_ID, align 4
  %call37 = call i32 @gimp_image_get_guide_orientation(i32 %33, i32 %34)
  %35 = load %struct.GuideInfo*, %struct.GuideInfo** %guide, align 8
  %orientation = getelementptr inbounds %struct.GuideInfo, %struct.GuideInfo* %35, i32 0, i32 1
  store i32 %call37, i32* %orientation, align 4
  %36 = load i32, i32* @image_ID, align 4
  %37 = load i32, i32* %guide_ID, align 4
  %call38 = call i32 @gimp_image_get_guide_position(i32 %36, i32 %37)
  %38 = load %struct.GuideInfo*, %struct.GuideInfo** %guide, align 8
  %position = getelementptr inbounds %struct.GuideInfo, %struct.GuideInfo* %38, i32 0, i32 2
  store i32 %call38, i32* %position, align 4
  %39 = load %struct._GList*, %struct._GList** %guides, align 8
  %40 = load %struct.GuideInfo*, %struct.GuideInfo** %guide, align 8
  %41 = bitcast %struct.GuideInfo* %40 to i8*
  %call39 = call %struct._GList* @g_list_prepend(%struct._GList* %39, i8* %41)
  store %struct._GList* %call39, %struct._GList** %guides, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %42 = load %struct._GList*, %struct._GList** %guides, align 8
  store %struct._GList* %42, %struct._GList** %list, align 8
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.45, %while.end
  %43 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool41 = icmp ne %struct._GList* %43, null
  br i1 %tobool41, label %for.body.42, label %for.end.46

for.body.42:                                      ; preds = %for.cond.40
  %44 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %44, i32 0, i32 0
  %45 = load i8*, i8** %data, align 8
  %46 = bitcast i8* %45 to %struct.GuideInfo*
  store %struct.GuideInfo* %46, %struct.GuideInfo** %guide, align 8
  %47 = load i32, i32* @image_ID, align 4
  %48 = load %struct.GuideInfo*, %struct.GuideInfo** %guide, align 8
  %ID43 = getelementptr inbounds %struct.GuideInfo, %struct.GuideInfo* %48, i32 0, i32 0
  %49 = load i32, i32* %ID43, align 4
  %call44 = call i32 @gimp_image_delete_guide(i32 %47, i32 %49)
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.body.42
  %50 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %50, i32 0, i32 1
  %51 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %51, %struct._GList** %list, align 8
  br label %for.cond.40

for.end.46:                                       ; preds = %for.cond.40
  %52 = load i32, i32* getelementptr inbounds (%struct.RotateValues, %struct.RotateValues* @rotvals, i32 0, i32 0), align 4
  %cmp47 = icmp ne i32 %52, 2
  br i1 %cmp47, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %for.end.46
  %53 = load i32, i32* @image_ID, align 4
  %54 = load i32, i32* %height, align 4
  %55 = load i32, i32* %width, align 4
  %call49 = call i32 @gimp_image_resize(i32 %53, i32 %54, i32 %55, i32 0, i32 0)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %for.end.46
  %56 = load %struct._GList*, %struct._GList** %guides, align 8
  %tobool51 = icmp ne %struct._GList* %56, null
  br i1 %tobool51, label %if.then.52, label %if.end.106

if.then.52:                                       ; preds = %if.end.50
  %57 = load i32, i32* getelementptr inbounds (%struct.RotateValues, %struct.RotateValues* @rotvals, i32 0, i32 0), align 4
  switch i32 %57, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.69
    i32 3, label %sw.bb.88
  ]

sw.bb:                                            ; preds = %if.then.52
  %58 = load %struct._GList*, %struct._GList** %guides, align 8
  store %struct._GList* %58, %struct._GList** %list, align 8
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.66, %sw.bb
  %59 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool54 = icmp ne %struct._GList* %59, null
  br i1 %tobool54, label %for.body.55, label %for.end.68

for.body.55:                                      ; preds = %for.cond.53
  %60 = load %struct._GList*, %struct._GList** %list, align 8
  %data56 = getelementptr inbounds %struct._GList, %struct._GList* %60, i32 0, i32 0
  %61 = load i8*, i8** %data56, align 8
  %62 = bitcast i8* %61 to %struct.GuideInfo*
  store %struct.GuideInfo* %62, %struct.GuideInfo** %guide, align 8
  %63 = load %struct.GuideInfo*, %struct.GuideInfo** %guide, align 8
  %orientation57 = getelementptr inbounds %struct.GuideInfo, %struct.GuideInfo* %63, i32 0, i32 1
  %64 = load i32, i32* %orientation57, align 4
  %cmp58 = icmp eq i32 %64, 0
  br i1 %cmp58, label %if.then.59, label %if.else.62

if.then.59:                                       ; preds = %for.body.55
  %65 = load i32, i32* @image_ID, align 4
  %66 = load i32, i32* %height, align 4
  %67 = load %struct.GuideInfo*, %struct.GuideInfo** %guide, align 8
  %position60 = getelementptr inbounds %struct.GuideInfo, %struct.GuideInfo* %67, i32 0, i32 2
  %68 = load i32, i32* %position60, align 4
  %sub = sub nsw i32 %66, %68
  %call61 = call i32 @gimp_image_add_vguide(i32 %65, i32 %sub)
  br label %if.end.65

if.else.62:                                       ; preds = %for.body.55
  %69 = load i32, i32* @image_ID, align 4
  %70 = load %struct.GuideInfo*, %struct.GuideInfo** %guide, align 8
  %position63 = getelementptr inbounds %struct.GuideInfo, %struct.GuideInfo* %70, i32 0, i32 2
  %71 = load i32, i32* %position63, align 4
  %call64 = call i32 @gimp_image_add_hguide(i32 %69, i32 %71)
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.62, %if.then.59
  %72 = load %struct.GuideInfo*, %struct.GuideInfo** %guide, align 8
  %73 = bitcast %struct.GuideInfo* %72 to i8*
  call void @g_free(i8* %73)
  br label %for.inc.66

for.inc.66:                                       ; preds = %if.end.65
  %74 = load %struct._GList*, %struct._GList** %list, align 8
  %next67 = getelementptr inbounds %struct._GList, %struct._GList* %74, i32 0, i32 1
  %75 = load %struct._GList*, %struct._GList** %next67, align 8
  store %struct._GList* %75, %struct._GList** %list, align 8
  br label %for.cond.53

for.end.68:                                       ; preds = %for.cond.53
  br label %sw.epilog

sw.bb.69:                                         ; preds = %if.then.52
  %76 = load %struct._GList*, %struct._GList** %guides, align 8
  store %struct._GList* %76, %struct._GList** %list, align 8
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.85, %sw.bb.69
  %77 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool71 = icmp ne %struct._GList* %77, null
  br i1 %tobool71, label %for.body.72, label %for.end.87

for.body.72:                                      ; preds = %for.cond.70
  %78 = load %struct._GList*, %struct._GList** %list, align 8
  %data73 = getelementptr inbounds %struct._GList, %struct._GList* %78, i32 0, i32 0
  %79 = load i8*, i8** %data73, align 8
  %80 = bitcast i8* %79 to %struct.GuideInfo*
  store %struct.GuideInfo* %80, %struct.GuideInfo** %guide, align 8
  %81 = load %struct.GuideInfo*, %struct.GuideInfo** %guide, align 8
  %orientation74 = getelementptr inbounds %struct.GuideInfo, %struct.GuideInfo* %81, i32 0, i32 1
  %82 = load i32, i32* %orientation74, align 4
  %cmp75 = icmp eq i32 %82, 0
  br i1 %cmp75, label %if.then.76, label %if.else.80

if.then.76:                                       ; preds = %for.body.72
  %83 = load i32, i32* @image_ID, align 4
  %84 = load i32, i32* %height, align 4
  %85 = load %struct.GuideInfo*, %struct.GuideInfo** %guide, align 8
  %position77 = getelementptr inbounds %struct.GuideInfo, %struct.GuideInfo* %85, i32 0, i32 2
  %86 = load i32, i32* %position77, align 4
  %sub78 = sub nsw i32 %84, %86
  %call79 = call i32 @gimp_image_add_hguide(i32 %83, i32 %sub78)
  br label %if.end.84

if.else.80:                                       ; preds = %for.body.72
  %87 = load i32, i32* @image_ID, align 4
  %88 = load i32, i32* %width, align 4
  %89 = load %struct.GuideInfo*, %struct.GuideInfo** %guide, align 8
  %position81 = getelementptr inbounds %struct.GuideInfo, %struct.GuideInfo* %89, i32 0, i32 2
  %90 = load i32, i32* %position81, align 4
  %sub82 = sub nsw i32 %88, %90
  %call83 = call i32 @gimp_image_add_vguide(i32 %87, i32 %sub82)
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.80, %if.then.76
  %91 = load %struct.GuideInfo*, %struct.GuideInfo** %guide, align 8
  %92 = bitcast %struct.GuideInfo* %91 to i8*
  call void @g_free(i8* %92)
  br label %for.inc.85

for.inc.85:                                       ; preds = %if.end.84
  %93 = load %struct._GList*, %struct._GList** %list, align 8
  %next86 = getelementptr inbounds %struct._GList, %struct._GList* %93, i32 0, i32 1
  %94 = load %struct._GList*, %struct._GList** %next86, align 8
  store %struct._GList* %94, %struct._GList** %list, align 8
  br label %for.cond.70

for.end.87:                                       ; preds = %for.cond.70
  br label %sw.epilog

sw.bb.88:                                         ; preds = %if.then.52
  %95 = load %struct._GList*, %struct._GList** %guides, align 8
  store %struct._GList* %95, %struct._GList** %list, align 8
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.103, %sw.bb.88
  %96 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool90 = icmp ne %struct._GList* %96, null
  br i1 %tobool90, label %for.body.91, label %for.end.105

for.body.91:                                      ; preds = %for.cond.89
  %97 = load %struct._GList*, %struct._GList** %list, align 8
  %data92 = getelementptr inbounds %struct._GList, %struct._GList* %97, i32 0, i32 0
  %98 = load i8*, i8** %data92, align 8
  %99 = bitcast i8* %98 to %struct.GuideInfo*
  store %struct.GuideInfo* %99, %struct.GuideInfo** %guide, align 8
  %100 = load %struct.GuideInfo*, %struct.GuideInfo** %guide, align 8
  %orientation93 = getelementptr inbounds %struct.GuideInfo, %struct.GuideInfo* %100, i32 0, i32 1
  %101 = load i32, i32* %orientation93, align 4
  %cmp94 = icmp eq i32 %101, 0
  br i1 %cmp94, label %if.then.95, label %if.else.98

if.then.95:                                       ; preds = %for.body.91
  %102 = load i32, i32* @image_ID, align 4
  %103 = load %struct.GuideInfo*, %struct.GuideInfo** %guide, align 8
  %position96 = getelementptr inbounds %struct.GuideInfo, %struct.GuideInfo* %103, i32 0, i32 2
  %104 = load i32, i32* %position96, align 4
  %call97 = call i32 @gimp_image_add_vguide(i32 %102, i32 %104)
  br label %if.end.102

if.else.98:                                       ; preds = %for.body.91
  %105 = load i32, i32* @image_ID, align 4
  %106 = load i32, i32* %width, align 4
  %107 = load %struct.GuideInfo*, %struct.GuideInfo** %guide, align 8
  %position99 = getelementptr inbounds %struct.GuideInfo, %struct.GuideInfo* %107, i32 0, i32 2
  %108 = load i32, i32* %position99, align 4
  %sub100 = sub nsw i32 %106, %108
  %call101 = call i32 @gimp_image_add_hguide(i32 %105, i32 %sub100)
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.98, %if.then.95
  %109 = load %struct.GuideInfo*, %struct.GuideInfo** %guide, align 8
  %110 = bitcast %struct.GuideInfo* %109 to i8*
  call void @g_free(i8* %110)
  br label %for.inc.103

for.inc.103:                                      ; preds = %if.end.102
  %111 = load %struct._GList*, %struct._GList** %list, align 8
  %next104 = getelementptr inbounds %struct._GList, %struct._GList* %111, i32 0, i32 1
  %112 = load %struct._GList*, %struct._GList** %next104, align 8
  store %struct._GList* %112, %struct._GList** %list, align 8
  br label %for.cond.89

for.end.105:                                      ; preds = %for.cond.89
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.52
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end.105, %for.end.87, %for.end.68
  %113 = load %struct._GList*, %struct._GList** %guides, align 8
  call void @g_list_free(%struct._GList* %113)
  br label %if.end.106

if.end.106:                                       ; preds = %sw.epilog, %if.end.50
  br label %if.end.119

if.else.107:                                      ; preds = %if.end.23
  %114 = load i32, i32* @image_ID, align 4
  %call108 = call i32 @gimp_selection_is_empty(i32 %114)
  %tobool109 = icmp ne i32 %call108, 0
  br i1 %tobool109, label %if.end.118, label %land.lhs.true.110

land.lhs.true.110:                                ; preds = %if.else.107
  %115 = load %struct._GimpDrawable*, %struct._GimpDrawable** @active_drawable, align 8
  %drawable_id111 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %115, i32 0, i32 0
  %116 = load i32, i32* %drawable_id111, align 4
  %call112 = call i32 @gimp_layer_is_floating_sel(i32 %116)
  %tobool113 = icmp ne i32 %call112, 0
  br i1 %tobool113, label %if.end.118, label %if.then.114

if.then.114:                                      ; preds = %land.lhs.true.110
  %117 = load i32, i32* @image_ID, align 4
  %118 = load %struct._GimpDrawable*, %struct._GimpDrawable** @active_drawable, align 8
  %drawable_id115 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %118, i32 0, i32 0
  %119 = load i32, i32* %drawable_id115, align 4
  %call116 = call i32 @gimp_selection_float(i32 %117, i32 %119, i32 0, i32 0)
  %call117 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %call116)
  store %struct._GimpDrawable* %call117, %struct._GimpDrawable** @active_drawable, align 8
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.114, %land.lhs.true.110, %if.else.107
  %120 = load %struct._GimpDrawable*, %struct._GimpDrawable** @active_drawable, align 8
  call void @rotate_drawable(%struct._GimpDrawable* %120)
  %121 = load %struct._GimpDrawable*, %struct._GimpDrawable** @active_drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %121)
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %if.end.106
  %122 = load i32, i32* @image_ID, align 4
  %call120 = call i32 @gimp_image_undo_group_end(i32 %122)
  br label %return

return:                                           ; preds = %if.end.119, %if.then.19, %if.then.12, %if.then.3, %if.then
  ret void
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_selection_is_empty(i32) #1

declare i32 @gimp_message(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare i32 @gimp_item_is_layer(i32) #1

declare i32 @gimp_layer_is_floating_sel(i32) #1

declare i32 @gimp_progress_init(i8*) #1

declare i32 @gimp_image_undo_group_start(i32) #1

declare i32 @gimp_image_width(i32) #1

declare i32 @gimp_image_height(i32) #1

declare i32* @gimp_image_get_layers(i32, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @rotate_drawable(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %srcPR = alloca %struct._GimpPixelRgn, align 8
  %destPR = alloca %struct._GimpPixelRgn, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %longside = alloca i32, align 4
  %bytes = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %offsetx = alloca i32, align 4
  %offsety = alloca i32, align 4
  %was_lock_alpha = alloca i32, align 4
  %buffer = alloca i8*, align 8
  %src_row = alloca i8*, align 8
  %dest_row = alloca i8*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 0, i32* %was_lock_alpha, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width1 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 1
  %1 = load i32, i32* %width1, align 4
  store i32 %1, i32* %width, align 4
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height2 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 2
  %3 = load i32, i32* %height2, align 4
  store i32 %3, i32* %height, align 4
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 3
  %5 = load i32, i32* %bpp, align 4
  store i32 %5, i32* %bytes, align 4
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 0
  %7 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_layer_get_lock_alpha(i32 %7)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %was_lock_alpha, align 4
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id3 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 0
  %9 = load i32, i32* %drawable_id3, align 4
  %call4 = call i32 @gimp_layer_set_lock_alpha(i32 %9, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, i32* getelementptr inbounds (%struct.RotateValues, %struct.RotateValues* @rotvals, i32 0, i32 0), align 4
  %cmp = icmp eq i32 %10, 2
  br i1 %cmp, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %11 = load i32, i32* %width, align 4
  %call6 = call i32 @gimp_tile_width() #6
  %div = udiv i32 %11, %call6
  %add = add i32 %div, 1
  %mul = mul i32 2, %add
  %conv = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %13 = load i32, i32* %width, align 4
  %14 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %srcPR, %struct._GimpDrawable* %12, i32 0, i32 0, i32 %13, i32 %14, i32 0, i32 0)
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %16 = load i32, i32* %width, align 4
  %17 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %destPR, %struct._GimpDrawable* %15, i32 0, i32 0, i32 %16, i32 %17, i32 1, i32 1)
  %18 = load i32, i32* %width, align 4
  %19 = load i32, i32* %bytes, align 4
  %mul7 = mul nsw i32 %18, %19
  %conv8 = sext i32 %mul7 to i64
  %call9 = call noalias i8* @g_malloc(i64 %conv8)
  store i8* %call9, i8** %src_row, align 8
  %20 = load i32, i32* %width, align 4
  %21 = load i32, i32* %bytes, align 4
  %mul10 = mul nsw i32 %20, %21
  %conv11 = sext i32 %mul10 to i64
  %call12 = call noalias i8* @g_malloc(i64 %conv11)
  store i8* %call12, i8** %dest_row, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.35, %if.then.5
  %22 = load i32, i32* %row, align 4
  %23 = load i32, i32* %height, align 4
  %cmp13 = icmp slt i32 %22, %23
  br i1 %cmp13, label %for.body, label %for.end.37

for.body:                                         ; preds = %for.cond
  %24 = load i8*, i8** %src_row, align 8
  %25 = load i32, i32* %row, align 4
  %26 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %srcPR, i8* %24, i32 0, i32 %25, i32 %26)
  store i32 0, i32* %col, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %for.body
  %27 = load i32, i32* %col, align 4
  %28 = load i32, i32* %width, align 4
  %cmp16 = icmp slt i32 %27, %28
  br i1 %cmp16, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %for.cond.15
  %29 = load i8*, i8** %dest_row, align 8
  %30 = load i32, i32* %col, align 4
  %31 = load i32, i32* %bytes, align 4
  %mul19 = mul nsw i32 %30, %31
  %idx.ext = sext i32 %mul19 to i64
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 %idx.ext
  %32 = load i8*, i8** %src_row, align 8
  %33 = load i32, i32* %width, align 4
  %sub = sub nsw i32 %33, 1
  %34 = load i32, i32* %col, align 4
  %sub20 = sub nsw i32 %sub, %34
  %35 = load i32, i32* %bytes, align 4
  %mul21 = mul nsw i32 %sub20, %35
  %idx.ext22 = sext i32 %mul21 to i64
  %add.ptr23 = getelementptr inbounds i8, i8* %32, i64 %idx.ext22
  %36 = load i32, i32* %bytes, align 4
  %conv24 = sext i32 %36 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %add.ptr23, i64 %conv24, i32 1, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body.18
  %37 = load i32, i32* %col, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %col, align 4
  br label %for.cond.15

for.end:                                          ; preds = %for.cond.15
  %38 = load i8*, i8** %dest_row, align 8
  %39 = load i32, i32* %height, align 4
  %40 = load i32, i32* %row, align 4
  %sub25 = sub nsw i32 %39, %40
  %sub26 = sub nsw i32 %sub25, 1
  %41 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %destPR, i8* %38, i32 0, i32 %sub26, i32 %41)
  %42 = load i32, i32* %row, align 4
  %rem = srem i32 %42, 5
  %cmp27 = icmp eq i32 %rem, 0
  br i1 %cmp27, label %if.then.29, label %if.end.34

if.then.29:                                       ; preds = %for.end
  %43 = load i32, i32* %row, align 4
  %conv30 = sitofp i32 %43 to double
  %44 = load i32, i32* %height, align 4
  %conv31 = sitofp i32 %44 to double
  %div32 = fdiv double %conv30, %conv31
  %call33 = call i32 @gimp_progress_update(double %div32)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.29, %for.end
  br label %for.inc.35

for.inc.35:                                       ; preds = %if.end.34
  %45 = load i32, i32* %row, align 4
  %inc36 = add nsw i32 %45, 1
  store i32 %inc36, i32* %row, align 4
  br label %for.cond

for.end.37:                                       ; preds = %for.cond
  %46 = load i8*, i8** %src_row, align 8
  call void @g_free(i8* %46)
  %47 = load i8*, i8** %dest_row, align 8
  call void @g_free(i8* %47)
  %48 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %48)
  %49 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id38 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %49, i32 0, i32 0
  %50 = load i32, i32* %drawable_id38, align 4
  %call39 = call i32 @gimp_drawable_merge_shadow(i32 %50, i32 1)
  %51 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id40 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %51, i32 0, i32 0
  %52 = load i32, i32* %drawable_id40, align 4
  %53 = load i32, i32* %width, align 4
  %54 = load i32, i32* %height, align 4
  %call41 = call i32 @gimp_drawable_update(i32 %52, i32 0, i32 0, i32 %53, i32 %54)
  br label %if.end.111

if.else:                                          ; preds = %if.end
  %55 = load i32, i32* %width, align 4
  %56 = load i32, i32* %height, align 4
  %cmp42 = icmp sgt i32 %55, %56
  br i1 %cmp42, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %57 = load i32, i32* %width, align 4
  store i32 %57, i32* %longside, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %58 = load i32, i32* %height, align 4
  store i32 %58, i32* %longside, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %57, %cond.true ], [ %58, %cond.false ]
  %59 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id44 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %59, i32 0, i32 0
  %60 = load i32, i32* %drawable_id44, align 4
  %61 = load i32, i32* %longside, align 4
  %62 = load i32, i32* %longside, align 4
  %call45 = call i32 @gimp_layer_resize(i32 %60, i32 %61, i32 %62, i32 0, i32 0)
  %63 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id46 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %63, i32 0, i32 0
  %64 = load i32, i32* %drawable_id46, align 4
  %call47 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %64)
  store %struct._GimpDrawable* %call47, %struct._GimpDrawable** %drawable.addr, align 8
  %65 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %65)
  %66 = load i32, i32* %longside, align 4
  %call48 = call i32 @gimp_tile_width() #6
  %div49 = udiv i32 %66, %call48
  %add50 = add i32 %div49, 1
  %67 = load i32, i32* %longside, align 4
  %call51 = call i32 @gimp_tile_height() #6
  %div52 = udiv i32 %67, %call51
  %add53 = add i32 %div52, 1
  %add54 = add i32 %add50, %add53
  %conv55 = zext i32 %add54 to i64
  call void @gimp_tile_cache_ntiles(i64 %conv55)
  %68 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %69 = load i32, i32* %longside, align 4
  %70 = load i32, i32* %longside, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %srcPR, %struct._GimpDrawable* %68, i32 0, i32 0, i32 %69, i32 %70, i32 0, i32 0)
  %71 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %72 = load i32, i32* %longside, align 4
  %73 = load i32, i32* %longside, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %destPR, %struct._GimpDrawable* %71, i32 0, i32 0, i32 %72, i32 %73, i32 1, i32 1)
  %74 = load i32, i32* %longside, align 4
  %75 = load i32, i32* %bytes, align 4
  %mul56 = mul nsw i32 %74, %75
  %conv57 = sext i32 %mul56 to i64
  %call58 = call noalias i8* @g_malloc(i64 %conv57)
  store i8* %call58, i8** %buffer, align 8
  %76 = load i32, i32* getelementptr inbounds (%struct.RotateValues, %struct.RotateValues* @rotvals, i32 0, i32 0), align 4
  %cmp59 = icmp eq i32 %76, 1
  br i1 %cmp59, label %if.then.61, label %if.else.80

if.then.61:                                       ; preds = %cond.end
  store i32 0, i32* %row, align 4
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.77, %if.then.61
  %77 = load i32, i32* %row, align 4
  %78 = load i32, i32* %height, align 4
  %cmp63 = icmp slt i32 %77, %78
  br i1 %cmp63, label %for.body.65, label %for.end.79

for.body.65:                                      ; preds = %for.cond.62
  %79 = load i8*, i8** %buffer, align 8
  %80 = load i32, i32* %row, align 4
  %81 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %srcPR, i8* %79, i32 0, i32 %80, i32 %81)
  %82 = load i8*, i8** %buffer, align 8
  %83 = load i32, i32* %height, align 4
  %84 = load i32, i32* %row, align 4
  %sub66 = sub nsw i32 %83, %84
  %sub67 = sub nsw i32 %sub66, 1
  %85 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_set_col(%struct._GimpPixelRgn* %destPR, i8* %82, i32 %sub67, i32 0, i32 %85)
  %86 = load i32, i32* %row, align 4
  %rem68 = srem i32 %86, 5
  %cmp69 = icmp eq i32 %rem68, 0
  br i1 %cmp69, label %if.then.71, label %if.end.76

if.then.71:                                       ; preds = %for.body.65
  %87 = load i32, i32* %row, align 4
  %conv72 = sitofp i32 %87 to double
  %88 = load i32, i32* %height, align 4
  %conv73 = sitofp i32 %88 to double
  %div74 = fdiv double %conv72, %conv73
  %call75 = call i32 @gimp_progress_update(double %div74)
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.71, %for.body.65
  br label %for.inc.77

for.inc.77:                                       ; preds = %if.end.76
  %89 = load i32, i32* %row, align 4
  %inc78 = add nsw i32 %89, 1
  store i32 %inc78, i32* %row, align 4
  br label %for.cond.62

for.end.79:                                       ; preds = %for.cond.62
  br label %if.end.99

if.else.80:                                       ; preds = %cond.end
  store i32 0, i32* %col, align 4
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.96, %if.else.80
  %90 = load i32, i32* %col, align 4
  %91 = load i32, i32* %width, align 4
  %cmp82 = icmp slt i32 %90, %91
  br i1 %cmp82, label %for.body.84, label %for.end.98

for.body.84:                                      ; preds = %for.cond.81
  %92 = load i8*, i8** %buffer, align 8
  %93 = load i32, i32* %col, align 4
  %94 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_get_col(%struct._GimpPixelRgn* %srcPR, i8* %92, i32 %93, i32 0, i32 %94)
  %95 = load i8*, i8** %buffer, align 8
  %96 = load i32, i32* %width, align 4
  %97 = load i32, i32* %col, align 4
  %sub85 = sub nsw i32 %96, %97
  %sub86 = sub nsw i32 %sub85, 1
  %98 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %destPR, i8* %95, i32 0, i32 %sub86, i32 %98)
  %99 = load i32, i32* %col, align 4
  %rem87 = srem i32 %99, 5
  %cmp88 = icmp eq i32 %rem87, 0
  br i1 %cmp88, label %if.then.90, label %if.end.95

if.then.90:                                       ; preds = %for.body.84
  %100 = load i32, i32* %col, align 4
  %conv91 = sitofp i32 %100 to double
  %101 = load i32, i32* %width, align 4
  %conv92 = sitofp i32 %101 to double
  %div93 = fdiv double %conv91, %conv92
  %call94 = call i32 @gimp_progress_update(double %div93)
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.90, %for.body.84
  br label %for.inc.96

for.inc.96:                                       ; preds = %if.end.95
  %102 = load i32, i32* %col, align 4
  %inc97 = add nsw i32 %102, 1
  store i32 %inc97, i32* %col, align 4
  br label %for.cond.81

for.end.98:                                       ; preds = %for.cond.81
  br label %if.end.99

if.end.99:                                        ; preds = %for.end.98, %for.end.79
  %103 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %103)
  %call100 = call i32 @gimp_progress_update(double 1.000000e+00)
  %104 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %104)
  %105 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id101 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %105, i32 0, i32 0
  %106 = load i32, i32* %drawable_id101, align 4
  %call102 = call i32 @gimp_drawable_merge_shadow(i32 %106, i32 1)
  %107 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id103 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %107, i32 0, i32 0
  %108 = load i32, i32* %drawable_id103, align 4
  %109 = load i32, i32* %height, align 4
  %110 = load i32, i32* %width, align 4
  %call104 = call i32 @gimp_drawable_update(i32 %108, i32 0, i32 0, i32 %109, i32 %110)
  %111 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id105 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %111, i32 0, i32 0
  %112 = load i32, i32* %drawable_id105, align 4
  %113 = load i32, i32* %height, align 4
  %114 = load i32, i32* %width, align 4
  %call106 = call i32 @gimp_layer_resize(i32 %112, i32 %113, i32 %114, i32 0, i32 0)
  %115 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id107 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %115, i32 0, i32 0
  %116 = load i32, i32* %drawable_id107, align 4
  %call108 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %116)
  store %struct._GimpDrawable* %call108, %struct._GimpDrawable** %drawable.addr, align 8
  %117 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %117)
  %118 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id109 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %118, i32 0, i32 0
  %119 = load i32, i32* %drawable_id109, align 4
  %120 = load i32, i32* %height, align 4
  %121 = load i32, i32* %width, align 4
  %call110 = call i32 @gimp_drawable_update(i32 %119, i32 0, i32 0, i32 %120, i32 %121)
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.99, %for.end.37
  %122 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id112 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %122, i32 0, i32 0
  %123 = load i32, i32* %drawable_id112, align 4
  %call113 = call i32 @gimp_drawable_offsets(i32 %123, i32* %offsetx, i32* %offsety)
  %124 = load i32, i32* @image_ID, align 4
  %call114 = call i32 @gimp_image_width(i32 %124)
  %125 = load i32, i32* @image_ID, align 4
  %call115 = call i32 @gimp_image_height(i32 %125)
  %126 = load i32, i32* %width, align 4
  %127 = load i32, i32* %height, align 4
  call void @rotate_compute_offsets(i32* %offsetx, i32* %offsety, i32 %call114, i32 %call115, i32 %126, i32 %127)
  %128 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id116 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %128, i32 0, i32 0
  %129 = load i32, i32* %drawable_id116, align 4
  %130 = load i32, i32* %offsetx, align 4
  %131 = load i32, i32* %offsety, align 4
  %call117 = call i32 @gimp_layer_set_offsets(i32 %129, i32 %130, i32 %131)
  %132 = load i32, i32* %was_lock_alpha, align 4
  %tobool118 = icmp ne i32 %132, 0
  br i1 %tobool118, label %if.then.119, label %if.end.122

if.then.119:                                      ; preds = %if.end.111
  %133 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id120 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %133, i32 0, i32 0
  %134 = load i32, i32* %drawable_id120, align 4
  %call121 = call i32 @gimp_layer_set_lock_alpha(i32 %134, i32 1)
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.119, %if.end.111
  ret void
}

declare void @g_free(i8*) #1

declare i32 @gimp_image_find_next_guide(i32, i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare i32 @gimp_image_get_guide_orientation(i32, i32) #1

declare i32 @gimp_image_get_guide_position(i32, i32) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare i32 @gimp_image_delete_guide(i32, i32) #1

declare i32 @gimp_image_resize(i32, i32, i32, i32, i32) #1

declare i32 @gimp_image_add_vguide(i32, i32) #1

declare i32 @gimp_image_add_hguide(i32, i32) #1

declare void @g_list_free(%struct._GList*) #1

declare i32 @gimp_selection_float(i32, i32, i32, i32) #1

declare i32 @gimp_image_undo_group_end(i32) #1

declare i32 @gimp_layer_get_lock_alpha(i32) #1

declare i32 @gimp_layer_set_lock_alpha(i32, i32) #1

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare noalias i8* @g_malloc(i64) #1

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare i32 @gimp_progress_update(double) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare i32 @gimp_layer_resize(i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_height() #3

declare void @gimp_pixel_rgn_set_col(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare void @gimp_pixel_rgn_get_col(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare i32 @gimp_drawable_offsets(i32, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @rotate_compute_offsets(i32* %offsetx, i32* %offsety, i32 %image_width, i32 %image_height, i32 %width, i32 %height) #0 {
entry:
  %offsetx.addr = alloca i32*, align 8
  %offsety.addr = alloca i32*, align 8
  %image_width.addr = alloca i32, align 4
  %image_height.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %buffer = alloca i32, align 4
  store i32* %offsetx, i32** %offsetx.addr, align 8
  store i32* %offsety, i32** %offsety.addr, align 8
  store i32 %image_width, i32* %image_width.addr, align 4
  store i32 %image_height, i32* %image_height.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.RotateValues, %struct.RotateValues* @rotvals, i32 0, i32 1), align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.RotateValues, %struct.RotateValues* @rotvals, i32 0, i32 0), align 4
  switch i32 %1, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %if.then
  %2 = load i32*, i32** %offsetx.addr, align 8
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* %buffer, align 4
  %4 = load i32, i32* %image_height.addr, align 4
  %5 = load i32*, i32** %offsety.addr, align 8
  %6 = load i32, i32* %5, align 4
  %sub = sub nsw i32 %4, %6
  %7 = load i32, i32* %height.addr, align 4
  %sub1 = sub nsw i32 %sub, %7
  %8 = load i32*, i32** %offsetx.addr, align 8
  store i32 %sub1, i32* %8, align 4
  %9 = load i32, i32* %buffer, align 4
  %10 = load i32*, i32** %offsety.addr, align 8
  store i32 %9, i32* %10, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %if.then
  %11 = load i32, i32* %image_width.addr, align 4
  %12 = load i32*, i32** %offsetx.addr, align 8
  %13 = load i32, i32* %12, align 4
  %sub3 = sub nsw i32 %11, %13
  %14 = load i32, i32* %width.addr, align 4
  %sub4 = sub nsw i32 %sub3, %14
  %15 = load i32*, i32** %offsetx.addr, align 8
  store i32 %sub4, i32* %15, align 4
  %16 = load i32, i32* %image_height.addr, align 4
  %17 = load i32*, i32** %offsety.addr, align 8
  %18 = load i32, i32* %17, align 4
  %sub5 = sub nsw i32 %16, %18
  %19 = load i32, i32* %height.addr, align 4
  %sub6 = sub nsw i32 %sub5, %19
  %20 = load i32*, i32** %offsety.addr, align 8
  store i32 %sub6, i32* %20, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.then
  %21 = load i32*, i32** %offsetx.addr, align 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %buffer, align 4
  %23 = load i32*, i32** %offsety.addr, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %offsetx.addr, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %image_width.addr, align 4
  %27 = load i32, i32* %buffer, align 4
  %sub8 = sub nsw i32 %26, %27
  %28 = load i32, i32* %width.addr, align 4
  %sub9 = sub nsw i32 %sub8, %28
  %29 = load i32*, i32** %offsety.addr, align 8
  store i32 %sub9, i32* %29, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.7, %if.then, %sw.bb.2, %sw.bb
  br label %if.end.15

if.else:                                          ; preds = %entry
  %30 = load i32, i32* getelementptr inbounds (%struct.RotateValues, %struct.RotateValues* @rotvals, i32 0, i32 0), align 4
  %cmp = icmp ne i32 %30, 2
  br i1 %cmp, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.else
  %31 = load i32*, i32** %offsetx.addr, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %width.addr, align 4
  %34 = load i32, i32* %height.addr, align 4
  %sub11 = sub nsw i32 %33, %34
  %div = sdiv i32 %sub11, 2
  %add = add nsw i32 %32, %div
  %35 = load i32*, i32** %offsetx.addr, align 8
  store i32 %add, i32* %35, align 4
  %36 = load i32*, i32** %offsety.addr, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %height.addr, align 4
  %39 = load i32, i32* %width.addr, align 4
  %sub12 = sub nsw i32 %38, %39
  %div13 = sdiv i32 %sub12, 2
  %add14 = add nsw i32 %37, %div13
  %40 = load i32*, i32** %offsety.addr, align 8
  store i32 %add14, i32* %40, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.else
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %sw.epilog
  ret void
}

declare i32 @gimp_layer_set_offsets(i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
