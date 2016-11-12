; ModuleID = './plug-ins/gimpressionist/gimp.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct.ppm = type { i32, i32, i8* }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GRand = type opaque
%struct.gimpressionist_vals_t = type { i32, double, double, i32, double, double, double, double, i32, double, double, double, i32, i32, [200 x i8], [200 x i8], %struct._GimpRGB, i32, i32, [50 x %struct.vector], i32, i32, double, double, double, i32, i32, i32, i32, i32, double, i32, double, double, i32, double, [50 x %struct.smvector], i32, double, i32, i32, i32, i32, double }
%struct.vector = type { double, double, double, double, double, double, i32 }
%struct.smvector = type { double, double, double, double }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@infile = internal global %struct.ppm zeroinitializer, align 8
@inalpha = internal global %struct.ppm zeroinitializer, align 8
@drawable = internal global %struct._GimpDrawable* null, align 8
@query.args = internal constant [4 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"The run mode { RUN-INTERACTIVE (0) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"preset\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Preset Name\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"plug-in-gimpressionist\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Performs various artistic operations\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"Performs various artistic operations on an image\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Vidar Madsen <vidar@prosalg.no>\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"Vidar Madsen\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"v1.0, November 2003\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"_GIMPressionist...\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"<Image>/Filters/Artistic\00", align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@img_has_alpha = external global i32, align 4
@random_generator = external global %struct._GRand*, align 8
@.str.20 = private unnamed_addr constant [59 x i8] c"The selection does not intersect the active layer or mask.\00", align 1
@pcvals = external global %struct.gimpressionist_vals_t, align 8
@.str.21 = private unnamed_addr constant [9 x i8] c"Painting\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i32 1, i32 4, i32 0, %struct._GimpParamDef* getelementptr inbounds ([4 x %struct._GimpParamDef], [4 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0))
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
  %with_specified_preset = alloca i32, align 4
  %preset_name = alloca i8*, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i8* null, i8** %preset_name, align 8
  store i32 3, i32* %status, align 4
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %run_mode, align 4
  store i32 0, i32* %with_specified_preset, align 4
  %2 = load i32, i32* %nparams.addr, align 4
  %cmp = icmp sgt i32 %2, 3
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %3, i64 3
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data2 to i8**
  %4 = load i8*, i8** %d_string, align 8
  store i8* %4, i8** %preset_name, align 8
  %5 = load i8*, i8** %preset_name, align 8
  %call = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i32 0, i32 0)) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 1, i32* %with_specified_preset, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  store i32 21, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %6 = load i32, i32* %status, align 4
  store i32 %6, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %7 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %7, align 4
  %8 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %8, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.4
  %call5 = call i8* @gimp_locale_directory() #7
  %call6 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i8* %call5) #2
  %call7 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0)) #2
  %call8 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0)) #2
  br label %do.end

do.end:                                           ; preds = %do.body
  %9 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %9, i64 2
  %data10 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx9, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data10 to i32*
  %10 = load i32, i32* %d_drawable, align 4
  %call11 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %10)
  store %struct._GimpDrawable* %call11, %struct._GimpDrawable** @drawable, align 8
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 0
  %12 = load i32, i32* %drawable_id, align 4
  %call12 = call i32 @gimp_drawable_has_alpha(i32 %12)
  store i32 %call12, i32* @img_has_alpha, align 4
  %call13 = call %struct._GRand* @g_rand_new()
  store %struct._GRand* %call13, %struct._GRand** @random_generator, align 8
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id14 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 0
  %14 = load i32, i32* %drawable_id14, align 4
  %call15 = call i32 @gimp_drawable_mask_intersect(i32 %14, i32* %x1, i32* %y1, i32* %width, i32* %height)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.19, label %if.then.17

if.then.17:                                       ; preds = %do.end
  store i32 0, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %15 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %15, align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.20, i32 0, i32 0)) #2
  store i8* %call18, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %16)
  br label %return

if.end.19:                                        ; preds = %do.end
  %17 = load i32, i32* %run_mode, align 4
  switch i32 %17, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end.19, %if.end.19, %if.end.19
  call void @gimpressionist_get_data()
  %18 = load i32, i32* %run_mode, align 4
  %cmp20 = icmp eq i32 %18, 0
  br i1 %cmp20, label %if.then.21, label %if.end.26

if.then.21:                                       ; preds = %sw.bb
  %call22 = call i32 @create_gimpressionist()
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.then.21
  br label %return

if.end.25:                                        ; preds = %if.then.21
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %sw.bb
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.19
  store i32 0, i32* %status, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.26
  %19 = load i32, i32* %status, align 4
  %cmp27 = icmp eq i32 %19, 3
  br i1 %cmp27, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.epilog
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id28 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %20, i32 0, i32 0
  %21 = load i32, i32* %drawable_id28, align 4
  %call29 = call i32 @gimp_drawable_is_rgb(i32 %21)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id31 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %22, i32 0, i32 0
  %23 = load i32, i32* %drawable_id31, align 4
  %call32 = call i32 @gimp_drawable_is_gray(i32 %23)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %24 = load i32, i32* %with_specified_preset, align 4
  %tobool35 = icmp ne i32 %24, 0
  br i1 %tobool35, label %if.then.36, label %if.end.41

if.then.36:                                       ; preds = %if.then.34
  %25 = load i8*, i8** %preset_name, align 8
  %call37 = call i32 @select_preset(i8* %25)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.then.36
  store i32 0, i32* %status, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.then.36
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.34
  %26 = load i32, i32* %run_mode, align 4
  %cmp42 = icmp eq i32 %26, 1
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.41
  store i32 1, i32* getelementptr inbounds (%struct.gimpressionist_vals_t, %struct.gimpressionist_vals_t* @pcvals, i32 0, i32 13), align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %if.end.41
  %27 = load i32, i32* %status, align 4
  %cmp45 = icmp eq i32 %27, 3
  br i1 %cmp45, label %if.then.46, label %if.end.52

if.then.46:                                       ; preds = %if.end.44
  call void @gimpressionist_main()
  %call47 = call i32 @gimp_displays_flush()
  %28 = load i32, i32* %run_mode, align 4
  %cmp48 = icmp eq i32 %28, 0
  br i1 %cmp48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.then.46
  %call50 = call i32 @gimp_procedural_db_set_data(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i8* bitcast (%struct.gimpressionist_vals_t* @pcvals to i8*), i32 5088)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.then.46
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.end.44
  br label %if.end.56

if.else:                                          ; preds = %lor.lhs.false, %sw.epilog
  %29 = load i32, i32* %status, align 4
  %cmp53 = icmp eq i32 %29, 3
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.else
  store i32 0, i32* %status, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.else
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end.52
  %30 = load %struct._GRand*, %struct._GRand** @random_generator, align 8
  call void @g_rand_free(%struct._GRand* %30)
  call void @free_parsepath_cache()
  call void @brush_reload(i8* null, %struct.ppm* null)
  call void @preview_free_resources()
  call void @brush_free()
  call void @preset_free()
  call void @orientation_map_free_resources()
  call void @size_map_free_resources()
  %31 = load i32, i32* %status, align 4
  store i32 %31, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %32 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %32)
  br label %return

return:                                           ; preds = %if.end.56, %if.then.24, %if.then.17
  ret void
}

