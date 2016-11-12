; ModuleID = './plug-ins/file-compressor/file-compressor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._Compressor = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 (i8*, i8*)*, i8*, i8*, i8*, i32 (i8*, i8*)* }
%struct._GError = type { i32, i32, i8* }
%struct.gzFile_s = type { i32, i8*, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GFile = type opaque
%struct._GFileInfo = type opaque
%struct._GCancellable = type { %struct._GObject, %struct._GCancellablePrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GCancellablePrivate = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

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
@compressors = internal constant [2 x %struct._Compressor] [%struct._Compressor { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.25, i32 0, i32 0), i32 (i8*, i8*)* @gzip_load, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.28, i32 0, i32 0), i32 (i8*, i8*)* @gzip_save }, %struct._Compressor { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.37, i32 0, i32 0), i32 (i8*, i8*)* @bzip2_load, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.40, i32 0, i32 0), i32 (i8*, i8*)* @bzip2_save }], align 16
@.str.12 = private unnamed_addr constant [16 x i8] c"Daniel Risacher\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"Daniel Risacher, Spencer Kimball and Peter Mattis\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"1995-1997\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"RGB*, GRAY*, INDEXED*\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"gzip archive\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"application/x-gzip\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"xcf.gz,xcfgz\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"0,string,\1F\8B\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c".xcfgz\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c".gz\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"file-gz-load\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"loads files compressed with gzip\00", align 1
@.str.25 = private unnamed_addr constant [58 x i8] c"This procedure loads files in the gzip compressed format.\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"file-gz-save\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"saves files compressed with gzip\00", align 1
@.str.28 = private unnamed_addr constant [58 x i8] c"This procedure saves files in the gzip compressed format.\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"bzip archive\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"application/x-bzip\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"xcf.bz2,xcfbz2\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"0,string,BZh\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c".xcfbz2\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c".bz2\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"file-bz2-load\00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"loads files compressed with bzip2\00", align 1
@.str.37 = private unnamed_addr constant [59 x i8] c"This procedure loads files in the bzip2 compressed format.\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"file-bz2-save\00", align 1
@.str.39 = private unnamed_addr constant [34 x i8] c"saves files compressed with bzip2\00", align 1
@.str.40 = private unnamed_addr constant [59 x i8] c"This procedure saves files in the bzip2 compressed format.\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"standard::size\00", align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.44 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.46 = private unnamed_addr constant [64 x i8] c"No sensible file extension, attempting to load with file magic.\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c".foo\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c".xcf\00", align 1
@.str.50 = private unnamed_addr constant [54 x i8] c"No sensible file extension, saving as compressed XCF.\00", align 1
@.str.51 = private unnamed_addr constant [17 x i8] c"Compressing '%s'\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  %i = alloca i32, align 4
  %compressor = alloca %struct._Compressor*, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [2 x %struct._Compressor], [2 x %struct._Compressor]* @compressors, i32 0, i64 %idxprom
  store %struct._Compressor* %arrayidx, %struct._Compressor** %compressor, align 8
  %2 = load %struct._Compressor*, %struct._Compressor** %compressor, align 8
  %load_proc = getelementptr inbounds %struct._Compressor, %struct._Compressor* %2, i32 0, i32 6
  %3 = load i8*, i8** %load_proc, align 8
  %4 = load %struct._Compressor*, %struct._Compressor** %compressor, align 8
  %load_blurb = getelementptr inbounds %struct._Compressor, %struct._Compressor* %4, i32 0, i32 7
  %5 = load i8*, i8** %load_blurb, align 8
  %6 = load %struct._Compressor*, %struct._Compressor** %compressor, align 8
  %load_help = getelementptr inbounds %struct._Compressor, %struct._Compressor* %6, i32 0, i32 8
  %7 = load i8*, i8** %load_help, align 8
  %8 = load %struct._Compressor*, %struct._Compressor** %compressor, align 8
  %file_type = getelementptr inbounds %struct._Compressor, %struct._Compressor* %8, i32 0, i32 0
  %9 = load i8*, i8** %file_type, align 8
  call void @gimp_install_procedure(i8* %3, i8* %5, i8* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* %9, i8* null, i32 1, i32 3, i32 1, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.load_args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @query.load_return_vals, i32 0, i32 0))
  %10 = load %struct._Compressor*, %struct._Compressor** %compressor, align 8
  %load_proc2 = getelementptr inbounds %struct._Compressor, %struct._Compressor* %10, i32 0, i32 6
  %11 = load i8*, i8** %load_proc2, align 8
  %12 = load %struct._Compressor*, %struct._Compressor** %compressor, align 8
  %mime_type = getelementptr inbounds %struct._Compressor, %struct._Compressor* %12, i32 0, i32 1
  %13 = load i8*, i8** %mime_type, align 8
  %call = call i32 @gimp_register_file_handler_mime(i8* %11, i8* %13)
  %14 = load %struct._Compressor*, %struct._Compressor** %compressor, align 8
  %load_proc3 = getelementptr inbounds %struct._Compressor, %struct._Compressor* %14, i32 0, i32 6
  %15 = load i8*, i8** %load_proc3, align 8
  %16 = load %struct._Compressor*, %struct._Compressor** %compressor, align 8
  %extensions = getelementptr inbounds %struct._Compressor, %struct._Compressor* %16, i32 0, i32 2
  %17 = load i8*, i8** %extensions, align 8
  %18 = load %struct._Compressor*, %struct._Compressor** %compressor, align 8
  %magic = getelementptr inbounds %struct._Compressor, %struct._Compressor* %18, i32 0, i32 3
  %19 = load i8*, i8** %magic, align 8
  %call4 = call i32 @gimp_register_magic_load_handler(i8* %15, i8* %17, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i8* %19)
  %20 = load %struct._Compressor*, %struct._Compressor** %compressor, align 8
  %save_proc = getelementptr inbounds %struct._Compressor, %struct._Compressor* %20, i32 0, i32 10
  %21 = load i8*, i8** %save_proc, align 8
  %22 = load %struct._Compressor*, %struct._Compressor** %compressor, align 8
  %save_blurb = getelementptr inbounds %struct._Compressor, %struct._Compressor* %22, i32 0, i32 11
  %23 = load i8*, i8** %save_blurb, align 8
  %24 = load %struct._Compressor*, %struct._Compressor** %compressor, align 8
  %save_help = getelementptr inbounds %struct._Compressor, %struct._Compressor* %24, i32 0, i32 12
  %25 = load i8*, i8** %save_help, align 8
  %26 = load %struct._Compressor*, %struct._Compressor** %compressor, align 8
  %file_type5 = getelementptr inbounds %struct._Compressor, %struct._Compressor* %26, i32 0, i32 0
  %27 = load i8*, i8** %file_type5, align 8
  call void @gimp_install_procedure(i8* %21, i8* %23, i8* %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i32 1, i32 5, i32 0, %struct._GimpParamDef* getelementptr inbounds ([5 x %struct._GimpParamDef], [5 x %struct._GimpParamDef]* @query.save_args, i32 0, i32 0), %struct._GimpParamDef* null)
  %28 = load %struct._Compressor*, %struct._Compressor** %compressor, align 8
  %save_proc6 = getelementptr inbounds %struct._Compressor, %struct._Compressor* %28, i32 0, i32 10
  %29 = load i8*, i8** %save_proc6, align 8
  %30 = load %struct._Compressor*, %struct._Compressor** %compressor, align 8
  %mime_type7 = getelementptr inbounds %struct._Compressor, %struct._Compressor* %30, i32 0, i32 1
  %31 = load i8*, i8** %mime_type7, align 8
  %call8 = call i32 @gimp_register_file_handler_mime(i8* %29, i8* %31)
  %32 = load %struct._Compressor*, %struct._Compressor** %compressor, align 8
  %save_proc9 = getelementptr inbounds %struct._Compressor, %struct._Compressor* %32, i32 0, i32 10
  %33 = load i8*, i8** %save_proc9, align 8
  %34 = load %struct._Compressor*, %struct._Compressor** %compressor, align 8
  %extensions10 = getelementptr inbounds %struct._Compressor, %struct._Compressor* %34, i32 0, i32 2
  %35 = load i8*, i8** %extensions10, align 8
  %call11 = call i32 @gimp_register_save_handler(i8* %33, i8* %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %i, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
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
  %error = alloca %struct._GError*, align 8
  %image_ID = alloca i32, align 4
  %i = alloca i32, align 4
  %compressor = alloca %struct._Compressor*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
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
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  store i32 21, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  store i32 0, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %call4 = call i32 @gimp_plugin_set_pdb_error_handler(i32 1)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %4 = load i32, i32* %i, align 4
  %conv = sext i32 %4 to i64
  %cmp = icmp ult i64 %conv, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [2 x %struct._Compressor], [2 x %struct._Compressor]* @compressors, i32 0, i64 %idxprom
  store %struct._Compressor* %arrayidx6, %struct._Compressor** %compressor, align 8
  %6 = load i8*, i8** %name.addr, align 8
  %7 = load %struct._Compressor*, %struct._Compressor** %compressor, align 8
  %load_proc = getelementptr inbounds %struct._Compressor, %struct._Compressor* %7, i32 0, i32 6
  %8 = load i8*, i8** %load_proc, align 8
  %call7 = call i32 @strcmp(i8* %6, i8* %8) #7
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %9 = load %struct._Compressor*, %struct._Compressor** %compressor, align 8
  %10 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx8 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %10, i64 1
  %data9 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx8, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data9 to i8**
  %11 = load i8*, i8** %d_string, align 8
  %12 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %12, i64 0
  %data11 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx10, i32 0, i32 1
  %d_int3212 = bitcast %union._GimpParamData* %data11 to i32*
  %13 = load i32, i32* %d_int3212, align 4
  %call13 = call i32 @load_image(%struct._Compressor* %9, i8* %11, i32 %13, i32* %status, %struct._GError** %error)
  store i32 %call13, i32* %image_ID, align 4
  %14 = load i32, i32* %image_ID, align 4
  %cmp14 = icmp ne i32 %14, -1
  br i1 %cmp14, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %15 = load i32, i32* %status, align 4
  %cmp16 = icmp eq i32 %15, 3
  br i1 %cmp16, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %land.lhs.true
  %16 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %16, align 4
  store i32 13, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %17 = load i32, i32* %image_ID, align 4
  store i32 %17, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i32*), align 4
  br label %if.end

