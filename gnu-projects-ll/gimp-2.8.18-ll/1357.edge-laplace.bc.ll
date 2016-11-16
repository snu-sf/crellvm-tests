; ModuleID = './plug-ins/common/edge-laplace.bc'
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
@query.args = internal constant [3 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Input image (unused)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"plug-in-laplace\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"High-resolution edge detection\00", align 1
@.str.8 = private unnamed_addr constant [295 x i8] c"This plugin creates one-pixel wide edges from the image, with the value proportional to the gradient. It uses the Laplace operator (a 3x3 kernel with -8 in the middle). The image has to be laplacered to get useful results, a gauss_iir with 1.5 - 5.0 depending on the noise in the image is best.\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Thorsten Schnier\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"_Laplace\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"<Image>/Filters/Edge-Detect\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.14 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"Laplace\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"Cleanup\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([295 x i8], [295 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i32 1, i32 3, i32 0, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0))
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
  %call = call i8* @gimp_locale_directory() #4
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 2
  %data5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx4, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data5 to i32*
  %3 = load i32, i32* %d_drawable, align 4
  %call6 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %3)
  store %struct._GimpDrawable* %call6, %struct._GimpDrawable** %drawable, align 8
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 0
  %5 = load i32, i32* %drawable_id, align 4
  %call7 = call i32 @gimp_drawable_is_rgb(i32 %5)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id8 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 0
  %7 = load i32, i32* %drawable_id8, align 4
  %call9 = call i32 @gimp_drawable_is_gray(i32 %7)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %do.end
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 1
  %9 = load i32, i32* %width, align 4
  %call11 = call i32 @gimp_tile_width() #4
  %div = udiv i32 %9, %call11
  %add = add i32 %div, 1
  %mul = mul i32 2, %add
  %conv = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @laplace(%struct._GimpDrawable* %10)
  %11 = load i32, i32* %run_mode, align 4
  %cmp = icmp ne i32 %11, 1
  br i1 %cmp, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then
  %call14 = call i32 @gimp_displays_flush()
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.then
  br label %if.end.15

if.else:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %status, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.end
  %12 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %12, align 4
  %13 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %13, align 8
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %14 = load i32, i32* %status, align 4
  store i32 %14, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %15)
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

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

; Function Attrs: nounwind uwtable
define internal void @laplace(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %srcPR = alloca %struct._GimpPixelRgn, align 8
  %destPR = alloca %struct._GimpPixelRgn, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bytes = alloca i32, align 4
  %current = alloca i32, align 4
  %gradient = alloca i32, align 4
  %alpha = alloca i32, align 4
  %counter = alloca i32, align 4
  %dest = alloca i8*, align 8
  %d = alloca i8*, align 8
  %prev_row = alloca i8*, align 8
  %pr = alloca i8*, align 8
  %cur_row = alloca i8*, align 8
  %cr = alloca i8*, align 8
  %next_row = alloca i8*, align 8
  %nr = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %minval = alloca i32, align 4
  %maxval = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_bounds(i32 %1, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0)) #5
  %call10 = call i32 @gimp_progress_init(i8* %call9)
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width11 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 1
  %3 = load i32, i32* %width11, align 4
  store i32 %3, i32* %width, align 4
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height12 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 2
  %5 = load i32, i32* %height12, align 4
  store i32 %5, i32* %height, align 4
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 3
  %7 = load i32, i32* %bpp, align 4
  store i32 %7, i32* %bytes, align 4
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id13 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 0
  %9 = load i32, i32* %drawable_id13, align 4
  %call14 = call i32 @gimp_drawable_has_alpha(i32 %9)
  store i32 %call14, i32* %alpha, align 4
  %10 = load i32, i32* %x2, align 4
  %11 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %10, %11
  %add = add nsw i32 %sub, 2
  %12 = load i32, i32* %bytes, align 4
  %mul = mul nsw i32 %add, %12
  %conv = sext i32 %mul to i64
  %call15 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call15, i8** %prev_row, align 8
  %13 = load i32, i32* %x2, align 4
  %14 = load i32, i32* %x1, align 4
  %sub16 = sub nsw i32 %13, %14
  %add17 = add nsw i32 %sub16, 2
  %15 = load i32, i32* %bytes, align 4
  %mul18 = mul nsw i32 %add17, %15
  %conv19 = sext i32 %mul18 to i64
  %call20 = call noalias i8* @g_malloc_n(i64 %conv19, i64 1)
  store i8* %call20, i8** %cur_row, align 8
  %16 = load i32, i32* %x2, align 4
  %17 = load i32, i32* %x1, align 4
  %sub21 = sub nsw i32 %16, %17
  %add22 = add nsw i32 %sub21, 2
  %18 = load i32, i32* %bytes, align 4
  %mul23 = mul nsw i32 %add22, %18
  %conv24 = sext i32 %mul23 to i64
  %call25 = call noalias i8* @g_malloc_n(i64 %conv24, i64 1)
  store i8* %call25, i8** %next_row, align 8
  %19 = load i32, i32* %x2, align 4
  %20 = load i32, i32* %x1, align 4
  %sub26 = sub nsw i32 %19, %20
  %21 = load i32, i32* %bytes, align 4
  %mul27 = mul nsw i32 %sub26, %21
  %conv28 = sext i32 %mul27 to i64
  %call29 = call noalias i8* @g_malloc_n(i64 %conv28, i64 1)
  store i8* %call29, i8** %dest, align 8
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %23 = load i32, i32* %width, align 4
  %24 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %srcPR, %struct._GimpDrawable* %22, i32 0, i32 0, i32 %23, i32 %24, i32 0, i32 0)
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %26 = load i32, i32* %width, align 4
  %27 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %destPR, %struct._GimpDrawable* %25, i32 0, i32 0, i32 %26, i32 %27, i32 1, i32 1)
  %28 = load i8*, i8** %prev_row, align 8
  %29 = load i32, i32* %bytes, align 4
  %idx.ext = sext i32 %29 to i64
  %add.ptr = getelementptr inbounds i8, i8* %28, i64 %idx.ext
  store i8* %add.ptr, i8** %pr, align 8
  %30 = load i8*, i8** %cur_row, align 8
  %31 = load i32, i32* %bytes, align 4
  %idx.ext30 = sext i32 %31 to i64
  %add.ptr31 = getelementptr inbounds i8, i8* %30, i64 %idx.ext30
  store i8* %add.ptr31, i8** %cr, align 8
  %32 = load i8*, i8** %next_row, align 8
  %33 = load i32, i32* %bytes, align 4
  %idx.ext32 = sext i32 %33 to i64
  %add.ptr33 = getelementptr inbounds i8, i8* %32, i64 %idx.ext32
  store i8* %add.ptr33, i8** %nr, align 8
  %34 = load i8*, i8** %pr, align 8
  %35 = load i32, i32* %x1, align 4
  %36 = load i32, i32* %y1, align 4
  %sub34 = sub nsw i32 %36, 1
  %37 = load i32, i32* %x2, align 4
  %38 = load i32, i32* %x1, align 4
  %sub35 = sub nsw i32 %37, %38
  call void @laplace_prepare_row(%struct._GimpPixelRgn* %srcPR, i8* %34, i32 %35, i32 %sub34, i32 %sub35)
  %39 = load i8*, i8** %cr, align 8
  %40 = load i32, i32* %x1, align 4
  %41 = load i32, i32* %y1, align 4
  %42 = load i32, i32* %x2, align 4
  %43 = load i32, i32* %x1, align 4
  %sub36 = sub nsw i32 %42, %43
  call void @laplace_prepare_row(%struct._GimpPixelRgn* %srcPR, i8* %39, i32 %40, i32 %41, i32 %sub36)
  %44 = load i32, i32* %y1, align 4
  store i32 %44, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.148, %entry
  %45 = load i32, i32* %row, align 4
  %46 = load i32, i32* %y2, align 4
  %cmp = icmp slt i32 %45, %46
  br i1 %cmp, label %for.body, label %for.end.150

