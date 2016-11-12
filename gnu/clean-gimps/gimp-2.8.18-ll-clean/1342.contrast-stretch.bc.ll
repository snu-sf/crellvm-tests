; ModuleID = './plug-ins/common/contrast-stretch.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct.AutoStretchParam_t = type { i32, [256 x [3 x i8]], [3 x i8], [3 x i8], i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [3 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"plug-in-c-astretch\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"Stretch contrast to cover the maximum possible range\00", align 1
@.str.8 = private unnamed_addr constant [302 x i8] c"This simple plug-in does an automatic contrast stretch.  For each channel in the image, it finds the minimum and maximum values... it uses those values to stretch the individual histograms to the full contrast range.  For some images it may do just what you want; for others it may not work that well.\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Federico Mena Quintero\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"1996\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"_Stretch Contrast\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"RGB*, GRAY*, INDEXED*\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"<Image>/Colors/Auto\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.14 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"Auto-stretching contrast\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"c_astretch: cmap was NULL!  Quitting...\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([302 x i8], [302 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i32 1, i32 3, i32 0, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0))
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
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0)) #5
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
  call void @c_astretch(%struct._GimpDrawable* %12)
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
  call void @indexed_c_astretch(i32 %16)
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
define internal void @c_astretch(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %param = alloca %struct.AutoStretchParam_t, align 4
  %b = alloca i32, align 4
  %range = alloca i32, align 4
  %x = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_has_alpha(i32 %1)
  %has_alpha = getelementptr inbounds %struct.AutoStretchParam_t, %struct.AutoStretchParam_t* %param, i32 0, i32 4
  store i32 %call, i32* %has_alpha, align 4
  %has_alpha1 = getelementptr inbounds %struct.AutoStretchParam_t, %struct.AutoStretchParam_t* %param, i32 0, i32 4
  %2 = load i32, i32* %has_alpha1, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 3
  %4 = load i32, i32* %bpp, align 4
  %sub = sub i32 %4, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp2 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 3
  %6 = load i32, i32* %bpp2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %6, %cond.false ]
  %alpha = getelementptr inbounds %struct.AutoStretchParam_t, %struct.AutoStretchParam_t* %param, i32 0, i32 0
  store i32 %cond, i32* %alpha, align 4
  %min = getelementptr inbounds %struct.AutoStretchParam_t, %struct.AutoStretchParam_t* %param, i32 0, i32 2
  %arrayidx = getelementptr inbounds [3 x i8], [3 x i8]* %min, i32 0, i64 2
  store i8 -1, i8* %arrayidx, align 1
  %min3 = getelementptr inbounds %struct.AutoStretchParam_t, %struct.AutoStretchParam_t* %param, i32 0, i32 2
  %arrayidx4 = getelementptr inbounds [3 x i8], [3 x i8]* %min3, i32 0, i64 1
  store i8 -1, i8* %arrayidx4, align 1
  %min5 = getelementptr inbounds %struct.AutoStretchParam_t, %struct.AutoStretchParam_t* %param, i32 0, i32 2
  %arrayidx6 = getelementptr inbounds [3 x i8], [3 x i8]* %min5, i32 0, i64 0
  store i8 -1, i8* %arrayidx6, align 1
  %max = getelementptr inbounds %struct.AutoStretchParam_t, %struct.AutoStretchParam_t* %param, i32 0, i32 3
  %arrayidx7 = getelementptr inbounds [3 x i8], [3 x i8]* %max, i32 0, i64 2
  store i8 0, i8* %arrayidx7, align 1
  %max8 = getelementptr inbounds %struct.AutoStretchParam_t, %struct.AutoStretchParam_t* %param, i32 0, i32 3
  %arrayidx9 = getelementptr inbounds [3 x i8], [3 x i8]* %max8, i32 0, i64 1
  store i8 0, i8* %arrayidx9, align 1
  %max10 = getelementptr inbounds %struct.AutoStretchParam_t, %struct.AutoStretchParam_t* %param, i32 0, i32 3
  %arrayidx11 = getelementptr inbounds [3 x i8], [3 x i8]* %max10, i32 0, i64 0
  store i8 0, i8* %arrayidx11, align 1
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %8 = bitcast %struct.AutoStretchParam_t* %param to i8*
  call void @gimp_rgn_iterate1(%struct._GimpDrawable* %7, i32 0, void (i8*, i32, i8*)* @find_min_max, i8* %8)
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.55, %cond.end
  %9 = load i32, i32* %b, align 4
  %alpha12 = getelementptr inbounds %struct.AutoStretchParam_t, %struct.AutoStretchParam_t* %param, i32 0, i32 0
  %10 = load i32, i32* %alpha12, align 4
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end.57

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %b, align 4
  %idxprom = sext i32 %11 to i64
  %max13 = getelementptr inbounds %struct.AutoStretchParam_t, %struct.AutoStretchParam_t* %param, i32 0, i32 3
  %arrayidx14 = getelementptr inbounds [3 x i8], [3 x i8]* %max13, i32 0, i64 %idxprom
  %12 = load i8, i8* %arrayidx14, align 1
  %conv = zext i8 %12 to i32
  %13 = load i32, i32* %b, align 4
  %idxprom15 = sext i32 %13 to i64
  %min16 = getelementptr inbounds %struct.AutoStretchParam_t, %struct.AutoStretchParam_t* %param, i32 0, i32 2
  %arrayidx17 = getelementptr inbounds [3 x i8], [3 x i8]* %min16, i32 0, i64 %idxprom15
  %14 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %14 to i32
  %sub19 = sub nsw i32 %conv, %conv18
  store i32 %sub19, i32* %range, align 4
  %15 = load i32, i32* %range, align 4
  %cmp20 = icmp ne i32 %15, 0
  br i1 %cmp20, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %16 = load i32, i32* %b, align 4
  %idxprom22 = sext i32 %16 to i64
  %min23 = getelementptr inbounds %struct.AutoStretchParam_t, %struct.AutoStretchParam_t* %param, i32 0, i32 2
  %arrayidx24 = getelementptr inbounds [3 x i8], [3 x i8]* %min23, i32 0, i64 %idxprom22
  %17 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %17 to i32
  store i32 %conv25, i32* %x, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc, %if.then
  %18 = load i32, i32* %x, align 4
  %19 = load i32, i32* %b, align 4
  %idxprom27 = sext i32 %19 to i64
  %max28 = getelementptr inbounds %struct.AutoStretchParam_t, %struct.AutoStretchParam_t* %param, i32 0, i32 3
  %arrayidx29 = getelementptr inbounds [3 x i8], [3 x i8]* %max28, i32 0, i64 %idxprom27
  %20 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %20 to i32
  %cmp31 = icmp sle i32 %18, %conv30
  br i1 %cmp31, label %for.body.33, label %for.end

