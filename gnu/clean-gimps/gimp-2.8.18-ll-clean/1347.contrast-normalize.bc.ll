; ModuleID = './plug-ins/common/contrast-normalize.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct.NormalizeParam_t = type { [256 x i8], double, double, i32, i32 }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [3 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Input drawable\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"plug-in-normalize\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"Stretch brightness values to cover the full range\00", align 1
@.str.8 = private unnamed_addr constant [378 x i8] c"This plugin performs almost the same operation as the 'contrast autostretch' plugin, except that it won't allow the color channels to normalize independently.  This is actually what most people probably want instead of contrast-autostretch; use c-a only if you wish to remove an undesirable color-tint from a source image which is supposed to contain pure-white and pure-black.\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Adam D. Moss, Federico Mena Quintero\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"_Normalize\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"RGB*, GRAY*, INDEXED*\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"<Image>/Colors/Auto\00", align 1
@run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str.14 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"Normalizing\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"normalize: cmap was NULL!  Quitting...\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([378 x i8], [378 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i32 1, i32 3, i32 0, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0))
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
  %call = call i8* @gimp_locale_directory() #4
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
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0)) #5
  %call14 = call i32 @gimp_progress_init(i8* %call13)
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 1
  %11 = load i32, i32* %width, align 4
  %call15 = call i32 @gimp_tile_width() #4
  %div = udiv i32 %11, %call15
  %add = add i32 %div, 1
  %mul = mul i32 2, %add
  %conv = zext i32 %mul to i64
  call void @gimp_tile_cache_ntiles(i64 %conv)
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @normalize(%struct._GimpDrawable* %12)
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
  call void @indexed_normalize(i32 %16)
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
define internal void @normalize(%struct._GimpDrawable* %drawable) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %param = alloca %struct.NormalizeParam_t, align 8
  %x = alloca i32, align 4
  %range = alloca i8, align 1
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %min = getelementptr inbounds %struct.NormalizeParam_t, %struct.NormalizeParam_t* %param, i32 0, i32 1
  store double 2.550000e+02, double* %min, align 8
  %max = getelementptr inbounds %struct.NormalizeParam_t, %struct.NormalizeParam_t* %param, i32 0, i32 2
  store double 0.000000e+00, double* %max, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 0
  %1 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_has_alpha(i32 %1)
  %has_alpha = getelementptr inbounds %struct.NormalizeParam_t, %struct.NormalizeParam_t* %param, i32 0, i32 4
  store i32 %call, i32* %has_alpha, align 4
  %has_alpha1 = getelementptr inbounds %struct.NormalizeParam_t, %struct.NormalizeParam_t* %param, i32 0, i32 4
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
  %alpha = getelementptr inbounds %struct.NormalizeParam_t, %struct.NormalizeParam_t* %param, i32 0, i32 3
  store i32 %cond, i32* %alpha, align 4
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %8 = bitcast %struct.NormalizeParam_t* %param to i8*
  call void @gimp_rgn_iterate1(%struct._GimpDrawable* %7, i32 0, void (i8*, i32, i8*)* @find_min_max, i8* %8)
  %max3 = getelementptr inbounds %struct.NormalizeParam_t, %struct.NormalizeParam_t* %param, i32 0, i32 2
  %9 = load double, double* %max3, align 8
  %min4 = getelementptr inbounds %struct.NormalizeParam_t, %struct.NormalizeParam_t* %param, i32 0, i32 1
  %10 = load double, double* %min4, align 8
  %sub5 = fsub double %9, %10
  %conv = fptoui double %sub5 to i8
  store i8 %conv, i8* %range, align 1
  %11 = load i8, i8* %range, align 1
  %conv6 = zext i8 %11 to i32
  %cmp = icmp ne i32 %conv6, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %min8 = getelementptr inbounds %struct.NormalizeParam_t, %struct.NormalizeParam_t* %param, i32 0, i32 1
  %12 = load double, double* %min8, align 8
  %conv9 = fptosi double %12 to i32
  store i32 %conv9, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %13 = load i32, i32* %x, align 4
  %conv10 = sitofp i32 %13 to double
  %max11 = getelementptr inbounds %struct.NormalizeParam_t, %struct.NormalizeParam_t* %param, i32 0, i32 2
  %14 = load double, double* %max11, align 8
  %cmp12 = fcmp ole double %conv10, %14
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %x, align 4
  %conv14 = sitofp i32 %15 to double
  %min15 = getelementptr inbounds %struct.NormalizeParam_t, %struct.NormalizeParam_t* %param, i32 0, i32 1
  %16 = load double, double* %min15, align 8
  %sub16 = fsub double %conv14, %16
  %mul = fmul double 2.550000e+02, %sub16
  %17 = load i8, i8* %range, align 1
  %conv17 = zext i8 %17 to i32
  %conv18 = sitofp i32 %conv17 to double
  %div = fdiv double %mul, %conv18
  %conv19 = fptoui double %div to i8
  %18 = load i32, i32* %x, align 4
  %idxprom = sext i32 %18 to i64
  %lut = getelementptr inbounds %struct.NormalizeParam_t, %struct.NormalizeParam_t* %param, i32 0, i32 0
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %lut, i32 0, i64 %idxprom
  store i8 %conv19, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %x, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %cond.end
  %min20 = getelementptr inbounds %struct.NormalizeParam_t, %struct.NormalizeParam_t* %param, i32 0, i32 1
  %20 = load double, double* %min20, align 8
  %conv21 = fptoui double %20 to i8
  %min22 = getelementptr inbounds %struct.NormalizeParam_t, %struct.NormalizeParam_t* %param, i32 0, i32 1
  %21 = load double, double* %min22, align 8
  %conv23 = fptosi double %21 to i32
  %idxprom24 = sext i32 %conv23 to i64
  %lut25 = getelementptr inbounds %struct.NormalizeParam_t, %struct.NormalizeParam_t* %param, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [256 x i8], [256 x i8]* %lut25, i32 0, i64 %idxprom24
  store i8 %conv21, i8* %arrayidx26, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %23 = bitcast %struct.NormalizeParam_t* %param to i8*
  call void @gimp_rgn_iterate2(%struct._GimpDrawable* %22, i32 0, void (i8*, i8*, i32, i8*)* @normalize_func, i8* %23)
  ret void
}