for.body:                                         ; preds = %for.cond
  %47 = load i8*, i8** %nr, align 8
  %48 = load i32, i32* %x1, align 4
  %49 = load i32, i32* %row, align 4
  %add38 = add nsw i32 %49, 1
  %50 = load i32, i32* %x2, align 4
  %51 = load i32, i32* %x1, align 4
  %sub39 = sub nsw i32 %50, %51
  call void @laplace_prepare_row(%struct._GimpPixelRgn* %srcPR, i8* %47, i32 %48, i32 %add38, i32 %sub39)
  %52 = load i8*, i8** %dest, align 8
  store i8* %52, i8** %d, align 8
  store i32 0, i32* %col, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc, %for.body
  %53 = load i32, i32* %col, align 4
  %54 = load i32, i32* %x2, align 4
  %55 = load i32, i32* %x1, align 4
  %sub41 = sub nsw i32 %54, %55
  %56 = load i32, i32* %bytes, align 4
  %mul42 = mul nsw i32 %sub41, %56
  %cmp43 = icmp slt i32 %53, %mul42
  br i1 %cmp43, label %for.body.45, label %for.end

for.body.45:                                      ; preds = %for.cond.40
  %57 = load i32, i32* %alpha, align 4
  %tobool = icmp ne i32 %57, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body.45
  %58 = load i32, i32* %col, align 4
  %add46 = add nsw i32 %58, 1
  %59 = load i32, i32* %bytes, align 4
  %rem = srem i32 %add46, %59
  %cmp47 = icmp eq i32 %rem, 0
  br i1 %cmp47, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %60 = load i32, i32* %col, align 4
  %idxprom = sext i32 %60 to i64
  %61 = load i8*, i8** %cr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %61, i64 %idxprom
  %62 = load i8, i8* %arrayidx, align 1
  %63 = load i8*, i8** %d, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr, i8** %d, align 8
  store i8 %62, i8* %63, align 1
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %for.body.45
  %64 = load i32, i32* %col, align 4
  %idxprom49 = sext i32 %64 to i64
  %65 = load i8*, i8** %pr, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %65, i64 %idxprom49
  %66 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %66 to i32
  %67 = load i32, i32* %col, align 4
  %68 = load i32, i32* %bytes, align 4
  %sub52 = sub nsw i32 %67, %68
  %idxprom53 = sext i32 %sub52 to i64
  %69 = load i8*, i8** %cr, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %69, i64 %idxprom53
  %70 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %70 to i32
  %71 = load i32, i32* %col, align 4
  %idxprom56 = sext i32 %71 to i64
  %72 = load i8*, i8** %cr, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %72, i64 %idxprom56
  %73 = load i8, i8* %arrayidx57, align 1
  %conv58 = zext i8 %73 to i32
  %74 = load i32, i32* %col, align 4
  %75 = load i32, i32* %bytes, align 4
  %add59 = add nsw i32 %74, %75
  %idxprom60 = sext i32 %add59 to i64
  %76 = load i8*, i8** %cr, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %76, i64 %idxprom60
  %77 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %77 to i32
  %78 = load i32, i32* %col, align 4
  %idxprom63 = sext i32 %78 to i64
  %79 = load i8*, i8** %nr, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %79, i64 %idxprom63
  %80 = load i8, i8* %arrayidx64, align 1
  %conv65 = zext i8 %80 to i32
  call void @minmax(i32 %conv51, i32 %conv55, i32 %conv58, i32 %conv62, i32 %conv65, i32* %minval, i32* %maxval)
  %81 = load i32, i32* %maxval, align 4
  %82 = load i32, i32* %col, align 4
  %idxprom66 = sext i32 %82 to i64
  %83 = load i8*, i8** %cr, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %83, i64 %idxprom66
  %84 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %84 to i32
  %sub69 = sub nsw i32 %81, %conv68
  %85 = load i32, i32* %col, align 4
  %idxprom70 = sext i32 %85 to i64
  %86 = load i8*, i8** %cr, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %86, i64 %idxprom70
  %87 = load i8, i8* %arrayidx71, align 1
  %conv72 = zext i8 %87 to i32
  %88 = load i32, i32* %minval, align 4
  %sub73 = sub nsw i32 %conv72, %88
  %cmp74 = icmp sgt i32 %sub69, %sub73
  br i1 %cmp74, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %89 = load i32, i32* %maxval, align 4
  %90 = load i32, i32* %col, align 4
  %idxprom76 = sext i32 %90 to i64
  %91 = load i8*, i8** %cr, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %91, i64 %idxprom76
  %92 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %92 to i32
  %sub79 = sub nsw i32 %89, %conv78
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %93 = load i32, i32* %col, align 4
  %idxprom80 = sext i32 %93 to i64
  %94 = load i8*, i8** %cr, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %94, i64 %idxprom80
  %95 = load i8, i8* %arrayidx81, align 1
  %conv82 = zext i8 %95 to i32
  %96 = load i32, i32* %minval, align 4
  %sub83 = sub nsw i32 %conv82, %96
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub79, %cond.true ], [ %sub83, %cond.false ]
  %conv84 = sitofp i32 %cond to double
  %mul85 = fmul double 5.000000e-01, %conv84
  %conv86 = fptosi double %mul85 to i32
  store i32 %conv86, i32* %gradient, align 4
  %97 = load i32, i32* %col, align 4
  %98 = load i32, i32* %bytes, align 4
  %sub87 = sub nsw i32 %97, %98
  %idxprom88 = sext i32 %sub87 to i64
  %99 = load i8*, i8** %pr, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %99, i64 %idxprom88
  %100 = load i8, i8* %arrayidx89, align 1
  %conv90 = zext i8 %100 to i32
  %101 = load i32, i32* %col, align 4
  %idxprom91 = sext i32 %101 to i64
  %102 = load i8*, i8** %pr, align 8
  %arrayidx92 = getelementptr inbounds i8, i8* %102, i64 %idxprom91
  %103 = load i8, i8* %arrayidx92, align 1
  %conv93 = zext i8 %103 to i32
  %add94 = add nsw i32 %conv90, %conv93
  %104 = load i32, i32* %col, align 4
  %105 = load i32, i32* %bytes, align 4
  %add95 = add nsw i32 %104, %105
  %idxprom96 = sext i32 %add95 to i64
  %106 = load i8*, i8** %pr, align 8
  %arrayidx97 = getelementptr inbounds i8, i8* %106, i64 %idxprom96
  %107 = load i8, i8* %arrayidx97, align 1
  %conv98 = zext i8 %107 to i32
  %add99 = add nsw i32 %add94, %conv98
  %108 = load i32, i32* %col, align 4
  %109 = load i32, i32* %bytes, align 4
  %sub100 = sub nsw i32 %108, %109
  %idxprom101 = sext i32 %sub100 to i64
  %110 = load i8*, i8** %cr, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %110, i64 %idxprom101
  %111 = load i8, i8* %arrayidx102, align 1
  %conv103 = zext i8 %111 to i32
  %add104 = add nsw i32 %add99, %conv103
  %112 = load i32, i32* %col, align 4
  %idxprom105 = sext i32 %112 to i64
  %113 = load i8*, i8** %cr, align 8
  %arrayidx106 = getelementptr inbounds i8, i8* %113, i64 %idxprom105
  %114 = load i8, i8* %arrayidx106, align 1
  %conv107 = zext i8 %114 to i32
  %mul108 = mul nsw i32 8, %conv107
  %sub109 = sub nsw i32 %add104, %mul108
  %115 = load i32, i32* %col, align 4
  %116 = load i32, i32* %bytes, align 4
  %add110 = add nsw i32 %115, %116
  %idxprom111 = sext i32 %add110 to i64
  %117 = load i8*, i8** %cr, align 8
  %arrayidx112 = getelementptr inbounds i8, i8* %117, i64 %idxprom111
  %118 = load i8, i8* %arrayidx112, align 1
  %conv113 = zext i8 %118 to i32
  %add114 = add nsw i32 %sub109, %conv113
  %119 = load i32, i32* %col, align 4
  %120 = load i32, i32* %bytes, align 4
  %sub115 = sub nsw i32 %119, %120
  %idxprom116 = sext i32 %sub115 to i64
  %121 = load i8*, i8** %nr, align 8
  %arrayidx117 = getelementptr inbounds i8, i8* %121, i64 %idxprom116
  %122 = load i8, i8* %arrayidx117, align 1
  %conv118 = zext i8 %122 to i32
  %add119 = add nsw i32 %add114, %conv118
  %123 = load i32, i32* %col, align 4
  %idxprom120 = sext i32 %123 to i64
  %124 = load i8*, i8** %nr, align 8
  %arrayidx121 = getelementptr inbounds i8, i8* %124, i64 %idxprom120
  %125 = load i8, i8* %arrayidx121, align 1
  %conv122 = zext i8 %125 to i32
  %add123 = add nsw i32 %add119, %conv122
  %126 = load i32, i32* %col, align 4
  %127 = load i32, i32* %bytes, align 4
  %add124 = add nsw i32 %126, %127
  %idxprom125 = sext i32 %add124 to i64
  %128 = load i8*, i8** %nr, align 8
  %arrayidx126 = getelementptr inbounds i8, i8* %128, i64 %idxprom125
  %129 = load i8, i8* %arrayidx126, align 1
  %conv127 = zext i8 %129 to i32
  %add128 = add nsw i32 %add123, %conv127
  %cmp129 = icmp sgt i32 %add128, 0
  br i1 %cmp129, label %cond.true.131, label %cond.false.132

