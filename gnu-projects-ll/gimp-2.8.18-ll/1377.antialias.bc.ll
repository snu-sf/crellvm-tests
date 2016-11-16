; ModuleID = './plug-ins/common/antialias.bc'
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

@PLUG_IN_INFO = global %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal global [3 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"plug-in-antialias\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"Antialias using the Scale3X edge-extrapolation algorithm\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Help - write me\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Adam D. Moss <adam@gimp.org>\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"2005\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"_Antialias\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"<Image>/Filters/Enhance\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.14 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"Antialiasing...\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i32 1, i32 3, i32 0, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0))
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
  %run_mode = alloca i32, align 4
  %status = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %n_params, i32* %n_params.addr, align 4
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
  %4 = load i8*, i8** %name.addr, align 8
  %call4 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0)) #7
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  %5 = load i32, i32* %run_mode, align 4
  switch i32 %5, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.7
    i32 2, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %if.then
  %6 = load i32, i32* %n_params.addr, align 4
  %cmp5 = icmp ne i32 %6, 3
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %sw.bb
  store i32 1, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.6, %sw.bb
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.then
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.then
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.8, %sw.bb.7, %if.end
  br label %if.end.9

if.else:                                          ; preds = %do.end
  store i32 1, i32* %status, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %sw.epilog
  %7 = load i32, i32* %status, align 4
  %cmp10 = icmp eq i32 %7, 3
  br i1 %cmp10, label %if.then.11, label %if.end.23

if.then.11:                                       ; preds = %if.end.9
  %8 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %8, i64 2
  %data13 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx12, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data13 to i32*
  %9 = load i32, i32* %d_drawable, align 4
  %call14 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %9)
  store %struct._GimpDrawable* %call14, %struct._GimpDrawable** %drawable, align 8
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0)) #5
  %call16 = call i32 @gimp_progress_init(i8* %call15)
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 1
  %11 = load i32, i32* %width, align 4
  %call17 = call i32 @gimp_tile_width() #6
  %div = udiv i32 %11, %call17
  %add = add i32 %div, 1
  %mul = mul i32 2, %add
  %conv = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @render(%struct._GimpDrawable* %12)
  %13 = load i32, i32* %run_mode, align 4
  %cmp18 = icmp ne i32 %13, 1
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.then.11
  %call21 = call i32 @gimp_displays_flush()
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.then.11
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %14)
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end.9
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %15 = load i32, i32* %status, align 4
  store i32 %15, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
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

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @gimp_tile_cache_ntiles(i64) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #3

; Function Attrs: nounwind uwtable
define internal void @render(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bytes = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %b = alloca i32, align 4
  %srcPR = alloca %struct._GimpPixelRgn, align 8
  %destPR = alloca %struct._GimpPixelRgn, align 8
  %rowbefore = alloca i8*, align 8
  %rowthis = alloca i8*, align 8
  %rowafter = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %ninepix = alloca i8*, align 8
  %has_alpha = alloca i32, align 4
  %alpha = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %srcrowafter = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_intersect(i32 %1, i32* %x, i32* %y, i32* %w, i32* %h)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width1 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 1
  %3 = load i32, i32* %width1, align 4
  store i32 %3, i32* %width, align 4
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height2 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 2
  %5 = load i32, i32* %height2, align 4
  store i32 %5, i32* %height, align 4
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 3
  %7 = load i32, i32* %bpp, align 4
  store i32 %7, i32* %bytes, align 4
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id3 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 0
  %9 = load i32, i32* %drawable_id3, align 4
  %call4 = call i32 @gimp_drawable_has_alpha(i32 %9)
  store i32 %call4, i32* %has_alpha, align 4
  %10 = load i32, i32* %bytes, align 4
  %sub = sub nsw i32 %10, 1
  store i32 %sub, i32* %alpha, align 4
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %12 = load i32, i32* %width, align 4
  %13 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %srcPR, %struct._GimpDrawable* %11, i32 0, i32 0, i32 %12, i32 %13, i32 0, i32 0)
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %15 = load i32, i32* %width, align 4
  %16 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %destPR, %struct._GimpDrawable* %14, i32 0, i32 0, i32 %15, i32 %16, i32 1, i32 1)
  %17 = load i32, i32* %width, align 4
  %add = add nsw i32 %17, 2
  %18 = load i32, i32* %bytes, align 4
  %mul = mul nsw i32 %add, %18
  %conv = sext i32 %mul to i64
  %call5 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call5, i8** %rowbefore, align 8
  %19 = load i32, i32* %width, align 4
  %add6 = add nsw i32 %19, 2
  %20 = load i32, i32* %bytes, align 4
  %mul7 = mul nsw i32 %add6, %20
  %conv8 = sext i32 %mul7 to i64
  %call9 = call noalias i8* @g_malloc_n(i64 %conv8, i64 1)
  store i8* %call9, i8** %rowthis, align 8
  %21 = load i32, i32* %width, align 4
  %add10 = add nsw i32 %21, 2
  %22 = load i32, i32* %bytes, align 4
  %mul11 = mul nsw i32 %add10, %22
  %conv12 = sext i32 %mul11 to i64
  %call13 = call noalias i8* @g_malloc_n(i64 %conv12, i64 1)
  store i8* %call13, i8** %rowafter, align 8
  %23 = load i32, i32* %width, align 4
  %add14 = add nsw i32 %23, 2
  %24 = load i32, i32* %bytes, align 4
  %mul15 = mul nsw i32 %add14, %24
  %conv16 = sext i32 %mul15 to i64
  %call17 = call noalias i8* @g_malloc_n(i64 %conv16, i64 1)
  store i8* %call17, i8** %dest, align 8
  %25 = load i32, i32* %bytes, align 4
  %mul18 = mul nsw i32 9, %25
  %conv19 = sext i32 %mul18 to i64
  %call20 = call noalias i8* @g_malloc_n(i64 %conv19, i64 1)
  store i8* %call20, i8** %ninepix, align 8
  %26 = load i32, i32* %bytes, align 4
  %idxprom = sext i32 %26 to i64
  %27 = load i8*, i8** %rowthis, align 8
  %arrayidx = getelementptr inbounds i8, i8* %27, i64 %idxprom
  %28 = load i32, i32* %y, align 4
  %29 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %srcPR, i8* %arrayidx, i32 0, i32 %28, i32 %29)
  %30 = load i8*, i8** %rowthis, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %30, i64 0
  %31 = load i32, i32* %bytes, align 4
  %idxprom22 = sext i32 %31 to i64
  %32 = load i8*, i8** %rowthis, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %32, i64 %idxprom22
  %33 = load i32, i32* %bytes, align 4
  %conv24 = sext i32 %33 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx21, i8* %arrayidx23, i64 %conv24, i32 1, i1 false)
  %34 = load i32, i32* %width, align 4
  %add25 = add nsw i32 %34, 1
  %35 = load i32, i32* %bytes, align 4
  %mul26 = mul nsw i32 %add25, %35
  %idxprom27 = sext i32 %mul26 to i64
  %36 = load i8*, i8** %rowthis, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %36, i64 %idxprom27
  %37 = load i32, i32* %width, align 4
  %38 = load i32, i32* %bytes, align 4
  %mul29 = mul nsw i32 %37, %38
  %idxprom30 = sext i32 %mul29 to i64
  %39 = load i8*, i8** %rowthis, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %39, i64 %idxprom30
  %40 = load i32, i32* %bytes, align 4
  %conv32 = sext i32 %40 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx28, i8* %arrayidx31, i64 %conv32, i32 1, i1 false)
  %41 = load i8*, i8** %rowbefore, align 8
  %42 = load i8*, i8** %rowthis, align 8
  %43 = load i32, i32* %width, align 4
  %add33 = add nsw i32 %43, 2
  %44 = load i32, i32* %bytes, align 4
  %mul34 = mul nsw i32 %add33, %44
  %conv35 = sext i32 %mul34 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 %conv35, i32 1, i1 false)
  %45 = load i8*, i8** %rowafter, align 8
  %46 = load i8*, i8** %rowthis, align 8
  %47 = load i32, i32* %width, align 4
  %add36 = add nsw i32 %47, 2
  %48 = load i32, i32* %bytes, align 4
  %mul37 = mul nsw i32 %add36, %48
  %conv38 = sext i32 %mul37 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 %conv38, i32 1, i1 false)
  %49 = load i32, i32* %y, align 4
  store i32 %49, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.377, %if.end
  %50 = load i32, i32* %row, align 4
  %51 = load i32, i32* %y, align 4
  %52 = load i32, i32* %h, align 4
  %add39 = add nsw i32 %51, %52
  %cmp = icmp slt i32 %50, %add39
  br i1 %cmp, label %for.body, label %for.end.379

