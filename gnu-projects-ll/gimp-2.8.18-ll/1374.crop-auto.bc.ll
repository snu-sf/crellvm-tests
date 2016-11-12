; ModuleID = './plug-ins/common/crop-auto.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [3 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"plug-in-autocrop\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Remove empty borders from the image\00", align 1
@.str.8 = private unnamed_addr constant [263 x i8] c"Crop the active layer of the input \22image\22 based on empty borders of the input \22drawable\22. The input drawable serves as a base for detecting cropping extents (transparency or background color), and is not necessarily the cropped layer (the current active layer).\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"Tim Newsome\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"Autocrop Imag_e\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"RGB*, GRAY*, INDEXED*\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"<Image>/Image/Crop\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"plug-in-autocrop-layer\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"Remove empty borders from the layer\00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"Autocrop Lay_er\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"<Image>/Layer/Crop\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.19 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"Cropping\00", align 1
@bytes = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([263 x i8], [263 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i32 1, i32 3, i32 0, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0))
  call void @gimp_install_procedure(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i32 1, i32 3, i32 0, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call1 = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @run(i8* %name, i32 %n_params, %struct._GimpParam* %param, i32* %nreturn_vals, %struct._GimpParam** %return_vals) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %n_params.addr = alloca i32, align 4
  %param.addr = alloca %struct._GimpParam*, align 8
  %nreturn_vals.addr = alloca i32*, align 8
  %return_vals.addr = alloca %struct._GimpParam**, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %run_mode = alloca i32, align 4
  %status = alloca i32, align 4
  %image_id = alloca i32, align 4
  %interactive = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %n_params, i32* %n_params.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  %0 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %0, align 4
  %1 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %1, align 8
  %2 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %3 = load i32, i32* %d_int32, align 4
  store i32 %3, i32* %run_mode, align 4
  %4 = load i32, i32* %run_mode, align 4
  %cmp = icmp ne i32 %4, 1
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %interactive, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #6
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %5 = load i32, i32* %n_params.addr, align 4
  %cmp4 = icmp ne i32 %5, 3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 1, i32* %status, align 4
  br label %out

if.end:                                           ; preds = %do.end
  %6 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %6, i64 2
  %data7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx6, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data7 to i32*
  %7 = load i32, i32* %d_drawable, align 4
  %call8 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %7)
  store %struct._GimpDrawable* %call8, %struct._GimpDrawable** %drawable, align 8
  %8 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %8, i64 1
  %data10 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx9, i32 0, i32 1
  %d_image = bitcast %union._GimpParamData* %data10 to i32*
  %9 = load i32, i32* %d_image, align 4
  store i32 %9, i32* %image_id, align 4
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 0
  %11 = load i32, i32* %drawable_id, align 4
  %call11 = call i32 @gimp_drawable_is_rgb(i32 %11)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id12 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %12, i32 0, i32 0
  %13 = load i32, i32* %drawable_id12, align 4
  %call13 = call i32 @gimp_drawable_is_gray(i32 %13)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.19, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id16 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %14, i32 0, i32 0
  %15 = load i32, i32* %drawable_id16, align 4
  %call17 = call i32 @gimp_drawable_is_indexed(i32 %15)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %lor.lhs.false.15, %lor.lhs.false, %if.end
  %16 = load i32, i32* %interactive, align 4
  %tobool20 = icmp ne i32 %16, 0
  br i1 %tobool20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %if.then.19
  %call22 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0)) #5
  %call23 = call i32 @gimp_progress_init(i8* %call22)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %if.then.19
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %17, i32 0, i32 1
  %18 = load i32, i32* %width, align 4
  %call25 = call i32 @gimp_tile_width() #6
  %div = udiv i32 %18, %call25
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %19, i32 0, i32 2
  %20 = load i32, i32* %height, align 4
  %call26 = call i32 @gimp_tile_height() #6
  %div27 = udiv i32 %20, %call26
  %cmp28 = icmp ugt i32 %div, %div27
  br i1 %cmp28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.24
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width30 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %21, i32 0, i32 1
  %22 = load i32, i32* %width30, align 4
  %call31 = call i32 @gimp_tile_width() #6
  %div32 = udiv i32 %22, %call31
  br label %cond.end

cond.false:                                       ; preds = %if.end.24
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height33 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %23, i32 0, i32 2
  %24 = load i32, i32* %height33, align 4
  %call34 = call i32 @gimp_tile_height() #6
  %div35 = udiv i32 %24, %call34
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div32, %cond.true ], [ %div35, %cond.false ]
  %add = add i32 %cond, 1
  %conv36 = zext i32 %add to i64
  call void @gimp_tile_cache_ntiles(i64 %conv36)
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %26 = load i32, i32* %image_id, align 4
  %27 = load i32, i32* %interactive, align 4
  %28 = load i8*, i8** %name.addr, align 8
  %call37 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i32 0, i32 0)) #7
  %cmp38 = icmp eq i32 %call37, 0
  %conv39 = zext i1 %cmp38 to i32
  call void @autocrop(%struct._GimpDrawable* %25, i32 %26, i32 %27, i32 %conv39)
  %29 = load i32, i32* %interactive, align 4
  %tobool40 = icmp ne i32 %29, 0
  br i1 %tobool40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %cond.end
  %call42 = call i32 @gimp_displays_flush()
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %cond.end
  br label %if.end.44

if.else:                                          ; preds = %lor.lhs.false.15
  store i32 0, i32* %status, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.else, %if.end.43
  br label %out

out:                                              ; preds = %if.end.44, %if.then
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %30 = load i32, i32* %status, align 4
  store i32 %30, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
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

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare i32 @gimp_drawable_is_indexed(i32) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_height() #3

; Function Attrs: nounwind uwtable
define internal void @autocrop(%struct._GimpDrawable* %drawable, i32 %image_id, i32 %show_progress, i32 %layer_only) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %image_id.addr = alloca i32, align 4
  %show_progress.addr = alloca i32, align 4
  %layer_only.addr = alloca i32, align 4
  %srcPR = alloca %struct._GimpPixelRgn, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %i = alloca i32, align 4
  %abort = alloca i32, align 4
  %buffer = alloca i8*, align 8
  %color = alloca [4 x i8], align 1
  %layer_id = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %image_id, i32* %image_id.addr, align 4
  store i32 %show_progress, i32* %show_progress.addr, align 4
  store i32 %layer_only, i32* %layer_only.addr, align 4
  %0 = bitcast [4 x i8]* %color to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 4, i32 1, i1 false)
  store i32 0, i32* %layer_id, align 4
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width1 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %1, i32 0, i32 1
  %2 = load i32, i32* %width1, align 4
  store i32 %2, i32* %width, align 4
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height2 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 2
  %4 = load i32, i32* %height2, align 4
  store i32 %4, i32* %height, align 4
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 3
  %6 = load i32, i32* %bpp, align 4
  store i32 %6, i32* @bytes, align 4
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 0
  %8 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_offsets(i32 %8, i32* %off_x, i32* %off_y)
  %9 = load i32, i32* %layer_only.addr, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %image_id.addr, align 4
  %call3 = call i32 @gimp_image_get_active_layer(i32 %10)
  store i32 %call3, i32* %layer_id, align 4
  %11 = load i32, i32* %layer_id, align 4
  %cmp = icmp eq i32 %11, -1
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %12)
  br label %if.end.218