cond.true.131:                                    ; preds = %cond.end
  %130 = load i32, i32* %gradient, align 4
  br label %cond.end.134

cond.false.132:                                   ; preds = %cond.end
  %131 = load i32, i32* %gradient, align 4
  %add133 = add nsw i32 128, %131
  br label %cond.end.134

cond.end.134:                                     ; preds = %cond.false.132, %cond.true.131
  %cond135 = phi i32 [ %130, %cond.true.131 ], [ %add133, %cond.false.132 ]
  %conv136 = trunc i32 %cond135 to i8
  %132 = load i8*, i8** %d, align 8
  %incdec.ptr137 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %incdec.ptr137, i8** %d, align 8
  store i8 %conv136, i8* %132, align 1
  br label %if.end

if.end:                                           ; preds = %cond.end.134, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %133 = load i32, i32* %col, align 4
  %inc = add nsw i32 %133, 1
  store i32 %inc, i32* %col, align 4
  br label %for.cond.40

for.end:                                          ; preds = %for.cond.40
  %134 = load i8*, i8** %dest, align 8
  %135 = load i32, i32* %x1, align 4
  %136 = load i32, i32* %row, align 4
  %137 = load i32, i32* %x2, align 4
  %138 = load i32, i32* %x1, align 4
  %sub138 = sub nsw i32 %137, %138
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %destPR, i8* %134, i32 %135, i32 %136, i32 %sub138)
  %139 = load i8*, i8** %pr, align 8
  store i8* %139, i8** %tmp, align 8
  %140 = load i8*, i8** %cr, align 8
  store i8* %140, i8** %pr, align 8
  %141 = load i8*, i8** %nr, align 8
  store i8* %141, i8** %cr, align 8
  %142 = load i8*, i8** %tmp, align 8
  store i8* %142, i8** %nr, align 8
  %143 = load i32, i32* %row, align 4
  %rem139 = srem i32 %143, 20
  %cmp140 = icmp eq i32 %rem139, 0
  br i1 %cmp140, label %if.then.142, label %if.end.147

