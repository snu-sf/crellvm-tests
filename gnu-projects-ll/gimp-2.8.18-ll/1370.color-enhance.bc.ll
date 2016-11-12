; ModuleID = './plug-ins/common/color-enhance.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct.ColorEnhanceParam_t = type { double, double, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [3 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"plug-in-color-enhance\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"Stretch color saturation to cover maximum possible range\00", align 1
@.str.8 = private unnamed_addr constant [393 x i8] c"This simple plug-in does an automatic saturation stretch.  For each channel in the image, it finds the minimum and maximum values... it uses those values to stretch the individual histograms to the full range.  For some images it may do just what you want; for others it may not work that well.  This version differs from Contrast Autostretch in that it works in HSV space, and preserves hue.\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Martin Weber\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"_Color Enhance\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"RGB*, INDEXED*\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"<Image>/Colors/Auto\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.14 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"Color Enhance\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"colormap was NULL!  Quitting.\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([393 x i8], [393 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i32 1, i32 3, i32 0, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0))
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
  %image_ID = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #6
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %run_mode, align 4
  %2 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data5 to i32*
  %3 = load i32, i32* %d_drawable, align 4
  %call6 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %3)
  store %struct._GimpDrawable* %call6, %struct._GimpDrawable** %drawable, align 8
  %4 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %4, i64 1
  %data8 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx7, i32 0, i32 1
  %d_image = bitcast %union._GimpParamData* %data8 to i32*
  %5 = load i32, i32* %d_image, align 4
  store i32 %5, i32* %image_ID, align 4
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 0
  %7 = load i32, i32* %drawable_id, align 4
  %call9 = call i32 @gimp_drawable_is_rgb(i32 %7)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id10 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 0
  %9 = load i32, i32* %drawable_id10, align 4
  %call11 = call i32 @gimp_drawable_is_gray(i32 %9)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %do.end
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0)) #5
  %call14 = call i32 @gimp_progress_init(i8* %call13)
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 1
  %11 = load i32, i32* %width, align 4
  %call15 = call i32 @gimp_tile_width() #6
  %div = udiv i32 %11, %call15
  %add = add i32 %div, 1
  %mul = mul i32 2, %add
  %conv = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @Color_Enhance(%struct._GimpDrawable* %12)
  %13 = load i32, i32* %run_mode, align 4
  %cmp = icmp ne i32 %13, 1
  br i1 %cmp, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.then
  %call18 = call i32 @gimp_displays_flush()
  br label %if.end

if.end:                                           ; preds = %if.then.17, %if.then
  br label %if.end.30

if.else:                                          ; preds = %lor.lhs.false
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id19 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %14, i32 0, i32 0
  %15 = load i32, i32* %drawable_id19, align 4
  %call20 = call i32 @gimp_drawable_is_indexed(i32 %15)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.else.28

if.then.22:                                       ; preds = %if.else
  %16 = load i32, i32* %image_ID, align 4
  call void @indexed_Color_Enhance(i32 %16)
  %17 = load i32, i32* %run_mode, align 4
  %cmp23 = icmp ne i32 %17, 1
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.then.22
  %call26 = call i32 @gimp_displays_flush()
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.then.22
  br label %if.end.29

if.else.28:                                       ; preds = %if.else
  store i32 0, i32* %status, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.28, %if.end.27
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end
  %18 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %18, align 4
  %19 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %19, align 8
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %20 = load i32, i32* %status, align 4
  store i32 %20, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %21)
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

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

