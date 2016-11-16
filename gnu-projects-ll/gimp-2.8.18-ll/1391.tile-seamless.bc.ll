; ModuleID = './plug-ins/common/tile-seamless.bc'
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
@.str.6 = private unnamed_addr constant [22 x i8] c"plug-in-make-seamless\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"Alters edges to make the image seamlessly tileable\00", align 1
@.str.8 = private unnamed_addr constant [64 x i8] c"This plugin creates a seamless tileable from the input drawable\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Tim Rowley\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"_Make Seamless\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"<Image>/Filters/Map\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.14 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"Tiler\00", align 1
@tile_region.progress = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i32 1, i32 3, i32 0, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
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
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i8* %call) #4
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0)) #4
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0)) #4
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
  %call11 = call i32 @gimp_tile_width() #5
  %div = udiv i32 %9, %call11
  %add = add i32 %div, 1
  %mul = mul i32 2, %add
  %conv = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @tile(%struct._GimpDrawable* %10)
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
define internal void @tile(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %width = alloca i64, align 8
  %height = alloca i64, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_bounds(i32 %1, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0)) #4
  %call2 = call i32 @gimp_progress_init(i8* %call1)
  %2 = load i32, i32* %y2, align 4
  %3 = load i32, i32* %y1, align 4
  %sub = sub nsw i32 %2, %3
  %conv = sext i32 %sub to i64
  store i64 %conv, i64* %height, align 8
  %4 = load i32, i32* %x2, align 4
  %5 = load i32, i32* %x1, align 4
  %sub3 = sub nsw i32 %4, %5
  %conv4 = sext i32 %sub3 to i64
  store i64 %conv4, i64* %width, align 8
  %6 = load i64, i64* %width, align 8
  %and = and i64 %6, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %8 = load i32, i32* %x1, align 4
  %conv5 = sext i32 %8 to i64
  %9 = load i64, i64* %width, align 8
  %div = sdiv i64 %9, 2
  %add = add nsw i64 %conv5, %div
  %conv6 = trunc i64 %add to i32
  %10 = load i32, i32* %y1, align 4
  %11 = load i64, i64* %height, align 8
  %conv7 = trunc i64 %11 to i32
  call void @copy_region(%struct._GimpDrawable* %7, i32 %conv6, i32 %10, i32 1, i32 %conv7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i64, i64* %height, align 8
  %and8 = and i64 %12, 1
  %tobool9 = icmp ne i64 %and8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.16

if.then.10:                                       ; preds = %if.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = load i32, i32* %x1, align 4
  %15 = load i32, i32* %y1, align 4
  %conv11 = sext i32 %15 to i64
  %16 = load i64, i64* %height, align 8
  %div12 = sdiv i64 %16, 2
  %add13 = add nsw i64 %conv11, %div12
  %conv14 = trunc i64 %add13 to i32
  %17 = load i64, i64* %width, align 8
  %conv15 = trunc i64 %17 to i32
  call void @copy_region(%struct._GimpDrawable* %13, i32 %14, i32 %conv14, i32 %conv15, i32 1)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.10, %if.end
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %19 = load i32, i32* %x1, align 4
  %20 = load i32, i32* %y1, align 4
  %21 = load i32, i32* %x2, align 4
  %22 = load i32, i32* %y2, align 4
  call void @tile_region(%struct._GimpDrawable* %18, i32 1, i32 %19, i32 %20, i32 %21, i32 %22)
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %24 = load i32, i32* %x1, align 4
  %25 = load i32, i32* %y1, align 4
  %26 = load i32, i32* %x2, align 4
  %27 = load i32, i32* %y2, align 4
  call void @tile_region(%struct._GimpDrawable* %23, i32 0, i32 %24, i32 %25, i32 %26, i32 %27)
  %call17 = call i32 @gimp_progress_update(double 1.000000e+00)
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %28)
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id18 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %29, i32 0, i32 0
  %30 = load i32, i32* %drawable_id18, align 4
  %call19 = call i32 @gimp_drawable_merge_shadow(i32 %30, i32 1)
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id20 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %31, i32 0, i32 0
  %32 = load i32, i32* %drawable_id20, align 4
  %33 = load i32, i32* %x1, align 4
  %34 = load i32, i32* %y1, align 4
  %35 = load i64, i64* %width, align 8
  %conv21 = trunc i64 %35 to i32
  %36 = load i64, i64* %height, align 8
  %conv22 = trunc i64 %36 to i32
  %call23 = call i32 @gimp_drawable_update(i32 %32, i32 %33, i32 %34, i32 %conv21, i32 %conv22)
  ret void
}

