; ModuleID = './plug-ins/common/file-pcx.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct.anon = type { i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, [48 x i8], i8, i8, i16, i16, [58 x i8] }
%struct.anon.0 = type { i64, i8* }
%struct._GError = type { i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

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
@query.save_args = internal constant [5 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0) }], align 16
@.str.8 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Drawable to save\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"The name of the file to save the image in\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"file-pcx-load\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"Loads files in Zsoft PCX file format\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"FIXME: write help for pcx_load\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"Francisco Bustamante & Nick Lamb\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"Nick Lamb <njl195@zepler.org.uk>\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"January 1997\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"ZSoft PCX image\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"image/x-pcx\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"pcx,pcc\00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"0&,byte,10,2&,byte,1,3&,byte,>0,3,byte,<9\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"file-pcx-save\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"Saves files in ZSoft PCX file format\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"FIXME: write help for pcx_save\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"INDEXED, RGB, GRAY\00", align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.27 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"file-pcx\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"PCX\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"Opening '%s'\00", align 1
@.str.34 = private unnamed_addr constant [32 x i8] c"Could not read header from '%s'\00", align 1
@pcx_header = internal global %struct.anon zeroinitializer, align 2
@.str.35 = private unnamed_addr constant [23 x i8] c"'%s' is not a PCX file\00", align 1
@.str.36 = private unnamed_addr constant [39 x i8] c"Unsupported or invalid image width: %d\00", align 1
@.str.37 = private unnamed_addr constant [40 x i8] c"Unsupported or invalid image height: %d\00", align 1
@.str.38 = private unnamed_addr constant [47 x i8] c"Invalid number of bytes per line in PCX header\00", align 1
@.str.39 = private unnamed_addr constant [49 x i8] c"Image dimensions too large: width %d x height %d\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"Background\00", align 1
@mono = internal constant [6 x i8] c"\00\00\00\FF\FF\FF", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"Unusual PCX flavour, giving up\00", align 1
@pcx_header_buf_xlate = internal constant [17 x %struct.anon.0] [%struct.anon.0 { i64 1, i8* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 0) }, %struct.anon.0 { i64 1, i8* getelementptr (i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 0), i64 1) }, %struct.anon.0 { i64 1, i8* getelementptr (i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 0), i64 2) }, %struct.anon.0 { i64 1, i8* getelementptr (i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 0), i64 3) }, %struct.anon.0 { i64 2, i8* getelementptr (i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 0), i64 4) }, %struct.anon.0 { i64 2, i8* getelementptr (i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 0), i64 6) }, %struct.anon.0 { i64 2, i8* getelementptr (i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 0), i64 8) }, %struct.anon.0 { i64 2, i8* getelementptr (i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 0), i64 10) }, %struct.anon.0 { i64 2, i8* getelementptr (i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 0), i64 12) }, %struct.anon.0 { i64 2, i8* getelementptr (i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 0), i64 14) }, %struct.anon.0 { i64 48, i8* getelementptr (i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 0), i64 16) }, %struct.anon.0 { i64 1, i8* getelementptr (i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 0), i64 64) }, %struct.anon.0 { i64 1, i8* getelementptr (i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 0), i64 65) }, %struct.anon.0 { i64 2, i8* getelementptr (i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 0), i64 66) }, %struct.anon.0 { i64 2, i8* getelementptr (i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 0), i64 68) }, %struct.anon.0 { i64 58, i8* getelementptr (i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 0), i64 70) }, %struct.anon.0 zeroinitializer], align 16
@readline.count = internal global i8 0, align 1
@readline.value = internal global i8 0, align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"Saving '%s'\00", align 1
@.str.43 = private unnamed_addr constant [39 x i8] c"Cannot save images with alpha channel.\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"Invalid X offset: %d\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"Invalid Y offset: %d\00", align 1
@.str.46 = private unnamed_addr constant [46 x i8] c"Right border out of bounds (must be < %d): %d\00", align 1
@.str.47 = private unnamed_addr constant [47 x i8] c"Bottom border out of bounds (must be < %d): %d\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.49 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1
@.str.50 = private unnamed_addr constant [32 x i8] c"Writing to file '%s' failed: %s\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0), i8* null, i32 1, i32 3, i32 1, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.load_args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @query.load_return_vals, i32 0, i32 0))
  %call = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0))
  %call1 = call i32 @gimp_register_magic_load_handler(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i32 0, i32 0))
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0), i32 1, i32 5, i32 0, %struct._GimpParamDef* getelementptr inbounds ([5 x %struct._GimpParamDef], [5 x %struct._GimpParamDef]* @query.save_args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call2 = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0))
  %call3 = call i32 @gimp_register_save_handler(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0))
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
  %call = call i8* @gimp_locale_directory() #6
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0)) #5
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
  br label %if.end.47

if.else.10:                                       ; preds = %do.end
  %10 = load i8*, i8** %name.addr, align 8
  %call11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0)) #7
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.else.45

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
  call void @gimp_ui_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i32 0)
  %call20 = call i32 @gimp_export_image(i32* %image_ID, i32* %drawable_ID, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i32 7)
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
  %17 = load i32, i32* %run_mode, align 4
  switch i32 %17, label %sw.default.30 [
    i32 0, label %sw.bb.24
    i32 1, label %sw.bb.25
    i32 2, label %sw.bb.29
  ]

sw.bb.24:                                         ; preds = %sw.epilog
  br label %sw.epilog.31

sw.bb.25:                                         ; preds = %sw.epilog
  %18 = load i32, i32* %nparams.addr, align 4
  %cmp26 = icmp ne i32 %18, 5
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %sw.bb.25
  store i32 1, i32* %status, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %sw.bb.25
  br label %sw.epilog.31

sw.bb.29:                                         ; preds = %sw.epilog
  br label %sw.epilog.31

sw.default.30:                                    ; preds = %sw.epilog
  br label %sw.epilog.31

sw.epilog.31:                                     ; preds = %sw.default.30, %sw.bb.29, %if.end.28, %sw.bb.24
  %19 = load i32, i32* %status, align 4
  %cmp32 = icmp eq i32 %19, 3
  br i1 %cmp32, label %if.then.33, label %if.end.40

if.then.33:                                       ; preds = %sw.epilog.31
  %20 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx34 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %20, i64 3
  %data35 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx34, i32 0, i32 1
  %d_string36 = bitcast %union._GimpParamData* %data35 to i8**
  %21 = load i8*, i8** %d_string36, align 8
  %22 = load i32, i32* %image_ID, align 4
  %23 = load i32, i32* %drawable_ID, align 4
  %call37 = call i32 @save_image(i8* %21, i32 %22, i32 %23, %struct._GError** %error)
  %tobool = icmp ne i32 %call37, 0
  br i1 %tobool, label %if.end.39, label %if.then.38

if.then.38:                                       ; preds = %if.then.33
  store i32 0, i32* %status, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.then.33
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %sw.epilog.31
  %24 = load i32, i32* %export, align 4
  %cmp41 = icmp eq i32 %24, 2
  br i1 %cmp41, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.end.40
  %25 = load i32, i32* %image_ID, align 4
  %call43 = call i32 @gimp_image_delete(i32 %25)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %if.end.40
  br label %if.end.46

if.else.45:                                       ; preds = %if.else.10
  store i32 1, i32* %status, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.45, %if.end.44
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end
  %26 = load i32, i32* %status, align 4
  %cmp48 = icmp ne i32 %26, 3
  br i1 %cmp48, label %land.lhs.true, label %if.end.51

land.lhs.true:                                    ; preds = %if.end.47
  %27 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool49 = icmp ne %struct._GError* %27, null
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %land.lhs.true
  %28 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %28, align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %29 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %29, i32 0, i32 2
  %30 = load i8*, i8** %message, align 8
  store i8* %30, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %land.lhs.true, %if.end.47
  %31 = load i32, i32* %status, align 4
  store i32 %31, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.51, %if.then.22
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