; Function Attrs: nounwind uwtable
define internal void @Color_Enhance(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %param = alloca %struct.ColorEnhanceParam_t, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_has_alpha(i32 %1)
  %has_alpha = getelementptr inbounds %struct.ColorEnhanceParam_t, %struct.ColorEnhanceParam_t* %param, i32 0, i32 2
  store i32 %call, i32* %has_alpha, align 4
  %vhi = getelementptr inbounds %struct.ColorEnhanceParam_t, %struct.ColorEnhanceParam_t* %param, i32 0, i32 0
  store double 0.000000e+00, double* %vhi, align 8
  %vlo = getelementptr inbounds %struct.ColorEnhanceParam_t, %struct.ColorEnhanceParam_t* %param, i32 0, i32 1
  store double 1.000000e+00, double* %vlo, align 8
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %3 = bitcast %struct.ColorEnhanceParam_t* %param to i8*
  call void @gimp_rgn_iterate1(%struct._GimpDrawable* %2, i32 0, void (i8*, i32, i8*)* @find_vhi_vlo, i8* %3)
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %5 = bitcast %struct.ColorEnhanceParam_t* %param to i8*
  call void @gimp_rgn_iterate2(%struct._GimpDrawable* %4, i32 0, void (i8*, i8*, i32, i8*)* @color_enhance_func, i8* %5)
  ret void
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_drawable_is_indexed(i32) #1

; Function Attrs: nounwind uwtable
define internal void @indexed_Color_Enhance(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %cmap = alloca i8*, align 8
  %ncols = alloca i32, align 4
  %i = alloca i32, align 4
  %vhi = alloca double, align 8
  %vlo = alloca double, align 8
  %v = alloca double, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store double 0.000000e+00, double* %vhi, align 8
  store double 1.000000e+00, double* %vlo, align 8
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call i8* @gimp_image_get_colormap(i32 %0, i32* %ncols)
  store i8* %call, i8** %cmap, align 8
  %1 = load i8*, i8** %cmap, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i32 0, i32 0))
  call void @gimp_quit() #7
  unreachable

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %ncols, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %mul = mul nsw i32 3, %4
  %idxprom = sext i32 %mul to i64
  %5 = load i8*, i8** %cmap, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %call1 = call double @get_v(i8* %arrayidx)
  store double %call1, double* %v, align 8
  %6 = load double, double* %v, align 8
  %7 = load double, double* %vhi, align 8
  %cmp2 = fcmp ogt double %6, %7
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %for.body
  %8 = load double, double* %v, align 8
  store double %8, double* %vhi, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %for.body
  %9 = load double, double* %v, align 8
  %10 = load double, double* %vlo, align 8
  %cmp5 = fcmp olt double %9, %10
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  %11 = load double, double* %v, align 8
  store double %11, double* %vlo, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.4
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.17, %for.end
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %ncols, align 4
  %cmp9 = icmp slt i32 %13, %14
  br i1 %cmp9, label %for.body.10, label %for.end.19

for.body.10:                                      ; preds = %for.cond.8
  %15 = load i32, i32* %i, align 4
  %mul11 = mul nsw i32 3, %15
  %idxprom12 = sext i32 %mul11 to i64
  %16 = load i8*, i8** %cmap, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %16, i64 %idxprom12
  %17 = load i32, i32* %i, align 4
  %mul14 = mul nsw i32 3, %17
  %idxprom15 = sext i32 %mul14 to i64
  %18 = load i8*, i8** %cmap, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %18, i64 %idxprom15
  %19 = load double, double* %vlo, align 8
  %20 = load double, double* %vhi, align 8
  call void @enhance_it(i8* %arrayidx13, i8* %arrayidx16, double %19, double %20)
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.body.10
  %21 = load i32, i32* %i, align 4
  %inc18 = add nsw i32 %21, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond.8