for.body.33:                                      ; preds = %for.cond.26
  %21 = load i32, i32* %x, align 4
  %22 = load i32, i32* %b, align 4
  %idxprom34 = sext i32 %22 to i64
  %min35 = getelementptr inbounds %struct.AutoStretchParam_t, %struct.AutoStretchParam_t* %param, i32 0, i32 2
  %arrayidx36 = getelementptr inbounds [3 x i8], [3 x i8]* %min35, i32 0, i64 %idxprom34
  %23 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %23 to i32
  %sub38 = sub nsw i32 %21, %conv37
  %mul = mul nsw i32 255, %sub38
  %24 = load i32, i32* %range, align 4
  %div = sdiv i32 %mul, %24
  %conv39 = trunc i32 %div to i8
  %25 = load i32, i32* %b, align 4
  %idxprom40 = sext i32 %25 to i64
  %26 = load i32, i32* %x, align 4
  %idxprom41 = sext i32 %26 to i64
  %lut = getelementptr inbounds %struct.AutoStretchParam_t, %struct.AutoStretchParam_t* %param, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [256 x [3 x i8]], [256 x [3 x i8]]* %lut, i32 0, i64 %idxprom41
  %arrayidx43 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx42, i32 0, i64 %idxprom40
  store i8 %conv39, i8* %arrayidx43, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.33
  %27 = load i32, i32* %x, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.26

for.end:                                          ; preds = %for.cond.26
  br label %if.end

