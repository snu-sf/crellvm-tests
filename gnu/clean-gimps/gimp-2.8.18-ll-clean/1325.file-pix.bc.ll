; ModuleID = './plug-ins/common/file-pix.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GError = type { i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.load_args = internal constant [3 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"The name of the file to load\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"raw-filename\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"The name entered\00", align 1
@query.load_return_vals = internal constant [1 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0) }], align 16
@.str.6 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Output image\00", align 1
@query.save_args = internal constant [5 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i32 0, i32 0) }], align 16
@.str.8 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Drawable to save\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"The name of the file to save the image in\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"file-pix-load\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"loads files of the Alias|Wavefront Pix file format\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"Michael Taylor\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"Alias Pix image\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"pix,matte,mask,alpha,als\00", align 1
@.str.18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"file-pix-save\00", align 1
@.str.20 = private unnamed_addr constant [55 x i8] c"save file in the Alias|Wavefront pix/matte file format\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"RGB*, GRAY*\00", align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.22 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"file-pix\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"PIX\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"Opening '%s'\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"Background\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"Saving '%s'\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), i8* null, i32 1, i32 3, i32 1, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.load_args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @query.load_return_vals, i32 0, i32 0))
  %call = call i32 @gimp_register_load_handler(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i32 0, i32 0))
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i32 1, i32 5, i32 0, %struct._GimpParamDef* getelementptr inbounds ([5 x %struct._GimpParamDef], [5 x %struct._GimpParamDef]* @query.save_args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call1 = call i32 @gimp_register_save_handler(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i32 0, i32 0))
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
  %run_mode = alloca i32, align 4
  %status = alloca i32, align 4
  %image_ID = alloca i32, align 4
  %drawable_ID = alloca i32, align 4
  %export = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  store i32 0, i32* %export, align 4
  store %struct._GError* null, %struct._GError** %error, align 8
  %0 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %0, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %1 = load i32, i32* %d_int32, align 4
  store i32 %1, i32* %run_mode, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #5
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0), i8* %call) #6
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0)) #6
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0)) #6
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  store i32 21, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  store i32 0, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %4 = load i8*, i8** %name.addr, align 8
  %call4 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0)) #7
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.else.10

if.then:                                          ; preds = %do.end
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 1
  %data6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx5, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data6 to i8**
  %6 = load i8*, i8** %d_string, align 8
  %call7 = call i32 @load_image(i8* %6, %struct._GError** %error)
  store i32 %call7, i32* %image_ID, align 4
  %7 = load i32, i32* %image_ID, align 4
  %cmp8 = icmp ne i32 %7, -1
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %8 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %8, align 4
  store i32 13, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %9 = load i32, i32* %image_ID, align 4
  store i32 %9, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i32*), align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  br label %if.end.39

if.else.10:                                       ; preds = %do.end
  %10 = load i8*, i8** %name.addr, align 8
  %call11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0)) #7
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.else.37

if.then.13:                                       ; preds = %if.else.10
  %11 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %11, i64 1
  %data15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx14, i32 0, i32 1
  %d_int3216 = bitcast %union._GimpParamData* %data15 to i32*
  %12 = load i32, i32* %d_int3216, align 4
  store i32 %12, i32* %image_ID, align 4
  %13 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %13, i64 2
  %data18 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx17, i32 0, i32 1
  %d_int3219 = bitcast %union._GimpParamData* %data18 to i32*
  %14 = load i32, i32* %d_int3219, align 4
  store i32 %14, i32* %drawable_ID, align 4
  %15 = load i32, i32* %run_mode, align 4
  switch i32 %15, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then.13, %if.then.13
  call void @gimp_ui_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 0)
  %call20 = call i32 @gimp_export_image(i32* %image_ID, i32* %drawable_ID, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i32 3)
  store i32 %call20, i32* %export, align 4
  %16 = load i32, i32* %export, align 4
  %cmp21 = icmp eq i32 %16, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %sw.bb
  store i32 4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

if.end.23:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.23
  %17 = load i32, i32* %status, align 4
  %cmp24 = icmp eq i32 %17, 3
  br i1 %cmp24, label %if.then.25, label %if.end.32

if.then.25:                                       ; preds = %sw.epilog
  %18 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx26 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %18, i64 3
  %data27 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx26, i32 0, i32 1
  %d_string28 = bitcast %union._GimpParamData* %data27 to i8**
  %19 = load i8*, i8** %d_string28, align 8
  %20 = load i32, i32* %image_ID, align 4
  %21 = load i32, i32* %drawable_ID, align 4
  %call29 = call i32 @save_image(i8* %19, i32 %20, i32 %21, %struct._GError** %error)
  %tobool = icmp ne i32 %call29, 0
  br i1 %tobool, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %if.then.25
  store i32 0, i32* %status, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.then.25
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %sw.epilog
  %22 = load i32, i32* %export, align 4
  %cmp33 = icmp eq i32 %22, 2
  br i1 %cmp33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.end.32
  %23 = load i32, i32* %image_ID, align 4
  %call35 = call i32 @gimp_image_delete(i32 %23)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %if.end.32
  br label %if.end.38

if.else.37:                                       ; preds = %if.else.10
  store i32 1, i32* %status, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.37, %if.end.36
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end
  %24 = load i32, i32* %status, align 4
  %cmp40 = icmp ne i32 %24, 3
  br i1 %cmp40, label %land.lhs.true, label %if.end.43

land.lhs.true:                                    ; preds = %if.end.39
  %25 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool41 = icmp ne %struct._GError* %25, null
  br i1 %tobool41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %land.lhs.true
  %26 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %26, align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %27 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %27, i32 0, i32 2
  %28 = load i8*, i8** %message, align 8
  store i8* %28, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %land.lhs.true, %if.end.39
  %29 = load i32, i32* %status, align 4
  store i32 %29, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.43, %if.then.22
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

declare i32 @gimp_register_load_handler(i8*, i8*, i8*) #1

declare i32 @gimp_register_save_handler(i8*, i8*, i8*) #1

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

