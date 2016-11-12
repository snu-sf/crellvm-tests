; ModuleID = './plug-ins/common/gradient-map.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct.MapParam = type { i8*, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [3 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"plug-in-gradmap\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"Recolor the image using colors from the active gradient\00", align 1
@.str.8 = private unnamed_addr constant [396 x i8] c"This plug-in maps the contents of the specified drawable with active gradient. It calculates luminosity of each pixel and replaces the pixel by the sample of active gradient at the position proportional to that luminosity. Complete black pixel becomes the leftmost color of the gradient, and complete white becomes the rightmost. Works on both Grayscale and RGB image with/without alpha channel.\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"Eiichi Takamori\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"_Gradient Map\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"<Image>/Colors/Map\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"plug-in-palettemap\00", align 1
@.str.15 = private unnamed_addr constant [55 x i8] c"Recolor the image using colors from the active palette\00", align 1
@.str.16 = private unnamed_addr constant [358 x i8] c"This plug-in maps the contents of the specified drawable with the active palette. It calculates luminosity of each pixel and replaces the pixel by the palette sample  at the corresponding index. A complete black pixel becomes the lowest palette entry, and complete white becomes the highest. Works on both Grayscale and RGB image with/without alpha channel.\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"Bill Skaggs\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"2004\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"_Palette Map\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.20 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"Gradient Map\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"Palette Map\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"plug_in_gradmap: invalid mode\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([396 x i8], [396 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i32 1, i32 3, i32 0, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0))
  call void @gimp_install_procedure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([358 x i8], [358 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i32 1, i32 3, i32 0, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call1 = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0))
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
  %status = alloca i32, align 4
  %run_mode = alloca i32, align 4
  %mode = alloca i32, align 4
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
  %call = call i8* @gimp_locale_directory() #6
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %4 = load i32, i32* %status, align 4
  store i32 %4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data5 to i32*
  %6 = load i32, i32* %d_drawable, align 4
  %call6 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %6)
  store %struct._GimpDrawable* %call6, %struct._GimpDrawable** %drawable, align 8
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 0
  %8 = load i32, i32* %drawable_id, align 4
  %call7 = call i32 @gimp_drawable_is_rgb(i32 %8)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id8 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 0
  %10 = load i32, i32* %drawable_id8, align 4
  %call9 = call i32 @gimp_drawable_is_gray(i32 %10)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then, label %if.else.32

if.then:                                          ; preds = %lor.lhs.false, %do.end
  store i32 0, i32* %mode, align 4
  %11 = load i8*, i8** %name.addr, align 8
  %call11 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)) #7
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.else, label %if.then.13

if.then.13:                                       ; preds = %if.then
  store i32 1, i32* %mode, align 4
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0)) #5
  %call15 = call i32 @gimp_progress_init(i8* %call14)
  br label %if.end.22

if.else:                                          ; preds = %if.then
  %12 = load i8*, i8** %name.addr, align 8
  %call16 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0)) #7
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.else.21, label %if.then.18

if.then.18:                                       ; preds = %if.else
  store i32 2, i32* %mode, align 4
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0)) #5
  %call20 = call i32 @gimp_progress_init(i8* %call19)
  br label %if.end

if.else.21:                                       ; preds = %if.else
  store i32 1, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.21, %if.then.18
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %if.then.13
  %13 = load i32, i32* %status, align 4
  %cmp = icmp eq i32 %13, 3
  br i1 %cmp, label %if.then.23, label %if.end.31

if.then.23:                                       ; preds = %if.end.22
  %14 = load i32, i32* %mode, align 4
  %tobool24 = icmp ne i32 %14, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.23
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %16 = load i32, i32* %mode, align 4
  call void @map(%struct._GimpDrawable* %15, i32 %16)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.then.23
  %17 = load i32, i32* %run_mode, align 4
  %cmp27 = icmp ne i32 %17, 1
  br i1 %cmp27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.end.26
  %call29 = call i32 @gimp_displays_flush()
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.end.26
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end.22
  br label %if.end.33