if.then.142:                                      ; preds = %for.end
  %144 = load i32, i32* %row, align 4
  %conv143 = sitofp i32 %144 to double
  %145 = load i32, i32* %y2, align 4
  %146 = load i32, i32* %y1, align 4
  %sub144 = sub nsw i32 %145, %146
  %conv145 = sitofp i32 %sub144 to double
  %div = fdiv double %conv143, %conv145
  %call146 = call i32 @gimp_progress_update(double %div)
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.142, %for.end
  br label %for.inc.148

for.inc.148:                                      ; preds = %if.end.147
  %147 = load i32, i32* %row, align 4
  %inc149 = add nsw i32 %147, 1
  store i32 %inc149, i32* %row, align 4
  br label %for.cond

for.end.150:                                      ; preds = %for.cond
  %148 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %149 = load i32, i32* %width, align 4
  %150 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %srcPR, %struct._GimpDrawable* %148, i32 0, i32 0, i32 %149, i32 %150, i32 0, i32 1)
  %151 = load i8*, i8** %prev_row, align 8
  %152 = load i32, i32* %bytes, align 4
  %idx.ext151 = sext i32 %152 to i64
  %add.ptr152 = getelementptr inbounds i8, i8* %151, i64 %idx.ext151
  store i8* %add.ptr152, i8** %pr, align 8
  %153 = load i8*, i8** %cur_row, align 8
  %154 = load i32, i32* %bytes, align 4
  %idx.ext153 = sext i32 %154 to i64
  %add.ptr154 = getelementptr inbounds i8, i8* %153, i64 %idx.ext153
  store i8* %add.ptr154, i8** %cr, align 8
  %155 = load i8*, i8** %next_row, align 8
  %156 = load i32, i32* %bytes, align 4
  %idx.ext155 = sext i32 %156 to i64
  %add.ptr156 = getelementptr inbounds i8, i8* %155, i64 %idx.ext155
  store i8* %add.ptr156, i8** %nr, align 8
  %157 = load i8*, i8** %pr, align 8
  %158 = load i32, i32* %x1, align 4
  %159 = load i32, i32* %y1, align 4
  %sub157 = sub nsw i32 %159, 1
  %160 = load i32, i32* %x2, align 4
  %161 = load i32, i32* %x1, align 4
  %sub158 = sub nsw i32 %160, %161
  call void @laplace_prepare_row(%struct._GimpPixelRgn* %srcPR, i8* %157, i32 %158, i32 %sub157, i32 %sub158)
  %162 = load i8*, i8** %cr, align 8
  %163 = load i32, i32* %x1, align 4
  %164 = load i32, i32* %y1, align 4
  %165 = load i32, i32* %x2, align 4
  %166 = load i32, i32* %x1, align 4
  %sub159 = sub nsw i32 %165, %166
  call void @laplace_prepare_row(%struct._GimpPixelRgn* %srcPR, i8* %162, i32 %163, i32 %164, i32 %sub159)
  %call160 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0)) #5
  %call161 = call i32 @gimp_progress_init(i8* %call160)
  store i32 0, i32* %counter, align 4
  %167 = load i32, i32* %y1, align 4
  store i32 %167, i32* %row, align 4
  br label %for.cond.162

for.cond.162:                                     ; preds = %for.inc.278, %for.end.150
  %168 = load i32, i32* %row, align 4
  %169 = load i32, i32* %y2, align 4
  %cmp163 = icmp slt i32 %168, %169
  br i1 %cmp163, label %for.body.165, label %for.end.280

