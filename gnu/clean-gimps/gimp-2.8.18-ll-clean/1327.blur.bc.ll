; ModuleID = './plug-ins/common/blur.bc'
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
@.str.6 = private unnamed_addr constant [13 x i8] c"plug-in-blur\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Simple blur, fast but not very strong\00", align 1
@.str.8 = private unnamed_addr constant [95 x i8] c"This plug-in blurs the specified drawable, using a 3x3 blur. Indexed images are not supported.\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Miles O'Neal  <meo@rru.com>\00", align 1
@.str.10 = private unnamed_addr constant [137 x i8] c"Miles O'Neal, Spencer Kimball, Peter Mattis, Torsten Martinsen, Brian Degenhardt, Federico Mena Quintero, Stephen Norris, Daniel Cotting\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"1995-1998\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"_Blur\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"<Image>/Filters/Blur\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.15 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"Blurring\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i32 1, i32 3, i32 0, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0))
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
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #6
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0), i8* %call) #7
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0)) #7
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0)) #7
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %0 = load i32, i32* %status, align 4
  store i32 %0, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %1 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %1, align 4
  %2 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %2, align 8
  %3 = load i8*, i8** %name.addr, align 8
  %call4 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0)) #8
  %cmp = icmp ne i32 %call4, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %4 = load i32, i32* %nparams.addr, align 4
  %cmp5 = icmp slt i32 %4, 3
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end
  store i32 1, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %6 = load i32, i32* %d_int32, align 4
  store i32 %6, i32* %run_mode, align 4
  %7 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %7, i64 2
  %data7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx6, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data7 to i32*
  %8 = load i32, i32* %d_drawable, align 4
  %call8 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %8)
  store %struct._GimpDrawable* %call8, %struct._GimpDrawable** %drawable, align 8
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 0
  %10 = load i32, i32* %drawable_id, align 4
  %call9 = call i32 @gimp_drawable_is_rgb(i32 %10)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.then.14, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %if.end
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id11 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 0
  %12 = load i32, i32* %drawable_id11, align 4
  %call12 = call i32 @gimp_drawable_is_gray(i32 %12)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %lor.lhs.false.10, %if.end
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0)) #7
  %call16 = call i32 @gimp_progress_init(i8* %call15)
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 1
  %14 = load i32, i32* %width, align 4
  %call17 = call i32 @gimp_tile_width() #6
  %div = udiv i32 %14, %call17
  %add = add i32 %div, 1
  %mul = mul i32 2, %add
  %conv = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @blur(%struct._GimpDrawable* %15)
  %16 = load i32, i32* %run_mode, align 4
  %cmp18 = icmp ne i32 %16, 1
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.then.14
  %call21 = call i32 @gimp_displays_flush()
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.then.14
  br label %if.end.23

if.else:                                          ; preds = %lor.lhs.false.10
  store i32 0, i32* %status, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.end.22
  %17 = load i32, i32* %status, align 4
  store i32 %17, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %18)
  br label %return