declare i32 @gimp_register_file_handler_mime(i8*, i8*) #1

declare i32 @gimp_register_magic_load_handler(i8*, i8*, i8*, i8*) #1

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
  %fd = alloca %struct._IO_FILE*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %offset_x = alloca i16, align 2
  %offset_y = alloca i16, align 2
  %bytesperline = alloca i16, align 2
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %image = alloca i32, align 4
  %layer = alloca i32, align 4
  %dest = alloca i8*, align 8
  %cmap = alloca [768 x i8], align 16
  %header_buf = alloca [128 x i8], align 16
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fd, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i32 @g_file_error_quark()
  %call2 = call i32* @__errno_location() #6
  %3 = load i32, i32* %call2, align 4
  %call3 = call i32 @g_file_error_from_errno(i32 %3)
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0)) #5
  %4 = load i8*, i8** %filename.addr, align 8
  %call5 = call i8* @gimp_filename_to_utf8(i8* %4)
  %call6 = call i32* @__errno_location() #6
  %5 = load i32, i32* %call6, align 4
  %call7 = call i8* @g_strerror(i32 %5) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %2, i32 %call1, i32 %call3, i8* %call4, i8* %call5, i8* %call7)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0)) #5
  %6 = load i8*, i8** %filename.addr, align 8
  %call9 = call i8* @gimp_filename_to_utf8(i8* %6)
  %call10 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call8, i8* %call9)
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %header_buf, i32 0, i32 0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call11 = call i64 @fread(i8* %arraydecay, i64 128, i64 1, %struct._IO_FILE* %7)
  %cmp = icmp eq i64 %call11, 0
  br i1 %cmp, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %if.end
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call13 = call i32 @g_file_error_quark()
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.34, i32 0, i32 0)) #5
  %9 = load i8*, i8** %filename.addr, align 8
  %call15 = call i8* @gimp_filename_to_utf8(i8* %9)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %8, i32 %call13, i32 24, i8* %call14, i8* %call15)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call16 = call i32 @fclose(%struct._IO_FILE* %10)
  store i32 -1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end
  %arraydecay18 = getelementptr inbounds [128 x i8], [128 x i8]* %header_buf, i32 0, i32 0
  call void @pcx_header_from_buffer(i8* %arraydecay18)
  %11 = load i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 0), align 1
  %conv = zext i8 %11 to i32
  %cmp19 = icmp ne i32 %conv, 10
  br i1 %cmp19, label %if.then.21, label %if.end.26

if.then.21:                                       ; preds = %if.end.17
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call22 = call i32 @g_file_error_quark()
  %call23 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i32 0, i32 0)) #5
  %13 = load i8*, i8** %filename.addr, align 8
  %call24 = call i8* @gimp_filename_to_utf8(i8* %13)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %12, i32 %call22, i32 24, i8* %call23, i8* %call24)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call25 = call i32 @fclose(%struct._IO_FILE* %14)
  store i32 -1, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.17
  %15 = load i16, i16* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 4), align 2
  store i16 %15, i16* %offset_x, align 2
  %16 = load i16, i16* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 5), align 2
  store i16 %16, i16* %offset_y, align 2
  %17 = load i16, i16* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 6), align 2
  %conv27 = zext i16 %17 to i32
  %18 = load i16, i16* %offset_x, align 2
  %conv28 = zext i16 %18 to i32
  %sub = sub nsw i32 %conv27, %conv28
  %add = add nsw i32 %sub, 1
  store i32 %add, i32* %width, align 4
  %19 = load i16, i16* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 7), align 2
  %conv29 = zext i16 %19 to i32
  %20 = load i16, i16* %offset_y, align 2
  %conv30 = zext i16 %20 to i32
  %sub31 = sub nsw i32 %conv29, %conv30
  %add32 = add nsw i32 %sub31, 1
  store i32 %add32, i32* %height, align 4
  %21 = load i16, i16* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 13), align 2
  store i16 %21, i16* %bytesperline, align 2
  %22 = load i32, i32* %width, align 4
  %cmp33 = icmp slt i32 %22, 0
  br i1 %cmp33, label %if.then.37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.26
  %23 = load i32, i32* %width, align 4
  %cmp35 = icmp sgt i32 %23, 262144
  br i1 %cmp35, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %lor.lhs.false, %if.end.26
  %call38 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.36, i32 0, i32 0)) #5
  %24 = load i32, i32* %width, align 4
  call void (i8*, ...) @g_message(i8* %call38, i32 %24)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call39 = call i32 @fclose(%struct._IO_FILE* %25)
  store i32 -1, i32* %retval
  br label %return

if.end.40:                                        ; preds = %lor.lhs.false
  %26 = load i32, i32* %height, align 4
  %cmp41 = icmp slt i32 %26, 0
  br i1 %cmp41, label %if.then.46, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %if.end.40
  %27 = load i32, i32* %height, align 4
  %cmp44 = icmp sgt i32 %27, 262144
  br i1 %cmp44, label %if.then.46, label %if.end.49

if.then.46:                                       ; preds = %lor.lhs.false.43, %if.end.40
  %call47 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i32 0, i32 0)) #5
  %28 = load i32, i32* %height, align 4
  call void (i8*, ...) @g_message(i8* %call47, i32 %28)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call48 = call i32 @fclose(%struct._IO_FILE* %29)
  store i32 -1, i32* %retval
  br label %return

if.end.49:                                        ; preds = %lor.lhs.false.43
  %30 = load i16, i16* %bytesperline, align 2
  %conv50 = zext i16 %30 to i32
  %31 = load i32, i32* %width, align 4
  %32 = load i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 3), align 1
  %conv51 = zext i8 %32 to i32
  %mul = mul nsw i32 %31, %conv51
  %div = sdiv i32 %mul, 8
  %cmp52 = icmp slt i32 %conv50, %div
  br i1 %cmp52, label %if.then.54, label %if.end.57

if.then.54:                                       ; preds = %if.end.49
  %call55 = call i8* @gettext(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.38, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call55)
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call56 = call i32 @fclose(%struct._IO_FILE* %33)
  store i32 -1, i32* %retval
  br label %return

if.end.57:                                        ; preds = %if.end.49
  %34 = load i32, i32* %width, align 4
  %conv58 = sext i32 %34 to i64
  %div59 = udiv i64 -1, %conv58
  %35 = load i32, i32* %height, align 4
  %conv60 = sext i32 %35 to i64
  %div61 = udiv i64 %div59, %conv60
  %cmp62 = icmp ult i64 %div61, 3
  br i1 %cmp62, label %if.then.64, label %if.end.67

if.then.64:                                       ; preds = %if.end.57
  %call65 = call i8* @gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.39, i32 0, i32 0)) #5
  %36 = load i32, i32* %width, align 4
  %37 = load i32, i32* %height, align 4
  call void (i8*, ...) @g_message(i8* %call65, i32 %36, i32 %37)
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call66 = call i32 @fclose(%struct._IO_FILE* %38)
  store i32 -1, i32* %retval
  br label %return

if.end.67:                                        ; preds = %if.end.57
  %39 = load i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 12), align 1
  %conv68 = zext i8 %39 to i32
  %cmp69 = icmp eq i32 %conv68, 3
  br i1 %cmp69, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.67
  %40 = load i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 3), align 1
  %conv71 = zext i8 %40 to i32
  %cmp72 = icmp eq i32 %conv71, 8
  br i1 %cmp72, label %if.then.74, label %if.else

if.then.74:                                       ; preds = %land.lhs.true
  %41 = load i32, i32* %width, align 4
  %42 = load i32, i32* %height, align 4
  %call75 = call i32 @gimp_image_new(i32 %41, i32 %42, i32 0)
  store i32 %call75, i32* %image, align 4
  %43 = load i32, i32* %image, align 4
  %call76 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0)) #5
  %44 = load i32, i32* %width, align 4
  %45 = load i32, i32* %height, align 4
  %call77 = call i32 @gimp_layer_new(i32 %43, i8* %call76, i32 %44, i32 %45, i32 0, double 1.000000e+02, i32 0)
  store i32 %call77, i32* %layer, align 4
  br label %if.end.81