if.end:                                           ; preds = %if.then.18, %land.lhs.true, %if.then
  br label %for.end

if.else:                                          ; preds = %for.body
  %18 = load i8*, i8** %name.addr, align 8
  %19 = load %struct._Compressor*, %struct._Compressor** %compressor, align 8
  %save_proc = getelementptr inbounds %struct._Compressor, %struct._Compressor* %19, i32 0, i32 10
  %20 = load i8*, i8** %save_proc, align 8
  %call19 = call i32 @strcmp(i8* %18, i8* %20) #7
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end.45, label %if.then.21

if.then.21:                                       ; preds = %if.else
  %21 = load i32, i32* %run_mode, align 4
  switch i32 %21, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.22
    i32 2, label %sw.bb.27
  ]

sw.bb:                                            ; preds = %if.then.21
  br label %sw.epilog

sw.bb.22:                                         ; preds = %if.then.21
  %22 = load i32, i32* %nparams.addr, align 4
  %cmp23 = icmp ne i32 %22, 5
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %sw.bb.22
  store i32 1, i32* %status, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %sw.bb.22
  br label %sw.epilog

sw.bb.27:                                         ; preds = %if.then.21
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.21
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.27, %if.end.26, %sw.bb
  %23 = load i32, i32* %status, align 4
  %cmp28 = icmp eq i32 %23, 3
  br i1 %cmp28, label %if.then.30, label %if.end.44