; Function Attrs: nounwind uwtable
define internal i32 @load_image(i8* %filename, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tile_height = alloca i32, align 4
  %row = alloca i32, align 4
  %file = alloca %struct._IO_FILE*, align 8
  %dest = alloca i8*, align 8
  %dest_base = alloca i8*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %image_ID = alloca i32, align 4
  %layer_ID = alloca i32, align 4
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %width = alloca i16, align 2
  %height = alloca i16, align 2
  %depth = alloca i16, align 2
  %imgtype = alloca i32, align 4
  %gdtype = alloca i32, align 4
  %record = alloca [4 x i8], align 1
  %readlen = alloca i32, align 4
  %count = alloca i8, align 1
  %record95 = alloca [2 x i8], align 1
  %readlen96 = alloca i32, align 4
  %count115 = alloca i8, align 1
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %file, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %file, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i32 @g_file_error_quark()
  %call2 = call i32* @__errno_location() #5
  %3 = load i32, i32* %call2, align 4
  %call3 = call i32 @g_file_error_from_errno(i32 %3)
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.27, i32 0, i32 0)) #6
  %4 = load i8*, i8** %filename.addr, align 8
  %call5 = call i8* @gimp_filename_to_utf8(i8* %4)
  %call6 = call i32* @__errno_location() #5
  %5 = load i32, i32* %call6, align 4
  %call7 = call i8* @g_strerror(i32 %5) #5
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %2, i32 %call1, i32 %call3, i8* %call4, i8* %call5, i8* %call7)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0)) #6
  %6 = load i8*, i8** %filename.addr, align 8
  %call9 = call i8* @gimp_filename_to_utf8(i8* %6)
  %call10 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call8, i8* %call9)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call11 = call zeroext i16 @get_short(%struct._IO_FILE* %7)
  store i16 %call11, i16* %width, align 2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call12 = call zeroext i16 @get_short(%struct._IO_FILE* %8)
  store i16 %call12, i16* %height, align 2
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call13 = call zeroext i16 @get_short(%struct._IO_FILE* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call14 = call zeroext i16 @get_short(%struct._IO_FILE* %10)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call15 = call zeroext i16 @get_short(%struct._IO_FILE* %11)
  store i16 %call15, i16* %depth, align 2
  %12 = load i16, i16* %depth, align 2
  %conv = zext i16 %12 to i32
  %cmp = icmp eq i32 %conv, 8
  br i1 %cmp, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end
  store i32 1, i32* %imgtype, align 4
  store i32 2, i32* %gdtype, align 4
  br label %if.end.25

if.else:                                          ; preds = %if.end
  %13 = load i16, i16* %depth, align 2
  %conv18 = zext i16 %13 to i32
  %cmp19 = icmp eq i32 %conv18, 24
  br i1 %cmp19, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %if.else
  store i32 0, i32* %imgtype, align 4
  store i32 0, i32* %gdtype, align 4
  br label %if.end.24

if.else.22:                                       ; preds = %if.else
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call23 = call i32 @fclose(%struct._IO_FILE* %14)
  store i32 -1, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.then.21
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.17
  %15 = load i16, i16* %width, align 2
  %conv26 = zext i16 %15 to i32
  %16 = load i16, i16* %height, align 2
  %conv27 = zext i16 %16 to i32
  %17 = load i32, i32* %imgtype, align 4
  %call28 = call i32 @gimp_image_new(i32 %conv26, i32 %conv27, i32 %17)
  store i32 %call28, i32* %image_ID, align 4
  %18 = load i32, i32* %image_ID, align 4
  %19 = load i8*, i8** %filename.addr, align 8
  %call29 = call i32 @gimp_image_set_filename(i32 %18, i8* %19)
  %20 = load i32, i32* %image_ID, align 4
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0)) #6
  %21 = load i16, i16* %width, align 2
  %conv31 = zext i16 %21 to i32
  %22 = load i16, i16* %height, align 2
  %conv32 = zext i16 %22 to i32
  %23 = load i32, i32* %gdtype, align 4
  %call33 = call i32 @gimp_layer_new(i32 %20, i8* %call30, i32 %conv31, i32 %conv32, i32 %23, double 1.000000e+02, i32 0)
  store i32 %call33, i32* %layer_ID, align 4
  %24 = load i32, i32* %image_ID, align 4
  %25 = load i32, i32* %layer_ID, align 4
  %call34 = call i32 @gimp_image_insert_layer(i32 %24, i32 %25, i32 -1, i32 0)
  %26 = load i32, i32* %layer_ID, align 4
  %call35 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %26)
  store %struct._GimpDrawable* %call35, %struct._GimpDrawable** %drawable, align 8
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width36 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %28, i32 0, i32 1
  %29 = load i32, i32* %width36, align 4
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height37 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %30, i32 0, i32 2
  %31 = load i32, i32* %height37, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %27, i32 0, i32 0, i32 %29, i32 %31, i32 1, i32 0)
  %call38 = call i32 @gimp_tile_height() #5
  store i32 %call38, i32* %tile_height, align 4
  %32 = load i16, i16* %depth, align 2
  %conv39 = zext i16 %32 to i32
  %cmp40 = icmp eq i32 %conv39, 24
  br i1 %cmp40, label %if.then.42, label %if.else.94

if.then.42:                                       ; preds = %if.end.25
  %call43 = call i32 @gimp_tile_height() #5
  store i32 %call43, i32* %tile_height, align 4
  %33 = load i16, i16* %width, align 2
  %conv44 = zext i16 %33 to i32
  %mul = mul nsw i32 3, %conv44
  %34 = load i32, i32* %tile_height, align 4
  %mul45 = mul nsw i32 %mul, %34
  %conv46 = sext i32 %mul45 to i64
  %call47 = call noalias i8* @g_malloc_n(i64 %conv46, i64 1)
  store i8* %call47, i8** %dest, align 8
  store i8* %call47, i8** %dest_base, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.end.88, %if.then.42
  %35 = load i32, i32* %i, align 4
  %36 = load i16, i16* %height, align 2
  %conv48 = zext i16 %36 to i32
  %cmp49 = icmp slt i32 %35, %conv48
  br i1 %cmp49, label %for.body, label %for.end.93