if.else:                                          ; preds = %land.lhs.true, %if.end.67
  %46 = load i32, i32* %width, align 4
  %47 = load i32, i32* %height, align 4
  %call78 = call i32 @gimp_image_new(i32 %46, i32 %47, i32 2)
  store i32 %call78, i32* %image, align 4
  %48 = load i32, i32* %image, align 4
  %call79 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0)) #5
  %49 = load i32, i32* %width, align 4
  %50 = load i32, i32* %height, align 4
  %call80 = call i32 @gimp_layer_new(i32 %48, i8* %call79, i32 %49, i32 %50, i32 4, double 1.000000e+02, i32 0)
  store i32 %call80, i32* %layer, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.else, %if.then.74
  %51 = load i32, i32* %image, align 4
  %52 = load i8*, i8** %filename.addr, align 8
  %call82 = call i32 @gimp_image_set_filename(i32 %51, i8* %52)
  %53 = load i32, i32* %image, align 4
  %54 = load i32, i32* %layer, align 4
  %call83 = call i32 @gimp_image_insert_layer(i32 %53, i32 %54, i32 -1, i32 0)
  %55 = load i32, i32* %layer, align 4
  %56 = load i16, i16* %offset_x, align 2
  %conv84 = zext i16 %56 to i32
  %57 = load i16, i16* %offset_y, align 2
  %conv85 = zext i16 %57 to i32
  %call86 = call i32 @gimp_layer_set_offsets(i32 %55, i32 %conv84, i32 %conv85)
  %58 = load i32, i32* %layer, align 4
  %call87 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %58)
  store %struct._GimpDrawable* %call87, %struct._GimpDrawable** %drawable, align 8
  %59 = load i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 12), align 1
  %conv88 = zext i8 %59 to i32
  %cmp89 = icmp eq i32 %conv88, 1
  br i1 %cmp89, label %land.lhs.true.91, label %if.else.101

land.lhs.true.91:                                 ; preds = %if.end.81
  %60 = load i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 3), align 1
  %conv92 = zext i8 %60 to i32
  %cmp93 = icmp eq i32 %conv92, 1
  br i1 %cmp93, label %if.then.95, label %if.else.101

if.then.95:                                       ; preds = %land.lhs.true.91
  %61 = load i32, i32* %width, align 4
  %conv96 = sext i32 %61 to i64
  %62 = load i32, i32* %height, align 4
  %conv97 = sext i32 %62 to i64
  %mul98 = mul i64 %conv96, %conv97
  %call99 = call noalias i8* @g_malloc_n(i64 %mul98, i64 1)
  store i8* %call99, i8** %dest, align 8
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %64 = load i32, i32* %width, align 4
  %65 = load i32, i32* %height, align 4
  %66 = load i8*, i8** %dest, align 8
  %67 = load i16, i16* %bytesperline, align 2
  call void @load_1(%struct._IO_FILE* %63, i32 %64, i32 %65, i8* %66, i16 zeroext %67)
  %68 = load i32, i32* %image, align 4
  %call100 = call i32 @gimp_image_set_colormap(i32 %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @mono, i32 0, i32 0), i32 2)
  br label %if.end.153

if.else.101:                                      ; preds = %land.lhs.true.91, %if.end.81
  %69 = load i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 12), align 1
  %conv102 = zext i8 %69 to i32
  %cmp103 = icmp eq i32 %conv102, 4
  br i1 %cmp103, label %land.lhs.true.105, label %if.else.115

land.lhs.true.105:                                ; preds = %if.else.101
  %70 = load i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 3), align 1
  %conv106 = zext i8 %70 to i32
  %cmp107 = icmp eq i32 %conv106, 1
  br i1 %cmp107, label %if.then.109, label %if.else.115

if.then.109:                                      ; preds = %land.lhs.true.105
  %71 = load i32, i32* %width, align 4
  %conv110 = sext i32 %71 to i64
  %72 = load i32, i32* %height, align 4
  %conv111 = sext i32 %72 to i64
  %mul112 = mul i64 %conv110, %conv111
  %call113 = call noalias i8* @g_malloc_n(i64 %mul112, i64 1)
  store i8* %call113, i8** %dest, align 8
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %74 = load i32, i32* %width, align 4
  %75 = load i32, i32* %height, align 4
  %76 = load i8*, i8** %dest, align 8
  %77 = load i16, i16* %bytesperline, align 2
  call void @load_4(%struct._IO_FILE* %73, i32 %74, i32 %75, i8* %76, i16 zeroext %77)
  %78 = load i32, i32* %image, align 4
  %call114 = call i32 @gimp_image_set_colormap(i32 %78, i8* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 10, i32 0), i32 16)
  br label %if.end.152

if.else.115:                                      ; preds = %land.lhs.true.105, %if.else.101
  %79 = load i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 12), align 1
  %conv116 = zext i8 %79 to i32
  %cmp117 = icmp eq i32 %conv116, 1
  br i1 %cmp117, label %land.lhs.true.119, label %if.else.133

land.lhs.true.119:                                ; preds = %if.else.115
  %80 = load i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 3), align 1
  %conv120 = zext i8 %80 to i32
  %cmp121 = icmp eq i32 %conv120, 8
  br i1 %cmp121, label %if.then.123, label %if.else.133

if.then.123:                                      ; preds = %land.lhs.true.119
  %81 = load i32, i32* %width, align 4
  %conv124 = sext i32 %81 to i64
  %82 = load i32, i32* %height, align 4
  %conv125 = sext i32 %82 to i64
  %mul126 = mul i64 %conv124, %conv125
  %call127 = call noalias i8* @g_malloc_n(i64 %mul126, i64 1)
  store i8* %call127, i8** %dest, align 8
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %84 = load i32, i32* %width, align 4
  %85 = load i32, i32* %height, align 4
  %86 = load i8*, i8** %dest, align 8
  %87 = load i16, i16* %bytesperline, align 2
  call void @load_8(%struct._IO_FILE* %83, i32 %84, i32 %85, i8* %86, i16 zeroext %87)
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call128 = call i32 @fseek(%struct._IO_FILE* %88, i64 -768, i32 2)
  %arraydecay129 = getelementptr inbounds [768 x i8], [768 x i8]* %cmap, i32 0, i32 0
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call130 = call i64 @fread(i8* %arraydecay129, i64 768, i64 1, %struct._IO_FILE* %89)
  %90 = load i32, i32* %image, align 4
  %arraydecay131 = getelementptr inbounds [768 x i8], [768 x i8]* %cmap, i32 0, i32 0
  %call132 = call i32 @gimp_image_set_colormap(i32 %90, i8* %arraydecay131, i32 256)
  br label %if.end.151

if.else.133:                                      ; preds = %land.lhs.true.119, %if.else.115
  %91 = load i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 12), align 1
  %conv134 = zext i8 %91 to i32
  %cmp135 = icmp eq i32 %conv134, 3
  br i1 %cmp135, label %land.lhs.true.137, label %if.else.147

land.lhs.true.137:                                ; preds = %if.else.133
  %92 = load i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 3), align 1
  %conv138 = zext i8 %92 to i32
  %cmp139 = icmp eq i32 %conv138, 8
  br i1 %cmp139, label %if.then.141, label %if.else.147

if.then.141:                                      ; preds = %land.lhs.true.137
  %93 = load i32, i32* %width, align 4
  %conv142 = sext i32 %93 to i64
  %94 = load i32, i32* %height, align 4
  %conv143 = sext i32 %94 to i64
  %mul144 = mul i64 %conv142, %conv143
  %mul145 = mul i64 %mul144, 3
  %call146 = call noalias i8* @g_malloc_n(i64 %mul145, i64 1)
  store i8* %call146, i8** %dest, align 8
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %96 = load i32, i32* %width, align 4
  %97 = load i32, i32* %height, align 4
  %98 = load i8*, i8** %dest, align 8
  %99 = load i16, i16* %bytesperline, align 2
  call void @load_24(%struct._IO_FILE* %95, i32 %96, i32 %97, i8* %98, i16 zeroext %99)
  br label %if.end.150