; Function Attrs: nounwind uwtable
define void @infile_copy_to_ppm(%struct.ppm* %p) #0 {
entry:
  %p.addr = alloca %struct.ppm*, align 8
  store %struct.ppm* %p, %struct.ppm** %p.addr, align 8
  %0 = load i8*, i8** getelementptr inbounds (%struct.ppm, %struct.ppm* @infile, i32 0, i32 2), align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @grabarea()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  call void @ppm_copy(%struct.ppm* @infile, %struct.ppm* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @grabarea() #0 {
entry:
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %p = alloca %struct.ppm*, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %pr = alloca i8*, align 8
  %src = alloca i8*, align 8
  %s = alloca i8*, align 8
  %tmprow = alloca i8*, align 8
  %k = alloca i32, align 4
  %s44 = alloca i8*, align 8
  %tmprow45 = alloca i8*, align 8
  %tmparow = alloca i8*, align 8
  %k59 = alloca i32, align 4
  %s125 = alloca i8*, align 8
  %tmprow126 = alloca i8*, align 8
  %tmparow131 = alloca i8*, align 8
  %k142 = alloca i32, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_intersect(i32 %1, i32* %x1, i32* %y1, i32* %width, i32* %height)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %for.end.176

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %width, align 4
  %3 = load i32, i32* %height, align 4
  call void @ppm_new(%struct.ppm* @infile, i32 %2, i32 %3)
  store %struct.ppm* @infile, %struct.ppm** %p, align 8
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id1 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 0
  %5 = load i32, i32* %drawable_id1, align 4
  %call2 = call i32 @gimp_drawable_has_alpha(i32 %5)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %6 = load i32, i32* %width, align 4
  %7 = load i32, i32* %height, align 4
  call void @ppm_new(%struct.ppm* @inalpha, i32 %6, i32 %7)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %8 = load %struct.ppm*, %struct.ppm** %p, align 8
  %width6 = getelementptr inbounds %struct.ppm, %struct.ppm* %8, i32 0, i32 0
  %9 = load i32, i32* %width6, align 4
  %mul = mul nsw i32 %9, 3
  store i32 %mul, i32* %rowstride, align 4
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %11 = load i32, i32* %x1, align 4
  %12 = load i32, i32* %y1, align 4
  %13 = load i32, i32* %width, align 4
  %14 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 0, i32 0)
  %call7 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 1, %struct._GimpPixelRgn* %src_rgn)
  store i8* %call7, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.174, %if.end.5
  %15 = load i8*, i8** %pr, align 8
  %cmp = icmp ne i8* %15, null
  br i1 %cmp, label %for.body, label %for.end.176

for.body:                                         ; preds = %for.cond
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 0
  %16 = load i8*, i8** %data, align 8
  store i8* %16, i8** %src, align 8
  %bpp = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 2
  %17 = load i32, i32* %bpp, align 4
  switch i32 %17, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.37
    i32 3, label %sw.bb.90
    i32 4, label %sw.bb.117
  ]

sw.bb:                                            ; preds = %for.body
  store i32 0, i32* %y, align 4
  %y8 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 5
  %18 = load i32, i32* %y8, align 4
  %19 = load i32, i32* %y1, align 4
  %sub = sub nsw i32 %18, %19
  store i32 %sub, i32* %row, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.33, %sw.bb
  %20 = load i32, i32* %y, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 7
  %21 = load i32, i32* %h, align 4
  %cmp10 = icmp slt i32 %20, %21
  br i1 %cmp10, label %for.body.11, label %for.end.36

for.body.11:                                      ; preds = %for.cond.9
  %22 = load i8*, i8** %src, align 8
  store i8* %22, i8** %s, align 8
  %23 = load %struct.ppm*, %struct.ppm** %p, align 8
  %col12 = getelementptr inbounds %struct.ppm, %struct.ppm* %23, i32 0, i32 2
  %24 = load i8*, i8** %col12, align 8
  %25 = load i32, i32* %row, align 4
  %26 = load i32, i32* %rowstride, align 4
  %mul13 = mul nsw i32 %25, %26
  %idx.ext = sext i32 %mul13 to i64
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 %idx.ext
  store i8* %add.ptr, i8** %tmprow, align 8
  store i32 0, i32* %x, align 4
  %x14 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 4
  %27 = load i32, i32* %x14, align 4
  %28 = load i32, i32* %x1, align 4
  %sub15 = sub nsw i32 %27, %28
  store i32 %sub15, i32* %col, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc, %for.body.11
  %29 = load i32, i32* %x, align 4
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %30 = load i32, i32* %w, align 4
  %cmp17 = icmp slt i32 %29, %30
  br i1 %cmp17, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %for.cond.16
  %31 = load i32, i32* %col, align 4
  %mul19 = mul nsw i32 %31, 3
  store i32 %mul19, i32* %k, align 4
  %32 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %32, i64 0
  %33 = load i8, i8* %arrayidx, align 1
  %34 = load i32, i32* %k, align 4
  %add = add nsw i32 %34, 0
  %idxprom = sext i32 %add to i64
  %35 = load i8*, i8** %tmprow, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %35, i64 %idxprom
  store i8 %33, i8* %arrayidx20, align 1
  %36 = load i8*, i8** %s, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %36, i64 0
  %37 = load i8, i8* %arrayidx21, align 1
  %38 = load i32, i32* %k, align 4
  %add22 = add nsw i32 %38, 1
  %idxprom23 = sext i32 %add22 to i64
  %39 = load i8*, i8** %tmprow, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %39, i64 %idxprom23
  store i8 %37, i8* %arrayidx24, align 1
  %40 = load i8*, i8** %s, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %40, i64 0
  %41 = load i8, i8* %arrayidx25, align 1
  %42 = load i32, i32* %k, align 4
  %add26 = add nsw i32 %42, 2
  %idxprom27 = sext i32 %add26 to i64
  %43 = load i8*, i8** %tmprow, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %43, i64 %idxprom27
  store i8 %41, i8* %arrayidx28, align 1
  %44 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.18
  %45 = load i32, i32* %x, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %x, align 4
  %46 = load i32, i32* %col, align 4
  %inc29 = add nsw i32 %46, 1
  store i32 %inc29, i32* %col, align 4
  br label %for.cond.16

for.end:                                          ; preds = %for.cond.16
  %rowstride30 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 3
  %47 = load i32, i32* %rowstride30, align 4
  %48 = load i8*, i8** %src, align 8
  %idx.ext31 = sext i32 %47 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %48, i64 %idx.ext31
  store i8* %add.ptr32, i8** %src, align 8
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.end
  %49 = load i32, i32* %y, align 4
  %inc34 = add nsw i32 %49, 1
  store i32 %inc34, i32* %y, align 4
  %50 = load i32, i32* %row, align 4
  %inc35 = add nsw i32 %50, 1
  store i32 %inc35, i32* %row, align 4
  br label %for.cond.9

for.end.36:                                       ; preds = %for.cond.9
  br label %sw.epilog