declare i32 @gimp_displays_flush() #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @copy_region(%struct._GimpDrawable* %drawable, i32 %x, i32 %y, i32 %w, i32 %h) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %pr = alloca i8*, align 8
  %k = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32, i32* %y.addr, align 4
  %3 = load i32, i32* %w.addr, align 4
  %4 = load i32, i32* %h.addr, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 0, i32 0)
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %6 = load i32, i32* %x.addr, align 4
  %7 = load i32, i32* %y.addr, align 4
  %8 = load i32, i32* %w.addr, align 4
  %9 = load i32, i32* %h.addr, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 1, i32 1)
  %call = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 2, %struct._GimpPixelRgn* %src_rgn, %struct._GimpPixelRgn* %dest_rgn)
  store i8* %call, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.12, %entry
  %10 = load i8*, i8** %pr, align 8
  %cmp = icmp ne i8* %10, null
  br i1 %cmp, label %for.body, label %for.end.14

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %k, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %11 = load i32, i32* %k, align 4
  %h2 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 7
  %12 = load i32, i32* %h2, align 4
  %cmp3 = icmp slt i32 %11, %12
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.1
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 0
  %13 = load i8*, i8** %data, align 8
  %14 = load i32, i32* %k, align 4
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 3
  %15 = load i32, i32* %rowstride, align 4
  %mul = mul nsw i32 %14, %15
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  %data5 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 0
  %16 = load i8*, i8** %data5, align 8
  %17 = load i32, i32* %k, align 4
  %rowstride6 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 3
  %18 = load i32, i32* %rowstride6, align 4
  %mul7 = mul nsw i32 %17, %18
  %idx.ext8 = sext i32 %mul7 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %16, i64 %idx.ext8
  %w10 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %19 = load i32, i32* %w10, align 4
  %bpp = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 2
  %20 = load i32, i32* %bpp, align 4
  %mul11 = mul nsw i32 %19, %20
  %conv = sext i32 %mul11 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %add.ptr9, i64 %conv, i32 1, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %21 = load i32, i32* %k, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.end
  %22 = load i8*, i8** %pr, align 8
  %call13 = call i8* @gimp_pixel_rgns_process(i8* %22)
  store i8* %call13, i8** %pr, align 8
  br label %for.cond