return:                                           ; preds = %if.end.23, %if.then
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

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

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
define internal void @blur(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %srcPR = alloca %struct._GimpPixelRgn, align 8
  %destPR = alloca %struct._GimpPixelRgn, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bytes = alloca i32, align 4
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
  %ind = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_intersect(i32 %1, i32* %x1, i32* %y1, i32* %width, i32* %height)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %x1, align 4
  %3 = load i32, i32* %width, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %x2, align 4
  %4 = load i32, i32* %y1, align 4
  %5 = load i32, i32* %height, align 4
  %add9 = add nsw i32 %4, %5
  store i32 %add9, i32* %y2, align 4
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width10 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 1
  %7 = load i32, i32* %width10, align 4
  store i32 %7, i32* %width, align 4
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height11 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 2
  %9 = load i32, i32* %height11, align 4
  store i32 %9, i32* %height, align 4
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 3
  %11 = load i32, i32* %bpp, align 4
  store i32 %11, i32* %bytes, align 4
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id12 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %12, i32 0, i32 0
  %13 = load i32, i32* %drawable_id12, align 4
  %call13 = call i32 @gimp_drawable_has_alpha(i32 %13)
  store i32 %call13, i32* %has_alpha, align 4
  %14 = load i32, i32* %x2, align 4
  %15 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %14, %15
  %add14 = add nsw i32 %sub, 2
  %16 = load i32, i32* %bytes, align 4
  %mul = mul nsw i32 %add14, %16
  %conv = sext i32 %mul to i64
  %call15 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call15, i8** %prev_row, align 8
  %17 = load i32, i32* %x2, align 4
  %18 = load i32, i32* %x1, align 4
  %sub16 = sub nsw i32 %17, %18
  %add17 = add nsw i32 %sub16, 2
  %19 = load i32, i32* %bytes, align 4
  %mul18 = mul nsw i32 %add17, %19
  %conv19 = sext i32 %mul18 to i64
  %call20 = call noalias i8* @g_malloc_n(i64 %conv19, i64 1)
  store i8* %call20, i8** %cur_row, align 8
  %20 = load i32, i32* %x2, align 4
  %21 = load i32, i32* %x1, align 4
  %sub21 = sub nsw i32 %20, %21
  %add22 = add nsw i32 %sub21, 2
  %22 = load i32, i32* %bytes, align 4
  %mul23 = mul nsw i32 %add22, %22
  %conv24 = sext i32 %mul23 to i64
  %call25 = call noalias i8* @g_malloc_n(i64 %conv24, i64 1)
  store i8* %call25, i8** %next_row, align 8
  %23 = load i32, i32* %x2, align 4
  %24 = load i32, i32* %x1, align 4
  %sub26 = sub nsw i32 %23, %24
  %25 = load i32, i32* %bytes, align 4
  %mul27 = mul nsw i32 %sub26, %25
  %conv28 = sext i32 %mul27 to i64
  %call29 = call noalias i8* @g_malloc_n(i64 %conv28, i64 1)
  store i8* %call29, i8** %dest, align 8
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %27 = load i32, i32* %width, align 4
  %28 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %srcPR, %struct._GimpDrawable* %26, i32 0, i32 0, i32 %27, i32 %28, i32 0, i32 0)
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %30 = load i32, i32* %width, align 4
  %31 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %destPR, %struct._GimpDrawable* %29, i32 0, i32 0, i32 %30, i32 %31, i32 1, i32 1)
  %32 = load i8*, i8** %prev_row, align 8
  %33 = load i32, i32* %bytes, align 4
  %idx.ext = sext i32 %33 to i64
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 %idx.ext
  store i8* %add.ptr, i8** %pr, align 8
  %34 = load i8*, i8** %cur_row, align 8
  %35 = load i32, i32* %bytes, align 4
  %idx.ext30 = sext i32 %35 to i64
  %add.ptr31 = getelementptr inbounds i8, i8* %34, i64 %idx.ext30
  store i8* %add.ptr31, i8** %cr, align 8
  %36 = load i8*, i8** %next_row, align 8
  %37 = load i32, i32* %bytes, align 4
  %idx.ext32 = sext i32 %37 to i64
  %add.ptr33 = getelementptr inbounds i8, i8* %36, i64 %idx.ext32
  store i8* %add.ptr33, i8** %nr, align 8
  %38 = load i8*, i8** %pr, align 8
  %39 = load i32, i32* %x1, align 4
  %40 = load i32, i32* %y1, align 4
  %sub34 = sub nsw i32 %40, 1
  %41 = load i32, i32* %x2, align 4
  %42 = load i32, i32* %x1, align 4
  %sub35 = sub nsw i32 %41, %42
  call void @blur_prepare_row(%struct._GimpPixelRgn* %srcPR, i8* %38, i32 %39, i32 %sub34, i32 %sub35)
  %43 = load i8*, i8** %cr, align 8
  %44 = load i32, i32* %x1, align 4
  %45 = load i32, i32* %y1, align 4
  %46 = load i32, i32* %x2, align 4
  %47 = load i32, i32* %x1, align 4
  %sub36 = sub nsw i32 %46, %47
  call void @blur_prepare_row(%struct._GimpPixelRgn* %srcPR, i8* %43, i32 %44, i32 %45, i32 %sub36)
  %48 = load i32, i32* %y1, align 4
  store i32 %48, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.265, %if.end
  %49 = load i32, i32* %row, align 4
  %50 = load i32, i32* %y2, align 4
  %cmp = icmp slt i32 %49, %50
  br i1 %cmp, label %for.body, label %for.end.267

for.body:                                         ; preds = %for.cond
  %51 = load i8*, i8** %nr, align 8
  %52 = load i32, i32* %x1, align 4
  %53 = load i32, i32* %row, align 4
  %add38 = add nsw i32 %53, 1
  %54 = load i32, i32* %x2, align 4
  %55 = load i32, i32* %x1, align 4
  %sub39 = sub nsw i32 %54, %55
  call void @blur_prepare_row(%struct._GimpPixelRgn* %srcPR, i8* %51, i32 %52, i32 %add38, i32 %sub39)
  %56 = load i8*, i8** %dest, align 8
  store i8* %56, i8** %d, align 8
  store i32 0, i32* %ind, align 4
  store i32 0, i32* %col, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc, %for.body
  %57 = load i32, i32* %col, align 4
  %58 = load i32, i32* %x2, align 4
  %59 = load i32, i32* %x1, align 4
  %sub41 = sub nsw i32 %58, %59
  %60 = load i32, i32* %bytes, align 4
  %mul42 = mul nsw i32 %sub41, %60
  %cmp43 = icmp slt i32 %57, %mul42
  br i1 %cmp43, label %for.body.45, label %for.end