sw.bb.37:                                         ; preds = %for.body
  store i32 0, i32* %y, align 4
  %y38 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 5
  %51 = load i32, i32* %y38, align 4
  %52 = load i32, i32* %y1, align 4
  %sub39 = sub nsw i32 %51, %52
  store i32 %sub39, i32* %row, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.86, %sw.bb.37
  %53 = load i32, i32* %y, align 4
  %h41 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 7
  %54 = load i32, i32* %h41, align 4
  %cmp42 = icmp slt i32 %53, %54
  br i1 %cmp42, label %for.body.43, label %for.end.89

for.body.43:                                      ; preds = %for.cond.40
  %55 = load i8*, i8** %src, align 8
  store i8* %55, i8** %s44, align 8
  %56 = load %struct.ppm*, %struct.ppm** %p, align 8
  %col46 = getelementptr inbounds %struct.ppm, %struct.ppm* %56, i32 0, i32 2
  %57 = load i8*, i8** %col46, align 8
  %58 = load i32, i32* %row, align 4
  %59 = load i32, i32* %rowstride, align 4
  %mul47 = mul nsw i32 %58, %59
  %idx.ext48 = sext i32 %mul47 to i64
  %add.ptr49 = getelementptr inbounds i8, i8* %57, i64 %idx.ext48
  store i8* %add.ptr49, i8** %tmprow45, align 8
  %60 = load i8*, i8** getelementptr inbounds (%struct.ppm, %struct.ppm* @inalpha, i32 0, i32 2), align 8
  %61 = load i32, i32* %row, align 4
  %62 = load i32, i32* %rowstride, align 4
  %mul50 = mul nsw i32 %61, %62
  %idx.ext51 = sext i32 %mul50 to i64
  %add.ptr52 = getelementptr inbounds i8, i8* %60, i64 %idx.ext51
  store i8* %add.ptr52, i8** %tmparow, align 8
  store i32 0, i32* %x, align 4
  %x53 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 4
  %63 = load i32, i32* %x53, align 4
  %64 = load i32, i32* %x1, align 4
  %sub54 = sub nsw i32 %63, %64
  store i32 %sub54, i32* %col, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.79, %for.body.43
  %65 = load i32, i32* %x, align 4
  %w56 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %66 = load i32, i32* %w56, align 4
  %cmp57 = icmp slt i32 %65, %66
  br i1 %cmp57, label %for.body.58, label %for.end.82

for.body.58:                                      ; preds = %for.cond.55
  %67 = load i32, i32* %col, align 4
  %mul60 = mul nsw i32 %67, 3
  store i32 %mul60, i32* %k59, align 4
  %68 = load i8*, i8** %s44, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %68, i64 0
  %69 = load i8, i8* %arrayidx61, align 1
  %70 = load i32, i32* %k59, align 4
  %add62 = add nsw i32 %70, 0
  %idxprom63 = sext i32 %add62 to i64
  %71 = load i8*, i8** %tmprow45, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %71, i64 %idxprom63
  store i8 %69, i8* %arrayidx64, align 1
  %72 = load i8*, i8** %s44, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %72, i64 0
  %73 = load i8, i8* %arrayidx65, align 1
  %74 = load i32, i32* %k59, align 4
  %add66 = add nsw i32 %74, 1
  %idxprom67 = sext i32 %add66 to i64
  %75 = load i8*, i8** %tmprow45, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %75, i64 %idxprom67
  store i8 %73, i8* %arrayidx68, align 1
  %76 = load i8*, i8** %s44, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %76, i64 0
  %77 = load i8, i8* %arrayidx69, align 1
  %78 = load i32, i32* %k59, align 4
  %add70 = add nsw i32 %78, 2
  %idxprom71 = sext i32 %add70 to i64
  %79 = load i8*, i8** %tmprow45, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %79, i64 %idxprom71
  store i8 %77, i8* %arrayidx72, align 1
  %80 = load i8*, i8** %s44, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %80, i64 1
  %81 = load i8, i8* %arrayidx73, align 1
  %conv = zext i8 %81 to i32
  %sub74 = sub nsw i32 255, %conv
  %conv75 = trunc i32 %sub74 to i8
  %82 = load i32, i32* %k59, align 4
  %idxprom76 = sext i32 %82 to i64
  %83 = load i8*, i8** %tmparow, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %83, i64 %idxprom76
  store i8 %conv75, i8* %arrayidx77, align 1
  %84 = load i8*, i8** %s44, align 8
  %add.ptr78 = getelementptr inbounds i8, i8* %84, i64 2
  store i8* %add.ptr78, i8** %s44, align 8
  br label %for.inc.79

for.inc.79:                                       ; preds = %for.body.58
  %85 = load i32, i32* %x, align 4
  %inc80 = add nsw i32 %85, 1
  store i32 %inc80, i32* %x, align 4
  %86 = load i32, i32* %col, align 4
  %inc81 = add nsw i32 %86, 1
  store i32 %inc81, i32* %col, align 4
  br label %for.cond.55

for.end.82:                                       ; preds = %for.cond.55
  %rowstride83 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 3
  %87 = load i32, i32* %rowstride83, align 4
  %88 = load i8*, i8** %src, align 8
  %idx.ext84 = sext i32 %87 to i64
  %add.ptr85 = getelementptr inbounds i8, i8* %88, i64 %idx.ext84
  store i8* %add.ptr85, i8** %src, align 8
  br label %for.inc.86

for.inc.86:                                       ; preds = %for.end.82
  %89 = load i32, i32* %y, align 4
  %inc87 = add nsw i32 %89, 1
  store i32 %inc87, i32* %y, align 4
  %90 = load i32, i32* %row, align 4
  %inc88 = add nsw i32 %90, 1
  store i32 %inc88, i32* %row, align 4
  br label %for.cond.40

for.end.89:                                       ; preds = %for.cond.40
  br label %sw.epilog

sw.bb.90:                                         ; preds = %for.body
  %x91 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 4
  %91 = load i32, i32* %x91, align 4
  %92 = load i32, i32* %x1, align 4
  %sub92 = sub nsw i32 %91, %92
  store i32 %sub92, i32* %col, align 4
  store i32 0, i32* %y, align 4
  %y93 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 5
  %93 = load i32, i32* %y93, align 4
  %94 = load i32, i32* %y1, align 4
  %sub94 = sub nsw i32 %93, %94
  store i32 %sub94, i32* %row, align 4
  br label %for.cond.95

for.cond.95:                                      ; preds = %for.inc.113, %sw.bb.90
  %95 = load i32, i32* %y, align 4
  %h96 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 7
  %96 = load i32, i32* %h96, align 4
  %cmp97 = icmp slt i32 %95, %96
  br i1 %cmp97, label %for.body.99, label %for.end.116