for.body:                                         ; preds = %for.cond
  %37 = load i8*, i8** %dest_base, align 8
  store i8* %37, i8** %dest, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.85, %for.body
  %38 = load i32, i32* %row, align 4
  %39 = load i32, i32* %tile_height, align 4
  %cmp52 = icmp slt i32 %38, %39
  br i1 %cmp52, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.51
  %40 = load i32, i32* %i, align 4
  %41 = load i16, i16* %height, align 2
  %conv54 = zext i16 %41 to i32
  %cmp55 = icmp slt i32 %40, %conv54
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.51
  %42 = phi i1 [ false, %for.cond.51 ], [ %cmp55, %land.rhs ]
  br i1 %42, label %for.body.57, label %for.end.88

for.body.57:                                      ; preds = %land.end
  store i32 0, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %for.body.57
  %43 = load i32, i32* %j, align 4
  %44 = load i16, i16* %width, align 2
  %conv58 = zext i16 %44 to i32
  %cmp59 = icmp slt i32 %43, %conv58
  br i1 %cmp59, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %record, i32 0, i32 0
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call61 = call i64 @fread(i8* %arraydecay, i64 1, i64 4, %struct._IO_FILE* %45)
  %conv62 = trunc i64 %call61 to i32
  store i32 %conv62, i32* %readlen, align 4
  %46 = load i32, i32* %readlen, align 4
  %cmp63 = icmp slt i32 %46, 4
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %while.body
  br label %while.end

if.end.66:                                        ; preds = %while.body
  store i8 0, i8* %count, align 1
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc, %if.end.66
  %47 = load i8, i8* %count, align 1
  %conv68 = zext i8 %47 to i32
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %record, i32 0, i64 0
  %48 = load i8, i8* %arrayidx, align 1
  %conv69 = zext i8 %48 to i32
  %cmp70 = icmp slt i32 %conv68, %conv69
  br i1 %cmp70, label %for.body.72, label %for.end

for.body.72:                                      ; preds = %for.cond.67
  %arrayidx73 = getelementptr inbounds [4 x i8], [4 x i8]* %record, i32 0, i64 3
  %49 = load i8, i8* %arrayidx73, align 1
  %50 = load i8*, i8** %dest, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %50, i64 0
  store i8 %49, i8* %arrayidx74, align 1
  %arrayidx75 = getelementptr inbounds [4 x i8], [4 x i8]* %record, i32 0, i64 2
  %51 = load i8, i8* %arrayidx75, align 1
  %52 = load i8*, i8** %dest, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %52, i64 1
  store i8 %51, i8* %arrayidx76, align 1
  %arrayidx77 = getelementptr inbounds [4 x i8], [4 x i8]* %record, i32 0, i64 1
  %53 = load i8, i8* %arrayidx77, align 1
  %54 = load i8*, i8** %dest, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %54, i64 2
  store i8 %53, i8* %arrayidx78, align 1
  %55 = load i8*, i8** %dest, align 8
  %add.ptr = getelementptr inbounds i8, i8* %55, i64 3
  store i8* %add.ptr, i8** %dest, align 8
  %56 = load i32, i32* %j, align 4
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %j, align 4
  %57 = load i32, i32* %j, align 4
  %58 = load i16, i16* %width, align 2
  %conv79 = zext i16 %58 to i32
  %cmp80 = icmp sge i32 %57, %conv79
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %for.body.72
  br label %for.end

if.end.83:                                        ; preds = %for.body.72
  br label %for.inc

for.inc:                                          ; preds = %if.end.83
  %59 = load i8, i8* %count, align 1
  %inc84 = add i8 %59, 1
  store i8 %inc84, i8* %count, align 1
  br label %for.cond.67

for.end:                                          ; preds = %if.then.82, %for.cond.67
  br label %while.cond

while.end:                                        ; preds = %if.then.65, %while.cond
  br label %for.inc.85

for.inc.85:                                       ; preds = %while.end
  %60 = load i32, i32* %i, align 4
  %inc86 = add nsw i32 %60, 1
  store i32 %inc86, i32* %i, align 4
  %61 = load i32, i32* %row, align 4
  %inc87 = add nsw i32 %61, 1
  store i32 %inc87, i32* %row, align 4
  br label %for.cond.51

for.end.88:                                       ; preds = %land.end
  %62 = load i8*, i8** %dest_base, align 8
  %63 = load i32, i32* %i, align 4
  %64 = load i32, i32* %row, align 4
  %sub = sub nsw i32 %63, %64
  %65 = load i16, i16* %width, align 2
  %conv89 = zext i16 %65 to i32
  %66 = load i32, i32* %row, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %62, i32 0, i32 %sub, i32 %conv89, i32 %66)
  %67 = load i32, i32* %i, align 4
  %conv90 = sitofp i32 %67 to double
  %68 = load i16, i16* %height, align 2
  %conv91 = uitofp i16 %68 to double
  %div = fdiv double %conv90, %conv91
  %call92 = call i32 @gimp_progress_update(double %div)
  br label %for.cond

for.end.93:                                       ; preds = %for.cond
  %69 = load i8*, i8** %dest_base, align 8
  call void @g_free(i8* %69)
  br label %if.end.160

if.else.94:                                       ; preds = %if.end.25
  %70 = load i16, i16* %width, align 2
  %conv97 = zext i16 %70 to i32
  %71 = load i32, i32* %tile_height, align 4
  %mul98 = mul nsw i32 %conv97, %71
  %conv99 = sext i32 %mul98 to i64
  %call100 = call noalias i8* @g_malloc_n(i64 %conv99, i64 1)
  store i8* %call100, i8** %dest, align 8
  store i8* %call100, i8** %dest_base, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.101

for.cond.101:                                     ; preds = %for.end.152, %if.else.94
  %72 = load i32, i32* %i, align 4
  %73 = load i16, i16* %height, align 2
  %conv102 = zext i16 %73 to i32
  %cmp103 = icmp slt i32 %72, %conv102
  br i1 %cmp103, label %for.body.105, label %for.end.159

