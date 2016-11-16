; ModuleID = './plug-ins/common/crop-zealous.bc'
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [3 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"plug-in-zealouscrop\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"Autocrop unused space from edges and middle\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Adam D. Moss\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"_Zealous Crop\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"RGB*, GRAY*, INDEXED*\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"<Image>/Image/Crop\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.14 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"Zealous cropping\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"Nothing to crop.\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i32 1, i32 3, i32 0, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0))
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
  %4 = load i32, i32* %run_mode, align 4
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %do.end
  %5 = load i32, i32* %n_params.addr, align 4
  %cmp4 = icmp ne i32 %5, 3
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  store i32 1, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %do.end
  %6 = load i32, i32* %status, align 4
  %cmp7 = icmp eq i32 %6, 3
  br i1 %cmp7, label %if.then.8, label %if.end.37

if.then.8:                                        ; preds = %if.end.6
  %7 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %7, i64 2
  %data10 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx9, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data10 to i32*
  %8 = load i32, i32* %d_drawable, align 4
  %call11 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %8)
  store %struct._GimpDrawable* %call11, %struct._GimpDrawable** %drawable, align 8
  %9 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %9, i64 1
  %data13 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx12, i32 0, i32 1
  %d_image = bitcast %union._GimpParamData* %data13 to i32*
  %10 = load i32, i32* %d_image, align 4
  store i32 %10, i32* %image_id, align 4
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 0
  %12 = load i32, i32* %drawable_id, align 4
  %call14 = call i32 @gimp_drawable_is_rgb(i32 %12)
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.8
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id15 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 0
  %14 = load i32, i32* %drawable_id15, align 4
  %call16 = call i32 @gimp_drawable_is_gray(i32 %14)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.22, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %drawable_id19 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %15, i32 0, i32 0
  %16 = load i32, i32* %drawable_id19, align 4
  %call20 = call i32 @gimp_drawable_is_indexed(i32 %16)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %lor.lhs.false.18, %lor.lhs.false, %if.then.8
  %call23 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0)) #5
  %call24 = call i32 @gimp_progress_init(i8* %call23)
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %17, i32 0, i32 1
  %18 = load i32, i32* %width, align 4
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %19, i32 0, i32 2
  %20 = load i32, i32* %height, align 4
  %cmp25 = icmp ugt i32 %18, %20
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.22
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width26 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %21, i32 0, i32 1
  %22 = load i32, i32* %width26, align 4
  %call27 = call i32 @gimp_tile_width() #6
  %div = udiv i32 %22, %call27
  br label %cond.end

cond.false:                                       ; preds = %if.then.22
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height28 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %23, i32 0, i32 2
  %24 = load i32, i32* %height28, align 4
  %call29 = call i32 @gimp_tile_height() #6
  %div30 = udiv i32 %24, %call29
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div, %cond.true ], [ %div30, %cond.false ]
  %mul = mul i32 2, %cond
  %add = add i32 1, %mul
  %conv = zext i32 %add to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %26 = load i32, i32* %image_id, align 4
  call void @do_zcrop(%struct._GimpDrawable* %25, i32 %26)
  %27 = load i32, i32* %run_mode, align 4
  %cmp31 = icmp ne i32 %27, 1
  br i1 %cmp31, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %cond.end
  %call34 = call i32 @gimp_displays_flush()
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %cond.end
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %28)
  br label %if.end.36