for.body:                                         ; preds = %for.cond
  %53 = load i32, i32* %row, align 4
  %add42 = add nsw i32 %53, 1
  store i32 %add42, i32* %srcrowafter, align 4
  %54 = load i32, i32* %srcrowafter, align 4
  %55 = load i32, i32* %y, align 4
  %56 = load i32, i32* %h, align 4
  %add43 = add nsw i32 %55, %56
  %sub44 = sub nsw i32 %add43, 1
  %cmp45 = icmp sge i32 %54, %sub44
  br i1 %cmp45, label %if.then.47, label %if.end.50

if.then.47:                                       ; preds = %for.body
  %57 = load i32, i32* %y, align 4
  %58 = load i32, i32* %h, align 4
  %add48 = add nsw i32 %57, %58
  %sub49 = sub nsw i32 %add48, 1
  store i32 %sub49, i32* %srcrowafter, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.47, %for.body
  %59 = load i8*, i8** %rowbefore, align 8
  store i8* %59, i8** %tmp, align 8
  %60 = load i8*, i8** %rowthis, align 8
  store i8* %60, i8** %rowbefore, align 8
  %61 = load i8*, i8** %rowafter, align 8
  store i8* %61, i8** %rowthis, align 8
  %62 = load i8*, i8** %tmp, align 8
  store i8* %62, i8** %rowafter, align 8
  %63 = load i32, i32* %bytes, align 4
  %idxprom51 = sext i32 %63 to i64
  %64 = load i8*, i8** %rowafter, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %64, i64 %idxprom51
  %65 = load i32, i32* %srcrowafter, align 4
  %66 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %srcPR, i8* %arrayidx52, i32 0, i32 %65, i32 %66)
  %67 = load i8*, i8** %rowafter, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %67, i64 0
  %68 = load i32, i32* %bytes, align 4
  %idxprom54 = sext i32 %68 to i64
  %69 = load i8*, i8** %rowafter, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %69, i64 %idxprom54
  %70 = load i32, i32* %bytes, align 4
  %conv56 = sext i32 %70 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx53, i8* %arrayidx55, i64 %conv56, i32 1, i1 false)
  %71 = load i32, i32* %width, align 4
  %add57 = add nsw i32 %71, 1
  %72 = load i32, i32* %bytes, align 4
  %mul58 = mul nsw i32 %add57, %72
  %idxprom59 = sext i32 %mul58 to i64
  %73 = load i8*, i8** %rowafter, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %73, i64 %idxprom59
  %74 = load i32, i32* %width, align 4
  %75 = load i32, i32* %bytes, align 4
  %mul61 = mul nsw i32 %74, %75
  %idxprom62 = sext i32 %mul61 to i64
  %76 = load i8*, i8** %rowafter, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %76, i64 %idxprom62
  %77 = load i32, i32* %bytes, align 4
  %conv64 = sext i32 %77 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx60, i8* %arrayidx63, i64 %conv64, i32 1, i1 false)
  %78 = load i32, i32* %x, align 4
  store i32 %78, i32* %col, align 4
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.363, %if.end.50
  %79 = load i32, i32* %col, align 4
  %80 = load i32, i32* %x, align 4
  %81 = load i32, i32* %w, align 4
  %add66 = add nsw i32 %80, %81
  %cmp67 = icmp slt i32 %79, %add66
  br i1 %cmp67, label %for.body.69, label %for.end.365

for.body.69:                                      ; preds = %for.cond.65
  %82 = load i32, i32* %has_alpha, align 4
  %tobool70 = icmp ne i32 %82, 0
  br i1 %tobool70, label %lor.lhs.false, label %land.lhs.true

lor.lhs.false:                                    ; preds = %for.body.69
  %83 = load i32, i32* %col, align 4
  %add71 = add nsw i32 %83, 1
  %84 = load i32, i32* %bytes, align 4
  %mul72 = mul nsw i32 %add71, %84
  %85 = load i32, i32* %alpha, align 4
  %add73 = add i32 %mul72, %85
  %idxprom74 = zext i32 %add73 to i64
  %86 = load i8*, i8** %rowthis, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %86, i64 %idxprom74
  %87 = load i8, i8* %arrayidx75, align 1
  %conv76 = zext i8 %87 to i32
  %tobool77 = icmp ne i32 %conv76, 0
  br i1 %tobool77, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false, %for.body.69
  %88 = load i32, i32* %bytes, align 4
  %89 = load i32, i32* %bytes, align 4
  %mul78 = mul nsw i32 0, %89
  %idxprom79 = sext i32 %mul78 to i64
  %90 = load i8*, i8** %ninepix, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %90, i64 %idxprom79
  %91 = load i32, i32* %bytes, align 4
  %mul81 = mul nsw i32 1, %91
  %idxprom82 = sext i32 %mul81 to i64
  %92 = load i8*, i8** %ninepix, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %92, i64 %idxprom82
  %93 = load i32, i32* %bytes, align 4
  %mul84 = mul nsw i32 2, %93
  %idxprom85 = sext i32 %mul84 to i64
  %94 = load i8*, i8** %ninepix, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %94, i64 %idxprom85
  %95 = load i32, i32* %bytes, align 4
  %mul87 = mul nsw i32 3, %95
  %idxprom88 = sext i32 %mul87 to i64
  %96 = load i8*, i8** %ninepix, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %96, i64 %idxprom88
  %97 = load i32, i32* %bytes, align 4
  %mul90 = mul nsw i32 4, %97
  %idxprom91 = sext i32 %mul90 to i64
  %98 = load i8*, i8** %ninepix, align 8
  %arrayidx92 = getelementptr inbounds i8, i8* %98, i64 %idxprom91
  %99 = load i32, i32* %bytes, align 4
  %mul93 = mul nsw i32 5, %99
  %idxprom94 = sext i32 %mul93 to i64
  %100 = load i8*, i8** %ninepix, align 8
  %arrayidx95 = getelementptr inbounds i8, i8* %100, i64 %idxprom94
  %101 = load i32, i32* %bytes, align 4
  %mul96 = mul nsw i32 6, %101
  %idxprom97 = sext i32 %mul96 to i64
  %102 = load i8*, i8** %ninepix, align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %102, i64 %idxprom97
  %103 = load i32, i32* %bytes, align 4
  %mul99 = mul nsw i32 7, %103
  %idxprom100 = sext i32 %mul99 to i64
  %104 = load i8*, i8** %ninepix, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %104, i64 %idxprom100
  %105 = load i32, i32* %bytes, align 4
  %mul102 = mul nsw i32 8, %105
  %idxprom103 = sext i32 %mul102 to i64
  %106 = load i8*, i8** %ninepix, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %106, i64 %idxprom103
  %107 = load i32, i32* %has_alpha, align 4
  %tobool105 = icmp ne i32 %107, 0
  br i1 %tobool105, label %lor.lhs.false.106, label %cond.true

lor.lhs.false.106:                                ; preds = %land.lhs.true
  %108 = load i32, i32* %col, align 4
  %add107 = add nsw i32 %108, 0
  %109 = load i32, i32* %bytes, align 4
  %mul108 = mul nsw i32 %add107, %109
  %idxprom109 = sext i32 %mul108 to i64
  %110 = load i8*, i8** %rowbefore, align 8
  %arrayidx110 = getelementptr inbounds i8, i8* %110, i64 %idxprom109
  %111 = load i32, i32* %alpha, align 4
  %idx.ext = zext i32 %111 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arrayidx110, i64 %idx.ext
  %112 = load i8, i8* %add.ptr, align 1
  %conv111 = zext i8 %112 to i32
  %tobool112 = icmp ne i32 %conv111, 0
  br i1 %tobool112, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.106, %land.lhs.true
  %113 = load i32, i32* %col, align 4
  %add113 = add nsw i32 %113, 0
  %114 = load i32, i32* %bytes, align 4
  %mul114 = mul nsw i32 %add113, %114
  %idxprom115 = sext i32 %mul114 to i64
  %115 = load i8*, i8** %rowbefore, align 8
  %arrayidx116 = getelementptr inbounds i8, i8* %115, i64 %idxprom115
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false.106
  %116 = load i32, i32* %col, align 4
  %add117 = add nsw i32 %116, 1
  %117 = load i32, i32* %bytes, align 4
  %mul118 = mul nsw i32 %add117, %117
  %idxprom119 = sext i32 %mul118 to i64
  %118 = load i8*, i8** %rowthis, align 8
  %arrayidx120 = getelementptr inbounds i8, i8* %118, i64 %idxprom119
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %arrayidx116, %cond.true ], [ %arrayidx120, %cond.false ]
  %119 = load i32, i32* %has_alpha, align 4
  %tobool121 = icmp ne i32 %119, 0
  br i1 %tobool121, label %lor.lhs.false.122, label %cond.true.131