for.body.105:                                     ; preds = %for.cond.101
  %74 = load i8*, i8** %dest_base, align 8
  store i8* %74, i8** %dest, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.inc.149, %for.body.105
  %75 = load i32, i32* %row, align 4
  %76 = load i32, i32* %tile_height, align 4
  %cmp107 = icmp slt i32 %75, %76
  br i1 %cmp107, label %land.rhs.109, label %land.end.113

land.rhs.109:                                     ; preds = %for.cond.106
  %77 = load i32, i32* %i, align 4
  %78 = load i16, i16* %height, align 2
  %conv110 = zext i16 %78 to i32
  %cmp111 = icmp slt i32 %77, %conv110
  br label %land.end.113

land.end.113:                                     ; preds = %land.rhs.109, %for.cond.106
  %79 = phi i1 [ false, %for.cond.106 ], [ %cmp111, %land.rhs.109 ]
  br i1 %79, label %for.body.114, label %for.end.152

for.body.114:                                     ; preds = %land.end.113
  store i32 0, i32* %j, align 4
  br label %while.cond.116

while.cond.116:                                   ; preds = %for.end.145, %for.body.114
  %80 = load i32, i32* %j, align 4
  %81 = load i16, i16* %width, align 2
  %conv117 = zext i16 %81 to i32
  %cmp118 = icmp slt i32 %80, %conv117
  br i1 %cmp118, label %while.body.120, label %while.end.146

while.body.120:                                   ; preds = %while.cond.116
  %arraydecay121 = getelementptr inbounds [2 x i8], [2 x i8]* %record95, i32 0, i32 0
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call122 = call i64 @fread(i8* %arraydecay121, i64 1, i64 2, %struct._IO_FILE* %82)
  %conv123 = trunc i64 %call122 to i32
  store i32 %conv123, i32* %readlen96, align 4
  %83 = load i32, i32* %readlen96, align 4
  %cmp124 = icmp slt i32 %83, 2
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %while.body.120
  br label %while.end.146

if.end.127:                                       ; preds = %while.body.120
  store i8 0, i8* %count115, align 1
  br label %for.cond.128

for.cond.128:                                     ; preds = %for.inc.143, %if.end.127
  %84 = load i8, i8* %count115, align 1
  %conv129 = zext i8 %84 to i32
  %arrayidx130 = getelementptr inbounds [2 x i8], [2 x i8]* %record95, i32 0, i64 0
  %85 = load i8, i8* %arrayidx130, align 1
  %conv131 = zext i8 %85 to i32
  %cmp132 = icmp slt i32 %conv129, %conv131
  br i1 %cmp132, label %for.body.134, label %for.end.145

for.body.134:                                     ; preds = %for.cond.128
  %arrayidx135 = getelementptr inbounds [2 x i8], [2 x i8]* %record95, i32 0, i64 1
  %86 = load i8, i8* %arrayidx135, align 1
  %87 = load i32, i32* %j, align 4
  %idxprom = sext i32 %87 to i64
  %88 = load i8*, i8** %dest, align 8
  %arrayidx136 = getelementptr inbounds i8, i8* %88, i64 %idxprom
  store i8 %86, i8* %arrayidx136, align 1
  %89 = load i32, i32* %j, align 4
  %inc137 = add nsw i32 %89, 1
  store i32 %inc137, i32* %j, align 4
  %90 = load i32, i32* %j, align 4
  %91 = load i16, i16* %width, align 2
  %conv138 = zext i16 %91 to i32
  %cmp139 = icmp sge i32 %90, %conv138
  br i1 %cmp139, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %for.body.134
  br label %for.end.145

if.end.142:                                       ; preds = %for.body.134
  br label %for.inc.143

for.inc.143:                                      ; preds = %if.end.142
  %92 = load i8, i8* %count115, align 1
  %inc144 = add i8 %92, 1
  store i8 %inc144, i8* %count115, align 1
  br label %for.cond.128

for.end.145:                                      ; preds = %if.then.141, %for.cond.128
  br label %while.cond.116

while.end.146:                                    ; preds = %if.then.126, %while.cond.116
  %93 = load i16, i16* %width, align 2
  %conv147 = zext i16 %93 to i32
  %94 = load i8*, i8** %dest, align 8
  %idx.ext = sext i32 %conv147 to i64
  %add.ptr148 = getelementptr inbounds i8, i8* %94, i64 %idx.ext
  store i8* %add.ptr148, i8** %dest, align 8
  br label %for.inc.149

for.inc.149:                                      ; preds = %while.end.146
  %95 = load i32, i32* %i, align 4
  %inc150 = add nsw i32 %95, 1
  store i32 %inc150, i32* %i, align 4
  %96 = load i32, i32* %row, align 4
  %inc151 = add nsw i32 %96, 1
  store i32 %inc151, i32* %row, align 4
  br label %for.cond.106

for.end.152:                                      ; preds = %land.end.113
  %97 = load i8*, i8** %dest_base, align 8
  %98 = load i32, i32* %i, align 4
  %99 = load i32, i32* %row, align 4
  %sub153 = sub nsw i32 %98, %99
  %100 = load i16, i16* %width, align 2
  %conv154 = zext i16 %100 to i32
  %101 = load i32, i32* %row, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %97, i32 0, i32 %sub153, i32 %conv154, i32 %101)
  %102 = load i32, i32* %i, align 4
  %conv155 = sitofp i32 %102 to double
  %103 = load i16, i16* %height, align 2
  %conv156 = uitofp i16 %103 to double
  %div157 = fdiv double %conv155, %conv156
  %call158 = call i32 @gimp_progress_update(double %div157)
  br label %for.cond.101

for.end.159:                                      ; preds = %for.cond.101
  %104 = load i8*, i8** %dest_base, align 8
  call void @g_free(i8* %104)
  br label %if.end.160

if.end.160:                                       ; preds = %for.end.159, %for.end.93
  %call161 = call i32 @gimp_progress_update(double 1.000000e+00)
  %105 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %105)
  %106 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %106)
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call162 = call i32 @fclose(%struct._IO_FILE* %107)
  %108 = load i32, i32* %image_ID, align 4
  store i32 %108, i32* %retval
  br label %return