if.then.30:                                       ; preds = %sw.epilog
  %24 = load %struct._Compressor*, %struct._Compressor** %compressor, align 8
  %25 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx31 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %25, i64 3
  %data32 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx31, i32 0, i32 1
  %d_string33 = bitcast %union._GimpParamData* %data32 to i8**
  %26 = load i8*, i8** %d_string33, align 8
  %27 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx34 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %27, i64 1
  %data35 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx34, i32 0, i32 1
  %d_int3236 = bitcast %union._GimpParamData* %data35 to i32*
  %28 = load i32, i32* %d_int3236, align 4
  %29 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx37 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %29, i64 2
  %data38 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx37, i32 0, i32 1
  %d_int3239 = bitcast %union._GimpParamData* %data38 to i32*
  %30 = load i32, i32* %d_int3239, align 4
  %31 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx40 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %31, i64 0
  %data41 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx40, i32 0, i32 1
  %d_int3242 = bitcast %union._GimpParamData* %data41 to i32*
  %32 = load i32, i32* %d_int3242, align 4
  %call43 = call i32 @save_image(%struct._Compressor* %24, i8* %26, i32 %28, i32 %30, i32 %32, %struct._GError** %error)
  store i32 %call43, i32* %status, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.30, %sw.epilog
  br label %for.end

if.end.45:                                        ; preds = %if.else
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45
  br label %for.inc

for.inc:                                          ; preds = %if.end.46
  %33 = load i32, i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.end.44, %if.end, %for.cond
  %34 = load i32, i32* %i, align 4
  %conv47 = sext i32 %34 to i64
  %cmp48 = icmp eq i64 %conv47, 2
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %for.end
  store i32 1, i32* %status, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %for.end
  %35 = load i32, i32* %status, align 4
  %cmp52 = icmp ne i32 %35, 3
  br i1 %cmp52, label %land.lhs.true.54, label %if.end.57

land.lhs.true.54:                                 ; preds = %if.end.51
  %36 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool55 = icmp ne %struct._GError* %36, null
  br i1 %tobool55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %land.lhs.true.54
  %37 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %37, align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %38 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %38, i32 0, i32 2
  %39 = load i8*, i8** %message, align 8
  store i8* %39, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %land.lhs.true.54, %if.end.51
  %40 = load i32, i32* %status, align 4
  store i32 %40, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
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

; Function Attrs: nounwind uwtable
define internal i32 @gzip_load(i8* %infile, i8* %outfile) #0 {
entry:
  %infile.addr = alloca i8*, align 8
  %outfile.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %fd = alloca i32, align 4
  %in = alloca %struct.gzFile_s*, align 8
  %out = alloca %struct._IO_FILE*, align 8
  %buf = alloca [16384 x i8], align 16
  %len = alloca i32, align 4
  store i8* %infile, i8** %infile.addr, align 8
  store i8* %outfile, i8** %outfile.addr, align 8
  store i32 0, i32* %ret, align 4
  store %struct.gzFile_s* null, %struct.gzFile_s** %in, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %out, align 8
  %0 = load i8*, i8** %infile.addr, align 8
  %call = call i32 (i8*, i32, ...) @open(i8* %0, i32 0, i32 0)
  store i32 %call, i32* %fd, align 4
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %out.23

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %fd, align 4
  %call1 = call %struct.gzFile_s* @gzdopen(i32 %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0))
  store %struct.gzFile_s* %call1, %struct.gzFile_s** %in, align 8
  %3 = load %struct.gzFile_s*, %struct.gzFile_s** %in, align 8
  %tobool = icmp ne %struct.gzFile_s* %3, null
  br i1 %tobool, label %if.end.4, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %4 = load i32, i32* %fd, align 4
  %call3 = call i32 @close(i32 %4)
  br label %out.23

if.end.4:                                         ; preds = %if.end
  %5 = load i8*, i8** %outfile.addr, align 8
  %call5 = call %struct._IO_FILE* @fopen(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0))
  store %struct._IO_FILE* %call5, %struct._IO_FILE** %out, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %tobool6 = icmp ne %struct._IO_FILE* %6, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  br label %out.23

if.end.8:                                         ; preds = %if.end.4
  br label %while.body

while.body:                                       ; preds = %if.end.8, %if.end.22
  %7 = load %struct.gzFile_s*, %struct.gzFile_s** %in, align 8
  %arraydecay = getelementptr inbounds [16384 x i8], [16384 x i8]* %buf, i32 0, i32 0
  %call9 = call i32 @gzread(%struct.gzFile_s* %7, i8* %arraydecay, i32 16384)
  store i32 %call9, i32* %len, align 4
  %8 = load i32, i32* %len, align 4
  %cmp10 = icmp slt i32 %8, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %while.body
  br label %while.end

if.else:                                          ; preds = %while.body
  %9 = load i32, i32* %len, align 4
  %cmp12 = icmp eq i32 %9, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.else
  store i32 1, i32* %ret, align 4
  br label %while.end