if.else.147:                                      ; preds = %land.lhs.true.137, %if.else.133
  %call148 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.41, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call148)
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call149 = call i32 @fclose(%struct._IO_FILE* %100)
  store i32 -1, i32* %retval
  br label %return

if.end.150:                                       ; preds = %if.then.141
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %if.then.123
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151, %if.then.109
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %if.then.95
  %call154 = call i32 @gimp_progress_update(double 1.000000e+00)
  %101 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %102 = load i32, i32* %width, align 4
  %103 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %101, i32 0, i32 0, i32 %102, i32 %103, i32 1, i32 0)
  %104 = load i8*, i8** %dest, align 8
  %105 = load i32, i32* %width, align 4
  %106 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %104, i32 0, i32 0, i32 %105, i32 %106)
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call155 = call i32 @fclose(%struct._IO_FILE* %107)
  %108 = load i8*, i8** %dest, align 8
  call void @g_free(i8* %108)
  %109 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %109)
  %110 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %110)
  %111 = load i32, i32* %image, align 4
  store i32 %111, i32* %retval
  br label %return

return:                                           ; preds = %if.end.153, %if.else.147, %if.then.64, %if.then.54, %if.then.46, %if.then.37, %if.then.21, %if.then.12, %if.then
  %112 = load i32, i32* %retval
  ret i32 %112
}

declare void @gimp_ui_init(i8*, i32) #1

declare i32 @gimp_export_image(i32*, i32*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @save_image(i8* %filename, i32 %image, i32 %layer, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %image.addr = alloca i32, align 4
  %layer.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %drawable_type = alloca i32, align 4
  %cmap = alloca i8*, align 8
  %pixels = alloca i8*, align 8
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %colors = alloca i32, align 4
  %i = alloca i32, align 4
  %header_buf = alloca [128 x i8], align 16
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %image, i32* %image.addr, align 4
  store i32 %layer, i32* %layer.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i8* null, i8** %cmap, align 8
  %0 = load i32, i32* %layer.addr, align 4
  %call = call %struct._GimpDrawable* @gimp_drawable_get(i32 %0)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %1 = load i32, i32* %layer.addr, align 4
  %call1 = call i32 @gimp_drawable_type(i32 %1)
  store i32 %call1, i32* %drawable_type, align 4
  %2 = load i32, i32* %layer.addr, align 4
  %call2 = call i32 @gimp_drawable_offsets(i32 %2, i32* %offset_x, i32* %offset_y)
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width3 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 1
  %4 = load i32, i32* %width3, align 4
  store i32 %4, i32* %width, align 4
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height4 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 2
  %6 = load i32, i32* %height4, align 4
  store i32 %6, i32* %height, align 4
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %8 = load i32, i32* %width, align 4
  %9 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %7, i32 0, i32 0, i32 %8, i32 %9, i32 0, i32 0)
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0)) #5
  %10 = load i8*, i8** %filename.addr, align 8
  %call6 = call i8* @gimp_filename_to_utf8(i8* %10)
  %call7 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call5, i8* %call6)
  store i8 10, i8* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 0), align 1
  store i8 5, i8* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 1), align 1
  store i8 1, i8* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 2), align 1
  %11 = load i32, i32* %drawable_type, align 4
  switch i32 %11, label %sw.default [
    i32 4, label %sw.bb
    i32 0, label %sw.bb.9
    i32 2, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %entry
  %12 = load i32, i32* %image.addr, align 4
  %call8 = call i8* @gimp_image_get_colormap(i32 %12, i32* %colors)
  store i8* %call8, i8** %cmap, align 8
  store i8 8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 3), align 1
  %13 = load i32, i32* %width, align 4
  %conv = trunc i32 %13 to i16
  store i16 %conv, i16* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 13), align 2
  store i8 1, i8* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 12), align 1
  store i16 1, i16* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 14), align 2
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  store i8 8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 3), align 1
  store i8 3, i8* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 12), align 1
  store i16 1, i16* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 14), align 2
  %14 = load i32, i32* %width, align 4
  %conv10 = trunc i32 %14 to i16
  store i16 %conv10, i16* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 13), align 2
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  store i8 8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 3), align 1
  store i8 1, i8* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 12), align 1
  store i16 2, i16* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 14), align 2
  %15 = load i32, i32* %width, align 4
  %conv12 = trunc i32 %15 to i16
  store i16 %conv12, i16* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 13), align 2
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call13)
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.11, %sw.bb.9, %sw.bb
  %16 = load i32, i32* %width, align 4
  %17 = load i32, i32* %height, align 4
  %mul = mul i32 %16, %17
  %18 = load i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 12), align 1
  %conv14 = zext i8 %18 to i32
  %mul15 = mul i32 %mul, %conv14
  %conv16 = zext i32 %mul15 to i64
  %call17 = call noalias i8* @g_malloc(i64 %conv16)
  store i8* %call17, i8** %pixels, align 8
  %19 = load i8*, i8** %pixels, align 8
  %20 = load i32, i32* %width, align 4
  %21 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %19, i32 0, i32 0, i32 %20, i32 %21)
  %22 = load i32, i32* %offset_x, align 4
  %cmp = icmp slt i32 %22, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %23 = load i32, i32* %offset_x, align 4
  %cmp19 = icmp sgt i32 %23, 65536
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %sw.epilog
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.44, i32 0, i32 0)) #5
  %24 = load i32, i32* %offset_x, align 4
  call void (i8*, ...) @g_message(i8* %call21, i32 %24)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %25 = load i32, i32* %offset_y, align 4
  %cmp22 = icmp slt i32 %25, 0
  br i1 %cmp22, label %if.then.27, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %if.end
  %26 = load i32, i32* %offset_y, align 4
  %cmp25 = icmp sgt i32 %26, 65536
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %lor.lhs.false.24, %if.end
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.45, i32 0, i32 0)) #5
  %27 = load i32, i32* %offset_y, align 4
  call void (i8*, ...) @g_message(i8* %call28, i32 %27)
  store i32 0, i32* %retval
  br label %return

if.end.29:                                        ; preds = %lor.lhs.false.24
  %28 = load i32, i32* %offset_x, align 4
  %29 = load i32, i32* %width, align 4
  %add = add i32 %28, %29
  %sub = sub i32 %add, 1
  %cmp30 = icmp ugt i32 %sub, 65536
  br i1 %cmp30, label %if.then.32, label %if.end.36

if.then.32:                                       ; preds = %if.end.29
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.46, i32 0, i32 0)) #5
  %30 = load i32, i32* %offset_x, align 4
  %31 = load i32, i32* %width, align 4
  %add34 = add i32 %30, %31
  %sub35 = sub i32 %add34, 1
  call void (i8*, ...) @g_message(i8* %call33, i32 65536, i32 %sub35)
  store i32 0, i32* %retval
  br label %return

if.end.36:                                        ; preds = %if.end.29
  %32 = load i32, i32* %offset_y, align 4
  %33 = load i32, i32* %height, align 4
  %add37 = add i32 %32, %33
  %sub38 = sub i32 %add37, 1
  %cmp39 = icmp ugt i32 %sub38, 65536
  br i1 %cmp39, label %if.then.41, label %if.end.45

if.then.41:                                       ; preds = %if.end.36
  %call42 = call i8* @gettext(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.47, i32 0, i32 0)) #5
  %34 = load i32, i32* %offset_y, align 4
  %35 = load i32, i32* %height, align 4
  %add43 = add i32 %34, %35
  %sub44 = sub i32 %add43, 1
  call void (i8*, ...) @g_message(i8* %call42, i32 65536, i32 %sub44)
  store i32 0, i32* %retval
  br label %return