for.body.45:                                      ; preds = %for.cond.40
  %61 = load i32, i32* %ind, align 4
  %inc = add nsw i32 %61, 1
  store i32 %inc, i32* %ind, align 4
  %62 = load i32, i32* %ind, align 4
  %63 = load i32, i32* %bytes, align 4
  %cmp46 = icmp eq i32 %62, %63
  br i1 %cmp46, label %if.then.49, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.45
  %64 = load i32, i32* %has_alpha, align 4
  %tobool48 = icmp ne i32 %64, 0
  br i1 %tobool48, label %if.else, label %if.then.49

if.then.49:                                       ; preds = %lor.lhs.false, %for.body.45
  %65 = load i32, i32* %col, align 4
  %66 = load i32, i32* %bytes, align 4
  %sub50 = sub nsw i32 %65, %66
  %idxprom = sext i32 %sub50 to i64
  %67 = load i8*, i8** %pr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %67, i64 %idxprom
  %68 = load i8, i8* %arrayidx, align 1
  %conv51 = zext i8 %68 to i32
  %69 = load i32, i32* %col, align 4
  %idxprom52 = sext i32 %69 to i64
  %70 = load i8*, i8** %pr, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %70, i64 %idxprom52
  %71 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %71 to i32
  %add55 = add nsw i32 %conv51, %conv54
  %72 = load i32, i32* %col, align 4
  %73 = load i32, i32* %bytes, align 4
  %add56 = add nsw i32 %72, %73
  %idxprom57 = sext i32 %add56 to i64
  %74 = load i8*, i8** %pr, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %74, i64 %idxprom57
  %75 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %75 to i32
  %add60 = add nsw i32 %add55, %conv59
  %76 = load i32, i32* %col, align 4
  %77 = load i32, i32* %bytes, align 4
  %sub61 = sub nsw i32 %76, %77
  %idxprom62 = sext i32 %sub61 to i64
  %78 = load i8*, i8** %cr, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %78, i64 %idxprom62
  %79 = load i8, i8* %arrayidx63, align 1
  %conv64 = zext i8 %79 to i32
  %add65 = add nsw i32 %add60, %conv64
  %80 = load i32, i32* %col, align 4
  %idxprom66 = sext i32 %80 to i64
  %81 = load i8*, i8** %cr, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %81, i64 %idxprom66
  %82 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %82 to i32
  %add69 = add nsw i32 %add65, %conv68
  %83 = load i32, i32* %col, align 4
  %84 = load i32, i32* %bytes, align 4
  %add70 = add nsw i32 %83, %84
  %idxprom71 = sext i32 %add70 to i64
  %85 = load i8*, i8** %cr, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %85, i64 %idxprom71
  %86 = load i8, i8* %arrayidx72, align 1
  %conv73 = zext i8 %86 to i32
  %add74 = add nsw i32 %add69, %conv73
  %87 = load i32, i32* %col, align 4
  %88 = load i32, i32* %bytes, align 4
  %sub75 = sub nsw i32 %87, %88
  %idxprom76 = sext i32 %sub75 to i64
  %89 = load i8*, i8** %nr, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %89, i64 %idxprom76
  %90 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %90 to i32
  %add79 = add nsw i32 %add74, %conv78
  %91 = load i32, i32* %col, align 4
  %idxprom80 = sext i32 %91 to i64
  %92 = load i8*, i8** %nr, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %92, i64 %idxprom80
  %93 = load i8, i8* %arrayidx81, align 1
  %conv82 = zext i8 %93 to i32
  %add83 = add nsw i32 %add79, %conv82
  %94 = load i32, i32* %col, align 4
  %95 = load i32, i32* %bytes, align 4
  %add84 = add nsw i32 %94, %95
  %idxprom85 = sext i32 %add84 to i64
  %96 = load i8*, i8** %nr, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %96, i64 %idxprom85
  %97 = load i8, i8* %arrayidx86, align 1
  %conv87 = zext i8 %97 to i32
  %add88 = add nsw i32 %add83, %conv87
  %add89 = add nsw i32 %add88, 4
  %div = sdiv i32 %add89, 9
  %conv90 = trunc i32 %div to i8
  %98 = load i8*, i8** %d, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %incdec.ptr, i8** %d, align 8
  store i8 %conv90, i8* %98, align 1
  store i32 0, i32* %ind, align 4
  br label %if.end.253