if.end.14:                                        ; preds = %if.else
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14
  %arraydecay16 = getelementptr inbounds [16384 x i8], [16384 x i8]* %buf, i32 0, i32 0
  %10 = load i32, i32* %len, align 4
  %conv = sext i32 %10 to i64
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call17 = call i64 @fwrite(i8* %arraydecay16, i64 1, i64 %conv, %struct._IO_FILE* %11)
  %12 = load i32, i32* %len, align 4
  %conv18 = sext i32 %12 to i64
  %cmp19 = icmp ne i64 %call17, %conv18
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.15
  br label %while.end

if.end.22:                                        ; preds = %if.end.15
  br label %while.body

while.end:                                        ; preds = %if.then.21, %if.then.13, %if.then.11
  br label %out.23

out.23:                                           ; preds = %while.end, %if.then.7, %if.then.2, %if.then
  %13 = load %struct.gzFile_s*, %struct.gzFile_s** %in, align 8
  %tobool24 = icmp ne %struct.gzFile_s* %13, null
  br i1 %tobool24, label %if.then.25, label %if.end.31

if.then.25:                                       ; preds = %out.23
  %14 = load %struct.gzFile_s*, %struct.gzFile_s** %in, align 8
  %call26 = call i32 @gzclose(%struct.gzFile_s* %14)
  %cmp27 = icmp ne i32 %call26, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.25
  store i32 0, i32* %ret, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.then.25
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %out.23
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %tobool32 = icmp ne %struct._IO_FILE* %15, null
  br i1 %tobool32, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.end.31
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call34 = call i32 @fclose(%struct._IO_FILE* %16)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.end.31
  %17 = load i32, i32* %ret, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @gzip_save(i8* %infile, i8* %outfile) #0 {
entry:
  %infile.addr = alloca i8*, align 8
  %outfile.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %in = alloca %struct._IO_FILE*, align 8
  %fd = alloca i32, align 4
  %out = alloca %struct.gzFile_s*, align 8
  %buf = alloca [16384 x i8], align 16
  %len = alloca i32, align 4
  %tot = alloca i64, align 8
  %file_size = alloca i64, align 8
  store i8* %infile, i8** %infile.addr, align 8
  store i8* %outfile, i8** %outfile.addr, align 8
  store i64 0, i64* %tot, align 8
  store i32 0, i32* %ret, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %in, align 8
  store %struct.gzFile_s* null, %struct.gzFile_s** %out, align 8
  %0 = load i8*, i8** %infile.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %in, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %out.33

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %outfile.addr, align 8
  %call1 = call i32 (i8*, i32, ...) @open(i8* %2, i32 65, i32 436)
  store i32 %call1, i32* %fd, align 4
  %3 = load i32, i32* %fd, align 4
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %out.33

if.end.3:                                         ; preds = %if.end
  %4 = load i32, i32* %fd, align 4
  %call4 = call %struct.gzFile_s* @gzdopen(i32 %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0))
  store %struct.gzFile_s* %call4, %struct.gzFile_s** %out, align 8
  %5 = load %struct.gzFile_s*, %struct.gzFile_s** %out, align 8
  %tobool5 = icmp ne %struct.gzFile_s* %5, null
  br i1 %tobool5, label %if.end.8, label %if.then.6

if.then.6:                                        ; preds = %if.end.3
  %6 = load i32, i32* %fd, align 4
  %call7 = call i32 @close(i32 %6)
  br label %out.33

if.end.8:                                         ; preds = %if.end.3
  %7 = load i8*, i8** %infile.addr, align 8
  %call9 = call i64 @get_file_info(i8* %7)
  store i64 %call9, i64* %file_size, align 8
  br label %while.body

while.body:                                       ; preds = %if.end.8, %if.end.28
  %arraydecay = getelementptr inbounds [16384 x i8], [16384 x i8]* %buf, i32 0, i32 0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call10 = call i64 @fread(i8* %arraydecay, i64 1, i64 16384, %struct._IO_FILE* %8)
  %conv = trunc i64 %call10 to i32
  store i32 %conv, i32* %len, align 4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call11 = call i32 @ferror(%struct._IO_FILE* %9) #5
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %while.body
  br label %while.end

if.end.14:                                        ; preds = %while.body
  %10 = load i32, i32* %len, align 4
  %cmp15 = icmp slt i32 %10, 0
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end.14
  br label %while.end

if.else:                                          ; preds = %if.end.14
  %11 = load i32, i32* %len, align 4
  %cmp18 = icmp eq i32 %11, 0
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.else
  store i32 1, i32* %ret, align 4
  br label %while.end

if.end.21:                                        ; preds = %if.else
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21
  %12 = load %struct.gzFile_s*, %struct.gzFile_s** %out, align 8
  %arraydecay23 = getelementptr inbounds [16384 x i8], [16384 x i8]* %buf, i32 0, i32 0
  %13 = load i32, i32* %len, align 4
  %call24 = call i32 @gzwrite(%struct.gzFile_s* %12, i8* %arraydecay23, i32 %13)
  %14 = load i32, i32* %len, align 4
  %cmp25 = icmp ne i32 %call24, %14
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.22
  br label %while.end

if.end.28:                                        ; preds = %if.end.22
  %15 = load i32, i32* %len, align 4
  %conv29 = sext i32 %15 to i64
  %16 = load i64, i64* %tot, align 8
  %add = add nsw i64 %16, %conv29
  store i64 %add, i64* %tot, align 8
  %conv30 = sitofp i64 %add to double
  %mul = fmul double %conv30, 1.000000e+00
  %17 = load i64, i64* %file_size, align 8
  %conv31 = sitofp i64 %17 to double
  %div = fdiv double %mul, %conv31
  %call32 = call i32 @gimp_progress_update(double %div)
  br label %while.body

