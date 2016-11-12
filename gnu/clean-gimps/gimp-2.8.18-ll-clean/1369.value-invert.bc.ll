; ModuleID = './plug-ins/common/value-invert.bc'
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
@query.args = internal constant [3 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Input image (used for indexed images)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"plug-in-vinvert\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Invert the brightness of each pixel\00", align 1
@.str.8 = private unnamed_addr constant [317 x i8] c"This function takes an indexed/RGB image and inverts its 'value' in HSV space.  The upshot of this is that the color and saturation at any given point remains the same, but its brightness is effectively inverted.  Quite strange.  Sometimes produces unpleasant color artifacts on images from lossy sources (ie. JPEG).\00", align 1
@.str.9 = private unnamed_addr constant [67 x i8] c"Adam D. Moss (adam@foxbox.org), Mukund Sivaraman <muks@mukund.org>\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"27th March 1997, 12th June 2006\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"_Value Invert\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"RGB*, INDEXED*\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"<Image>/Colors/Invert\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.14 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"Value Invert\00", align 1
@__func__.vinvert_indexed = private unnamed_addr constant [16 x i8] c"vinvert_indexed\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"cmap != NULL\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([317 x i8], [317 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i32 1, i32 3, i32 0, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0))
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
  %status = alloca i32, align 4
  %run_mode = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %image_ID = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #5
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i8* %call) #6
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0)) #6
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0)) #6
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %run_mode, align 4
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %4 = load i32, i32* %status, align 4
  store i32 %4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %5 = load i8*, i8** %name.addr, align 8
  %call4 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)) #7
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.else.26

if.then:                                          ; preds = %do.end
  %6 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %6, i64 2
  %data6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx5, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data6 to i32*
  %7 = load i32, i32* %d_drawable, align 4
  %call7 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %7)
  store %struct._GimpDrawable* %call7, %struct._GimpDrawable** %drawable, align 8
  %8 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx8 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %8, i64 1
  %data9 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx8, i32 0, i32 1
  %d_image = bitcast %union._GimpParamData* %data9 to i32*
  %9 = load i32, i32* %d_image, align 4
  store i32 %9, i32* %image_ID, align 4
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 0
  %11 = load i32, i32* %drawable_id, align 4
  %call10 = call i32 @gimp_drawable_is_rgb(i32 %11)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @vinvert(%struct._GimpDrawable* %12)
  %13 = load i32, i32* %run_mode, align 4
  %cmp12 = icmp ne i32 %13, 1
  br i1 %cmp12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then.11
  %call14 = call i32 @gimp_displays_flush()
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.then.11
  br label %if.end.25

if.else:                                          ; preds = %if.then
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id15 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %14, i32 0, i32 0
  %15 = load i32, i32* %drawable_id15, align 4
  %call16 = call i32 @gimp_drawable_is_indexed(i32 %15)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.else.23

if.then.18:                                       ; preds = %if.else
  %16 = load i32, i32* %image_ID, align 4
  call void @vinvert_indexed(i32 %16)
  %17 = load i32, i32* %run_mode, align 4
  %cmp19 = icmp ne i32 %17, 1
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.then.18
  %call21 = call i32 @gimp_displays_flush()
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.then.18
  br label %if.end.24

if.else.23:                                       ; preds = %if.else
  store i32 0, i32* %status, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.23, %if.end.22
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %18)
  br label %if.end.27

if.else.26:                                       ; preds = %do.end
  store i32 1, i32* %status, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.26, %if.end.25
  %19 = load i32, i32* %status, align 4
  store i32 %19, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
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