for.end.14:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tile_region(%struct._GimpDrawable* %drawable, i32 %left, i32 %x1, i32 %y1, i32 %x2, i32 %y2) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %left.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %width = alloca i64, align 8
  %height = alloca i64, align 8
  %bpp = alloca i32, align 4
  %wodd = alloca i32, align 4
  %hodd = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %rgn1_x = alloca i32, align 4
  %rgn2_x = alloca i32, align 4
  %max_progress = alloca i32, align 4
  %src1_rgn = alloca %struct._GimpPixelRgn, align 8
  %src2_rgn = alloca %struct._GimpPixelRgn, align 8
  %dest1_rgn = alloca %struct._GimpPixelRgn, align 8
  %dest2_rgn = alloca %struct._GimpPixelRgn, align 8
  %pr = alloca i8*, align 8
  %has_alpha = alloca i32, align 4
  %asymmetry_correction = alloca i32, align 4
  %src1 = alloca i8*, align 8
  %dest1 = alloca i8*, align 8
  %src2 = alloca i8*, align 8
  %dest2 = alloca i8*, align 8
  %row = alloca i32, align 4
  %s1 = alloca i8*, align 8
  %s2 = alloca i8*, align 8
  %d1 = alloca i8*, align 8
  %d2 = alloca i8*, align 8
  %col = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %left, i32* %left.addr, align 4
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_bpp(i32 %1)
  store i32 %call, i32* %bpp, align 4
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id1 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 0
  %3 = load i32, i32* %drawable_id1, align 4
  %call2 = call i32 @gimp_drawable_has_alpha(i32 %3)
  store i32 %call2, i32* %has_alpha, align 4
  %4 = load i32, i32* %y2.addr, align 4
  %5 = load i32, i32* %y1.addr, align 4
  %sub = sub nsw i32 %4, %5
  %conv = sext i32 %sub to i64
  store i64 %conv, i64* %height, align 8
  %6 = load i32, i32* %x2.addr, align 4
  %7 = load i32, i32* %x1.addr, align 4
  %sub3 = sub nsw i32 %6, %7
  %conv4 = sext i32 %sub3 to i64
  store i64 %conv4, i64* %width, align 8
  %8 = load i64, i64* %width, align 8
  %and = and i64 %8, 1
  %conv5 = trunc i64 %and to i32
  store i32 %conv5, i32* %wodd, align 4
  %9 = load i64, i64* %height, align 8
  %and6 = and i64 %9, 1
  %conv7 = trunc i64 %and6 to i32
  store i32 %conv7, i32* %hodd, align 4
  %10 = load i64, i64* %width, align 8
  %div = sdiv i64 %10, 2
  %conv8 = trunc i64 %div to i32
  store i32 %conv8, i32* %w, align 4
  %11 = load i64, i64* %height, align 8
  %div9 = sdiv i64 %11, 2
  %conv10 = trunc i64 %div9 to i32
  store i32 %conv10, i32* %h, align 4
  %12 = load i32, i32* %left.addr, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %13 = load i32, i32* %x1.addr, align 4
  store i32 %13, i32* %rgn1_x, align 4
  %14 = load i32, i32* %x1.addr, align 4
  %15 = load i32, i32* %w, align 4
  %add = add nsw i32 %14, %15
  %16 = load i32, i32* %wodd, align 4
  %add11 = add nsw i32 %add, %16
  store i32 %add11, i32* %rgn2_x, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %17 = load i32, i32* %x1.addr, align 4
  %18 = load i32, i32* %w, align 4
  %add12 = add nsw i32 %17, %18
  %19 = load i32, i32* %wodd, align 4
  %add13 = add nsw i32 %add12, %19
  store i32 %add13, i32* %rgn1_x, align 4
  %20 = load i32, i32* %x1.addr, align 4
  store i32 %20, i32* %rgn2_x, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %21 = load i32, i32* %wodd, align 4
  %tobool14 = icmp ne i32 %21, 0
  br i1 %tobool14, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %22 = load i32, i32* %left.addr, align 4
  %tobool15 = icmp ne i32 %22, 0
  %lnot = xor i1 %tobool15, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %23 = phi i1 [ false, %if.end ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %23 to i32
  store i32 %land.ext, i32* %asymmetry_correction, align 4
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %25 = load i32, i32* %rgn1_x, align 4
  %26 = load i32, i32* %y1.addr, align 4
  %27 = load i32, i32* %w, align 4
  %28 = load i32, i32* %h, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src1_rgn, %struct._GimpDrawable* %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 0, i32 0)
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %30 = load i32, i32* %rgn1_x, align 4
  %31 = load i32, i32* %y1.addr, align 4
  %32 = load i32, i32* %w, align 4
  %33 = load i32, i32* %h, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest1_rgn, %struct._GimpDrawable* %29, i32 %30, i32 %31, i32 %32, i32 %33, i32 1, i32 1)
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %35 = load i32, i32* %rgn2_x, align 4
  %36 = load i32, i32* %y1.addr, align 4
  %37 = load i32, i32* %h, align 4
  %add16 = add nsw i32 %36, %37
  %38 = load i32, i32* %hodd, align 4
  %add17 = add nsw i32 %add16, %38
  %39 = load i32, i32* %w, align 4
  %40 = load i32, i32* %h, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src2_rgn, %struct._GimpDrawable* %34, i32 %35, i32 %add17, i32 %39, i32 %40, i32 0, i32 0)
  %41 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %42 = load i32, i32* %rgn2_x, align 4
  %43 = load i32, i32* %y1.addr, align 4
  %44 = load i32, i32* %h, align 4
  %add18 = add nsw i32 %43, %44
  %45 = load i32, i32* %hodd, align 4
  %add19 = add nsw i32 %add18, %45
  %46 = load i32, i32* %w, align 4
  %47 = load i32, i32* %h, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest2_rgn, %struct._GimpDrawable* %41, i32 %42, i32 %add19, i32 %46, i32 %47, i32 1, i32 1)
  %48 = load i64, i64* %width, align 8
  %49 = load i64, i64* %height, align 8
  %mul = mul nsw i64 %48, %49
  %div20 = sdiv i64 %mul, 2
  %conv21 = trunc i64 %div20 to i32
  store i32 %conv21, i32* %max_progress, align 4
  %call22 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 4, %struct._GimpPixelRgn* %src1_rgn, %struct._GimpPixelRgn* %dest1_rgn, %struct._GimpPixelRgn* %src2_rgn, %struct._GimpPixelRgn* %dest2_rgn)
  store i8* %call22, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.94, %land.end
  %50 = load i8*, i8** %pr, align 8
  %cmp = icmp ne i8* %50, null
  br i1 %cmp, label %for.body, label %for.end.96

for.body:                                         ; preds = %for.cond
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src1_rgn, i32 0, i32 0
  %51 = load i8*, i8** %data, align 8
  store i8* %51, i8** %src1, align 8
  %data24 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest1_rgn, i32 0, i32 0
  %52 = load i8*, i8** %data24, align 8
  store i8* %52, i8** %dest1, align 8
  %data25 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src2_rgn, i32 0, i32 0
  %53 = load i8*, i8** %data25, align 8
  store i8* %53, i8** %src2, align 8
  %data26 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest2_rgn, i32 0, i32 0
  %54 = load i8*, i8** %data26, align 8
  store i8* %54, i8** %dest2, align 8
  %y27 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src1_rgn, i32 0, i32 5
  %55 = load i32, i32* %y27, align 4
  %56 = load i32, i32* %y1.addr, align 4
  %sub28 = sub nsw i32 %55, %56
  store i32 %sub28, i32* %row, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.82, %for.body
  %57 = load i32, i32* %y, align 4
  %h30 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src1_rgn, i32 0, i32 7
  %58 = load i32, i32* %h30, align 4
  %cmp31 = icmp slt i32 %57, %58
  br i1 %cmp31, label %for.body.33, label %for.end.85

for.body.33:                                      ; preds = %for.cond.29
  %59 = load i8*, i8** %src1, align 8
  store i8* %59, i8** %s1, align 8
  %60 = load i8*, i8** %src2, align 8
  store i8* %60, i8** %s2, align 8
  %61 = load i8*, i8** %dest1, align 8
  store i8* %61, i8** %d1, align 8
  %62 = load i8*, i8** %dest2, align 8
  store i8* %62, i8** %d2, align 8
  %x34 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src1_rgn, i32 0, i32 4
  %63 = load i32, i32* %x34, align 4
  %64 = load i32, i32* %x1.addr, align 4
  %sub35 = sub nsw i32 %63, %64
  store i32 %sub35, i32* %col, align 4
  %65 = load i32, i32* %has_alpha, align 4
  %tobool36 = icmp ne i32 %65, 0
  br i1 %tobool36, label %if.then.37, label %if.else.51