if.else:                                          ; preds = %lor.lhs.false.18
  store i32 0, i32* %status, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.else, %if.end.35
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end.6
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %29 = load i32, i32* %status, align 4
  store i32 %29, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
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
define internal void @do_zcrop(%struct._GimpDrawable* %drawable, i32 %image_id) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %image_id.addr = alloca i32, align 4
  %srcPR = alloca %struct._GimpPixelRgn, align 8
  %destPR = alloca %struct._GimpPixelRgn, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %bytes = alloca i32, align 4
  %buffer = alloca i8*, align 8
  %killrows = alloca i8*, align 8
  %killcols = alloca i8*, align 8
  %livingrows = alloca i32, align 4
  %livingcols = alloca i32, align 4
  %destrow = alloca i32, align 4
  %destcol = alloca i32, align 4
  %total_area = alloca i32, align 4
  %area = alloca i32, align 4
  %selection_copy = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %image_id, i32* %image_id.addr, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width1 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 1
  %1 = load i32, i32* %width1, align 4
  store i32 %1, i32* %width, align 4
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height2 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 2
  %3 = load i32, i32* %height2, align 4
  store i32 %3, i32* %height, align 4
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 3
  %5 = load i32, i32* %bpp, align 4
  store i32 %5, i32* %bytes, align 4
  %6 = load i32, i32* %width, align 4
  %7 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %6, %7
  %mul3 = mul nsw i32 %mul, 4
  store i32 %mul3, i32* %total_area, align 4
  store i32 0, i32* %area, align 4
  %8 = load i32, i32* %height, align 4
  %conv = sext i32 %8 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call, i8** %killrows, align 8
  %9 = load i32, i32* %width, align 4
  %conv4 = sext i32 %9 to i64
  %call5 = call noalias i8* @g_malloc_n(i64 %conv4, i64 1)
  store i8* %call5, i8** %killcols, align 8
  %10 = load i32, i32* %width, align 4
  %11 = load i32, i32* %height, align 4
  %cmp = icmp sgt i32 %10, %11
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %12 = load i32, i32* %width, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %13 = load i32, i32* %height, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %12, %cond.true ], [ %13, %cond.false ]
  %14 = load i32, i32* %bytes, align 4
  %mul7 = mul nsw i32 %cond, %14
  %conv8 = sext i32 %mul7 to i64
  %call9 = call noalias i8* @g_malloc(i64 %conv8)
  store i8* %call9, i8** %buffer, align 8
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %16 = load i32, i32* %width, align 4
  %17 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %srcPR, %struct._GimpDrawable* %15, i32 0, i32 0, i32 %16, i32 %17, i32 0, i32 0)
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %19 = load i32, i32* %width, align 4
  %20 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %destPR, %struct._GimpDrawable* %18, i32 0, i32 0, i32 %19, i32 %20, i32 1, i32 1)
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %21, i32 0, i32 0
  %22 = load i32, i32* %drawable_id, align 4
  %call10 = call i32 @gimp_drawable_has_alpha(i32 %22)
  store i32 %call10, i32* %has_alpha, align 4
  store i32 0, i32* %livingrows, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.31, %cond.end
  %23 = load i32, i32* %y, align 4
  %24 = load i32, i32* %height, align 4
  %cmp11 = icmp slt i32 %23, %24
  br i1 %cmp11, label %for.body, label %for.end.33

for.body:                                         ; preds = %for.cond
  %25 = load i8*, i8** %buffer, align 8
  %26 = load i32, i32* %y, align 4
  %27 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %srcPR, i8* %25, i32 0, i32 %26, i32 %27)
  %28 = load i32, i32* %y, align 4
  %idxprom = sext i32 %28 to i64
  %29 = load i8*, i8** %killrows, align 8
  %arrayidx = getelementptr inbounds i8, i8* %29, i64 %idxprom
  store i8 1, i8* %arrayidx, align 1
  store i32 0, i32* %x, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %for.body
  %30 = load i32, i32* %x, align 4
  %31 = load i32, i32* %width, align 4
  %32 = load i32, i32* %bytes, align 4
  %mul14 = mul nsw i32 %31, %32
  %cmp15 = icmp slt i32 %30, %mul14
  br i1 %cmp15, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.13
  %33 = load i8*, i8** %buffer, align 8
  %34 = load i32, i32* %x, align 4
  %idxprom18 = sext i32 %34 to i64
  %35 = load i8*, i8** %buffer, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %35, i64 %idxprom18
  %36 = load i32, i32* %bytes, align 4
  %37 = load i32, i32* %has_alpha, align 4
  %call20 = call i32 @colors_equal(i8* %33, i8* %arrayidx19, i32 %36, i32 %37)
  %tobool = icmp ne i32 %call20, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body.17
  %38 = load i32, i32* %livingrows, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %livingrows, align 4
  %39 = load i32, i32* %y, align 4
  %idxprom21 = sext i32 %39 to i64
  %40 = load i8*, i8** %killrows, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %40, i64 %idxprom21
  store i8 0, i8* %arrayidx22, align 1
  br label %for.end