; Function Attrs: nounwind uwtable
define internal void @vinvert(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %total = alloca double, align 8
  %processed = alloca double, align 8
  %update = alloca i32, align 4
  %channels = alloca i32, align 4
  %src_rgn = alloca %struct._GimpPixelRgn, align 8
  %dest_rgn = alloca %struct._GimpPixelRgn, align 8
  %src_row = alloca i8*, align 8
  %dest_row = alloca i8*, align 8
  %i = alloca i32, align 4
  %pr = alloca i8*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_mask_intersect(i32 %1, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0)) #6
  %call2 = call i32 @gimp_progress_init(i8* %call1)
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id3 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 0
  %3 = load i32, i32* %drawable_id3, align 4
  %call4 = call i32 @gimp_drawable_bpp(i32 %3)
  store i32 %call4, i32* %channels, align 4
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %5 = load i32, i32* %x, align 4
  %6 = load i32, i32* %y, align 4
  %7 = load i32, i32* %width, align 4
  %8 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %src_rgn, %struct._GimpDrawable* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 0, i32 0)
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %10 = load i32, i32* %x, align 4
  %11 = load i32, i32* %y, align 4
  %12 = load i32, i32* %width, align 4
  %13 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %dest_rgn, %struct._GimpDrawable* %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 1, i32 1)
  %14 = load i32, i32* %width, align 4
  %15 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %14, %15
  %conv = sitofp i32 %mul to double
  store double %conv, double* %total, align 8
  store double 0.000000e+00, double* %processed, align 8
  %call5 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 2, %struct._GimpPixelRgn* %src_rgn, %struct._GimpPixelRgn* %dest_rgn)
  store i8* %call5, i8** %pr, align 8
  store i32 0, i32* %update, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.24, %if.end
  %16 = load i8*, i8** %pr, align 8
  %cmp = icmp ne i8* %16, null
  br i1 %cmp, label %for.body, label %for.end.27

for.body:                                         ; preds = %for.cond
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 0
  %17 = load i8*, i8** %data, align 8
  store i8* %17, i8** %src_row, align 8
  %data7 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 0
  %18 = load i8*, i8** %data7, align 8
  store i8* %18, i8** %dest_row, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body
  %19 = load i32, i32* %i, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 7
  %20 = load i32, i32* %h, align 4
  %cmp9 = icmp slt i32 %19, %20
  br i1 %cmp9, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.8
  %21 = load i8*, i8** %src_row, align 8
  %22 = load i8*, i8** %dest_row, align 8
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %23 = load i32, i32* %w, align 4
  %24 = load i32, i32* %channels, align 4
  call void @vinvert_render_row(i8* %21, i8* %22, i32 %23, i32 %24)
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 3
  %25 = load i32, i32* %rowstride, align 4
  %26 = load i8*, i8** %src_row, align 8
  %idx.ext = sext i32 %25 to i64
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 %idx.ext
  store i8* %add.ptr, i8** %src_row, align 8
  %rowstride12 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %dest_rgn, i32 0, i32 3
  %27 = load i32, i32* %rowstride12, align 4
  %28 = load i8*, i8** %dest_row, align 8
  %idx.ext13 = sext i32 %27 to i64
  %add.ptr14 = getelementptr inbounds i8, i8* %28, i64 %idx.ext13
  store i8* %add.ptr14, i8** %dest_row, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.11
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  %w15 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 6
  %30 = load i32, i32* %w15, align 4
  %h16 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %src_rgn, i32 0, i32 7
  %31 = load i32, i32* %h16, align 4
  %mul17 = mul nsw i32 %30, %31
  %conv18 = sitofp i32 %mul17 to double
  %32 = load double, double* %processed, align 8
  %add = fadd double %32, %conv18
  store double %add, double* %processed, align 8
  %33 = load i32, i32* %update, align 4
  %rem = srem i32 %33, 16
  store i32 %rem, i32* %update, align 4
  %34 = load i32, i32* %update, align 4
  %cmp19 = icmp eq i32 %34, 0
  br i1 %cmp19, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %for.end
  %35 = load double, double* %processed, align 8
  %36 = load double, double* %total, align 8
  %div = fdiv double %35, %36
  %call22 = call i32 @gimp_progress_update(double %div)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %for.end
  br label %for.inc.24