if.then.37:                                       ; preds = %for.body.33
  store i32 0, i32* %x, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc, %if.then.37
  %66 = load i32, i32* %x, align 4
  %w39 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src1_rgn, i32 0, i32 6
  %67 = load i32, i32* %w39, align 4
  %cmp40 = icmp slt i32 %66, %67
  br i1 %cmp40, label %for.body.42, label %for.end

for.body.42:                                      ; preds = %for.cond.38
  %68 = load i8*, i8** %d1, align 8
  %69 = load i8*, i8** %d2, align 8
  %70 = load i32, i32* %w, align 4
  %71 = load i32, i32* %h, align 4
  %72 = load i32, i32* %col, align 4
  %73 = load i32, i32* %asymmetry_correction, align 4
  %add43 = add i32 %72, %73
  %74 = load i32, i32* %row, align 4
  %75 = load i32, i32* %bpp, align 4
  %76 = load i8*, i8** %s1, align 8
  %77 = load i8*, i8** %s2, align 8
  call void @weld_pixels_alpha(i8* %68, i8* %69, i32 %70, i32 %71, i32 %add43, i32 %74, i32 %75, i8* %76, i8* %77)
  %78 = load i32, i32* %bpp, align 4
  %79 = load i8*, i8** %s1, align 8
  %idx.ext = sext i32 %78 to i64
  %add.ptr = getelementptr inbounds i8, i8* %79, i64 %idx.ext
  store i8* %add.ptr, i8** %s1, align 8
  %80 = load i32, i32* %bpp, align 4
  %81 = load i8*, i8** %s2, align 8
  %idx.ext44 = sext i32 %80 to i64
  %add.ptr45 = getelementptr inbounds i8, i8* %81, i64 %idx.ext44
  store i8* %add.ptr45, i8** %s2, align 8
  %82 = load i32, i32* %bpp, align 4
  %83 = load i8*, i8** %d1, align 8
  %idx.ext46 = sext i32 %82 to i64
  %add.ptr47 = getelementptr inbounds i8, i8* %83, i64 %idx.ext46
  store i8* %add.ptr47, i8** %d1, align 8
  %84 = load i32, i32* %bpp, align 4
  %85 = load i8*, i8** %d2, align 8
  %idx.ext48 = sext i32 %84 to i64
  %add.ptr49 = getelementptr inbounds i8, i8* %85, i64 %idx.ext48
  store i8* %add.ptr49, i8** %d2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.42
  %86 = load i32, i32* %x, align 4
  %inc = add nsw i32 %86, 1
  store i32 %inc, i32* %x, align 4
  %87 = load i32, i32* %col, align 4
  %inc50 = add nsw i32 %87, 1
  store i32 %inc50, i32* %col, align 4
  br label %for.cond.38

for.end:                                          ; preds = %for.cond.38
  br label %if.end.70

if.else.51:                                       ; preds = %for.body.33
  store i32 0, i32* %x, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.66, %if.else.51
  %88 = load i32, i32* %x, align 4
  %w53 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src1_rgn, i32 0, i32 6
  %89 = load i32, i32* %w53, align 4
  %cmp54 = icmp slt i32 %88, %89
  br i1 %cmp54, label %for.body.56, label %for.end.69

for.body.56:                                      ; preds = %for.cond.52
  %90 = load i8*, i8** %d1, align 8
  %91 = load i8*, i8** %d2, align 8
  %92 = load i32, i32* %w, align 4
  %93 = load i32, i32* %h, align 4
  %94 = load i32, i32* %col, align 4
  %95 = load i32, i32* %asymmetry_correction, align 4
  %add57 = add i32 %94, %95
  %96 = load i32, i32* %row, align 4
  %97 = load i32, i32* %bpp, align 4
  %98 = load i8*, i8** %s1, align 8
  %99 = load i8*, i8** %s2, align 8
  call void @weld_pixels(i8* %90, i8* %91, i32 %92, i32 %93, i32 %add57, i32 %96, i32 %97, i8* %98, i8* %99)
  %100 = load i32, i32* %bpp, align 4
  %101 = load i8*, i8** %s1, align 8
  %idx.ext58 = sext i32 %100 to i64
  %add.ptr59 = getelementptr inbounds i8, i8* %101, i64 %idx.ext58
  store i8* %add.ptr59, i8** %s1, align 8
  %102 = load i32, i32* %bpp, align 4
  %103 = load i8*, i8** %s2, align 8
  %idx.ext60 = sext i32 %102 to i64
  %add.ptr61 = getelementptr inbounds i8, i8* %103, i64 %idx.ext60
  store i8* %add.ptr61, i8** %s2, align 8
  %104 = load i32, i32* %bpp, align 4
  %105 = load i8*, i8** %d1, align 8
  %idx.ext62 = sext i32 %104 to i64
  %add.ptr63 = getelementptr inbounds i8, i8* %105, i64 %idx.ext62
  store i8* %add.ptr63, i8** %d1, align 8
  %106 = load i32, i32* %bpp, align 4
  %107 = load i8*, i8** %d2, align 8
  %idx.ext64 = sext i32 %106 to i64
  %add.ptr65 = getelementptr inbounds i8, i8* %107, i64 %idx.ext64
  store i8* %add.ptr65, i8** %d2, align 8
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.body.56
  %108 = load i32, i32* %x, align 4
  %inc67 = add nsw i32 %108, 1
  store i32 %inc67, i32* %x, align 4
  %109 = load i32, i32* %col, align 4
  %inc68 = add nsw i32 %109, 1
  store i32 %inc68, i32* %col, align 4
  br label %for.cond.52