if.else:                                          ; preds = %for.body
  %28 = load i32, i32* %b, align 4
  %idxprom44 = sext i32 %28 to i64
  %min45 = getelementptr inbounds %struct.AutoStretchParam_t, %struct.AutoStretchParam_t* %param, i32 0, i32 2
  %arrayidx46 = getelementptr inbounds [3 x i8], [3 x i8]* %min45, i32 0, i64 %idxprom44
  %29 = load i8, i8* %arrayidx46, align 1
  %30 = load i32, i32* %b, align 4
  %idxprom47 = sext i32 %30 to i64
  %31 = load i32, i32* %b, align 4
  %idxprom48 = sext i32 %31 to i64
  %min49 = getelementptr inbounds %struct.AutoStretchParam_t, %struct.AutoStretchParam_t* %param, i32 0, i32 2
  %arrayidx50 = getelementptr inbounds [3 x i8], [3 x i8]* %min49, i32 0, i64 %idxprom48
  %32 = load i8, i8* %arrayidx50, align 1
  %idxprom51 = zext i8 %32 to i64
  %lut52 = getelementptr inbounds %struct.AutoStretchParam_t, %struct.AutoStretchParam_t* %param, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [256 x [3 x i8]], [256 x [3 x i8]]* %lut52, i32 0, i64 %idxprom51
  %arrayidx54 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx53, i32 0, i64 %idxprom47
  store i8 %29, i8* %arrayidx54, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %for.inc.55

for.inc.55:                                       ; preds = %if.end
  %33 = load i32, i32* %b, align 4
  %inc56 = add nsw i32 %33, 1
  store i32 %inc56, i32* %b, align 4
  br label %for.cond

for.end.57:                                       ; preds = %for.cond
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %35 = bitcast %struct.AutoStretchParam_t* %param to i8*
  call void @gimp_rgn_iterate2(%struct._GimpDrawable* %34, i32 0, void (i8*, i8*, i32, i8*)* @c_astretch_func, i8* %35)
  ret void
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_drawable_is_indexed(i32) #1

; Function Attrs: nounwind uwtable
define internal void @indexed_c_astretch(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %cmap = alloca i8*, align 8
  %ncols = alloca i32, align 4
  %i = alloca i32, align 4
  %rhi = alloca i32, align 4
  %ghi = alloca i32, align 4
  %bhi = alloca i32, align 4
  %rlo = alloca i32, align 4
  %glo = alloca i32, align 4
  %blo = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 0, i32* %rhi, align 4
  store i32 0, i32* %ghi, align 4
  store i32 0, i32* %bhi, align 4
  store i32 255, i32* %rlo, align 4
  store i32 255, i32* %glo, align 4
  store i32 255, i32* %blo, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call i8* @gimp_image_get_colormap(i32 %0, i32* %ncols)
  store i8* %call, i8** %cmap, align 8
  %1 = load i8*, i8** %cmap, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call1)
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
  %mul = mul nsw i32 %4, 3
  %add = add nsw i32 %mul, 0
  %idxprom = sext i32 %add to i64
  %5 = load i8*, i8** %cmap, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %7 = load i32, i32* %rhi, align 4
  %cmp2 = icmp sgt i32 %conv, %7
  br i1 %cmp2, label %if.then.4, label %if.end.10

if.then.4:                                        ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %mul5 = mul nsw i32 %8, 3
  %add6 = add nsw i32 %mul5, 0
  %idxprom7 = sext i32 %add6 to i64
  %9 = load i8*, i8** %cmap, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %9, i64 %idxprom7
  %10 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %10 to i32
  store i32 %conv9, i32* %rhi, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.4, %for.body
  %11 = load i32, i32* %i, align 4
  %mul11 = mul nsw i32 %11, 3
  %add12 = add nsw i32 %mul11, 1
  %idxprom13 = sext i32 %add12 to i64
  %12 = load i8*, i8** %cmap, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %12, i64 %idxprom13
  %13 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %13 to i32
  %14 = load i32, i32* %ghi, align 4
  %cmp16 = icmp sgt i32 %conv15, %14
  br i1 %cmp16, label %if.then.18, label %if.end.24

if.then.18:                                       ; preds = %if.end.10
  %15 = load i32, i32* %i, align 4
  %mul19 = mul nsw i32 %15, 3
  %add20 = add nsw i32 %mul19, 1
  %idxprom21 = sext i32 %add20 to i64
  %16 = load i8*, i8** %cmap, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %16, i64 %idxprom21
  %17 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %17 to i32
  store i32 %conv23, i32* %ghi, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.18, %if.end.10
  %18 = load i32, i32* %i, align 4
  %mul25 = mul nsw i32 %18, 3
  %add26 = add nsw i32 %mul25, 2
  %idxprom27 = sext i32 %add26 to i64
  %19 = load i8*, i8** %cmap, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %19, i64 %idxprom27
  %20 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %20 to i32
  %21 = load i32, i32* %bhi, align 4
  %cmp30 = icmp sgt i32 %conv29, %21
  br i1 %cmp30, label %if.then.32, label %if.end.38