lor.lhs.false.122:                                ; preds = %cond.end
  %120 = load i32, i32* %col, align 4
  %add123 = add nsw i32 %120, 1
  %121 = load i32, i32* %bytes, align 4
  %mul124 = mul nsw i32 %add123, %121
  %idxprom125 = sext i32 %mul124 to i64
  %122 = load i8*, i8** %rowbefore, align 8
  %arrayidx126 = getelementptr inbounds i8, i8* %122, i64 %idxprom125
  %123 = load i32, i32* %alpha, align 4
  %idx.ext127 = zext i32 %123 to i64
  %add.ptr128 = getelementptr inbounds i8, i8* %arrayidx126, i64 %idx.ext127
  %124 = load i8, i8* %add.ptr128, align 1
  %conv129 = zext i8 %124 to i32
  %tobool130 = icmp ne i32 %conv129, 0
  br i1 %tobool130, label %cond.true.131, label %cond.false.136

cond.true.131:                                    ; preds = %lor.lhs.false.122, %cond.end
  %125 = load i32, i32* %col, align 4
  %add132 = add nsw i32 %125, 1
  %126 = load i32, i32* %bytes, align 4
  %mul133 = mul nsw i32 %add132, %126
  %idxprom134 = sext i32 %mul133 to i64
  %127 = load i8*, i8** %rowbefore, align 8
  %arrayidx135 = getelementptr inbounds i8, i8* %127, i64 %idxprom134
  br label %cond.end.141

cond.false.136:                                   ; preds = %lor.lhs.false.122
  %128 = load i32, i32* %col, align 4
  %add137 = add nsw i32 %128, 1
  %129 = load i32, i32* %bytes, align 4
  %mul138 = mul nsw i32 %add137, %129
  %idxprom139 = sext i32 %mul138 to i64
  %130 = load i8*, i8** %rowthis, align 8
  %arrayidx140 = getelementptr inbounds i8, i8* %130, i64 %idxprom139
  br label %cond.end.141

cond.end.141:                                     ; preds = %cond.false.136, %cond.true.131
  %cond142 = phi i8* [ %arrayidx135, %cond.true.131 ], [ %arrayidx140, %cond.false.136 ]
  %131 = load i32, i32* %has_alpha, align 4
  %tobool143 = icmp ne i32 %131, 0
  br i1 %tobool143, label %lor.lhs.false.144, label %cond.true.153

lor.lhs.false.144:                                ; preds = %cond.end.141
  %132 = load i32, i32* %col, align 4
  %add145 = add nsw i32 %132, 2
  %133 = load i32, i32* %bytes, align 4
  %mul146 = mul nsw i32 %add145, %133
  %idxprom147 = sext i32 %mul146 to i64
  %134 = load i8*, i8** %rowbefore, align 8
  %arrayidx148 = getelementptr inbounds i8, i8* %134, i64 %idxprom147
  %135 = load i32, i32* %alpha, align 4
  %idx.ext149 = zext i32 %135 to i64
  %add.ptr150 = getelementptr inbounds i8, i8* %arrayidx148, i64 %idx.ext149
  %136 = load i8, i8* %add.ptr150, align 1
  %conv151 = zext i8 %136 to i32
  %tobool152 = icmp ne i32 %conv151, 0
  br i1 %tobool152, label %cond.true.153, label %cond.false.158

cond.true.153:                                    ; preds = %lor.lhs.false.144, %cond.end.141
  %137 = load i32, i32* %col, align 4
  %add154 = add nsw i32 %137, 2
  %138 = load i32, i32* %bytes, align 4
  %mul155 = mul nsw i32 %add154, %138
  %idxprom156 = sext i32 %mul155 to i64
  %139 = load i8*, i8** %rowbefore, align 8
  %arrayidx157 = getelementptr inbounds i8, i8* %139, i64 %idxprom156
  br label %cond.end.163

cond.false.158:                                   ; preds = %lor.lhs.false.144
  %140 = load i32, i32* %col, align 4
  %add159 = add nsw i32 %140, 1
  %141 = load i32, i32* %bytes, align 4
  %mul160 = mul nsw i32 %add159, %141
  %idxprom161 = sext i32 %mul160 to i64
  %142 = load i8*, i8** %rowthis, align 8
  %arrayidx162 = getelementptr inbounds i8, i8* %142, i64 %idxprom161
  br label %cond.end.163

cond.end.163:                                     ; preds = %cond.false.158, %cond.true.153
  %cond164 = phi i8* [ %arrayidx157, %cond.true.153 ], [ %arrayidx162, %cond.false.158 ]
  %143 = load i32, i32* %has_alpha, align 4
  %tobool165 = icmp ne i32 %143, 0
  br i1 %tobool165, label %lor.lhs.false.166, label %cond.true.175

lor.lhs.false.166:                                ; preds = %cond.end.163
  %144 = load i32, i32* %col, align 4
  %add167 = add nsw i32 %144, 0
  %145 = load i32, i32* %bytes, align 4
  %mul168 = mul nsw i32 %add167, %145
  %idxprom169 = sext i32 %mul168 to i64
  %146 = load i8*, i8** %rowthis, align 8
  %arrayidx170 = getelementptr inbounds i8, i8* %146, i64 %idxprom169
  %147 = load i32, i32* %alpha, align 4
  %idx.ext171 = zext i32 %147 to i64
  %add.ptr172 = getelementptr inbounds i8, i8* %arrayidx170, i64 %idx.ext171
  %148 = load i8, i8* %add.ptr172, align 1
  %conv173 = zext i8 %148 to i32
  %tobool174 = icmp ne i32 %conv173, 0
  br i1 %tobool174, label %cond.true.175, label %cond.false.180

cond.true.175:                                    ; preds = %lor.lhs.false.166, %cond.end.163
  %149 = load i32, i32* %col, align 4
  %add176 = add nsw i32 %149, 0
  %150 = load i32, i32* %bytes, align 4
  %mul177 = mul nsw i32 %add176, %150
  %idxprom178 = sext i32 %mul177 to i64
  %151 = load i8*, i8** %rowthis, align 8
  %arrayidx179 = getelementptr inbounds i8, i8* %151, i64 %idxprom178
  br label %cond.end.185

cond.false.180:                                   ; preds = %lor.lhs.false.166
  %152 = load i32, i32* %col, align 4
  %add181 = add nsw i32 %152, 1
  %153 = load i32, i32* %bytes, align 4
  %mul182 = mul nsw i32 %add181, %153
  %idxprom183 = sext i32 %mul182 to i64
  %154 = load i8*, i8** %rowthis, align 8
  %arrayidx184 = getelementptr inbounds i8, i8* %154, i64 %idxprom183
  br label %cond.end.185

cond.end.185:                                     ; preds = %cond.false.180, %cond.true.175
  %cond186 = phi i8* [ %arrayidx179, %cond.true.175 ], [ %arrayidx184, %cond.false.180 ]
  %155 = load i32, i32* %col, align 4
  %add187 = add nsw i32 %155, 1
  %156 = load i32, i32* %bytes, align 4
  %mul188 = mul nsw i32 %add187, %156
  %idxprom189 = sext i32 %mul188 to i64
  %157 = load i8*, i8** %rowthis, align 8
  %arrayidx190 = getelementptr inbounds i8, i8* %157, i64 %idxprom189
  %158 = load i32, i32* %has_alpha, align 4
  %tobool191 = icmp ne i32 %158, 0
  br i1 %tobool191, label %lor.lhs.false.192, label %cond.true.201

lor.lhs.false.192:                                ; preds = %cond.end.185
  %159 = load i32, i32* %col, align 4
  %add193 = add nsw i32 %159, 2
  %160 = load i32, i32* %bytes, align 4
  %mul194 = mul nsw i32 %add193, %160
  %idxprom195 = sext i32 %mul194 to i64
  %161 = load i8*, i8** %rowthis, align 8
  %arrayidx196 = getelementptr inbounds i8, i8* %161, i64 %idxprom195
  %162 = load i32, i32* %alpha, align 4
  %idx.ext197 = zext i32 %162 to i64
  %add.ptr198 = getelementptr inbounds i8, i8* %arrayidx196, i64 %idx.ext197
  %163 = load i8, i8* %add.ptr198, align 1
  %conv199 = zext i8 %163 to i32
  %tobool200 = icmp ne i32 %conv199, 0
  br i1 %tobool200, label %cond.true.201, label %cond.false.206