if.end:                                           ; preds = %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = load i32, i32* %width, align 4
  %15 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %srcPR, %struct._GimpDrawable* %13, i32 0, i32 0, i32 %14, i32 %15, i32 0, i32 0)
  %16 = load i32, i32* %width, align 4
  %17 = load i32, i32* %height, align 4
  %cmp6 = icmp sgt i32 %16, %17
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  %18 = load i32, i32* %width, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.5
  %19 = load i32, i32* %height, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %18, %cond.true ], [ %19, %cond.false ]
  %20 = load i32, i32* @bytes, align 4
  %mul = mul nsw i32 %cond, %20
  %conv = sext i32 %mul to i64
  %call7 = call noalias i8* @g_malloc(i64 %conv)
  store i8* %call7, i8** %buffer, align 8
  %21 = load i32, i32* %width, align 4
  %22 = load i32, i32* %height, align 4
  %23 = load i32, i32* @bytes, align 4
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id8 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %24, i32 0, i32 0
  %25 = load i32, i32* %drawable_id8, align 4
  %call9 = call i32 @gimp_drawable_has_alpha(i32 %25)
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i32 0
  %call10 = call i32 @guess_bgcolor(%struct._GimpPixelRgn* %srcPR, i32 %21, i32 %22, i32 %23, i32 %call9, i8* %arraydecay)
  store i32 0, i32* %abort, align 4
  store i32 0, i32* %y1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.27, %cond.end
  %26 = load i32, i32* %y1, align 4
  %27 = load i32, i32* %height, align 4
  %cmp11 = icmp slt i32 %26, %27
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %28 = load i32, i32* %abort, align 4
  %tobool13 = icmp ne i32 %28, 0
  %lnot = xor i1 %tobool13, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %29 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %29, label %for.body, label %for.end.29

for.body:                                         ; preds = %land.end
  %30 = load i8*, i8** %buffer, align 8
  %31 = load i32, i32* %y1, align 4
  %32 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %srcPR, i8* %30, i32 0, i32 %31, i32 %32)
  store i32 0, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %for.body
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %width, align 4
  %cmp15 = icmp slt i32 %33, %34
  br i1 %cmp15, label %land.rhs.17, label %land.end.20

land.rhs.17:                                      ; preds = %for.cond.14
  %35 = load i32, i32* %abort, align 4
  %tobool18 = icmp ne i32 %35, 0
  %lnot19 = xor i1 %tobool18, true
  br label %land.end.20

land.end.20:                                      ; preds = %land.rhs.17, %for.cond.14
  %36 = phi i1 [ false, %for.cond.14 ], [ %lnot19, %land.rhs.17 ]
  br i1 %36, label %for.body.21, label %for.end

for.body.21:                                      ; preds = %land.end.20
  %arraydecay22 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i32 0
  %37 = load i8*, i8** %buffer, align 8
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* @bytes, align 4
  %mul23 = mul nsw i32 %38, %39
  %idx.ext = sext i32 %mul23 to i64
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 %idx.ext
  %40 = load i32, i32* @bytes, align 4
  %call24 = call i32 @colors_equal(i8* %arraydecay22, i8* %add.ptr, i32 %40)
  %tobool25 = icmp ne i32 %call24, 0
  %lnot26 = xor i1 %tobool25, true
  %lnot.ext = zext i1 %lnot26 to i32
  store i32 %lnot.ext, i32* %abort, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.21
  %41 = load i32, i32* %i, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.14

for.end:                                          ; preds = %land.end.20
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.end
  %42 = load i32, i32* %y1, align 4
  %inc28 = add nsw i32 %42, 1
  store i32 %inc28, i32* %y1, align 4
  br label %for.cond

for.end.29:                                       ; preds = %land.end
  %43 = load i32, i32* %y1, align 4
  %44 = load i32, i32* %height, align 4
  %cmp30 = icmp eq i32 %43, %44
  br i1 %cmp30, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %for.end.29
  %45 = load i32, i32* %abort, align 4
  %tobool32 = icmp ne i32 %45, 0
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %land.lhs.true
  store i32 0, i32* %x1, align 4
  %46 = load i32, i32* %width, align 4
  store i32 %46, i32* %x2, align 4
  store i32 0, i32* %y1, align 4
  %47 = load i32, i32* %height, align 4
  store i32 %47, i32* %y2, align 4
  br label %done

if.end.34:                                        ; preds = %land.lhs.true, %for.end.29
  %48 = load i32, i32* %show_progress.addr, align 4
  %tobool35 = icmp ne i32 %48, 0
  br i1 %tobool35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.end.34
  %call37 = call i32 @gimp_progress_update(double 2.500000e-01)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.end.34
  store i32 0, i32* %abort, align 4
  %49 = load i32, i32* %height, align 4
  %sub = sub nsw i32 %49, 1
  store i32 %sub, i32* %y2, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.68, %if.end.38
  %50 = load i32, i32* %y2, align 4
  %cmp40 = icmp sge i32 %50, 0
  br i1 %cmp40, label %land.rhs.42, label %land.end.46

land.rhs.42:                                      ; preds = %for.cond.39
  %51 = load i32, i32* %abort, align 4
  %tobool43 = icmp ne i32 %51, 0
  %lnot44 = xor i1 %tobool43, true
  br label %land.end.46

land.end.46:                                      ; preds = %land.rhs.42, %for.cond.39
  %52 = phi i1 [ false, %for.cond.39 ], [ %lnot44, %land.rhs.42 ]
  br i1 %52, label %for.body.47, label %for.end.69

for.body.47:                                      ; preds = %land.end.46
  %53 = load i8*, i8** %buffer, align 8
  %54 = load i32, i32* %y2, align 4
  %55 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %srcPR, i8* %53, i32 0, i32 %54, i32 %55)
  store i32 0, i32* %i, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.65, %for.body.47
  %56 = load i32, i32* %i, align 4
  %57 = load i32, i32* %width, align 4
  %cmp49 = icmp slt i32 %56, %57
  br i1 %cmp49, label %land.rhs.51, label %land.end.55