return:                                           ; preds = %if.end.160, %if.else.22, %if.then
  %109 = load i32, i32* %retval
  ret i32 %109
}

declare void @gimp_ui_init(i8*, i32) #1

declare i32 @gimp_export_image(i32*, i32*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @save_image(i8* %filename, i32 %image_ID, i32 %drawable_ID, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %image_ID.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %depth = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %row = alloca i32, align 4
  %tile_height = alloca i32, align 4
  %writelen = alloca i32, align 4
  %rectHeight = alloca i32, align 4
  %savingColor = alloca i32, align 4
  %src = alloca i8*, align 8
  %src_base = alloca i8*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %record = alloca [4 x i8], align 1
  %record101 = alloca [2 x i8], align 1
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %savingColor, align 4
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call %struct._GimpDrawable* @gimp_drawable_get(i32 %0)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 1
  %3 = load i32, i32* %width, align 4
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 2
  %5 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %1, i32 0, i32 0, i32 %3, i32 %5, i32 0, i32 0)
  %6 = load i32, i32* %drawable_ID.addr, align 4
  %call1 = call i32 @gimp_drawable_is_rgb(i32 %6)
  store i32 %call1, i32* %savingColor, align 4
  %7 = load i32, i32* %drawable_ID.addr, align 4
  %call2 = call i32 @gimp_drawable_bpp(i32 %7)
  store i32 %call2, i32* %depth, align 4
  %8 = load i8*, i8** %filename.addr, align 8
  %call3 = call %struct._IO_FILE* @fopen(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0))
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %file, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %tobool = icmp ne %struct._IO_FILE* %9, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call i32 @g_file_error_quark()
  %call5 = call i32* @__errno_location() #5
  %11 = load i32, i32* %call5, align 4
  %call6 = call i32 @g_file_error_from_errno(i32 %11)
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.31, i32 0, i32 0)) #6
  %12 = load i8*, i8** %filename.addr, align 8
  %call8 = call i8* @gimp_filename_to_utf8(i8* %12)
  %call9 = call i32* @__errno_location() #5
  %13 = load i32, i32* %call9, align 4
  %call10 = call i8* @g_strerror(i32 %13) #5
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %10, i32 %call4, i32 %call6, i8* %call7, i8* %call8, i8* %call10)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0)) #6
  %14 = load i8*, i8** %filename.addr, align 8
  %call12 = call i8* @gimp_filename_to_utf8(i8* %14)
  %call13 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call11, i8* %call12)
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width14 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %15, i32 0, i32 1
  %16 = load i32, i32* %width14, align 4
  %conv = trunc i32 %16 to i16
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  call void @put_short(i16 zeroext %conv, %struct._IO_FILE* %17)
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height15 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %18, i32 0, i32 2
  %19 = load i32, i32* %height15, align 4
  %conv16 = trunc i32 %19 to i16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  call void @put_short(i16 zeroext %conv16, %struct._IO_FILE* %20)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  call void @put_short(i16 zeroext 0, %struct._IO_FILE* %21)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  call void @put_short(i16 zeroext 0, %struct._IO_FILE* %22)
  %call17 = call i32 @gimp_tile_height() #5
  store i32 %call17, i32* %tile_height, align 4
  %23 = load i32, i32* %tile_height, align 4
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width18 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %24, i32 0, i32 1
  %25 = load i32, i32* %width18, align 4
  %mul = mul i32 %23, %25
  %26 = load i32, i32* %depth, align 4
  %mul19 = mul i32 %mul, %26
  %conv20 = zext i32 %mul19 to i64
  %call21 = call noalias i8* @g_malloc_n(i64 %conv20, i64 1)
  store i8* %call21, i8** %src_base, align 8
  %27 = load i32, i32* %savingColor, align 4
  %tobool22 = icmp ne i32 %27, 0
  br i1 %tobool22, label %if.then.23, label %if.else.100

if.then.23:                                       ; preds = %if.end
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  call void @put_short(i16 zeroext 24, %struct._IO_FILE* %28)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.end.94, %if.then.23
  %29 = load i32, i32* %i, align 4
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height24 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %30, i32 0, i32 2
  %31 = load i32, i32* %height24, align 4
  %cmp = icmp ult i32 %29, %31
  br i1 %cmp, label %for.body, label %for.end.99

for.body:                                         ; preds = %for.cond
  %32 = load i32, i32* %tile_height, align 4
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height26 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %33, i32 0, i32 2
  %34 = load i32, i32* %height26, align 4
  %35 = load i32, i32* %i, align 4
  %sub = sub i32 %34, %35
  %cmp27 = icmp ult i32 %32, %sub
  br i1 %cmp27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %36 = load i32, i32* %tile_height, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %37 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height29 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %37, i32 0, i32 2
  %38 = load i32, i32* %height29, align 4
  %39 = load i32, i32* %i, align 4
  %sub30 = sub i32 %38, %39
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %36, %cond.true ], [ %sub30, %cond.false ]
  store i32 %cond, i32* %rectHeight, align 4
  %40 = load i8*, i8** %src_base, align 8
  %41 = load i32, i32* %i, align 4
  %42 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width31 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %42, i32 0, i32 1
  %43 = load i32, i32* %width31, align 4
  %44 = load i32, i32* %rectHeight, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %40, i32 0, i32 %41, i32 %43, i32 %44)
  %45 = load i8*, i8** %src_base, align 8
  store i8* %45, i8** %src, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.92, %cond.end
  %46 = load i32, i32* %row, align 4
  %47 = load i32, i32* %tile_height, align 4
  %cmp33 = icmp slt i32 %46, %47
  br i1 %cmp33, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.32
  %48 = load i32, i32* %i, align 4
  %49 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height35 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %49, i32 0, i32 2
  %50 = load i32, i32* %height35, align 4
  %cmp36 = icmp ult i32 %48, %50
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.32
  %51 = phi i1 [ false, %for.cond.32 ], [ %cmp36, %land.rhs ]
  br i1 %51, label %for.body.38, label %for.end.94