if.end.45:                                        ; preds = %if.end.36
  %36 = load i8*, i8** %filename.addr, align 8
  %call46 = call %struct._IO_FILE* @fopen(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i32 0, i32 0))
  store %struct._IO_FILE* %call46, %struct._IO_FILE** %fp, align 8
  %cmp47 = icmp eq %struct._IO_FILE* %call46, null
  br i1 %cmp47, label %if.then.49, label %if.end.57

if.then.49:                                       ; preds = %if.end.45
  %37 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call50 = call i32 @g_file_error_quark()
  %call51 = call i32* @__errno_location() #6
  %38 = load i32, i32* %call51, align 4
  %call52 = call i32 @g_file_error_from_errno(i32 %38)
  %call53 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.49, i32 0, i32 0)) #5
  %39 = load i8*, i8** %filename.addr, align 8
  %call54 = call i8* @gimp_filename_to_utf8(i8* %39)
  %call55 = call i32* @__errno_location() #6
  %40 = load i32, i32* %call55, align 4
  %call56 = call i8* @g_strerror(i32 %40) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %37, i32 %call50, i32 %call52, i8* %call53, i8* %call54, i8* %call56)
  store i32 0, i32* %retval
  br label %return

if.end.57:                                        ; preds = %if.end.45
  %41 = load i32, i32* %offset_x, align 4
  %conv58 = trunc i32 %41 to i16
  store i16 %conv58, i16* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 4), align 2
  %42 = load i32, i32* %offset_y, align 4
  %conv59 = trunc i32 %42 to i16
  store i16 %conv59, i16* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 5), align 2
  %43 = load i32, i32* %offset_x, align 4
  %44 = load i32, i32* %width, align 4
  %add60 = add i32 %43, %44
  %sub61 = sub i32 %add60, 1
  %conv62 = trunc i32 %sub61 to i16
  store i16 %conv62, i16* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 6), align 2
  %45 = load i32, i32* %offset_y, align 4
  %46 = load i32, i32* %height, align 4
  %add63 = add i32 %45, %46
  %sub64 = sub i32 %add63, 1
  %conv65 = trunc i32 %sub64 to i16
  store i16 %conv65, i16* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 7), align 2
  store i16 300, i16* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 8), align 2
  store i16 300, i16* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 9), align 2
  store i8 0, i8* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 11), align 1
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %header_buf, i32 0, i32 0
  call void @pcx_header_to_buffer(i8* %arraydecay)
  %arraydecay66 = getelementptr inbounds [128 x i8], [128 x i8]* %header_buf, i32 0, i32 0
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call67 = call i64 @fwrite(i8* %arraydecay66, i64 128, i64 1, %struct._IO_FILE* %47)
  %48 = load i32, i32* %drawable_type, align 4
  switch i32 %48, label %sw.default.96 [
    i32 4, label %sw.bb.68
    i32 0, label %sw.bb.77
    i32 2, label %sw.bb.78
  ]

sw.bb.68:                                         ; preds = %if.end.57
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %50 = load i32, i32* %width, align 4
  %51 = load i32, i32* %height, align 4
  %52 = load i8*, i8** %pixels, align 8
  call void @save_8(%struct._IO_FILE* %49, i32 %50, i32 %51, i8* %52)
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call69 = call i32 @fputc(i32 12, %struct._IO_FILE* %53)
  %54 = load i8*, i8** %cmap, align 8
  %55 = load i32, i32* %colors, align 4
  %conv70 = sext i32 %55 to i64
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call71 = call i64 @fwrite(i8* %54, i64 %conv70, i64 3, %struct._IO_FILE* %56)
  %57 = load i32, i32* %colors, align 4
  store i32 %57, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.68
  %58 = load i32, i32* %i, align 4
  %cmp72 = icmp slt i32 %58, 256
  br i1 %cmp72, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call74 = call i32 @fputc(i32 0, %struct._IO_FILE* %59)
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call75 = call i32 @fputc(i32 0, %struct._IO_FILE* %60)
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call76 = call i32 @fputc(i32 0, %struct._IO_FILE* %61)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %62 = load i32, i32* %i, align 4
  %inc = add nsw i32 %62, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog.97

sw.bb.77:                                         ; preds = %if.end.57
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %64 = load i32, i32* %width, align 4
  %65 = load i32, i32* %height, align 4
  %66 = load i8*, i8** %pixels, align 8
  call void @save_24(%struct._IO_FILE* %63, i32 %64, i32 %65, i8* %66)
  br label %sw.epilog.97

sw.bb.78:                                         ; preds = %if.end.57
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %68 = load i32, i32* %width, align 4
  %69 = load i32, i32* %height, align 4
  %70 = load i8*, i8** %pixels, align 8
  call void @save_8(%struct._IO_FILE* %67, i32 %68, i32 %69, i8* %70)
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call79 = call i32 @fputc(i32 12, %struct._IO_FILE* %71)
  store i32 0, i32* %i, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.93, %sw.bb.78
  %72 = load i32, i32* %i, align 4
  %cmp81 = icmp slt i32 %72, 256
  br i1 %cmp81, label %for.body.83, label %for.end.95

for.body.83:                                      ; preds = %for.cond.80
  %73 = load i32, i32* %i, align 4
  %conv84 = trunc i32 %73 to i8
  %conv85 = zext i8 %conv84 to i32
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call86 = call i32 @fputc(i32 %conv85, %struct._IO_FILE* %74)
  %75 = load i32, i32* %i, align 4
  %conv87 = trunc i32 %75 to i8
  %conv88 = zext i8 %conv87 to i32
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call89 = call i32 @fputc(i32 %conv88, %struct._IO_FILE* %76)
  %77 = load i32, i32* %i, align 4
  %conv90 = trunc i32 %77 to i8
  %conv91 = zext i8 %conv90 to i32
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call92 = call i32 @fputc(i32 %conv91, %struct._IO_FILE* %78)
  br label %for.inc.93

for.inc.93:                                       ; preds = %for.body.83
  %79 = load i32, i32* %i, align 4
  %inc94 = add nsw i32 %79, 1
  store i32 %inc94, i32* %i, align 4
  br label %for.cond.80

for.end.95:                                       ; preds = %for.cond.80
  br label %sw.epilog.97

sw.default.96:                                    ; preds = %if.end.57
  store i32 0, i32* %retval
  br label %return

sw.epilog.97:                                     ; preds = %for.end.95, %sw.bb.77, %for.end
  %80 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %80)
  %81 = load i8*, i8** %pixels, align 8
  call void @g_free(i8* %81)
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call98 = call i32 @fclose(%struct._IO_FILE* %82)
  %cmp99 = icmp ne i32 %call98, 0
  br i1 %cmp99, label %if.then.101, label %if.end.109

if.then.101:                                      ; preds = %sw.epilog.97
  %83 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call102 = call i32 @g_file_error_quark()
  %call103 = call i32* @__errno_location() #6
  %84 = load i32, i32* %call103, align 4
  %call104 = call i32 @g_file_error_from_errno(i32 %84)
  %call105 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.50, i32 0, i32 0)) #5
  %85 = load i8*, i8** %filename.addr, align 8
  %call106 = call i8* @gimp_filename_to_utf8(i8* %85)
  %call107 = call i32* @__errno_location() #6
  %86 = load i32, i32* %call107, align 4
  %call108 = call i8* @g_strerror(i32 %86) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %83, i32 %call102, i32 %call104, i8* %call105, i8* %call106, i8* %call108)
  store i32 0, i32* %retval
  br label %return