cond.true.201:                                    ; preds = %lor.lhs.false.192, %cond.end.185
  %164 = load i32, i32* %col, align 4
  %add202 = add nsw i32 %164, 2
  %165 = load i32, i32* %bytes, align 4
  %mul203 = mul nsw i32 %add202, %165
  %idxprom204 = sext i32 %mul203 to i64
  %166 = load i8*, i8** %rowthis, align 8
  %arrayidx205 = getelementptr inbounds i8, i8* %166, i64 %idxprom204
  br label %cond.end.211

cond.false.206:                                   ; preds = %lor.lhs.false.192
  %167 = load i32, i32* %col, align 4
  %add207 = add nsw i32 %167, 1
  %168 = load i32, i32* %bytes, align 4
  %mul208 = mul nsw i32 %add207, %168
  %idxprom209 = sext i32 %mul208 to i64
  %169 = load i8*, i8** %rowthis, align 8
  %arrayidx210 = getelementptr inbounds i8, i8* %169, i64 %idxprom209
  br label %cond.end.211

cond.end.211:                                     ; preds = %cond.false.206, %cond.true.201
  %cond212 = phi i8* [ %arrayidx205, %cond.true.201 ], [ %arrayidx210, %cond.false.206 ]
  %170 = load i32, i32* %has_alpha, align 4
  %tobool213 = icmp ne i32 %170, 0
  br i1 %tobool213, label %lor.lhs.false.214, label %cond.true.223

lor.lhs.false.214:                                ; preds = %cond.end.211
  %171 = load i32, i32* %col, align 4
  %add215 = add nsw i32 %171, 0
  %172 = load i32, i32* %bytes, align 4
  %mul216 = mul nsw i32 %add215, %172
  %idxprom217 = sext i32 %mul216 to i64
  %173 = load i8*, i8** %rowafter, align 8
  %arrayidx218 = getelementptr inbounds i8, i8* %173, i64 %idxprom217
  %174 = load i32, i32* %alpha, align 4
  %idx.ext219 = zext i32 %174 to i64
  %add.ptr220 = getelementptr inbounds i8, i8* %arrayidx218, i64 %idx.ext219
  %175 = load i8, i8* %add.ptr220, align 1
  %conv221 = zext i8 %175 to i32
  %tobool222 = icmp ne i32 %conv221, 0
  br i1 %tobool222, label %cond.true.223, label %cond.false.228

cond.true.223:                                    ; preds = %lor.lhs.false.214, %cond.end.211
  %176 = load i32, i32* %col, align 4
  %add224 = add nsw i32 %176, 0
  %177 = load i32, i32* %bytes, align 4
  %mul225 = mul nsw i32 %add224, %177
  %idxprom226 = sext i32 %mul225 to i64
  %178 = load i8*, i8** %rowafter, align 8
  %arrayidx227 = getelementptr inbounds i8, i8* %178, i64 %idxprom226
  br label %cond.end.233

cond.false.228:                                   ; preds = %lor.lhs.false.214
  %179 = load i32, i32* %col, align 4
  %add229 = add nsw i32 %179, 1
  %180 = load i32, i32* %bytes, align 4
  %mul230 = mul nsw i32 %add229, %180
  %idxprom231 = sext i32 %mul230 to i64
  %181 = load i8*, i8** %rowthis, align 8
  %arrayidx232 = getelementptr inbounds i8, i8* %181, i64 %idxprom231
  br label %cond.end.233

cond.end.233:                                     ; preds = %cond.false.228, %cond.true.223
  %cond234 = phi i8* [ %arrayidx227, %cond.true.223 ], [ %arrayidx232, %cond.false.228 ]
  %182 = load i32, i32* %has_alpha, align 4
  %tobool235 = icmp ne i32 %182, 0
  br i1 %tobool235, label %lor.lhs.false.236, label %cond.true.245

lor.lhs.false.236:                                ; preds = %cond.end.233
  %183 = load i32, i32* %col, align 4
  %add237 = add nsw i32 %183, 1
  %184 = load i32, i32* %bytes, align 4
  %mul238 = mul nsw i32 %add237, %184
  %idxprom239 = sext i32 %mul238 to i64
  %185 = load i8*, i8** %rowafter, align 8
  %arrayidx240 = getelementptr inbounds i8, i8* %185, i64 %idxprom239
  %186 = load i32, i32* %alpha, align 4
  %idx.ext241 = zext i32 %186 to i64
  %add.ptr242 = getelementptr inbounds i8, i8* %arrayidx240, i64 %idx.ext241
  %187 = load i8, i8* %add.ptr242, align 1
  %conv243 = zext i8 %187 to i32
  %tobool244 = icmp ne i32 %conv243, 0
  br i1 %tobool244, label %cond.true.245, label %cond.false.250

cond.true.245:                                    ; preds = %lor.lhs.false.236, %cond.end.233
  %188 = load i32, i32* %col, align 4
  %add246 = add nsw i32 %188, 1
  %189 = load i32, i32* %bytes, align 4
  %mul247 = mul nsw i32 %add246, %189
  %idxprom248 = sext i32 %mul247 to i64
  %190 = load i8*, i8** %rowafter, align 8
  %arrayidx249 = getelementptr inbounds i8, i8* %190, i64 %idxprom248
  br label %cond.end.255

cond.false.250:                                   ; preds = %lor.lhs.false.236
  %191 = load i32, i32* %col, align 4
  %add251 = add nsw i32 %191, 1
  %192 = load i32, i32* %bytes, align 4
  %mul252 = mul nsw i32 %add251, %192
  %idxprom253 = sext i32 %mul252 to i64
  %193 = load i8*, i8** %rowthis, align 8
  %arrayidx254 = getelementptr inbounds i8, i8* %193, i64 %idxprom253
  br label %cond.end.255

cond.end.255:                                     ; preds = %cond.false.250, %cond.true.245
  %cond256 = phi i8* [ %arrayidx249, %cond.true.245 ], [ %arrayidx254, %cond.false.250 ]
  %194 = load i32, i32* %has_alpha, align 4
  %tobool257 = icmp ne i32 %194, 0
  br i1 %tobool257, label %lor.lhs.false.258, label %cond.true.267

lor.lhs.false.258:                                ; preds = %cond.end.255
  %195 = load i32, i32* %col, align 4
  %add259 = add nsw i32 %195, 2
  %196 = load i32, i32* %bytes, align 4
  %mul260 = mul nsw i32 %add259, %196
  %idxprom261 = sext i32 %mul260 to i64
  %197 = load i8*, i8** %rowafter, align 8
  %arrayidx262 = getelementptr inbounds i8, i8* %197, i64 %idxprom261
  %198 = load i32, i32* %alpha, align 4
  %idx.ext263 = zext i32 %198 to i64
  %add.ptr264 = getelementptr inbounds i8, i8* %arrayidx262, i64 %idx.ext263
  %199 = load i8, i8* %add.ptr264, align 1
  %conv265 = zext i8 %199 to i32
  %tobool266 = icmp ne i32 %conv265, 0
  br i1 %tobool266, label %cond.true.267, label %cond.false.272

cond.true.267:                                    ; preds = %lor.lhs.false.258, %cond.end.255
  %200 = load i32, i32* %col, align 4
  %add268 = add nsw i32 %200, 2
  %201 = load i32, i32* %bytes, align 4
  %mul269 = mul nsw i32 %add268, %201
  %idxprom270 = sext i32 %mul269 to i64
  %202 = load i8*, i8** %rowafter, align 8
  %arrayidx271 = getelementptr inbounds i8, i8* %202, i64 %idxprom270
  br label %cond.end.277

cond.false.272:                                   ; preds = %lor.lhs.false.258
  %203 = load i32, i32* %col, align 4
  %add273 = add nsw i32 %203, 1
  %204 = load i32, i32* %bytes, align 4
  %mul274 = mul nsw i32 %add273, %204
  %idxprom275 = sext i32 %mul274 to i64
  %205 = load i8*, i8** %rowthis, align 8
  %arrayidx276 = getelementptr inbounds i8, i8* %205, i64 %idxprom275
  br label %cond.end.277