for.body.99:                                      ; preds = %for.cond.95
  %97 = load %struct.ppm*, %struct.ppm** %p, align 8
  %col100 = getelementptr inbounds %struct.ppm, %struct.ppm* %97, i32 0, i32 2
  %98 = load i8*, i8** %col100, align 8
  %99 = load i32, i32* %row, align 4
  %100 = load i32, i32* %rowstride, align 4
  %mul101 = mul nsw i32 %99, %100
  %idx.ext102 = sext i32 %mul101 to i64
  %add.ptr103 = getelementptr inbounds i8, i8* %98, i64 %idx.ext102
  %101 = load i32, i32* %col, align 4
  %mul104 = mul nsw i32 %101, 3
  %idx.ext105 = sext i32 %mul104 to i64
  %add.ptr106 = getelementptr inbounds i8, i8* %add.ptr103, i64 %idx.ext105
  %102 = load i8*, i8** %src, align 8
  %w107 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %103 = load i32, i32* %w107, align 4
  %mul108 = mul nsw i32 %103, 3
  %conv109 = sext i32 %mul108 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr106, i8* %102, i64 %conv109, i32 1, i1 false)
  %rowstride110 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 3
  %104 = load i32, i32* %rowstride110, align 4
  %105 = load i8*, i8** %src, align 8
  %idx.ext111 = sext i32 %104 to i64
  %add.ptr112 = getelementptr inbounds i8, i8* %105, i64 %idx.ext111
  store i8* %add.ptr112, i8** %src, align 8
  br label %for.inc.113

for.inc.113:                                      ; preds = %for.body.99
  %106 = load i32, i32* %y, align 4
  %inc114 = add nsw i32 %106, 1
  store i32 %inc114, i32* %y, align 4
  %107 = load i32, i32* %row, align 4
  %inc115 = add nsw i32 %107, 1
  store i32 %inc115, i32* %row, align 4
  br label %for.cond.95

for.end.116:                                      ; preds = %for.cond.95
  br label %sw.epilog

sw.bb.117:                                        ; preds = %for.body
  store i32 0, i32* %y, align 4
  %y118 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 5
  %108 = load i32, i32* %y118, align 4
  %109 = load i32, i32* %y1, align 4
  %sub119 = sub nsw i32 %108, %109
  store i32 %sub119, i32* %row, align 4
  br label %for.cond.120

for.cond.120:                                     ; preds = %for.inc.170, %sw.bb.117
  %110 = load i32, i32* %y, align 4
  %h121 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 7
  %111 = load i32, i32* %h121, align 4
  %cmp122 = icmp slt i32 %110, %111
  br i1 %cmp122, label %for.body.124, label %for.end.173

for.body.124:                                     ; preds = %for.cond.120
  %112 = load i8*, i8** %src, align 8
  store i8* %112, i8** %s125, align 8
  %113 = load %struct.ppm*, %struct.ppm** %p, align 8
  %col127 = getelementptr inbounds %struct.ppm, %struct.ppm* %113, i32 0, i32 2
  %114 = load i8*, i8** %col127, align 8
  %115 = load i32, i32* %row, align 4
  %116 = load i32, i32* %rowstride, align 4
  %mul128 = mul nsw i32 %115, %116
  %idx.ext129 = sext i32 %mul128 to i64
  %add.ptr130 = getelementptr inbounds i8, i8* %114, i64 %idx.ext129
  store i8* %add.ptr130, i8** %tmprow126, align 8
  %117 = load i8*, i8** getelementptr inbounds (%struct.ppm, %struct.ppm* @inalpha, i32 0, i32 2), align 8
  %118 = load i32, i32* %row, align 4
  %119 = load i32, i32* %rowstride, align 4
  %mul132 = mul nsw i32 %118, %119
  %idx.ext133 = sext i32 %mul132 to i64
  %add.ptr134 = getelementptr inbounds i8, i8* %117, i64 %idx.ext133
  store i8* %add.ptr134, i8** %tmparow131, align 8
  store i32 0, i32* %x, align 4
  %x135 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 4
  %120 = load i32, i32* %x135, align 4
  %121 = load i32, i32* %x1, align 4
  %sub136 = sub nsw i32 %120, %121
  store i32 %sub136, i32* %col, align 4
  br label %for.cond.137

for.cond.137:                                     ; preds = %for.inc.163, %for.body.124
  %122 = load i32, i32* %x, align 4
  %w138 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %123 = load i32, i32* %w138, align 4
  %cmp139 = icmp slt i32 %122, %123
  br i1 %cmp139, label %for.body.141, label %for.end.166

for.body.141:                                     ; preds = %for.cond.137
  %124 = load i32, i32* %col, align 4
  %mul143 = mul nsw i32 %124, 3
  store i32 %mul143, i32* %k142, align 4
  %125 = load i8*, i8** %s125, align 8
  %arrayidx144 = getelementptr inbounds i8, i8* %125, i64 0
  %126 = load i8, i8* %arrayidx144, align 1
  %127 = load i32, i32* %k142, align 4
  %add145 = add nsw i32 %127, 0
  %idxprom146 = sext i32 %add145 to i64
  %128 = load i8*, i8** %tmprow126, align 8
  %arrayidx147 = getelementptr inbounds i8, i8* %128, i64 %idxprom146
  store i8 %126, i8* %arrayidx147, align 1
  %129 = load i8*, i8** %s125, align 8
  %arrayidx148 = getelementptr inbounds i8, i8* %129, i64 1
  %130 = load i8, i8* %arrayidx148, align 1
  %131 = load i32, i32* %k142, align 4
  %add149 = add nsw i32 %131, 1
  %idxprom150 = sext i32 %add149 to i64
  %132 = load i8*, i8** %tmprow126, align 8
  %arrayidx151 = getelementptr inbounds i8, i8* %132, i64 %idxprom150
  store i8 %130, i8* %arrayidx151, align 1
  %133 = load i8*, i8** %s125, align 8
  %arrayidx152 = getelementptr inbounds i8, i8* %133, i64 2
  %134 = load i8, i8* %arrayidx152, align 1
  %135 = load i32, i32* %k142, align 4
  %add153 = add nsw i32 %135, 2
  %idxprom154 = sext i32 %add153 to i64
  %136 = load i8*, i8** %tmprow126, align 8
  %arrayidx155 = getelementptr inbounds i8, i8* %136, i64 %idxprom154
  store i8 %134, i8* %arrayidx155, align 1
  %137 = load i8*, i8** %s125, align 8
  %arrayidx156 = getelementptr inbounds i8, i8* %137, i64 3
  %138 = load i8, i8* %arrayidx156, align 1
  %conv157 = zext i8 %138 to i32
  %sub158 = sub nsw i32 255, %conv157
  %conv159 = trunc i32 %sub158 to i8
  %139 = load i32, i32* %k142, align 4
  %idxprom160 = sext i32 %139 to i64
  %140 = load i8*, i8** %tmparow131, align 8
  %arrayidx161 = getelementptr inbounds i8, i8* %140, i64 %idxprom160
  store i8 %conv159, i8* %arrayidx161, align 1
  %141 = load i8*, i8** %s125, align 8
  %add.ptr162 = getelementptr inbounds i8, i8* %141, i64 4
  store i8* %add.ptr162, i8** %s125, align 8
  br label %for.inc.163

for.inc.163:                                      ; preds = %for.body.141
  %142 = load i32, i32* %x, align 4
  %inc164 = add nsw i32 %142, 1
  store i32 %inc164, i32* %x, align 4
  %143 = load i32, i32* %col, align 4
  %inc165 = add nsw i32 %143, 1
  store i32 %inc165, i32* %col, align 4
  br label %for.cond.137

for.end.166:                                      ; preds = %for.cond.137
  %rowstride167 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 3
  %144 = load i32, i32* %rowstride167, align 4
  %145 = load i8*, i8** %src, align 8
  %idx.ext168 = sext i32 %144 to i64
  %add.ptr169 = getelementptr inbounds i8, i8* %145, i64 %idx.ext168
  store i8* %add.ptr169, i8** %src, align 8
  br label %for.inc.170