if.else.32:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %status, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.32, %if.end.31
  %18 = load i32, i32* %status, align 4
  store i32 %18, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %19)
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

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @map(%struct._GimpDrawable* %drawable, i32 %mode) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %mode.addr = alloca i32, align 4
  %param = alloca %struct.MapParam, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_is_rgb(i32 %1)
  %is_rgb = getelementptr inbounds %struct.MapParam, %struct.MapParam* %param, i32 0, i32 1
  store i32 %call, i32* %is_rgb, align 4
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id1 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 0
  %3 = load i32, i32* %drawable_id1, align 4
  %call2 = call i32 @gimp_drawable_has_alpha(i32 %3)
  %has_alpha = getelementptr inbounds %struct.MapParam, %struct.MapParam* %param, i32 0, i32 2
  store i32 %call2, i32* %has_alpha, align 4
  %4 = load i32, i32* %mode.addr, align 4
  switch i32 %4, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call3 = call i8* @get_samples_gradient(%struct._GimpDrawable* %5)
  %samples = getelementptr inbounds %struct.MapParam, %struct.MapParam* %param, i32 0, i32 0
  store i8* %call3, i8** %samples, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call5 = call i8* @get_samples_palette(%struct._GimpDrawable* %6)
  %samples6 = getelementptr inbounds %struct.MapParam, %struct.MapParam* %param, i32 0, i32 0
  store i8* %call5, i8** %samples6, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void (i8*, ...) @g_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.4, %sw.bb
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %8 = bitcast %struct.MapParam* %param to i8*
  call void @gimp_rgn_iterate2(%struct._GimpDrawable* %7, i32 0, void (i8*, i8*, i32, i8*)* @map_func, i8* %8)
  ret void
}

declare i32 @gimp_displays_flush() #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

; Function Attrs: nounwind uwtable
define internal i8* @get_samples_gradient(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %gradient_name = alloca i8*, align 8
  %n_f_samples = alloca i32, align 4
  %f_samples = alloca double*, align 8
  %f_samp = alloca double*, align 8
  %byte_samples = alloca i8*, align 8
  %b_samp = alloca i8*, align 8
  %bpp = alloca i32, align 4
  %color = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %alpha = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %call = call i8* @gimp_context_get_gradient()
  store i8* %call, i8** %gradient_name, align 8
  %0 = load i8*, i8** %gradient_name, align 8
  %call1 = call i32 @gimp_gradient_get_uniform_samples(i8* %0, i32 256, i32 0, i32* %n_f_samples, double** %f_samples)
  %1 = load i8*, i8** %gradient_name, align 8
  call void @g_free(i8* %1)
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 0
  %3 = load i32, i32* %drawable_id, align 4
  %call2 = call i32 @gimp_drawable_bpp(i32 %3)
  store i32 %call2, i32* %bpp, align 4
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id3 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 0
  %5 = load i32, i32* %drawable_id3, align 4
  %call4 = call i32 @gimp_drawable_is_rgb(i32 %5)
  store i32 %call4, i32* %color, align 4
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id5 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 0
  %7 = load i32, i32* %drawable_id5, align 4
  %call6 = call i32 @gimp_drawable_has_alpha(i32 %7)
  store i32 %call6, i32* %has_alpha, align 4
  %8 = load i32, i32* %has_alpha, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %9 = load i32, i32* %bpp, align 4
  %sub = sub nsw i32 %9, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load i32, i32* %bpp, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %10, %cond.false ]
  store i32 %cond, i32* %alpha, align 4
  %11 = load i32, i32* %bpp, align 4
  %mul = mul nsw i32 256, %11
  %conv = sext i32 %mul to i64
  %call7 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call7, i8** %byte_samples, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.43, %cond.end
  %12 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %12, 256
  br i1 %cmp, label %for.body, label %for.end.45

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %bpp, align 4
  %mul9 = mul nsw i32 %13, %14
  %idxprom = sext i32 %mul9 to i64
  %15 = load i8*, i8** %byte_samples, align 8
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %idxprom
  store i8* %arrayidx, i8** %b_samp, align 8
  %16 = load i32, i32* %i, align 4
  %mul10 = mul nsw i32 %16, 4
  %idxprom11 = sext i32 %mul10 to i64
  %17 = load double*, double** %f_samples, align 8
  %arrayidx12 = getelementptr inbounds double, double* %17, i64 %idxprom11
  store double* %arrayidx12, double** %f_samp, align 8
  %18 = load i32, i32* %color, align 4
  %tobool13 = icmp ne i32 %18, 0
  br i1 %tobool13, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %if.then
  %19 = load i32, i32* %j, align 4
  %cmp15 = icmp slt i32 %19, 3
  br i1 %cmp15, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.14
  %20 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %20 to i64
  %21 = load double*, double** %f_samp, align 8
  %arrayidx19 = getelementptr inbounds double, double* %21, i64 %idxprom18
  %22 = load double, double* %arrayidx19, align 8
  %mul20 = fmul double %22, 2.550000e+02
  %conv21 = fptoui double %mul20 to i8
  %23 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %23 to i64
  %24 = load i8*, i8** %b_samp, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %24, i64 %idxprom22
  store i8 %conv21, i8* %arrayidx23, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.17
  %25 = load i32, i32* %j, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.14