if.then.32:                                       ; preds = %if.end.24
  %22 = load i32, i32* %i, align 4
  %mul33 = mul nsw i32 %22, 3
  %add34 = add nsw i32 %mul33, 2
  %idxprom35 = sext i32 %add34 to i64
  %23 = load i8*, i8** %cmap, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %23, i64 %idxprom35
  %24 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %24 to i32
  store i32 %conv37, i32* %bhi, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.32, %if.end.24
  %25 = load i32, i32* %i, align 4
  %mul39 = mul nsw i32 %25, 3
  %add40 = add nsw i32 %mul39, 0
  %idxprom41 = sext i32 %add40 to i64
  %26 = load i8*, i8** %cmap, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %26, i64 %idxprom41
  %27 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %27 to i32
  %28 = load i32, i32* %rlo, align 4
  %cmp44 = icmp slt i32 %conv43, %28
  br i1 %cmp44, label %if.then.46, label %if.end.52

if.then.46:                                       ; preds = %if.end.38
  %29 = load i32, i32* %i, align 4
  %mul47 = mul nsw i32 %29, 3
  %add48 = add nsw i32 %mul47, 0
  %idxprom49 = sext i32 %add48 to i64
  %30 = load i8*, i8** %cmap, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %30, i64 %idxprom49
  %31 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %31 to i32
  store i32 %conv51, i32* %rlo, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.46, %if.end.38
  %32 = load i32, i32* %i, align 4
  %mul53 = mul nsw i32 %32, 3
  %add54 = add nsw i32 %mul53, 1
  %idxprom55 = sext i32 %add54 to i64
  %33 = load i8*, i8** %cmap, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %33, i64 %idxprom55
  %34 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %34 to i32
  %35 = load i32, i32* %glo, align 4
  %cmp58 = icmp slt i32 %conv57, %35
  br i1 %cmp58, label %if.then.60, label %if.end.66

if.then.60:                                       ; preds = %if.end.52
  %36 = load i32, i32* %i, align 4
  %mul61 = mul nsw i32 %36, 3
  %add62 = add nsw i32 %mul61, 1
  %idxprom63 = sext i32 %add62 to i64
  %37 = load i8*, i8** %cmap, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %37, i64 %idxprom63
  %38 = load i8, i8* %arrayidx64, align 1
  %conv65 = zext i8 %38 to i32
  store i32 %conv65, i32* %glo, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.60, %if.end.52
  %39 = load i32, i32* %i, align 4
  %mul67 = mul nsw i32 %39, 3
  %add68 = add nsw i32 %mul67, 2
  %idxprom69 = sext i32 %add68 to i64
  %40 = load i8*, i8** %cmap, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %40, i64 %idxprom69
  %41 = load i8, i8* %arrayidx70, align 1
  %conv71 = zext i8 %41 to i32
  %42 = load i32, i32* %blo, align 4
  %cmp72 = icmp slt i32 %conv71, %42
  br i1 %cmp72, label %if.then.74, label %if.end.80

if.then.74:                                       ; preds = %if.end.66
  %43 = load i32, i32* %i, align 4
  %mul75 = mul nsw i32 %43, 3
  %add76 = add nsw i32 %mul75, 2
  %idxprom77 = sext i32 %add76 to i64
  %44 = load i8*, i8** %cmap, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %44, i64 %idxprom77
  %45 = load i8, i8* %arrayidx78, align 1
  %conv79 = zext i8 %45 to i32
  store i32 %conv79, i32* %blo, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.74, %if.end.66
  br label %for.inc

for.inc:                                          ; preds = %if.end.80
  %46 = load i32, i32* %i, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.137, %for.end
  %47 = load i32, i32* %i, align 4
  %48 = load i32, i32* %ncols, align 4
  %cmp82 = icmp slt i32 %47, %48
  br i1 %cmp82, label %for.body.84, label %for.end.139