for.end.69:                                       ; preds = %for.cond.52
  br label %if.end.70

if.end.70:                                        ; preds = %for.end.69, %for.end
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src1_rgn, i32 0, i32 3
  %110 = load i32, i32* %rowstride, align 4
  %111 = load i8*, i8** %src1, align 8
  %idx.ext71 = sext i32 %110 to i64
  %add.ptr72 = getelementptr inbounds i8, i8* %111, i64 %idx.ext71
  store i8* %add.ptr72, i8** %src1, align 8
  %rowstride73 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src2_rgn, i32 0, i32 3
  %112 = load i32, i32* %rowstride73, align 4
  %113 = load i8*, i8** %src2, align 8
  %idx.ext74 = sext i32 %112 to i64
  %add.ptr75 = getelementptr inbounds i8, i8* %113, i64 %idx.ext74
  store i8* %add.ptr75, i8** %src2, align 8
  %rowstride76 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest1_rgn, i32 0, i32 3
  %114 = load i32, i32* %rowstride76, align 4
  %115 = load i8*, i8** %dest1, align 8
  %idx.ext77 = sext i32 %114 to i64
  %add.ptr78 = getelementptr inbounds i8, i8* %115, i64 %idx.ext77
  store i8* %add.ptr78, i8** %dest1, align 8
  %rowstride79 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest2_rgn, i32 0, i32 3
  %116 = load i32, i32* %rowstride79, align 4
  %117 = load i8*, i8** %dest2, align 8
  %idx.ext80 = sext i32 %116 to i64
  %add.ptr81 = getelementptr inbounds i8, i8* %117, i64 %idx.ext80
  store i8* %add.ptr81, i8** %dest2, align 8
  br label %for.inc.82

for.inc.82:                                       ; preds = %if.end.70
  %118 = load i32, i32* %y, align 4
  %inc83 = add nsw i32 %118, 1
  store i32 %inc83, i32* %y, align 4
  %119 = load i32, i32* %row, align 4
  %inc84 = add nsw i32 %119, 1
  store i32 %inc84, i32* %row, align 4
  br label %for.cond.29

for.end.85:                                       ; preds = %for.cond.29
  %w86 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src1_rgn, i32 0, i32 6
  %120 = load i32, i32* %w86, align 4
  %h87 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src1_rgn, i32 0, i32 7
  %121 = load i32, i32* %h87, align 4
  %mul88 = mul nsw i32 %120, %121
  %122 = load i32, i32* @tile_region.progress, align 4
  %add89 = add nsw i32 %122, %mul88
  store i32 %add89, i32* @tile_region.progress, align 4
  %123 = load i32, i32* @tile_region.progress, align 4
  %conv90 = sitofp i32 %123 to double
  %124 = load i32, i32* %max_progress, align 4
  %conv91 = sitofp i32 %124 to double
  %div92 = fdiv double %conv90, %conv91
  %call93 = call i32 @gimp_progress_update(double %div92)
  br label %for.inc.94

for.inc.94:                                       ; preds = %for.end.85
  %125 = load i8*, i8** %pr, align 8
  %call95 = call i8* @gimp_pixel_rgns_process(i8* %125)
  store i8* %call95, i8** %pr, align 8
  br label %for.cond

for.end.96:                                       ; preds = %for.cond
  ret void
}

declare i32 @gimp_progress_update(double) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare i8* @gimp_pixel_rgns_register(i32, ...) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare i8* @gimp_pixel_rgns_process(i8*) #1

declare i32 @gimp_drawable_bpp(i32) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