cond.end.277:                                     ; preds = %cond.false.272, %cond.true.267
  %cond278 = phi i8* [ %arrayidx271, %cond.true.267 ], [ %arrayidx276, %cond.false.272 ]
  %call279 = call i32 @extrapolate9(i32 %88, i8* %arrayidx80, i8* %arrayidx83, i8* %arrayidx86, i8* %arrayidx89, i8* %arrayidx92, i8* %arrayidx95, i8* %arrayidx98, i8* %arrayidx101, i8* %arrayidx104, i8* %cond, i8* %cond142, i8* %cond164, i8* %cond186, i8* %arrayidx190, i8* %cond212, i8* %cond234, i8* %cond256, i8* %cond278)
  %tobool280 = icmp ne i32 %call279, 0
  br i1 %tobool280, label %if.then.281, label %if.else

if.then.281:                                      ; preds = %cond.end.277
  store i32 0, i32* %b, align 4
  br label %for.cond.282

for.cond.282:                                     ; preds = %for.inc, %if.then.281
  %206 = load i32, i32* %b, align 4
  %207 = load i32, i32* %bytes, align 4
  %cmp283 = icmp slt i32 %206, %207
  br i1 %cmp283, label %for.body.285, label %for.end

for.body.285:                                     ; preds = %for.cond.282
  %208 = load i32, i32* %bytes, align 4
  %mul286 = mul nsw i32 0, %208
  %209 = load i32, i32* %b, align 4
  %add287 = add nsw i32 %mul286, %209
  %idxprom288 = sext i32 %add287 to i64
  %210 = load i8*, i8** %ninepix, align 8
  %arrayidx289 = getelementptr inbounds i8, i8* %210, i64 %idxprom288
  %211 = load i8, i8* %arrayidx289, align 1
  %conv290 = zext i8 %211 to i32
  %mul291 = mul nsw i32 3, %conv290
  %212 = load i32, i32* %bytes, align 4
  %mul292 = mul nsw i32 1, %212
  %213 = load i32, i32* %b, align 4
  %add293 = add nsw i32 %mul292, %213
  %idxprom294 = sext i32 %add293 to i64
  %214 = load i8*, i8** %ninepix, align 8
  %arrayidx295 = getelementptr inbounds i8, i8* %214, i64 %idxprom294
  %215 = load i8, i8* %arrayidx295, align 1
  %conv296 = zext i8 %215 to i32
  %mul297 = mul nsw i32 5, %conv296
  %add298 = add nsw i32 %mul291, %mul297
  %216 = load i32, i32* %bytes, align 4
  %mul299 = mul nsw i32 2, %216
  %217 = load i32, i32* %b, align 4
  %add300 = add nsw i32 %mul299, %217
  %idxprom301 = sext i32 %add300 to i64
  %218 = load i8*, i8** %ninepix, align 8
  %arrayidx302 = getelementptr inbounds i8, i8* %218, i64 %idxprom301
  %219 = load i8, i8* %arrayidx302, align 1
  %conv303 = zext i8 %219 to i32
  %mul304 = mul nsw i32 3, %conv303
  %add305 = add nsw i32 %add298, %mul304
  %220 = load i32, i32* %bytes, align 4
  %mul306 = mul nsw i32 3, %220
  %221 = load i32, i32* %b, align 4
  %add307 = add nsw i32 %mul306, %221
  %idxprom308 = sext i32 %add307 to i64
  %222 = load i8*, i8** %ninepix, align 8
  %arrayidx309 = getelementptr inbounds i8, i8* %222, i64 %idxprom308
  %223 = load i8, i8* %arrayidx309, align 1
  %conv310 = zext i8 %223 to i32
  %mul311 = mul nsw i32 5, %conv310
  %add312 = add nsw i32 %add305, %mul311
  %224 = load i32, i32* %bytes, align 4
  %mul313 = mul nsw i32 4, %224
  %225 = load i32, i32* %b, align 4
  %add314 = add nsw i32 %mul313, %225
  %idxprom315 = sext i32 %add314 to i64
  %226 = load i8*, i8** %ninepix, align 8
  %arrayidx316 = getelementptr inbounds i8, i8* %226, i64 %idxprom315
  %227 = load i8, i8* %arrayidx316, align 1
  %conv317 = zext i8 %227 to i32
  %mul318 = mul nsw i32 6, %conv317
  %add319 = add nsw i32 %add312, %mul318
  %228 = load i32, i32* %bytes, align 4
  %mul320 = mul nsw i32 5, %228
  %229 = load i32, i32* %b, align 4
  %add321 = add nsw i32 %mul320, %229
  %idxprom322 = sext i32 %add321 to i64
  %230 = load i8*, i8** %ninepix, align 8
  %arrayidx323 = getelementptr inbounds i8, i8* %230, i64 %idxprom322
  %231 = load i8, i8* %arrayidx323, align 1
  %conv324 = zext i8 %231 to i32
  %mul325 = mul nsw i32 5, %conv324
  %add326 = add nsw i32 %add319, %mul325
  %232 = load i32, i32* %bytes, align 4
  %mul327 = mul nsw i32 6, %232
  %233 = load i32, i32* %b, align 4
  %add328 = add nsw i32 %mul327, %233
  %idxprom329 = sext i32 %add328 to i64
  %234 = load i8*, i8** %ninepix, align 8
  %arrayidx330 = getelementptr inbounds i8, i8* %234, i64 %idxprom329
  %235 = load i8, i8* %arrayidx330, align 1
  %conv331 = zext i8 %235 to i32
  %mul332 = mul nsw i32 3, %conv331
  %add333 = add nsw i32 %add326, %mul332
  %236 = load i32, i32* %bytes, align 4
  %mul334 = mul nsw i32 7, %236
  %237 = load i32, i32* %b, align 4
  %add335 = add nsw i32 %mul334, %237
  %idxprom336 = sext i32 %add335 to i64
  %238 = load i8*, i8** %ninepix, align 8
  %arrayidx337 = getelementptr inbounds i8, i8* %238, i64 %idxprom336
  %239 = load i8, i8* %arrayidx337, align 1
  %conv338 = zext i8 %239 to i32
  %mul339 = mul nsw i32 5, %conv338
  %add340 = add nsw i32 %add333, %mul339
  %240 = load i32, i32* %bytes, align 4
  %mul341 = mul nsw i32 8, %240
  %241 = load i32, i32* %b, align 4
  %add342 = add nsw i32 %mul341, %241
  %idxprom343 = sext i32 %add342 to i64
  %242 = load i8*, i8** %ninepix, align 8
  %arrayidx344 = getelementptr inbounds i8, i8* %242, i64 %idxprom343
  %243 = load i8, i8* %arrayidx344, align 1
  %conv345 = zext i8 %243 to i32
  %mul346 = mul nsw i32 3, %conv345
  %add347 = add nsw i32 %add340, %mul346
  %add348 = add nsw i32 %add347, 19
  %div = sdiv i32 %add348, 38
  %conv349 = trunc i32 %div to i8
  %244 = load i32, i32* %col, align 4
  %245 = load i32, i32* %bytes, align 4
  %mul350 = mul nsw i32 %244, %245
  %246 = load i32, i32* %b, align 4
  %add351 = add nsw i32 %mul350, %246
  %idxprom352 = sext i32 %add351 to i64
  %247 = load i8*, i8** %dest, align 8
  %arrayidx353 = getelementptr inbounds i8, i8* %247, i64 %idxprom352
  store i8 %conv349, i8* %arrayidx353, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.285
  %248 = load i32, i32* %b, align 4
  %inc = add nsw i32 %248, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond.282

for.end:                                          ; preds = %for.cond.282
  br label %if.end.362

if.else:                                          ; preds = %cond.end.277, %lor.lhs.false
  %249 = load i32, i32* %col, align 4
  %250 = load i32, i32* %bytes, align 4
  %mul354 = mul nsw i32 %249, %250
  %idxprom355 = sext i32 %mul354 to i64
  %251 = load i8*, i8** %dest, align 8
  %arrayidx356 = getelementptr inbounds i8, i8* %251, i64 %idxprom355
  %252 = load i32, i32* %col, align 4
  %add357 = add nsw i32 %252, 1
  %253 = load i32, i32* %bytes, align 4
  %mul358 = mul nsw i32 %add357, %253
  %idxprom359 = sext i32 %mul358 to i64
  %254 = load i8*, i8** %rowthis, align 8
  %arrayidx360 = getelementptr inbounds i8, i8* %254, i64 %idxprom359
  %255 = load i32, i32* %bytes, align 4
  %conv361 = sext i32 %255 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx356, i8* %arrayidx360, i64 %conv361, i32 1, i1 false)
  br label %if.end.362

