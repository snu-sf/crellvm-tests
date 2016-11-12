; ModuleID = './plug-ins/common/contrast-stretch-hsv.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.AutostretchData = type { double, double, double, double }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [3 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"plug-in-autostretch-hsv\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"Stretch image contrast to cover the maximum possible range\00", align 1
@.str.8 = private unnamed_addr constant [398 x i8] c"This simple plug-in does an automatic contrast stretch.  For each channel in the image, it finds the minimum and maximum values... it uses those values to stretch the individual histograms to the full contrast range.  For some images it may do just what you want; for others it may be total crap :).  This version differs from Contrast Autostretch in that it works in HSV space, and preserves hue.\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"Scott Goehring and Federico Mena Quintero\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"Stretch _HSV\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"RGB*, INDEXED*\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"<Image>/Colors/Auto\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.14 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"Auto-Stretching HSV\00", align 1
@autostretch_hsv.data = private unnamed_addr constant %struct.AutostretchData { double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 1.000000e+00 }, align 8
@indexed_autostretch_hsv.data = private unnamed_addr constant %struct.AutostretchData { double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 1.000000e+00 }, align 8
@.str.17 = private unnamed_addr constant [46 x i8] c"autostretch_hsv: cmap was NULL!  Quitting...\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([398 x i8], [398 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i32 1, i32 3, i32 0, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0))
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
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0)) #4
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
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0)) #4
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
  call void @autostretch_hsv(%struct._GimpDrawable* %12)
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
  call void @indexed_autostretch_hsv(i32 %16)
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
define internal void @autostretch_hsv(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %data = alloca %struct.AutostretchData, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = bitcast %struct.AutostretchData* %data to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct.AutostretchData* @autostretch_hsv.data to i8*), i64 32, i32 8, i1 false)
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %2 = bitcast %struct.AutostretchData* %data to i8*
  call void @gimp_rgn_iterate1(%struct._GimpDrawable* %1, i32 0, void (i8*, i32, i8*)* bitcast (void (i8*, i32, %struct.AutostretchData*)* @find_max to void (i8*, i32, i8*)*), i8* %2)
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %4 = bitcast %struct.AutostretchData* %data to i8*
  call void @gimp_rgn_iterate2(%struct._GimpDrawable* %3, i32 0, void (i8*, i8*, i32, i8*)* bitcast (void (i8*, i8*, i32, %struct.AutostretchData*)* @autostretch_hsv_func to void (i8*, i8*, i32, i8*)*), i8* %4)
  ret void
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_drawable_is_indexed(i32) #1

; Function Attrs: nounwind uwtable
define internal void @indexed_autostretch_hsv(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %cmap = alloca i8*, align 8
  %data = alloca %struct.AutostretchData, align 8
  %ncols = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  %0 = bitcast %struct.AutostretchData* %data to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct.AutostretchData* @indexed_autostretch_hsv.data to i8*), i64 32, i32 8, i1 false)
  %1 = load i32, i32* %image_ID.addr, align 4
  %call = call i8* @gimp_image_get_colormap(i32 %1, i32* %ncols)
  store i8* %call, i8** %cmap, align 8
  %2 = load i8*, i8** %cmap, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.17, i32 0, i32 0)) #4
  call void (i8*, ...) @g_message(i8* %call1)
  call void @gimp_quit() #7
  unreachable

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %ncols, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %5, 3
  %idxprom = sext i32 %mul to i64
  %6 = load i8*, i8** %cmap, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  call void @find_max(i8* %arrayidx, i32 3, %struct.AutostretchData* %data)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.11, %for.end
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %ncols, align 4
  %cmp3 = icmp slt i32 %8, %9
  br i1 %cmp3, label %for.body.4, label %for.end.13

for.body.4:                                       ; preds = %for.cond.2
  %10 = load i32, i32* %i, align 4
  %mul5 = mul nsw i32 %10, 3
  %idxprom6 = sext i32 %mul5 to i64
  %11 = load i8*, i8** %cmap, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %11, i64 %idxprom6
  %12 = load i32, i32* %i, align 4
  %mul8 = mul nsw i32 %12, 3
  %idxprom9 = sext i32 %mul8 to i64
  %13 = load i8*, i8** %cmap, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %13, i64 %idxprom9
  call void @autostretch_hsv_func(i8* %arrayidx7, i8* %arrayidx10, i32 3, %struct.AutostretchData* %data)
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.body.4
  %14 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %14, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond.2