for.end:                                          ; preds = %for.cond.14
  br label %if.end

if.else:                                          ; preds = %for.body
  %26 = load double*, double** %f_samp, align 8
  %arrayidx24 = getelementptr inbounds double, double* %26, i64 0
  %27 = load double, double* %arrayidx24, align 8
  %mul25 = fmul double %27, 2.126000e-01
  %28 = load double*, double** %f_samp, align 8
  %arrayidx26 = getelementptr inbounds double, double* %28, i64 1
  %29 = load double, double* %arrayidx26, align 8
  %mul27 = fmul double %29, 7.152000e-01
  %add = fadd double %mul25, %mul27
  %30 = load double*, double** %f_samp, align 8
  %arrayidx28 = getelementptr inbounds double, double* %30, i64 2
  %31 = load double, double* %arrayidx28, align 8
  %mul29 = fmul double %31, 7.220000e-02
  %add30 = fadd double %add, %mul29
  %add31 = fadd double %add30, 5.000000e-01
  %mul32 = fmul double %add31, 2.550000e+02
  %conv33 = fptoui double %mul32 to i8
  %32 = load i8*, i8** %b_samp, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %32, i64 0
  store i8 %conv33, i8* %arrayidx34, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %33 = load i32, i32* %has_alpha, align 4
  %tobool35 = icmp ne i32 %33, 0
  br i1 %tobool35, label %if.then.36, label %if.end.42

if.then.36:                                       ; preds = %if.end
  %34 = load double*, double** %f_samp, align 8
  %arrayidx37 = getelementptr inbounds double, double* %34, i64 3
  %35 = load double, double* %arrayidx37, align 8
  %mul38 = fmul double %35, 2.550000e+02
  %conv39 = fptoui double %mul38 to i8
  %36 = load i32, i32* %alpha, align 4
  %idxprom40 = sext i32 %36 to i64
  %37 = load i8*, i8** %b_samp, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %37, i64 %idxprom40
  store i8 %conv39, i8* %arrayidx41, align 1
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.36, %if.end
  br label %for.inc.43

for.inc.43:                                       ; preds = %if.end.42
  %38 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %38, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond

for.end.45:                                       ; preds = %for.cond
  %39 = load double*, double** %f_samples, align 8
  %40 = bitcast double* %39 to i8*
  call void @g_free(i8* %40)
  %41 = load i8*, i8** %byte_samples, align 8
  ret i8* %41
}