for.inc.24:                                       ; preds = %if.end.23
  %37 = load i8*, i8** %pr, align 8
  %call25 = call i8* @gimp_pixel_rgns_process(i8* %37)
  store i8* %call25, i8** %pr, align 8
  %38 = load i32, i32* %update, align 4
  %inc26 = add nsw i32 %38, 1
  store i32 %inc26, i32* %update, align 4
  br label %for.cond

for.end.27:                                       ; preds = %for.cond
  %call28 = call i32 @gimp_progress_update(double 1.000000e+00)
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %39)
  %40 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id29 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %40, i32 0, i32 0
  %41 = load i32, i32* %drawable_id29, align 4
  %call30 = call i32 @gimp_drawable_merge_shadow(i32 %41, i32 1)
  %42 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id31 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %42, i32 0, i32 0
  %43 = load i32, i32* %drawable_id31, align 4
  %44 = load i32, i32* %x, align 4
  %45 = load i32, i32* %y, align 4
  %46 = load i32, i32* %width, align 4
  %47 = load i32, i32* %height, align 4
  %call32 = call i32 @gimp_drawable_update(i32 %43, i32 %44, i32 %45, i32 %46, i32 %47)
  br label %return

return:                                           ; preds = %for.end.27, %if.then
  ret void
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_drawable_is_indexed(i32) #1