for.body.165:                                     ; preds = %for.cond.162
  %170 = load i8*, i8** %nr, align 8
  %171 = load i32, i32* %x1, align 4
  %172 = load i32, i32* %row, align 4
  %add166 = add nsw i32 %172, 1
  %173 = load i32, i32* %x2, align 4
  %174 = load i32, i32* %x1, align 4
  %sub167 = sub nsw i32 %173, %174
  call void @laplace_prepare_row(%struct._GimpPixelRgn* %srcPR, i8* %170, i32 %171, i32 %add166, i32 %sub167)
  %175 = load i8*, i8** %dest, align 8
  store i8* %175, i8** %d, align 8
  store i32 0, i32* %col, align 4
  br label %for.cond.168

for.cond.168:                                     ; preds = %for.inc.264, %for.body.165
  %176 = load i32, i32* %col, align 4
  %177 = load i32, i32* %x2, align 4
  %178 = load i32, i32* %x1, align 4
  %sub169 = sub nsw i32 %177, %178
  %179 = load i32, i32* %bytes, align 4
  %mul170 = mul nsw i32 %sub169, %179
  %cmp171 = icmp slt i32 %176, %mul170
  br i1 %cmp171, label %for.body.173, label %for.end.266

for.body.173:                                     ; preds = %for.cond.168
  %180 = load i32, i32* %col, align 4
  %idxprom174 = sext i32 %180 to i64
  %181 = load i8*, i8** %cr, align 8
  %arrayidx175 = getelementptr inbounds i8, i8* %181, i64 %idxprom174
  %182 = load i8, i8* %arrayidx175, align 1
  %conv176 = zext i8 %182 to i32
  store i32 %conv176, i32* %current, align 4
  %183 = load i32, i32* %current, align 4
  %cmp177 = icmp sle i32 %183, 128
  br i1 %cmp177, label %land.lhs.true.179, label %cond.false.240

land.lhs.true.179:                                ; preds = %for.body.173
  %184 = load i32, i32* %col, align 4
  %185 = load i32, i32* %bytes, align 4
  %sub180 = sub nsw i32 %184, %185
  %idxprom181 = sext i32 %sub180 to i64
  %186 = load i8*, i8** %pr, align 8
  %arrayidx182 = getelementptr inbounds i8, i8* %186, i64 %idxprom181
  %187 = load i8, i8* %arrayidx182, align 1
  %conv183 = zext i8 %187 to i32
  %cmp184 = icmp sgt i32 %conv183, 128
  br i1 %cmp184, label %cond.true.232, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.179
  %188 = load i32, i32* %col, align 4
  %idxprom186 = sext i32 %188 to i64
  %189 = load i8*, i8** %pr, align 8
  %arrayidx187 = getelementptr inbounds i8, i8* %189, i64 %idxprom186
  %190 = load i8, i8* %arrayidx187, align 1
  %conv188 = zext i8 %190 to i32
  %cmp189 = icmp sgt i32 %conv188, 128
  br i1 %cmp189, label %cond.true.232, label %lor.lhs.false.191

lor.lhs.false.191:                                ; preds = %lor.lhs.false
  %191 = load i32, i32* %col, align 4
  %192 = load i32, i32* %bytes, align 4
  %add192 = add nsw i32 %191, %192
  %idxprom193 = sext i32 %add192 to i64
  %193 = load i8*, i8** %pr, align 8
  %arrayidx194 = getelementptr inbounds i8, i8* %193, i64 %idxprom193
  %194 = load i8, i8* %arrayidx194, align 1
  %conv195 = zext i8 %194 to i32
  %cmp196 = icmp sgt i32 %conv195, 128
  br i1 %cmp196, label %cond.true.232, label %lor.lhs.false.198

lor.lhs.false.198:                                ; preds = %lor.lhs.false.191
  %195 = load i32, i32* %col, align 4
  %196 = load i32, i32* %bytes, align 4
  %sub199 = sub nsw i32 %195, %196
  %idxprom200 = sext i32 %sub199 to i64
  %197 = load i8*, i8** %cr, align 8
  %arrayidx201 = getelementptr inbounds i8, i8* %197, i64 %idxprom200
  %198 = load i8, i8* %arrayidx201, align 1
  %conv202 = zext i8 %198 to i32
  %cmp203 = icmp sgt i32 %conv202, 128
  br i1 %cmp203, label %cond.true.232, label %lor.lhs.false.205

lor.lhs.false.205:                                ; preds = %lor.lhs.false.198
  %199 = load i32, i32* %col, align 4
  %200 = load i32, i32* %bytes, align 4
  %add206 = add nsw i32 %199, %200
  %idxprom207 = sext i32 %add206 to i64
  %201 = load i8*, i8** %cr, align 8
  %arrayidx208 = getelementptr inbounds i8, i8* %201, i64 %idxprom207
  %202 = load i8, i8* %arrayidx208, align 1
  %conv209 = zext i8 %202 to i32
  %cmp210 = icmp sgt i32 %conv209, 128
  br i1 %cmp210, label %cond.true.232, label %lor.lhs.false.212

lor.lhs.false.212:                                ; preds = %lor.lhs.false.205
  %203 = load i32, i32* %col, align 4
  %204 = load i32, i32* %bytes, align 4
  %sub213 = sub nsw i32 %203, %204
  %idxprom214 = sext i32 %sub213 to i64
  %205 = load i8*, i8** %nr, align 8
  %arrayidx215 = getelementptr inbounds i8, i8* %205, i64 %idxprom214
  %206 = load i8, i8* %arrayidx215, align 1
  %conv216 = zext i8 %206 to i32
  %cmp217 = icmp sgt i32 %conv216, 128
  br i1 %cmp217, label %cond.true.232, label %lor.lhs.false.219