if.end:                                           ; preds = %for.body.17
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %41 = load i32, i32* %bytes, align 4
  %42 = load i32, i32* %x, align 4
  %add = add nsw i32 %42, %41
  store i32 %add, i32* %x, align 4
  br label %for.cond.13

for.end:                                          ; preds = %if.then, %for.cond.13
  %43 = load i32, i32* %width, align 4
  %44 = load i32, i32* %area, align 4
  %add23 = add nsw i32 %44, %43
  store i32 %add23, i32* %area, align 4
  %45 = load i32, i32* %y, align 4
  %rem = srem i32 %45, 20
  %cmp24 = icmp eq i32 %rem, 0
  br i1 %cmp24, label %if.then.26, label %if.end.30

if.then.26:                                       ; preds = %for.end
  %46 = load i32, i32* %area, align 4
  %conv27 = sitofp i32 %46 to double
  %47 = load i32, i32* %total_area, align 4
  %conv28 = sitofp i32 %47 to double
  %div = fdiv double %conv27, %conv28
  %call29 = call i32 @gimp_progress_update(double %div)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.26, %for.end
  br label %for.inc.31

for.inc.31:                                       ; preds = %if.end.30
  %48 = load i32, i32* %y, align 4
  %inc32 = add nsw i32 %48, 1
  store i32 %inc32, i32* %y, align 4
  br label %for.cond

for.end.33:                                       ; preds = %for.cond
  store i32 0, i32* %livingcols, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.67, %for.end.33
  %49 = load i32, i32* %x, align 4
  %50 = load i32, i32* %width, align 4
  %cmp35 = icmp slt i32 %49, %50
  br i1 %cmp35, label %for.body.37, label %for.end.69

for.body.37:                                      ; preds = %for.cond.34
  %51 = load i8*, i8** %buffer, align 8
  %52 = load i32, i32* %x, align 4
  %53 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_get_col(%struct._GimpPixelRgn* %srcPR, i8* %51, i32 %52, i32 0, i32 %53)
  %54 = load i32, i32* %x, align 4
  %idxprom38 = sext i32 %54 to i64
  %55 = load i8*, i8** %killcols, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %55, i64 %idxprom38
  store i8 1, i8* %arrayidx39, align 1
  store i32 0, i32* %y, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.54, %for.body.37
  %56 = load i32, i32* %y, align 4
  %57 = load i32, i32* %height, align 4
  %58 = load i32, i32* %bytes, align 4
  %mul41 = mul nsw i32 %57, %58
  %cmp42 = icmp slt i32 %56, %mul41
  br i1 %cmp42, label %for.body.44, label %for.end.56

for.body.44:                                      ; preds = %for.cond.40
  %59 = load i8*, i8** %buffer, align 8
  %60 = load i32, i32* %y, align 4
  %idxprom45 = sext i32 %60 to i64
  %61 = load i8*, i8** %buffer, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %61, i64 %idxprom45
  %62 = load i32, i32* %bytes, align 4
  %63 = load i32, i32* %has_alpha, align 4
  %call47 = call i32 @colors_equal(i8* %59, i8* %arrayidx46, i32 %62, i32 %63)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.end.53, label %if.then.49

if.then.49:                                       ; preds = %for.body.44
  %64 = load i32, i32* %livingcols, align 4
  %inc50 = add nsw i32 %64, 1
  store i32 %inc50, i32* %livingcols, align 4
  %65 = load i32, i32* %x, align 4
  %idxprom51 = sext i32 %65 to i64
  %66 = load i8*, i8** %killcols, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %66, i64 %idxprom51
  store i8 0, i8* %arrayidx52, align 1
  br label %for.end.56

if.end.53:                                        ; preds = %for.body.44
  br label %for.inc.54

for.inc.54:                                       ; preds = %if.end.53
  %67 = load i32, i32* %bytes, align 4
  %68 = load i32, i32* %y, align 4
  %add55 = add nsw i32 %68, %67
  store i32 %add55, i32* %y, align 4
  br label %for.cond.40