for.end.13:                                       ; preds = %for.cond.2
  %15 = load i32, i32* %image_ID.addr, align 4
  %16 = load i8*, i8** %cmap, align 8
  %17 = load i32, i32* %ncols, align 4
  %call14 = call i32 @gimp_image_set_colormap(i32 %15, i8* %16, i32 %17)
  ret void
}

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @gimp_rgn_iterate1(%struct._GimpDrawable*, i32, void (i8*, i32, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @find_max(i8* %src, i32 %bpp, %struct.AutostretchData* %data) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %data.addr = alloca %struct.AutostretchData*, align 8
  %h = alloca double, align 8
  %s = alloca double, align 8
  %v = alloca double, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store %struct.AutostretchData* %data, %struct.AutostretchData** %data.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  call void @gimp_rgb_to_hsv4(i8* %0, double* %h, double* %s, double* %v)
  %1 = load double, double* %s, align 8
  %2 = load %struct.AutostretchData*, %struct.AutostretchData** %data.addr, align 8
  %shi = getelementptr inbounds %struct.AutostretchData, %struct.AutostretchData* %2, i32 0, i32 0
  %3 = load double, double* %shi, align 8
  %cmp = fcmp ogt double %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load double, double* %s, align 8
  %5 = load %struct.AutostretchData*, %struct.AutostretchData** %data.addr, align 8
  %shi1 = getelementptr inbounds %struct.AutostretchData, %struct.AutostretchData* %5, i32 0, i32 0
  store double %4, double* %shi1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load double, double* %s, align 8
  %7 = load %struct.AutostretchData*, %struct.AutostretchData** %data.addr, align 8
  %slo = getelementptr inbounds %struct.AutostretchData, %struct.AutostretchData* %7, i32 0, i32 1
  %8 = load double, double* %slo, align 8
  %cmp2 = fcmp olt double %6, %8
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %9 = load double, double* %s, align 8
  %10 = load %struct.AutostretchData*, %struct.AutostretchData** %data.addr, align 8
  %slo4 = getelementptr inbounds %struct.AutostretchData, %struct.AutostretchData* %10, i32 0, i32 1
  store double %9, double* %slo4, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %11 = load double, double* %v, align 8
  %12 = load %struct.AutostretchData*, %struct.AutostretchData** %data.addr, align 8
  %vhi = getelementptr inbounds %struct.AutostretchData, %struct.AutostretchData* %12, i32 0, i32 2
  %13 = load double, double* %vhi, align 8
  %cmp6 = fcmp ogt double %11, %13
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.5
  %14 = load double, double* %v, align 8
  %15 = load %struct.AutostretchData*, %struct.AutostretchData** %data.addr, align 8
  %vhi8 = getelementptr inbounds %struct.AutostretchData, %struct.AutostretchData* %15, i32 0, i32 2
  store double %14, double* %vhi8, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end.5
  %16 = load double, double* %v, align 8
  %17 = load %struct.AutostretchData*, %struct.AutostretchData** %data.addr, align 8
  %vlo = getelementptr inbounds %struct.AutostretchData, %struct.AutostretchData* %17, i32 0, i32 3
  %18 = load double, double* %vlo, align 8
  %cmp10 = fcmp olt double %16, %18
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.9
  %19 = load double, double* %v, align 8
  %20 = load %struct.AutostretchData*, %struct.AutostretchData** %data.addr, align 8
  %vlo12 = getelementptr inbounds %struct.AutostretchData, %struct.AutostretchData* %20, i32 0, i32 3
  store double %19, double* %vlo12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end.9
  ret void
}

declare void @gimp_rgn_iterate2(%struct._GimpDrawable*, i32, void (i8*, i8*, i32, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @autostretch_hsv_func(i8* %src, i8* %dest, i32 %bpp, %struct.AutostretchData* %data) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %data.addr = alloca %struct.AutostretchData*, align 8
  %h = alloca double, align 8
  %s = alloca double, align 8
  %v = alloca double, align 8
  store i8* %src, i8** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store %struct.AutostretchData* %data, %struct.AutostretchData** %data.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  call void @gimp_rgb_to_hsv4(i8* %0, double* %h, double* %s, double* %v)
  %1 = load %struct.AutostretchData*, %struct.AutostretchData** %data.addr, align 8
  %shi = getelementptr inbounds %struct.AutostretchData, %struct.AutostretchData* %1, i32 0, i32 0
  %2 = load double, double* %shi, align 8
  %3 = load %struct.AutostretchData*, %struct.AutostretchData** %data.addr, align 8
  %slo = getelementptr inbounds %struct.AutostretchData, %struct.AutostretchData* %3, i32 0, i32 1
  %4 = load double, double* %slo, align 8
  %cmp = fcmp une double %2, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load double, double* %s, align 8
  %6 = load %struct.AutostretchData*, %struct.AutostretchData** %data.addr, align 8
  %slo1 = getelementptr inbounds %struct.AutostretchData, %struct.AutostretchData* %6, i32 0, i32 1
  %7 = load double, double* %slo1, align 8
  %sub = fsub double %5, %7
  %8 = load %struct.AutostretchData*, %struct.AutostretchData** %data.addr, align 8
  %shi2 = getelementptr inbounds %struct.AutostretchData, %struct.AutostretchData* %8, i32 0, i32 0
  %9 = load double, double* %shi2, align 8
  %10 = load %struct.AutostretchData*, %struct.AutostretchData** %data.addr, align 8
  %slo3 = getelementptr inbounds %struct.AutostretchData, %struct.AutostretchData* %10, i32 0, i32 1
  %11 = load double, double* %slo3, align 8
  %sub4 = fsub double %9, %11
  %div = fdiv double %sub, %sub4
  store double %div, double* %s, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.AutostretchData*, %struct.AutostretchData** %data.addr, align 8
  %vhi = getelementptr inbounds %struct.AutostretchData, %struct.AutostretchData* %12, i32 0, i32 2
  %13 = load double, double* %vhi, align 8
  %14 = load %struct.AutostretchData*, %struct.AutostretchData** %data.addr, align 8
  %vlo = getelementptr inbounds %struct.AutostretchData, %struct.AutostretchData* %14, i32 0, i32 3
  %15 = load double, double* %vlo, align 8
  %cmp5 = fcmp une double %13, %15
  br i1 %cmp5, label %if.then.6, label %if.end.13

if.then.6:                                        ; preds = %if.end
  %16 = load double, double* %v, align 8
  %17 = load %struct.AutostretchData*, %struct.AutostretchData** %data.addr, align 8
  %vlo7 = getelementptr inbounds %struct.AutostretchData, %struct.AutostretchData* %17, i32 0, i32 3
  %18 = load double, double* %vlo7, align 8
  %sub8 = fsub double %16, %18
  %19 = load %struct.AutostretchData*, %struct.AutostretchData** %data.addr, align 8
  %vhi9 = getelementptr inbounds %struct.AutostretchData, %struct.AutostretchData* %19, i32 0, i32 2
  %20 = load double, double* %vhi9, align 8
  %21 = load %struct.AutostretchData*, %struct.AutostretchData** %data.addr, align 8
  %vlo10 = getelementptr inbounds %struct.AutostretchData, %struct.AutostretchData* %21, i32 0, i32 3
  %22 = load double, double* %vlo10, align 8
  %sub11 = fsub double %20, %22
  %div12 = fdiv double %sub8, %sub11
  store double %div12, double* %v, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.6, %if.end
  %23 = load i8*, i8** %dest.addr, align 8
  %24 = load double, double* %h, align 8
  %25 = load double, double* %s, align 8
  %26 = load double, double* %v, align 8
  call void @gimp_hsv_to_rgb4(i8* %23, double %24, double %25, double %26)
  %27 = load i32, i32* %bpp.addr, align 4
  %cmp14 = icmp eq i32 %27, 4
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.13
  %28 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %28, i64 3
  %29 = load i8, i8* %arrayidx, align 1
  %30 = load i8*, i8** %dest.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %30, i64 3
  store i8 %29, i8* %arrayidx16, align 1
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.13
  ret void
}

declare void @gimp_rgb_to_hsv4(i8*, double*, double*, double*) #1

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
declare void @gimp_quit() #5

declare i32 @gimp_image_set_colormap(i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