for.inc.170:                                      ; preds = %for.end.166
  %146 = load i32, i32* %y, align 4
  %inc171 = add nsw i32 %146, 1
  store i32 %inc171, i32* %y, align 4
  %147 = load i32, i32* %row, align 4
  %inc172 = add nsw i32 %147, 1
  store i32 %inc172, i32* %row, align 4
  br label %for.cond.120

for.end.173:                                      ; preds = %for.cond.120
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %for.end.173, %for.end.116, %for.end.89, %for.end.36
  br label %for.inc.174

for.inc.174:                                      ; preds = %sw.epilog
  %148 = load i8*, i8** %pr, align 8
  %call175 = call i8* @gimp_pixel_rgns_process(i8* %148)
  store i8* %call175, i8** %pr, align 8
  br label %for.cond

for.end.176:                                      ; preds = %if.then, %for.cond
  ret void
}

declare void @ppm_copy(%struct.ppm*, %struct.ppm*) #1

; Function Attrs: nounwind uwtable
define void @infile_copy_alpha_to_ppm(%struct.ppm* %p) #0 {
entry:
  %p.addr = alloca %struct.ppm*, align 8
  store %struct.ppm* %p, %struct.ppm** %p.addr, align 8
  %0 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  call void @ppm_copy(%struct.ppm* @inalpha, %struct.ppm* %0)
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

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

declare void @ppm_new(%struct.ppm*, i32, i32) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare i8* @gimp_pixel_rgns_register(i32, ...) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i8* @gimp_pixel_rgns_process(i8*) #1

declare void @gimp_install_procedure(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct._GimpParamDef*, %struct._GimpParamDef*) #1

declare i32 @gimp_plugin_menu_register(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #4

; Function Attrs: nounwind readnone
declare i8* @gimp_locale_directory() #5

; Function Attrs: nounwind
declare i8* @bind_textdomain_codeset(i8*, i8*) #4

; Function Attrs: nounwind
declare i8* @textdomain(i8*) #4

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare %struct._GRand* @g_rand_new() #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

; Function Attrs: nounwind uwtable
define internal void @gimpressionist_get_data() #0 {
entry:
  call void @restore_default_values()
  %call = call i32 @gimp_procedural_db_get_data(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i8* bitcast (%struct.gimpressionist_vals_t* @pcvals to i8*))
  ret void
}

declare i32 @create_gimpressionist() #1

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_is_gray(i32) #1

declare i32 @select_preset(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimpressionist_main() #0 {
entry:
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %p = alloca %struct.ppm*, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %count = alloca i32, align 4
  %done = alloca i64, align 8
  %total = alloca i64, align 8
  %pr = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %d = alloca i8*, align 8
  %tmprow = alloca i8*, align 8
  %k = alloca i32, align 4
  %d60 = alloca i8*, align 8
  %tmprow61 = alloca i8*, align 8
  %tmparow = alloca i8*, align 8
  %k76 = alloca i32, align 4
  %value = alloca i32, align 4
  %d154 = alloca i8*, align 8
  %tmprow155 = alloca i8*, align 8
  %tmparow160 = alloca i8*, align 8
  %k171 = alloca i32, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_intersect(i32 %1, i32* %x1, i32* %y1, i32* %width, i32* %height)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %width, align 4
  %3 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %2, %3
  %conv = sext i32 %mul to i64
  store i64 %conv, i64* %total, align 8
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0)) #2
  %call2 = call i32 @gimp_progress_init(i8* %call1)
  %4 = load i8*, i8** getelementptr inbounds (%struct.ppm, %struct.ppm* @infile, i32 0, i32 2), align 8
  %cmp = icmp ne i8* %4, null
  br i1 %cmp, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  call void @grabarea()
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %5 = load i32, i32* @img_has_alpha, align 4
  %tobool6 = icmp ne i32 %5, 0
  %cond = select i1 %tobool6, %struct.ppm* @inalpha, %struct.ppm* null
  call void @repaint(%struct.ppm* @infile, %struct.ppm* %cond)
  store %struct.ppm* @infile, %struct.ppm** %p, align 8
  %6 = load %struct.ppm*, %struct.ppm** %p, align 8
  %width7 = getelementptr inbounds %struct.ppm, %struct.ppm* %6, i32 0, i32 0
  %7 = load i32, i32* %width7, align 4
  %mul8 = mul nsw i32 %7, 3
  store i32 %mul8, i32* %rowstride, align 4
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %9 = load i32, i32* %x1, align 4
  %10 = load i32, i32* %y1, align 4
  %11 = load i32, i32* %width, align 4
  %12 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 1, i32 1)
  %call9 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 1, %struct._GimpPixelRgn* %dest_rgn)
  store i8* %call9, i8** %pr, align 8
  store i32 0, i32* %count, align 4
  store i64 0, i64* %done, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.217, %if.end.5
  %13 = load i8*, i8** %pr, align 8
  %cmp10 = icmp ne i8* %13, null
  br i1 %cmp10, label %for.body, label %for.end.220

for.body:                                         ; preds = %for.cond
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 0
  %14 = load i8*, i8** %data, align 8
  store i8* %14, i8** %dest, align 8
  %bpp = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 2
  %15 = load i32, i32* %bpp, align 4
  switch i32 %15, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.52
    i32 3, label %sw.bb.119
    i32 4, label %sw.bb.146
  ]

sw.bb:                                            ; preds = %for.body
  store i32 0, i32* %y, align 4
  %y12 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  %16 = load i32, i32* %y12, align 4
  %17 = load i32, i32* %y1, align 4
  %sub = sub nsw i32 %16, %17
  store i32 %sub, i32* %row, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.48, %sw.bb
  %18 = load i32, i32* %y, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %19 = load i32, i32* %h, align 4
  %cmp14 = icmp slt i32 %18, %19
  br i1 %cmp14, label %for.body.16, label %for.end.51

for.body.16:                                      ; preds = %for.cond.13
  %20 = load i8*, i8** %dest, align 8
  store i8* %20, i8** %d, align 8
  %21 = load %struct.ppm*, %struct.ppm** %p, align 8
  %col17 = getelementptr inbounds %struct.ppm, %struct.ppm* %21, i32 0, i32 2
  %22 = load i8*, i8** %col17, align 8
  %23 = load i32, i32* %row, align 4
  %24 = load i32, i32* %rowstride, align 4
  %mul18 = mul nsw i32 %23, %24
  %idx.ext = sext i32 %mul18 to i64
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  store i8* %add.ptr, i8** %tmprow, align 8
  store i32 0, i32* %x, align 4
  %x19 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %25 = load i32, i32* %x19, align 4
  %26 = load i32, i32* %x1, align 4
  %sub20 = sub nsw i32 %25, %26
  store i32 %sub20, i32* %col, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc, %for.body.16
  %27 = load i32, i32* %x, align 4
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %28 = load i32, i32* %w, align 4
  %cmp22 = icmp slt i32 %27, %28
  br i1 %cmp22, label %for.body.24, label %for.end