while.end:                                        ; preds = %if.then.27, %if.then.20, %if.then.17, %if.then.13
  br label %out.33

out.33:                                           ; preds = %while.end, %if.then.6, %if.then.2, %if.then
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %tobool34 = icmp ne %struct._IO_FILE* %18, null
  br i1 %tobool34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %out.33
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call36 = call i32 @fclose(%struct._IO_FILE* %19)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %out.33
  %20 = load %struct.gzFile_s*, %struct.gzFile_s** %out, align 8
  %tobool38 = icmp ne %struct.gzFile_s* %20, null
  br i1 %tobool38, label %if.then.39, label %if.end.45

if.then.39:                                       ; preds = %if.end.37
  %21 = load %struct.gzFile_s*, %struct.gzFile_s** %out, align 8
  %call40 = call i32 @gzclose(%struct.gzFile_s* %21)
  %cmp41 = icmp ne i32 %call40, 0
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.then.39
  store i32 0, i32* %ret, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %if.then.39
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end.37
  %22 = load i32, i32* %ret, align 4
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @bzip2_load(i8* %infile, i8* %outfile) #0 {
entry:
  %infile.addr = alloca i8*, align 8
  %outfile.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %fd = alloca i32, align 4
  %in = alloca i8*, align 8
  %out = alloca %struct._IO_FILE*, align 8
  %buf = alloca [16384 x i8], align 16
  %len = alloca i32, align 4
  store i8* %infile, i8** %infile.addr, align 8
  store i8* %outfile, i8** %outfile.addr, align 8
  store i32 0, i32* %ret, align 4
  store i8* null, i8** %in, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %out, align 8
  %0 = load i8*, i8** %infile.addr, align 8
  %call = call i32 (i8*, i32, ...) @open(i8* %0, i32 0, i32 0)
  store i32 %call, i32* %fd, align 4
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %out.23

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %fd, align 4
  %call1 = call i8* @BZ2_bzdopen(i32 %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0))
  store i8* %call1, i8** %in, align 8
  %3 = load i8*, i8** %in, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.end.4, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %4 = load i32, i32* %fd, align 4
  %call3 = call i32 @close(i32 %4)
  br label %out.23

if.end.4:                                         ; preds = %if.end
  %5 = load i8*, i8** %outfile.addr, align 8
  %call5 = call %struct._IO_FILE* @fopen(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0))
  store %struct._IO_FILE* %call5, %struct._IO_FILE** %out, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %tobool6 = icmp ne %struct._IO_FILE* %6, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  br label %out.23

if.end.8:                                         ; preds = %if.end.4
  br label %while.body

while.body:                                       ; preds = %if.end.8, %if.end.22
  %7 = load i8*, i8** %in, align 8
  %arraydecay = getelementptr inbounds [16384 x i8], [16384 x i8]* %buf, i32 0, i32 0
  %call9 = call i32 @BZ2_bzread(i8* %7, i8* %arraydecay, i32 16384)
  store i32 %call9, i32* %len, align 4
  %8 = load i32, i32* %len, align 4
  %cmp10 = icmp slt i32 %8, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %while.body
  br label %while.end

if.else:                                          ; preds = %while.body
  %9 = load i32, i32* %len, align 4
  %cmp12 = icmp eq i32 %9, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.else
  store i32 1, i32* %ret, align 4
  br label %while.end

if.end.14:                                        ; preds = %if.else
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14
  %arraydecay16 = getelementptr inbounds [16384 x i8], [16384 x i8]* %buf, i32 0, i32 0
  %10 = load i32, i32* %len, align 4
  %conv = sext i32 %10 to i64
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call17 = call i64 @fwrite(i8* %arraydecay16, i64 1, i64 %conv, %struct._IO_FILE* %11)
  %12 = load i32, i32* %len, align 4
  %conv18 = sext i32 %12 to i64
  %cmp19 = icmp ne i64 %call17, %conv18
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.15
  br label %while.end

if.end.22:                                        ; preds = %if.end.15
  br label %while.body

while.end:                                        ; preds = %if.then.21, %if.then.13, %if.then.11
  br label %out.23

out.23:                                           ; preds = %while.end, %if.then.7, %if.then.2, %if.then
  %13 = load i8*, i8** %in, align 8
  %tobool24 = icmp ne i8* %13, null
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %out.23
  %14 = load i8*, i8** %in, align 8
  call void @BZ2_bzclose(i8* %14)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %out.23
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %tobool27 = icmp ne %struct._IO_FILE* %15, null
  br i1 %tobool27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.end.26
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call29 = call i32 @fclose(%struct._IO_FILE* %16)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.end.26
  %17 = load i32, i32* %ret, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @bzip2_save(i8* %infile, i8* %outfile) #0 {
entry:
  %infile.addr = alloca i8*, align 8
  %outfile.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %in = alloca %struct._IO_FILE*, align 8
  %fd = alloca i32, align 4
  %out = alloca i8*, align 8
  %buf = alloca [16384 x i8], align 16
  %len = alloca i32, align 4
  %tot = alloca i64, align 8
  %file_size = alloca i64, align 8
  store i8* %infile, i8** %infile.addr, align 8
  store i8* %outfile, i8** %outfile.addr, align 8
  store i64 0, i64* %tot, align 8
  store i32 0, i32* %ret, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %in, align 8
  store i8* null, i8** %out, align 8
  %0 = load i8*, i8** %infile.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %in, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %out.33

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %outfile.addr, align 8
  %call1 = call i32 (i8*, i32, ...) @open(i8* %2, i32 65, i32 436)
  store i32 %call1, i32* %fd, align 4
  %3 = load i32, i32* %fd, align 4
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %out.33