land.rhs.51:                                      ; preds = %for.cond.48
  %58 = load i32, i32* %abort, align 4
  %tobool52 = icmp ne i32 %58, 0
  %lnot53 = xor i1 %tobool52, true
  br label %land.end.55

land.end.55:                                      ; preds = %land.rhs.51, %for.cond.48
  %59 = phi i1 [ false, %for.cond.48 ], [ %lnot53, %land.rhs.51 ]
  br i1 %59, label %for.body.56, label %for.end.67

for.body.56:                                      ; preds = %land.end.55
  %arraydecay57 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i32 0
  %60 = load i8*, i8** %buffer, align 8
  %61 = load i32, i32* %i, align 4
  %62 = load i32, i32* @bytes, align 4
  %mul58 = mul nsw i32 %61, %62
  %idx.ext59 = sext i32 %mul58 to i64
  %add.ptr60 = getelementptr inbounds i8, i8* %60, i64 %idx.ext59
  %63 = load i32, i32* @bytes, align 4
  %call61 = call i32 @colors_equal(i8* %arraydecay57, i8* %add.ptr60, i32 %63)
  %tobool62 = icmp ne i32 %call61, 0
  %lnot63 = xor i1 %tobool62, true
  %lnot.ext64 = zext i1 %lnot63 to i32
  store i32 %lnot.ext64, i32* %abort, align 4
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.body.56
  %64 = load i32, i32* %i, align 4
  %inc66 = add nsw i32 %64, 1
  store i32 %inc66, i32* %i, align 4
  br label %for.cond.48

for.end.67:                                       ; preds = %land.end.55
  br label %for.inc.68

for.inc.68:                                       ; preds = %for.end.67
  %65 = load i32, i32* %y2, align 4
  %dec = add nsw i32 %65, -1
  store i32 %dec, i32* %y2, align 4
  br label %for.cond.39

for.end.69:                                       ; preds = %land.end.46
  %66 = load i32, i32* %y2, align 4
  %inc70 = add nsw i32 %66, 1
  store i32 %inc70, i32* %y2, align 4
  %67 = load i32, i32* %y1, align 4
  %cmp71 = icmp sgt i32 %67, 0
  br i1 %cmp71, label %if.then.73, label %if.end.75

if.then.73:                                       ; preds = %for.end.69
  %68 = load i32, i32* %y1, align 4
  %dec74 = add nsw i32 %68, -1
  store i32 %dec74, i32* %y1, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.73, %for.end.69
  %69 = load i32, i32* %y2, align 4
  %70 = load i32, i32* %height, align 4
  %cmp76 = icmp slt i32 %69, %70
  br i1 %cmp76, label %if.then.78, label %if.end.80

if.then.78:                                       ; preds = %if.end.75
  %71 = load i32, i32* %y2, align 4
  %inc79 = add nsw i32 %71, 1
  store i32 %inc79, i32* %y2, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.78, %if.end.75
  %72 = load i32, i32* %show_progress.addr, align 4
  %tobool81 = icmp ne i32 %72, 0
  br i1 %tobool81, label %if.then.82, label %if.end.84

if.then.82:                                       ; preds = %if.end.80
  %call83 = call i32 @gimp_progress_update(double 5.000000e-01)
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.82, %if.end.80
  store i32 0, i32* %abort, align 4
  store i32 0, i32* %x1, align 4
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.116, %if.end.84
  %73 = load i32, i32* %x1, align 4
  %74 = load i32, i32* %width, align 4
  %cmp86 = icmp slt i32 %73, %74
  br i1 %cmp86, label %land.rhs.88, label %land.end.92

land.rhs.88:                                      ; preds = %for.cond.85
  %75 = load i32, i32* %abort, align 4
  %tobool89 = icmp ne i32 %75, 0
  %lnot90 = xor i1 %tobool89, true
  br label %land.end.92

land.end.92:                                      ; preds = %land.rhs.88, %for.cond.85
  %76 = phi i1 [ false, %for.cond.85 ], [ %lnot90, %land.rhs.88 ]
  br i1 %76, label %for.body.93, label %for.end.118

for.body.93:                                      ; preds = %land.end.92
  %77 = load i8*, i8** %buffer, align 8
  %78 = load i32, i32* %x1, align 4
  %79 = load i32, i32* %y1, align 4
  %80 = load i32, i32* %y2, align 4
  %81 = load i32, i32* %y1, align 4
  %sub94 = sub nsw i32 %80, %81
  call void @gimp_pixel_rgn_get_col(%struct._GimpPixelRgn* %srcPR, i8* %77, i32 %78, i32 %79, i32 %sub94)
  store i32 0, i32* %i, align 4
  br label %for.cond.95

for.cond.95:                                      ; preds = %for.inc.113, %for.body.93
  %82 = load i32, i32* %i, align 4
  %83 = load i32, i32* %y2, align 4
  %84 = load i32, i32* %y1, align 4
  %sub96 = sub nsw i32 %83, %84
  %cmp97 = icmp slt i32 %82, %sub96
  br i1 %cmp97, label %land.rhs.99, label %land.end.103

land.rhs.99:                                      ; preds = %for.cond.95
  %85 = load i32, i32* %abort, align 4
  %tobool100 = icmp ne i32 %85, 0
  %lnot101 = xor i1 %tobool100, true
  br label %land.end.103

land.end.103:                                     ; preds = %land.rhs.99, %for.cond.95
  %86 = phi i1 [ false, %for.cond.95 ], [ %lnot101, %land.rhs.99 ]
  br i1 %86, label %for.body.104, label %for.end.115

for.body.104:                                     ; preds = %land.end.103
  %arraydecay105 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i32 0
  %87 = load i8*, i8** %buffer, align 8
  %88 = load i32, i32* %i, align 4
  %89 = load i32, i32* @bytes, align 4
  %mul106 = mul nsw i32 %88, %89
  %idx.ext107 = sext i32 %mul106 to i64
  %add.ptr108 = getelementptr inbounds i8, i8* %87, i64 %idx.ext107
  %90 = load i32, i32* @bytes, align 4
  %call109 = call i32 @colors_equal(i8* %arraydecay105, i8* %add.ptr108, i32 %90)
  %tobool110 = icmp ne i32 %call109, 0
  %lnot111 = xor i1 %tobool110, true
  %lnot.ext112 = zext i1 %lnot111 to i32
  store i32 %lnot.ext112, i32* %abort, align 4
  br label %for.inc.113

for.inc.113:                                      ; preds = %for.body.104
  %91 = load i32, i32* %i, align 4
  %inc114 = add nsw i32 %91, 1
  store i32 %inc114, i32* %i, align 4
  br label %for.cond.95

for.end.115:                                      ; preds = %land.end.103
  br label %for.inc.116