for.body.24:                                      ; preds = %for.cond.21
  %29 = load i32, i32* %col, align 4
  %mul25 = mul nsw i32 %29, 3
  store i32 %mul25, i32* %k, align 4
  %30 = load i32, i32* %k, align 4
  %add = add nsw i32 %30, 0
  %idxprom = sext i32 %add to i64
  %31 = load i8*, i8** %tmprow, align 8
  %arrayidx = getelementptr inbounds i8, i8* %31, i64 %idxprom
  %32 = load i8, i8* %arrayidx, align 1
  %conv26 = zext i8 %32 to i32
  %conv27 = sitofp i32 %conv26 to double
  %mul28 = fmul double %conv27, 2.126000e-01
  %33 = load i32, i32* %k, align 4
  %add29 = add nsw i32 %33, 1
  %idxprom30 = sext i32 %add29 to i64
  %34 = load i8*, i8** %tmprow, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %34, i64 %idxprom30
  %35 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %35 to i32
  %conv33 = sitofp i32 %conv32 to double
  %mul34 = fmul double %conv33, 7.152000e-01
  %add35 = fadd double %mul28, %mul34
  %36 = load i32, i32* %k, align 4
  %add36 = add nsw i32 %36, 2
  %idxprom37 = sext i32 %add36 to i64
  %37 = load i8*, i8** %tmprow, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %37, i64 %idxprom37
  %38 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %38 to i32
  %conv40 = sitofp i32 %conv39 to double
  %mul41 = fmul double %conv40, 7.220000e-02
  %add42 = fadd double %add35, %mul41
  %conv43 = fptoui double %add42 to i8
  %39 = load i8*, i8** %d, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr, i8** %d, align 8
  store i8 %conv43, i8* %39, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.24
  %40 = load i32, i32* %x, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %x, align 4
  %41 = load i32, i32* %col, align 4
  %inc44 = add nsw i32 %41, 1
  store i32 %inc44, i32* %col, align 4
  br label %for.cond.21

for.end:                                          ; preds = %for.cond.21
  %rowstride45 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 3
  %42 = load i32, i32* %rowstride45, align 4
  %43 = load i8*, i8** %dest, align 8
  %idx.ext46 = sext i32 %42 to i64
  %add.ptr47 = getelementptr inbounds i8, i8* %43, i64 %idx.ext46
  store i8* %add.ptr47, i8** %dest, align 8
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.end
  %44 = load i32, i32* %y, align 4
  %inc49 = add nsw i32 %44, 1
  store i32 %inc49, i32* %y, align 4
  %45 = load i32, i32* %row, align 4
  %inc50 = add nsw i32 %45, 1
  store i32 %inc50, i32* %row, align 4
  br label %for.cond.13

for.end.51:                                       ; preds = %for.cond.13
  br label %sw.epilog

sw.bb.52:                                         ; preds = %for.body
  store i32 0, i32* %y, align 4
  %y53 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  %46 = load i32, i32* %y53, align 4
  %47 = load i32, i32* %y1, align 4
  %sub54 = sub nsw i32 %46, %47
  store i32 %sub54, i32* %row, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.115, %sw.bb.52
  %48 = load i32, i32* %y, align 4
  %h56 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %49 = load i32, i32* %h56, align 4
  %cmp57 = icmp slt i32 %48, %49
  br i1 %cmp57, label %for.body.59, label %for.end.118

for.body.59:                                      ; preds = %for.cond.55
  %50 = load i8*, i8** %dest, align 8
  store i8* %50, i8** %d60, align 8
  %51 = load %struct.ppm*, %struct.ppm** %p, align 8
  %col62 = getelementptr inbounds %struct.ppm, %struct.ppm* %51, i32 0, i32 2
  %52 = load i8*, i8** %col62, align 8
  %53 = load i32, i32* %row, align 4
  %54 = load i32, i32* %rowstride, align 4
  %mul63 = mul nsw i32 %53, %54
  %idx.ext64 = sext i32 %mul63 to i64
  %add.ptr65 = getelementptr inbounds i8, i8* %52, i64 %idx.ext64
  store i8* %add.ptr65, i8** %tmprow61, align 8
  %55 = load i8*, i8** getelementptr inbounds (%struct.ppm, %struct.ppm* @inalpha, i32 0, i32 2), align 8
  %56 = load i32, i32* %row, align 4
  %57 = load i32, i32* %rowstride, align 4
  %mul66 = mul nsw i32 %56, %57
  %idx.ext67 = sext i32 %mul66 to i64
  %add.ptr68 = getelementptr inbounds i8, i8* %55, i64 %idx.ext67
  store i8* %add.ptr68, i8** %tmparow, align 8
  store i32 0, i32* %x, align 4
  %x69 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %58 = load i32, i32* %x69, align 4
  %59 = load i32, i32* %x1, align 4
  %sub70 = sub nsw i32 %58, %59
  store i32 %sub70, i32* %col, align 4
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.108, %for.body.59
  %60 = load i32, i32* %x, align 4
  %w72 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %61 = load i32, i32* %w72, align 4
  %cmp73 = icmp slt i32 %60, %61
  br i1 %cmp73, label %for.body.75, label %for.end.111

for.body.75:                                      ; preds = %for.cond.71
  %62 = load i32, i32* %col, align 4
  %mul77 = mul nsw i32 %62, 3
  store i32 %mul77, i32* %k76, align 4
  %63 = load i32, i32* %k76, align 4
  %add78 = add nsw i32 %63, 0
  %idxprom79 = sext i32 %add78 to i64
  %64 = load i8*, i8** %tmprow61, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %64, i64 %idxprom79
  %65 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %65 to i32
  %conv82 = sitofp i32 %conv81 to double
  %mul83 = fmul double %conv82, 2.126000e-01
  %66 = load i32, i32* %k76, align 4
  %add84 = add nsw i32 %66, 1
  %idxprom85 = sext i32 %add84 to i64
  %67 = load i8*, i8** %tmprow61, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %67, i64 %idxprom85
  %68 = load i8, i8* %arrayidx86, align 1
  %conv87 = zext i8 %68 to i32
  %conv88 = sitofp i32 %conv87 to double
  %mul89 = fmul double %conv88, 7.152000e-01
  %add90 = fadd double %mul83, %mul89
  %69 = load i32, i32* %k76, align 4
  %add91 = add nsw i32 %69, 2
  %idxprom92 = sext i32 %add91 to i64
  %70 = load i8*, i8** %tmprow61, align 8
  %arrayidx93 = getelementptr inbounds i8, i8* %70, i64 %idxprom92
  %71 = load i8, i8* %arrayidx93, align 1
  %conv94 = zext i8 %71 to i32
  %conv95 = sitofp i32 %conv94 to double
  %mul96 = fmul double %conv95, 7.220000e-02
  %add97 = fadd double %add90, %mul96
  %conv98 = fptosi double %add97 to i32
  store i32 %conv98, i32* %value, align 4
  %72 = load i32, i32* %value, align 4
  %conv99 = trunc i32 %72 to i8
  %73 = load i8*, i8** %d60, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %73, i64 0
  store i8 %conv99, i8* %arrayidx100, align 1
  %74 = load i32, i32* %k76, align 4
  %idxprom101 = sext i32 %74 to i64
  %75 = load i8*, i8** %tmparow, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %75, i64 %idxprom101
  %76 = load i8, i8* %arrayidx102, align 1
  %conv103 = zext i8 %76 to i32
  %sub104 = sub nsw i32 255, %conv103
  %conv105 = trunc i32 %sub104 to i8
  %77 = load i8*, i8** %d60, align 8
  %arrayidx106 = getelementptr inbounds i8, i8* %77, i64 1
  store i8 %conv105, i8* %arrayidx106, align 1
  %78 = load i8*, i8** %d60, align 8
  %add.ptr107 = getelementptr inbounds i8, i8* %78, i64 2
  store i8* %add.ptr107, i8** %d60, align 8
  br label %for.inc.108