if.end.362:                                       ; preds = %if.else, %for.end
  br label %for.inc.363

for.inc.363:                                      ; preds = %if.end.362
  %256 = load i32, i32* %col, align 4
  %inc364 = add nsw i32 %256, 1
  store i32 %inc364, i32* %col, align 4
  br label %for.cond.65

for.end.365:                                      ; preds = %for.cond.65
  %257 = load i32, i32* %x, align 4
  %258 = load i32, i32* %bytes, align 4
  %mul366 = mul nsw i32 %257, %258
  %idxprom367 = sext i32 %mul366 to i64
  %259 = load i8*, i8** %dest, align 8
  %arrayidx368 = getelementptr inbounds i8, i8* %259, i64 %idxprom367
  %260 = load i32, i32* %x, align 4
  %261 = load i32, i32* %row, align 4
  %262 = load i32, i32* %w, align 4
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %destPR, i8* %arrayidx368, i32 %260, i32 %261, i32 %262)
  %263 = load i32, i32* %row, align 4
  %and = and i32 %263, 31
  %cmp369 = icmp eq i32 %and, 0
  br i1 %cmp369, label %if.then.371, label %if.end.376

if.then.371:                                      ; preds = %for.end.365
  %264 = load i32, i32* %row, align 4
  %conv372 = sitofp i32 %264 to double
  %265 = load i32, i32* %h, align 4
  %conv373 = sitofp i32 %265 to double
  %div374 = fdiv double %conv372, %conv373
  %call375 = call i32 @gimp_progress_update(double %div374)
  br label %if.end.376

if.end.376:                                       ; preds = %if.then.371, %for.end.365
  br label %for.inc.377

for.inc.377:                                      ; preds = %if.end.376
  %266 = load i32, i32* %row, align 4
  %inc378 = add nsw i32 %266, 1
  store i32 %inc378, i32* %row, align 4
  br label %for.cond

for.end.379:                                      ; preds = %for.cond
  %call380 = call i32 @gimp_progress_update(double 1.000000e+00)
  %267 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %267)
  %268 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id381 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %268, i32 0, i32 0
  %269 = load i32, i32* %drawable_id381, align 4
  %call382 = call i32 @gimp_drawable_merge_shadow(i32 %269, i32 1)
  %270 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id383 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %270, i32 0, i32 0
  %271 = load i32, i32* %drawable_id383, align 4
  %272 = load i32, i32* %x, align 4
  %273 = load i32, i32* %y, align 4
  %274 = load i32, i32* %w, align 4
  %275 = load i32, i32* %h, align 4
  %call384 = call i32 @gimp_drawable_update(i32 %271, i32 %272, i32 %273, i32 %274, i32 %275)
  %276 = load i8*, i8** %rowbefore, align 8
  call void @g_free(i8* %276)
  %277 = load i8*, i8** %rowthis, align 8
  call void @g_free(i8* %277)
  %278 = load i8*, i8** %rowafter, align 8
  call void @g_free(i8* %278)
  %279 = load i8*, i8** %dest, align 8
  call void @g_free(i8* %279)
  %280 = load i8*, i8** %ninepix, align 8
  call void @g_free(i8* %280)
  br label %return

return:                                           ; preds = %for.end.379, %if.then
  ret void
}

declare i32 @gimp_displays_flush() #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define internal i32 @extrapolate9(i32 %bytes, i8* %E0, i8* %E1, i8* %E2, i8* %E3, i8* %E4, i8* %E5, i8* %E6, i8* %E7, i8* %E8, i8* %A, i8* %B, i8* %C, i8* %D, i8* %E, i8* %F, i8* %G, i8* %H, i8* %I) #0 {
entry:
  %retval = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %E0.addr = alloca i8*, align 8
  %E1.addr = alloca i8*, align 8
  %E2.addr = alloca i8*, align 8
  %E3.addr = alloca i8*, align 8
  %E4.addr = alloca i8*, align 8
  %E5.addr = alloca i8*, align 8
  %E6.addr = alloca i8*, align 8
  %E7.addr = alloca i8*, align 8
  %E8.addr = alloca i8*, align 8
  %A.addr = alloca i8*, align 8
  %B.addr = alloca i8*, align 8
  %C.addr = alloca i8*, align 8
  %D.addr = alloca i8*, align 8
  %E.addr = alloca i8*, align 8
  %F.addr = alloca i8*, align 8
  %G.addr = alloca i8*, align 8
  %H.addr = alloca i8*, align 8
  %I.addr = alloca i8*, align 8
  store i32 %bytes, i32* %bytes.addr, align 4
  store i8* %E0, i8** %E0.addr, align 8
  store i8* %E1, i8** %E1.addr, align 8
  store i8* %E2, i8** %E2.addr, align 8
  store i8* %E3, i8** %E3.addr, align 8
  store i8* %E4, i8** %E4.addr, align 8
  store i8* %E5, i8** %E5.addr, align 8
  store i8* %E6, i8** %E6.addr, align 8
  store i8* %E7, i8** %E7.addr, align 8
  store i8* %E8, i8** %E8.addr, align 8
  store i8* %A, i8** %A.addr, align 8
  store i8* %B, i8** %B.addr, align 8
  store i8* %C, i8** %C.addr, align 8
  store i8* %D, i8** %D.addr, align 8
  store i8* %E, i8** %E.addr, align 8
  store i8* %F, i8** %F.addr, align 8
  store i8* %G, i8** %G.addr, align 8
  store i8* %H, i8** %H.addr, align 8
  store i8* %I, i8** %I.addr, align 8
  %0 = load i8*, i8** %B.addr, align 8
  %1 = load i8*, i8** %H.addr, align 8
  %2 = load i32, i32* %bytes.addr, align 4
  %conv = sext i32 %2 to i64
  %call = call i32 @memcmp(i8* %0, i8* %1, i64 %conv) #7
  %cmp = icmp eq i32 0, %call
  br i1 %cmp, label %if.else.168, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %3 = load i8*, i8** %D.addr, align 8
  %4 = load i8*, i8** %F.addr, align 8
  %5 = load i32, i32* %bytes.addr, align 4
  %conv2 = sext i32 %5 to i64
  %call3 = call i32 @memcmp(i8* %3, i8* %4, i64 %conv2) #7
  %cmp4 = icmp eq i32 0, %call3
  br i1 %cmp4, label %if.else.168, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %6 = load i8*, i8** %D.addr, align 8
  %7 = load i8*, i8** %B.addr, align 8
  %8 = load i32, i32* %bytes.addr, align 4
  %conv6 = sext i32 %8 to i64
  %call7 = call i32 @memcmp(i8* %6, i8* %7, i64 %conv6) #7
  %cmp8 = icmp eq i32 0, %call7
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %if.then.10
  %9 = load i8*, i8** %E0.addr, align 8
  %10 = load i8*, i8** %D.addr, align 8
  %11 = load i32, i32* %bytes.addr, align 4
  %conv11 = sext i32 %11 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 %conv11, i32 1, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %if.then
  br label %do.body.12

do.body.12:                                       ; preds = %if.else
  %12 = load i8*, i8** %E0.addr, align 8
  %13 = load i8*, i8** %E.addr, align 8
  %14 = load i32, i32* %bytes.addr, align 4
  %conv13 = sext i32 %14 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 %conv13, i32 1, i1 false)
  br label %do.end.14

do.end.14:                                        ; preds = %do.body.12
  br label %if.end

if.end:                                           ; preds = %do.end.14, %do.end
  %15 = load i8*, i8** %D.addr, align 8
  %16 = load i8*, i8** %B.addr, align 8
  %17 = load i32, i32* %bytes.addr, align 4
  %conv15 = sext i32 %17 to i64
  %call16 = call i32 @memcmp(i8* %15, i8* %16, i64 %conv15) #7
  %cmp17 = icmp eq i32 0, %call16
  br i1 %cmp17, label %land.lhs.true.19, label %lor.lhs.false

land.lhs.true.19:                                 ; preds = %if.end
  %18 = load i8*, i8** %E.addr, align 8
  %19 = load i8*, i8** %C.addr, align 8
  %20 = load i32, i32* %bytes.addr, align 4
  %conv20 = sext i32 %20 to i64
  %call21 = call i32 @memcmp(i8* %18, i8* %19, i64 %conv20) #7
  %cmp22 = icmp eq i32 0, %call21
  br i1 %cmp22, label %lor.lhs.false, label %if.then.33