; Function Attrs: nounwind uwtable
define internal void @weld_pixels_alpha(i8* %dest1, i8* %dest2, i32 %width, i32 %height, i32 %x, i32 %y, i32 %bpp, i8* %src1, i8* %src2) #0 {
entry:
  %dest1.addr = alloca i8*, align 8
  %dest2.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %bpp.addr = alloca i32, align 4
  %src1.addr = alloca i8*, align 8
  %src2.addr = alloca i8*, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %w = alloca double, align 8
  %alpha = alloca double, align 8
  %ai = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %dest1, i8** %dest1.addr, align 8
  store i8* %dest2, i8** %dest2.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %bpp, i32* %bpp.addr, align 4
  store i8* %src1, i8** %src1.addr, align 8
  store i8* %src2, i8** %src2.addr, align 8
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %width.addr, align 4
  %sub = sub nsw i32 %0, %1
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %x.addr, align 4
  %3 = load i32, i32* %width.addr, align 4
  %sub1 = sub nsw i32 %2, %3
  %sub2 = sub nsw i32 0, %sub1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* %x.addr, align 4
  %5 = load i32, i32* %width.addr, align 4
  %sub3 = sub nsw i32 %4, %5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub2, %cond.true ], [ %sub3, %cond.false ]
  %sub4 = sub nsw i32 %cond, 1
  %conv = sitofp i32 %sub4 to double
  %6 = load i32, i32* %width.addr, align 4
  %sub5 = sub nsw i32 %6, 1
  %conv6 = sitofp i32 %sub5 to double
  %div = fdiv double %conv, %conv6
  store double %div, double* %a, align 8
  %7 = load i32, i32* %y.addr, align 4
  %8 = load i32, i32* %height.addr, align 4
  %sub7 = sub nsw i32 %7, %8
  %cmp8 = icmp slt i32 %sub7, 0
  br i1 %cmp8, label %cond.true.10, label %cond.false.13

cond.true.10:                                     ; preds = %cond.end
  %9 = load i32, i32* %y.addr, align 4
  %10 = load i32, i32* %height.addr, align 4
  %sub11 = sub nsw i32 %9, %10
  %sub12 = sub nsw i32 0, %sub11
  br label %cond.end.15

cond.false.13:                                    ; preds = %cond.end
  %11 = load i32, i32* %y.addr, align 4
  %12 = load i32, i32* %height.addr, align 4
  %sub14 = sub nsw i32 %11, %12
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.13, %cond.true.10
  %cond16 = phi i32 [ %sub12, %cond.true.10 ], [ %sub14, %cond.false.13 ]
  %sub17 = sub nsw i32 %cond16, 1
  %conv18 = sitofp i32 %sub17 to double
  %13 = load i32, i32* %height.addr, align 4
  %sub19 = sub nsw i32 %13, 1
  %conv20 = sitofp i32 %sub19 to double
  %div21 = fdiv double %conv18, %conv20
  store double %div21, double* %b, align 8
  %14 = load i32, i32* %bpp.addr, align 4
  %sub22 = sub i32 %14, 1
  store i32 %sub22, i32* %ai, align 4
  %15 = load double, double* %a, align 8
  %cmp23 = fcmp olt double %15, 1.000000e-08
  br i1 %cmp23, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end.15
  %16 = load double, double* %b, align 8
  %cmp25 = fcmp ogt double %16, 0x3FEFFFFFFAA19C47
  br i1 %cmp25, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store double 1.000000e+00, double* %w, align 8
  br label %if.end.40

if.else:                                          ; preds = %land.lhs.true, %cond.end.15
  %17 = load double, double* %a, align 8
  %cmp27 = fcmp ogt double %17, 0x3FEFFFFFFAA19C47
  br i1 %cmp27, label %land.lhs.true.29, label %if.else.33

land.lhs.true.29:                                 ; preds = %if.else
  %18 = load double, double* %b, align 8
  %cmp30 = fcmp olt double %18, 1.000000e-08
  br i1 %cmp30, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %land.lhs.true.29
  store double 0.000000e+00, double* %w, align 8
  br label %if.end

if.else.33:                                       ; preds = %land.lhs.true.29, %if.else
  %19 = load double, double* %a, align 8
  %20 = load double, double* %b, align 8
  %mul = fmul double %19, %20
  %21 = load double, double* %a, align 8
  %22 = load double, double* %b, align 8
  %mul34 = fmul double %21, %22
  %23 = load double, double* %a, align 8
  %sub35 = fsub double 1.000000e+00, %23
  %24 = load double, double* %b, align 8
  %sub36 = fsub double 1.000000e+00, %24
  %mul37 = fmul double %sub35, %sub36
  %add = fadd double %mul34, %mul37
  %div38 = fdiv double %mul, %add
  %sub39 = fsub double 1.000000e+00, %div38
  store double %sub39, double* %w, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.33, %if.then.32
  br label %if.end.40