; Function Attrs: nounwind uwtable
define internal i8* @get_samples_palette(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %palette_name = alloca i8*, align 8
  %color_sample = alloca %struct._GimpRGB, align 8
  %byte_samples = alloca i8*, align 8
  %b_samp = alloca i8*, align 8
  %bpp = alloca i32, align 4
  %color = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %alpha = alloca i32, align 4
  %i = alloca i32, align 4
  %num_colors = alloca i32, align 4
  %factor = alloca float, align 4
  %pal_entry = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %call = call i8* @gimp_context_get_palette()
  store i8* %call, i8** %palette_name, align 8
  %0 = load i8*, i8** %palette_name, align 8
  %call1 = call i32 @gimp_palette_get_info(i8* %0, i32* %num_colors)
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %1, i32 0, i32 0
  %2 = load i32, i32* %drawable_id, align 4
  %call2 = call i32 @gimp_drawable_bpp(i32 %2)
  store i32 %call2, i32* %bpp, align 4
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id3 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 0
  %4 = load i32, i32* %drawable_id3, align 4
  %call4 = call i32 @gimp_drawable_is_rgb(i32 %4)
  store i32 %call4, i32* %color, align 4
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id5 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 0
  %6 = load i32, i32* %drawable_id5, align 4
  %call6 = call i32 @gimp_drawable_has_alpha(i32 %6)
  store i32 %call6, i32* %has_alpha, align 4
  %7 = load i32, i32* %has_alpha, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load i32, i32* %bpp, align 4
  %sub = sub nsw i32 %8, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load i32, i32* %bpp, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %9, %cond.false ]
  store i32 %cond, i32* %alpha, align 4
  %10 = load i32, i32* %bpp, align 4
  %mul = mul nsw i32 256, %10
  %conv = sext i32 %mul to i64
  %call7 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call7, i8** %byte_samples, align 8
  %11 = load i32, i32* %num_colors, align 4
  %conv8 = sitofp i32 %11 to float
  %div = fdiv float %conv8, 2.560000e+02
  store float %div, float* %factor, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %12 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %12, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %bpp, align 4
  %mul10 = mul nsw i32 %13, %14
  %idxprom = sext i32 %mul10 to i64
  %15 = load i8*, i8** %byte_samples, align 8
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %idxprom
  store i8* %arrayidx, i8** %b_samp, align 8
  %16 = load i32, i32* %i, align 4
  %conv11 = sitofp i32 %16 to float
  %17 = load float, float* %factor, align 4
  %mul12 = fmul float %conv11, %17
  %conv13 = fptosi float %mul12 to i32
  %18 = load i32, i32* %num_colors, align 4
  %cmp14 = icmp sgt i32 %conv13, %18
  br i1 %cmp14, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %for.body
  %19 = load i32, i32* %num_colors, align 4
  br label %cond.end.30

cond.false.17:                                    ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %conv18 = sitofp i32 %20 to float
  %21 = load float, float* %factor, align 4
  %mul19 = fmul float %conv18, %21
  %conv20 = fptosi float %mul19 to i32
  %cmp21 = icmp slt i32 %conv20, 0
  br i1 %cmp21, label %cond.true.23, label %cond.false.24

cond.true.23:                                     ; preds = %cond.false.17
  br label %cond.end.28