lor.lhs.false:                                    ; preds = %land.lhs.true.19, %if.end
  %21 = load i8*, i8** %B.addr, align 8
  %22 = load i8*, i8** %F.addr, align 8
  %23 = load i32, i32* %bytes.addr, align 4
  %conv24 = sext i32 %23 to i64
  %call25 = call i32 @memcmp(i8* %21, i8* %22, i64 %conv24) #7
  %cmp26 = icmp eq i32 0, %call25
  br i1 %cmp26, label %land.lhs.true.28, label %if.else.37

land.lhs.true.28:                                 ; preds = %lor.lhs.false
  %24 = load i8*, i8** %E.addr, align 8
  %25 = load i8*, i8** %A.addr, align 8
  %26 = load i32, i32* %bytes.addr, align 4
  %conv29 = sext i32 %26 to i64
  %call30 = call i32 @memcmp(i8* %24, i8* %25, i64 %conv29) #7
  %cmp31 = icmp eq i32 0, %call30
  br i1 %cmp31, label %if.else.37, label %if.then.33

if.then.33:                                       ; preds = %land.lhs.true.28, %land.lhs.true.19
  br label %do.body.34

do.body.34:                                       ; preds = %if.then.33
  %27 = load i8*, i8** %E1.addr, align 8
  %28 = load i8*, i8** %B.addr, align 8
  %29 = load i32, i32* %bytes.addr, align 4
  %conv35 = sext i32 %29 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 %conv35, i32 1, i1 false)
  br label %do.end.36

do.end.36:                                        ; preds = %do.body.34
  br label %if.end.41

if.else.37:                                       ; preds = %land.lhs.true.28, %lor.lhs.false
  br label %do.body.38

do.body.38:                                       ; preds = %if.else.37
  %30 = load i8*, i8** %E1.addr, align 8
  %31 = load i8*, i8** %E.addr, align 8
  %32 = load i32, i32* %bytes.addr, align 4
  %conv39 = sext i32 %32 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 %conv39, i32 1, i1 false)
  br label %do.end.40

do.end.40:                                        ; preds = %do.body.38
  br label %if.end.41

if.end.41:                                        ; preds = %do.end.40, %do.end.36
  %33 = load i8*, i8** %B.addr, align 8
  %34 = load i8*, i8** %F.addr, align 8
  %35 = load i32, i32* %bytes.addr, align 4
  %conv42 = sext i32 %35 to i64
  %call43 = call i32 @memcmp(i8* %33, i8* %34, i64 %conv42) #7
  %cmp44 = icmp eq i32 0, %call43
  br i1 %cmp44, label %if.then.46, label %if.else.50

if.then.46:                                       ; preds = %if.end.41
  br label %do.body.47

do.body.47:                                       ; preds = %if.then.46
  %36 = load i8*, i8** %E2.addr, align 8
  %37 = load i8*, i8** %F.addr, align 8
  %38 = load i32, i32* %bytes.addr, align 4
  %conv48 = sext i32 %38 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 %conv48, i32 1, i1 false)
  br label %do.end.49

do.end.49:                                        ; preds = %do.body.47
  br label %if.end.54

if.else.50:                                       ; preds = %if.end.41
  br label %do.body.51

do.body.51:                                       ; preds = %if.else.50
  %39 = load i8*, i8** %E2.addr, align 8
  %40 = load i8*, i8** %E.addr, align 8
  %41 = load i32, i32* %bytes.addr, align 4
  %conv52 = sext i32 %41 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 %conv52, i32 1, i1 false)
  br label %do.end.53

do.end.53:                                        ; preds = %do.body.51
  br label %if.end.54

if.end.54:                                        ; preds = %do.end.53, %do.end.49
  %42 = load i8*, i8** %D.addr, align 8
  %43 = load i8*, i8** %B.addr, align 8
  %44 = load i32, i32* %bytes.addr, align 4
  %conv55 = sext i32 %44 to i64
  %call56 = call i32 @memcmp(i8* %42, i8* %43, i64 %conv55) #7
  %cmp57 = icmp eq i32 0, %call56
  br i1 %cmp57, label %land.lhs.true.59, label %lor.lhs.false.64

land.lhs.true.59:                                 ; preds = %if.end.54
  %45 = load i8*, i8** %E.addr, align 8
  %46 = load i8*, i8** %G.addr, align 8
  %47 = load i32, i32* %bytes.addr, align 4
  %conv60 = sext i32 %47 to i64
  %call61 = call i32 @memcmp(i8* %45, i8* %46, i64 %conv60) #7
  %cmp62 = icmp eq i32 0, %call61
  br i1 %cmp62, label %lor.lhs.false.64, label %if.then.74

lor.lhs.false.64:                                 ; preds = %land.lhs.true.59, %if.end.54
  %48 = load i8*, i8** %D.addr, align 8
  %49 = load i8*, i8** %H.addr, align 8
  %50 = load i32, i32* %bytes.addr, align 4
  %conv65 = sext i32 %50 to i64
  %call66 = call i32 @memcmp(i8* %48, i8* %49, i64 %conv65) #7
  %cmp67 = icmp eq i32 0, %call66
  br i1 %cmp67, label %land.lhs.true.69, label %if.else.78

land.lhs.true.69:                                 ; preds = %lor.lhs.false.64
  %51 = load i8*, i8** %E.addr, align 8
  %52 = load i8*, i8** %A.addr, align 8
  %53 = load i32, i32* %bytes.addr, align 4
  %conv70 = sext i32 %53 to i64
  %call71 = call i32 @memcmp(i8* %51, i8* %52, i64 %conv70) #7
  %cmp72 = icmp eq i32 0, %call71
  br i1 %cmp72, label %if.else.78, label %if.then.74

if.then.74:                                       ; preds = %land.lhs.true.69, %land.lhs.true.59
  br label %do.body.75

do.body.75:                                       ; preds = %if.then.74
  %54 = load i8*, i8** %E3.addr, align 8
  %55 = load i8*, i8** %D.addr, align 8
  %56 = load i32, i32* %bytes.addr, align 4
  %conv76 = sext i32 %56 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 %conv76, i32 1, i1 false)
  br label %do.end.77

do.end.77:                                        ; preds = %do.body.75
  br label %if.end.82

if.else.78:                                       ; preds = %land.lhs.true.69, %lor.lhs.false.64
  br label %do.body.79

do.body.79:                                       ; preds = %if.else.78
  %57 = load i8*, i8** %E3.addr, align 8
  %58 = load i8*, i8** %E.addr, align 8
  %59 = load i32, i32* %bytes.addr, align 4
  %conv80 = sext i32 %59 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %58, i64 %conv80, i32 1, i1 false)
  br label %do.end.81

do.end.81:                                        ; preds = %do.body.79
  br label %if.end.82

if.end.82:                                        ; preds = %do.end.81, %do.end.77
  br label %do.body.83

do.body.83:                                       ; preds = %if.end.82
  %60 = load i8*, i8** %E4.addr, align 8
  %61 = load i8*, i8** %E.addr, align 8
  %62 = load i32, i32* %bytes.addr, align 4
  %conv84 = sext i32 %62 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* %61, i64 %conv84, i32 1, i1 false)
  br label %do.end.85

do.end.85:                                        ; preds = %do.body.83
  %63 = load i8*, i8** %B.addr, align 8
  %64 = load i8*, i8** %F.addr, align 8
  %65 = load i32, i32* %bytes.addr, align 4
  %conv86 = sext i32 %65 to i64
  %call87 = call i32 @memcmp(i8* %63, i8* %64, i64 %conv86) #7
  %cmp88 = icmp eq i32 0, %call87
  br i1 %cmp88, label %land.lhs.true.90, label %lor.lhs.false.95

land.lhs.true.90:                                 ; preds = %do.end.85
  %66 = load i8*, i8** %E.addr, align 8
  %67 = load i8*, i8** %I.addr, align 8
  %68 = load i32, i32* %bytes.addr, align 4
  %conv91 = sext i32 %68 to i64
  %call92 = call i32 @memcmp(i8* %66, i8* %67, i64 %conv91) #7
  %cmp93 = icmp eq i32 0, %call92
  br i1 %cmp93, label %lor.lhs.false.95, label %if.then.105