for.inc.116:                                      ; preds = %for.end.115
  %92 = load i32, i32* %x1, align 4
  %inc117 = add nsw i32 %92, 1
  store i32 %inc117, i32* %x1, align 4
  br label %for.cond.85

for.end.118:                                      ; preds = %land.end.92
  %93 = load i32, i32* %show_progress.addr, align 4
  %tobool119 = icmp ne i32 %93, 0
  br i1 %tobool119, label %if.then.120, label %if.end.122

if.then.120:                                      ; preds = %for.end.118
  %call121 = call i32 @gimp_progress_update(double 7.500000e-01)
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.120, %for.end.118
  store i32 0, i32* %abort, align 4
  %94 = load i32, i32* %width, align 4
  %sub123 = sub nsw i32 %94, 1
  store i32 %sub123, i32* %x2, align 4
  br label %for.cond.124

for.cond.124:                                     ; preds = %for.inc.155, %if.end.122
  %95 = load i32, i32* %x2, align 4
  %cmp125 = icmp sge i32 %95, 0
  br i1 %cmp125, label %land.rhs.127, label %land.end.131

land.rhs.127:                                     ; preds = %for.cond.124
  %96 = load i32, i32* %abort, align 4
  %tobool128 = icmp ne i32 %96, 0
  %lnot129 = xor i1 %tobool128, true
  br label %land.end.131

land.end.131:                                     ; preds = %land.rhs.127, %for.cond.124
  %97 = phi i1 [ false, %for.cond.124 ], [ %lnot129, %land.rhs.127 ]
  br i1 %97, label %for.body.132, label %for.end.157

for.body.132:                                     ; preds = %land.end.131
  %98 = load i8*, i8** %buffer, align 8
  %99 = load i32, i32* %x2, align 4
  %100 = load i32, i32* %y1, align 4
  %101 = load i32, i32* %y2, align 4
  %102 = load i32, i32* %y1, align 4
  %sub133 = sub nsw i32 %101, %102
  call void @gimp_pixel_rgn_get_col(%struct._GimpPixelRgn* %srcPR, i8* %98, i32 %99, i32 %100, i32 %sub133)
  store i32 0, i32* %i, align 4
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.152, %for.body.132
  %103 = load i32, i32* %i, align 4
  %104 = load i32, i32* %y2, align 4
  %105 = load i32, i32* %y1, align 4
  %sub135 = sub nsw i32 %104, %105
  %cmp136 = icmp slt i32 %103, %sub135
  br i1 %cmp136, label %land.rhs.138, label %land.end.142

land.rhs.138:                                     ; preds = %for.cond.134
  %106 = load i32, i32* %abort, align 4
  %tobool139 = icmp ne i32 %106, 0
  %lnot140 = xor i1 %tobool139, true
  br label %land.end.142

land.end.142:                                     ; preds = %land.rhs.138, %for.cond.134
  %107 = phi i1 [ false, %for.cond.134 ], [ %lnot140, %land.rhs.138 ]
  br i1 %107, label %for.body.143, label %for.end.154

for.body.143:                                     ; preds = %land.end.142
  %arraydecay144 = getelementptr inbounds [4 x i8], [4 x i8]* %color, i32 0, i32 0
  %108 = load i8*, i8** %buffer, align 8
  %109 = load i32, i32* %i, align 4
  %110 = load i32, i32* @bytes, align 4
  %mul145 = mul nsw i32 %109, %110
  %idx.ext146 = sext i32 %mul145 to i64
  %add.ptr147 = getelementptr inbounds i8, i8* %108, i64 %idx.ext146
  %111 = load i32, i32* @bytes, align 4
  %call148 = call i32 @colors_equal(i8* %arraydecay144, i8* %add.ptr147, i32 %111)
  %tobool149 = icmp ne i32 %call148, 0
  %lnot150 = xor i1 %tobool149, true
  %lnot.ext151 = zext i1 %lnot150 to i32
  store i32 %lnot.ext151, i32* %abort, align 4
  br label %for.inc.152

for.inc.152:                                      ; preds = %for.body.143
  %112 = load i32, i32* %i, align 4
  %inc153 = add nsw i32 %112, 1
  store i32 %inc153, i32* %i, align 4
  br label %for.cond.134

for.end.154:                                      ; preds = %land.end.142
  br label %for.inc.155

for.inc.155:                                      ; preds = %for.end.154
  %113 = load i32, i32* %x2, align 4
  %dec156 = add nsw i32 %113, -1
  store i32 %dec156, i32* %x2, align 4
  br label %for.cond.124

for.end.157:                                      ; preds = %land.end.131
  %114 = load i32, i32* %x2, align 4
  %inc158 = add nsw i32 %114, 1
  store i32 %inc158, i32* %x2, align 4
  %115 = load i32, i32* %x1, align 4
  %cmp159 = icmp sgt i32 %115, 0
  br i1 %cmp159, label %if.then.161, label %if.end.163

if.then.161:                                      ; preds = %for.end.157
  %116 = load i32, i32* %x1, align 4
  %dec162 = add nsw i32 %116, -1
  store i32 %dec162, i32* %x1, align 4
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.161, %for.end.157
  %117 = load i32, i32* %x2, align 4
  %118 = load i32, i32* %width, align 4
  %cmp164 = icmp slt i32 %117, %118
  br i1 %cmp164, label %if.then.166, label %if.end.168

if.then.166:                                      ; preds = %if.end.163
  %119 = load i32, i32* %x2, align 4
  %inc167 = add nsw i32 %119, 1
  store i32 %inc167, i32* %x2, align 4
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.166, %if.end.163
  br label %done

done:                                             ; preds = %if.end.168, %if.then.33
  %120 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %120)
  %121 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %121)
  %122 = load i32, i32* %layer_only.addr, align 4
  %tobool169 = icmp ne i32 %122, 0
  br i1 %tobool169, label %if.then.170, label %if.else

if.then.170:                                      ; preds = %done
  %123 = load i32, i32* %x2, align 4
  %124 = load i32, i32* %x1, align 4
  %sub171 = sub nsw i32 %123, %124
  %125 = load i32, i32* %width, align 4
  %cmp172 = icmp ne i32 %sub171, %125
  br i1 %cmp172, label %if.then.177, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.170
  %126 = load i32, i32* %y2, align 4
  %127 = load i32, i32* %y1, align 4
  %sub174 = sub nsw i32 %126, %127
  %128 = load i32, i32* %height, align 4
  %cmp175 = icmp ne i32 %sub174, %128
  br i1 %cmp175, label %if.then.177, label %if.end.183