for.body.38:                                      ; preds = %land.end
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %record, i32 0, i64 0
  store i8 1, i8* %arrayidx, align 1
  %52 = load i8*, i8** %src, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %52, i64 0
  %53 = load i8, i8* %arrayidx39, align 1
  %arrayidx40 = getelementptr inbounds [4 x i8], [4 x i8]* %record, i32 0, i64 3
  store i8 %53, i8* %arrayidx40, align 1
  %54 = load i8*, i8** %src, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %54, i64 1
  %55 = load i8, i8* %arrayidx41, align 1
  %arrayidx42 = getelementptr inbounds [4 x i8], [4 x i8]* %record, i32 0, i64 2
  store i8 %55, i8* %arrayidx42, align 1
  %56 = load i8*, i8** %src, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %56, i64 2
  %57 = load i8, i8* %arrayidx43, align 1
  %arrayidx44 = getelementptr inbounds [4 x i8], [4 x i8]* %record, i32 0, i64 1
  store i8 %57, i8* %arrayidx44, align 1
  %58 = load i32, i32* %depth, align 4
  %59 = load i8*, i8** %src, align 8
  %idx.ext = sext i32 %58 to i64
  %add.ptr = getelementptr inbounds i8, i8* %59, i64 %idx.ext
  store i8* %add.ptr, i8** %src, align 8
  store i32 1, i32* %j, align 4
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc, %for.body.38
  %60 = load i32, i32* %j, align 4
  %61 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width46 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %61, i32 0, i32 1
  %62 = load i32, i32* %width46, align 4
  %cmp47 = icmp ult i32 %60, %62
  br i1 %cmp47, label %for.body.49, label %for.end

for.body.49:                                      ; preds = %for.cond.45
  %arrayidx50 = getelementptr inbounds [4 x i8], [4 x i8]* %record, i32 0, i64 3
  %63 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %63 to i32
  %64 = load i8*, i8** %src, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %64, i64 0
  %65 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %65 to i32
  %cmp54 = icmp ne i32 %conv51, %conv53
  br i1 %cmp54, label %if.then.74, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.49
  %arrayidx56 = getelementptr inbounds [4 x i8], [4 x i8]* %record, i32 0, i64 2
  %66 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %66 to i32
  %67 = load i8*, i8** %src, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %67, i64 1
  %68 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %68 to i32
  %cmp60 = icmp ne i32 %conv57, %conv59
  br i1 %cmp60, label %if.then.74, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %lor.lhs.false
  %arrayidx63 = getelementptr inbounds [4 x i8], [4 x i8]* %record, i32 0, i64 1
  %69 = load i8, i8* %arrayidx63, align 1
  %conv64 = zext i8 %69 to i32
  %70 = load i8*, i8** %src, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %70, i64 2
  %71 = load i8, i8* %arrayidx65, align 1
  %conv66 = zext i8 %71 to i32
  %cmp67 = icmp ne i32 %conv64, %conv66
  br i1 %cmp67, label %if.then.74, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %lor.lhs.false.62
  %arrayidx70 = getelementptr inbounds [4 x i8], [4 x i8]* %record, i32 0, i64 0
  %72 = load i8, i8* %arrayidx70, align 1
  %conv71 = zext i8 %72 to i32
  %cmp72 = icmp eq i32 %conv71, 255
  br i1 %cmp72, label %if.then.74, label %if.else

if.then.74:                                       ; preds = %lor.lhs.false.69, %lor.lhs.false.62, %lor.lhs.false, %for.body.49
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %record, i32 0, i32 0
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call75 = call i64 @fwrite(i8* %arraydecay, i64 1, i64 4, %struct._IO_FILE* %73)
  %conv76 = trunc i64 %call75 to i32
  store i32 %conv76, i32* %writelen, align 4
  %arrayidx77 = getelementptr inbounds [4 x i8], [4 x i8]* %record, i32 0, i64 0
  store i8 1, i8* %arrayidx77, align 1
  %74 = load i8*, i8** %src, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %74, i64 0
  %75 = load i8, i8* %arrayidx78, align 1
  %arrayidx79 = getelementptr inbounds [4 x i8], [4 x i8]* %record, i32 0, i64 3
  store i8 %75, i8* %arrayidx79, align 1
  %76 = load i8*, i8** %src, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %76, i64 1
  %77 = load i8, i8* %arrayidx80, align 1
  %arrayidx81 = getelementptr inbounds [4 x i8], [4 x i8]* %record, i32 0, i64 2
  store i8 %77, i8* %arrayidx81, align 1
  %78 = load i8*, i8** %src, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %78, i64 2
  %79 = load i8, i8* %arrayidx82, align 1
  %arrayidx83 = getelementptr inbounds [4 x i8], [4 x i8]* %record, i32 0, i64 1
  store i8 %79, i8* %arrayidx83, align 1
  br label %if.end.85

if.else:                                          ; preds = %lor.lhs.false.69
  %arrayidx84 = getelementptr inbounds [4 x i8], [4 x i8]* %record, i32 0, i64 0
  %80 = load i8, i8* %arrayidx84, align 1
  %inc = add i8 %80, 1
  store i8 %inc, i8* %arrayidx84, align 1
  br label %if.end.85

if.end.85:                                        ; preds = %if.else, %if.then.74
  %81 = load i32, i32* %depth, align 4
  %82 = load i8*, i8** %src, align 8
  %idx.ext86 = sext i32 %81 to i64
  %add.ptr87 = getelementptr inbounds i8, i8* %82, i64 %idx.ext86
  store i8* %add.ptr87, i8** %src, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.85
  %83 = load i32, i32* %j, align 4
  %inc88 = add nsw i32 %83, 1
  store i32 %inc88, i32* %j, align 4
  br label %for.cond.45

for.end:                                          ; preds = %for.cond.45
  %arraydecay89 = getelementptr inbounds [4 x i8], [4 x i8]* %record, i32 0, i32 0
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call90 = call i64 @fwrite(i8* %arraydecay89, i64 1, i64 4, %struct._IO_FILE* %84)
  %conv91 = trunc i64 %call90 to i32
  store i32 %conv91, i32* %writelen, align 4
  br label %for.inc.92