declare i32 @gimp_displays_flush() #1

declare i32 @gimp_drawable_is_indexed(i32) #1

; Function Attrs: nounwind uwtable
define internal void @indexed_normalize(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %cmap = alloca i8*, align 8
  %ncols = alloca i32, align 4
  %i = alloca i32, align 4
  %hi = alloca i32, align 4
  %lo = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 0, i32* %hi, align 4
  store i32 255, i32* %lo, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call i8* @gimp_image_get_colormap(i32 %0, i32* %ncols)
  store i8* %call, i8** %cmap, align 8
  %1 = load i8*, i8** %cmap, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %ncols, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %4, 3
  %add = add nsw i32 %mul, 0
  %idxprom = sext i32 %add to i64
  %5 = load i8*, i8** %cmap, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %7 = load i32, i32* %hi, align 4
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
  store i32 %conv9, i32* %hi, align 4
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
  %14 = load i32, i32* %hi, align 4
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
  store i32 %conv23, i32* %hi, align 4
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
  %21 = load i32, i32* %hi, align 4
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
  store i32 %conv37, i32* %hi, align 4
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
  %28 = load i32, i32* %lo, align 4
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
  store i32 %conv51, i32* %lo, align 4
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
  %35 = load i32, i32* %lo, align 4
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
  store i32 %conv65, i32* %lo, align 4
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
  %42 = load i32, i32* %lo, align 4
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
  store i32 %conv79, i32* %lo, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.74, %if.end.66
  br label %for.inc

for.inc:                                          ; preds = %if.end.80
  %46 = load i32, i32* %i, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %47 = load i32, i32* %hi, align 4
  %48 = load i32, i32* %lo, align 4
  %cmp81 = icmp ne i32 %47, %48
  br i1 %cmp81, label %if.then.83, label %if.end.131

if.then.83:                                       ; preds = %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc.128, %if.then.83
  %49 = load i32, i32* %i, align 4
  %50 = load i32, i32* %ncols, align 4
  %cmp85 = icmp slt i32 %49, %50
  br i1 %cmp85, label %for.body.87, label %for.end.130

for.body.87:                                      ; preds = %for.cond.84
  %51 = load i32, i32* %i, align 4
  %mul88 = mul nsw i32 %51, 3
  %add89 = add nsw i32 %mul88, 0
  %idxprom90 = sext i32 %add89 to i64
  %52 = load i8*, i8** %cmap, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %52, i64 %idxprom90
  %53 = load i8, i8* %arrayidx91, align 1
  %conv92 = zext i8 %53 to i32
  %54 = load i32, i32* %lo, align 4
  %sub = sub nsw i32 %conv92, %54
  %mul93 = mul nsw i32 255, %sub
  %55 = load i32, i32* %hi, align 4
  %56 = load i32, i32* %lo, align 4
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
  %59 = load i32, i32* %i, align 4
  %mul100 = mul nsw i32 %59, 3
  %add101 = add nsw i32 %mul100, 1
  %idxprom102 = sext i32 %add101 to i64
  %60 = load i8*, i8** %cmap, align 8
  %arrayidx103 = getelementptr inbounds i8, i8* %60, i64 %idxprom102
  %61 = load i8, i8* %arrayidx103, align 1
  %conv104 = zext i8 %61 to i32
  %62 = load i32, i32* %lo, align 4
  %sub105 = sub nsw i32 %conv104, %62
  %mul106 = mul nsw i32 255, %sub105
  %63 = load i32, i32* %hi, align 4
  %64 = load i32, i32* %lo, align 4
  %sub107 = sub nsw i32 %63, %64
  %div108 = sdiv i32 %mul106, %sub107
  %conv109 = trunc i32 %div108 to i8
  %65 = load i32, i32* %i, align 4
  %mul110 = mul nsw i32 %65, 3
  %add111 = add nsw i32 %mul110, 1
  %idxprom112 = sext i32 %add111 to i64
  %66 = load i8*, i8** %cmap, align 8
  %arrayidx113 = getelementptr inbounds i8, i8* %66, i64 %idxprom112
  store i8 %conv109, i8* %arrayidx113, align 1
  %67 = load i32, i32* %i, align 4
  %mul114 = mul nsw i32 %67, 3
  %add115 = add nsw i32 %mul114, 2
  %idxprom116 = sext i32 %add115 to i64
  %68 = load i8*, i8** %cmap, align 8
  %arrayidx117 = getelementptr inbounds i8, i8* %68, i64 %idxprom116
  %69 = load i8, i8* %arrayidx117, align 1
  %conv118 = zext i8 %69 to i32
  %70 = load i32, i32* %lo, align 4
  %sub119 = sub nsw i32 %conv118, %70
  %mul120 = mul nsw i32 255, %sub119
  %71 = load i32, i32* %hi, align 4
  %72 = load i32, i32* %lo, align 4
  %sub121 = sub nsw i32 %71, %72
  %div122 = sdiv i32 %mul120, %sub121
  %conv123 = trunc i32 %div122 to i8
  %73 = load i32, i32* %i, align 4
  %mul124 = mul nsw i32 %73, 3
  %add125 = add nsw i32 %mul124, 2
  %idxprom126 = sext i32 %add125 to i64
  %74 = load i8*, i8** %cmap, align 8
  %arrayidx127 = getelementptr inbounds i8, i8* %74, i64 %idxprom126
  store i8 %conv123, i8* %arrayidx127, align 1
  br label %for.inc.128

for.inc.128:                                      ; preds = %for.body.87
  %75 = load i32, i32* %i, align 4
  %inc129 = add nsw i32 %75, 1
  store i32 %inc129, i32* %i, align 4
  br label %for.cond.84

for.end.130:                                      ; preds = %for.cond.84
  br label %if.end.131

if.end.131:                                       ; preds = %for.end.130, %for.end
  %76 = load i32, i32* %image_ID.addr, align 4
  %77 = load i8*, i8** %cmap, align 8
  %78 = load i32, i32* %ncols, align 4
  %call132 = call i32 @gimp_image_set_colormap(i32 %76, i8* %77, i32 %78)
  br label %return

return:                                           ; preds = %if.end.131, %if.then
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
  %param = alloca %struct.NormalizeParam_t*, align 8
  %b = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.NormalizeParam_t*
  store %struct.NormalizeParam_t* %1, %struct.NormalizeParam_t** %param, align 8
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %b, align 4
  %3 = load %struct.NormalizeParam_t*, %struct.NormalizeParam_t** %param, align 8
  %alpha = getelementptr inbounds %struct.NormalizeParam_t, %struct.NormalizeParam_t* %3, i32 0, i32 3
  %4 = load i32, i32* %alpha, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.NormalizeParam_t*, %struct.NormalizeParam_t** %param, align 8
  %has_alpha = getelementptr inbounds %struct.NormalizeParam_t, %struct.NormalizeParam_t* %5, i32 0, i32 4
  %6 = load i32, i32* %has_alpha, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %7 = load %struct.NormalizeParam_t*, %struct.NormalizeParam_t** %param, align 8
  %alpha1 = getelementptr inbounds %struct.NormalizeParam_t, %struct.NormalizeParam_t* %7, i32 0, i32 3
  %8 = load i32, i32* %alpha1, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %10 to i32
  %tobool2 = icmp ne i32 %conv, 0
  br i1 %tobool2, label %if.then, label %if.end.26

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %11 = load i32, i32* %b, align 4
  %idxprom3 = sext i32 %11 to i64
  %12 = load i8*, i8** %src.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %12, i64 %idxprom3
  %13 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %13 to i32
  %conv6 = sitofp i32 %conv5 to double
  %14 = load %struct.NormalizeParam_t*, %struct.NormalizeParam_t** %param, align 8
  %min = getelementptr inbounds %struct.NormalizeParam_t, %struct.NormalizeParam_t* %14, i32 0, i32 1
  %15 = load double, double* %min, align 8
  %cmp7 = fcmp olt double %conv6, %15
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %16 = load i32, i32* %b, align 4
  %idxprom10 = sext i32 %16 to i64
  %17 = load i8*, i8** %src.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %17, i64 %idxprom10
  %18 = load i8, i8* %arrayidx11, align 1
  %conv12 = uitofp i8 %18 to double
  %19 = load %struct.NormalizeParam_t*, %struct.NormalizeParam_t** %param, align 8
  %min13 = getelementptr inbounds %struct.NormalizeParam_t, %struct.NormalizeParam_t* %19, i32 0, i32 1
  store double %conv12, double* %min13, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then
  %20 = load i32, i32* %b, align 4
  %idxprom14 = sext i32 %20 to i64
  %21 = load i8*, i8** %src.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %21, i64 %idxprom14
  %22 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %22 to i32
  %conv17 = sitofp i32 %conv16 to double
  %23 = load %struct.NormalizeParam_t*, %struct.NormalizeParam_t** %param, align 8
  %max = getelementptr inbounds %struct.NormalizeParam_t, %struct.NormalizeParam_t* %23, i32 0, i32 2
  %24 = load double, double* %max, align 8
  %cmp18 = fcmp ogt double %conv17, %24
  br i1 %cmp18, label %if.then.20, label %if.end.25

if.then.20:                                       ; preds = %if.end
  %25 = load i32, i32* %b, align 4
  %idxprom21 = sext i32 %25 to i64
  %26 = load i8*, i8** %src.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %26, i64 %idxprom21
  %27 = load i8, i8* %arrayidx22, align 1
  %conv23 = uitofp i8 %27 to double
  %28 = load %struct.NormalizeParam_t*, %struct.NormalizeParam_t** %param, align 8
  %max24 = getelementptr inbounds %struct.NormalizeParam_t, %struct.NormalizeParam_t* %28, i32 0, i32 2
  store double %conv23, double* %max24, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.20, %if.end
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %29 = load i32, i32* %b, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @gimp_rgn_iterate2(%struct._GimpDrawable*, i32, void (i8*, i8*, i32, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @normalize_func(i8* %src, i8* %dest, i32 %bpp, i8* %data) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %bpp.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %param = alloca %struct.NormalizeParam_t*, align 8
  %b = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %bpp, i32* %bpp.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.NormalizeParam_t*
  store %struct.NormalizeParam_t* %1, %struct.NormalizeParam_t** %param, align 8
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %b, align 4
  %3 = load %struct.NormalizeParam_t*, %struct.NormalizeParam_t** %param, align 8
  %alpha = getelementptr inbounds %struct.NormalizeParam_t, %struct.NormalizeParam_t* %3, i32 0, i32 3
  %4 = load i32, i32* %alpha, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %b, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %idxprom1 = zext i8 %7 to i64
  %8 = load %struct.NormalizeParam_t*, %struct.NormalizeParam_t** %param, align 8
  %lut = getelementptr inbounds %struct.NormalizeParam_t, %struct.NormalizeParam_t* %8, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [256 x i8], [256 x i8]* %lut, i32 0, i64 %idxprom1
  %9 = load i8, i8* %arrayidx2, align 1
  %10 = load i32, i32* %b, align 4
  %idxprom3 = sext i32 %10 to i64
  %11 = load i8*, i8** %dest.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %11, i64 %idxprom3
  store i8 %9, i8* %arrayidx4, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %b, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.NormalizeParam_t*, %struct.NormalizeParam_t** %param, align 8
  %has_alpha = getelementptr inbounds %struct.NormalizeParam_t, %struct.NormalizeParam_t* %13, i32 0, i32 4
  %14 = load i32, i32* %has_alpha, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %15 = load %struct.NormalizeParam_t*, %struct.NormalizeParam_t** %param, align 8
  %alpha5 = getelementptr inbounds %struct.NormalizeParam_t, %struct.NormalizeParam_t* %15, i32 0, i32 3
  %16 = load i32, i32* %alpha5, align 4
  %idxprom6 = sext i32 %16 to i64
  %17 = load i8*, i8** %src.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %17, i64 %idxprom6
  %18 = load i8, i8* %arrayidx7, align 1
  %19 = load %struct.NormalizeParam_t*, %struct.NormalizeParam_t** %param, align 8
  %alpha8 = getelementptr inbounds %struct.NormalizeParam_t, %struct.NormalizeParam_t* %19, i32 0, i32 3
  %20 = load i32, i32* %alpha8, align 4
  %idxprom9 = sext i32 %20 to i64
  %21 = load i8*, i8** %dest.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %21, i64 %idxprom9
  store i8 %18, i8* %arrayidx10, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  ret void
}

declare i8* @gimp_image_get_colormap(i32, i32*) #1

declare void @g_printerr(i8*, ...) #1

declare i32 @gimp_image_set_colormap(i32, i8*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