if.else:                                          ; preds = %lor.lhs.false
  %99 = load i32, i32* %col, align 4
  %100 = load i32, i32* %bytes, align 4
  %sub91 = sub nsw i32 %99, %100
  %idxprom92 = sext i32 %sub91 to i64
  %101 = load i8*, i8** %pr, align 8
  %arrayidx93 = getelementptr inbounds i8, i8* %101, i64 %idxprom92
  %102 = load i8, i8* %arrayidx93, align 1
  %conv94 = zext i8 %102 to i32
  %103 = load i32, i32* %col, align 4
  %104 = load i32, i32* %ind, align 4
  %sub95 = sub nsw i32 %103, %104
  %idxprom96 = sext i32 %sub95 to i64
  %105 = load i8*, i8** %pr, align 8
  %arrayidx97 = getelementptr inbounds i8, i8* %105, i64 %idxprom96
  %106 = load i8, i8* %arrayidx97, align 1
  %conv98 = zext i8 %106 to i32
  %mul99 = mul nsw i32 %conv94, %conv98
  %conv100 = sitofp i32 %mul99 to double
  %107 = load i32, i32* %col, align 4
  %idxprom101 = sext i32 %107 to i64
  %108 = load i8*, i8** %pr, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %108, i64 %idxprom101
  %109 = load i8, i8* %arrayidx102, align 1
  %conv103 = zext i8 %109 to i32
  %110 = load i32, i32* %col, align 4
  %111 = load i32, i32* %bytes, align 4
  %add104 = add nsw i32 %110, %111
  %112 = load i32, i32* %ind, align 4
  %sub105 = sub nsw i32 %add104, %112
  %idxprom106 = sext i32 %sub105 to i64
  %113 = load i8*, i8** %pr, align 8
  %arrayidx107 = getelementptr inbounds i8, i8* %113, i64 %idxprom106
  %114 = load i8, i8* %arrayidx107, align 1
  %conv108 = zext i8 %114 to i32
  %mul109 = mul nsw i32 %conv103, %conv108
  %conv110 = sitofp i32 %mul109 to double
  %add111 = fadd double %conv100, %conv110
  %115 = load i32, i32* %col, align 4
  %116 = load i32, i32* %bytes, align 4
  %add112 = add nsw i32 %115, %116
  %idxprom113 = sext i32 %add112 to i64
  %117 = load i8*, i8** %pr, align 8
  %arrayidx114 = getelementptr inbounds i8, i8* %117, i64 %idxprom113
  %118 = load i8, i8* %arrayidx114, align 1
  %conv115 = zext i8 %118 to i32
  %119 = load i32, i32* %col, align 4
  %120 = load i32, i32* %bytes, align 4
  %mul116 = mul nsw i32 2, %120
  %add117 = add nsw i32 %119, %mul116
  %121 = load i32, i32* %ind, align 4
  %sub118 = sub nsw i32 %add117, %121
  %idxprom119 = sext i32 %sub118 to i64
  %122 = load i8*, i8** %pr, align 8
  %arrayidx120 = getelementptr inbounds i8, i8* %122, i64 %idxprom119
  %123 = load i8, i8* %arrayidx120, align 1
  %conv121 = zext i8 %123 to i32
  %mul122 = mul nsw i32 %conv115, %conv121
  %conv123 = sitofp i32 %mul122 to double
  %add124 = fadd double %add111, %conv123
  %124 = load i32, i32* %col, align 4
  %125 = load i32, i32* %bytes, align 4
  %sub125 = sub nsw i32 %124, %125
  %idxprom126 = sext i32 %sub125 to i64
  %126 = load i8*, i8** %cr, align 8
  %arrayidx127 = getelementptr inbounds i8, i8* %126, i64 %idxprom126
  %127 = load i8, i8* %arrayidx127, align 1
  %conv128 = zext i8 %127 to i32
  %128 = load i32, i32* %col, align 4
  %129 = load i32, i32* %ind, align 4
  %sub129 = sub nsw i32 %128, %129
  %idxprom130 = sext i32 %sub129 to i64
  %130 = load i8*, i8** %cr, align 8
  %arrayidx131 = getelementptr inbounds i8, i8* %130, i64 %idxprom130
  %131 = load i8, i8* %arrayidx131, align 1
  %conv132 = zext i8 %131 to i32
  %mul133 = mul nsw i32 %conv128, %conv132
  %conv134 = sitofp i32 %mul133 to double
  %add135 = fadd double %add124, %conv134
  %132 = load i32, i32* %col, align 4
  %idxprom136 = sext i32 %132 to i64
  %133 = load i8*, i8** %cr, align 8
  %arrayidx137 = getelementptr inbounds i8, i8* %133, i64 %idxprom136
  %134 = load i8, i8* %arrayidx137, align 1
  %conv138 = zext i8 %134 to i32
  %135 = load i32, i32* %col, align 4
  %136 = load i32, i32* %bytes, align 4
  %add139 = add nsw i32 %135, %136
  %137 = load i32, i32* %ind, align 4
  %sub140 = sub nsw i32 %add139, %137
  %idxprom141 = sext i32 %sub140 to i64
  %138 = load i8*, i8** %cr, align 8
  %arrayidx142 = getelementptr inbounds i8, i8* %138, i64 %idxprom141
  %139 = load i8, i8* %arrayidx142, align 1
  %conv143 = zext i8 %139 to i32
  %mul144 = mul nsw i32 %conv138, %conv143
  %conv145 = sitofp i32 %mul144 to double
  %add146 = fadd double %add135, %conv145
  %140 = load i32, i32* %col, align 4
  %141 = load i32, i32* %bytes, align 4
  %add147 = add nsw i32 %140, %141
  %idxprom148 = sext i32 %add147 to i64
  %142 = load i8*, i8** %cr, align 8
  %arrayidx149 = getelementptr inbounds i8, i8* %142, i64 %idxprom148
  %143 = load i8, i8* %arrayidx149, align 1
  %conv150 = zext i8 %143 to i32
  %144 = load i32, i32* %col, align 4
  %145 = load i32, i32* %bytes, align 4
  %mul151 = mul nsw i32 2, %145
  %add152 = add nsw i32 %144, %mul151
  %146 = load i32, i32* %ind, align 4
  %sub153 = sub nsw i32 %add152, %146
  %idxprom154 = sext i32 %sub153 to i64
  %147 = load i8*, i8** %cr, align 8
  %arrayidx155 = getelementptr inbounds i8, i8* %147, i64 %idxprom154
  %148 = load i8, i8* %arrayidx155, align 1
  %conv156 = zext i8 %148 to i32
  %mul157 = mul nsw i32 %conv150, %conv156
  %conv158 = sitofp i32 %mul157 to double
  %add159 = fadd double %add146, %conv158
  %149 = load i32, i32* %col, align 4
  %150 = load i32, i32* %bytes, align 4
  %sub160 = sub nsw i32 %149, %150
  %idxprom161 = sext i32 %sub160 to i64
  %151 = load i8*, i8** %nr, align 8
  %arrayidx162 = getelementptr inbounds i8, i8* %151, i64 %idxprom161
  %152 = load i8, i8* %arrayidx162, align 1
  %conv163 = zext i8 %152 to i32
  %153 = load i32, i32* %col, align 4
  %154 = load i32, i32* %ind, align 4
  %sub164 = sub nsw i32 %153, %154
  %idxprom165 = sext i32 %sub164 to i64
  %155 = load i8*, i8** %nr, align 8
  %arrayidx166 = getelementptr inbounds i8, i8* %155, i64 %idxprom165
  %156 = load i8, i8* %arrayidx166, align 1
  %conv167 = zext i8 %156 to i32
  %mul168 = mul nsw i32 %conv163, %conv167
  %conv169 = sitofp i32 %mul168 to double
  %add170 = fadd double %add159, %conv169
  %157 = load i32, i32* %col, align 4
  %idxprom171 = sext i32 %157 to i64
  %158 = load i8*, i8** %nr, align 8
  %arrayidx172 = getelementptr inbounds i8, i8* %158, i64 %idxprom171
  %159 = load i8, i8* %arrayidx172, align 1
  %conv173 = zext i8 %159 to i32
  %160 = load i32, i32* %col, align 4
  %161 = load i32, i32* %bytes, align 4
  %add174 = add nsw i32 %160, %161
  %162 = load i32, i32* %ind, align 4
  %sub175 = sub nsw i32 %add174, %162
  %idxprom176 = sext i32 %sub175 to i64
  %163 = load i8*, i8** %nr, align 8
  %arrayidx177 = getelementptr inbounds i8, i8* %163, i64 %idxprom176
  %164 = load i8, i8* %arrayidx177, align 1
  %conv178 = zext i8 %164 to i32
  %mul179 = mul nsw i32 %conv173, %conv178
  %conv180 = sitofp i32 %mul179 to double
  %add181 = fadd double %add170, %conv180
  %165 = load i32, i32* %col, align 4
  %166 = load i32, i32* %bytes, align 4
  %add182 = add nsw i32 %165, %166
  %idxprom183 = sext i32 %add182 to i64
  %167 = load i8*, i8** %nr, align 8
  %arrayidx184 = getelementptr inbounds i8, i8* %167, i64 %idxprom183
  %168 = load i8, i8* %arrayidx184, align 1
  %conv185 = zext i8 %168 to i32
  %169 = load i32, i32* %col, align 4
  %170 = load i32, i32* %bytes, align 4
  %mul186 = mul nsw i32 2, %170
  %add187 = add nsw i32 %169, %mul186
  %171 = load i32, i32* %ind, align 4
  %sub188 = sub nsw i32 %add187, %171
  %idxprom189 = sext i32 %sub188 to i64
  %172 = load i8*, i8** %nr, align 8
  %arrayidx190 = getelementptr inbounds i8, i8* %172, i64 %idxprom189
  %173 = load i8, i8* %arrayidx190, align 1
  %conv191 = zext i8 %173 to i32
  %mul192 = mul nsw i32 %conv185, %conv191
  %conv193 = sitofp i32 %mul192 to double
  %add194 = fadd double %add181, %conv193
  %174 = load i32, i32* %col, align 4
  %175 = load i32, i32* %ind, align 4
  %sub195 = sub nsw i32 %174, %175
  %idxprom196 = sext i32 %sub195 to i64
  %176 = load i8*, i8** %pr, align 8
  %arrayidx197 = getelementptr inbounds i8, i8* %176, i64 %idxprom196
  %177 = load i8, i8* %arrayidx197, align 1
  %conv198 = uitofp i8 %177 to double
  %178 = load i32, i32* %col, align 4
  %179 = load i32, i32* %bytes, align 4
  %add199 = add nsw i32 %178, %179
  %180 = load i32, i32* %ind, align 4
  %sub200 = sub nsw i32 %add199, %180
  %idxprom201 = sext i32 %sub200 to i64
  %181 = load i8*, i8** %pr, align 8
  %arrayidx202 = getelementptr inbounds i8, i8* %181, i64 %idxprom201
  %182 = load i8, i8* %arrayidx202, align 1
  %conv203 = uitofp i8 %182 to double
  %add204 = fadd double %conv198, %conv203
  %183 = load i32, i32* %col, align 4
  %184 = load i32, i32* %bytes, align 4
  %mul205 = mul nsw i32 2, %184
  %add206 = add nsw i32 %183, %mul205
  %185 = load i32, i32* %ind, align 4
  %sub207 = sub nsw i32 %add206, %185
  %idxprom208 = sext i32 %sub207 to i64
  %186 = load i8*, i8** %pr, align 8
  %arrayidx209 = getelementptr inbounds i8, i8* %186, i64 %idxprom208
  %187 = load i8, i8* %arrayidx209, align 1
  %conv210 = uitofp i8 %187 to double
  %add211 = fadd double %add204, %conv210
  %188 = load i32, i32* %col, align 4
  %189 = load i32, i32* %ind, align 4
  %sub212 = sub nsw i32 %188, %189
  %idxprom213 = sext i32 %sub212 to i64
  %190 = load i8*, i8** %cr, align 8
  %arrayidx214 = getelementptr inbounds i8, i8* %190, i64 %idxprom213
  %191 = load i8, i8* %arrayidx214, align 1
  %conv215 = uitofp i8 %191 to double
  %add216 = fadd double %add211, %conv215
  %192 = load i32, i32* %col, align 4
  %193 = load i32, i32* %bytes, align 4
  %add217 = add nsw i32 %192, %193
  %194 = load i32, i32* %ind, align 4
  %sub218 = sub nsw i32 %add217, %194
  %idxprom219 = sext i32 %sub218 to i64
  %195 = load i8*, i8** %cr, align 8
  %arrayidx220 = getelementptr inbounds i8, i8* %195, i64 %idxprom219
  %196 = load i8, i8* %arrayidx220, align 1
  %conv221 = uitofp i8 %196 to double
  %add222 = fadd double %add216, %conv221
  %197 = load i32, i32* %col, align 4
  %198 = load i32, i32* %bytes, align 4
  %mul223 = mul nsw i32 2, %198
  %add224 = add nsw i32 %197, %mul223
  %199 = load i32, i32* %ind, align 4
  %sub225 = sub nsw i32 %add224, %199
  %idxprom226 = sext i32 %sub225 to i64
  %200 = load i8*, i8** %cr, align 8
  %arrayidx227 = getelementptr inbounds i8, i8* %200, i64 %idxprom226
  %201 = load i8, i8* %arrayidx227, align 1
  %conv228 = uitofp i8 %201 to double
  %add229 = fadd double %add222, %conv228
  %202 = load i32, i32* %col, align 4
  %203 = load i32, i32* %ind, align 4
  %sub230 = sub nsw i32 %202, %203
  %idxprom231 = sext i32 %sub230 to i64
  %204 = load i8*, i8** %nr, align 8
  %arrayidx232 = getelementptr inbounds i8, i8* %204, i64 %idxprom231
  %205 = load i8, i8* %arrayidx232, align 1
  %conv233 = uitofp i8 %205 to double
  %add234 = fadd double %add229, %conv233
  %206 = load i32, i32* %col, align 4
  %207 = load i32, i32* %bytes, align 4
  %add235 = add nsw i32 %206, %207
  %208 = load i32, i32* %ind, align 4
  %sub236 = sub nsw i32 %add235, %208
  %idxprom237 = sext i32 %sub236 to i64
  %209 = load i8*, i8** %nr, align 8
  %arrayidx238 = getelementptr inbounds i8, i8* %209, i64 %idxprom237
  %210 = load i8, i8* %arrayidx238, align 1
  %conv239 = uitofp i8 %210 to double
  %add240 = fadd double %add234, %conv239
  %211 = load i32, i32* %col, align 4
  %212 = load i32, i32* %bytes, align 4
  %mul241 = mul nsw i32 2, %212
  %add242 = add nsw i32 %211, %mul241
  %213 = load i32, i32* %ind, align 4
  %sub243 = sub nsw i32 %add242, %213
  %idxprom244 = sext i32 %sub243 to i64
  %214 = load i8*, i8** %nr, align 8
  %arrayidx245 = getelementptr inbounds i8, i8* %214, i64 %idxprom244
  %215 = load i8, i8* %arrayidx245, align 1
  %conv246 = uitofp i8 %215 to double
  %add247 = fadd double %add240, %conv246
  %div248 = fdiv double %add194, %add247
  %add249 = fadd double %div248, 5.000000e-01
  %conv250 = fptosi double %add249 to i32
  %conv251 = trunc i32 %conv250 to i8
  %216 = load i8*, i8** %d, align 8
  %incdec.ptr252 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %incdec.ptr252, i8** %d, align 8
  store i8 %conv251, i8* %216, align 1
  br label %if.end.253