for.inc.92:                                       ; preds = %for.end
  %85 = load i32, i32* %i, align 4
  %add = add nsw i32 %85, 1
  store i32 %add, i32* %i, align 4
  %86 = load i32, i32* %row, align 4
  %add93 = add nsw i32 %86, 1
  store i32 %add93, i32* %row, align 4
  br label %for.cond.32

for.end.94:                                       ; preds = %land.end
  %87 = load i32, i32* %i, align 4
  %conv95 = sitofp i32 %87 to double
  %88 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height96 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %88, i32 0, i32 2
  %89 = load i32, i32* %height96, align 4
  %conv97 = uitofp i32 %89 to double
  %div = fdiv double %conv95, %conv97
  %call98 = call i32 @gimp_progress_update(double %div)
  br label %for.cond

for.end.99:                                       ; preds = %for.cond
  br label %if.end.177

if.else.100:                                      ; preds = %if.end
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  call void @put_short(i16 zeroext 8, %struct._IO_FILE* %90)
  store i32 0, i32* %i, align 4
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.end.170, %if.else.100
  %91 = load i32, i32* %i, align 4
  %92 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height103 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %92, i32 0, i32 2
  %93 = load i32, i32* %height103, align 4
  %cmp104 = icmp ult i32 %91, %93
  br i1 %cmp104, label %for.body.106, label %for.end.176

for.body.106:                                     ; preds = %for.cond.102
  %94 = load i32, i32* %tile_height, align 4
  %95 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height107 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %95, i32 0, i32 2
  %96 = load i32, i32* %height107, align 4
  %97 = load i32, i32* %i, align 4
  %sub108 = sub i32 %96, %97
  %cmp109 = icmp ult i32 %94, %sub108
  br i1 %cmp109, label %cond.true.111, label %cond.false.112

cond.true.111:                                    ; preds = %for.body.106
  %98 = load i32, i32* %tile_height, align 4
  br label %cond.end.115

cond.false.112:                                   ; preds = %for.body.106
  %99 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height113 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %99, i32 0, i32 2
  %100 = load i32, i32* %height113, align 4
  %101 = load i32, i32* %i, align 4
  %sub114 = sub i32 %100, %101
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.false.112, %cond.true.111
  %cond116 = phi i32 [ %98, %cond.true.111 ], [ %sub114, %cond.false.112 ]
  store i32 %cond116, i32* %rectHeight, align 4
  %102 = load i8*, i8** %src_base, align 8
  %103 = load i32, i32* %i, align 4
  %104 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width117 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %104, i32 0, i32 1
  %105 = load i32, i32* %width117, align 4
  %106 = load i32, i32* %rectHeight, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %102, i32 0, i32 %103, i32 %105, i32 %106)
  %107 = load i8*, i8** %src_base, align 8
  store i8* %107, i8** %src, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond.118

for.cond.118:                                     ; preds = %for.inc.167, %cond.end.115
  %108 = load i32, i32* %row, align 4
  %109 = load i32, i32* %tile_height, align 4
  %cmp119 = icmp slt i32 %108, %109
  br i1 %cmp119, label %land.rhs.121, label %land.end.125

land.rhs.121:                                     ; preds = %for.cond.118
  %110 = load i32, i32* %i, align 4
  %111 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height122 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %111, i32 0, i32 2
  %112 = load i32, i32* %height122, align 4
  %cmp123 = icmp ult i32 %110, %112
  br label %land.end.125

land.end.125:                                     ; preds = %land.rhs.121, %for.cond.118
  %113 = phi i1 [ false, %for.cond.118 ], [ %cmp123, %land.rhs.121 ]
  br i1 %113, label %for.body.126, label %for.end.170

for.body.126:                                     ; preds = %land.end.125
  %arrayidx127 = getelementptr inbounds [2 x i8], [2 x i8]* %record101, i32 0, i64 0
  store i8 1, i8* %arrayidx127, align 1
  %114 = load i8*, i8** %src, align 8
  %arrayidx128 = getelementptr inbounds i8, i8* %114, i64 0
  %115 = load i8, i8* %arrayidx128, align 1
  %arrayidx129 = getelementptr inbounds [2 x i8], [2 x i8]* %record101, i32 0, i64 1
  store i8 %115, i8* %arrayidx129, align 1
  %116 = load i32, i32* %depth, align 4
  %117 = load i8*, i8** %src, align 8
  %idx.ext130 = sext i32 %116 to i64
  %add.ptr131 = getelementptr inbounds i8, i8* %117, i64 %idx.ext130
  store i8* %add.ptr131, i8** %src, align 8
  store i32 1, i32* %j, align 4
  br label %for.cond.132

for.cond.132:                                     ; preds = %for.inc.161, %for.body.126
  %118 = load i32, i32* %j, align 4
  %119 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width133 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %119, i32 0, i32 1
  %120 = load i32, i32* %width133, align 4
  %cmp134 = icmp ult i32 %118, %120
  br i1 %cmp134, label %for.body.136, label %for.end.163

for.body.136:                                     ; preds = %for.cond.132
  %arrayidx137 = getelementptr inbounds [2 x i8], [2 x i8]* %record101, i32 0, i64 1
  %121 = load i8, i8* %arrayidx137, align 1
  %conv138 = zext i8 %121 to i32
  %122 = load i8*, i8** %src, align 8
  %arrayidx139 = getelementptr inbounds i8, i8* %122, i64 0
  %123 = load i8, i8* %arrayidx139, align 1
  %conv140 = zext i8 %123 to i32
  %cmp141 = icmp ne i32 %conv138, %conv140
  br i1 %cmp141, label %if.then.148, label %lor.lhs.false.143

lor.lhs.false.143:                                ; preds = %for.body.136
  %arrayidx144 = getelementptr inbounds [2 x i8], [2 x i8]* %record101, i32 0, i64 0
  %124 = load i8, i8* %arrayidx144, align 1
  %conv145 = zext i8 %124 to i32
  %cmp146 = icmp eq i32 %conv145, 255
  br i1 %cmp146, label %if.then.148, label %if.else.155