if.end.109:                                       ; preds = %sw.epilog.97
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.109, %if.then.101, %sw.default.96, %if.then.49, %if.then.41, %if.then.32, %if.then.27, %if.then, %sw.default
  %87 = load i32, i32* %retval
  ret i32 %87
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

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @pcx_header_from_buffer(i8* %buf) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %buf_offset = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 0, i32* %buf_offset, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [17 x %struct.anon.0], [17 x %struct.anon.0]* @pcx_header_buf_xlate, i32 0, i64 %idxprom
  %size = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx, i32 0, i32 0
  %1 = load i64, i64* %size, align 8
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [17 x %struct.anon.0], [17 x %struct.anon.0]* @pcx_header_buf_xlate, i32 0, i64 %idxprom1
  %address = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx2, i32 0, i32 1
  %3 = load i8*, i8** %address, align 8
  %4 = load i8*, i8** %buf.addr, align 8
  %5 = load i32, i32* %buf_offset, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  %6 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [17 x %struct.anon.0], [17 x %struct.anon.0]* @pcx_header_buf_xlate, i32 0, i64 %idxprom3
  %size5 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx4, i32 0, i32 0
  %7 = load i64, i64* %size5, align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %3, i8* %add.ptr, i64 %7, i32 1, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  %8 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [17 x %struct.anon.0], [17 x %struct.anon.0]* @pcx_header_buf_xlate, i32 0, i64 %idxprom6
  %size8 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx7, i32 0, i32 0
  %9 = load i64, i64* %size8, align 8
  %10 = load i32, i32* %buf_offset, align 4
  %conv = sext i32 %10 to i64
  %add = add i64 %conv, %9
  %conv9 = trunc i64 %add to i32
  store i32 %conv9, i32* %buf_offset, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

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

declare i32 @gimp_image_new(i32, i32, i32) #1

declare i32 @gimp_layer_new(i32, i8*, i32, i32, i32, double, i32) #1

declare i32 @gimp_image_set_filename(i32, i8*) #1

declare i32 @gimp_image_insert_layer(i32, i32, i32, i32) #1

declare i32 @gimp_layer_set_offsets(i32, i32, i32) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @load_1(%struct._IO_FILE* %fp, i32 %width, i32 %height, i8* %buffer, i16 zeroext %bytes) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %bytes.addr = alloca i16, align 2
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %line = alloca i8*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i16 %bytes, i16* %bytes.addr, align 2
  %0 = load i16, i16* %bytes.addr, align 2
  %conv = zext i16 %0 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call, i8** %line, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.16, %entry
  %1 = load i32, i32* %y, align 4
  %2 = load i32, i32* %height.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.18

for.body:                                         ; preds = %for.cond
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %4 = load i8*, i8** %line, align 8
  %5 = load i16, i16* %bytes.addr, align 2
  %conv2 = zext i16 %5 to i32
  call void @readline(%struct._IO_FILE* %3, i8* %4, i32 %conv2)
  store i32 0, i32* %x, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %x, align 4
  %7 = load i32, i32* %width.addr, align 4
  %cmp4 = icmp slt i32 %6, %7
  br i1 %cmp4, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.3
  %8 = load i32, i32* %x, align 4
  %div = sdiv i32 %8, 8
  %idxprom = sext i32 %div to i64
  %9 = load i8*, i8** %line, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv7 = zext i8 %10 to i32
  %11 = load i32, i32* %x, align 4
  %rem = srem i32 %11, 8
  %shr = ashr i32 128, %rem
  %and = and i32 %conv7, %shr
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.6
  %12 = load i32, i32* %x, align 4
  %idxprom8 = sext i32 %12 to i64
  %13 = load i8*, i8** %buffer.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %13, i64 %idxprom8
  store i8 1, i8* %arrayidx9, align 1
  br label %if.end

if.else:                                          ; preds = %for.body.6
  %14 = load i32, i32* %x, align 4
  %idxprom10 = sext i32 %14 to i64
  %15 = load i8*, i8** %buffer.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %15, i64 %idxprom10
  store i8 0, i8* %arrayidx11, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %x, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  %17 = load i32, i32* %y, align 4
  %conv12 = sitofp i32 %17 to double
  %18 = load i32, i32* %height.addr, align 4
  %conv13 = sitofp i32 %18 to double
  %div14 = fdiv double %conv12, %conv13
  %call15 = call i32 @gimp_progress_update(double %div14)
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.end
  %19 = load i32, i32* %width.addr, align 4
  %20 = load i8*, i8** %buffer.addr, align 8
  %idx.ext = sext i32 %19 to i64
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %idx.ext
  store i8* %add.ptr, i8** %buffer.addr, align 8
  %21 = load i32, i32* %y, align 4
  %inc17 = add nsw i32 %21, 1
  store i32 %inc17, i32* %y, align 4
  br label %for.cond

for.end.18:                                       ; preds = %for.cond
  %22 = load i8*, i8** %line, align 8
  call void @g_free(i8* %22)
  ret void
}

declare i32 @gimp_image_set_colormap(i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @load_4(%struct._IO_FILE* %fp, i32 %width, i32 %height, i8* %buffer, i16 zeroext %bytes) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %bytes.addr = alloca i16, align 2
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %c = alloca i32, align 4
  %line = alloca i8*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i16 %bytes, i16* %bytes.addr, align 2
  %0 = load i16, i16* %bytes.addr, align 2
  %conv = zext i16 %0 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call, i8** %line, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.32, %entry
  %1 = load i32, i32* %y, align 4
  %2 = load i32, i32* %height.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.34

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %x, align 4
  %4 = load i32, i32* %width.addr, align 4
  %cmp3 = icmp slt i32 %3, %4
  br i1 %cmp3, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.2
  %5 = load i32, i32* %x, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i8*, i8** %buffer.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %7 = load i32, i32* %x, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  store i32 0, i32* %c, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.25, %for.end
  %8 = load i32, i32* %c, align 4
  %cmp7 = icmp slt i32 %8, 4
  br i1 %cmp7, label %for.body.9, label %for.end.27

for.body.9:                                       ; preds = %for.cond.6
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %10 = load i8*, i8** %line, align 8
  %11 = load i16, i16* %bytes.addr, align 2
  %conv10 = zext i16 %11 to i32
  call void @readline(%struct._IO_FILE* %9, i8* %10, i32 %conv10)
  store i32 0, i32* %x, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.22, %for.body.9
  %12 = load i32, i32* %x, align 4
  %13 = load i32, i32* %width.addr, align 4
  %cmp12 = icmp slt i32 %12, %13
  br i1 %cmp12, label %for.body.14, label %for.end.24

for.body.14:                                      ; preds = %for.cond.11
  %14 = load i32, i32* %x, align 4
  %div = sdiv i32 %14, 8
  %idxprom15 = sext i32 %div to i64
  %15 = load i8*, i8** %line, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %15, i64 %idxprom15
  %16 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %16 to i32
  %17 = load i32, i32* %x, align 4
  %rem = srem i32 %17, 8
  %shr = ashr i32 128, %rem
  %and = and i32 %conv17, %shr
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.14
  %18 = load i32, i32* %c, align 4
  %shl = shl i32 1, %18
  %19 = load i32, i32* %x, align 4
  %idxprom18 = sext i32 %19 to i64
  %20 = load i8*, i8** %buffer.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %20, i64 %idxprom18
  %21 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %21 to i32
  %add = add nsw i32 %conv20, %shl
  %conv21 = trunc i32 %add to i8
  store i8 %conv21, i8* %arrayidx19, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.14
  br label %for.inc.22

for.inc.22:                                       ; preds = %if.end
  %22 = load i32, i32* %x, align 4
  %inc23 = add nsw i32 %22, 1
  store i32 %inc23, i32* %x, align 4
  br label %for.cond.11

for.end.24:                                       ; preds = %for.cond.11
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.end.24
  %23 = load i32, i32* %c, align 4
  %inc26 = add nsw i32 %23, 1
  store i32 %inc26, i32* %c, align 4
  br label %for.cond.6

for.end.27:                                       ; preds = %for.cond.6
  %24 = load i32, i32* %y, align 4
  %conv28 = sitofp i32 %24 to double
  %25 = load i32, i32* %height.addr, align 4
  %conv29 = sitofp i32 %25 to double
  %div30 = fdiv double %conv28, %conv29
  %call31 = call i32 @gimp_progress_update(double %div30)
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.end.27
  %26 = load i32, i32* %width.addr, align 4
  %27 = load i8*, i8** %buffer.addr, align 8
  %idx.ext = sext i32 %26 to i64
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 %idx.ext
  store i8* %add.ptr, i8** %buffer.addr, align 8
  %28 = load i32, i32* %y, align 4
  %inc33 = add nsw i32 %28, 1
  store i32 %inc33, i32* %y, align 4
  br label %for.cond

for.end.34:                                       ; preds = %for.cond
  %29 = load i8*, i8** %line, align 8
  call void @g_free(i8* %29)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @load_8(%struct._IO_FILE* %fp, i32 %width, i32 %height, i8* %buffer, i16 zeroext %bytes) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %bytes.addr = alloca i16, align 2
  %row = alloca i32, align 4
  %line = alloca i8*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i16 %bytes, i16* %bytes.addr, align 2
  %0 = load i16, i16* %bytes.addr, align 2
  %conv = zext i16 %0 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call, i8** %line, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %row, align 4
  %2 = load i32, i32* %height.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %4 = load i8*, i8** %line, align 8
  %5 = load i16, i16* %bytes.addr, align 2
  %conv2 = zext i16 %5 to i32
  call void @readline(%struct._IO_FILE* %3, i8* %4, i32 %conv2)
  %6 = load i8*, i8** %buffer.addr, align 8
  %7 = load i8*, i8** %line, align 8
  %8 = load i32, i32* %width.addr, align 4
  %conv3 = sext i32 %8 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 %conv3, i32 1, i1 false)
  %9 = load i32, i32* %row, align 4
  %conv4 = sitofp i32 %9 to double
  %10 = load i32, i32* %height.addr, align 4
  %conv5 = sitofp i32 %10 to double
  %div = fdiv double %conv4, %conv5
  %call6 = call i32 @gimp_progress_update(double %div)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %width.addr, align 4
  %12 = load i8*, i8** %buffer.addr, align 8
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %idx.ext
  store i8* %add.ptr, i8** %buffer.addr, align 8
  %13 = load i32, i32* %row, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %row, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i8*, i8** %line, align 8
  call void @g_free(i8* %14)
  ret void
}

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