if.then.177:                                      ; preds = %lor.lhs.false, %if.then.170
  %129 = load i32, i32* %layer_id, align 4
  %130 = load i32, i32* %x2, align 4
  %131 = load i32, i32* %x1, align 4
  %sub178 = sub nsw i32 %130, %131
  %132 = load i32, i32* %y2, align 4
  %133 = load i32, i32* %y1, align 4
  %sub179 = sub nsw i32 %132, %133
  %134 = load i32, i32* %x1, align 4
  %sub180 = sub nsw i32 0, %134
  %135 = load i32, i32* %y1, align 4
  %sub181 = sub nsw i32 0, %135
  %call182 = call i32 @gimp_layer_resize(i32 %129, i32 %sub178, i32 %sub179, i32 %sub180, i32 %sub181)
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.177, %lor.lhs.false
  br label %if.end.214

if.else:                                          ; preds = %done
  %136 = load i32, i32* %off_x, align 4
  %137 = load i32, i32* %x1, align 4
  %add = add nsw i32 %137, %136
  store i32 %add, i32* %x1, align 4
  %138 = load i32, i32* %off_x, align 4
  %139 = load i32, i32* %x2, align 4
  %add184 = add nsw i32 %139, %138
  store i32 %add184, i32* %x2, align 4
  %140 = load i32, i32* %off_y, align 4
  %141 = load i32, i32* %y1, align 4
  %add185 = add nsw i32 %141, %140
  store i32 %add185, i32* %y1, align 4
  %142 = load i32, i32* %off_y, align 4
  %143 = load i32, i32* %y2, align 4
  %add186 = add nsw i32 %143, %142
  store i32 %add186, i32* %y2, align 4
  %144 = load i32, i32* %image_id.addr, align 4
  %call187 = call i32 @gimp_image_undo_group_start(i32 %144)
  %145 = load i32, i32* %x1, align 4
  %cmp188 = icmp slt i32 %145, 0
  br i1 %cmp188, label %if.then.201, label %lor.lhs.false.190

lor.lhs.false.190:                                ; preds = %if.else
  %146 = load i32, i32* %y1, align 4
  %cmp191 = icmp slt i32 %146, 0
  br i1 %cmp191, label %if.then.201, label %lor.lhs.false.193

lor.lhs.false.193:                                ; preds = %lor.lhs.false.190
  %147 = load i32, i32* %x2, align 4
  %148 = load i32, i32* %image_id.addr, align 4
  %call194 = call i32 @gimp_image_width(i32 %148)
  %cmp195 = icmp sgt i32 %147, %call194
  br i1 %cmp195, label %if.then.201, label %lor.lhs.false.197

lor.lhs.false.197:                                ; preds = %lor.lhs.false.193
  %149 = load i32, i32* %y2, align 4
  %150 = load i32, i32* %image_id.addr, align 4
  %call198 = call i32 @gimp_image_height(i32 %150)
  %cmp199 = icmp sgt i32 %149, %call198
  br i1 %cmp199, label %if.then.201, label %if.end.209

if.then.201:                                      ; preds = %lor.lhs.false.197, %lor.lhs.false.193, %lor.lhs.false.190, %if.else
  %151 = load i32, i32* %image_id.addr, align 4
  %152 = load i32, i32* %x2, align 4
  %153 = load i32, i32* %x1, align 4
  %sub202 = sub nsw i32 %152, %153
  %154 = load i32, i32* %y2, align 4
  %155 = load i32, i32* %y1, align 4
  %sub203 = sub nsw i32 %154, %155
  %156 = load i32, i32* %x1, align 4
  %sub204 = sub nsw i32 0, %156
  %157 = load i32, i32* %y1, align 4
  %sub205 = sub nsw i32 0, %157
  %call206 = call i32 @gimp_image_resize(i32 %151, i32 %sub202, i32 %sub203, i32 %sub204, i32 %sub205)
  %158 = load i32, i32* %x1, align 4
  %159 = load i32, i32* %x2, align 4
  %sub207 = sub nsw i32 %159, %158
  store i32 %sub207, i32* %x2, align 4
  %160 = load i32, i32* %y1, align 4
  %161 = load i32, i32* %y2, align 4
  %sub208 = sub nsw i32 %161, %160
  store i32 %sub208, i32* %y2, align 4
  store i32 0, i32* %y1, align 4
  store i32 0, i32* %x1, align 4
  br label %if.end.209

if.end.209:                                       ; preds = %if.then.201, %lor.lhs.false.197
  %162 = load i32, i32* %image_id.addr, align 4
  %163 = load i32, i32* %x2, align 4
  %164 = load i32, i32* %x1, align 4
  %sub210 = sub nsw i32 %163, %164
  %165 = load i32, i32* %y2, align 4
  %166 = load i32, i32* %y1, align 4
  %sub211 = sub nsw i32 %165, %166
  %167 = load i32, i32* %x1, align 4
  %168 = load i32, i32* %y1, align 4
  %call212 = call i32 @gimp_image_crop(i32 %162, i32 %sub210, i32 %sub211, i32 %167, i32 %168)
  %169 = load i32, i32* %image_id.addr, align 4
  %call213 = call i32 @gimp_image_undo_group_end(i32 %169)
  br label %if.end.214

if.end.214:                                       ; preds = %if.end.209, %if.end.183
  %170 = load i32, i32* %show_progress.addr, align 4
  %tobool215 = icmp ne i32 %170, 0
  br i1 %tobool215, label %if.then.216, label %if.end.218

if.then.216:                                      ; preds = %if.end.214
  %call217 = call i32 @gimp_progress_update(double 1.000000e+00)
  br label %if.end.218

if.end.218:                                       ; preds = %if.then.4, %if.then.216, %if.end.214
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i32 @gimp_displays_flush() #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare i32 @gimp_drawable_offsets(i32, i32*, i32*) #1