cond.false.24:                                    ; preds = %cond.false.17
  %22 = load i32, i32* %i, align 4
  %conv25 = sitofp i32 %22 to float
  %23 = load float, float* %factor, align 4
  %mul26 = fmul float %conv25, %23
  %conv27 = fptosi float %mul26 to i32
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.24, %cond.true.23
  %cond29 = phi i32 [ 0, %cond.true.23 ], [ %conv27, %cond.false.24 ]
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.end.28, %cond.true.16
  %cond31 = phi i32 [ %19, %cond.true.16 ], [ %cond29, %cond.end.28 ]
  store i32 %cond31, i32* %pal_entry, align 4
  %24 = load i8*, i8** %palette_name, align 8
  %25 = load i32, i32* %pal_entry, align 4
  %call32 = call i32 @gimp_palette_entry_get_color(i8* %24, i32 %25, %struct._GimpRGB* %color_sample)
  %26 = load i32, i32* %color, align 4
  %tobool33 = icmp ne i32 %26, 0
  br i1 %tobool33, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.30
  %27 = load i8*, i8** %b_samp, align 8
  %28 = load i8*, i8** %b_samp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %28, i64 1
  %29 = load i8*, i8** %b_samp, align 8
  %add.ptr34 = getelementptr inbounds i8, i8* %29, i64 2
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %color_sample, i8* %27, i8* %add.ptr, i8* %add.ptr34)
  br label %if.end

if.else:                                          ; preds = %cond.end.30
  %call35 = call zeroext i8 @gimp_rgb_luminance_uchar(%struct._GimpRGB* %color_sample)
  %30 = load i8*, i8** %b_samp, align 8
  store i8 %call35, i8* %30, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %31 = load i32, i32* %has_alpha, align 4
  %tobool36 = icmp ne i32 %31, 0
  br i1 %tobool36, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %if.end
  %32 = load i32, i32* %alpha, align 4
  %idxprom38 = sext i32 %32 to i64
  %33 = load i8*, i8** %b_samp, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %33, i64 %idxprom38
  store i8 -1, i8* %arrayidx39, align 1
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.37, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.40
  %34 = load i32, i32* %i, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load i8*, i8** %byte_samples, align 8
  ret i8* %35
}

; Function Attrs: nounwind uwtable
define internal void @g_error(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* null, i32 4, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  br label %for.cond

return:                                           ; No predecessors!
  ret void
}