for.body.84:                                      ; preds = %for.cond.81
  %49 = load i32, i32* %rhi, align 4
  %50 = load i32, i32* %rlo, align 4
  %cmp85 = icmp ne i32 %49, %50
  br i1 %cmp85, label %if.then.87, label %if.end.100

if.then.87:                                       ; preds = %for.body.84
  %51 = load i32, i32* %i, align 4
  %mul88 = mul nsw i32 %51, 3
  %add89 = add nsw i32 %mul88, 0
  %idxprom90 = sext i32 %add89 to i64
  %52 = load i8*, i8** %cmap, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %52, i64 %idxprom90
  %53 = load i8, i8* %arrayidx91, align 1
  %conv92 = zext i8 %53 to i32
  %54 = load i32, i32* %rlo, align 4
  %sub = sub nsw i32 %conv92, %54
  %mul93 = mul nsw i32 255, %sub
  %55 = load i32, i32* %rhi, align 4
  %56 = load i32, i32* %rlo, align 4
  %sub94 = sub nsw i32 %55, %56
  %div = sdiv i32 %mul93, %sub94
  %conv95 = trunc i32 %div to i8
  %57 = load i32, i32* %i, align 4
  %mul96 = mul nsw i32 %57, 3
  %add97 = add nsw i32 %mul96, 0
  %idxprom98 = sext i32 %add97 to i64
  %58 = load i8*, i8** %cmap, align 8
  %arrayidx99 = getelementptr inbounds i8, i8* %58, i64 %idxprom98
  store i8 %conv95, i8* %arrayidx99, align 1
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.87, %for.body.84
  %59 = load i32, i32* %ghi, align 4
  %60 = load i32, i32* %glo, align 4
  %cmp101 = icmp ne i32 %59, %60
  br i1 %cmp101, label %if.then.103, label %if.end.118

if.then.103:                                      ; preds = %if.end.100
  %61 = load i32, i32* %i, align 4
  %mul104 = mul nsw i32 %61, 3
  %add105 = add nsw i32 %mul104, 1
  %idxprom106 = sext i32 %add105 to i64
  %62 = load i8*, i8** %cmap, align 8
  %arrayidx107 = getelementptr inbounds i8, i8* %62, i64 %idxprom106
  %63 = load i8, i8* %arrayidx107, align 1
  %conv108 = zext i8 %63 to i32
  %64 = load i32, i32* %glo, align 4
  %sub109 = sub nsw i32 %conv108, %64
  %mul110 = mul nsw i32 255, %sub109
  %65 = load i32, i32* %ghi, align 4
  %66 = load i32, i32* %glo, align 4
  %sub111 = sub nsw i32 %65, %66
  %div112 = sdiv i32 %mul110, %sub111
  %conv113 = trunc i32 %div112 to i8
  %67 = load i32, i32* %i, align 4
  %mul114 = mul nsw i32 %67, 3
  %add115 = add nsw i32 %mul114, 1
  %idxprom116 = sext i32 %add115 to i64
  %68 = load i8*, i8** %cmap, align 8
  %arrayidx117 = getelementptr inbounds i8, i8* %68, i64 %idxprom116
  store i8 %conv113, i8* %arrayidx117, align 1
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.103, %if.end.100
  %69 = load i32, i32* %rhi, align 4
  %70 = load i32, i32* %rlo, align 4
  %cmp119 = icmp ne i32 %69, %70
  br i1 %cmp119, label %if.then.121, label %if.end.136

if.then.121:                                      ; preds = %if.end.118
  %71 = load i32, i32* %i, align 4
  %mul122 = mul nsw i32 %71, 3
  %add123 = add nsw i32 %mul122, 2
  %idxprom124 = sext i32 %add123 to i64
  %72 = load i8*, i8** %cmap, align 8
  %arrayidx125 = getelementptr inbounds i8, i8* %72, i64 %idxprom124
  %73 = load i8, i8* %arrayidx125, align 1
  %conv126 = zext i8 %73 to i32
  %74 = load i32, i32* %blo, align 4
  %sub127 = sub nsw i32 %conv126, %74
  %mul128 = mul nsw i32 255, %sub127
  %75 = load i32, i32* %bhi, align 4
  %76 = load i32, i32* %blo, align 4
  %sub129 = sub nsw i32 %75, %76
  %div130 = sdiv i32 %mul128, %sub129
  %conv131 = trunc i32 %div130 to i8
  %77 = load i32, i32* %i, align 4
  %mul132 = mul nsw i32 %77, 3
  %add133 = add nsw i32 %mul132, 2
  %idxprom134 = sext i32 %add133 to i64
  %78 = load i8*, i8** %cmap, align 8
  %arrayidx135 = getelementptr inbounds i8, i8* %78, i64 %idxprom134
  store i8 %conv131, i8* %arrayidx135, align 1
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.121, %if.end.118
  br label %for.inc.137