if.end.3:                                         ; preds = %if.end
  %4 = load i32, i32* %fd, align 4
  %call4 = call i8* @BZ2_bzdopen(i32 %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0))
  store i8* %call4, i8** %out, align 8
  %5 = load i8*, i8** %out, align 8
  %tobool5 = icmp ne i8* %5, null
  br i1 %tobool5, label %if.end.8, label %if.then.6

if.then.6:                                        ; preds = %if.end.3
  %6 = load i32, i32* %fd, align 4
  %call7 = call i32 @close(i32 %6)
  br label %out.33

if.end.8:                                         ; preds = %if.end.3
  %7 = load i8*, i8** %infile.addr, align 8
  %call9 = call i64 @get_file_info(i8* %7)
  store i64 %call9, i64* %file_size, align 8
  br label %while.body

while.body:                                       ; preds = %if.end.8, %if.end.28
  %arraydecay = getelementptr inbounds [16384 x i8], [16384 x i8]* %buf, i32 0, i32 0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call10 = call i64 @fread(i8* %arraydecay, i64 1, i64 16384, %struct._IO_FILE* %8)
  %conv = trunc i64 %call10 to i32
  store i32 %conv, i32* %len, align 4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call11 = call i32 @ferror(%struct._IO_FILE* %9) #5
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %while.body
  br label %while.end

if.end.14:                                        ; preds = %while.body
  %10 = load i32, i32* %len, align 4
  %cmp15 = icmp slt i32 %10, 0
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end.14
  br label %while.end

if.else:                                          ; preds = %if.end.14
  %11 = load i32, i32* %len, align 4
  %cmp18 = icmp eq i32 %11, 0
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.else
  store i32 1, i32* %ret, align 4
  br label %while.end

if.end.21:                                        ; preds = %if.else
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21
  %12 = load i8*, i8** %out, align 8
  %arraydecay23 = getelementptr inbounds [16384 x i8], [16384 x i8]* %buf, i32 0, i32 0
  %13 = load i32, i32* %len, align 4
  %call24 = call i32 @BZ2_bzwrite(i8* %12, i8* %arraydecay23, i32 %13)
  %14 = load i32, i32* %len, align 4
  %cmp25 = icmp ne i32 %call24, %14
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.22
  br label %while.end

if.end.28:                                        ; preds = %if.end.22
  %15 = load i32, i32* %len, align 4
  %conv29 = sext i32 %15 to i64
  %16 = load i64, i64* %tot, align 8
  %add = add nsw i64 %16, %conv29
  store i64 %add, i64* %tot, align 8
  %conv30 = sitofp i64 %add to double
  %mul = fmul double %conv30, 1.000000e+00
  %17 = load i64, i64* %file_size, align 8
  %conv31 = sitofp i64 %17 to double
  %div = fdiv double %mul, %conv31
  %call32 = call i32 @gimp_progress_update(double %div)
  br label %while.body

while.end:                                        ; preds = %if.then.27, %if.then.20, %if.then.17, %if.then.13
  br label %out.33

out.33:                                           ; preds = %while.end, %if.then.6, %if.then.2, %if.then
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %tobool34 = icmp ne %struct._IO_FILE* %18, null
  br i1 %tobool34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %out.33
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call36 = call i32 @fclose(%struct._IO_FILE* %19)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %out.33
  %20 = load i8*, i8** %out, align 8
  %tobool38 = icmp ne i8* %20, null
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.37
  %21 = load i8*, i8** %out, align 8
  call void @BZ2_bzclose(i8* %21)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.end.37
  %22 = load i32, i32* %ret, align 4
  ret i32 %22
}

declare i32 @open(i8*, i32, ...) #1

declare %struct.gzFile_s* @gzdopen(i32, i8*) #1

declare i32 @close(i32) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @gzread(%struct.gzFile_s*, i8*, i32) #1

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