for.end.56:                                       ; preds = %if.then.49, %for.cond.40
  %69 = load i32, i32* %height, align 4
  %70 = load i32, i32* %area, align 4
  %add57 = add nsw i32 %70, %69
  store i32 %add57, i32* %area, align 4
  %71 = load i32, i32* %x, align 4
  %rem58 = srem i32 %71, 20
  %cmp59 = icmp eq i32 %rem58, 0
  br i1 %cmp59, label %if.then.61, label %if.end.66

if.then.61:                                       ; preds = %for.end.56
  %72 = load i32, i32* %area, align 4
  %conv62 = sitofp i32 %72 to double
  %73 = load i32, i32* %total_area, align 4
  %conv63 = sitofp i32 %73 to double
  %div64 = fdiv double %conv62, %conv63
  %call65 = call i32 @gimp_progress_update(double %div64)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.61, %for.end.56
  br label %for.inc.67

for.inc.67:                                       ; preds = %if.end.66
  %74 = load i32, i32* %x, align 4
  %inc68 = add nsw i32 %74, 1
  store i32 %inc68, i32* %x, align 4
  br label %for.cond.34

for.end.69:                                       ; preds = %for.cond.34
  %75 = load i32, i32* %livingcols, align 4
  %cmp70 = icmp eq i32 %75, 0
  br i1 %cmp70, label %if.then.79, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.69
  %76 = load i32, i32* %livingrows, align 4
  %cmp72 = icmp eq i32 %76, 0
  br i1 %cmp72, label %if.then.79, label %lor.lhs.false.74

lor.lhs.false.74:                                 ; preds = %lor.lhs.false
  %77 = load i32, i32* %livingcols, align 4
  %78 = load i32, i32* %width, align 4
  %cmp75 = icmp eq i32 %77, %78
  br i1 %cmp75, label %land.lhs.true, label %if.end.81

land.lhs.true:                                    ; preds = %lor.lhs.false.74
  %79 = load i32, i32* %livingrows, align 4
  %80 = load i32, i32* %height, align 4
  %cmp77 = icmp eq i32 %79, %80
  br i1 %cmp77, label %if.then.79, label %if.end.81

if.then.79:                                       ; preds = %land.lhs.true, %lor.lhs.false, %for.end.69
  %call80 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call80)
  %81 = load i8*, i8** %killrows, align 8
  call void @g_free(i8* %81)
  %82 = load i8*, i8** %killcols, align 8
  call void @g_free(i8* %82)
  br label %return

if.end.81:                                        ; preds = %land.lhs.true, %lor.lhs.false.74
  store i32 0, i32* %destrow, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.102, %if.end.81
  %83 = load i32, i32* %y, align 4
  %84 = load i32, i32* %height, align 4
  %cmp83 = icmp slt i32 %83, %84
  br i1 %cmp83, label %for.body.85, label %for.end.104

for.body.85:                                      ; preds = %for.cond.82
  %85 = load i32, i32* %y, align 4
  %idxprom86 = sext i32 %85 to i64
  %86 = load i8*, i8** %killrows, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %86, i64 %idxprom86
  %87 = load i8, i8* %arrayidx87, align 1
  %tobool88 = icmp ne i8 %87, 0
  br i1 %tobool88, label %if.end.91, label %if.then.89

if.then.89:                                       ; preds = %for.body.85
  %88 = load i8*, i8** %buffer, align 8
  %89 = load i32, i32* %y, align 4
  %90 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %srcPR, i8* %88, i32 0, i32 %89, i32 %90)
  %91 = load i8*, i8** %buffer, align 8
  %92 = load i32, i32* %destrow, align 4
  %93 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %destPR, i8* %91, i32 0, i32 %92, i32 %93)
  %94 = load i32, i32* %destrow, align 4
  %inc90 = add nsw i32 %94, 1
  store i32 %inc90, i32* %destrow, align 4
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.89, %for.body.85
  %95 = load i32, i32* %width, align 4
  %96 = load i32, i32* %area, align 4
  %add92 = add nsw i32 %96, %95
  store i32 %add92, i32* %area, align 4
  %97 = load i32, i32* %y, align 4
  %rem93 = srem i32 %97, 20
  %cmp94 = icmp eq i32 %rem93, 0
  br i1 %cmp94, label %if.then.96, label %if.end.101