for.inc.108:                                      ; preds = %for.body.75
  %79 = load i32, i32* %x, align 4
  %inc109 = add nsw i32 %79, 1
  store i32 %inc109, i32* %x, align 4
  %80 = load i32, i32* %col, align 4
  %inc110 = add nsw i32 %80, 1
  store i32 %inc110, i32* %col, align 4
  br label %for.cond.71

for.end.111:                                      ; preds = %for.cond.71
  %rowstride112 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 3
  %81 = load i32, i32* %rowstride112, align 4
  %82 = load i8*, i8** %dest, align 8
  %idx.ext113 = sext i32 %81 to i64
  %add.ptr114 = getelementptr inbounds i8, i8* %82, i64 %idx.ext113
  store i8* %add.ptr114, i8** %dest, align 8
  br label %for.inc.115

for.inc.115:                                      ; preds = %for.end.111
  %83 = load i32, i32* %y, align 4
  %inc116 = add nsw i32 %83, 1
  store i32 %inc116, i32* %y, align 4
  %84 = load i32, i32* %row, align 4
  %inc117 = add nsw i32 %84, 1
  store i32 %inc117, i32* %row, align 4
  br label %for.cond.55

for.end.118:                                      ; preds = %for.cond.55
  br label %sw.epilog

sw.bb.119:                                        ; preds = %for.body
  %x120 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %85 = load i32, i32* %x120, align 4
  %86 = load i32, i32* %x1, align 4
  %sub121 = sub nsw i32 %85, %86
  store i32 %sub121, i32* %col, align 4
  store i32 0, i32* %y, align 4
  %y122 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  %87 = load i32, i32* %y122, align 4
  %88 = load i32, i32* %y1, align 4
  %sub123 = sub nsw i32 %87, %88
  store i32 %sub123, i32* %row, align 4
  br label %for.cond.124

for.cond.124:                                     ; preds = %for.inc.142, %sw.bb.119
  %89 = load i32, i32* %y, align 4
  %h125 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %90 = load i32, i32* %h125, align 4
  %cmp126 = icmp slt i32 %89, %90
  br i1 %cmp126, label %for.body.128, label %for.end.145

for.body.128:                                     ; preds = %for.cond.124
  %91 = load i8*, i8** %dest, align 8
  %92 = load %struct.ppm*, %struct.ppm** %p, align 8
  %col129 = getelementptr inbounds %struct.ppm, %struct.ppm* %92, i32 0, i32 2
  %93 = load i8*, i8** %col129, align 8
  %94 = load i32, i32* %row, align 4
  %95 = load i32, i32* %rowstride, align 4
  %mul130 = mul nsw i32 %94, %95
  %idx.ext131 = sext i32 %mul130 to i64
  %add.ptr132 = getelementptr inbounds i8, i8* %93, i64 %idx.ext131
  %96 = load i32, i32* %col, align 4
  %mul133 = mul nsw i32 %96, 3
  %idx.ext134 = sext i32 %mul133 to i64
  %add.ptr135 = getelementptr inbounds i8, i8* %add.ptr132, i64 %idx.ext134
  %w136 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %97 = load i32, i32* %w136, align 4
  %mul137 = mul nsw i32 %97, 3
  %conv138 = sext i32 %mul137 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %91, i8* %add.ptr135, i64 %conv138, i32 1, i1 false)
  %rowstride139 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 3
  %98 = load i32, i32* %rowstride139, align 4
  %99 = load i8*, i8** %dest, align 8
  %idx.ext140 = sext i32 %98 to i64
  %add.ptr141 = getelementptr inbounds i8, i8* %99, i64 %idx.ext140
  store i8* %add.ptr141, i8** %dest, align 8
  br label %for.inc.142

for.inc.142:                                      ; preds = %for.body.128
  %100 = load i32, i32* %y, align 4
  %inc143 = add nsw i32 %100, 1
  store i32 %inc143, i32* %y, align 4
  %101 = load i32, i32* %row, align 4
  %inc144 = add nsw i32 %101, 1
  store i32 %inc144, i32* %row, align 4
  br label %for.cond.124

for.end.145:                                      ; preds = %for.cond.124
  br label %sw.epilog

sw.bb.146:                                        ; preds = %for.body
  store i32 0, i32* %y, align 4
  %y147 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 5
  %102 = load i32, i32* %y147, align 4
  %103 = load i32, i32* %y1, align 4
  %sub148 = sub nsw i32 %102, %103
  store i32 %sub148, i32* %row, align 4
  br label %for.cond.149

for.cond.149:                                     ; preds = %for.inc.199, %sw.bb.146
  %104 = load i32, i32* %y, align 4
  %h150 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %105 = load i32, i32* %h150, align 4
  %cmp151 = icmp slt i32 %104, %105
  br i1 %cmp151, label %for.body.153, label %for.end.202

for.body.153:                                     ; preds = %for.cond.149
  %106 = load i8*, i8** %dest, align 8
  store i8* %106, i8** %d154, align 8
  %107 = load %struct.ppm*, %struct.ppm** %p, align 8
  %col156 = getelementptr inbounds %struct.ppm, %struct.ppm* %107, i32 0, i32 2
  %108 = load i8*, i8** %col156, align 8
  %109 = load i32, i32* %row, align 4
  %110 = load i32, i32* %rowstride, align 4
  %mul157 = mul nsw i32 %109, %110
  %idx.ext158 = sext i32 %mul157 to i64
  %add.ptr159 = getelementptr inbounds i8, i8* %108, i64 %idx.ext158
  store i8* %add.ptr159, i8** %tmprow155, align 8
  %111 = load i8*, i8** getelementptr inbounds (%struct.ppm, %struct.ppm* @inalpha, i32 0, i32 2), align 8
  %112 = load i32, i32* %row, align 4
  %113 = load i32, i32* %rowstride, align 4
  %mul161 = mul nsw i32 %112, %113
  %idx.ext162 = sext i32 %mul161 to i64
  %add.ptr163 = getelementptr inbounds i8, i8* %111, i64 %idx.ext162
  store i8* %add.ptr163, i8** %tmparow160, align 8
  store i32 0, i32* %x, align 4
  %x164 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 4
  %114 = load i32, i32* %x164, align 4
  %115 = load i32, i32* %x1, align 4
  %sub165 = sub nsw i32 %114, %115
  store i32 %sub165, i32* %col, align 4
  br label %for.cond.166

for.cond.166:                                     ; preds = %for.inc.192, %for.body.153
  %116 = load i32, i32* %x, align 4
  %w167 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %117 = load i32, i32* %w167, align 4
  %cmp168 = icmp slt i32 %116, %117
  br i1 %cmp168, label %for.body.170, label %for.end.195