; Function Attrs: nounwind uwtable
define internal void @load_24(%struct._IO_FILE* %fp, i32 %width, i32 %height, i8* %buffer, i16 zeroext %bytes) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %bytes.addr = alloca i16, align 2
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %c = alloca i32, align 4
  %line = alloca i8*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i16 %bytes, i16* %bytes.addr, align 2
  %0 = load i16, i16* %bytes.addr, align 2
  %conv = zext i16 %0 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call, i8** %line, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.19, %entry
  %1 = load i32, i32* %y, align 4
  %2 = load i32, i32* %height.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %c, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.13, %for.body
  %3 = load i32, i32* %c, align 4
  %cmp3 = icmp slt i32 %3, 3
  br i1 %cmp3, label %for.body.5, label %for.end.15

for.body.5:                                       ; preds = %for.cond.2
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %5 = load i8*, i8** %line, align 8
  %6 = load i16, i16* %bytes.addr, align 2
  %conv6 = zext i16 %6 to i32
  call void @readline(%struct._IO_FILE* %4, i8* %5, i32 %conv6)
  store i32 0, i32* %x, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body.5
  %7 = load i32, i32* %x, align 4
  %8 = load i32, i32* %width.addr, align 4
  %cmp8 = icmp slt i32 %7, %8
  br i1 %cmp8, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.7
  %9 = load i32, i32* %x, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i8*, i8** %line, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %12 = load i32, i32* %x, align 4
  %mul = mul nsw i32 %12, 3
  %13 = load i32, i32* %c, align 4
  %add = add nsw i32 %mul, %13
  %idxprom11 = sext i32 %add to i64
  %14 = load i8*, i8** %buffer.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %14, i64 %idxprom11
  store i8 %11, i8* %arrayidx12, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.10
  %15 = load i32, i32* %x, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.end
  %16 = load i32, i32* %c, align 4
  %inc14 = add nsw i32 %16, 1
  store i32 %inc14, i32* %c, align 4
  br label %for.cond.2

for.end.15:                                       ; preds = %for.cond.2
  %17 = load i32, i32* %y, align 4
  %conv16 = sitofp i32 %17 to double
  %18 = load i32, i32* %height.addr, align 4
  %conv17 = sitofp i32 %18 to double
  %div = fdiv double %conv16, %conv17
  %call18 = call i32 @gimp_progress_update(double %div)
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.end.15
  %19 = load i32, i32* %width.addr, align 4
  %mul20 = mul nsw i32 %19, 3
  %20 = load i8*, i8** %buffer.addr, align 8
  %idx.ext = sext i32 %mul20 to i64
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %idx.ext
  store i8* %add.ptr, i8** %buffer.addr, align 8
  %21 = load i32, i32* %y, align 4
  %inc21 = add nsw i32 %21, 1
  store i32 %inc21, i32* %y, align 4
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  %22 = load i8*, i8** %line, align 8
  call void @g_free(i8* %22)
  ret void
}

declare i32 @gimp_progress_update(double) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare void @g_free(i8*) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind uwtable
define internal void @readline(%struct._IO_FILE* %fp, i8* %buffer, i32 %bytes) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %buffer.addr = alloca i8*, align 8
  %bytes.addr = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %bytes, i32* %bytes.addr, align 4
  %0 = load i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @pcx_header, i32 0, i32 2), align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.else.15

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.13, %if.then
  %1 = load i32, i32* %bytes.addr, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %bytes.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8, i8* @readline.count, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then.3, label %if.end.13

if.then.3:                                        ; preds = %while.body
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @fgetc(%struct._IO_FILE* %3)
  %conv4 = trunc i32 %call to i8
  store i8 %conv4, i8* @readline.value, align 1
  %4 = load i8, i8* @readline.value, align 1
  %conv5 = zext i8 %4 to i32
  %cmp6 = icmp slt i32 %conv5, 192
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then.3
  store i8 1, i8* @readline.count, align 1
  br label %if.end

if.else:                                          ; preds = %if.then.3
  %5 = load i8, i8* @readline.value, align 1
  %conv9 = zext i8 %5 to i32
  %sub = sub nsw i32 %conv9, 192
  %conv10 = trunc i32 %sub to i8
  store i8 %conv10, i8* @readline.count, align 1
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call11 = call i32 @fgetc(%struct._IO_FILE* %6)
  %conv12 = trunc i32 %call11 to i8
  store i8 %conv12, i8* @readline.value, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %while.body
  %7 = load i8, i8* @readline.count, align 1
  %dec14 = add i8 %7, -1
  store i8 %dec14, i8* @readline.count, align 1
  %8 = load i8, i8* @readline.value, align 1
  %9 = load i8*, i8** %buffer.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %buffer.addr, align 8
  store i8 %8, i8* %9, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.18

if.else.15:                                       ; preds = %entry
  %10 = load i8*, i8** %buffer.addr, align 8
  %11 = load i32, i32* %bytes.addr, align 4
  %conv16 = sext i32 %11 to i64
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call17 = call i64 @fread(i8* %10, i64 %conv16, i64 1, %struct._IO_FILE* %12)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.15, %while.end
  ret void
}