declare i32 @gimp_image_get_active_layer(i32) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare noalias i8* @g_malloc(i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @guess_bgcolor(%struct._GimpPixelRgn* %pr, i32 %width, i32 %height, i32 %bytes, i32 %has_alpha, i8* %color) #0 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca %struct._GimpPixelRgn*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %has_alpha.addr = alloca i32, align 4
  %color.addr = alloca i8*, align 8
  %tl = alloca [4 x i8], align 1
  %tr = alloca [4 x i8], align 1
  %bl = alloca [4 x i8], align 1
  %br = alloca [4 x i8], align 1
  %alpha = alloca i32, align 4
  store %struct._GimpPixelRgn* %pr, %struct._GimpPixelRgn** %pr.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %has_alpha, i32* %has_alpha.addr, align 4
  store i8* %color, i8** %color.addr, align 8
  %0 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %tl, i32 0, i32 0
  call void @gimp_pixel_rgn_get_pixel(%struct._GimpPixelRgn* %0, i8* %arraydecay, i32 0, i32 0)
  %1 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %arraydecay1 = getelementptr inbounds [4 x i8], [4 x i8]* %tr, i32 0, i32 0
  %2 = load i32, i32* %width.addr, align 4
  %sub = sub nsw i32 %2, 1
  call void @gimp_pixel_rgn_get_pixel(%struct._GimpPixelRgn* %1, i8* %arraydecay1, i32 %sub, i32 0)
  %3 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %arraydecay2 = getelementptr inbounds [4 x i8], [4 x i8]* %bl, i32 0, i32 0
  %4 = load i32, i32* %height.addr, align 4
  %sub3 = sub nsw i32 %4, 1
  call void @gimp_pixel_rgn_get_pixel(%struct._GimpPixelRgn* %3, i8* %arraydecay2, i32 0, i32 %sub3)
  %5 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %arraydecay4 = getelementptr inbounds [4 x i8], [4 x i8]* %br, i32 0, i32 0
  %6 = load i32, i32* %width.addr, align 4
  %sub5 = sub nsw i32 %6, 1
  %7 = load i32, i32* %height.addr, align 4
  %sub6 = sub nsw i32 %7, 1
  call void @gimp_pixel_rgn_get_pixel(%struct._GimpPixelRgn* %5, i8* %arraydecay4, i32 %sub5, i32 %sub6)
  %8 = load i32, i32* %has_alpha.addr, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end.50

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %bytes.addr, align 4
  %sub7 = sub nsw i32 %9, 1
  store i32 %sub7, i32* %alpha, align 4
  %10 = load i32, i32* %alpha, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %tl, i32 0, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %11 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then
  %12 = load i32, i32* %alpha, align 4
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds [4 x i8], [4 x i8]* %tr, i32 0, i64 %idxprom9
  %13 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %13 to i32
  %cmp12 = icmp eq i32 %conv11, 0
  br i1 %cmp12, label %if.then.49, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then
  %14 = load i32, i32* %alpha, align 4
  %idxprom14 = sext i32 %14 to i64
  %arrayidx15 = getelementptr inbounds [4 x i8], [4 x i8]* %tl, i32 0, i64 %idxprom14
  %15 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %15 to i32
  %cmp17 = icmp eq i32 %conv16, 0
  br i1 %cmp17, label %land.lhs.true.19, label %lor.lhs.false.25

land.lhs.true.19:                                 ; preds = %lor.lhs.false
  %16 = load i32, i32* %alpha, align 4
  %idxprom20 = sext i32 %16 to i64
  %arrayidx21 = getelementptr inbounds [4 x i8], [4 x i8]* %bl, i32 0, i64 %idxprom20
  %17 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %17 to i32
  %cmp23 = icmp eq i32 %conv22, 0
  br i1 %cmp23, label %if.then.49, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %land.lhs.true.19, %lor.lhs.false
  %18 = load i32, i32* %alpha, align 4
  %idxprom26 = sext i32 %18 to i64
  %arrayidx27 = getelementptr inbounds [4 x i8], [4 x i8]* %tr, i32 0, i64 %idxprom26
  %19 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %19 to i32
  %cmp29 = icmp eq i32 %conv28, 0
  br i1 %cmp29, label %land.lhs.true.31, label %lor.lhs.false.37

land.lhs.true.31:                                 ; preds = %lor.lhs.false.25
  %20 = load i32, i32* %alpha, align 4
  %idxprom32 = sext i32 %20 to i64
  %arrayidx33 = getelementptr inbounds [4 x i8], [4 x i8]* %br, i32 0, i64 %idxprom32
  %21 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %21 to i32
  %cmp35 = icmp eq i32 %conv34, 0
  br i1 %cmp35, label %if.then.49, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %land.lhs.true.31, %lor.lhs.false.25
  %22 = load i32, i32* %alpha, align 4
  %idxprom38 = sext i32 %22 to i64
  %arrayidx39 = getelementptr inbounds [4 x i8], [4 x i8]* %bl, i32 0, i64 %idxprom38
  %23 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %23 to i32
  %cmp41 = icmp eq i32 %conv40, 0
  br i1 %cmp41, label %land.lhs.true.43, label %if.end

land.lhs.true.43:                                 ; preds = %lor.lhs.false.37
  %24 = load i32, i32* %alpha, align 4
  %idxprom44 = sext i32 %24 to i64
  %arrayidx45 = getelementptr inbounds [4 x i8], [4 x i8]* %br, i32 0, i64 %idxprom44
  %25 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %25 to i32
  %cmp47 = icmp eq i32 %conv46, 0
  br i1 %cmp47, label %if.then.49, label %if.end

if.then.49:                                       ; preds = %land.lhs.true.43, %land.lhs.true.31, %land.lhs.true.19, %land.lhs.true
  store i32 2, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.43, %lor.lhs.false.37
  br label %if.end.50

if.end.50:                                        ; preds = %if.end, %entry
  %arraydecay51 = getelementptr inbounds [4 x i8], [4 x i8]* %tr, i32 0, i32 0
  %arraydecay52 = getelementptr inbounds [4 x i8], [4 x i8]* %bl, i32 0, i32 0
  %26 = load i32, i32* %bytes.addr, align 4
  %call = call i32 @colors_equal(i8* %arraydecay51, i8* %arraydecay52, i32 %26)
  %tobool53 = icmp ne i32 %call, 0
  br i1 %tobool53, label %land.lhs.true.54, label %if.else

land.lhs.true.54:                                 ; preds = %if.end.50
  %arraydecay55 = getelementptr inbounds [4 x i8], [4 x i8]* %tr, i32 0, i32 0
  %arraydecay56 = getelementptr inbounds [4 x i8], [4 x i8]* %br, i32 0, i32 0
  %27 = load i32, i32* %bytes.addr, align 4
  %call57 = call i32 @colors_equal(i8* %arraydecay55, i8* %arraydecay56, i32 %27)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.59, label %if.else

if.then.59:                                       ; preds = %land.lhs.true.54
  %28 = load i8*, i8** %color.addr, align 8
  %29 = bitcast [4 x i8]* %tr to i8*
  %30 = load i32, i32* %bytes.addr, align 4
  %conv60 = sext i32 %30 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 %conv60, i32 1, i1 false)
  store i32 3, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.54, %if.end.50
  %arraydecay61 = getelementptr inbounds [4 x i8], [4 x i8]* %tl, i32 0, i32 0
  %arraydecay62 = getelementptr inbounds [4 x i8], [4 x i8]* %bl, i32 0, i32 0
  %31 = load i32, i32* %bytes.addr, align 4
  %call63 = call i32 @colors_equal(i8* %arraydecay61, i8* %arraydecay62, i32 %31)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %land.lhs.true.65, label %if.else.72