lor.lhs.false.219:                                ; preds = %lor.lhs.false.212
  %207 = load i32, i32* %col, align 4
  %idxprom220 = sext i32 %207 to i64
  %208 = load i8*, i8** %nr, align 8
  %arrayidx221 = getelementptr inbounds i8, i8* %208, i64 %idxprom220
  %209 = load i8, i8* %arrayidx221, align 1
  %conv222 = zext i8 %209 to i32
  %cmp223 = icmp sgt i32 %conv222, 128
  br i1 %cmp223, label %cond.true.232, label %lor.lhs.false.225

lor.lhs.false.225:                                ; preds = %lor.lhs.false.219
  %210 = load i32, i32* %col, align 4
  %211 = load i32, i32* %bytes, align 4
  %add226 = add nsw i32 %210, %211
  %idxprom227 = sext i32 %add226 to i64
  %212 = load i8*, i8** %nr, align 8
  %arrayidx228 = getelementptr inbounds i8, i8* %212, i64 %idxprom227
  %213 = load i8, i8* %arrayidx228, align 1
  %conv229 = zext i8 %213 to i32
  %cmp230 = icmp sgt i32 %conv229, 128
  br i1 %cmp230, label %cond.true.232, label %cond.false.240

cond.true.232:                                    ; preds = %lor.lhs.false.225, %lor.lhs.false.219, %lor.lhs.false.212, %lor.lhs.false.205, %lor.lhs.false.198, %lor.lhs.false.191, %lor.lhs.false, %land.lhs.true.179
  %214 = load i32, i32* %current, align 4
  %cmp233 = icmp sge i32 %214, 128
  br i1 %cmp233, label %cond.true.235, label %cond.false.237

cond.true.235:                                    ; preds = %cond.true.232
  %215 = load i32, i32* %current, align 4
  %sub236 = sub nsw i32 %215, 128
  br label %cond.end.238

cond.false.237:                                   ; preds = %cond.true.232
  %216 = load i32, i32* %current, align 4
  br label %cond.end.238

cond.end.238:                                     ; preds = %cond.false.237, %cond.true.235
  %cond239 = phi i32 [ %sub236, %cond.true.235 ], [ %216, %cond.false.237 ]
  br label %cond.end.241

cond.false.240:                                   ; preds = %lor.lhs.false.225, %for.body.173
  br label %cond.end.241

cond.end.241:                                     ; preds = %cond.false.240, %cond.end.238
  %cond242 = phi i32 [ %cond239, %cond.end.238 ], [ 0, %cond.false.240 ]
  store i32 %cond242, i32* %current, align 4
  %217 = load i32, i32* %alpha, align 4
  %tobool243 = icmp ne i32 %217, 0
  br i1 %tobool243, label %land.lhs.true.244, label %if.else.255

land.lhs.true.244:                                ; preds = %cond.end.241
  %218 = load i32, i32* %col, align 4
  %add245 = add nsw i32 %218, 1
  %219 = load i32, i32* %bytes, align 4
  %rem246 = srem i32 %add245, %219
  %cmp247 = icmp eq i32 %rem246, 0
  br i1 %cmp247, label %if.then.249, label %if.else.255

if.then.249:                                      ; preds = %land.lhs.true.244
  %220 = load i32, i32* %counter, align 4
  %cmp250 = icmp eq i32 %220, 0
  %cond252 = select i1 %cmp250, i32 0, i32 255
  %conv253 = trunc i32 %cond252 to i8
  %221 = load i8*, i8** %d, align 8
  %incdec.ptr254 = getelementptr inbounds i8, i8* %221, i32 1
  store i8* %incdec.ptr254, i8** %d, align 8
  store i8 %conv253, i8* %221, align 1
  store i32 0, i32* %counter, align 4
  br label %if.end.263

if.else.255:                                      ; preds = %land.lhs.true.244, %cond.end.241
  %222 = load i32, i32* %current, align 4
  %conv256 = trunc i32 %222 to i8
  %223 = load i8*, i8** %d, align 8
  %incdec.ptr257 = getelementptr inbounds i8, i8* %223, i32 1
  store i8* %incdec.ptr257, i8** %d, align 8
  store i8 %conv256, i8* %223, align 1
  %224 = load i32, i32* %current, align 4
  %cmp258 = icmp sgt i32 %224, 15
  br i1 %cmp258, label %if.then.260, label %if.end.262

if.then.260:                                      ; preds = %if.else.255
  %225 = load i32, i32* %counter, align 4
  %inc261 = add nsw i32 %225, 1
  store i32 %inc261, i32* %counter, align 4
  br label %if.end.262

if.end.262:                                       ; preds = %if.then.260, %if.else.255
  br label %if.end.263

if.end.263:                                       ; preds = %if.end.262, %if.then.249
  br label %for.inc.264

for.inc.264:                                      ; preds = %if.end.263
  %226 = load i32, i32* %col, align 4
  %inc265 = add nsw i32 %226, 1
  store i32 %inc265, i32* %col, align 4
  br label %for.cond.168

for.end.266:                                      ; preds = %for.cond.168
  %227 = load i8*, i8** %dest, align 8
  %228 = load i32, i32* %x1, align 4
  %229 = load i32, i32* %row, align 4
  %230 = load i32, i32* %x2, align 4
  %231 = load i32, i32* %x1, align 4
  %sub267 = sub nsw i32 %230, %231
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %destPR, i8* %227, i32 %228, i32 %229, i32 %sub267)
  %232 = load i8*, i8** %pr, align 8
  store i8* %232, i8** %tmp, align 8
  %233 = load i8*, i8** %cr, align 8
  store i8* %233, i8** %pr, align 8
  %234 = load i8*, i8** %nr, align 8
  store i8* %234, i8** %cr, align 8
  %235 = load i8*, i8** %tmp, align 8
  store i8* %235, i8** %nr, align 8
  %236 = load i32, i32* %row, align 4
  %rem268 = srem i32 %236, 20
  %cmp269 = icmp eq i32 %rem268, 0
  br i1 %cmp269, label %if.then.271, label %if.end.277