if.end.253:                                       ; preds = %if.else, %if.then.49
  br label %for.inc

for.inc:                                          ; preds = %if.end.253
  %217 = load i32, i32* %col, align 4
  %inc254 = add nsw i32 %217, 1
  store i32 %inc254, i32* %col, align 4
  br label %for.cond.40

for.end:                                          ; preds = %for.cond.40
  %218 = load i8*, i8** %dest, align 8
  %219 = load i32, i32* %x1, align 4
  %220 = load i32, i32* %row, align 4
  %221 = load i32, i32* %x2, align 4
  %222 = load i32, i32* %x1, align 4
  %sub255 = sub nsw i32 %221, %222
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %destPR, i8* %218, i32 %219, i32 %220, i32 %sub255)
  %223 = load i8*, i8** %pr, align 8
  store i8* %223, i8** %tmp, align 8
  %224 = load i8*, i8** %cr, align 8
  store i8* %224, i8** %pr, align 8
  %225 = load i8*, i8** %nr, align 8
  store i8* %225, i8** %cr, align 8
  %226 = load i8*, i8** %tmp, align 8
  store i8* %226, i8** %nr, align 8
  %227 = load i32, i32* %row, align 4
  %rem = srem i32 %227, 32
  %cmp256 = icmp eq i32 %rem, 0
  br i1 %cmp256, label %if.then.258, label %if.end.264