land.lhs.true.65:                                 ; preds = %if.else
  %arraydecay66 = getelementptr inbounds [4 x i8], [4 x i8]* %tl, i32 0, i32 0
  %arraydecay67 = getelementptr inbounds [4 x i8], [4 x i8]* %br, i32 0, i32 0
  %32 = load i32, i32* %bytes.addr, align 4
  %call68 = call i32 @colors_equal(i8* %arraydecay66, i8* %arraydecay67, i32 %32)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.then.70, label %if.else.72

if.then.70:                                       ; preds = %land.lhs.true.65
  %33 = load i8*, i8** %color.addr, align 8
  %34 = bitcast [4 x i8]* %tl to i8*
  %35 = load i32, i32* %bytes.addr, align 4
  %conv71 = sext i32 %35 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 %conv71, i32 1, i1 false)
  store i32 3, i32* %retval
  br label %return

if.else.72:                                       ; preds = %land.lhs.true.65, %if.else
  %arraydecay73 = getelementptr inbounds [4 x i8], [4 x i8]* %tl, i32 0, i32 0
  %arraydecay74 = getelementptr inbounds [4 x i8], [4 x i8]* %tr, i32 0, i32 0
  %36 = load i32, i32* %bytes.addr, align 4
  %call75 = call i32 @colors_equal(i8* %arraydecay73, i8* %arraydecay74, i32 %36)
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %land.lhs.true.77, label %if.else.84

land.lhs.true.77:                                 ; preds = %if.else.72
  %arraydecay78 = getelementptr inbounds [4 x i8], [4 x i8]* %tl, i32 0, i32 0
  %arraydecay79 = getelementptr inbounds [4 x i8], [4 x i8]* %br, i32 0, i32 0
  %37 = load i32, i32* %bytes.addr, align 4
  %call80 = call i32 @colors_equal(i8* %arraydecay78, i8* %arraydecay79, i32 %37)
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %if.then.82, label %if.else.84

if.then.82:                                       ; preds = %land.lhs.true.77
  %38 = load i8*, i8** %color.addr, align 8
  %39 = bitcast [4 x i8]* %tl to i8*
  %40 = load i32, i32* %bytes.addr, align 4
  %conv83 = sext i32 %40 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 %conv83, i32 1, i1 false)
  store i32 3, i32* %retval
  br label %return

if.else.84:                                       ; preds = %land.lhs.true.77, %if.else.72
  %arraydecay85 = getelementptr inbounds [4 x i8], [4 x i8]* %tl, i32 0, i32 0
  %arraydecay86 = getelementptr inbounds [4 x i8], [4 x i8]* %tr, i32 0, i32 0
  %41 = load i32, i32* %bytes.addr, align 4
  %call87 = call i32 @colors_equal(i8* %arraydecay85, i8* %arraydecay86, i32 %41)
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %land.lhs.true.89, label %if.else.96

land.lhs.true.89:                                 ; preds = %if.else.84
  %arraydecay90 = getelementptr inbounds [4 x i8], [4 x i8]* %tl, i32 0, i32 0
  %arraydecay91 = getelementptr inbounds [4 x i8], [4 x i8]* %bl, i32 0, i32 0
  %42 = load i32, i32* %bytes.addr, align 4
  %call92 = call i32 @colors_equal(i8* %arraydecay90, i8* %arraydecay91, i32 %42)
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.then.94, label %if.else.96

if.then.94:                                       ; preds = %land.lhs.true.89
  %43 = load i8*, i8** %color.addr, align 8
  %44 = bitcast [4 x i8]* %tl to i8*
  %45 = load i32, i32* %bytes.addr, align 4
  %conv95 = sext i32 %45 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 %conv95, i32 1, i1 false)
  store i32 3, i32* %retval
  br label %return

if.else.96:                                       ; preds = %land.lhs.true.89, %if.else.84
  %arraydecay97 = getelementptr inbounds [4 x i8], [4 x i8]* %tl, i32 0, i32 0
  %arraydecay98 = getelementptr inbounds [4 x i8], [4 x i8]* %tr, i32 0, i32 0
  %46 = load i32, i32* %bytes.addr, align 4
  %call99 = call i32 @colors_equal(i8* %arraydecay97, i8* %arraydecay98, i32 %46)
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %if.then.111, label %lor.lhs.false.101

lor.lhs.false.101:                                ; preds = %if.else.96
  %arraydecay102 = getelementptr inbounds [4 x i8], [4 x i8]* %tl, i32 0, i32 0
  %arraydecay103 = getelementptr inbounds [4 x i8], [4 x i8]* %bl, i32 0, i32 0
  %47 = load i32, i32* %bytes.addr, align 4
  %call104 = call i32 @colors_equal(i8* %arraydecay102, i8* %arraydecay103, i32 %47)
  %tobool105 = icmp ne i32 %call104, 0
  br i1 %tobool105, label %if.then.111, label %lor.lhs.false.106

lor.lhs.false.106:                                ; preds = %lor.lhs.false.101
  %arraydecay107 = getelementptr inbounds [4 x i8], [4 x i8]* %tl, i32 0, i32 0
  %arraydecay108 = getelementptr inbounds [4 x i8], [4 x i8]* %br, i32 0, i32 0
  %48 = load i32, i32* %bytes.addr, align 4
  %call109 = call i32 @colors_equal(i8* %arraydecay107, i8* %arraydecay108, i32 %48)
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.then.111, label %if.else.113

if.then.111:                                      ; preds = %lor.lhs.false.106, %lor.lhs.false.101, %if.else.96
  %49 = load i8*, i8** %color.addr, align 8
  %50 = bitcast [4 x i8]* %tl to i8*
  %51 = load i32, i32* %bytes.addr, align 4
  %conv112 = sext i32 %51 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 %conv112, i32 1, i1 false)
  store i32 2, i32* %retval
  br label %return

if.else.113:                                      ; preds = %lor.lhs.false.106
  %arraydecay114 = getelementptr inbounds [4 x i8], [4 x i8]* %tr, i32 0, i32 0
  %arraydecay115 = getelementptr inbounds [4 x i8], [4 x i8]* %bl, i32 0, i32 0
  %52 = load i32, i32* %bytes.addr, align 4
  %call116 = call i32 @colors_equal(i8* %arraydecay114, i8* %arraydecay115, i32 %52)
  %tobool117 = icmp ne i32 %call116, 0
  br i1 %tobool117, label %if.then.123, label %lor.lhs.false.118

lor.lhs.false.118:                                ; preds = %if.else.113
  %arraydecay119 = getelementptr inbounds [4 x i8], [4 x i8]* %tr, i32 0, i32 0
  %arraydecay120 = getelementptr inbounds [4 x i8], [4 x i8]* %bl, i32 0, i32 0
  %53 = load i32, i32* %bytes.addr, align 4
  %call121 = call i32 @colors_equal(i8* %arraydecay119, i8* %arraydecay120, i32 %53)
  %tobool122 = icmp ne i32 %call121, 0
  br i1 %tobool122, label %if.then.123, label %if.else.125