if.then.96:                                       ; preds = %if.end.91
  %98 = load i32, i32* %area, align 4
  %conv97 = sitofp i32 %98 to double
  %99 = load i32, i32* %total_area, align 4
  %conv98 = sitofp i32 %99 to double
  %div99 = fdiv double %conv97, %conv98
  %call100 = call i32 @gimp_progress_update(double %div99)
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.96, %if.end.91
  br label %for.inc.102

for.inc.102:                                      ; preds = %if.end.101
  %100 = load i32, i32* %y, align 4
  %inc103 = add nsw i32 %100, 1
  store i32 %inc103, i32* %y, align 4
  br label %for.cond.82

for.end.104:                                      ; preds = %for.cond.82
  store i32 0, i32* %destcol, align 4
  %101 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %102 = load i32, i32* %width, align 4
  %103 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %srcPR, %struct._GimpDrawable* %101, i32 0, i32 0, i32 %102, i32 %103, i32 0, i32 1)
  store i32 0, i32* %x, align 4
  br label %for.cond.105

for.cond.105:                                     ; preds = %for.inc.125, %for.end.104
  %104 = load i32, i32* %x, align 4
  %105 = load i32, i32* %width, align 4
  %cmp106 = icmp slt i32 %104, %105
  br i1 %cmp106, label %for.body.108, label %for.end.127

for.body.108:                                     ; preds = %for.cond.105
  %106 = load i32, i32* %x, align 4
  %idxprom109 = sext i32 %106 to i64
  %107 = load i8*, i8** %killcols, align 8
  %arrayidx110 = getelementptr inbounds i8, i8* %107, i64 %idxprom109
  %108 = load i8, i8* %arrayidx110, align 1
  %tobool111 = icmp ne i8 %108, 0
  br i1 %tobool111, label %if.end.114, label %if.then.112

if.then.112:                                      ; preds = %for.body.108
  %109 = load i8*, i8** %buffer, align 8
  %110 = load i32, i32* %x, align 4
  %111 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_get_col(%struct._GimpPixelRgn* %srcPR, i8* %109, i32 %110, i32 0, i32 %111)
  %112 = load i8*, i8** %buffer, align 8
  %113 = load i32, i32* %destcol, align 4
  %114 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_set_col(%struct._GimpPixelRgn* %destPR, i8* %112, i32 %113, i32 0, i32 %114)
  %115 = load i32, i32* %destcol, align 4
  %inc113 = add nsw i32 %115, 1
  store i32 %inc113, i32* %destcol, align 4
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.112, %for.body.108
  %116 = load i32, i32* %height, align 4
  %117 = load i32, i32* %area, align 4
  %add115 = add nsw i32 %117, %116
  store i32 %add115, i32* %area, align 4
  %118 = load i32, i32* %x, align 4
  %rem116 = srem i32 %118, 20
  %cmp117 = icmp eq i32 %rem116, 0
  br i1 %cmp117, label %if.then.119, label %if.end.124

if.then.119:                                      ; preds = %if.end.114
  %119 = load i32, i32* %area, align 4
  %conv120 = sitofp i32 %119 to double
  %120 = load i32, i32* %total_area, align 4
  %conv121 = sitofp i32 %120 to double
  %div122 = fdiv double %conv120, %conv121
  %call123 = call i32 @gimp_progress_update(double %div122)
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.119, %if.end.114
  br label %for.inc.125

for.inc.125:                                      ; preds = %if.end.124
  %121 = load i32, i32* %x, align 4
  %inc126 = add nsw i32 %121, 1
  store i32 %inc126, i32* %x, align 4
  br label %for.cond.105