declare void @gimp_rgn_iterate2(%struct._GimpDrawable*, i32, void (i8*, i8*, i32, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @map_func(i8* %src, i8* %dest, i32 %bpp, i8* %data) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %param = alloca %struct.MapParam*, align 8
  %lum = alloca i32, align 4
  %b = alloca i32, align 4
  %samp = alloca i8*, align 8
  store i8* %src, i8** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.MapParam*
  store %struct.MapParam* %1, %struct.MapParam** %param, align 8
  %2 = load %struct.MapParam*, %struct.MapParam** %param, align 8
  %is_rgb = getelementptr inbounds %struct.MapParam, %struct.MapParam* %2, i32 0, i32 1
  %3 = load i32, i32* %is_rgb, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %conv1 = sitofp i32 %conv to double
  %mul = fmul double %conv1, 2.126000e-01
  %6 = load i8*, i8** %src.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %7 to i32
  %conv4 = sitofp i32 %conv3 to double
  %mul5 = fmul double %conv4, 7.152000e-01
  %add = fadd double %mul, %mul5
  %8 = load i8*, i8** %src.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %8, i64 2
  %9 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %9 to i32
  %conv8 = sitofp i32 %conv7 to double
  %mul9 = fmul double %conv8, 7.220000e-02
  %add10 = fadd double %add, %mul9
  %add11 = fadd double %add10, 5.000000e-01
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load i8*, i8** %src.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %10, i64 0
  %11 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %11 to i32
  %conv14 = sitofp i32 %conv13 to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %add11, %cond.true ], [ %conv14, %cond.false ]
  %conv15 = fptosi double %cond to i32
  store i32 %conv15, i32* %lum, align 4
  %12 = load i32, i32* %lum, align 4
  %13 = load i32, i32* %bpp.addr, align 4
  %mul16 = mul nsw i32 %12, %13
  %idxprom = sext i32 %mul16 to i64
  %14 = load %struct.MapParam*, %struct.MapParam** %param, align 8
  %samples = getelementptr inbounds %struct.MapParam, %struct.MapParam* %14, i32 0, i32 0
  %15 = load i8*, i8** %samples, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 %idxprom
  store i8* %arrayidx17, i8** %samp, align 8
  %16 = load %struct.MapParam*, %struct.MapParam** %param, align 8
  %has_alpha = getelementptr inbounds %struct.MapParam, %struct.MapParam* %16, i32 0, i32 2
  %17 = load i32, i32* %has_alpha, align 4
  %tobool18 = icmp ne i32 %17, 0
  br i1 %tobool18, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %18 = load i32, i32* %b, align 4
  %19 = load i32, i32* %bpp.addr, align 4
  %sub = sub nsw i32 %19, 1
  %cmp = icmp slt i32 %18, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %b, align 4
  %idxprom20 = sext i32 %20 to i64
  %21 = load i8*, i8** %samp, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %21, i64 %idxprom20
  %22 = load i8, i8* %arrayidx21, align 1
  %23 = load i32, i32* %b, align 4
  %idxprom22 = sext i32 %23 to i64
  %24 = load i8*, i8** %dest.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %24, i64 %idxprom22
  store i8 %22, i8* %arrayidx23, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %b, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load i32, i32* %b, align 4
  %idxprom24 = sext i32 %26 to i64
  %27 = load i8*, i8** %samp, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %27, i64 %idxprom24
  %28 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %28 to i32
  %29 = load i32, i32* %b, align 4
  %idxprom27 = sext i32 %29 to i64
  %30 = load i8*, i8** %src.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %30, i64 %idxprom27
  %31 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %31 to i32
  %mul30 = mul i32 %conv26, %conv29
  %div = udiv i32 %mul30, 255
  %conv31 = trunc i32 %div to i8
  %32 = load i32, i32* %b, align 4
  %idxprom32 = sext i32 %32 to i64
  %33 = load i8*, i8** %dest.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %33, i64 %idxprom32
  store i8 %conv31, i8* %arrayidx33, align 1
  br label %if.end

if.else:                                          ; preds = %cond.end
  store i32 0, i32* %b, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.42, %if.else
  %34 = load i32, i32* %b, align 4
  %35 = load i32, i32* %bpp.addr, align 4
  %cmp35 = icmp slt i32 %34, %35
  br i1 %cmp35, label %for.body.37, label %for.end.44

for.body.37:                                      ; preds = %for.cond.34
  %36 = load i32, i32* %b, align 4
  %idxprom38 = sext i32 %36 to i64
  %37 = load i8*, i8** %samp, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %37, i64 %idxprom38
  %38 = load i8, i8* %arrayidx39, align 1
  %39 = load i32, i32* %b, align 4
  %idxprom40 = sext i32 %39 to i64
  %40 = load i8*, i8** %dest.addr, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %40, i64 %idxprom40
  store i8 %38, i8* %arrayidx41, align 1
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.body.37
  %41 = load i32, i32* %b, align 4
  %inc43 = add nsw i32 %41, 1
  store i32 %inc43, i32* %b, align 4
  br label %for.cond.34

for.end.44:                                       ; preds = %for.cond.34
  br label %if.end

if.end:                                           ; preds = %for.end.44, %for.end
  ret void
}

declare i8* @gimp_context_get_gradient() #1

declare i32 @gimp_gradient_get_uniform_samples(i8*, i32, i32, i32*, double**) #1

declare void @g_free(i8*) #1

declare i32 @gimp_drawable_bpp(i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare i8* @gimp_context_get_palette() #1

declare i32 @gimp_palette_get_info(i8*, i32*) #1

declare i32 @gimp_palette_entry_get_color(i8*, i32, %struct._GimpRGB*) #1

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #1

declare zeroext i8 @gimp_rgb_luminance_uchar(%struct._GimpRGB*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

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