for.end.19:                                       ; preds = %for.cond.8
  %22 = load i32, i32* %image_ID.addr, align 4
  %23 = load i8*, i8** %cmap, align 8
  %24 = load i32, i32* %ncols, align 4
  %call20 = call i32 @gimp_image_set_colormap(i32 %22, i8* %23, i32 %24)
  ret void
}

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare void @gimp_rgn_iterate1(%struct._GimpDrawable*, i32, void (i8*, i32, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @find_vhi_vlo(i8* %src, i32 %bpp, i8* %data) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %param = alloca %struct.ColorEnhanceParam_t*, align 8
  %v = alloca double, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.ColorEnhanceParam_t*
  store %struct.ColorEnhanceParam_t* %1, %struct.ColorEnhanceParam_t** %param, align 8
  %2 = load %struct.ColorEnhanceParam_t*, %struct.ColorEnhanceParam_t** %param, align 8
  %has_alpha = getelementptr inbounds %struct.ColorEnhanceParam_t, %struct.ColorEnhanceParam_t* %2, i32 0, i32 2
  %3 = load i32, i32* %has_alpha, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %4 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 3
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br i1 %tobool1, label %if.then, label %if.end.10

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load i8*, i8** %src.addr, align 8
  %call = call double @get_v(i8* %6)
  store double %call, double* %v, align 8
  %7 = load double, double* %v, align 8
  %8 = load %struct.ColorEnhanceParam_t*, %struct.ColorEnhanceParam_t** %param, align 8
  %vhi = getelementptr inbounds %struct.ColorEnhanceParam_t, %struct.ColorEnhanceParam_t* %8, i32 0, i32 0
  %9 = load double, double* %vhi, align 8
  %cmp = fcmp ogt double %7, %9
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %10 = load double, double* %v, align 8
  %11 = load %struct.ColorEnhanceParam_t*, %struct.ColorEnhanceParam_t** %param, align 8
  %vhi4 = getelementptr inbounds %struct.ColorEnhanceParam_t, %struct.ColorEnhanceParam_t* %11, i32 0, i32 0
  store double %10, double* %vhi4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %12 = load double, double* %v, align 8
  %13 = load %struct.ColorEnhanceParam_t*, %struct.ColorEnhanceParam_t** %param, align 8
  %vlo = getelementptr inbounds %struct.ColorEnhanceParam_t, %struct.ColorEnhanceParam_t* %13, i32 0, i32 1
  %14 = load double, double* %vlo, align 8
  %cmp5 = fcmp olt double %12, %14
  br i1 %cmp5, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %15 = load double, double* %v, align 8
  %16 = load %struct.ColorEnhanceParam_t*, %struct.ColorEnhanceParam_t** %param, align 8
  %vlo8 = getelementptr inbounds %struct.ColorEnhanceParam_t, %struct.ColorEnhanceParam_t* %16, i32 0, i32 1
  store double %15, double* %vlo8, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %lor.lhs.false
  ret void
}

declare void @gimp_rgn_iterate2(%struct._GimpDrawable*, i32, void (i8*, i8*, i32, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @color_enhance_func(i8* %src, i8* %dest, i32 %bpp, i8* %data) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %param = alloca %struct.ColorEnhanceParam_t*, align 8
  store i8* %src, i8** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.ColorEnhanceParam_t*
  store %struct.ColorEnhanceParam_t* %1, %struct.ColorEnhanceParam_t** %param, align 8
  %2 = load i8*, i8** %src.addr, align 8
  %3 = load i8*, i8** %dest.addr, align 8
  %4 = load %struct.ColorEnhanceParam_t*, %struct.ColorEnhanceParam_t** %param, align 8
  %vlo = getelementptr inbounds %struct.ColorEnhanceParam_t, %struct.ColorEnhanceParam_t* %4, i32 0, i32 1
  %5 = load double, double* %vlo, align 8
  %6 = load %struct.ColorEnhanceParam_t*, %struct.ColorEnhanceParam_t** %param, align 8
  %vhi = getelementptr inbounds %struct.ColorEnhanceParam_t, %struct.ColorEnhanceParam_t* %6, i32 0, i32 0
  %7 = load double, double* %vhi, align 8
  call void @enhance_it(i8* %2, i8* %3, double %5, double %7)
  %8 = load %struct.ColorEnhanceParam_t*, %struct.ColorEnhanceParam_t** %param, align 8
  %has_alpha = getelementptr inbounds %struct.ColorEnhanceParam_t, %struct.ColorEnhanceParam_t* %8, i32 0, i32 2
  %9 = load i32, i32* %has_alpha, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 3
  %11 = load i8, i8* %arrayidx, align 1
  %12 = load i8*, i8** %dest.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %12, i64 3
  store i8 %11, i8* %arrayidx1, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @get_v(i8* %src) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %h = alloca double, align 8
  %z = alloca double, align 8
  %v = alloca double, align 8
  %c = alloca i32, align 4
  %m = alloca i32, align 4
  %y = alloca i32, align 4
  %k = alloca i32, align 4
  %map = alloca [3 x i8], align 1
  store i8* %src, i8** %src.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %sub = sub nsw i32 255, %conv
  store i32 %sub, i32* %c, align 4
  %2 = load i8*, i8** %src.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %sub3 = sub nsw i32 255, %conv2
  store i32 %sub3, i32* %m, align 4
  %4 = load i8*, i8** %src.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %4, i64 2
  %5 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %sub6 = sub nsw i32 255, %conv5
  store i32 %sub6, i32* %y, align 4
  %6 = load i32, i32* %c, align 4
  store i32 %6, i32* %k, align 4
  %7 = load i32, i32* %m, align 4
  %8 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %m, align 4
  store i32 %9, i32* %k, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, i32* %y, align 4
  %11 = load i32, i32* %k, align 4
  %cmp8 = icmp slt i32 %10, %11
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  %12 = load i32, i32* %y, align 4
  store i32 %12, i32* %k, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end
  %13 = load i32, i32* %c, align 4
  %14 = load i32, i32* %k, align 4
  %sub12 = sub nsw i32 %13, %14
  %conv13 = trunc i32 %sub12 to i8
  %arrayidx14 = getelementptr inbounds [3 x i8], [3 x i8]* %map, i32 0, i64 0
  store i8 %conv13, i8* %arrayidx14, align 1
  %15 = load i32, i32* %m, align 4
  %16 = load i32, i32* %k, align 4
  %sub15 = sub nsw i32 %15, %16
  %conv16 = trunc i32 %sub15 to i8
  %arrayidx17 = getelementptr inbounds [3 x i8], [3 x i8]* %map, i32 0, i64 1
  store i8 %conv16, i8* %arrayidx17, align 1
  %17 = load i32, i32* %y, align 4
  %18 = load i32, i32* %k, align 4
  %sub18 = sub nsw i32 %17, %18
  %conv19 = trunc i32 %sub18 to i8
  %arrayidx20 = getelementptr inbounds [3 x i8], [3 x i8]* %map, i32 0, i64 2
  store i8 %conv19, i8* %arrayidx20, align 1
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %map, i32 0, i32 0
  call void @gimp_rgb_to_hsv4(i8* %arraydecay, double* %h, double* %z, double* %v)
  %19 = load double, double* %v, align 8
  ret double %19
}

declare void @gimp_rgb_to_hsv4(i8*, double*, double*, double*) #1

; Function Attrs: nounwind uwtable
define internal void @enhance_it(i8* %src, i8* %dest, double %vlo, double %vhi) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %vlo.addr = alloca double, align 8
  %vhi.addr = alloca double, align 8
  %h = alloca double, align 8
  %z = alloca double, align 8
  %v = alloca double, align 8
  %c = alloca i32, align 4
  %m = alloca i32, align 4
  %y = alloca i32, align 4
  %k = alloca i32, align 4
  %map = alloca [3 x i8], align 1
  store i8* %src, i8** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store double %vlo, double* %vlo.addr, align 8
  store double %vhi, double* %vhi.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %sub = sub nsw i32 255, %conv
  store i32 %sub, i32* %c, align 4
  %2 = load i8*, i8** %src.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %sub3 = sub nsw i32 255, %conv2
  store i32 %sub3, i32* %m, align 4
  %4 = load i8*, i8** %src.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %4, i64 2
  %5 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %sub6 = sub nsw i32 255, %conv5
  store i32 %sub6, i32* %y, align 4
  %6 = load i32, i32* %c, align 4
  store i32 %6, i32* %k, align 4
  %7 = load i32, i32* %m, align 4
  %8 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %m, align 4
  store i32 %9, i32* %k, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, i32* %y, align 4
  %11 = load i32, i32* %k, align 4
  %cmp8 = icmp slt i32 %10, %11
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  %12 = load i32, i32* %y, align 4
  store i32 %12, i32* %k, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end
  %13 = load i32, i32* %c, align 4
  %14 = load i32, i32* %k, align 4
  %sub12 = sub nsw i32 %13, %14
  %conv13 = trunc i32 %sub12 to i8
  %arrayidx14 = getelementptr inbounds [3 x i8], [3 x i8]* %map, i32 0, i64 0
  store i8 %conv13, i8* %arrayidx14, align 1
  %15 = load i32, i32* %m, align 4
  %16 = load i32, i32* %k, align 4
  %sub15 = sub nsw i32 %15, %16
  %conv16 = trunc i32 %sub15 to i8
  %arrayidx17 = getelementptr inbounds [3 x i8], [3 x i8]* %map, i32 0, i64 1
  store i8 %conv16, i8* %arrayidx17, align 1
  %17 = load i32, i32* %y, align 4
  %18 = load i32, i32* %k, align 4
  %sub18 = sub nsw i32 %17, %18
  %conv19 = trunc i32 %sub18 to i8
  %arrayidx20 = getelementptr inbounds [3 x i8], [3 x i8]* %map, i32 0, i64 2
  store i8 %conv19, i8* %arrayidx20, align 1
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %map, i32 0, i32 0
  call void @gimp_rgb_to_hsv4(i8* %arraydecay, double* %h, double* %z, double* %v)
  %19 = load double, double* %vhi.addr, align 8
  %20 = load double, double* %vlo.addr, align 8
  %cmp21 = fcmp une double %19, %20
  br i1 %cmp21, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %if.end.11
  %21 = load double, double* %v, align 8
  %22 = load double, double* %vlo.addr, align 8
  %sub24 = fsub double %21, %22
  %23 = load double, double* %vhi.addr, align 8
  %24 = load double, double* %vlo.addr, align 8
  %sub25 = fsub double %23, %24
  %div = fdiv double %sub24, %sub25
  store double %div, double* %v, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %if.end.11
  %arraydecay27 = getelementptr inbounds [3 x i8], [3 x i8]* %map, i32 0, i32 0
  %25 = load double, double* %h, align 8
  %26 = load double, double* %z, align 8
  %27 = load double, double* %v, align 8
  call void @gimp_hsv_to_rgb4(i8* %arraydecay27, double %25, double %26, double %27)
  %arrayidx28 = getelementptr inbounds [3 x i8], [3 x i8]* %map, i32 0, i64 0
  %28 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %28 to i32
  store i32 %conv29, i32* %c, align 4
  %arrayidx30 = getelementptr inbounds [3 x i8], [3 x i8]* %map, i32 0, i64 1
  %29 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %29 to i32
  store i32 %conv31, i32* %m, align 4
  %arrayidx32 = getelementptr inbounds [3 x i8], [3 x i8]* %map, i32 0, i64 2
  %30 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %30 to i32
  store i32 %conv33, i32* %y, align 4
  %31 = load i32, i32* %k, align 4
  %32 = load i32, i32* %c, align 4
  %add = add nsw i32 %32, %31
  store i32 %add, i32* %c, align 4
  %33 = load i32, i32* %c, align 4
  %cmp34 = icmp sgt i32 %33, 255
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.26
  store i32 255, i32* %c, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end.26
  %34 = load i32, i32* %k, align 4
  %35 = load i32, i32* %m, align 4
  %add38 = add nsw i32 %35, %34
  store i32 %add38, i32* %m, align 4
  %36 = load i32, i32* %m, align 4
  %cmp39 = icmp sgt i32 %36, 255
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.37
  store i32 255, i32* %m, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.end.37
  %37 = load i32, i32* %k, align 4
  %38 = load i32, i32* %y, align 4
  %add43 = add nsw i32 %38, %37
  store i32 %add43, i32* %y, align 4
  %39 = load i32, i32* %y, align 4
  %cmp44 = icmp sgt i32 %39, 255
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.42
  store i32 255, i32* %y, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %if.end.42
  %40 = load i32, i32* %c, align 4
  %sub48 = sub nsw i32 255, %40
  %conv49 = trunc i32 %sub48 to i8
  %41 = load i8*, i8** %dest.addr, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %41, i64 0
  store i8 %conv49, i8* %arrayidx50, align 1
  %42 = load i32, i32* %m, align 4
  %sub51 = sub nsw i32 255, %42
  %conv52 = trunc i32 %sub51 to i8
  %43 = load i8*, i8** %dest.addr, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %43, i64 1
  store i8 %conv52, i8* %arrayidx53, align 1
  %44 = load i32, i32* %y, align 4
  %sub54 = sub nsw i32 255, %44
  %conv55 = trunc i32 %sub54 to i8
  %45 = load i8*, i8** %dest.addr, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %45, i64 2
  store i8 %conv55, i8* %arrayidx56, align 1
  ret void
}

declare void @gimp_hsv_to_rgb4(i8*, double, double, double) #1

declare i8* @gimp_image_get_colormap(i32, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @g_message(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* null, i32 32, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: noreturn
declare void @gimp_quit() #4

declare i32 @gimp_image_set_colormap(i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