if.then.271:                                      ; preds = %for.end.266
  %237 = load i32, i32* %row, align 4
  %conv272 = sitofp i32 %237 to double
  %238 = load i32, i32* %y2, align 4
  %239 = load i32, i32* %y1, align 4
  %sub273 = sub nsw i32 %238, %239
  %conv274 = sitofp i32 %sub273 to double
  %div275 = fdiv double %conv272, %conv274
  %call276 = call i32 @gimp_progress_update(double %div275)
  br label %if.end.277

if.end.277:                                       ; preds = %if.then.271, %for.end.266
  br label %for.inc.278

for.inc.278:                                      ; preds = %if.end.277
  %240 = load i32, i32* %row, align 4
  %inc279 = add nsw i32 %240, 1
  store i32 %inc279, i32* %row, align 4
  br label %for.cond.162

for.end.280:                                      ; preds = %for.cond.162
  %call281 = call i32 @gimp_progress_update(double 1.000000e+00)
  %241 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %241)
  %242 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id282 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %242, i32 0, i32 0
  %243 = load i32, i32* %drawable_id282, align 4
  %call283 = call i32 @gimp_drawable_merge_shadow(i32 %243, i32 1)
  %244 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id284 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %244, i32 0, i32 0
  %245 = load i32, i32* %drawable_id284, align 4
  %246 = load i32, i32* %x1, align 4
  %247 = load i32, i32* %y1, align 4
  %248 = load i32, i32* %x2, align 4
  %249 = load i32, i32* %x1, align 4
  %sub285 = sub nsw i32 %248, %249
  %250 = load i32, i32* %y2, align 4
  %251 = load i32, i32* %y1, align 4
  %sub286 = sub nsw i32 %250, %251
  %call287 = call i32 @gimp_drawable_update(i32 %245, i32 %246, i32 %247, i32 %sub285, i32 %sub286)
  %252 = load i8*, i8** %prev_row, align 8
  call void @g_free(i8* %252)
  %253 = load i8*, i8** %cur_row, align 8
  call void @g_free(i8* %253)
  %254 = load i8*, i8** %next_row, align 8
  call void @g_free(i8* %254)
  %255 = load i8*, i8** %dest, align 8
  call void @g_free(i8* %255)
  ret void
}

declare i32 @gimp_displays_flush() #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i32 @gimp_drawable_has_alpha(i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @laplace_prepare_row(%struct._GimpPixelRgn* %pixel_rgn, i8* %data, i32 %x, i32 %y, i32 %w) #0 {
entry:
  %pixel_rgn.addr = alloca %struct._GimpPixelRgn*, align 8
  %data.addr = alloca i8*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %bpp = alloca i32, align 4
  %b = alloca i32, align 4
  store %struct._GimpPixelRgn* %pixel_rgn, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  %0 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %bpp1 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %0, i32 0, i32 2
  %1 = load i32, i32* %bpp1, align 4
  store i32 %1, i32* %bpp, align 4
  %2 = load i32, i32* %y.addr, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %4 = load i8*, i8** %data.addr, align 8
  %5 = load i32, i32* %x.addr, align 4
  %6 = load i32, i32* %y.addr, align 4
  %add = add nsw i32 %6, 1
  %7 = load i32, i32* %w.addr, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %3, i8* %4, i32 %5, i32 %add, i32 %7)
  br label %if.end.5

if.else:                                          ; preds = %entry
  %8 = load i32, i32* %y.addr, align 4
  %9 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %9, i32 0, i32 7
  %10 = load i32, i32* %h, align 4
  %cmp2 = icmp eq i32 %8, %10
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  %11 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %12 = load i8*, i8** %data.addr, align 8
  %13 = load i32, i32* %x.addr, align 4
  %14 = load i32, i32* %y.addr, align 4
  %sub = sub nsw i32 %14, 1
  %15 = load i32, i32* %w.addr, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %11, i8* %12, i32 %13, i32 %sub, i32 %15)
  br label %if.end

if.else.4:                                        ; preds = %if.else
  %16 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %17 = load i8*, i8** %data.addr, align 8
  %18 = load i32, i32* %x.addr, align 4
  %19 = load i32, i32* %y.addr, align 4
  %20 = load i32, i32* %w.addr, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %16, i8* %17, i32 %18, i32 %19, i32 %20)
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %21 = load i32, i32* %b, align 4
  %22 = load i32, i32* %bpp, align 4
  %cmp6 = icmp slt i32 %21, %22
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %b, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load i8*, i8** %data.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 %idxprom
  %25 = load i8, i8* %arrayidx, align 1
  %26 = load i32, i32* %b, align 4
  %27 = load i32, i32* %bpp, align 4
  %sub7 = sub nsw i32 %26, %27
  %idxprom8 = sext i32 %sub7 to i64
  %28 = load i8*, i8** %data.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %28, i64 %idxprom8
  store i8 %25, i8* %arrayidx9, align 1
  %29 = load i32, i32* %w.addr, align 4
  %sub10 = sub nsw i32 %29, 1
  %30 = load i32, i32* %bpp, align 4
  %mul = mul nsw i32 %sub10, %30
  %31 = load i32, i32* %b, align 4
  %add11 = add nsw i32 %mul, %31
  %idxprom12 = sext i32 %add11 to i64
  %32 = load i8*, i8** %data.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %32, i64 %idxprom12
  %33 = load i8, i8* %arrayidx13, align 1
  %34 = load i32, i32* %w.addr, align 4
  %35 = load i32, i32* %bpp, align 4
  %mul14 = mul nsw i32 %34, %35
  %36 = load i32, i32* %b, align 4
  %add15 = add nsw i32 %mul14, %36
  %idxprom16 = sext i32 %add15 to i64
  %37 = load i8*, i8** %data.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %37, i64 %idxprom16
  store i8 %33, i8* %arrayidx17, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, i32* %b, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @minmax(i32 %x1, i32 %x2, i32 %x3, i32 %x4, i32 %x5, i32* %min_result, i32* %max_result) #0 {