for.end.127:                                      ; preds = %for.cond.105
  %122 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %122)
  %123 = load i8*, i8** %killrows, align 8
  call void @g_free(i8* %123)
  %124 = load i8*, i8** %killcols, align 8
  call void @g_free(i8* %124)
  %125 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %125)
  %126 = load i32, i32* %image_id.addr, align 4
  %call128 = call i32 @gimp_image_undo_group_start(i32 %126)
  %127 = load i32, i32* %image_id.addr, align 4
  %call129 = call i32 @gimp_selection_save(i32 %127)
  store i32 %call129, i32* %selection_copy, align 4
  %128 = load i32, i32* %image_id.addr, align 4
  %call130 = call i32 @gimp_selection_none(i32 %128)
  %129 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id131 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %129, i32 0, i32 0
  %130 = load i32, i32* %drawable_id131, align 4
  %call132 = call i32 @gimp_drawable_merge_shadow(i32 %130, i32 1)
  %131 = load i32, i32* %image_id.addr, align 4
  %132 = load i32, i32* %selection_copy, align 4
  %call133 = call i32 @gimp_image_select_item(i32 %131, i32 2, i32 %132)
  %133 = load i32, i32* %image_id.addr, align 4
  %134 = load i32, i32* %selection_copy, align 4
  %call134 = call i32 @gimp_image_remove_channel(i32 %133, i32 %134)
  %135 = load i32, i32* %image_id.addr, align 4
  %136 = load i32, i32* %livingcols, align 4
  %137 = load i32, i32* %livingrows, align 4
  %call135 = call i32 @gimp_image_crop(i32 %135, i32 %136, i32 %137, i32 0, i32 0)
  %138 = load i32, i32* %image_id.addr, align 4
  %call136 = call i32 @gimp_image_undo_group_end(i32 %138)
  %call137 = call i32 @gimp_progress_update(double 1.000000e+00)
  br label %return

return:                                           ; preds = %for.end.127, %if.then.79
  ret void
}

declare i32 @gimp_displays_flush() #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare noalias i8* @g_malloc(i64) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @colors_equal(i8* %col1, i8* %col2, i32 %bytes, i32 %has_alpha) #4 {
entry:
  %retval = alloca i32, align 4
  %col1.addr = alloca i8*, align 8
  %col2.addr = alloca i8*, align 8
  %bytes.addr = alloca i32, align 4
  %has_alpha.addr = alloca i32, align 4
  %b = alloca i32, align 4
  store i8* %col1, i8** %col1.addr, align 8
  store i8* %col2, i8** %col2.addr, align 8
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %has_alpha, i32* %has_alpha.addr, align 4
  %0 = load i32, i32* %has_alpha.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %bytes.addr, align 4
  %sub = sub nsw i32 %1, 1
  %idxprom = sext i32 %sub to i64
  %2 = load i8*, i8** %col1.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %land.lhs.true.2, label %if.else

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %4 = load i32, i32* %bytes.addr, align 4
  %sub3 = sub nsw i32 %4, 1
  %idxprom4 = sext i32 %sub3 to i64
  %5 = load i8*, i8** %col2.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %5, i64 %idxprom4
  %6 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %6 to i32
  %cmp7 = icmp eq i32 %conv6, 0
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.2
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.2, %land.lhs.true, %entry
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %7 = load i32, i32* %b, align 4
  %8 = load i32, i32* %bytes.addr, align 4
  %cmp9 = icmp slt i32 %7, %8
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %b, align 4
  %idxprom11 = sext i32 %9 to i64
  %10 = load i8*, i8** %col1.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %10, i64 %idxprom11
  %11 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %11 to i32
  %12 = load i32, i32* %b, align 4
  %idxprom14 = sext i32 %12 to i64
  %13 = load i8*, i8** %col2.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %13, i64 %idxprom14
  %14 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %14 to i32
  %cmp17 = icmp ne i32 %conv13, %conv16
  br i1 %cmp17, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %b, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.19, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare i32 @gimp_progress_update(double) #1

declare void @gimp_pixel_rgn_get_col(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

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

declare void @g_free(i8*) #1

declare void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare void @gimp_pixel_rgn_set_col(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_image_undo_group_start(i32) #1

declare i32 @gimp_selection_save(i32) #1

declare i32 @gimp_selection_none(i32) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_image_select_item(i32, i32, i32) #1

declare i32 @gimp_image_remove_channel(i32, i32) #1

declare i32 @gimp_image_crop(i32, i32, i32, i32, i32) #1

declare i32 @gimp_image_undo_group_end(i32) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