if.then.148:                                      ; preds = %lor.lhs.false.143, %for.body.136
  %arraydecay149 = getelementptr inbounds [2 x i8], [2 x i8]* %record101, i32 0, i32 0
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call150 = call i64 @fwrite(i8* %arraydecay149, i64 1, i64 2, %struct._IO_FILE* %125)
  %conv151 = trunc i64 %call150 to i32
  store i32 %conv151, i32* %writelen, align 4
  %arrayidx152 = getelementptr inbounds [2 x i8], [2 x i8]* %record101, i32 0, i64 0
  store i8 1, i8* %arrayidx152, align 1
  %126 = load i8*, i8** %src, align 8
  %arrayidx153 = getelementptr inbounds i8, i8* %126, i64 0
  %127 = load i8, i8* %arrayidx153, align 1
  %arrayidx154 = getelementptr inbounds [2 x i8], [2 x i8]* %record101, i32 0, i64 1
  store i8 %127, i8* %arrayidx154, align 1
  br label %if.end.158

if.else.155:                                      ; preds = %lor.lhs.false.143
  %arrayidx156 = getelementptr inbounds [2 x i8], [2 x i8]* %record101, i32 0, i64 0
  %128 = load i8, i8* %arrayidx156, align 1
  %inc157 = add i8 %128, 1
  store i8 %inc157, i8* %arrayidx156, align 1
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.155, %if.then.148
  %129 = load i32, i32* %depth, align 4
  %130 = load i8*, i8** %src, align 8
  %idx.ext159 = sext i32 %129 to i64
  %add.ptr160 = getelementptr inbounds i8, i8* %130, i64 %idx.ext159
  store i8* %add.ptr160, i8** %src, align 8
  br label %for.inc.161

for.inc.161:                                      ; preds = %if.end.158
  %131 = load i32, i32* %j, align 4
  %inc162 = add nsw i32 %131, 1
  store i32 %inc162, i32* %j, align 4
  br label %for.cond.132

for.end.163:                                      ; preds = %for.cond.132
  %arraydecay164 = getelementptr inbounds [2 x i8], [2 x i8]* %record101, i32 0, i32 0
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call165 = call i64 @fwrite(i8* %arraydecay164, i64 1, i64 2, %struct._IO_FILE* %132)
  %conv166 = trunc i64 %call165 to i32
  store i32 %conv166, i32* %writelen, align 4
  br label %for.inc.167

for.inc.167:                                      ; preds = %for.end.163
  %133 = load i32, i32* %i, align 4
  %add168 = add nsw i32 %133, 1
  store i32 %add168, i32* %i, align 4
  %134 = load i32, i32* %row, align 4
  %add169 = add nsw i32 %134, 1
  store i32 %add169, i32* %row, align 4
  br label %for.cond.118

for.end.170:                                      ; preds = %land.end.125
  %135 = load i32, i32* %i, align 4
  %conv171 = sitofp i32 %135 to double
  %136 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height172 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %136, i32 0, i32 2
  %137 = load i32, i32* %height172, align 4
  %conv173 = uitofp i32 %137 to double
  %div174 = fdiv double %conv171, %conv173
  %call175 = call i32 @gimp_progress_update(double %div174)
  br label %for.cond.102

for.end.176:                                      ; preds = %for.cond.102
  br label %if.end.177

if.end.177:                                       ; preds = %for.end.176, %for.end.99
  %call178 = call i32 @gimp_progress_update(double 1.000000e+00)
  %138 = load i8*, i8** %src_base, align 8
  call void @g_free(i8* %138)
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call179 = call i32 @fclose(%struct._IO_FILE* %139)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.177, %if.then
  %140 = load i32, i32* %retval
  ret i32 %140
}

declare i32 @gimp_image_delete(i32) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

declare i32 @g_file_error_quark() #1

declare i32 @g_file_error_from_errno(i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i8* @gimp_filename_to_utf8(i8*) #1

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #3

declare i32 @gimp_progress_init_printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal zeroext i16 @get_short(%struct._IO_FILE* %file) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %buf = alloca [2 x i8], align 1
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i32 0
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i64 @fread(i8* %arraydecay, i64 2, i64 1, %struct._IO_FILE* %0)
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shl = shl i32 %conv, 8
  %arrayidx1 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i64 1
  %2 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %2 to i32
  %add = add nsw i32 %shl, %conv2
  %conv3 = trunc i32 %add to i16
  ret i16 %conv3
}

declare i32 @fclose(%struct._IO_FILE*) #1

declare i32 @gimp_image_new(i32, i32, i32) #1

declare i32 @gimp_image_set_filename(i32, i8*) #1

declare i32 @gimp_layer_new(i32, i8*, i32, i32, i32, double, i32) #1

declare i32 @gimp_image_insert_layer(i32, i32, i32, i32) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_height() #3

declare noalias i8* @g_malloc_n(i64, i64) #1

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare i32 @gimp_progress_update(double) #1

declare void @g_free(i8*) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_is_rgb(i32) #1

declare i32 @gimp_drawable_bpp(i32) #1

; Function Attrs: nounwind uwtable
define internal void @put_short(i16 zeroext %value, %struct._IO_FILE* %file) #0 {
entry:
  %value.addr = alloca i16, align 2
  %file.addr = alloca %struct._IO_FILE*, align 8
  %buf = alloca [2 x i8], align 1
  store i16 %value, i16* %value.addr, align 2
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load i16, i16* %value.addr, align 2
  %conv = zext i16 %0 to i32
  %shr = ashr i32 %conv, 8
  %and = and i32 %shr, 255
  %conv1 = trunc i32 %and to i8
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i64 0
  store i8 %conv1, i8* %arrayidx, align 1
  %1 = load i16, i16* %value.addr, align 2
  %conv2 = zext i16 %1 to i32
  %and3 = and i32 %conv2, 255
  %conv4 = trunc i32 %and3 to i8
  %arrayidx5 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i64 1
  store i8 %conv4, i8* %arrayidx5, align 1
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i32 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i64 @fwrite(i8* %arraydecay, i64 2, i64 1, %struct._IO_FILE* %2)
  ret void
}

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

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