if.end.40:                                        ; preds = %if.end, %if.then
  %25 = load double, double* %w, align 8
  %26 = load i32, i32* %ai, align 4
  %idxprom = zext i32 %26 to i64
  %27 = load i8*, i8** %src1.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %27, i64 %idxprom
  %28 = load i8, i8* %arrayidx, align 1
  %conv41 = zext i8 %28 to i32
  %conv42 = sitofp i32 %conv41 to double
  %mul43 = fmul double %25, %conv42
  %29 = load double, double* %w, align 8
  %sub44 = fsub double 1.000000e+00, %29
  %30 = load i32, i32* %ai, align 4
  %idxprom45 = zext i32 %30 to i64
  %31 = load i8*, i8** %src2.addr, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %31, i64 %idxprom45
  %32 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %32 to i32
  %conv48 = sitofp i32 %conv47 to double
  %mul49 = fmul double %sub44, %conv48
  %add50 = fadd double %mul43, %mul49
  store double %add50, double* %alpha, align 8
  %33 = load double, double* %alpha, align 8
  %conv51 = fptoui double %33 to i8
  %34 = load i32, i32* %ai, align 4
  %idxprom52 = zext i32 %34 to i64
  %35 = load i8*, i8** %dest2.addr, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %35, i64 %idxprom52
  store i8 %conv51, i8* %arrayidx53, align 1
  %36 = load i32, i32* %ai, align 4
  %idxprom54 = zext i32 %36 to i64
  %37 = load i8*, i8** %dest1.addr, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %37, i64 %idxprom54
  store i8 %conv51, i8* %arrayidx55, align 1
  %38 = load i32, i32* %ai, align 4
  %idxprom56 = zext i32 %38 to i64
  %39 = load i8*, i8** %dest1.addr, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %39, i64 %idxprom56
  %40 = load i8, i8* %arrayidx57, align 1
  %tobool = icmp ne i8 %40, 0
  br i1 %tobool, label %if.then.58, label %if.end.89

if.then.58:                                       ; preds = %if.end.40
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.58
  %41 = load i32, i32* %i, align 4
  %42 = load i32, i32* %ai, align 4
  %cmp59 = icmp ult i32 %41, %42
  br i1 %cmp59, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %43 = load double, double* %w, align 8
  %44 = load i32, i32* %i, align 4
  %idxprom61 = zext i32 %44 to i64
  %45 = load i8*, i8** %src1.addr, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %45, i64 %idxprom61
  %46 = load i8, i8* %arrayidx62, align 1
  %conv63 = zext i8 %46 to i32
  %conv64 = sitofp i32 %conv63 to double
  %mul65 = fmul double %43, %conv64
  %47 = load i32, i32* %ai, align 4
  %idxprom66 = zext i32 %47 to i64
  %48 = load i8*, i8** %src1.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %48, i64 %idxprom66
  %49 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %49 to i32
  %conv69 = sitofp i32 %conv68 to double
  %mul70 = fmul double %mul65, %conv69
  %50 = load double, double* %w, align 8
  %sub71 = fsub double 1.000000e+00, %50
  %51 = load i32, i32* %i, align 4
  %idxprom72 = zext i32 %51 to i64
  %52 = load i8*, i8** %src2.addr, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %52, i64 %idxprom72
  %53 = load i8, i8* %arrayidx73, align 1
  %conv74 = zext i8 %53 to i32
  %conv75 = sitofp i32 %conv74 to double
  %mul76 = fmul double %sub71, %conv75
  %54 = load i32, i32* %ai, align 4
  %idxprom77 = zext i32 %54 to i64
  %55 = load i8*, i8** %src2.addr, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %55, i64 %idxprom77
  %56 = load i8, i8* %arrayidx78, align 1
  %conv79 = zext i8 %56 to i32
  %conv80 = sitofp i32 %conv79 to double
  %mul81 = fmul double %mul76, %conv80
  %add82 = fadd double %mul70, %mul81
  %57 = load double, double* %alpha, align 8
  %div83 = fdiv double %add82, %57
  %conv84 = fptoui double %div83 to i8
  %58 = load i32, i32* %i, align 4
  %idxprom85 = zext i32 %58 to i64
  %59 = load i8*, i8** %dest2.addr, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %59, i64 %idxprom85
  store i8 %conv84, i8* %arrayidx86, align 1
  %60 = load i32, i32* %i, align 4
  %idxprom87 = zext i32 %60 to i64
  %61 = load i8*, i8** %dest1.addr, align 8
  %arrayidx88 = getelementptr inbounds i8, i8* %61, i64 %idxprom87
  store i8 %conv84, i8* %arrayidx88, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %62 = load i32, i32* %i, align 4
  %inc = add i32 %62, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.89

if.end.89:                                        ; preds = %for.end, %if.end.40
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @weld_pixels(i8* %dest1, i8* %dest2, i32 %width, i32 %height, i32 %x, i32 %y, i32 %bpp, i8* %src1, i8* %src2) #0 {
entry:
  %dest1.addr = alloca i8*, align 8
  %dest2.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %bpp.addr = alloca i32, align 4
  %src1.addr = alloca i8*, align 8
  %src2.addr = alloca i8*, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %w = alloca double, align 8
  %i = alloca i32, align 4
  store i8* %dest1, i8** %dest1.addr, align 8
  store i8* %dest2, i8** %dest2.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %bpp, i32* %bpp.addr, align 4
  store i8* %src1, i8** %src1.addr, align 8
  store i8* %src2, i8** %src2.addr, align 8
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %width.addr, align 4
  %sub = sub nsw i32 %0, %1
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %x.addr, align 4
  %3 = load i32, i32* %width.addr, align 4
  %sub1 = sub nsw i32 %2, %3
  %sub2 = sub nsw i32 0, %sub1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* %x.addr, align 4
  %5 = load i32, i32* %width.addr, align 4
  %sub3 = sub nsw i32 %4, %5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub2, %cond.true ], [ %sub3, %cond.false ]
  %sub4 = sub nsw i32 %cond, 1
  %conv = sitofp i32 %sub4 to double
  %6 = load i32, i32* %width.addr, align 4
  %sub5 = sub nsw i32 %6, 1
  %conv6 = sitofp i32 %sub5 to double
  %div = fdiv double %conv, %conv6
  store double %div, double* %a, align 8
  %7 = load i32, i32* %y.addr, align 4
  %8 = load i32, i32* %height.addr, align 4
  %sub7 = sub nsw i32 %7, %8
  %cmp8 = icmp slt i32 %sub7, 0
  br i1 %cmp8, label %cond.true.10, label %cond.false.13