; Function Attrs: nounwind uwtable
define internal void @vinvert_indexed(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %cmap = alloca i8*, align 8
  %ncols = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call i8* @gimp_image_get_colormap(i32 %0, i32* %ncols)
  store i8* %call, i8** %cmap, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load i8*, i8** %cmap, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.vinvert_indexed, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load i8*, i8** %cmap, align 8
  %3 = load i8*, i8** %cmap, align 8
  %4 = load i32, i32* %ncols, align 4
  call void @vinvert_render_row(i8* %2, i8* %3, i32 %4, i32 3)
  %5 = load i32, i32* %image_ID.addr, align 4
  %6 = load i8*, i8** %cmap, align 8
  %7 = load i32, i32* %ncols, align 4
  %call1 = call i32 @gimp_image_set_colormap(i32 %5, i8* %6, i32 %7)
  %8 = load i8*, i8** %cmap, align 8
  call void @g_free(i8* %8)
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_mask_intersect(i32, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i32 @gimp_drawable_bpp(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare i8* @gimp_pixel_rgns_register(i32, ...) #1

; Function Attrs: nounwind uwtable
define internal void @vinvert_render_row(i8* %src, i8* %dest, i32 %width, i32 %bpp) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %bpp.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %value = alloca i32, align 4
  %value2 = alloca i32, align 4
  %min = alloca i32, align 4
  %delta = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4
  %1 = load i32, i32* %width.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %src.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %src.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = zext i8 %3 to i32
  store i32 %conv, i32* %r, align 4
  %4 = load i8*, i8** %src.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr1, i8** %src.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = zext i8 %5 to i32
  store i32 %conv2, i32* %g, align 4
  %6 = load i8*, i8** %src.addr, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr3, i8** %src.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv4 = zext i8 %7 to i32
  store i32 %conv4, i32* %b, align 4
  %8 = load i32, i32* %r, align 4
  %9 = load i32, i32* %g, align 4
  %cmp5 = icmp sgt i32 %8, %9
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %10 = load i32, i32* %r, align 4
  %11 = load i32, i32* %b, align 4
  %cmp7 = icmp sgt i32 %10, %11
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %12 = load i32, i32* %r, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %13 = load i32, i32* %b, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %12, %cond.true ], [ %13, %cond.false ]
  store i32 %cond, i32* %value, align 4
  %14 = load i32, i32* %g, align 4
  %15 = load i32, i32* %b, align 4
  %cmp9 = icmp slt i32 %14, %15
  br i1 %cmp9, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %cond.end
  %16 = load i32, i32* %g, align 4
  br label %cond.end.13

cond.false.12:                                    ; preds = %cond.end
  %17 = load i32, i32* %b, align 4
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.12, %cond.true.11
  %cond14 = phi i32 [ %16, %cond.true.11 ], [ %17, %cond.false.12 ]
  store i32 %cond14, i32* %min, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %18 = load i32, i32* %g, align 4
  %19 = load i32, i32* %b, align 4
  %cmp15 = icmp sgt i32 %18, %19
  br i1 %cmp15, label %cond.true.17, label %cond.false.18

cond.true.17:                                     ; preds = %if.else
  %20 = load i32, i32* %g, align 4
  br label %cond.end.19

cond.false.18:                                    ; preds = %if.else
  %21 = load i32, i32* %b, align 4
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.18, %cond.true.17
  %cond20 = phi i32 [ %20, %cond.true.17 ], [ %21, %cond.false.18 ]
  store i32 %cond20, i32* %value, align 4
  %22 = load i32, i32* %r, align 4
  %23 = load i32, i32* %b, align 4
  %cmp21 = icmp slt i32 %22, %23
  br i1 %cmp21, label %cond.true.23, label %cond.false.24

cond.true.23:                                     ; preds = %cond.end.19
  %24 = load i32, i32* %r, align 4
  br label %cond.end.25

cond.false.24:                                    ; preds = %cond.end.19
  %25 = load i32, i32* %b, align 4
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.24, %cond.true.23
  %cond26 = phi i32 [ %24, %cond.true.23 ], [ %25, %cond.false.24 ]
  store i32 %cond26, i32* %min, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.25, %cond.end.13
  %26 = load i32, i32* %value, align 4
  %27 = load i32, i32* %min, align 4
  %sub = sub nsw i32 %26, %27
  store i32 %sub, i32* %delta, align 4
  %28 = load i32, i32* %value, align 4
  %cmp27 = icmp eq i32 %28, 0
  br i1 %cmp27, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %29 = load i32, i32* %delta, align 4
  %cmp29 = icmp eq i32 %29, 0
  br i1 %cmp29, label %if.then.31, label %if.else.35

if.then.31:                                       ; preds = %lor.lhs.false, %if.end
  %30 = load i32, i32* %value, align 4
  %sub32 = sub nsw i32 255, %30
  store i32 %sub32, i32* %r, align 4
  %31 = load i32, i32* %value, align 4
  %sub33 = sub nsw i32 255, %31
  store i32 %sub33, i32* %g, align 4
  %32 = load i32, i32* %value, align 4
  %sub34 = sub nsw i32 255, %32
  store i32 %sub34, i32* %b, align 4
  br label %if.end.65

if.else.35:                                       ; preds = %lor.lhs.false
  %33 = load i32, i32* %value, align 4
  %div = sdiv i32 %33, 2
  store i32 %div, i32* %value2, align 4
  %34 = load i32, i32* %r, align 4
  %35 = load i32, i32* %value, align 4
  %cmp36 = icmp eq i32 %34, %35
  br i1 %cmp36, label %if.then.38, label %if.else.44

if.then.38:                                       ; preds = %if.else.35
  %36 = load i32, i32* %r, align 4
  %sub39 = sub nsw i32 255, %36
  store i32 %sub39, i32* %r, align 4
  %37 = load i32, i32* %r, align 4
  %38 = load i32, i32* %b, align 4
  %mul = mul nsw i32 %37, %38
  %39 = load i32, i32* %value2, align 4
  %add = add nsw i32 %mul, %39
  %40 = load i32, i32* %value, align 4
  %div40 = sdiv i32 %add, %40
  store i32 %div40, i32* %b, align 4
  %41 = load i32, i32* %r, align 4
  %42 = load i32, i32* %g, align 4
  %mul41 = mul nsw i32 %41, %42
  %43 = load i32, i32* %value2, align 4
  %add42 = add nsw i32 %mul41, %43
  %44 = load i32, i32* %value, align 4
  %div43 = sdiv i32 %add42, %44
  store i32 %div43, i32* %g, align 4
  br label %if.end.64

if.else.44:                                       ; preds = %if.else.35
  %45 = load i32, i32* %g, align 4
  %46 = load i32, i32* %value, align 4
  %cmp45 = icmp eq i32 %45, %46
  br i1 %cmp45, label %if.then.47, label %if.else.55

if.then.47:                                       ; preds = %if.else.44
  %47 = load i32, i32* %g, align 4
  %sub48 = sub nsw i32 255, %47
  store i32 %sub48, i32* %g, align 4
  %48 = load i32, i32* %g, align 4
  %49 = load i32, i32* %r, align 4
  %mul49 = mul nsw i32 %48, %49
  %50 = load i32, i32* %value2, align 4
  %add50 = add nsw i32 %mul49, %50
  %51 = load i32, i32* %value, align 4
  %div51 = sdiv i32 %add50, %51
  store i32 %div51, i32* %r, align 4
  %52 = load i32, i32* %g, align 4
  %53 = load i32, i32* %b, align 4
  %mul52 = mul nsw i32 %52, %53
  %54 = load i32, i32* %value2, align 4
  %add53 = add nsw i32 %mul52, %54
  %55 = load i32, i32* %value, align 4
  %div54 = sdiv i32 %add53, %55
  store i32 %div54, i32* %b, align 4
  br label %if.end.63

if.else.55:                                       ; preds = %if.else.44
  %56 = load i32, i32* %b, align 4
  %sub56 = sub nsw i32 255, %56
  store i32 %sub56, i32* %b, align 4
  %57 = load i32, i32* %b, align 4
  %58 = load i32, i32* %g, align 4
  %mul57 = mul nsw i32 %57, %58
  %59 = load i32, i32* %value2, align 4
  %add58 = add nsw i32 %mul57, %59
  %60 = load i32, i32* %value, align 4
  %div59 = sdiv i32 %add58, %60
  store i32 %div59, i32* %g, align 4
  %61 = load i32, i32* %b, align 4
  %62 = load i32, i32* %r, align 4
  %mul60 = mul nsw i32 %61, %62
  %63 = load i32, i32* %value2, align 4
  %add61 = add nsw i32 %mul60, %63
  %64 = load i32, i32* %value, align 4
  %div62 = sdiv i32 %add61, %64
  store i32 %div62, i32* %r, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.55, %if.then.47
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.38
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.31
  %65 = load i32, i32* %r, align 4
  %conv66 = trunc i32 %65 to i8
  %66 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr67, i8** %dest.addr, align 8
  store i8 %conv66, i8* %66, align 1
  %67 = load i32, i32* %g, align 4
  %conv68 = trunc i32 %67 to i8
  %68 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr69, i8** %dest.addr, align 8
  store i8 %conv68, i8* %68, align 1
  %69 = load i32, i32* %b, align 4
  %conv70 = trunc i32 %69 to i8
  %70 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %incdec.ptr71, i8** %dest.addr, align 8
  store i8 %conv70, i8* %70, align 1
  %71 = load i32, i32* %bpp.addr, align 4
  %cmp72 = icmp eq i32 %71, 4
  br i1 %cmp72, label %if.then.74, label %if.end.77

if.then.74:                                       ; preds = %if.end.65
  %72 = load i8*, i8** %src.addr, align 8
  %incdec.ptr75 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %incdec.ptr75, i8** %src.addr, align 8
  %73 = load i8, i8* %72, align 1
  %74 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr76 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %incdec.ptr76, i8** %dest.addr, align 8
  store i8 %73, i8* %74, align 1
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.74, %if.end.65
  br label %for.inc

for.inc:                                          ; preds = %if.end.77
  %75 = load i32, i32* %j, align 4
  %inc = add nsw i32 %75, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @gimp_progress_update(double) #1

declare i8* @gimp_pixel_rgns_process(i8*) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare i8* @gimp_image_get_colormap(i32, i32*) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i32 @gimp_image_set_colormap(i32, i8*, i32) #1

declare void @g_free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