for.body.170:                                     ; preds = %for.cond.166
  %118 = load i32, i32* %col, align 4
  %mul172 = mul nsw i32 %118, 3
  store i32 %mul172, i32* %k171, align 4
  %119 = load i32, i32* %k171, align 4
  %add173 = add nsw i32 %119, 0
  %idxprom174 = sext i32 %add173 to i64
  %120 = load i8*, i8** %tmprow155, align 8
  %arrayidx175 = getelementptr inbounds i8, i8* %120, i64 %idxprom174
  %121 = load i8, i8* %arrayidx175, align 1
  %122 = load i8*, i8** %d154, align 8
  %arrayidx176 = getelementptr inbounds i8, i8* %122, i64 0
  store i8 %121, i8* %arrayidx176, align 1
  %123 = load i32, i32* %k171, align 4
  %add177 = add nsw i32 %123, 1
  %idxprom178 = sext i32 %add177 to i64
  %124 = load i8*, i8** %tmprow155, align 8
  %arrayidx179 = getelementptr inbounds i8, i8* %124, i64 %idxprom178
  %125 = load i8, i8* %arrayidx179, align 1
  %126 = load i8*, i8** %d154, align 8
  %arrayidx180 = getelementptr inbounds i8, i8* %126, i64 1
  store i8 %125, i8* %arrayidx180, align 1
  %127 = load i32, i32* %k171, align 4
  %add181 = add nsw i32 %127, 2
  %idxprom182 = sext i32 %add181 to i64
  %128 = load i8*, i8** %tmprow155, align 8
  %arrayidx183 = getelementptr inbounds i8, i8* %128, i64 %idxprom182
  %129 = load i8, i8* %arrayidx183, align 1
  %130 = load i8*, i8** %d154, align 8
  %arrayidx184 = getelementptr inbounds i8, i8* %130, i64 2
  store i8 %129, i8* %arrayidx184, align 1
  %131 = load i32, i32* %k171, align 4
  %idxprom185 = sext i32 %131 to i64
  %132 = load i8*, i8** %tmparow160, align 8
  %arrayidx186 = getelementptr inbounds i8, i8* %132, i64 %idxprom185
  %133 = load i8, i8* %arrayidx186, align 1
  %conv187 = zext i8 %133 to i32
  %sub188 = sub nsw i32 255, %conv187
  %conv189 = trunc i32 %sub188 to i8
  %134 = load i8*, i8** %d154, align 8
  %arrayidx190 = getelementptr inbounds i8, i8* %134, i64 3
  store i8 %conv189, i8* %arrayidx190, align 1
  %135 = load i8*, i8** %d154, align 8
  %add.ptr191 = getelementptr inbounds i8, i8* %135, i64 4
  store i8* %add.ptr191, i8** %d154, align 8
  br label %for.inc.192

for.inc.192:                                      ; preds = %for.body.170
  %136 = load i32, i32* %x, align 4
  %inc193 = add nsw i32 %136, 1
  store i32 %inc193, i32* %x, align 4
  %137 = load i32, i32* %col, align 4
  %inc194 = add nsw i32 %137, 1
  store i32 %inc194, i32* %col, align 4
  br label %for.cond.166

for.end.195:                                      ; preds = %for.cond.166
  %rowstride196 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 3
  %138 = load i32, i32* %rowstride196, align 4
  %139 = load i8*, i8** %dest, align 8
  %idx.ext197 = sext i32 %138 to i64
  %add.ptr198 = getelementptr inbounds i8, i8* %139, i64 %idx.ext197
  store i8* %add.ptr198, i8** %dest, align 8
  br label %for.inc.199

for.inc.199:                                      ; preds = %for.end.195
  %140 = load i32, i32* %y, align 4
  %inc200 = add nsw i32 %140, 1
  store i32 %inc200, i32* %y, align 4
  %141 = load i32, i32* %row, align 4
  %inc201 = add nsw i32 %141, 1
  store i32 %inc201, i32* %row, align 4
  br label %for.cond.149

for.end.202:                                      ; preds = %for.cond.149
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %for.end.202, %for.end.145, %for.end.118, %for.end.51
  %w203 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 6
  %142 = load i32, i32* %w203, align 4
  %h204 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 7
  %143 = load i32, i32* %h204, align 4
  %mul205 = mul nsw i32 %142, %143
  %conv206 = sext i32 %mul205 to i64
  %144 = load i64, i64* %done, align 8
  %add207 = add nsw i64 %144, %conv206
  store i64 %add207, i64* %done, align 8
  %145 = load i32, i32* %count, align 4
  %rem = srem i32 %145, 16
  %cmp208 = icmp eq i32 %rem, 0
  br i1 %cmp208, label %if.then.210, label %if.end.216

if.then.210:                                      ; preds = %sw.epilog
  %146 = load i64, i64* %done, align 8
  %conv211 = sitofp i64 %146 to double
  %mul212 = fmul double 2.000000e-01, %conv211
  %147 = load i64, i64* %total, align 8
  %conv213 = sitofp i64 %147 to double
  %div = fdiv double %mul212, %conv213
  %add214 = fadd double 8.000000e-01, %div
  %call215 = call i32 @gimp_progress_update(double %add214)
  br label %if.end.216

if.end.216:                                       ; preds = %if.then.210, %sw.epilog
  br label %for.inc.217

for.inc.217:                                      ; preds = %if.end.216
  %148 = load i8*, i8** %pr, align 8
  %call218 = call i8* @gimp_pixel_rgns_process(i8* %148)
  store i8* %call218, i8** %pr, align 8
  %149 = load i32, i32* %count, align 4
  %inc219 = add nsw i32 %149, 1
  store i32 %inc219, i32* %count, align 4
  br label %for.cond

for.end.220:                                      ; preds = %for.cond
  %call221 = call i32 @gimp_progress_update(double 1.000000e+00)
  %150 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %150)
  %151 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id222 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %151, i32 0, i32 0
  %152 = load i32, i32* %drawable_id222, align 4
  %call223 = call i32 @gimp_drawable_merge_shadow(i32 %152, i32 1)
  %153 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id224 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %153, i32 0, i32 0
  %154 = load i32, i32* %drawable_id224, align 4
  %155 = load i32, i32* %x1, align 4
  %156 = load i32, i32* %y1, align 4
  %157 = load i32, i32* %width, align 4
  %158 = load i32, i32* %height, align 4
  %call225 = call i32 @gimp_drawable_update(i32 %154, i32 %155, i32 %156, i32 %157, i32 %158)
  br label %return

return:                                           ; preds = %for.end.220, %if.then
  ret void
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_procedural_db_set_data(i8*, i8*, i32) #1

declare void @g_rand_free(%struct._GRand*) #1

declare void @free_parsepath_cache() #1

declare void @brush_reload(i8*, %struct.ppm*) #1

declare void @preview_free_resources() #1

declare void @brush_free() #1

declare void @preset_free() #1

declare void @orientation_map_free_resources() #1

declare void @size_map_free_resources() #1

declare void @restore_default_values() #1

declare i32 @gimp_procedural_db_get_data(i8*, i8*) #1

declare i32 @gimp_progress_init(i8*) #1

declare void @repaint(%struct.ppm*, %struct.ppm*) #1

declare i32 @gimp_progress_update(double) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