declare i32 @gzclose(%struct.gzFile_s*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i64 @get_file_info(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %file = alloca %struct._GFile*, align 8
  %info = alloca %struct._GFileInfo*, align 8
  %size = alloca i64, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._GFile* @g_file_new_for_path(i8* %0)
  store %struct._GFile* %call, %struct._GFile** %file, align 8
  store i64 1, i64* %size, align 8
  %1 = load %struct._GFile*, %struct._GFile** %file, align 8
  %call1 = call %struct._GFileInfo* @g_file_query_info(%struct._GFile* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0), i32 0, %struct._GCancellable* null, %struct._GError** null)
  store %struct._GFileInfo* %call1, %struct._GFileInfo** %info, align 8
  %2 = load %struct._GFileInfo*, %struct._GFileInfo** %info, align 8
  %tobool = icmp ne %struct._GFileInfo* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GFileInfo*, %struct._GFileInfo** %info, align 8
  %call2 = call i64 @g_file_info_get_size(%struct._GFileInfo* %3)
  store i64 %call2, i64* %size, align 8
  %4 = load %struct._GFileInfo*, %struct._GFileInfo** %info, align 8
  %5 = bitcast %struct._GFileInfo* %4 to i8*
  call void @g_object_unref(i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GFile*, %struct._GFile** %file, align 8
  %7 = bitcast %struct._GFile* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load i64, i64* %size, align 8
  ret i64 %8
}

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #2

declare i32 @gzwrite(%struct.gzFile_s*, i8*, i32) #1

declare i32 @gimp_progress_update(double) #1

declare %struct._GFile* @g_file_new_for_path(i8*) #1

declare %struct._GFileInfo* @g_file_query_info(%struct._GFile*, i8*, i32, %struct._GCancellable*, %struct._GError**) #1

declare i64 @g_file_info_get_size(%struct._GFileInfo*) #1

declare void @g_object_unref(i8*) #1

declare i8* @BZ2_bzdopen(i32, i8*) #1

declare i32 @BZ2_bzread(i8*, i8*, i32) #1

declare void @BZ2_bzclose(i8*) #1

declare i32 @BZ2_bzwrite(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare i8* @gimp_locale_directory() #3

; Function Attrs: nounwind
declare i8* @bind_textdomain_codeset(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) #2

declare i32 @gimp_plugin_set_pdb_error_handler(i32) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @load_image(%struct._Compressor* %compressor, i8* %filename, i32 %run_mode, i32* %status, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %compressor.addr = alloca %struct._Compressor*, align 8
  %filename.addr = alloca i8*, align 8
  %run_mode.addr = alloca i32, align 4
  %status.addr = alloca i32*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %image_ID = alloca i32, align 4
  %ext = alloca i8*, align 8
  %tmpname = alloca i8*, align 8
  store %struct._Compressor* %compressor, %struct._Compressor** %compressor.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %run_mode, i32* %run_mode.addr, align 4
  store i32* %status, i32** %status.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._Compressor*, %struct._Compressor** %compressor.addr, align 8
  %1 = load i8*, i8** %filename.addr, align 8
  %call = call i8* @find_extension(%struct._Compressor* %0, i8* %1)
  store i8* %call, i8** %ext, align 8
  %2 = load i8*, i8** %ext, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.46, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call1)
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i8** %ext, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %ext, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 1
  %call2 = call i8* @gimp_temp_name(i8* %add.ptr)
  store i8* %call2, i8** %tmpname, align 8
  %4 = load %struct._Compressor*, %struct._Compressor** %compressor.addr, align 8
  %load_fn = getelementptr inbounds %struct._Compressor, %struct._Compressor* %4, i32 0, i32 9
  %5 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %load_fn, align 8
  %6 = load i8*, i8** %filename.addr, align 8
  %7 = load i8*, i8** %tmpname, align 8
  %call3 = call i32 %5(i8* %6, i8* %7)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %8 = load i8*, i8** %tmpname, align 8
  call void @g_free(i8* %8)
  %9 = load i32*, i32** %status.addr, align 8
  store i32 0, i32* %9, align 4
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %10 = load i32, i32* %run_mode.addr, align 4
  %11 = load i8*, i8** %tmpname, align 8
  %12 = load i8*, i8** %tmpname, align 8
  %call7 = call i32 @gimp_file_load(i32 %10, i8* %11, i8* %12)
  store i32 %call7, i32* %image_ID, align 4
  %13 = load i8*, i8** %tmpname, align 8
  %call8 = call i32 @g_unlink(i8* %13)
  %14 = load i8*, i8** %tmpname, align 8
  call void @g_free(i8* %14)
  %15 = load i32, i32* %image_ID, align 4
  %cmp = icmp ne i32 %15, -1
  br i1 %cmp, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end.6
  %16 = load i32*, i32** %status.addr, align 8
  store i32 3, i32* %16, align 4
  %17 = load i32, i32* %image_ID, align 4
  %18 = load i8*, i8** %filename.addr, align 8
  %call10 = call i32 @gimp_image_set_filename(i32 %17, i8* %18)
  br label %if.end.13

if.else:                                          ; preds = %if.end.6
  %19 = load i32*, i32** %status.addr, align 8
  store i32 0, i32* %19, align 4
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call11 = call i32 @g_file_error_quark()
  %call12 = call i8* @gimp_get_pdb_error()
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %20, i32 %call11, i32 24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i32 0, i32 0), i8* %call12)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.9
  %21 = load i32, i32* %image_ID, align 4
  store i32 %21, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.5
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @save_image(%struct._Compressor* %compressor, i8* %filename, i32 %image_ID, i32 %drawable_ID, i32 %run_mode, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %compressor.addr = alloca %struct._Compressor*, align 8
  %filename.addr = alloca i8*, align 8
  %image_ID.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32, align 4
  %run_mode.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %ext = alloca i8*, align 8
  %tmpname = alloca i8*, align 8
  store %struct._Compressor* %compressor, %struct._Compressor** %compressor.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %run_mode, i32* %run_mode.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._Compressor*, %struct._Compressor** %compressor.addr, align 8
  %1 = load i8*, i8** %filename.addr, align 8
  %call = call i8* @find_extension(%struct._Compressor* %0, i8* %1)
  store i8* %call, i8** %ext, align 8
  %2 = load i8*, i8** %ext, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.50, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call1)
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i8** %ext, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %ext, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 1
  %call2 = call i8* @gimp_temp_name(i8* %add.ptr)
  store i8* %call2, i8** %tmpname, align 8
  %4 = load i32, i32* %run_mode.addr, align 4
  %5 = load i32, i32* %image_ID.addr, align 4
  %6 = load i32, i32* %drawable_ID.addr, align 4
  %7 = load i8*, i8** %tmpname, align 8
  %8 = load i8*, i8** %tmpname, align 8
  %call3 = call i32 @gimp_file_save(i32 %4, i32 %5, i32 %6, i8* %7, i8* %8)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %land.lhs.true, label %if.then.7

land.lhs.true:                                    ; preds = %if.end
  %9 = load i8*, i8** %tmpname, align 8
  %call5 = call i32 @valid_file(i8* %9)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.11, label %if.then.7