lor.lhs.false.95:                                 ; preds = %land.lhs.true.90, %do.end.85
  %69 = load i8*, i8** %H.addr, align 8
  %70 = load i8*, i8** %F.addr, align 8
  %71 = load i32, i32* %bytes.addr, align 4
  %conv96 = sext i32 %71 to i64
  %call97 = call i32 @memcmp(i8* %69, i8* %70, i64 %conv96) #7
  %cmp98 = icmp eq i32 0, %call97
  br i1 %cmp98, label %land.lhs.true.100, label %if.else.109

land.lhs.true.100:                                ; preds = %lor.lhs.false.95
  %72 = load i8*, i8** %E.addr, align 8
  %73 = load i8*, i8** %C.addr, align 8
  %74 = load i32, i32* %bytes.addr, align 4
  %conv101 = sext i32 %74 to i64
  %call102 = call i32 @memcmp(i8* %72, i8* %73, i64 %conv101) #7
  %cmp103 = icmp eq i32 0, %call102
  br i1 %cmp103, label %if.else.109, label %if.then.105

if.then.105:                                      ; preds = %land.lhs.true.100, %land.lhs.true.90
  br label %do.body.106

do.body.106:                                      ; preds = %if.then.105
  %75 = load i8*, i8** %E5.addr, align 8
  %76 = load i8*, i8** %F.addr, align 8
  %77 = load i32, i32* %bytes.addr, align 4
  %conv107 = sext i32 %77 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* %76, i64 %conv107, i32 1, i1 false)
  br label %do.end.108

do.end.108:                                       ; preds = %do.body.106
  br label %if.end.113

if.else.109:                                      ; preds = %land.lhs.true.100, %lor.lhs.false.95
  br label %do.body.110

do.body.110:                                      ; preds = %if.else.109
  %78 = load i8*, i8** %E5.addr, align 8
  %79 = load i8*, i8** %E.addr, align 8
  %80 = load i32, i32* %bytes.addr, align 4
  %conv111 = sext i32 %80 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* %79, i64 %conv111, i32 1, i1 false)
  br label %do.end.112

do.end.112:                                       ; preds = %do.body.110
  br label %if.end.113

if.end.113:                                       ; preds = %do.end.112, %do.end.108
  %81 = load i8*, i8** %D.addr, align 8
  %82 = load i8*, i8** %H.addr, align 8
  %83 = load i32, i32* %bytes.addr, align 4
  %conv114 = sext i32 %83 to i64
  %call115 = call i32 @memcmp(i8* %81, i8* %82, i64 %conv114) #7
  %cmp116 = icmp eq i32 0, %call115
  br i1 %cmp116, label %if.then.118, label %if.else.122

if.then.118:                                      ; preds = %if.end.113
  br label %do.body.119

do.body.119:                                      ; preds = %if.then.118
  %84 = load i8*, i8** %E6.addr, align 8
  %85 = load i8*, i8** %D.addr, align 8
  %86 = load i32, i32* %bytes.addr, align 4
  %conv120 = sext i32 %86 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %84, i8* %85, i64 %conv120, i32 1, i1 false)
  br label %do.end.121

do.end.121:                                       ; preds = %do.body.119
  br label %if.end.126

if.else.122:                                      ; preds = %if.end.113
  br label %do.body.123

do.body.123:                                      ; preds = %if.else.122
  %87 = load i8*, i8** %E6.addr, align 8
  %88 = load i8*, i8** %E.addr, align 8
  %89 = load i32, i32* %bytes.addr, align 4
  %conv124 = sext i32 %89 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %87, i8* %88, i64 %conv124, i32 1, i1 false)
  br label %do.end.125

do.end.125:                                       ; preds = %do.body.123
  br label %if.end.126

if.end.126:                                       ; preds = %do.end.125, %do.end.121
  %90 = load i8*, i8** %D.addr, align 8
  %91 = load i8*, i8** %H.addr, align 8
  %92 = load i32, i32* %bytes.addr, align 4
  %conv127 = sext i32 %92 to i64
  %call128 = call i32 @memcmp(i8* %90, i8* %91, i64 %conv127) #7
  %cmp129 = icmp eq i32 0, %call128
  br i1 %cmp129, label %land.lhs.true.131, label %lor.lhs.false.136

land.lhs.true.131:                                ; preds = %if.end.126
  %93 = load i8*, i8** %E.addr, align 8
  %94 = load i8*, i8** %I.addr, align 8
  %95 = load i32, i32* %bytes.addr, align 4
  %conv132 = sext i32 %95 to i64
  %call133 = call i32 @memcmp(i8* %93, i8* %94, i64 %conv132) #7
  %cmp134 = icmp eq i32 0, %call133
  br i1 %cmp134, label %lor.lhs.false.136, label %if.then.146

lor.lhs.false.136:                                ; preds = %land.lhs.true.131, %if.end.126
  %96 = load i8*, i8** %H.addr, align 8
  %97 = load i8*, i8** %F.addr, align 8
  %98 = load i32, i32* %bytes.addr, align 4
  %conv137 = sext i32 %98 to i64
  %call138 = call i32 @memcmp(i8* %96, i8* %97, i64 %conv137) #7
  %cmp139 = icmp eq i32 0, %call138
  br i1 %cmp139, label %land.lhs.true.141, label %if.else.150

land.lhs.true.141:                                ; preds = %lor.lhs.false.136
  %99 = load i8*, i8** %E.addr, align 8
  %100 = load i8*, i8** %G.addr, align 8
  %101 = load i32, i32* %bytes.addr, align 4
  %conv142 = sext i32 %101 to i64
  %call143 = call i32 @memcmp(i8* %99, i8* %100, i64 %conv142) #7
  %cmp144 = icmp eq i32 0, %call143
  br i1 %cmp144, label %if.else.150, label %if.then.146

if.then.146:                                      ; preds = %land.lhs.true.141, %land.lhs.true.131
  br label %do.body.147

do.body.147:                                      ; preds = %if.then.146
  %102 = load i8*, i8** %E7.addr, align 8
  %103 = load i8*, i8** %H.addr, align 8
  %104 = load i32, i32* %bytes.addr, align 4
  %conv148 = sext i32 %104 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %102, i8* %103, i64 %conv148, i32 1, i1 false)
  br label %do.end.149

do.end.149:                                       ; preds = %do.body.147
  br label %if.end.154

if.else.150:                                      ; preds = %land.lhs.true.141, %lor.lhs.false.136
  br label %do.body.151

do.body.151:                                      ; preds = %if.else.150
  %105 = load i8*, i8** %E7.addr, align 8
  %106 = load i8*, i8** %E.addr, align 8
  %107 = load i32, i32* %bytes.addr, align 4
  %conv152 = sext i32 %107 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %105, i8* %106, i64 %conv152, i32 1, i1 false)
  br label %do.end.153

do.end.153:                                       ; preds = %do.body.151
  br label %if.end.154

if.end.154:                                       ; preds = %do.end.153, %do.end.149
  %108 = load i8*, i8** %H.addr, align 8
  %109 = load i8*, i8** %F.addr, align 8
  %110 = load i32, i32* %bytes.addr, align 4
  %conv155 = sext i32 %110 to i64
  %call156 = call i32 @memcmp(i8* %108, i8* %109, i64 %conv155) #7
  %cmp157 = icmp eq i32 0, %call156
  br i1 %cmp157, label %if.then.159, label %if.else.163

if.then.159:                                      ; preds = %if.end.154
  br label %do.body.160

do.body.160:                                      ; preds = %if.then.159
  %111 = load i8*, i8** %E8.addr, align 8
  %112 = load i8*, i8** %F.addr, align 8
  %113 = load i32, i32* %bytes.addr, align 4
  %conv161 = sext i32 %113 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %111, i8* %112, i64 %conv161, i32 1, i1 false)
  br label %do.end.162

do.end.162:                                       ; preds = %do.body.160
  br label %if.end.167

if.else.163:                                      ; preds = %if.end.154
  br label %do.body.164

do.body.164:                                      ; preds = %if.else.163
  %114 = load i8*, i8** %E8.addr, align 8
  %115 = load i8*, i8** %E.addr, align 8
  %116 = load i32, i32* %bytes.addr, align 4
  %conv165 = sext i32 %116 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %114, i8* %115, i64 %conv165, i32 1, i1 false)
  br label %do.end.166

do.end.166:                                       ; preds = %do.body.164
  br label %if.end.167

if.end.167:                                       ; preds = %do.end.166, %do.end.162
  store i32 1, i32* %retval
  br label %return

if.else.168:                                      ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.168, %if.end.167
  %117 = load i32, i32* %retval
  ret i32 %117
}

declare void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare i32 @gimp_progress_update(double) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

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