for.inc.137:                                      ; preds = %if.end.136
  %79 = load i32, i32* %i, align 4
  %inc138 = add nsw i32 %79, 1
  store i32 %inc138, i32* %i, align 4
  br label %for.cond.81

for.end.139:                                      ; preds = %for.cond.81
  %80 = load i32, i32* %image_ID.addr, align 4
  %81 = load i8*, i8** %cmap, align 8
  %82 = load i32, i32* %ncols, align 4
  %call140 = call i32 @gimp_image_set_colormap(i32 %80, i8* %81, i32 %82)
  ret void
}

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare void @gimp_rgn_iterate1(%struct._GimpDrawable*, i32, void (i8*, i32, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @find_min_max(i8* %src, i32 %bpp, i8* %data) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %param = alloca %struct.AutoStretchParam_t*, align 8
  %b = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.AutoStretchParam_t*
  store %struct.AutoStretchParam_t* %1, %struct.AutoStretchParam_t** %param, align 8
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %b, align 4
  %3 = load %struct.AutoStretchParam_t*, %struct.AutoStretchParam_t** %param, align 8
  %alpha = getelementptr inbounds %struct.AutoStretchParam_t, %struct.AutoStretchParam_t* %3, i32 0, i32 0
  %4 = load i32, i32* %alpha, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.AutoStretchParam_t*, %struct.AutoStretchParam_t** %param, align 8
  %has_alpha = getelementptr inbounds %struct.AutoStretchParam_t, %struct.AutoStretchParam_t* %5, i32 0, i32 4
  %6 = load i32, i32* %has_alpha, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %7 = load %struct.AutoStretchParam_t*, %struct.AutoStretchParam_t** %param, align 8
  %alpha1 = getelementptr inbounds %struct.AutoStretchParam_t, %struct.AutoStretchParam_t* %7, i32 0, i32 0
  %8 = load i32, i32* %alpha1, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %10 to i32
  %tobool2 = icmp ne i32 %conv, 0
  br i1 %tobool2, label %if.then, label %if.end.32

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %11 = load i32, i32* %b, align 4
  %idxprom3 = sext i32 %11 to i64
  %12 = load i8*, i8** %src.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %12, i64 %idxprom3
  %13 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %13 to i32
  %14 = load i32, i32* %b, align 4
  %idxprom6 = sext i32 %14 to i64
  %15 = load %struct.AutoStretchParam_t*, %struct.AutoStretchParam_t** %param, align 8
  %min = getelementptr inbounds %struct.AutoStretchParam_t, %struct.AutoStretchParam_t* %15, i32 0, i32 2
  %arrayidx7 = getelementptr inbounds [3 x i8], [3 x i8]* %min, i32 0, i64 %idxprom6
  %16 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %16 to i32
  %cmp9 = icmp slt i32 %conv5, %conv8
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  %17 = load i32, i32* %b, align 4
  %idxprom12 = sext i32 %17 to i64
  %18 = load i8*, i8** %src.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %18, i64 %idxprom12
  %19 = load i8, i8* %arrayidx13, align 1
  %20 = load i32, i32* %b, align 4
  %idxprom14 = sext i32 %20 to i64
  %21 = load %struct.AutoStretchParam_t*, %struct.AutoStretchParam_t** %param, align 8
  %min15 = getelementptr inbounds %struct.AutoStretchParam_t, %struct.AutoStretchParam_t* %21, i32 0, i32 2
  %arrayidx16 = getelementptr inbounds [3 x i8], [3 x i8]* %min15, i32 0, i64 %idxprom14
  store i8 %19, i8* %arrayidx16, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then
  %22 = load i32, i32* %b, align 4
  %idxprom17 = sext i32 %22 to i64
  %23 = load i8*, i8** %src.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %23, i64 %idxprom17
  %24 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %24 to i32
  %25 = load i32, i32* %b, align 4
  %idxprom20 = sext i32 %25 to i64
  %26 = load %struct.AutoStretchParam_t*, %struct.AutoStretchParam_t** %param, align 8
  %max = getelementptr inbounds %struct.AutoStretchParam_t, %struct.AutoStretchParam_t* %26, i32 0, i32 3
  %arrayidx21 = getelementptr inbounds [3 x i8], [3 x i8]* %max, i32 0, i64 %idxprom20
  %27 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %27 to i32
  %cmp23 = icmp sgt i32 %conv19, %conv22
  br i1 %cmp23, label %if.then.25, label %if.end.31

if.then.25:                                       ; preds = %if.end
  %28 = load i32, i32* %b, align 4
  %idxprom26 = sext i32 %28 to i64
  %29 = load i8*, i8** %src.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %29, i64 %idxprom26
  %30 = load i8, i8* %arrayidx27, align 1
  %31 = load i32, i32* %b, align 4
  %idxprom28 = sext i32 %31 to i64
  %32 = load %struct.AutoStretchParam_t*, %struct.AutoStretchParam_t** %param, align 8
  %max29 = getelementptr inbounds %struct.AutoStretchParam_t, %struct.AutoStretchParam_t* %32, i32 0, i32 3
  %arrayidx30 = getelementptr inbounds [3 x i8], [3 x i8]* %max29, i32 0, i64 %idxprom28
  store i8 %30, i8* %arrayidx30, align 1
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.25, %if.end
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.32
  %33 = load i32, i32* %b, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @gimp_rgn_iterate2(%struct._GimpDrawable*, i32, void (i8*, i8*, i32, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @c_astretch_func(i8* %src, i8* %dest, i32 %bpp, i8* %data) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %param = alloca %struct.AutoStretchParam_t*, align 8
  %b = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.AutoStretchParam_t*
  store %struct.AutoStretchParam_t* %1, %struct.AutoStretchParam_t** %param, align 8
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %b, align 4
  %3 = load %struct.AutoStretchParam_t*, %struct.AutoStretchParam_t** %param, align 8
  %alpha = getelementptr inbounds %struct.AutoStretchParam_t, %struct.AutoStretchParam_t* %3, i32 0, i32 0
  %4 = load i32, i32* %alpha, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %b, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32, i32* %b, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom1
  %8 = load i8, i8* %arrayidx, align 1
  %idxprom2 = zext i8 %8 to i64
  %9 = load %struct.AutoStretchParam_t*, %struct.AutoStretchParam_t** %param, align 8
  %lut = getelementptr inbounds %struct.AutoStretchParam_t, %struct.AutoStretchParam_t* %9, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [256 x [3 x i8]], [256 x [3 x i8]]* %lut, i32 0, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx3, i32 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx4, align 1
  %11 = load i32, i32* %b, align 4
  %idxprom5 = sext i32 %11 to i64
  %12 = load i8*, i8** %dest.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %12, i64 %idxprom5
  store i8 %10, i8* %arrayidx6, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %b, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.AutoStretchParam_t*, %struct.AutoStretchParam_t** %param, align 8
  %has_alpha = getelementptr inbounds %struct.AutoStretchParam_t, %struct.AutoStretchParam_t* %14, i32 0, i32 4
  %15 = load i32, i32* %has_alpha, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %16 = load %struct.AutoStretchParam_t*, %struct.AutoStretchParam_t** %param, align 8
  %alpha7 = getelementptr inbounds %struct.AutoStretchParam_t, %struct.AutoStretchParam_t* %16, i32 0, i32 0
  %17 = load i32, i32* %alpha7, align 4
  %idxprom8 = sext i32 %17 to i64
  %18 = load i8*, i8** %src.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %18, i64 %idxprom8
  %19 = load i8, i8* %arrayidx9, align 1
  %20 = load %struct.AutoStretchParam_t*, %struct.AutoStretchParam_t** %param, align 8
  %alpha10 = getelementptr inbounds %struct.AutoStretchParam_t, %struct.AutoStretchParam_t* %20, i32 0, i32 0
  %21 = load i32, i32* %alpha10, align 4
  %idxprom11 = sext i32 %21 to i64
  %22 = load i8*, i8** %dest.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %22, i64 %idxprom11
  store i8 %19, i8* %arrayidx12, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  ret void
}

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