if.then.258:                                      ; preds = %for.end
  %228 = load i32, i32* %row, align 4
  %conv259 = sitofp i32 %228 to double
  %229 = load i32, i32* %y2, align 4
  %230 = load i32, i32* %y1, align 4
  %sub260 = sub nsw i32 %229, %230
  %conv261 = sitofp i32 %sub260 to double
  %div262 = fdiv double %conv259, %conv261
  %call263 = call i32 @gimp_progress_update(double %div262)
  br label %if.end.264

if.end.264:                                       ; preds = %if.then.258, %for.end
  br label %for.inc.265

for.inc.265:                                      ; preds = %if.end.264
  %231 = load i32, i32* %row, align 4
  %inc266 = add nsw i32 %231, 1
  store i32 %inc266, i32* %row, align 4
  br label %for.cond

for.end.267:                                      ; preds = %for.cond
  %call268 = call i32 @gimp_progress_update(double 1.000000e+00)
  %232 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %232)
  %233 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id269 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %233, i32 0, i32 0
  %234 = load i32, i32* %drawable_id269, align 4
  %call270 = call i32 @gimp_drawable_merge_shadow(i32 %234, i32 1)
  %235 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id271 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %235, i32 0, i32 0
  %236 = load i32, i32* %drawable_id271, align 4
  %237 = load i32, i32* %x1, align 4
  %238 = load i32, i32* %y1, align 4
  %239 = load i32, i32* %x2, align 4
  %240 = load i32, i32* %x1, align 4
  %sub272 = sub nsw i32 %239, %240
  %241 = load i32, i32* %y2, align 4
  %242 = load i32, i32* %y1, align 4
  %sub273 = sub nsw i32 %241, %242
  %call274 = call i32 @gimp_drawable_update(i32 %236, i32 %237, i32 %238, i32 %sub272, i32 %sub273)
  %243 = load i8*, i8** %prev_row, align 8
  call void @g_free(i8* %243)
  %244 = load i8*, i8** %cur_row, align 8
  call void @g_free(i8* %244)
  %245 = load i8*, i8** %next_row, align 8
  call void @g_free(i8* %245)
  %246 = load i8*, i8** %dest, align 8
  call void @g_free(i8* %246)
  br label %return