entry:
  %x1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %x3.addr = alloca i32, align 4
  %x4.addr = alloca i32, align 4
  %x5.addr = alloca i32, align 4
  %min_result.addr = alloca i32*, align 8
  %max_result.addr = alloca i32*, align 8
  %min1 = alloca i32, align 4
  %min2 = alloca i32, align 4
  %max1 = alloca i32, align 4
  %max2 = alloca i32, align 4
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %x3, i32* %x3.addr, align 4
  store i32 %x4, i32* %x4.addr, align 4
  store i32 %x5, i32* %x5.addr, align 4
  store i32* %min_result, i32** %min_result.addr, align 8
  store i32* %max_result, i32** %max_result.addr, align 8
  %0 = load i32, i32* %x1.addr, align 4
  %1 = load i32, i32* %x2.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %x1.addr, align 4
  store i32 %2, i32* %max1, align 4
  %3 = load i32, i32* %x2.addr, align 4
  store i32 %3, i32* %min1, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %x2.addr, align 4
  store i32 %4, i32* %max1, align 4
  %5 = load i32, i32* %x1.addr, align 4
  store i32 %5, i32* %min1, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %x3.addr, align 4
  %7 = load i32, i32* %x4.addr, align 4
  %cmp1 = icmp sgt i32 %6, %7
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.end
  %8 = load i32, i32* %x3.addr, align 4
  store i32 %8, i32* %max2, align 4
  %9 = load i32, i32* %x4.addr, align 4
  store i32 %9, i32* %min2, align 4
  br label %if.end.4

if.else.3:                                        ; preds = %if.end
  %10 = load i32, i32* %x4.addr, align 4
  store i32 %10, i32* %max2, align 4
  %11 = load i32, i32* %x3.addr, align 4
  store i32 %11, i32* %min2, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.else.3, %if.then.2
  %12 = load i32, i32* %min1, align 4
  %13 = load i32, i32* %min2, align 4
  %cmp5 = icmp slt i32 %12, %13
  br i1 %cmp5, label %if.then.6, label %if.else.8

if.then.6:                                        ; preds = %if.end.4
  %14 = load i32, i32* %min1, align 4
  %15 = load i32, i32* %x5.addr, align 4
  %cmp7 = icmp slt i32 %14, %15
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.6
  %16 = load i32, i32* %min1, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.6
  %17 = load i32, i32* %x5.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %16, %cond.true ], [ %17, %cond.false ]
  %18 = load i32*, i32** %min_result.addr, align 8
  store i32 %cond, i32* %18, align 4
  br label %if.end.14

if.else.8:                                        ; preds = %if.end.4
  %19 = load i32, i32* %min2, align 4
  %20 = load i32, i32* %x5.addr, align 4
  %cmp9 = icmp slt i32 %19, %20
  br i1 %cmp9, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %if.else.8
  %21 = load i32, i32* %min2, align 4
  br label %cond.end.12

cond.false.11:                                    ; preds = %if.else.8
  %22 = load i32, i32* %x5.addr, align 4
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.11, %cond.true.10
  %cond13 = phi i32 [ %21, %cond.true.10 ], [ %22, %cond.false.11 ]
  %23 = load i32*, i32** %min_result.addr, align 8
  store i32 %cond13, i32* %23, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %cond.end.12, %cond.end
  %24 = load i32, i32* %max1, align 4
  %25 = load i32, i32* %max2, align 4
  %cmp15 = icmp sgt i32 %24, %25
  br i1 %cmp15, label %if.then.16, label %if.else.22

if.then.16:                                       ; preds = %if.end.14
  %26 = load i32, i32* %max1, align 4
  %27 = load i32, i32* %x5.addr, align 4
  %cmp17 = icmp sgt i32 %26, %27
  br i1 %cmp17, label %cond.true.18, label %cond.false.19

cond.true.18:                                     ; preds = %if.then.16
  %28 = load i32, i32* %max1, align 4
  br label %cond.end.20

cond.false.19:                                    ; preds = %if.then.16
  %29 = load i32, i32* %x5.addr, align 4
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.19, %cond.true.18
  %cond21 = phi i32 [ %28, %cond.true.18 ], [ %29, %cond.false.19 ]
  %30 = load i32*, i32** %max_result.addr, align 8
  store i32 %cond21, i32* %30, align 4
  br label %if.end.28

if.else.22:                                       ; preds = %if.end.14
  %31 = load i32, i32* %max2, align 4
  %32 = load i32, i32* %x5.addr, align 4
  %cmp23 = icmp sgt i32 %31, %32
  br i1 %cmp23, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %if.else.22
  %33 = load i32, i32* %max2, align 4
  br label %cond.end.26

cond.false.25:                                    ; preds = %if.else.22
  %34 = load i32, i32* %x5.addr, align 4
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.25, %cond.true.24
  %cond27 = phi i32 [ %33, %cond.true.24 ], [ %34, %cond.false.25 ]
  %35 = load i32*, i32** %max_result.addr, align 8
  store i32 %cond27, i32* %35, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %cond.end.26, %cond.end.20
  ret void
}

declare void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare i32 @gimp_progress_update(double) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare void @g_free(i8*) #1

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