cond.true.10:                                     ; preds = %cond.end
  %9 = load i32, i32* %y.addr, align 4
  %10 = load i32, i32* %height.addr, align 4
  %sub11 = sub nsw i32 %9, %10
  %sub12 = sub nsw i32 0, %sub11
  br label %cond.end.15

cond.false.13:                                    ; preds = %cond.end
  %11 = load i32, i32* %y.addr, align 4
  %12 = load i32, i32* %height.addr, align 4
  %sub14 = sub nsw i32 %11, %12
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.13, %cond.true.10
  %cond16 = phi i32 [ %sub12, %cond.true.10 ], [ %sub14, %cond.false.13 ]
  %sub17 = sub nsw i32 %cond16, 1
  %conv18 = sitofp i32 %sub17 to double
  %13 = load i32, i32* %height.addr, align 4
  %sub19 = sub nsw i32 %13, 1
  %conv20 = sitofp i32 %sub19 to double
  %div21 = fdiv double %conv18, %conv20
  store double %div21, double* %b, align 8
  %14 = load double, double* %a, align 8
  %cmp22 = fcmp olt double %14, 1.000000e-08
  br i1 %cmp22, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end.15
  %15 = load double, double* %b, align 8
  %cmp24 = fcmp ogt double %15, 0x3FEFFFFFFAA19C47
  br i1 %cmp24, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store double 1.000000e+00, double* %w, align 8
  br label %if.end.39

if.else:                                          ; preds = %land.lhs.true, %cond.end.15
  %16 = load double, double* %a, align 8
  %cmp26 = fcmp ogt double %16, 0x3FEFFFFFFAA19C47
  br i1 %cmp26, label %land.lhs.true.28, label %if.else.32

land.lhs.true.28:                                 ; preds = %if.else
  %17 = load double, double* %b, align 8
  %cmp29 = fcmp olt double %17, 1.000000e-08
  br i1 %cmp29, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %land.lhs.true.28
  store double 0.000000e+00, double* %w, align 8
  br label %if.end

if.else.32:                                       ; preds = %land.lhs.true.28, %if.else
  %18 = load double, double* %a, align 8
  %19 = load double, double* %b, align 8
  %mul = fmul double %18, %19
  %20 = load double, double* %a, align 8
  %21 = load double, double* %b, align 8
  %mul33 = fmul double %20, %21
  %22 = load double, double* %a, align 8
  %sub34 = fsub double 1.000000e+00, %22
  %23 = load double, double* %b, align 8
  %sub35 = fsub double 1.000000e+00, %23
  %mul36 = fmul double %sub34, %sub35
  %add = fadd double %mul33, %mul36
  %div37 = fdiv double %mul, %add
  %sub38 = fsub double 1.000000e+00, %div37
  store double %sub38, double* %w, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.32, %if.then.31
  br label %if.end.39

if.end.39:                                        ; preds = %if.end, %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.39
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %bpp.addr, align 4
  %cmp40 = icmp ult i32 %24, %25
  br i1 %cmp40, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load double, double* %w, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom = zext i32 %27 to i64
  %28 = load i8*, i8** %src1.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %28, i64 %idxprom
  %29 = load i8, i8* %arrayidx, align 1
  %conv42 = zext i8 %29 to i32
  %conv43 = sitofp i32 %conv42 to double
  %mul44 = fmul double %26, %conv43
  %30 = load double, double* %w, align 8
  %sub45 = fsub double 1.000000e+00, %30
  %31 = load i32, i32* %i, align 4
  %idxprom46 = zext i32 %31 to i64
  %32 = load i8*, i8** %src2.addr, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %32, i64 %idxprom46
  %33 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %33 to i32
  %conv49 = sitofp i32 %conv48 to double
  %mul50 = fmul double %sub45, %conv49
  %add51 = fadd double %mul44, %mul50
  %conv52 = fptoui double %add51 to i8
  %34 = load i32, i32* %i, align 4
  %idxprom53 = zext i32 %34 to i64
  %35 = load i8*, i8** %dest2.addr, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %35, i64 %idxprom53
  store i8 %conv52, i8* %arrayidx54, align 1
  %36 = load i32, i32* %i, align 4
  %idxprom55 = zext i32 %36 to i64
  %37 = load i8*, i8** %dest1.addr, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %37, i64 %idxprom55
  store i8 %conv52, i8* %arrayidx56, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, i32* %i, align 4
  %inc = add i32 %38, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