return:                                           ; preds = %for.end.267, %if.then
  ret void
}

declare i32 @gimp_displays_flush() #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @blur_prepare_row(%struct._GimpPixelRgn* %pixel_rgn, i8* %data, i32 %x, i32 %y, i32 %w) #5 {
entry:
  %pixel_rgn.addr = alloca %struct._GimpPixelRgn*, align 8
  %data.addr = alloca i8*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %b = alloca i32, align 4
  store %struct._GimpPixelRgn* %pixel_rgn, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  %0 = load i32, i32* %y.addr, align 4
  %1 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %1, i32 0, i32 7
  %2 = load i32, i32* %h, align 4
  %sub = sub nsw i32 %2, 1
  %cmp = icmp sgt i32 %0, %sub
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %h1 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %3, i32 0, i32 7
  %4 = load i32, i32* %h1, align 4
  %sub2 = sub nsw i32 %4, 1
  br label %cond.end.6

cond.false:                                       ; preds = %entry
  %5 = load i32, i32* %y.addr, align 4
  %cmp3 = icmp slt i32 %5, 0
  br i1 %cmp3, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %cond.false
  br label %cond.end

cond.false.5:                                     ; preds = %cond.false
  %6 = load i32, i32* %y.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.5, %cond.true.4
  %cond = phi i32 [ 0, %cond.true.4 ], [ %6, %cond.false.5 ]
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.end, %cond.true
  %cond7 = phi i32 [ %sub2, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond7, i32* %y.addr, align 4
  %7 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %8 = load i8*, i8** %data.addr, align 8
  %9 = load i32, i32* %x.addr, align 4
  %10 = load i32, i32* %y.addr, align 4
  %11 = load i32, i32* %w.addr, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %7, i8* %8, i32 %9, i32 %10, i32 %11)
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.6
  %12 = load i32, i32* %b, align 4
  %13 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %13, i32 0, i32 2
  %14 = load i32, i32* %bpp, align 4
  %cmp8 = icmp slt i32 %12, %14
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %b, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load i8*, i8** %data.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 %idxprom
  %17 = load i8, i8* %arrayidx, align 1
  %18 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %bpp9 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %18, i32 0, i32 2
  %19 = load i32, i32* %bpp9, align 4
  %sub10 = sub nsw i32 0, %19
  %20 = load i32, i32* %b, align 4
  %add = add nsw i32 %sub10, %20
  %idxprom11 = sext i32 %add to i64
  %21 = load i8*, i8** %data.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %21, i64 %idxprom11
  store i8 %17, i8* %arrayidx12, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %b, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %b, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.27, %for.end
  %23 = load i32, i32* %b, align 4
  %24 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %bpp14 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %24, i32 0, i32 2
  %25 = load i32, i32* %bpp14, align 4
  %cmp15 = icmp slt i32 %23, %25
  br i1 %cmp15, label %for.body.16, label %for.end.29