if.then.123:                                      ; preds = %lor.lhs.false.118, %if.else.113
  %54 = load i8*, i8** %color.addr, align 8
  %55 = bitcast [4 x i8]* %tr to i8*
  %56 = load i32, i32* %bytes.addr, align 4
  %conv124 = sext i32 %56 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 %conv124, i32 1, i1 false)
  store i32 2, i32* %retval
  br label %return

if.else.125:                                      ; preds = %lor.lhs.false.118
  %arraydecay126 = getelementptr inbounds [4 x i8], [4 x i8]* %br, i32 0, i32 0
  %arraydecay127 = getelementptr inbounds [4 x i8], [4 x i8]* %bl, i32 0, i32 0
  %57 = load i32, i32* %bytes.addr, align 4
  %call128 = call i32 @colors_equal(i8* %arraydecay126, i8* %arraydecay127, i32 %57)
  %tobool129 = icmp ne i32 %call128, 0
  br i1 %tobool129, label %if.then.130, label %if.else.132

if.then.130:                                      ; preds = %if.else.125
  %58 = load i8*, i8** %color.addr, align 8
  %59 = bitcast [4 x i8]* %br to i8*
  %60 = load i32, i32* %bytes.addr, align 4
  %conv131 = sext i32 %60 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 %conv131, i32 1, i1 false)
  store i32 2, i32* %retval
  br label %return

if.else.132:                                      ; preds = %if.else.125
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else.132
  %61 = load i32, i32* %bytes.addr, align 4
  %dec = add nsw i32 %61, -1
  store i32 %dec, i32* %bytes.addr, align 4
  %tobool133 = icmp ne i32 %61, 0
  br i1 %tobool133, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %62 = load i32, i32* %bytes.addr, align 4
  %idxprom134 = sext i32 %62 to i64
  %arrayidx135 = getelementptr inbounds [4 x i8], [4 x i8]* %tl, i32 0, i64 %idxprom134
  %63 = load i8, i8* %arrayidx135, align 1
  %conv136 = zext i8 %63 to i32
  %64 = load i32, i32* %bytes.addr, align 4
  %idxprom137 = sext i32 %64 to i64
  %arrayidx138 = getelementptr inbounds [4 x i8], [4 x i8]* %tr, i32 0, i64 %idxprom137
  %65 = load i8, i8* %arrayidx138, align 1
  %conv139 = zext i8 %65 to i32
  %add = add nsw i32 %conv136, %conv139
  %66 = load i32, i32* %bytes.addr, align 4
  %idxprom140 = sext i32 %66 to i64
  %arrayidx141 = getelementptr inbounds [4 x i8], [4 x i8]* %bl, i32 0, i64 %idxprom140
  %67 = load i8, i8* %arrayidx141, align 1
  %conv142 = zext i8 %67 to i32
  %add143 = add nsw i32 %add, %conv142
  %68 = load i32, i32* %bytes.addr, align 4
  %idxprom144 = sext i32 %68 to i64
  %arrayidx145 = getelementptr inbounds [4 x i8], [4 x i8]* %br, i32 0, i64 %idxprom144
  %69 = load i8, i8* %arrayidx145, align 1
  %conv146 = zext i8 %69 to i32
  %add147 = add nsw i32 %add143, %conv146
  %div = sdiv i32 %add147, 4
  %conv148 = trunc i32 %div to i8
  %70 = load i32, i32* %bytes.addr, align 4
  %idxprom149 = sext i32 %70 to i64
  %71 = load i8*, i8** %color.addr, align 8
  %arrayidx150 = getelementptr inbounds i8, i8* %71, i64 %idxprom149
  store i8 %conv148, i8* %arrayidx150, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.130, %if.then.123, %if.then.111, %if.then.94, %if.then.82, %if.then.70, %if.then.59, %if.then.49
  %72 = load i32, i32* %retval
  ret i32 %72
}

declare i32 @gimp_drawable_has_alpha(i32) #1

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @colors_equal(i8* %col1, i8* %col2, i32 %bytes) #0 {
entry:
  %retval = alloca i32, align 4
  %col1.addr = alloca i8*, align 8
  %col2.addr = alloca i8*, align 8
  %bytes.addr = alloca i32, align 4
  %equal = alloca i32, align 4
  %b = alloca i32, align 4
  store i8* %col1, i8** %col1.addr, align 8
  store i8* %col2, i8** %col2.addr, align 8
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 1, i32* %equal, align 4
  %0 = load i32, i32* %bytes.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %bytes.addr, align 4
  %cmp1 = icmp eq i32 %1, 4
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %2 = load i32, i32* %bytes.addr, align 4
  %sub = sub nsw i32 %2, 1
  %idxprom = sext i32 %sub to i64
  %3 = load i8*, i8** %col1.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %5 = load i32, i32* %bytes.addr, align 4
  %sub5 = sub nsw i32 %5, 1
  %idxprom6 = sext i32 %sub5 to i64
  %6 = load i8*, i8** %col2.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %6, i64 %idxprom6
  %7 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %7 to i32
  %cmp9 = icmp eq i32 %conv8, 0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.4
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.4, %land.lhs.true, %lor.lhs.false
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %b, align 4
  %9 = load i32, i32* %bytes.addr, align 4
  %cmp11 = icmp slt i32 %8, %9
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %b, align 4
  %idxprom13 = sext i32 %10 to i64
  %11 = load i8*, i8** %col1.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %11, i64 %idxprom13
  %12 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %12 to i32
  %13 = load i32, i32* %b, align 4
  %idxprom16 = sext i32 %13 to i64
  %14 = load i8*, i8** %col2.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %14, i64 %idxprom16
  %15 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %15 to i32
  %cmp19 = icmp ne i32 %conv15, %conv18
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %for.body
  store i32 0, i32* %equal, align 4
  br label %for.end

if.end.22:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %16 = load i32, i32* %b, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.21, %for.cond
  %17 = load i32, i32* %equal, align 4
  store i32 %17, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare i32 @gimp_progress_update(double) #1

declare void @gimp_pixel_rgn_get_col(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare void @g_free(i8*) #1

declare i32 @gimp_layer_resize(i32, i32, i32, i32, i32) #1

declare i32 @gimp_image_undo_group_start(i32) #1

declare i32 @gimp_image_width(i32) #1

declare i32 @gimp_image_height(i32) #1

declare i32 @gimp_image_resize(i32, i32, i32, i32, i32) #1

declare i32 @gimp_image_crop(i32, i32, i32, i32, i32) #1

declare i32 @gimp_image_undo_group_end(i32) #1

declare void @gimp_pixel_rgn_get_pixel(%struct._GimpPixelRgn*, i8*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

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