if.then.7:                                        ; preds = %land.lhs.true, %if.end
  %10 = load i8*, i8** %tmpname, align 8
  %call8 = call i32 @g_unlink(i8* %10)
  %11 = load i8*, i8** %tmpname, align 8
  call void @g_free(i8* %11)
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call9 = call i32 @g_file_error_quark()
  %call10 = call i8* @gimp_get_pdb_error()
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %12, i32 %call9, i32 24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i32 0, i32 0), i8* %call10)
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %land.lhs.true
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.51, i32 0, i32 0)) #5
  %13 = load i8*, i8** %filename.addr, align 8
  %call13 = call i8* @gimp_filename_to_utf8(i8* %13)
  %call14 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call12, i8* %call13)
  %14 = load %struct._Compressor*, %struct._Compressor** %compressor.addr, align 8
  %save_fn = getelementptr inbounds %struct._Compressor, %struct._Compressor* %14, i32 0, i32 13
  %15 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %save_fn, align 8
  %16 = load i8*, i8** %tmpname, align 8
  %17 = load i8*, i8** %filename.addr, align 8
  %call15 = call i32 %15(i8* %16, i8* %17)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.19, label %if.then.17

if.then.17:                                       ; preds = %if.end.11
  %18 = load i8*, i8** %tmpname, align 8
  %call18 = call i32 @g_unlink(i8* %18)
  %19 = load i8*, i8** %tmpname, align 8
  call void @g_free(i8* %19)
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.11
  %20 = load i8*, i8** %tmpname, align 8
  %call20 = call i32 @g_unlink(i8* %20)
  %call21 = call i32 @gimp_progress_update(double 1.000000e+00)
  %21 = load i8*, i8** %tmpname, align 8
  call void @g_free(i8* %21)
  %22 = load i8*, i8** %ext, align 8
  %call22 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0)) #7
  %cmp = icmp eq i32 %call22, 0
  br i1 %cmp, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end.19
  %23 = load i32, i32* %image_ID.addr, align 4
  %24 = load i8*, i8** %filename.addr, align 8
  %call24 = call i32 @gimp_file_save_thumbnail(i32 %23, i8* %24)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.end.19
  store i32 3, i32* %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.17, %if.then.7
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i8* @find_extension(%struct._Compressor* %compressor, i8* %filename) #0 {
entry:
  %retval = alloca i8*, align 8
  %compressor.addr = alloca %struct._Compressor*, align 8
  %filename.addr = alloca i8*, align 8
  %filename_copy = alloca i8*, align 8
  %ext = alloca i8*, align 8
  store %struct._Compressor* %compressor, %struct._Compressor** %compressor.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call noalias i8* @g_strdup(i8* %0)
  store i8* %call, i8** %filename_copy, align 8
  %1 = load i8*, i8** %filename_copy, align 8
  %call1 = call i8* @strrchr(i8* %1, i32 46) #7
  store i8* %call1, i8** %ext, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.16
  %2 = load i8*, i8** %ext, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %while.body
  %3 = load i8*, i8** %ext, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %5 = load i8*, i8** %ext, align 8
  %call4 = call i8* @strchr(i8* %5, i32 47) #7
  %tobool5 = icmp ne i8* %call4, null
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %while.body
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.3
  %6 = load i8*, i8** %ext, align 8
  %7 = load %struct._Compressor*, %struct._Compressor** %compressor.addr, align 8
  %xcf_extension = getelementptr inbounds %struct._Compressor, %struct._Compressor* %7, i32 0, i32 4
  %8 = load i8*, i8** %xcf_extension, align 8
  %call6 = call i32 @g_ascii_strcasecmp(i8* %6, i8* %8)
  %cmp7 = icmp eq i32 0, %call6
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %9 = load i8*, i8** %ext, align 8
  %10 = load %struct._Compressor*, %struct._Compressor** %compressor.addr, align 8
  %generic_extension = getelementptr inbounds %struct._Compressor, %struct._Compressor* %10, i32 0, i32 5
  %11 = load i8*, i8** %generic_extension, align 8
  %call11 = call i32 @g_ascii_strcasecmp(i8* %9, i8* %11)
  %cmp12 = icmp ne i32 0, %call11
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.10
  %12 = load i8*, i8** %ext, align 8
  store i8* %12, i8** %retval
  br label %return

if.else:                                          ; preds = %if.end.10
  %13 = load i8*, i8** %ext, align 8
  store i8 0, i8* %13, align 1
  %14 = load i8*, i8** %filename_copy, align 8
  %call15 = call i8* @strrchr(i8* %14, i32 46) #7
  store i8* %call15, i8** %ext, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.else
  br label %while.body

return:                                           ; preds = %if.then.14, %if.then.9, %if.then
  %15 = load i8*, i8** %retval
  ret i8* %15
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

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i8* @gimp_temp_name(i8*) #1

declare void @g_free(i8*) #1

declare i32 @gimp_file_load(i32, i8*, i8*) #1

declare i32 @g_unlink(i8*) #1

declare i32 @gimp_image_set_filename(i32, i8*) #1

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

declare i32 @g_file_error_quark() #1

declare i8* @gimp_get_pdb_error() #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #4

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

declare i32 @g_ascii_strcasecmp(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare i32 @gimp_file_save(i32, i32, i32, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @valid_file(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %buf = alloca %struct.stat, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i32 @stat(i8* %0, %struct.stat* %buf) #5
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %buf, i32 0, i32 8
  %1 = load i64, i64* %st_size, align 8
  %cmp1 = icmp sgt i64 %1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  ret i32 %land.ext
}

declare i32 @gimp_progress_init_printf(i8*, ...) #1

declare i8* @gimp_filename_to_utf8(i8*) #1

declare i32 @gimp_file_save_thumbnail(i32, i8*) #1

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #2

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