declare i32 @fgetc(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare i32 @gimp_drawable_type(i32) #1

declare i32 @gimp_drawable_offsets(i32, i32*, i32*) #1

declare i8* @gimp_image_get_colormap(i32, i32*) #1

declare noalias i8* @g_malloc(i64) #1

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @pcx_header_to_buffer(i8* %buf) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %buf_offset = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 0, i32* %buf_offset, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [17 x %struct.anon.0], [17 x %struct.anon.0]* @pcx_header_buf_xlate, i32 0, i64 %idxprom
  %size = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx, i32 0, i32 0
  %1 = load i64, i64* %size, align 8
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %2 = load i8*, i8** %buf.addr, align 8
  %3 = load i32, i32* %buf_offset, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [17 x %struct.anon.0], [17 x %struct.anon.0]* @pcx_header_buf_xlate, i32 0, i64 %idxprom1
  %address = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx2, i32 0, i32 1
  %5 = load i8*, i8** %address, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [17 x %struct.anon.0], [17 x %struct.anon.0]* @pcx_header_buf_xlate, i32 0, i64 %idxprom3
  %size5 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx4, i32 0, i32 0
  %7 = load i64, i64* %size5, align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %add.ptr, i8* %5, i64 %7, i32 1, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  %8 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [17 x %struct.anon.0], [17 x %struct.anon.0]* @pcx_header_buf_xlate, i32 0, i64 %idxprom6
  %size8 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx7, i32 0, i32 0
  %9 = load i64, i64* %size8, align 8
  %10 = load i32, i32* %buf_offset, align 4
  %conv = sext i32 %10 to i64
  %add = add i64 %conv, %9
  %conv9 = trunc i64 %add to i32
  store i32 %conv9, i32* %buf_offset, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @save_8(%struct._IO_FILE* %fp, i32 %width, i32 %height, i8* %buffer) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %row = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %row, align 4
  %1 = load i32, i32* %height.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %3 = load i8*, i8** %buffer.addr, align 8
  %4 = load i32, i32* %width.addr, align 4
  call void @writeline(%struct._IO_FILE* %2, i8* %3, i32 %4)
  %5 = load i32, i32* %width.addr, align 4
  %6 = load i8*, i8** %buffer.addr, align 8
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  store i8* %add.ptr, i8** %buffer.addr, align 8
  %7 = load i32, i32* %row, align 4
  %conv = sitofp i32 %7 to double
  %8 = load i32, i32* %height.addr, align 4
  %conv1 = sitofp i32 %8 to double
  %div = fdiv double %conv, %conv1
  %call = call i32 @gimp_progress_update(double %div)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %row, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %row, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @fputc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @save_24(%struct._IO_FILE* %fp, i32 %width, i32 %height, i8* %buffer) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %c = alloca i32, align 4
  %line = alloca i8*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  %0 = load i32, i32* %width.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @g_malloc(i64 %conv)
  store i8* %call, i8** %line, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.19, %entry
  %1 = load i32, i32* %y, align 4
  %2 = load i32, i32* %height.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.21

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %c, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.12, %for.body
  %3 = load i32, i32* %c, align 4
  %cmp3 = icmp slt i32 %3, 3
  br i1 %cmp3, label %for.body.5, label %for.end.14

for.body.5:                                       ; preds = %for.cond.2
  store i32 0, i32* %x, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body.5
  %4 = load i32, i32* %x, align 4
  %5 = load i32, i32* %width.addr, align 4
  %cmp7 = icmp slt i32 %4, %5
  br i1 %cmp7, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.6
  %6 = load i32, i32* %x, align 4
  %mul = mul nsw i32 3, %6
  %7 = load i32, i32* %c, align 4
  %add = add nsw i32 %mul, %7
  %idxprom = sext i32 %add to i64
  %8 = load i8*, i8** %buffer.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %10 = load i32, i32* %x, align 4
  %idxprom10 = sext i32 %10 to i64
  %11 = load i8*, i8** %line, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %11, i64 %idxprom10
  store i8 %9, i8* %arrayidx11, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %12 = load i32, i32* %x, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %14 = load i8*, i8** %line, align 8
  %15 = load i32, i32* %width.addr, align 4
  call void @writeline(%struct._IO_FILE* %13, i8* %14, i32 %15)
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.end
  %16 = load i32, i32* %c, align 4
  %inc13 = add nsw i32 %16, 1
  store i32 %inc13, i32* %c, align 4
  br label %for.cond.2

for.end.14:                                       ; preds = %for.cond.2
  %17 = load i32, i32* %width.addr, align 4
  %mul15 = mul nsw i32 %17, 3
  %18 = load i8*, i8** %buffer.addr, align 8
  %idx.ext = sext i32 %mul15 to i64
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %idx.ext
  store i8* %add.ptr, i8** %buffer.addr, align 8
  %19 = load i32, i32* %y, align 4
  %conv16 = sitofp i32 %19 to double
  %20 = load i32, i32* %height.addr, align 4
  %conv17 = sitofp i32 %20 to double
  %div = fdiv double %conv16, %conv17
  %call18 = call i32 @gimp_progress_update(double %div)
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.end.14
  %21 = load i32, i32* %y, align 4
  %inc20 = add nsw i32 %21, 1
  store i32 %inc20, i32* %y, align 4
  br label %for.cond

for.end.21:                                       ; preds = %for.cond
  %22 = load i8*, i8** %line, align 8
  call void @g_free(i8* %22)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @writeline(%struct._IO_FILE* %fp, i8* %buffer, i32 %bytes) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %buffer.addr = alloca i8*, align 8
  %bytes.addr = alloca i32, align 4
  %finish = alloca i8*, align 8
  %value = alloca i8, align 1
  %count = alloca i8, align 1
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %bytes, i32* %bytes.addr, align 4
  %0 = load i8*, i8** %buffer.addr, align 8
  %1 = load i32, i32* %bytes.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  store i8* %add.ptr, i8** %finish, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i8*, i8** %buffer.addr, align 8
  %3 = load i8*, i8** %finish, align 8
  %cmp = icmp ult i8* %2, %3
  br i1 %cmp, label %while.body, label %while.end.23

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %buffer.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %buffer.addr, align 8
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %value, align 1
  store i8 1, i8* %count, align 1
  br label %while.cond.1

while.cond.1:                                     ; preds = %while.body.9, %while.body
  %6 = load i8*, i8** %buffer.addr, align 8
  %7 = load i8*, i8** %finish, align 8
  %cmp2 = icmp ult i8* %6, %7
  br i1 %cmp2, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond.1
  %8 = load i8, i8* %count, align 1
  %conv = zext i8 %8 to i32
  %cmp3 = icmp slt i32 %conv, 63
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %9 = load i8*, i8** %buffer.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv5 = zext i8 %10 to i32
  %11 = load i8, i8* %value, align 1
  %conv6 = zext i8 %11 to i32
  %cmp7 = icmp eq i32 %conv5, %conv6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond.1
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond.1 ], [ %cmp7, %land.rhs ]
  br i1 %12, label %while.body.9, label %while.end

while.body.9:                                     ; preds = %land.end
  %13 = load i8, i8* %count, align 1
  %inc = add i8 %13, 1
  store i8 %inc, i8* %count, align 1
  %14 = load i8*, i8** %buffer.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr10, i8** %buffer.addr, align 8
  br label %while.cond.1

while.end:                                        ; preds = %land.end
  %15 = load i8, i8* %value, align 1
  %conv11 = zext i8 %15 to i32
  %cmp12 = icmp slt i32 %conv11, 192
  br i1 %cmp12, label %land.lhs.true.14, label %if.else

land.lhs.true.14:                                 ; preds = %while.end
  %16 = load i8, i8* %count, align 1
  %conv15 = zext i8 %16 to i32
  %cmp16 = icmp eq i32 %conv15, 1
  br i1 %cmp16, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.14
  %17 = load i8, i8* %value, align 1
  %conv18 = zext i8 %17 to i32
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @fputc(i32 %conv18, %struct._IO_FILE* %18)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.14, %while.end
  %19 = load i8, i8* %count, align 1
  %conv19 = zext i8 %19 to i32
  %add = add nsw i32 192, %conv19
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call20 = call i32 @fputc(i32 %add, %struct._IO_FILE* %20)
  %21 = load i8, i8* %value, align 1
  %conv21 = zext i8 %21 to i32
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call22 = call i32 @fputc(i32 %conv21, %struct._IO_FILE* %22)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.end.23:                                     ; preds = %while.cond
  ret void
}

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