for.body.16:                                      ; preds = %for.cond.13
  %26 = load i32, i32* %w.addr, align 4
  %sub17 = sub nsw i32 %26, 1
  %27 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %bpp18 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %27, i32 0, i32 2
  %28 = load i32, i32* %bpp18, align 4
  %mul = mul nsw i32 %sub17, %28
  %29 = load i32, i32* %b, align 4
  %add19 = add nsw i32 %mul, %29
  %idxprom20 = sext i32 %add19 to i64
  %30 = load i8*, i8** %data.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %30, i64 %idxprom20
  %31 = load i8, i8* %arrayidx21, align 1
  %32 = load i32, i32* %w.addr, align 4
  %33 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %bpp22 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %33, i32 0, i32 2
  %34 = load i32, i32* %bpp22, align 4
  %mul23 = mul nsw i32 %32, %34
  %35 = load i32, i32* %b, align 4
  %add24 = add nsw i32 %mul23, %35
  %idxprom25 = sext i32 %add24 to i64
  %36 = load i8*, i8** %data.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %36, i64 %idxprom25
  store i8 %31, i8* %arrayidx26, align 1
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.body.16
  %37 = load i32, i32* %b, align 4
  %inc28 = add nsw i32 %37, 1
  store i32 %inc28, i32* %b, align 4
  br label %for.cond.13

for.end.29:                                       ; preds = %for.cond.13
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
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
