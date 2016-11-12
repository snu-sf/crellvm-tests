; ModuleID = './plug-ins/common/file-xwd.bc'
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
%struct.L_XWDFILEHEADER = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.L_XWDCOLOR = type { i64, i16, i16, i16, i8, i8 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct.PIXEL_MAP = type { i32, [4096 x i8], [256 x %struct.PMAP] }
%struct.PMAP = type { i64, i8, i8, i8 }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.load_args = internal constant [3 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"The name of the file to load\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"raw-filename\00", align 1
@query.load_return_vals = internal constant [1 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0) }], align 16
@.str.5 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Output image\00", align 1
@query.save_args = internal constant [5 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0) }], align 16
@.str.7 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Drawable to save\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"The name of the file to save the image in\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"file-xwd-load\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"Loads files in the XWD (X Window Dump) format\00", align 1
@.str.13 = private unnamed_addr constant [146 x i8] c"Loads files in the XWD (X Window Dump) format. XWD image files are produced by the program xwd. Xwd is an X Window System window dumping utility.\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"Peter Kirchgessner\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"1996\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"X window dump\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"image/x-xwindowdump\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"xwd\00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"4,long,0x00000007\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"file-xwd-save\00", align 1
@.str.22 = private unnamed_addr constant [46 x i8] c"Saves files in the XWD (X Window Dump) format\00", align 1
@.str.23 = private unnamed_addr constant [69 x i8] c"XWD saving handles all image types except those with alpha channels.\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"RGB, GRAY, INDEXED\00", align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@l_run_mode = internal global i32 0, align 4
@.str.25 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"file-xwd\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"XWD\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.30 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"Could not read XWD header from '%s'\00", align 1
@.str.32 = private unnamed_addr constant [46 x i8] c"'%s':\0AIllegal number of colormap entries: %ld\00", align 1
@.str.33 = private unnamed_addr constant [52 x i8] c"'%s':\0ANumber of colormap entries < number of colors\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"Can't read color entries\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"'%s':\0ANo image width specified\00", align 1
@.str.36 = private unnamed_addr constant [49 x i8] c"'%s':\0AImage width is larger than GIMP can handle\00", align 1
@.str.37 = private unnamed_addr constant [32 x i8] c"'%s':\0ANo image height specified\00", align 1
@.str.38 = private unnamed_addr constant [50 x i8] c"'%s':\0AImage height is larger than GIMP can handle\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"Opening '%s'\00", align 1
@.str.40 = private unnamed_addr constant [92 x i8] c"XWD-file %s has format %d, depth %d and bits per pixel %d. Currently this is not supported.\00", align 1
@.str.41 = private unnamed_addr constant [45 x i8] c"xwd: Warning. Error in XWD-color-structure (\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"flag\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"EOF encountered on reading\00", align 1
@.str.46 = private unnamed_addr constant [19 x i8] c"Unknown image type\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"Background\00", align 1
@set_bw_color_table.BWColorMap = internal global [6 x i8] c"\FF\FF\FF\00\00\00", align 1
@.str.48 = private unnamed_addr constant [24 x i8] c"XWD-file %s is corrupt.\00", align 1
@.str.49 = private unnamed_addr constant [40 x i8] c"Cannot save images with alpha channels.\00", align 1
@.str.50 = private unnamed_addr constant [39 x i8] c"Cannot operate on unknown image types.\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.52 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"Saving '%s'\00", align 1
@.str.54 = private unnamed_addr constant [40 x i8] c"Error during writing indexed/gray image\00", align 1
@.str.55 = private unnamed_addr constant [31 x i8] c"Error during writing rgb image\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([146 x i8], [146 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8* null, i32 1, i32 3, i32 1, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.load_args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @query.load_return_vals, i32 0, i32 0))
  %call = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0))
  %call1 = call i32 @gimp_register_magic_load_handler(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0))
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i32 0, i32 0), i32 1, i32 5, i32 0, %struct._GimpParamDef* getelementptr inbounds ([5 x %struct._GimpParamDef], [5 x %struct._GimpParamDef]* @query.save_args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call2 = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0))
  %call3 = call i32 @gimp_register_save_handler(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i32 0, i32 0))
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
  store i32 %1, i32* @l_run_mode, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #6
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  store i32 21, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  store i32 0, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %4 = load i8*, i8** %name.addr, align 8
  %call4 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0)) #7
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
  br label %if.end.46

if.else.10:                                       ; preds = %do.end
  %10 = load i8*, i8** %name.addr, align 8
  %call11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0)) #7
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.else.44

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
  call void @gimp_ui_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 0)
  %call20 = call i32 @gimp_export_image(i32* %image_ID, i32* %drawable_ID, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i32 7)
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
  switch i32 %17, label %sw.default.29 [
    i32 0, label %sw.bb.24
    i32 2, label %sw.bb.24
    i32 1, label %sw.bb.25
  ]

sw.bb.24:                                         ; preds = %sw.epilog, %sw.epilog
  br label %sw.epilog.30

sw.bb.25:                                         ; preds = %sw.epilog
  %18 = load i32, i32* %nparams.addr, align 4
  %cmp26 = icmp ne i32 %18, 5
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %sw.bb.25
  store i32 1, i32* %status, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %sw.bb.25
  br label %sw.epilog.30

sw.default.29:                                    ; preds = %sw.epilog
  br label %sw.epilog.30

sw.epilog.30:                                     ; preds = %sw.default.29, %if.end.28, %sw.bb.24
  %19 = load i32, i32* %status, align 4
  %cmp31 = icmp eq i32 %19, 3
  br i1 %cmp31, label %if.then.32, label %if.end.39

if.then.32:                                       ; preds = %sw.epilog.30
  %20 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx33 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %20, i64 3
  %data34 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx33, i32 0, i32 1
  %d_string35 = bitcast %union._GimpParamData* %data34 to i8**
  %21 = load i8*, i8** %d_string35, align 8
  %22 = load i32, i32* %image_ID, align 4
  %23 = load i32, i32* %drawable_ID, align 4
  %call36 = call i32 @save_image(i8* %21, i32 %22, i32 %23, %struct._GError** %error)
  %tobool = icmp ne i32 %call36, 0
  br i1 %tobool, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %if.then.32
  store i32 0, i32* %status, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.then.32
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %sw.epilog.30
  %24 = load i32, i32* %export, align 4
  %cmp40 = icmp eq i32 %24, 2
  br i1 %cmp40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %if.end.39
  %25 = load i32, i32* %image_ID, align 4
  %call42 = call i32 @gimp_image_delete(i32 %25)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %if.end.39
  br label %if.end.45

if.else.44:                                       ; preds = %if.else.10
  store i32 4, i32* %status, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.44, %if.end.43
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.end
  %26 = load i32, i32* %status, align 4
  %cmp47 = icmp ne i32 %26, 3
  br i1 %cmp47, label %land.lhs.true, label %if.end.50

land.lhs.true:                                    ; preds = %if.end.46
  %27 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool48 = icmp ne %struct._GError* %27, null
  br i1 %tobool48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %land.lhs.true
  %28 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %28, align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %29 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %29, i32 0, i32 2
  %30 = load i8*, i8** %message, align 8
  store i8* %30, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %land.lhs.true, %if.end.46
  %31 = load i32, i32* %status, align 4
  store i32 %31, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.50, %if.then.22
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
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %ifp = alloca %struct._IO_FILE*, align 8
  %depth = alloca i32, align 4
  %bpp = alloca i32, align 4
  %image_ID = alloca i32, align 4
  %xwdhdr = alloca %struct.L_XWDFILEHEADER, align 8
  %xwdcolmap = alloca %struct.L_XWDCOLOR*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %ifp, align 8
  store i32 -1, i32* %image_ID, align 4
  store %struct.L_XWDCOLOR* null, %struct.L_XWDCOLOR** %xwdcolmap, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %ifp, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i32 @g_file_error_quark()
  %call2 = call i32* @__errno_location() #6
  %3 = load i32, i32* %call2, align 4
  %call3 = call i32 @g_file_error_from_errno(i32 %3)
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.30, i32 0, i32 0)) #5
  %4 = load i8*, i8** %filename.addr, align 8
  %call5 = call i8* @gimp_filename_to_utf8(i8* %4)
  %call6 = call i32* @__errno_location() #6
  %5 = load i32, i32* %call6, align 4
  %call7 = call i8* @g_strerror(i32 %5) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %2, i32 %call1, i32 %call3, i8* %call4, i8* %call5, i8* %call7)
  br label %out

if.end:                                           ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp, align 8
  call void @read_xwd_header(%struct._IO_FILE* %6, %struct.L_XWDFILEHEADER* %xwdhdr)
  %l_file_version = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 1
  %7 = load i64, i64* %l_file_version, align 8
  %cmp = icmp ne i64 %7, 7
  br i1 %cmp, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call9 = call i32 @g_file_error_quark()
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.31, i32 0, i32 0)) #5
  %9 = load i8*, i8** %filename.addr, align 8
  %call11 = call i8* @gimp_filename_to_utf8(i8* %9)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %8, i32 %call9, i32 24, i8* %call10, i8* %call11)
  br label %out

if.end.12:                                        ; preds = %if.end
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp, align 8
  %l_header_size = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 0
  %11 = load i64, i64* %l_header_size, align 8
  %call13 = call i32 @fseek(%struct._IO_FILE* %10, i64 %11, i32 0)
  %l_colormap_entries = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 18
  %12 = load i64, i64* %l_colormap_entries, align 8
  %cmp14 = icmp ugt i64 %12, 256
  br i1 %cmp14, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.end.12
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.32, i32 0, i32 0)) #5
  %13 = load i8*, i8** %filename.addr, align 8
  %call17 = call i8* @gimp_filename_to_utf8(i8* %13)
  %l_colormap_entries18 = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 18
  %14 = load i64, i64* %l_colormap_entries18, align 8
  call void (i8*, ...) @g_message(i8* %call16, i8* %call17, i64 %14)
  br label %out

if.end.19:                                        ; preds = %if.end.12
  %l_colormap_entries20 = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 18
  %15 = load i64, i64* %l_colormap_entries20, align 8
  %cmp21 = icmp ugt i64 %15, 0
  br i1 %cmp21, label %if.then.22, label %if.end.36

if.then.22:                                       ; preds = %if.end.19
  %l_colormap_entries23 = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 18
  %16 = load i64, i64* %l_colormap_entries23, align 8
  %l_ncolors = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 19
  %17 = load i64, i64* %l_ncolors, align 8
  %cmp24 = icmp ult i64 %16, %17
  br i1 %cmp24, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %if.then.22
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.33, i32 0, i32 0)) #5
  %18 = load i8*, i8** %filename.addr, align 8
  %call27 = call i8* @gimp_filename_to_utf8(i8* %18)
  call void (i8*, ...) @g_message(i8* %call26, i8* %call27)
  br label %out

if.end.28:                                        ; preds = %if.then.22
  %l_colormap_entries29 = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 18
  %19 = load i64, i64* %l_colormap_entries29, align 8
  %call30 = call noalias i8* @g_malloc_n(i64 %19, i64 16)
  %20 = bitcast i8* %call30 to %struct.L_XWDCOLOR*
  store %struct.L_XWDCOLOR* %20, %struct.L_XWDCOLOR** %xwdcolmap, align 8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp, align 8
  %22 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %xwdcolmap, align 8
  call void @read_xwd_cols(%struct._IO_FILE* %21, %struct.L_XWDFILEHEADER* %xwdhdr, %struct.L_XWDCOLOR* %22)
  %l_file_version31 = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 1
  %23 = load i64, i64* %l_file_version31, align 8
  %cmp32 = icmp ne i64 %23, 7
  br i1 %cmp32, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.end.28
  %call34 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call34)
  br label %out

if.end.35:                                        ; preds = %if.end.28
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.19
  %l_pixmap_width = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 4
  %24 = load i64, i64* %l_pixmap_width, align 8
  %cmp37 = icmp ule i64 %24, 0
  br i1 %cmp37, label %if.then.38, label %if.end.41

if.then.38:                                       ; preds = %if.end.36
  %call39 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i32 0, i32 0)) #5
  %25 = load i8*, i8** %filename.addr, align 8
  %call40 = call i8* @gimp_filename_to_utf8(i8* %25)
  call void (i8*, ...) @g_message(i8* %call39, i8* %call40)
  br label %out

if.end.41:                                        ; preds = %if.end.36
  %l_pixmap_width42 = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 4
  %26 = load i64, i64* %l_pixmap_width42, align 8
  %cmp43 = icmp ugt i64 %26, 262144
  br i1 %cmp43, label %if.then.45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.41
  %l_bytes_per_line = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 12
  %27 = load i64, i64* %l_bytes_per_line, align 8
  %cmp44 = icmp ugt i64 %27, 786432
  br i1 %cmp44, label %if.then.45, label %if.end.48

if.then.45:                                       ; preds = %lor.lhs.false, %if.end.41
  %call46 = call i8* @gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.36, i32 0, i32 0)) #5
  %28 = load i8*, i8** %filename.addr, align 8
  %call47 = call i8* @gimp_filename_to_utf8(i8* %28)
  call void (i8*, ...) @g_message(i8* %call46, i8* %call47)
  br label %out

if.end.48:                                        ; preds = %lor.lhs.false
  %l_pixmap_height = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 5
  %29 = load i64, i64* %l_pixmap_height, align 8
  %cmp49 = icmp ule i64 %29, 0
  br i1 %cmp49, label %if.then.50, label %if.end.53

if.then.50:                                       ; preds = %if.end.48
  %call51 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.37, i32 0, i32 0)) #5
  %30 = load i8*, i8** %filename.addr, align 8
  %call52 = call i8* @gimp_filename_to_utf8(i8* %30)
  call void (i8*, ...) @g_message(i8* %call51, i8* %call52)
  br label %out

if.end.53:                                        ; preds = %if.end.48
  %l_pixmap_height54 = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 5
  %31 = load i64, i64* %l_pixmap_height54, align 8
  %cmp55 = icmp ugt i64 %31, 262144
  br i1 %cmp55, label %if.then.56, label %if.end.59

if.then.56:                                       ; preds = %if.end.53
  %call57 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.38, i32 0, i32 0)) #5
  %32 = load i8*, i8** %filename.addr, align 8
  %call58 = call i8* @gimp_filename_to_utf8(i8* %32)
  call void (i8*, ...) @g_message(i8* %call57, i8* %call58)
  br label %out

if.end.59:                                        ; preds = %if.end.53
  %call60 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i32 0, i32 0)) #5
  %33 = load i8*, i8** %filename.addr, align 8
  %call61 = call i8* @gimp_filename_to_utf8(i8* %33)
  %call62 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call60, i8* %call61)
  %l_pixmap_depth = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 3
  %34 = load i64, i64* %l_pixmap_depth, align 8
  %conv = trunc i64 %34 to i32
  store i32 %conv, i32* %depth, align 4
  %l_bits_per_pixel = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 11
  %35 = load i64, i64* %l_bits_per_pixel, align 8
  %conv63 = trunc i64 %35 to i32
  store i32 %conv63, i32* %bpp, align 4
  store i32 -1, i32* %image_ID, align 4
  %l_pixmap_format = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 2
  %36 = load i64, i64* %l_pixmap_format, align 8
  switch i64 %36, label %sw.epilog [
    i64 0, label %sw.bb
    i64 1, label %sw.bb.71
    i64 2, label %sw.bb.80
  ]

sw.bb:                                            ; preds = %if.end.59
  %37 = load i32, i32* %depth, align 4
  %cmp64 = icmp eq i32 %37, 1
  br i1 %cmp64, label %land.lhs.true, label %if.end.70

land.lhs.true:                                    ; preds = %sw.bb
  %38 = load i32, i32* %bpp, align 4
  %cmp66 = icmp eq i32 %38, 1
  br i1 %cmp66, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %land.lhs.true
  %39 = load i8*, i8** %filename.addr, align 8
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp, align 8
  %41 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %xwdcolmap, align 8
  %call69 = call i32 @load_xwd_f2_d1_b1(i8* %39, %struct._IO_FILE* %40, %struct.L_XWDFILEHEADER* %xwdhdr, %struct.L_XWDCOLOR* %41)
  store i32 %call69, i32* %image_ID, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %land.lhs.true, %sw.bb
  br label %sw.epilog

sw.bb.71:                                         ; preds = %if.end.59
  %42 = load i32, i32* %depth, align 4
  %cmp72 = icmp sle i32 %42, 24
  br i1 %cmp72, label %land.lhs.true.74, label %if.end.79

land.lhs.true.74:                                 ; preds = %sw.bb.71
  %43 = load i32, i32* %bpp, align 4
  %cmp75 = icmp eq i32 %43, 1
  br i1 %cmp75, label %if.then.77, label %if.end.79

if.then.77:                                       ; preds = %land.lhs.true.74
  %44 = load i8*, i8** %filename.addr, align 8
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp, align 8
  %46 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %xwdcolmap, align 8
  %47 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call78 = call i32 @load_xwd_f1_d24_b1(i8* %44, %struct._IO_FILE* %45, %struct.L_XWDFILEHEADER* %xwdhdr, %struct.L_XWDCOLOR* %46, %struct._GError** %47)
  store i32 %call78, i32* %image_ID, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.77, %land.lhs.true.74, %sw.bb.71
  br label %sw.epilog

sw.bb.80:                                         ; preds = %if.end.59
  %48 = load i32, i32* %depth, align 4
  %cmp81 = icmp eq i32 %48, 1
  br i1 %cmp81, label %land.lhs.true.83, label %if.else

land.lhs.true.83:                                 ; preds = %sw.bb.80
  %49 = load i32, i32* %bpp, align 4
  %cmp84 = icmp eq i32 %49, 1
  br i1 %cmp84, label %if.then.86, label %if.else

if.then.86:                                       ; preds = %land.lhs.true.83
  %50 = load i8*, i8** %filename.addr, align 8
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp, align 8
  %52 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %xwdcolmap, align 8
  %call87 = call i32 @load_xwd_f2_d1_b1(i8* %50, %struct._IO_FILE* %51, %struct.L_XWDFILEHEADER* %xwdhdr, %struct.L_XWDCOLOR* %52)
  store i32 %call87, i32* %image_ID, align 4
  br label %if.end.117

if.else:                                          ; preds = %land.lhs.true.83, %sw.bb.80
  %53 = load i32, i32* %depth, align 4
  %cmp88 = icmp sle i32 %53, 8
  br i1 %cmp88, label %land.lhs.true.90, label %if.else.95

land.lhs.true.90:                                 ; preds = %if.else
  %54 = load i32, i32* %bpp, align 4
  %cmp91 = icmp eq i32 %54, 8
  br i1 %cmp91, label %if.then.93, label %if.else.95

if.then.93:                                       ; preds = %land.lhs.true.90
  %55 = load i8*, i8** %filename.addr, align 8
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp, align 8
  %57 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %xwdcolmap, align 8
  %call94 = call i32 @load_xwd_f2_d8_b8(i8* %55, %struct._IO_FILE* %56, %struct.L_XWDFILEHEADER* %xwdhdr, %struct.L_XWDCOLOR* %57)
  store i32 %call94, i32* %image_ID, align 4
  br label %if.end.116

if.else.95:                                       ; preds = %land.lhs.true.90, %if.else
  %58 = load i32, i32* %depth, align 4
  %cmp96 = icmp sle i32 %58, 16
  br i1 %cmp96, label %land.lhs.true.98, label %if.else.103

land.lhs.true.98:                                 ; preds = %if.else.95
  %59 = load i32, i32* %bpp, align 4
  %cmp99 = icmp eq i32 %59, 16
  br i1 %cmp99, label %if.then.101, label %if.else.103

if.then.101:                                      ; preds = %land.lhs.true.98
  %60 = load i8*, i8** %filename.addr, align 8
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp, align 8
  %62 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %xwdcolmap, align 8
  %call102 = call i32 @load_xwd_f2_d16_b16(i8* %60, %struct._IO_FILE* %61, %struct.L_XWDFILEHEADER* %xwdhdr, %struct.L_XWDCOLOR* %62)
  store i32 %call102, i32* %image_ID, align 4
  br label %if.end.115

if.else.103:                                      ; preds = %land.lhs.true.98, %if.else.95
  %63 = load i32, i32* %depth, align 4
  %cmp104 = icmp sle i32 %63, 24
  br i1 %cmp104, label %land.lhs.true.106, label %if.end.114

land.lhs.true.106:                                ; preds = %if.else.103
  %64 = load i32, i32* %bpp, align 4
  %cmp107 = icmp eq i32 %64, 24
  br i1 %cmp107, label %if.then.112, label %lor.lhs.false.109

lor.lhs.false.109:                                ; preds = %land.lhs.true.106
  %65 = load i32, i32* %bpp, align 4
  %cmp110 = icmp eq i32 %65, 32
  br i1 %cmp110, label %if.then.112, label %if.end.114

if.then.112:                                      ; preds = %lor.lhs.false.109, %land.lhs.true.106
  %66 = load i8*, i8** %filename.addr, align 8
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp, align 8
  %68 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %xwdcolmap, align 8
  %69 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call113 = call i32 @load_xwd_f2_d24_b32(i8* %66, %struct._IO_FILE* %67, %struct.L_XWDFILEHEADER* %xwdhdr, %struct.L_XWDCOLOR* %68, %struct._GError** %69)
  store i32 %call113, i32* %image_ID, align 4
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.112, %lor.lhs.false.109, %if.else.103
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.then.101
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %if.then.93
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %if.then.86
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.59, %if.end.117, %if.end.79, %if.end.70
  %call118 = call i32 @gimp_progress_update(double 1.000000e+00)
  %70 = load i32, i32* %image_ID, align 4
  %cmp119 = icmp eq i32 %70, -1
  br i1 %cmp119, label %land.lhs.true.121, label %if.end.131

land.lhs.true.121:                                ; preds = %sw.epilog
  %71 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool122 = icmp ne %struct._GError** %71, null
  br i1 %tobool122, label %land.lhs.true.123, label %if.then.125

land.lhs.true.123:                                ; preds = %land.lhs.true.121
  %72 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %73 = load %struct._GError*, %struct._GError** %72, align 8
  %tobool124 = icmp ne %struct._GError* %73, null
  br i1 %tobool124, label %if.end.131, label %if.then.125

if.then.125:                                      ; preds = %land.lhs.true.123, %land.lhs.true.121
  %74 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call126 = call i32 @g_file_error_quark()
  %call127 = call i8* @gettext(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.40, i32 0, i32 0)) #5
  %75 = load i8*, i8** %filename.addr, align 8
  %call128 = call i8* @gimp_filename_to_utf8(i8* %75)
  %l_pixmap_format129 = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 2
  %76 = load i64, i64* %l_pixmap_format129, align 8
  %conv130 = trunc i64 %76 to i32
  %77 = load i32, i32* %depth, align 4
  %78 = load i32, i32* %bpp, align 4
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %74, i32 %call126, i32 24, i8* %call127, i8* %call128, i32 %conv130, i32 %77, i32 %78)
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.125, %land.lhs.true.123, %sw.epilog
  br label %out

out:                                              ; preds = %if.end.131, %if.then.56, %if.then.50, %if.then.45, %if.then.38, %if.then.33, %if.then.25, %if.then.15, %if.then.8, %if.then
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp, align 8
  %tobool132 = icmp ne %struct._IO_FILE* %79, null
  br i1 %tobool132, label %if.then.133, label %if.end.135

if.then.133:                                      ; preds = %out
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp, align 8
  %call134 = call i32 @fclose(%struct._IO_FILE* %80)
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.133, %out
  %81 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %xwdcolmap, align 8
  %tobool136 = icmp ne %struct.L_XWDCOLOR* %81, null
  br i1 %tobool136, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %if.end.135
  %82 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %xwdcolmap, align 8
  %83 = bitcast %struct.L_XWDCOLOR* %82 to i8*
  call void @g_free(i8* %83)
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.137, %if.end.135
  %84 = load i32, i32* %image_ID, align 4
  ret i32 %84
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
  %ofp = alloca %struct._IO_FILE*, align 8
  %drawable_type = alloca i32, align 4
  %retval1 = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call i32 @gimp_drawable_type(i32 %0)
  store i32 %call, i32* %drawable_type, align 4
  %1 = load i32, i32* %drawable_ID.addr, align 4
  %call2 = call i32 @gimp_drawable_has_alpha(i32 %1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.49, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call3)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %drawable_type, align 4
  switch i32 %2, label %sw.default [
    i32 4, label %sw.bb
    i32 2, label %sw.bb
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.50, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call4)
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb
  %3 = load i8*, i8** %filename.addr, align 8
  %call5 = call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0))
  store %struct._IO_FILE* %call5, %struct._IO_FILE** %ofp, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp, align 8
  %tobool6 = icmp ne %struct._IO_FILE* %4, null
  br i1 %tobool6, label %if.end.15, label %if.then.7

if.then.7:                                        ; preds = %sw.epilog
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call8 = call i32 @g_file_error_quark()
  %call9 = call i32* @__errno_location() #6
  %6 = load i32, i32* %call9, align 4
  %call10 = call i32 @g_file_error_from_errno(i32 %6)
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.52, i32 0, i32 0)) #5
  %7 = load i8*, i8** %filename.addr, align 8
  %call12 = call i8* @gimp_filename_to_utf8(i8* %7)
  %call13 = call i32* @__errno_location() #6
  %8 = load i32, i32* %call13, align 4
  %call14 = call i8* @g_strerror(i32 %8) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %5, i32 %call8, i32 %call10, i8* %call11, i8* %call12, i8* %call14)
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %sw.epilog
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i32 0, i32 0)) #5
  %9 = load i8*, i8** %filename.addr, align 8
  %call17 = call i8* @gimp_filename_to_utf8(i8* %9)
  %call18 = call i32 (i8*, ...) @gimp_progress_init_printf(i8* %call16, i8* %call17)
  %10 = load i32, i32* %drawable_type, align 4
  switch i32 %10, label %sw.default.25 [
    i32 4, label %sw.bb.19
    i32 2, label %sw.bb.21
    i32 0, label %sw.bb.23
  ]

sw.bb.19:                                         ; preds = %if.end.15
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp, align 8
  %12 = load i32, i32* %image_ID.addr, align 4
  %13 = load i32, i32* %drawable_ID.addr, align 4
  %call20 = call i32 @save_index(%struct._IO_FILE* %11, i32 %12, i32 %13, i32 0)
  store i32 %call20, i32* %retval1, align 4
  br label %sw.epilog.26

sw.bb.21:                                         ; preds = %if.end.15
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp, align 8
  %15 = load i32, i32* %image_ID.addr, align 4
  %16 = load i32, i32* %drawable_ID.addr, align 4
  %call22 = call i32 @save_index(%struct._IO_FILE* %14, i32 %15, i32 %16, i32 1)
  store i32 %call22, i32* %retval1, align 4
  br label %sw.epilog.26

sw.bb.23:                                         ; preds = %if.end.15
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp, align 8
  %18 = load i32, i32* %image_ID.addr, align 4
  %19 = load i32, i32* %drawable_ID.addr, align 4
  %call24 = call i32 @save_rgb(%struct._IO_FILE* %17, i32 %18, i32 %19)
  store i32 %call24, i32* %retval1, align 4
  br label %sw.epilog.26

sw.default.25:                                    ; preds = %if.end.15
  store i32 0, i32* %retval1, align 4
  br label %sw.epilog.26

sw.epilog.26:                                     ; preds = %sw.default.25, %sw.bb.23, %sw.bb.21, %sw.bb.19
  %call27 = call i32 @gimp_progress_update(double 1.000000e+00)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp, align 8
  %call28 = call i32 @fclose(%struct._IO_FILE* %20)
  %21 = load i32, i32* %retval1, align 4
  store i32 %21, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog.26, %if.then.7, %sw.default, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
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

; Function Attrs: nounwind uwtable
define internal void @read_xwd_header(%struct._IO_FILE* %ifp, %struct.L_XWDFILEHEADER* %xwdhdr) #0 {
entry:
  %ifp.addr = alloca %struct._IO_FILE*, align 8
  %xwdhdr.addr = alloca %struct.L_XWDFILEHEADER*, align 8
  %j = alloca i32, align 4
  %err = alloca i32, align 4
  %cp = alloca i64*, align 8
  store %struct._IO_FILE* %ifp, %struct._IO_FILE** %ifp.addr, align 8
  store %struct.L_XWDFILEHEADER* %xwdhdr, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %0 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %1 = bitcast %struct.L_XWDFILEHEADER* %0 to i64*
  store i64* %1, i64** %cp, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %j, align 4
  %conv = sext i32 %2 to i64
  %cmp = icmp ult i64 %conv, 25
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call = call i64 @read_card32(%struct._IO_FILE* %3, i32* %err)
  %4 = load i64*, i64** %cp, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %4, i32 1
  store i64* %incdec.ptr, i64** %cp, align 8
  store i64 %call, i64* %4, align 8
  %5 = load i32, i32* %err, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %j, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %7 = load i32, i32* %err, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %for.end
  %8 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_file_version = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %8, i32 0, i32 1
  store i64 0, i64* %l_file_version, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %for.end
  ret void
}

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

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

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @read_xwd_cols(%struct._IO_FILE* %ifp, %struct.L_XWDFILEHEADER* %xwdhdr, %struct.L_XWDCOLOR* %colormap) #0 {
entry:
  %ifp.addr = alloca %struct._IO_FILE*, align 8
  %xwdhdr.addr = alloca %struct.L_XWDFILEHEADER*, align 8
  %colormap.addr = alloca %struct.L_XWDCOLOR*, align 8
  %j = alloca i32, align 4
  %err = alloca i32, align 4
  %flag_is_bad = alloca i32, align 4
  %index_is_bad = alloca i32, align 4
  %indexed = alloca i32, align 4
  %colmappos = alloca i64, align 8
  store %struct._IO_FILE* %ifp, %struct._IO_FILE** %ifp.addr, align 8
  store %struct.L_XWDFILEHEADER* %xwdhdr, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  store %struct.L_XWDCOLOR* %colormap, %struct.L_XWDCOLOR** %colormap.addr, align 8
  store i32 0, i32* %err, align 4
  %0 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_pixmap_depth = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %0, i32 0, i32 3
  %1 = load i64, i64* %l_pixmap_depth, align 8
  %cmp = icmp ule i64 %1, 8
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %indexed, align 4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call = call i64 @ftell(%struct._IO_FILE* %2)
  store i64 %call, i64* %colmappos, align 8
  store i32 0, i32* %index_is_bad, align 4
  store i32 0, i32* %flag_is_bad, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %j, align 4
  %conv1 = sext i32 %3 to i64
  %4 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_ncolors = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %4, i32 0, i32 19
  %5 = load i64, i64* %l_ncolors, align 8
  %cmp2 = icmp ult i64 %conv1, %5
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call4 = call i64 @read_card32(%struct._IO_FILE* %6, i32* %err)
  %7 = load i32, i32* %j, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %colormap.addr, align 8
  %arrayidx = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %8, i64 %idxprom
  %l_pixel = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx, i32 0, i32 0
  store i64 %call4, i64* %l_pixel, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call5 = call zeroext i16 @read_card16(%struct._IO_FILE* %9, i32* %err)
  %10 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %colormap.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %11, i64 %idxprom6
  %l_red = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx7, i32 0, i32 1
  store i16 %call5, i16* %l_red, align 2
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call8 = call zeroext i16 @read_card16(%struct._IO_FILE* %12, i32* %err)
  %13 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %13 to i64
  %14 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %colormap.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %14, i64 %idxprom9
  %l_green = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx10, i32 0, i32 2
  store i16 %call8, i16* %l_green, align 2
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call11 = call zeroext i16 @read_card16(%struct._IO_FILE* %15, i32* %err)
  %16 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %16 to i64
  %17 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %colormap.addr, align 8
  %arrayidx13 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %17, i64 %idxprom12
  %l_blue = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx13, i32 0, i32 3
  store i16 %call11, i16* %l_blue, align 2
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call14 = call zeroext i8 @read_card8(%struct._IO_FILE* %18, i32* %err)
  %19 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %19 to i64
  %20 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %colormap.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %20, i64 %idxprom15
  %l_flags = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx16, i32 0, i32 4
  store i8 %call14, i8* %l_flags, align 1
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call17 = call zeroext i8 @read_card8(%struct._IO_FILE* %21, i32* %err)
  %22 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %22 to i64
  %23 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %colormap.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %23, i64 %idxprom18
  %l_pad = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx19, i32 0, i32 5
  store i8 %call17, i8* %l_pad, align 1
  %24 = load i32, i32* %indexed, align 4
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %25 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %25 to i64
  %26 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %colormap.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %26, i64 %idxprom20
  %l_pixel22 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx21, i32 0, i32 0
  %27 = load i64, i64* %l_pixel22, align 8
  %cmp23 = icmp ugt i64 %27, 255
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %28 = load i32, i32* %index_is_bad, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %index_is_bad, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  %29 = load i32, i32* %err, align 4
  %tobool25 = icmp ne i32 %29, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end
  br label %for.end

if.end.27:                                        ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %30 = load i32, i32* %j, align 4
  %inc28 = add nsw i32 %30, 1
  store i32 %inc28, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.26, %for.cond
  %31 = load i32, i32* %err, align 4
  %tobool29 = icmp ne i32 %31, 0
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %for.end
  %32 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_file_version = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %32, i32 0, i32 1
  store i64 0, i64* %l_file_version, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %for.end
  %33 = load i32, i32* %err, align 4
  %tobool32 = icmp ne i32 %33, 0
  br i1 %tobool32, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.31
  %34 = load i32, i32* %flag_is_bad, align 4
  %cmp33 = icmp eq i32 %34, 0
  br i1 %cmp33, label %land.lhs.true.35, label %if.end.39

land.lhs.true.35:                                 ; preds = %lor.lhs.false
  %35 = load i32, i32* %index_is_bad, align 4
  %cmp36 = icmp eq i32 %35, 0
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %land.lhs.true.35, %if.end.31
  br label %if.end.236

if.end.39:                                        ; preds = %land.lhs.true.35, %lor.lhs.false
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %37 = load i64, i64* %colmappos, align 8
  %call40 = call i32 @fseek(%struct._IO_FILE* %36, i64 %37, i32 0)
  store i32 0, i32* %index_is_bad, align 4
  store i32 0, i32* %flag_is_bad, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.85, %if.end.39
  %38 = load i32, i32* %j, align 4
  %conv42 = sext i32 %38 to i64
  %39 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_ncolors43 = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %39, i32 0, i32 19
  %40 = load i64, i64* %l_ncolors43, align 8
  %cmp44 = icmp ult i64 %conv42, %40
  br i1 %cmp44, label %for.body.46, label %for.end.87

for.body.46:                                      ; preds = %for.cond.41
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call47 = call i64 @read_card32(%struct._IO_FILE* %41, i32* %err)
  %42 = load i32, i32* %j, align 4
  %idxprom48 = sext i32 %42 to i64
  %43 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %colormap.addr, align 8
  %arrayidx49 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %43, i64 %idxprom48
  %l_pixel50 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx49, i32 0, i32 0
  store i64 %call47, i64* %l_pixel50, align 8
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call51 = call i64 @read_card32(%struct._IO_FILE* %44, i32* %err)
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call52 = call zeroext i16 @read_card16(%struct._IO_FILE* %45, i32* %err)
  %46 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %46 to i64
  %47 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %colormap.addr, align 8
  %arrayidx54 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %47, i64 %idxprom53
  %l_red55 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx54, i32 0, i32 1
  store i16 %call52, i16* %l_red55, align 2
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call56 = call zeroext i16 @read_card16(%struct._IO_FILE* %48, i32* %err)
  %49 = load i32, i32* %j, align 4
  %idxprom57 = sext i32 %49 to i64
  %50 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %colormap.addr, align 8
  %arrayidx58 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %50, i64 %idxprom57
  %l_green59 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx58, i32 0, i32 2
  store i16 %call56, i16* %l_green59, align 2
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call60 = call zeroext i16 @read_card16(%struct._IO_FILE* %51, i32* %err)
  %52 = load i32, i32* %j, align 4
  %idxprom61 = sext i32 %52 to i64
  %53 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %colormap.addr, align 8
  %arrayidx62 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %53, i64 %idxprom61
  %l_blue63 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx62, i32 0, i32 3
  store i16 %call60, i16* %l_blue63, align 2
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call64 = call zeroext i8 @read_card8(%struct._IO_FILE* %54, i32* %err)
  %55 = load i32, i32* %j, align 4
  %idxprom65 = sext i32 %55 to i64
  %56 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %colormap.addr, align 8
  %arrayidx66 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %56, i64 %idxprom65
  %l_flags67 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx66, i32 0, i32 4
  store i8 %call64, i8* %l_flags67, align 1
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call68 = call zeroext i8 @read_card8(%struct._IO_FILE* %57, i32* %err)
  %58 = load i32, i32* %j, align 4
  %idxprom69 = sext i32 %58 to i64
  %59 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %colormap.addr, align 8
  %arrayidx70 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %59, i64 %idxprom69
  %l_pad71 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx70, i32 0, i32 5
  store i8 %call68, i8* %l_pad71, align 1
  %60 = load i32, i32* %indexed, align 4
  %tobool72 = icmp ne i32 %60, 0
  br i1 %tobool72, label %land.lhs.true.73, label %if.end.81

land.lhs.true.73:                                 ; preds = %for.body.46
  %61 = load i32, i32* %j, align 4
  %idxprom74 = sext i32 %61 to i64
  %62 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %colormap.addr, align 8
  %arrayidx75 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %62, i64 %idxprom74
  %l_pixel76 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx75, i32 0, i32 0
  %63 = load i64, i64* %l_pixel76, align 8
  %cmp77 = icmp ugt i64 %63, 255
  br i1 %cmp77, label %if.then.79, label %if.end.81

if.then.79:                                       ; preds = %land.lhs.true.73
  %64 = load i32, i32* %index_is_bad, align 4
  %inc80 = add nsw i32 %64, 1
  store i32 %inc80, i32* %index_is_bad, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.79, %land.lhs.true.73, %for.body.46
  %65 = load i32, i32* %err, align 4
  %tobool82 = icmp ne i32 %65, 0
  br i1 %tobool82, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.end.81
  br label %for.end.87

if.end.84:                                        ; preds = %if.end.81
  br label %for.inc.85

for.inc.85:                                       ; preds = %if.end.84
  %66 = load i32, i32* %j, align 4
  %inc86 = add nsw i32 %66, 1
  store i32 %inc86, i32* %j, align 4
  br label %for.cond.41

for.end.87:                                       ; preds = %if.then.83, %for.cond.41
  %67 = load i32, i32* %err, align 4
  %tobool88 = icmp ne i32 %67, 0
  br i1 %tobool88, label %if.then.89, label %if.end.91

if.then.89:                                       ; preds = %for.end.87
  %68 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_file_version90 = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %68, i32 0, i32 1
  store i64 0, i64* %l_file_version90, align 8
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.89, %for.end.87
  %69 = load i32, i32* %err, align 4
  %tobool92 = icmp ne i32 %69, 0
  br i1 %tobool92, label %if.then.99, label %lor.lhs.false.93

lor.lhs.false.93:                                 ; preds = %if.end.91
  %70 = load i32, i32* %flag_is_bad, align 4
  %cmp94 = icmp eq i32 %70, 0
  br i1 %cmp94, label %land.lhs.true.96, label %if.end.100

land.lhs.true.96:                                 ; preds = %lor.lhs.false.93
  %71 = load i32, i32* %index_is_bad, align 4
  %cmp97 = icmp eq i32 %71, 0
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %land.lhs.true.96, %if.end.91
  br label %if.end.236

if.end.100:                                       ; preds = %land.lhs.true.96, %lor.lhs.false.93
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %73 = load i64, i64* %colmappos, align 8
  %call101 = call i32 @fseek(%struct._IO_FILE* %72, i64 %73, i32 0)
  store i32 0, i32* %index_is_bad, align 4
  store i32 0, i32* %flag_is_bad, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.inc.146, %if.end.100
  %74 = load i32, i32* %j, align 4
  %conv103 = sext i32 %74 to i64
  %75 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_ncolors104 = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %75, i32 0, i32 19
  %76 = load i64, i64* %l_ncolors104, align 8
  %cmp105 = icmp ult i64 %conv103, %76
  br i1 %cmp105, label %for.body.107, label %for.end.148

for.body.107:                                     ; preds = %for.cond.102
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call108 = call i64 @read_card32(%struct._IO_FILE* %77, i32* %err)
  %78 = load i32, i32* %j, align 4
  %idxprom109 = sext i32 %78 to i64
  %79 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %colormap.addr, align 8
  %arrayidx110 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %79, i64 %idxprom109
  %l_pixel111 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx110, i32 0, i32 0
  store i64 %call108, i64* %l_pixel111, align 8
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call112 = call zeroext i16 @read_card16(%struct._IO_FILE* %80, i32* %err)
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call113 = call zeroext i16 @read_card16(%struct._IO_FILE* %81, i32* %err)
  %82 = load i32, i32* %j, align 4
  %idxprom114 = sext i32 %82 to i64
  %83 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %colormap.addr, align 8
  %arrayidx115 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %83, i64 %idxprom114
  %l_red116 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx115, i32 0, i32 1
  store i16 %call113, i16* %l_red116, align 2
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call117 = call zeroext i16 @read_card16(%struct._IO_FILE* %84, i32* %err)
  %85 = load i32, i32* %j, align 4
  %idxprom118 = sext i32 %85 to i64
  %86 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %colormap.addr, align 8
  %arrayidx119 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %86, i64 %idxprom118
  %l_green120 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx119, i32 0, i32 2
  store i16 %call117, i16* %l_green120, align 2
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call121 = call zeroext i16 @read_card16(%struct._IO_FILE* %87, i32* %err)
  %88 = load i32, i32* %j, align 4
  %idxprom122 = sext i32 %88 to i64
  %89 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %colormap.addr, align 8
  %arrayidx123 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %89, i64 %idxprom122
  %l_blue124 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx123, i32 0, i32 3
  store i16 %call121, i16* %l_blue124, align 2
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call125 = call zeroext i8 @read_card8(%struct._IO_FILE* %90, i32* %err)
  %91 = load i32, i32* %j, align 4
  %idxprom126 = sext i32 %91 to i64
  %92 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %colormap.addr, align 8
  %arrayidx127 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %92, i64 %idxprom126
  %l_flags128 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx127, i32 0, i32 4
  store i8 %call125, i8* %l_flags128, align 1
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call129 = call zeroext i8 @read_card8(%struct._IO_FILE* %93, i32* %err)
  %94 = load i32, i32* %j, align 4
  %idxprom130 = sext i32 %94 to i64
  %95 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %colormap.addr, align 8
  %arrayidx131 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %95, i64 %idxprom130
  %l_pad132 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx131, i32 0, i32 5
  store i8 %call129, i8* %l_pad132, align 1
  %96 = load i32, i32* %indexed, align 4
  %tobool133 = icmp ne i32 %96, 0
  br i1 %tobool133, label %land.lhs.true.134, label %if.end.142

land.lhs.true.134:                                ; preds = %for.body.107
  %97 = load i32, i32* %j, align 4
  %idxprom135 = sext i32 %97 to i64
  %98 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %colormap.addr, align 8
  %arrayidx136 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %98, i64 %idxprom135
  %l_pixel137 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx136, i32 0, i32 0
  %99 = load i64, i64* %l_pixel137, align 8
  %cmp138 = icmp ugt i64 %99, 255
  br i1 %cmp138, label %if.then.140, label %if.end.142

if.then.140:                                      ; preds = %land.lhs.true.134
  %100 = load i32, i32* %index_is_bad, align 4
  %inc141 = add nsw i32 %100, 1
  store i32 %inc141, i32* %index_is_bad, align 4
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.140, %land.lhs.true.134, %for.body.107
  %101 = load i32, i32* %err, align 4
  %tobool143 = icmp ne i32 %101, 0
  br i1 %tobool143, label %if.then.144, label %if.end.145

if.then.144:                                      ; preds = %if.end.142
  br label %for.end.148

if.end.145:                                       ; preds = %if.end.142
  br label %for.inc.146

for.inc.146:                                      ; preds = %if.end.145
  %102 = load i32, i32* %j, align 4
  %inc147 = add nsw i32 %102, 1
  store i32 %inc147, i32* %j, align 4
  br label %for.cond.102

for.end.148:                                      ; preds = %if.then.144, %for.cond.102
  %103 = load i32, i32* %err, align 4
  %tobool149 = icmp ne i32 %103, 0
  br i1 %tobool149, label %if.then.150, label %if.end.152

if.then.150:                                      ; preds = %for.end.148
  %104 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_file_version151 = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %104, i32 0, i32 1
  store i64 0, i64* %l_file_version151, align 8
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.150, %for.end.148
  %105 = load i32, i32* %err, align 4
  %tobool153 = icmp ne i32 %105, 0
  br i1 %tobool153, label %if.then.160, label %lor.lhs.false.154

lor.lhs.false.154:                                ; preds = %if.end.152
  %106 = load i32, i32* %flag_is_bad, align 4
  %cmp155 = icmp eq i32 %106, 0
  br i1 %cmp155, label %land.lhs.true.157, label %if.end.161

land.lhs.true.157:                                ; preds = %lor.lhs.false.154
  %107 = load i32, i32* %index_is_bad, align 4
  %cmp158 = icmp eq i32 %107, 0
  br i1 %cmp158, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %land.lhs.true.157, %if.end.152
  br label %if.end.236

if.end.161:                                       ; preds = %land.lhs.true.157, %lor.lhs.false.154
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %109 = load i64, i64* %colmappos, align 8
  %call162 = call i32 @fseek(%struct._IO_FILE* %108, i64 %109, i32 0)
  store i32 0, i32* %index_is_bad, align 4
  store i32 0, i32* %flag_is_bad, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.163

for.cond.163:                                     ; preds = %for.inc.215, %if.end.161
  %110 = load i32, i32* %j, align 4
  %conv164 = sext i32 %110 to i64
  %111 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_ncolors165 = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %111, i32 0, i32 19
  %112 = load i64, i64* %l_ncolors165, align 8
  %cmp166 = icmp ult i64 %conv164, %112
  br i1 %cmp166, label %for.body.168, label %for.end.217

for.body.168:                                     ; preds = %for.cond.163
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call169 = call i64 @read_card32(%struct._IO_FILE* %113, i32* %err)
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call170 = call i64 @read_card32(%struct._IO_FILE* %114, i32* %err)
  %115 = load i32, i32* %j, align 4
  %idxprom171 = sext i32 %115 to i64
  %116 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %colormap.addr, align 8
  %arrayidx172 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %116, i64 %idxprom171
  %l_pixel173 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx172, i32 0, i32 0
  store i64 %call170, i64* %l_pixel173, align 8
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call174 = call i64 @read_card32(%struct._IO_FILE* %117, i32* %err)
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call175 = call i64 @read_card32(%struct._IO_FILE* %118, i32* %err)
  %conv176 = trunc i64 %call175 to i16
  %119 = load i32, i32* %j, align 4
  %idxprom177 = sext i32 %119 to i64
  %120 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %colormap.addr, align 8
  %arrayidx178 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %120, i64 %idxprom177
  %l_red179 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx178, i32 0, i32 1
  store i16 %conv176, i16* %l_red179, align 2
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call180 = call i64 @read_card32(%struct._IO_FILE* %121, i32* %err)
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call181 = call i64 @read_card32(%struct._IO_FILE* %122, i32* %err)
  %conv182 = trunc i64 %call181 to i16
  %123 = load i32, i32* %j, align 4
  %idxprom183 = sext i32 %123 to i64
  %124 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %colormap.addr, align 8
  %arrayidx184 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %124, i64 %idxprom183
  %l_green185 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx184, i32 0, i32 2
  store i16 %conv182, i16* %l_green185, align 2
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call186 = call i64 @read_card32(%struct._IO_FILE* %125, i32* %err)
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call187 = call i64 @read_card32(%struct._IO_FILE* %126, i32* %err)
  %conv188 = trunc i64 %call187 to i16
  %127 = load i32, i32* %j, align 4
  %idxprom189 = sext i32 %127 to i64
  %128 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %colormap.addr, align 8
  %arrayidx190 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %128, i64 %idxprom189
  %l_blue191 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx190, i32 0, i32 3
  store i16 %conv188, i16* %l_blue191, align 2
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call192 = call zeroext i8 @read_card8(%struct._IO_FILE* %129, i32* %err)
  %130 = load i32, i32* %j, align 4
  %idxprom193 = sext i32 %130 to i64
  %131 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %colormap.addr, align 8
  %arrayidx194 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %131, i64 %idxprom193
  %l_flags195 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx194, i32 0, i32 4
  store i8 %call192, i8* %l_flags195, align 1
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call196 = call zeroext i8 @read_card8(%struct._IO_FILE* %132, i32* %err)
  %133 = load i32, i32* %j, align 4
  %idxprom197 = sext i32 %133 to i64
  %134 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %colormap.addr, align 8
  %arrayidx198 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %134, i64 %idxprom197
  %l_pad199 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx198, i32 0, i32 5
  store i8 %call196, i8* %l_pad199, align 1
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call200 = call zeroext i16 @read_card16(%struct._IO_FILE* %135, i32* %err)
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call201 = call i64 @read_card32(%struct._IO_FILE* %136, i32* %err)
  %137 = load i32, i32* %indexed, align 4
  %tobool202 = icmp ne i32 %137, 0
  br i1 %tobool202, label %land.lhs.true.203, label %if.end.211

land.lhs.true.203:                                ; preds = %for.body.168
  %138 = load i32, i32* %j, align 4
  %idxprom204 = sext i32 %138 to i64
  %139 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %colormap.addr, align 8
  %arrayidx205 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %139, i64 %idxprom204
  %l_pixel206 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx205, i32 0, i32 0
  %140 = load i64, i64* %l_pixel206, align 8
  %cmp207 = icmp ugt i64 %140, 255
  br i1 %cmp207, label %if.then.209, label %if.end.211

if.then.209:                                      ; preds = %land.lhs.true.203
  %141 = load i32, i32* %index_is_bad, align 4
  %inc210 = add nsw i32 %141, 1
  store i32 %inc210, i32* %index_is_bad, align 4
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.209, %land.lhs.true.203, %for.body.168
  %142 = load i32, i32* %err, align 4
  %tobool212 = icmp ne i32 %142, 0
  br i1 %tobool212, label %if.then.213, label %if.end.214

if.then.213:                                      ; preds = %if.end.211
  br label %for.end.217

if.end.214:                                       ; preds = %if.end.211
  br label %for.inc.215

for.inc.215:                                      ; preds = %if.end.214
  %143 = load i32, i32* %j, align 4
  %inc216 = add nsw i32 %143, 1
  store i32 %inc216, i32* %j, align 4
  br label %for.cond.163

for.end.217:                                      ; preds = %if.then.213, %for.cond.163
  %144 = load i32, i32* %flag_is_bad, align 4
  %tobool218 = icmp ne i32 %144, 0
  br i1 %tobool218, label %if.then.221, label %lor.lhs.false.219

lor.lhs.false.219:                                ; preds = %for.end.217
  %145 = load i32, i32* %index_is_bad, align 4
  %tobool220 = icmp ne i32 %145, 0
  br i1 %tobool220, label %if.then.221, label %if.end.232

if.then.221:                                      ; preds = %lor.lhs.false.219, %for.end.217
  %call222 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.41, i32 0, i32 0))
  %146 = load i32, i32* %flag_is_bad, align 4
  %tobool223 = icmp ne i32 %146, 0
  br i1 %tobool223, label %if.then.224, label %if.end.226

if.then.224:                                      ; preds = %if.then.221
  %call225 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0))
  br label %if.end.226

if.end.226:                                       ; preds = %if.then.224, %if.then.221
  %147 = load i32, i32* %index_is_bad, align 4
  %tobool227 = icmp ne i32 %147, 0
  br i1 %tobool227, label %if.then.228, label %if.end.230

if.then.228:                                      ; preds = %if.end.226
  %call229 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0))
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.228, %if.end.226
  %call231 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0))
  br label %if.end.232

if.end.232:                                       ; preds = %if.end.230, %lor.lhs.false.219
  %148 = load i32, i32* %err, align 4
  %tobool233 = icmp ne i32 %148, 0
  br i1 %tobool233, label %if.then.234, label %if.end.236

if.then.234:                                      ; preds = %if.end.232
  %149 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_file_version235 = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %149, i32 0, i32 1
  store i64 0, i64* %l_file_version235, align 8
  br label %if.end.236

if.end.236:                                       ; preds = %if.then.38, %if.then.99, %if.then.160, %if.then.234, %if.end.232
  ret void
}

declare i32 @gimp_progress_init_printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @load_xwd_f2_d1_b1(i8* %filename, %struct._IO_FILE* %ifp, %struct.L_XWDFILEHEADER* %xwdhdr, %struct.L_XWDCOLOR* %xwdcolmap) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %ifp.addr = alloca %struct._IO_FILE*, align 8
  %xwdhdr.addr = alloca %struct.L_XWDFILEHEADER*, align 8
  %xwdcolmap.addr = alloca %struct.L_XWDCOLOR*, align 8
  %pix8 = alloca i32, align 4
  %dest = alloca i8*, align 8
  %src = alloca i8*, align 8
  %c1 = alloca i8, align 1
  %c2 = alloca i8, align 1
  %c3 = alloca i8, align 1
  %c4 = alloca i8, align 1
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %scan_lines = alloca i32, align 4
  %tile_height = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ncols = alloca i32, align 4
  %temp = alloca i8*, align 8
  %bit2byte = alloca [2048 x i8], align 16
  %data = alloca i8*, align 8
  %scanline = alloca i8*, align 8
  %err = alloca i32, align 4
  %layer_ID = alloca i32, align 4
  %image_ID = alloca i32, align 4
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._IO_FILE* %ifp, %struct._IO_FILE** %ifp.addr, align 8
  store %struct.L_XWDFILEHEADER* %xwdhdr, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  store %struct.L_XWDCOLOR* %xwdcolmap, %struct.L_XWDCOLOR** %xwdcolmap.addr, align 8
  store i32 0, i32* %err, align 4
  %0 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_pixmap_width = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %0, i32 0, i32 4
  %1 = load i64, i64* %l_pixmap_width, align 8
  %conv = trunc i64 %1 to i32
  store i32 %conv, i32* %width, align 4
  %2 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_pixmap_height = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %2, i32 0, i32 5
  %3 = load i64, i64* %l_pixmap_height, align 8
  %conv1 = trunc i64 %3 to i32
  store i32 %conv1, i32* %height, align 4
  %4 = load i8*, i8** %filename.addr, align 8
  %5 = load i32, i32* %width, align 4
  %6 = load i32, i32* %height, align 4
  %call = call i32 @create_new_image(i8* %4, i32 %5, i32 %6, i32 2, i32* %layer_ID, %struct._GimpDrawable** %drawable, %struct._GimpPixelRgn* %pixel_rgn)
  store i32 %call, i32* %image_ID, align 4
  %call2 = call i32 @gimp_tile_height() #6
  store i32 %call2, i32* %tile_height, align 4
  %7 = load i32, i32* %tile_height, align 4
  %8 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %7, %8
  %conv3 = sext i32 %mul to i64
  %call4 = call noalias i8* @g_malloc(i64 %conv3)
  store i8* %call4, i8** %data, align 8
  %9 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_bytes_per_line = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %9, i32 0, i32 12
  %10 = load i64, i64* %l_bytes_per_line, align 8
  %add = add i64 %10, 8
  %call5 = call noalias i8* @g_malloc_n(i64 %add, i64 1)
  store i8* %call5, i8** %scanline, align 8
  %11 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_colormap_entries = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %11, i32 0, i32 18
  %12 = load i64, i64* %l_colormap_entries, align 8
  %conv6 = trunc i64 %12 to i32
  store i32 %conv6, i32* %ncols, align 4
  %13 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_ncolors = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %13, i32 0, i32 19
  %14 = load i64, i64* %l_ncolors, align 8
  %15 = load i32, i32* %ncols, align 4
  %conv7 = sext i32 %15 to i64
  %cmp = icmp ult i64 %14, %conv7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_ncolors9 = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %16, i32 0, i32 19
  %17 = load i64, i64* %l_ncolors9, align 8
  %conv10 = trunc i64 %17 to i32
  store i32 %conv10, i32* %ncols, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load i32, i32* %ncols, align 4
  %cmp11 = icmp slt i32 %18, 2
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end
  %19 = load i32, i32* %image_ID, align 4
  call void @set_bw_color_table(i32 %19)
  br label %if.end.14

if.else:                                          ; preds = %if.end
  %20 = load i32, i32* %image_ID, align 4
  %21 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %22 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %xwdcolmap.addr, align 8
  call void @set_color_table(i32 %20, %struct.L_XWDFILEHEADER* %21, %struct.L_XWDCOLOR* %22)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.13
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %bit2byte, i32 0, i32 0
  store i8* %arraydecay, i8** %temp, align 8
  %23 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_bitmap_bit_order = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %23, i32 0, i32 9
  %24 = load i64, i64* %l_bitmap_bit_order, align 8
  %tobool = icmp ne i64 %24, 0
  br i1 %tobool, label %if.else.28, label %if.then.15

if.then.15:                                       ; preds = %if.end.14
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.25, %if.then.15
  %25 = load i32, i32* %j, align 4
  %cmp16 = icmp slt i32 %25, 256
  br i1 %cmp16, label %for.body, label %for.end.27

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc, %for.body
  %26 = load i32, i32* %i, align 4
  %cmp19 = icmp slt i32 %26, 8
  br i1 %cmp19, label %for.body.21, label %for.end

for.body.21:                                      ; preds = %for.cond.18
  %27 = load i32, i32* %j, align 4
  %28 = load i32, i32* %i, align 4
  %shl = shl i32 1, %28
  %and = and i32 %27, %shl
  %cmp22 = icmp ne i32 %and, 0
  %conv23 = zext i1 %cmp22 to i32
  %conv24 = trunc i32 %conv23 to i8
  %29 = load i8*, i8** %temp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr, i8** %temp, align 8
  store i8 %conv24, i8* %29, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.21
  %30 = load i32, i32* %i, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.18

for.end:                                          ; preds = %for.cond.18
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.end
  %31 = load i32, i32* %j, align 4
  %inc26 = add nsw i32 %31, 1
  store i32 %inc26, i32* %j, align 4
  br label %for.cond

for.end.27:                                       ; preds = %for.cond
  br label %if.end.48

if.else.28:                                       ; preds = %if.end.14
  store i32 0, i32* %j, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.45, %if.else.28
  %32 = load i32, i32* %j, align 4
  %cmp30 = icmp slt i32 %32, 256
  br i1 %cmp30, label %for.body.32, label %for.end.47

for.body.32:                                      ; preds = %for.cond.29
  store i32 7, i32* %i, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.43, %for.body.32
  %33 = load i32, i32* %i, align 4
  %cmp34 = icmp sge i32 %33, 0
  br i1 %cmp34, label %for.body.36, label %for.end.44

for.body.36:                                      ; preds = %for.cond.33
  %34 = load i32, i32* %j, align 4
  %35 = load i32, i32* %i, align 4
  %shl37 = shl i32 1, %35
  %and38 = and i32 %34, %shl37
  %cmp39 = icmp ne i32 %and38, 0
  %conv40 = zext i1 %cmp39 to i32
  %conv41 = trunc i32 %conv40 to i8
  %36 = load i8*, i8** %temp, align 8
  %incdec.ptr42 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr42, i8** %temp, align 8
  store i8 %conv41, i8* %36, align 1
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.body.36
  %37 = load i32, i32* %i, align 4
  %dec = add nsw i32 %37, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.33

for.end.44:                                       ; preds = %for.cond.33
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.end.44
  %38 = load i32, i32* %j, align 4
  %inc46 = add nsw i32 %38, 1
  store i32 %inc46, i32* %j, align 4
  br label %for.cond.29

for.end.47:                                       ; preds = %for.cond.29
  br label %if.end.48

if.end.48:                                        ; preds = %for.end.47, %for.end.27
  %39 = load i8*, i8** %data, align 8
  store i8* %39, i8** %dest, align 8
  store i32 0, i32* %scan_lines, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.133, %if.end.48
  %40 = load i32, i32* %i, align 4
  %41 = load i32, i32* %height, align 4
  %cmp50 = icmp slt i32 %40, %41
  br i1 %cmp50, label %for.body.52, label %for.end.135

for.body.52:                                      ; preds = %for.cond.49
  %42 = load i8*, i8** %scanline, align 8
  %43 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_bytes_per_line53 = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %43, i32 0, i32 12
  %44 = load i64, i64* %l_bytes_per_line53, align 8
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call54 = call i64 @fread(i8* %42, i64 %44, i64 1, %struct._IO_FILE* %45)
  %cmp55 = icmp ne i64 %call54, 1
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %for.body.52
  store i32 1, i32* %err, align 4
  br label %for.end.135

if.end.58:                                        ; preds = %for.body.52
  %46 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_bitmap_bit_order59 = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %46, i32 0, i32 9
  %47 = load i64, i64* %l_bitmap_bit_order59, align 8
  %48 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_byte_order = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %48, i32 0, i32 7
  %49 = load i64, i64* %l_byte_order, align 8
  %cmp60 = icmp ne i64 %47, %49
  br i1 %cmp60, label %if.then.62, label %if.end.87

if.then.62:                                       ; preds = %if.end.58
  %50 = load i8*, i8** %scanline, align 8
  store i8* %50, i8** %src, align 8
  %51 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_bitmap_unit = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %51, i32 0, i32 8
  %52 = load i64, i64* %l_bitmap_unit, align 8
  switch i64 %52, label %sw.epilog [
    i64 16, label %sw.bb
    i64 32, label %sw.bb.70
  ]

sw.bb:                                            ; preds = %if.then.62
  %53 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_bytes_per_line63 = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %53, i32 0, i32 12
  %54 = load i64, i64* %l_bytes_per_line63, align 8
  %conv64 = trunc i64 %54 to i32
  store i32 %conv64, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb
  %55 = load i32, i32* %j, align 4
  %cmp65 = icmp sgt i32 %55, 0
  br i1 %cmp65, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %56 = load i8*, i8** %src, align 8
  %arrayidx = getelementptr inbounds i8, i8* %56, i64 0
  %57 = load i8, i8* %arrayidx, align 1
  store i8 %57, i8* %c1, align 1
  %58 = load i8*, i8** %src, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %58, i64 1
  %59 = load i8, i8* %arrayidx67, align 1
  store i8 %59, i8* %c2, align 1
  %60 = load i8, i8* %c2, align 1
  %61 = load i8*, i8** %src, align 8
  %incdec.ptr68 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr68, i8** %src, align 8
  store i8 %60, i8* %61, align 1
  %62 = load i8, i8* %c1, align 1
  %63 = load i8*, i8** %src, align 8
  %incdec.ptr69 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr69, i8** %src, align 8
  store i8 %62, i8* %63, align 1
  %64 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %64, 2
  store i32 %sub, i32* %j, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %sw.epilog

sw.bb.70:                                         ; preds = %if.then.62
  %65 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_bytes_per_line71 = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %65, i32 0, i32 12
  %66 = load i64, i64* %l_bytes_per_line71, align 8
  %conv72 = trunc i64 %66 to i32
  store i32 %conv72, i32* %j, align 4
  br label %while.cond.73

while.cond.73:                                    ; preds = %while.body.76, %sw.bb.70
  %67 = load i32, i32* %j, align 4
  %cmp74 = icmp sgt i32 %67, 0
  br i1 %cmp74, label %while.body.76, label %while.end.86

while.body.76:                                    ; preds = %while.cond.73
  %68 = load i8*, i8** %src, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %68, i64 0
  %69 = load i8, i8* %arrayidx77, align 1
  store i8 %69, i8* %c1, align 1
  %70 = load i8*, i8** %src, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %70, i64 1
  %71 = load i8, i8* %arrayidx78, align 1
  store i8 %71, i8* %c2, align 1
  %72 = load i8*, i8** %src, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %72, i64 2
  %73 = load i8, i8* %arrayidx79, align 1
  store i8 %73, i8* %c3, align 1
  %74 = load i8*, i8** %src, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %74, i64 3
  %75 = load i8, i8* %arrayidx80, align 1
  store i8 %75, i8* %c4, align 1
  %76 = load i8, i8* %c4, align 1
  %77 = load i8*, i8** %src, align 8
  %incdec.ptr81 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %incdec.ptr81, i8** %src, align 8
  store i8 %76, i8* %77, align 1
  %78 = load i8, i8* %c3, align 1
  %79 = load i8*, i8** %src, align 8
  %incdec.ptr82 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %incdec.ptr82, i8** %src, align 8
  store i8 %78, i8* %79, align 1
  %80 = load i8, i8* %c2, align 1
  %81 = load i8*, i8** %src, align 8
  %incdec.ptr83 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %incdec.ptr83, i8** %src, align 8
  store i8 %80, i8* %81, align 1
  %82 = load i8, i8* %c1, align 1
  %83 = load i8*, i8** %src, align 8
  %incdec.ptr84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %incdec.ptr84, i8** %src, align 8
  store i8 %82, i8* %83, align 1
  %84 = load i32, i32* %j, align 4
  %sub85 = sub nsw i32 %84, 4
  store i32 %sub85, i32* %j, align 4
  br label %while.cond.73

while.end.86:                                     ; preds = %while.cond.73
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.62, %while.end.86, %while.end
  br label %if.end.87

if.end.87:                                        ; preds = %sw.epilog, %if.end.58
  %85 = load i8*, i8** %scanline, align 8
  store i8* %85, i8** %src, align 8
  %86 = load i32, i32* %width, align 4
  store i32 %86, i32* %j, align 4
  br label %while.cond.88

while.cond.88:                                    ; preds = %while.body.91, %if.end.87
  %87 = load i32, i32* %j, align 4
  %cmp89 = icmp sge i32 %87, 8
  br i1 %cmp89, label %while.body.91, label %while.end.98

while.body.91:                                    ; preds = %while.cond.88
  %88 = load i8*, i8** %src, align 8
  %incdec.ptr92 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %incdec.ptr92, i8** %src, align 8
  %89 = load i8, i8* %88, align 1
  %conv93 = zext i8 %89 to i32
  store i32 %conv93, i32* %pix8, align 4
  %90 = load i8*, i8** %dest, align 8
  %arraydecay94 = getelementptr inbounds [2048 x i8], [2048 x i8]* %bit2byte, i32 0, i32 0
  %91 = load i32, i32* %pix8, align 4
  %mul95 = mul nsw i32 %91, 8
  %idx.ext = sext i32 %mul95 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay94, i64 %idx.ext
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %90, i8* %add.ptr, i64 8, i32 1, i1 false)
  %92 = load i8*, i8** %dest, align 8
  %add.ptr96 = getelementptr inbounds i8, i8* %92, i64 8
  store i8* %add.ptr96, i8** %dest, align 8
  %93 = load i32, i32* %j, align 4
  %sub97 = sub nsw i32 %93, 8
  store i32 %sub97, i32* %j, align 4
  br label %while.cond.88

while.end.98:                                     ; preds = %while.cond.88
  %94 = load i32, i32* %j, align 4
  %cmp99 = icmp sgt i32 %94, 0
  br i1 %cmp99, label %if.then.101, label %if.end.111

if.then.101:                                      ; preds = %while.end.98
  %95 = load i8*, i8** %src, align 8
  %incdec.ptr102 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %incdec.ptr102, i8** %src, align 8
  %96 = load i8, i8* %95, align 1
  %conv103 = zext i8 %96 to i32
  store i32 %conv103, i32* %pix8, align 4
  %97 = load i8*, i8** %dest, align 8
  %arraydecay104 = getelementptr inbounds [2048 x i8], [2048 x i8]* %bit2byte, i32 0, i32 0
  %98 = load i32, i32* %pix8, align 4
  %mul105 = mul nsw i32 %98, 8
  %idx.ext106 = sext i32 %mul105 to i64
  %add.ptr107 = getelementptr inbounds i8, i8* %arraydecay104, i64 %idx.ext106
  %99 = load i32, i32* %j, align 4
  %conv108 = sext i32 %99 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %97, i8* %add.ptr107, i64 %conv108, i32 1, i1 false)
  %100 = load i32, i32* %j, align 4
  %101 = load i8*, i8** %dest, align 8
  %idx.ext109 = sext i32 %100 to i64
  %add.ptr110 = getelementptr inbounds i8, i8* %101, i64 %idx.ext109
  store i8* %add.ptr110, i8** %dest, align 8
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.101, %while.end.98
  %102 = load i32, i32* %scan_lines, align 4
  %inc112 = add nsw i32 %102, 1
  store i32 %inc112, i32* %scan_lines, align 4
  %103 = load i32, i32* %i, align 4
  %rem = srem i32 %103, 20
  %cmp113 = icmp eq i32 %rem, 0
  br i1 %cmp113, label %if.then.115, label %if.end.120

if.then.115:                                      ; preds = %if.end.111
  %104 = load i32, i32* %i, align 4
  %add116 = add nsw i32 %104, 1
  %conv117 = sitofp i32 %add116 to double
  %105 = load i32, i32* %height, align 4
  %conv118 = sitofp i32 %105 to double
  %div = fdiv double %conv117, %conv118
  %call119 = call i32 @gimp_progress_update(double %div)
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.115, %if.end.111
  %106 = load i32, i32* %scan_lines, align 4
  %107 = load i32, i32* %tile_height, align 4
  %cmp121 = icmp eq i32 %106, %107
  br i1 %cmp121, label %if.then.126, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.120
  %108 = load i32, i32* %i, align 4
  %add123 = add nsw i32 %108, 1
  %109 = load i32, i32* %height, align 4
  %cmp124 = icmp eq i32 %add123, %109
  br i1 %cmp124, label %if.then.126, label %if.end.129

if.then.126:                                      ; preds = %lor.lhs.false, %if.end.120
  %110 = load i8*, i8** %data, align 8
  %111 = load i32, i32* %i, align 4
  %112 = load i32, i32* %scan_lines, align 4
  %sub127 = sub nsw i32 %111, %112
  %add128 = add nsw i32 %sub127, 1
  %113 = load i32, i32* %width, align 4
  %114 = load i32, i32* %scan_lines, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %110, i32 0, i32 %add128, i32 %113, i32 %114)
  store i32 0, i32* %scan_lines, align 4
  %115 = load i8*, i8** %data, align 8
  store i8* %115, i8** %dest, align 8
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.126, %lor.lhs.false
  %116 = load i32, i32* %err, align 4
  %tobool130 = icmp ne i32 %116, 0
  br i1 %tobool130, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %if.end.129
  br label %for.end.135

if.end.132:                                       ; preds = %if.end.129
  br label %for.inc.133

for.inc.133:                                      ; preds = %if.end.132
  %117 = load i32, i32* %i, align 4
  %inc134 = add nsw i32 %117, 1
  store i32 %inc134, i32* %i, align 4
  br label %for.cond.49

for.end.135:                                      ; preds = %if.then.131, %if.then.57, %for.cond.49
  %118 = load i8*, i8** %data, align 8
  call void @g_free(i8* %118)
  %119 = load i8*, i8** %scanline, align 8
  call void @g_free(i8* %119)
  %120 = load i32, i32* %err, align 4
  %tobool136 = icmp ne i32 %120, 0
  br i1 %tobool136, label %if.then.137, label %if.end.139

if.then.137:                                      ; preds = %for.end.135
  %call138 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call138)
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.137, %for.end.135
  %121 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %121)
  %122 = load i32, i32* %err, align 4
  %tobool140 = icmp ne i32 %122, 0
  br i1 %tobool140, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.139
  br label %cond.end

cond.false:                                       ; preds = %if.end.139
  %123 = load i32, i32* %image_ID, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %123, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @load_xwd_f1_d24_b1(i8* %filename, %struct._IO_FILE* %ifp, %struct.L_XWDFILEHEADER* %xwdhdr, %struct.L_XWDCOLOR* %xwdcolmap, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %ifp.addr = alloca %struct._IO_FILE*, align 8
  %xwdhdr.addr = alloca %struct.L_XWDFILEHEADER*, align 8
  %xwdcolmap.addr = alloca %struct.L_XWDCOLOR*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %dest = alloca i8*, align 8
  %outmask = alloca i8, align 1
  %inmask = alloca i8, align 1
  %do_reverse = alloca i8, align 1
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %plane = alloca i32, align 4
  %fromright = alloca i32, align 4
  %tile_height = alloca i32, align 4
  %tile_start = alloca i32, align 4
  %tile_end = alloca i32, align 4
  %indexed = alloca i32, align 4
  %bytes_per_pixel = alloca i32, align 4
  %maxred = alloca i32, align 4
  %maxgreen = alloca i32, align 4
  %maxblue = alloca i32, align 4
  %red = alloca i32, align 4
  %green = alloca i32, align 4
  %blue = alloca i32, align 4
  %ncols = alloca i32, align 4
  %standard_rgb = alloca i32, align 4
  %data_offset = alloca i64, align 8
  %plane_offset = alloca i64, align 8
  %tile_offset = alloca i64, align 8
  %redmask = alloca i64, align 8
  %greenmask = alloca i64, align 8
  %bluemask = alloca i64, align 8
  %redshift = alloca i32, align 4
  %greenshift = alloca i32, align 4
  %blueshift = alloca i32, align 4
  %g = alloca i64, align 8
  %redmap = alloca [256 x i8], align 16
  %greenmap = alloca [256 x i8], align 16
  %bluemap = alloca [256 x i8], align 16
  %bit_reverse = alloca [256 x i8], align 16
  %xwddata = alloca i8*, align 8
  %xwdin = alloca i8*, align 8
  %data = alloca i8*, align 8
  %pixelval = alloca i64, align 8
  %pixel_map = alloca %struct.PIXEL_MAP, align 8
  %err = alloca i32, align 4
  %layer_ID = alloca i32, align 4
  %image_ID = alloca i32, align 4
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._IO_FILE* %ifp, %struct._IO_FILE** %ifp.addr, align 8
  store %struct.L_XWDFILEHEADER* %xwdhdr, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  store %struct.L_XWDCOLOR* %xwdcolmap, %struct.L_XWDCOLOR** %xwdcolmap.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %err, align 4
  %0 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_bytes_per_line = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %0, i32 0, i32 12
  %1 = load i64, i64* %l_bytes_per_line, align 8
  %call = call noalias i8* @g_malloc(i64 %1)
  store i8* %call, i8** %xwddata, align 8
  %2 = load i8*, i8** %xwddata, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_pixmap_width = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %3, i32 0, i32 4
  %4 = load i64, i64* %l_pixmap_width, align 8
  %conv = trunc i64 %4 to i32
  store i32 %conv, i32* %width, align 4
  %5 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_pixmap_height = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %5, i32 0, i32 5
  %6 = load i64, i64* %l_pixmap_height, align 8
  %conv1 = trunc i64 %6 to i32
  store i32 %conv1, i32* %height, align 4
  %7 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_pixmap_depth = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %7, i32 0, i32 3
  %8 = load i64, i64* %l_pixmap_depth, align 8
  %cmp2 = icmp ule i64 %8, 8
  %conv3 = zext i1 %cmp2 to i32
  store i32 %conv3, i32* %indexed, align 4
  %9 = load i32, i32* %indexed, align 4
  %tobool = icmp ne i32 %9, 0
  %cond = select i1 %tobool, i32 1, i32 3
  store i32 %cond, i32* %bytes_per_pixel, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.18, %if.end
  %10 = load i32, i32* %j, align 4
  %cmp4 = icmp slt i32 %10, 256
  br i1 %cmp4, label %for.body, label %for.end.20

for.body:                                         ; preds = %for.cond
  store i8 0, i8* %inmask, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %11 = load i32, i32* %i, align 4
  %cmp7 = icmp slt i32 %11, 8
  br i1 %cmp7, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.6
  %12 = load i8, i8* %inmask, align 1
  %conv10 = zext i8 %12 to i32
  %shl = shl i32 %conv10, 1
  %conv11 = trunc i32 %shl to i8
  store i8 %conv11, i8* %inmask, align 1
  %13 = load i32, i32* %j, align 4
  %14 = load i32, i32* %i, align 4
  %shl12 = shl i32 1, %14
  %and = and i32 %13, %shl12
  %tobool13 = icmp ne i32 %and, 0
  br i1 %tobool13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %for.body.9
  %15 = load i8, i8* %inmask, align 1
  %conv15 = zext i8 %15 to i32
  %or = or i32 %conv15, 1
  %conv16 = trunc i32 %or to i8
  store i8 %conv16, i8* %inmask, align 1
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %for.body.9
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  %17 = load i8, i8* %inmask, align 1
  %18 = load i32, i32* %j, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %bit_reverse, i32 0, i64 %idxprom
  store i8 %17, i8* %arrayidx, align 1
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.end
  %19 = load i32, i32* %j, align 4
  %inc19 = add nsw i32 %19, 1
  store i32 %inc19, i32* %j, align 4
  br label %for.cond

for.end.20:                                       ; preds = %for.cond
  %20 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_red_mask = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %20, i32 0, i32 14
  %21 = load i64, i64* %l_red_mask, align 8
  store i64 %21, i64* %redmask, align 8
  %22 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_green_mask = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %22, i32 0, i32 15
  %23 = load i64, i64* %l_green_mask, align 8
  store i64 %23, i64* %greenmask, align 8
  %24 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_blue_mask = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %24, i32 0, i32 16
  %25 = load i64, i64* %l_blue_mask, align 8
  store i64 %25, i64* %bluemask, align 8
  %26 = load i64, i64* %redmask, align 8
  %cmp21 = icmp eq i64 %26, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %for.end.20
  store i64 16711680, i64* %redmask, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %for.end.20
  %27 = load i64, i64* %greenmask, align 8
  %cmp25 = icmp eq i64 %27, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.24
  store i64 65280, i64* %greenmask, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.end.24
  %28 = load i64, i64* %bluemask, align 8
  %cmp29 = icmp eq i64 %28, 0
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.28
  store i64 255, i64* %bluemask, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.28
  %29 = load i64, i64* %redmask, align 8
  %cmp33 = icmp eq i64 %29, 16711680
  br i1 %cmp33, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.end.32
  %30 = load i64, i64* %greenmask, align 8
  %cmp35 = icmp eq i64 %30, 65280
  br i1 %cmp35, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %31 = load i64, i64* %bluemask, align 8
  %cmp37 = icmp eq i64 %31, 255
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %if.end.32
  %32 = phi i1 [ false, %land.lhs.true ], [ false, %if.end.32 ], [ %cmp37, %land.rhs ]
  %land.ext = zext i1 %32 to i32
  store i32 %land.ext, i32* %standard_rgb, align 4
  store i32 0, i32* %blueshift, align 4
  store i32 0, i32* %greenshift, align 4
  store i32 0, i32* %redshift, align 4
  %33 = load i32, i32* %standard_rgb, align 4
  %tobool39 = icmp ne i32 %33, 0
  br i1 %tobool39, label %if.end.140, label %if.then.40

if.then.40:                                       ; preds = %land.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.40
  %34 = load i32, i32* %redshift, align 4
  %shl41 = shl i32 1, %34
  %conv42 = sext i32 %shl41 to i64
  %35 = load i64, i64* %redmask, align 8
  %and43 = and i64 %conv42, %35
  %cmp44 = icmp eq i64 %and43, 0
  br i1 %cmp44, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %36 = load i32, i32* %redshift, align 4
  %inc46 = add i32 %36, 1
  store i32 %inc46, i32* %redshift, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.47

while.cond.47:                                    ; preds = %while.body.53, %while.end
  %37 = load i32, i32* %greenshift, align 4
  %shl48 = shl i32 1, %37
  %conv49 = sext i32 %shl48 to i64
  %38 = load i64, i64* %greenmask, align 8
  %and50 = and i64 %conv49, %38
  %cmp51 = icmp eq i64 %and50, 0
  br i1 %cmp51, label %while.body.53, label %while.end.55

while.body.53:                                    ; preds = %while.cond.47
  %39 = load i32, i32* %greenshift, align 4
  %inc54 = add i32 %39, 1
  store i32 %inc54, i32* %greenshift, align 4
  br label %while.cond.47

while.end.55:                                     ; preds = %while.cond.47
  br label %while.cond.56

while.cond.56:                                    ; preds = %while.body.62, %while.end.55
  %40 = load i32, i32* %blueshift, align 4
  %shl57 = shl i32 1, %40
  %conv58 = sext i32 %shl57 to i64
  %41 = load i64, i64* %bluemask, align 8
  %and59 = and i64 %conv58, %41
  %cmp60 = icmp eq i64 %and59, 0
  br i1 %cmp60, label %while.body.62, label %while.end.64

while.body.62:                                    ; preds = %while.cond.56
  %42 = load i32, i32* %blueshift, align 4
  %inc63 = add i32 %42, 1
  store i32 %inc63, i32* %blueshift, align 4
  br label %while.cond.56

while.end.64:                                     ; preds = %while.cond.56
  store i32 0, i32* %maxred, align 4
  br label %while.cond.65

while.cond.65:                                    ; preds = %while.body.67, %while.end.64
  %43 = load i64, i64* %redmask, align 8
  %44 = load i32, i32* %redshift, align 4
  %45 = load i32, i32* %maxred, align 4
  %add = add i32 %44, %45
  %sh_prom = zext i32 %add to i64
  %shr = lshr i64 %43, %sh_prom
  %tobool66 = icmp ne i64 %shr, 0
  br i1 %tobool66, label %while.body.67, label %while.end.69

while.body.67:                                    ; preds = %while.cond.65
  %46 = load i32, i32* %maxred, align 4
  %inc68 = add nsw i32 %46, 1
  store i32 %inc68, i32* %maxred, align 4
  br label %while.cond.65

while.end.69:                                     ; preds = %while.cond.65
  %47 = load i32, i32* %maxred, align 4
  %shl70 = shl i32 1, %47
  %sub = sub nsw i32 %shl70, 1
  store i32 %sub, i32* %maxred, align 4
  store i32 0, i32* %maxgreen, align 4
  br label %while.cond.71

while.cond.71:                                    ; preds = %while.body.76, %while.end.69
  %48 = load i64, i64* %greenmask, align 8
  %49 = load i32, i32* %greenshift, align 4
  %50 = load i32, i32* %maxgreen, align 4
  %add72 = add i32 %49, %50
  %sh_prom73 = zext i32 %add72 to i64
  %shr74 = lshr i64 %48, %sh_prom73
  %tobool75 = icmp ne i64 %shr74, 0
  br i1 %tobool75, label %while.body.76, label %while.end.78

while.body.76:                                    ; preds = %while.cond.71
  %51 = load i32, i32* %maxgreen, align 4
  %inc77 = add nsw i32 %51, 1
  store i32 %inc77, i32* %maxgreen, align 4
  br label %while.cond.71

while.end.78:                                     ; preds = %while.cond.71
  %52 = load i32, i32* %maxgreen, align 4
  %shl79 = shl i32 1, %52
  %sub80 = sub nsw i32 %shl79, 1
  store i32 %sub80, i32* %maxgreen, align 4
  store i32 0, i32* %maxblue, align 4
  br label %while.cond.81

while.cond.81:                                    ; preds = %while.body.86, %while.end.78
  %53 = load i64, i64* %bluemask, align 8
  %54 = load i32, i32* %blueshift, align 4
  %55 = load i32, i32* %maxblue, align 4
  %add82 = add i32 %54, %55
  %sh_prom83 = zext i32 %add82 to i64
  %shr84 = lshr i64 %53, %sh_prom83
  %tobool85 = icmp ne i64 %shr84, 0
  br i1 %tobool85, label %while.body.86, label %while.end.88

while.body.86:                                    ; preds = %while.cond.81
  %56 = load i32, i32* %maxblue, align 4
  %inc87 = add nsw i32 %56, 1
  store i32 %inc87, i32* %maxblue, align 4
  br label %while.cond.81

while.end.88:                                     ; preds = %while.cond.81
  %57 = load i32, i32* %maxblue, align 4
  %shl89 = shl i32 1, %57
  %sub90 = sub nsw i32 %shl89, 1
  store i32 %sub90, i32* %maxblue, align 4
  %58 = load i32, i32* %maxred, align 4
  %conv91 = sext i32 %58 to i64
  %cmp92 = icmp ugt i64 %conv91, 256
  br i1 %cmp92, label %if.then.101, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end.88
  %59 = load i32, i32* %maxgreen, align 4
  %conv94 = sext i32 %59 to i64
  %cmp95 = icmp ugt i64 %conv94, 256
  br i1 %cmp95, label %if.then.101, label %lor.lhs.false.97

lor.lhs.false.97:                                 ; preds = %lor.lhs.false
  %60 = load i32, i32* %maxblue, align 4
  %conv98 = sext i32 %60 to i64
  %cmp99 = icmp ugt i64 %conv98, 256
  br i1 %cmp99, label %if.then.101, label %if.end.105

if.then.101:                                      ; preds = %lor.lhs.false.97, %lor.lhs.false, %while.end.88
  %61 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call102 = call i32 @g_file_error_quark()
  %call103 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.48, i32 0, i32 0)) #5
  %62 = load i8*, i8** %filename.addr, align 8
  %call104 = call i8* @gimp_filename_to_utf8(i8* %62)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %61, i32 %call102, i32 24, i8* %call103, i8* %call104)
  store i32 -1, i32* %retval
  br label %return

if.end.105:                                       ; preds = %lor.lhs.false.97
  store i32 0, i32* %red, align 4
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.inc.113, %if.end.105
  %63 = load i32, i32* %red, align 4
  %64 = load i32, i32* %maxred, align 4
  %cmp107 = icmp sle i32 %63, %64
  br i1 %cmp107, label %for.body.109, label %for.end.115

for.body.109:                                     ; preds = %for.cond.106
  %65 = load i32, i32* %red, align 4
  %mul = mul nsw i32 %65, 255
  %66 = load i32, i32* %maxred, align 4
  %div = sdiv i32 %mul, %66
  %conv110 = trunc i32 %div to i8
  %67 = load i32, i32* %red, align 4
  %idxprom111 = sext i32 %67 to i64
  %arrayidx112 = getelementptr inbounds [256 x i8], [256 x i8]* %redmap, i32 0, i64 %idxprom111
  store i8 %conv110, i8* %arrayidx112, align 1
  br label %for.inc.113

for.inc.113:                                      ; preds = %for.body.109
  %68 = load i32, i32* %red, align 4
  %inc114 = add nsw i32 %68, 1
  store i32 %inc114, i32* %red, align 4
  br label %for.cond.106

for.end.115:                                      ; preds = %for.cond.106
  store i32 0, i32* %green, align 4
  br label %for.cond.116

for.cond.116:                                     ; preds = %for.inc.125, %for.end.115
  %69 = load i32, i32* %green, align 4
  %70 = load i32, i32* %maxgreen, align 4
  %cmp117 = icmp sle i32 %69, %70
  br i1 %cmp117, label %for.body.119, label %for.end.127

for.body.119:                                     ; preds = %for.cond.116
  %71 = load i32, i32* %green, align 4
  %mul120 = mul nsw i32 %71, 255
  %72 = load i32, i32* %maxgreen, align 4
  %div121 = sdiv i32 %mul120, %72
  %conv122 = trunc i32 %div121 to i8
  %73 = load i32, i32* %green, align 4
  %idxprom123 = sext i32 %73 to i64
  %arrayidx124 = getelementptr inbounds [256 x i8], [256 x i8]* %greenmap, i32 0, i64 %idxprom123
  store i8 %conv122, i8* %arrayidx124, align 1
  br label %for.inc.125

for.inc.125:                                      ; preds = %for.body.119
  %74 = load i32, i32* %green, align 4
  %inc126 = add nsw i32 %74, 1
  store i32 %inc126, i32* %green, align 4
  br label %for.cond.116

for.end.127:                                      ; preds = %for.cond.116
  store i32 0, i32* %blue, align 4
  br label %for.cond.128

for.cond.128:                                     ; preds = %for.inc.137, %for.end.127
  %75 = load i32, i32* %blue, align 4
  %76 = load i32, i32* %maxblue, align 4
  %cmp129 = icmp sle i32 %75, %76
  br i1 %cmp129, label %for.body.131, label %for.end.139

for.body.131:                                     ; preds = %for.cond.128
  %77 = load i32, i32* %blue, align 4
  %mul132 = mul nsw i32 %77, 255
  %78 = load i32, i32* %maxblue, align 4
  %div133 = sdiv i32 %mul132, %78
  %conv134 = trunc i32 %div133 to i8
  %79 = load i32, i32* %blue, align 4
  %idxprom135 = sext i32 %79 to i64
  %arrayidx136 = getelementptr inbounds [256 x i8], [256 x i8]* %bluemap, i32 0, i64 %idxprom135
  store i8 %conv134, i8* %arrayidx136, align 1
  br label %for.inc.137

for.inc.137:                                      ; preds = %for.body.131
  %80 = load i32, i32* %blue, align 4
  %inc138 = add nsw i32 %80, 1
  store i32 %inc138, i32* %blue, align 4
  br label %for.cond.128

for.end.139:                                      ; preds = %for.cond.128
  br label %if.end.140

if.end.140:                                       ; preds = %for.end.139, %land.end
  %81 = load i8*, i8** %filename.addr, align 8
  %82 = load i32, i32* %width, align 4
  %83 = load i32, i32* %height, align 4
  %84 = load i32, i32* %indexed, align 4
  %tobool141 = icmp ne i32 %84, 0
  %cond142 = select i1 %tobool141, i32 2, i32 0
  %call143 = call i32 @create_new_image(i8* %81, i32 %82, i32 %83, i32 %cond142, i32* %layer_ID, %struct._GimpDrawable** %drawable, %struct._GimpPixelRgn* %pixel_rgn)
  store i32 %call143, i32* %image_ID, align 4
  %call144 = call i32 @gimp_tile_height() #6
  store i32 %call144, i32* %tile_height, align 4
  %85 = load i32, i32* %tile_height, align 4
  %86 = load i32, i32* %width, align 4
  %mul145 = mul nsw i32 %85, %86
  %87 = load i32, i32* %bytes_per_pixel, align 4
  %mul146 = mul nsw i32 %mul145, %87
  %conv147 = sext i32 %mul146 to i64
  %call148 = call noalias i8* @g_malloc(i64 %conv147)
  store i8* %call148, i8** %data, align 8
  %88 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_colormap_entries = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %88, i32 0, i32 18
  %89 = load i64, i64* %l_colormap_entries, align 8
  %conv149 = trunc i64 %89 to i32
  store i32 %conv149, i32* %ncols, align 4
  %90 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_ncolors = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %90, i32 0, i32 19
  %91 = load i64, i64* %l_ncolors, align 8
  %92 = load i32, i32* %ncols, align 4
  %conv150 = sext i32 %92 to i64
  %cmp151 = icmp ult i64 %91, %conv150
  br i1 %cmp151, label %if.then.153, label %if.end.156

if.then.153:                                      ; preds = %if.end.140
  %93 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_ncolors154 = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %93, i32 0, i32 19
  %94 = load i64, i64* %l_ncolors154, align 8
  %conv155 = trunc i64 %94 to i32
  store i32 %conv155, i32* %ncols, align 4
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.153, %if.end.140
  %95 = load i32, i32* %indexed, align 4
  %tobool157 = icmp ne i32 %95, 0
  br i1 %tobool157, label %if.then.158, label %if.else.163

if.then.158:                                      ; preds = %if.end.156
  %96 = load i32, i32* %ncols, align 4
  %cmp159 = icmp slt i32 %96, 2
  br i1 %cmp159, label %if.then.161, label %if.else

if.then.161:                                      ; preds = %if.then.158
  %97 = load i32, i32* %image_ID, align 4
  call void @set_bw_color_table(i32 %97)
  br label %if.end.162

if.else:                                          ; preds = %if.then.158
  %98 = load i32, i32* %image_ID, align 4
  %99 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %100 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %xwdcolmap.addr, align 8
  call void @set_color_table(i32 %98, %struct.L_XWDFILEHEADER* %99, %struct.L_XWDCOLOR* %100)
  br label %if.end.162

if.end.162:                                       ; preds = %if.else, %if.then.161
  br label %if.end.165

if.else.163:                                      ; preds = %if.end.156
  %101 = load i32, i32* %ncols, align 4
  %102 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %xwdcolmap.addr, align 8
  %call164 = call i32 @set_pixelmap(i32 %101, %struct.L_XWDCOLOR* %102, %struct.PIXEL_MAP* %pixel_map)
  br label %if.end.165

if.end.165:                                       ; preds = %if.else.163, %if.end.162
  %103 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_bitmap_bit_order = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %103, i32 0, i32 9
  %104 = load i64, i64* %l_bitmap_bit_order, align 8
  %tobool166 = icmp ne i64 %104, 0
  %lnot = xor i1 %tobool166, true
  %lnot.ext = zext i1 %lnot to i32
  %conv167 = trunc i32 %lnot.ext to i8
  store i8 %conv167, i8* %do_reverse, align 1
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call168 = call i64 @ftell(%struct._IO_FILE* %105)
  store i64 %call168, i64* %data_offset, align 8
  store i32 0, i32* %tile_start, align 4
  br label %for.cond.169

for.cond.169:                                     ; preds = %for.inc.373, %if.end.165
  %106 = load i32, i32* %tile_start, align 4
  %107 = load i32, i32* %height, align 4
  %cmp170 = icmp slt i32 %106, %107
  br i1 %cmp170, label %for.body.172, label %for.end.375

for.body.172:                                     ; preds = %for.cond.169
  %108 = load i8*, i8** %data, align 8
  %109 = load i32, i32* %width, align 4
  %110 = load i32, i32* %tile_height, align 4
  %mul173 = mul nsw i32 %109, %110
  %111 = load i32, i32* %bytes_per_pixel, align 4
  %mul174 = mul nsw i32 %mul173, %111
  %conv175 = sext i32 %mul174 to i64
  call void @llvm.memset.p0i8.i64(i8* %108, i8 0, i64 %conv175, i32 1, i1 false)
  %112 = load i32, i32* %tile_start, align 4
  %113 = load i32, i32* %tile_height, align 4
  %add176 = add nsw i32 %112, %113
  %sub177 = sub nsw i32 %add176, 1
  store i32 %sub177, i32* %tile_end, align 4
  %114 = load i32, i32* %tile_end, align 4
  %115 = load i32, i32* %height, align 4
  %cmp178 = icmp sge i32 %114, %115
  br i1 %cmp178, label %if.then.180, label %if.end.182

if.then.180:                                      ; preds = %for.body.172
  %116 = load i32, i32* %height, align 4
  %sub181 = sub nsw i32 %116, 1
  store i32 %sub181, i32* %tile_end, align 4
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.180, %for.body.172
  store i32 0, i32* %plane, align 4
  br label %for.cond.183

for.cond.183:                                     ; preds = %for.inc.312, %if.end.182
  %117 = load i32, i32* %plane, align 4
  %conv184 = sext i32 %117 to i64
  %118 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_pixmap_depth185 = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %118, i32 0, i32 3
  %119 = load i64, i64* %l_pixmap_depth185, align 8
  %cmp186 = icmp ult i64 %conv184, %119
  br i1 %cmp186, label %for.body.188, label %for.end.314

for.body.188:                                     ; preds = %for.cond.183
  %120 = load i8*, i8** %data, align 8
  store i8* %120, i8** %dest, align 8
  %121 = load i64, i64* %data_offset, align 8
  %122 = load i32, i32* %plane, align 4
  %123 = load i32, i32* %height, align 4
  %mul189 = mul nsw i32 %122, %123
  %conv190 = sext i32 %mul189 to i64
  %124 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_bytes_per_line191 = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %124, i32 0, i32 12
  %125 = load i64, i64* %l_bytes_per_line191, align 8
  %mul192 = mul i64 %conv190, %125
  %add193 = add i64 %121, %mul192
  store i64 %add193, i64* %plane_offset, align 8
  %126 = load i64, i64* %plane_offset, align 8
  %127 = load i32, i32* %tile_start, align 4
  %conv194 = sext i32 %127 to i64
  %128 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_bytes_per_line195 = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %128, i32 0, i32 12
  %129 = load i64, i64* %l_bytes_per_line195, align 8
  %mul196 = mul i64 %conv194, %129
  %add197 = add i64 %126, %mul196
  store i64 %add197, i64* %tile_offset, align 8
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %131 = load i64, i64* %tile_offset, align 8
  %call198 = call i32 @fseek(%struct._IO_FILE* %130, i64 %131, i32 0)
  %132 = load i32, i32* %indexed, align 4
  %tobool199 = icmp ne i32 %132, 0
  br i1 %tobool199, label %if.then.200, label %if.else.208

if.then.200:                                      ; preds = %for.body.188
  %133 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_pixmap_depth201 = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %133, i32 0, i32 3
  %134 = load i64, i64* %l_pixmap_depth201, align 8
  %sub202 = sub i64 %134, 1
  %135 = load i32, i32* %plane, align 4
  %conv203 = sext i32 %135 to i64
  %sub204 = sub i64 %sub202, %conv203
  %conv205 = trunc i64 %sub204 to i32
  store i32 %conv205, i32* %fromright, align 4
  %136 = load i32, i32* %fromright, align 4
  %shl206 = shl i32 1, %136
  %conv207 = trunc i32 %shl206 to i8
  store i8 %conv207, i8* %outmask, align 1
  br label %if.end.218

if.else.208:                                      ; preds = %for.body.188
  %137 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_pixmap_depth209 = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %137, i32 0, i32 3
  %138 = load i64, i64* %l_pixmap_depth209, align 8
  %sub210 = sub i64 %138, 1
  %139 = load i32, i32* %plane, align 4
  %conv211 = sext i32 %139 to i64
  %sub212 = sub i64 %sub210, %conv211
  %conv213 = trunc i64 %sub212 to i32
  store i32 %conv213, i32* %fromright, align 4
  %140 = load i32, i32* %fromright, align 4
  %div214 = sdiv i32 %140, 8
  %sub215 = sub nsw i32 2, %div214
  %141 = load i8*, i8** %dest, align 8
  %idx.ext = sext i32 %sub215 to i64
  %add.ptr = getelementptr inbounds i8, i8* %141, i64 %idx.ext
  store i8* %add.ptr, i8** %dest, align 8
  %142 = load i32, i32* %fromright, align 4
  %rem = srem i32 %142, 8
  %shl216 = shl i32 1, %rem
  %conv217 = trunc i32 %shl216 to i8
  store i8 %conv217, i8* %outmask, align 1
  br label %if.end.218

if.end.218:                                       ; preds = %if.else.208, %if.then.200
  %143 = load i32, i32* %tile_start, align 4
  store i32 %143, i32* %i, align 4
  br label %for.cond.219

for.cond.219:                                     ; preds = %for.inc.309, %if.end.218
  %144 = load i32, i32* %i, align 4
  %145 = load i32, i32* %tile_end, align 4
  %cmp220 = icmp sle i32 %144, %145
  br i1 %cmp220, label %for.body.222, label %for.end.311

for.body.222:                                     ; preds = %for.cond.219
  %146 = load i8*, i8** %xwddata, align 8
  %147 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_bytes_per_line223 = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %147, i32 0, i32 12
  %148 = load i64, i64* %l_bytes_per_line223, align 8
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call224 = call i64 @fread(i8* %146, i64 %148, i64 1, %struct._IO_FILE* %149)
  %cmp225 = icmp ne i64 %call224, 1
  br i1 %cmp225, label %if.then.227, label %if.end.228

if.then.227:                                      ; preds = %for.body.222
  store i32 1, i32* %err, align 4
  br label %for.end.311

if.end.228:                                       ; preds = %for.body.222
  %150 = load i8*, i8** %xwddata, align 8
  store i8* %150, i8** %xwdin, align 8
  %151 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_bitmap_unit = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %151, i32 0, i32 8
  %152 = load i64, i64* %l_bitmap_unit, align 8
  %cmp229 = icmp eq i64 %152, 16
  br i1 %cmp229, label %if.then.231, label %if.else.249

if.then.231:                                      ; preds = %if.end.228
  %153 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_bitmap_bit_order232 = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %153, i32 0, i32 9
  %154 = load i64, i64* %l_bitmap_bit_order232, align 8
  %155 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_byte_order = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %155, i32 0, i32 7
  %156 = load i64, i64* %l_byte_order, align 8
  %cmp233 = icmp ne i64 %154, %156
  br i1 %cmp233, label %if.then.235, label %if.end.248

if.then.235:                                      ; preds = %if.then.231
  %157 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_bytes_per_line236 = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %157, i32 0, i32 12
  %158 = load i64, i64* %l_bytes_per_line236, align 8
  %div237 = udiv i64 %158, 2
  %conv238 = trunc i64 %div237 to i32
  store i32 %conv238, i32* %j, align 4
  br label %while.cond.239

while.cond.239:                                   ; preds = %while.body.241, %if.then.235
  %159 = load i32, i32* %j, align 4
  %dec = add nsw i32 %159, -1
  store i32 %dec, i32* %j, align 4
  %tobool240 = icmp ne i32 %159, 0
  br i1 %tobool240, label %while.body.241, label %while.end.247

while.body.241:                                   ; preds = %while.cond.239
  %160 = load i8*, i8** %xwdin, align 8
  %arrayidx242 = getelementptr inbounds i8, i8* %160, i64 0
  %161 = load i8, i8* %arrayidx242, align 1
  store i8 %161, i8* %inmask, align 1
  %162 = load i8*, i8** %xwdin, align 8
  %arrayidx243 = getelementptr inbounds i8, i8* %162, i64 1
  %163 = load i8, i8* %arrayidx243, align 1
  %164 = load i8*, i8** %xwdin, align 8
  %arrayidx244 = getelementptr inbounds i8, i8* %164, i64 0
  store i8 %163, i8* %arrayidx244, align 1
  %165 = load i8, i8* %inmask, align 1
  %166 = load i8*, i8** %xwdin, align 8
  %arrayidx245 = getelementptr inbounds i8, i8* %166, i64 1
  store i8 %165, i8* %arrayidx245, align 1
  %167 = load i8*, i8** %xwdin, align 8
  %add.ptr246 = getelementptr inbounds i8, i8* %167, i64 2
  store i8* %add.ptr246, i8** %xwdin, align 8
  br label %while.cond.239

while.end.247:                                    ; preds = %while.cond.239
  %168 = load i8*, i8** %xwddata, align 8
  store i8* %168, i8** %xwdin, align 8
  br label %if.end.248

if.end.248:                                       ; preds = %while.end.247, %if.then.231
  br label %if.end.278

if.else.249:                                      ; preds = %if.end.228
  %169 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_bitmap_unit250 = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %169, i32 0, i32 8
  %170 = load i64, i64* %l_bitmap_unit250, align 8
  %cmp251 = icmp eq i64 %170, 32
  br i1 %cmp251, label %if.then.253, label %if.end.277

if.then.253:                                      ; preds = %if.else.249
  %171 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_bitmap_bit_order254 = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %171, i32 0, i32 9
  %172 = load i64, i64* %l_bitmap_bit_order254, align 8
  %173 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_byte_order255 = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %173, i32 0, i32 7
  %174 = load i64, i64* %l_byte_order255, align 8
  %cmp256 = icmp ne i64 %172, %174
  br i1 %cmp256, label %if.then.258, label %if.end.276

if.then.258:                                      ; preds = %if.then.253
  %175 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_bytes_per_line259 = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %175, i32 0, i32 12
  %176 = load i64, i64* %l_bytes_per_line259, align 8
  %div260 = udiv i64 %176, 4
  %conv261 = trunc i64 %div260 to i32
  store i32 %conv261, i32* %j, align 4
  br label %while.cond.262

while.cond.262:                                   ; preds = %while.body.265, %if.then.258
  %177 = load i32, i32* %j, align 4
  %dec263 = add nsw i32 %177, -1
  store i32 %dec263, i32* %j, align 4
  %tobool264 = icmp ne i32 %177, 0
  br i1 %tobool264, label %while.body.265, label %while.end.275

while.body.265:                                   ; preds = %while.cond.262
  %178 = load i8*, i8** %xwdin, align 8
  %arrayidx266 = getelementptr inbounds i8, i8* %178, i64 0
  %179 = load i8, i8* %arrayidx266, align 1
  store i8 %179, i8* %inmask, align 1
  %180 = load i8*, i8** %xwdin, align 8
  %arrayidx267 = getelementptr inbounds i8, i8* %180, i64 3
  %181 = load i8, i8* %arrayidx267, align 1
  %182 = load i8*, i8** %xwdin, align 8
  %arrayidx268 = getelementptr inbounds i8, i8* %182, i64 0
  store i8 %181, i8* %arrayidx268, align 1
  %183 = load i8, i8* %inmask, align 1
  %184 = load i8*, i8** %xwdin, align 8
  %arrayidx269 = getelementptr inbounds i8, i8* %184, i64 3
  store i8 %183, i8* %arrayidx269, align 1
  %185 = load i8*, i8** %xwdin, align 8
  %arrayidx270 = getelementptr inbounds i8, i8* %185, i64 1
  %186 = load i8, i8* %arrayidx270, align 1
  store i8 %186, i8* %inmask, align 1
  %187 = load i8*, i8** %xwdin, align 8
  %arrayidx271 = getelementptr inbounds i8, i8* %187, i64 2
  %188 = load i8, i8* %arrayidx271, align 1
  %189 = load i8*, i8** %xwdin, align 8
  %arrayidx272 = getelementptr inbounds i8, i8* %189, i64 1
  store i8 %188, i8* %arrayidx272, align 1
  %190 = load i8, i8* %inmask, align 1
  %191 = load i8*, i8** %xwdin, align 8
  %arrayidx273 = getelementptr inbounds i8, i8* %191, i64 2
  store i8 %190, i8* %arrayidx273, align 1
  %192 = load i8*, i8** %xwdin, align 8
  %add.ptr274 = getelementptr inbounds i8, i8* %192, i64 4
  store i8* %add.ptr274, i8** %xwdin, align 8
  br label %while.cond.262

while.end.275:                                    ; preds = %while.cond.262
  %193 = load i8*, i8** %xwddata, align 8
  store i8* %193, i8** %xwdin, align 8
  br label %if.end.276

if.end.276:                                       ; preds = %while.end.275, %if.then.253
  br label %if.end.277

if.end.277:                                       ; preds = %if.end.276, %if.else.249
  br label %if.end.278

if.end.278:                                       ; preds = %if.end.277, %if.end.248
  store i8 0, i8* %inmask, align 1
  store i64 0, i64* %g, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.279

for.cond.279:                                     ; preds = %for.inc.306, %if.end.278
  %194 = load i32, i32* %j, align 4
  %195 = load i32, i32* %width, align 4
  %cmp280 = icmp slt i32 %194, %195
  br i1 %cmp280, label %for.body.282, label %for.end.308

for.body.282:                                     ; preds = %for.cond.279
  %196 = load i8, i8* %inmask, align 1
  %tobool283 = icmp ne i8 %196, 0
  br i1 %tobool283, label %if.end.291, label %if.then.284

if.then.284:                                      ; preds = %for.body.282
  %197 = load i8*, i8** %xwdin, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %197, i32 1
  store i8* %incdec.ptr, i8** %xwdin, align 8
  %198 = load i8, i8* %197, align 1
  %conv285 = zext i8 %198 to i64
  store i64 %conv285, i64* %g, align 8
  %199 = load i8, i8* %do_reverse, align 1
  %tobool286 = icmp ne i8 %199, 0
  br i1 %tobool286, label %if.then.287, label %if.end.290

if.then.287:                                      ; preds = %if.then.284
  %200 = load i64, i64* %g, align 8
  %arrayidx288 = getelementptr inbounds [256 x i8], [256 x i8]* %bit_reverse, i32 0, i64 %200
  %201 = load i8, i8* %arrayidx288, align 1
  %conv289 = zext i8 %201 to i64
  store i64 %conv289, i64* %g, align 8
  br label %if.end.290

if.end.290:                                       ; preds = %if.then.287, %if.then.284
  store i8 -128, i8* %inmask, align 1
  br label %if.end.291

if.end.291:                                       ; preds = %if.end.290, %for.body.282
  %202 = load i64, i64* %g, align 8
  %203 = load i8, i8* %inmask, align 1
  %conv292 = zext i8 %203 to i64
  %and293 = and i64 %202, %conv292
  %tobool294 = icmp ne i64 %and293, 0
  br i1 %tobool294, label %if.then.295, label %if.end.300

if.then.295:                                      ; preds = %if.end.291
  %204 = load i8, i8* %outmask, align 1
  %conv296 = zext i8 %204 to i32
  %205 = load i8*, i8** %dest, align 8
  %206 = load i8, i8* %205, align 1
  %conv297 = zext i8 %206 to i32
  %or298 = or i32 %conv297, %conv296
  %conv299 = trunc i32 %or298 to i8
  store i8 %conv299, i8* %205, align 1
  br label %if.end.300

if.end.300:                                       ; preds = %if.then.295, %if.end.291
  %207 = load i32, i32* %bytes_per_pixel, align 4
  %208 = load i8*, i8** %dest, align 8
  %idx.ext301 = sext i32 %207 to i64
  %add.ptr302 = getelementptr inbounds i8, i8* %208, i64 %idx.ext301
  store i8* %add.ptr302, i8** %dest, align 8
  %209 = load i8, i8* %inmask, align 1
  %conv303 = zext i8 %209 to i32
  %shr304 = ashr i32 %conv303, 1
  %conv305 = trunc i32 %shr304 to i8
  store i8 %conv305, i8* %inmask, align 1
  br label %for.inc.306

for.inc.306:                                      ; preds = %if.end.300
  %210 = load i32, i32* %j, align 4
  %inc307 = add nsw i32 %210, 1
  store i32 %inc307, i32* %j, align 4
  br label %for.cond.279

for.end.308:                                      ; preds = %for.cond.279
  br label %for.inc.309

for.inc.309:                                      ; preds = %for.end.308
  %211 = load i32, i32* %i, align 4
  %inc310 = add nsw i32 %211, 1
  store i32 %inc310, i32* %i, align 4
  br label %for.cond.219

for.end.311:                                      ; preds = %if.then.227, %for.cond.219
  br label %for.inc.312

for.inc.312:                                      ; preds = %for.end.311
  %212 = load i32, i32* %plane, align 4
  %inc313 = add nsw i32 %212, 1
  store i32 %inc313, i32* %plane, align 4
  br label %for.cond.183

for.end.314:                                      ; preds = %for.cond.183
  %213 = load i32, i32* %indexed, align 4
  %tobool315 = icmp ne i32 %213, 0
  br i1 %tobool315, label %if.end.366, label %if.then.316

if.then.316:                                      ; preds = %for.end.314
  %214 = load i8*, i8** %data, align 8
  store i8* %214, i8** %dest, align 8
  %215 = load i32, i32* %tile_start, align 4
  store i32 %215, i32* %i, align 4
  br label %for.cond.317

for.cond.317:                                     ; preds = %for.inc.363, %if.then.316
  %216 = load i32, i32* %i, align 4
  %217 = load i32, i32* %tile_end, align 4
  %cmp318 = icmp sle i32 %216, %217
  br i1 %cmp318, label %for.body.320, label %for.end.365

for.body.320:                                     ; preds = %for.cond.317
  store i32 0, i32* %j, align 4
  br label %for.cond.321

for.cond.321:                                     ; preds = %for.inc.360, %for.body.320
  %218 = load i32, i32* %j, align 4
  %219 = load i32, i32* %width, align 4
  %cmp322 = icmp slt i32 %218, %219
  br i1 %cmp322, label %for.body.324, label %for.end.362

for.body.324:                                     ; preds = %for.cond.321
  %220 = load i8*, i8** %dest, align 8
  %221 = load i8, i8* %220, align 1
  %conv325 = zext i8 %221 to i32
  %shl326 = shl i32 %conv325, 16
  %222 = load i8*, i8** %dest, align 8
  %add.ptr327 = getelementptr inbounds i8, i8* %222, i64 1
  %223 = load i8, i8* %add.ptr327, align 1
  %conv328 = zext i8 %223 to i32
  %shl329 = shl i32 %conv328, 8
  %or330 = or i32 %shl326, %shl329
  %224 = load i8*, i8** %dest, align 8
  %add.ptr331 = getelementptr inbounds i8, i8* %224, i64 2
  %225 = load i8, i8* %add.ptr331, align 1
  %conv332 = zext i8 %225 to i32
  %or333 = or i32 %or330, %conv332
  %conv334 = sext i32 %or333 to i64
  store i64 %conv334, i64* %pixelval, align 8
  %226 = load i64, i64* %pixelval, align 8
  %227 = load i8*, i8** %dest, align 8
  %228 = load i8*, i8** %dest, align 8
  %add.ptr335 = getelementptr inbounds i8, i8* %228, i64 1
  %229 = load i8*, i8** %dest, align 8
  %add.ptr336 = getelementptr inbounds i8, i8* %229, i64 2
  %call337 = call i32 @get_pixelmap(i64 %226, %struct.PIXEL_MAP* %pixel_map, i8* %227, i8* %add.ptr335, i8* %add.ptr336)
  %tobool338 = icmp ne i32 %call337, 0
  br i1 %tobool338, label %if.then.341, label %lor.lhs.false.339

lor.lhs.false.339:                                ; preds = %for.body.324
  %230 = load i32, i32* %standard_rgb, align 4
  %tobool340 = icmp ne i32 %230, 0
  br i1 %tobool340, label %if.then.341, label %if.else.343

if.then.341:                                      ; preds = %lor.lhs.false.339, %for.body.324
  %231 = load i8*, i8** %dest, align 8
  %add.ptr342 = getelementptr inbounds i8, i8* %231, i64 3
  store i8* %add.ptr342, i8** %dest, align 8
  br label %if.end.359

if.else.343:                                      ; preds = %lor.lhs.false.339
  %232 = load i64, i64* %pixelval, align 8
  %233 = load i64, i64* %redmask, align 8
  %and344 = and i64 %232, %233
  %234 = load i32, i32* %redshift, align 4
  %sh_prom345 = zext i32 %234 to i64
  %shr346 = lshr i64 %and344, %sh_prom345
  %arrayidx347 = getelementptr inbounds [256 x i8], [256 x i8]* %redmap, i32 0, i64 %shr346
  %235 = load i8, i8* %arrayidx347, align 1
  %236 = load i8*, i8** %dest, align 8
  %incdec.ptr348 = getelementptr inbounds i8, i8* %236, i32 1
  store i8* %incdec.ptr348, i8** %dest, align 8
  store i8 %235, i8* %236, align 1
  %237 = load i64, i64* %pixelval, align 8
  %238 = load i64, i64* %greenmask, align 8
  %and349 = and i64 %237, %238
  %239 = load i32, i32* %greenshift, align 4
  %sh_prom350 = zext i32 %239 to i64
  %shr351 = lshr i64 %and349, %sh_prom350
  %arrayidx352 = getelementptr inbounds [256 x i8], [256 x i8]* %greenmap, i32 0, i64 %shr351
  %240 = load i8, i8* %arrayidx352, align 1
  %241 = load i8*, i8** %dest, align 8
  %incdec.ptr353 = getelementptr inbounds i8, i8* %241, i32 1
  store i8* %incdec.ptr353, i8** %dest, align 8
  store i8 %240, i8* %241, align 1
  %242 = load i64, i64* %pixelval, align 8
  %243 = load i64, i64* %bluemask, align 8
  %and354 = and i64 %242, %243
  %244 = load i32, i32* %blueshift, align 4
  %sh_prom355 = zext i32 %244 to i64
  %shr356 = lshr i64 %and354, %sh_prom355
  %arrayidx357 = getelementptr inbounds [256 x i8], [256 x i8]* %bluemap, i32 0, i64 %shr356
  %245 = load i8, i8* %arrayidx357, align 1
  %246 = load i8*, i8** %dest, align 8
  %incdec.ptr358 = getelementptr inbounds i8, i8* %246, i32 1
  store i8* %incdec.ptr358, i8** %dest, align 8
  store i8 %245, i8* %246, align 1
  br label %if.end.359

if.end.359:                                       ; preds = %if.else.343, %if.then.341
  br label %for.inc.360

for.inc.360:                                      ; preds = %if.end.359
  %247 = load i32, i32* %j, align 4
  %inc361 = add nsw i32 %247, 1
  store i32 %inc361, i32* %j, align 4
  br label %for.cond.321

for.end.362:                                      ; preds = %for.cond.321
  br label %for.inc.363

for.inc.363:                                      ; preds = %for.end.362
  %248 = load i32, i32* %i, align 4
  %inc364 = add nsw i32 %248, 1
  store i32 %inc364, i32* %i, align 4
  br label %for.cond.317

for.end.365:                                      ; preds = %for.cond.317
  br label %if.end.366

if.end.366:                                       ; preds = %for.end.365, %for.end.314
  %249 = load i32, i32* %tile_end, align 4
  %conv367 = sitofp i32 %249 to double
  %250 = load i32, i32* %height, align 4
  %conv368 = sitofp i32 %250 to double
  %div369 = fdiv double %conv367, %conv368
  %call370 = call i32 @gimp_progress_update(double %div369)
  %251 = load i8*, i8** %data, align 8
  %252 = load i32, i32* %tile_start, align 4
  %253 = load i32, i32* %width, align 4
  %254 = load i32, i32* %tile_end, align 4
  %255 = load i32, i32* %tile_start, align 4
  %sub371 = sub nsw i32 %254, %255
  %add372 = add nsw i32 %sub371, 1
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %251, i32 0, i32 %252, i32 %253, i32 %add372)
  br label %for.inc.373

for.inc.373:                                      ; preds = %if.end.366
  %256 = load i32, i32* %tile_height, align 4
  %257 = load i32, i32* %tile_start, align 4
  %add374 = add nsw i32 %257, %256
  store i32 %add374, i32* %tile_start, align 4
  br label %for.cond.169

for.end.375:                                      ; preds = %for.cond.169
  %258 = load i8*, i8** %data, align 8
  call void @g_free(i8* %258)
  %259 = load i8*, i8** %xwddata, align 8
  call void @g_free(i8* %259)
  %260 = load i32, i32* %err, align 4
  %tobool376 = icmp ne i32 %260, 0
  br i1 %tobool376, label %if.then.377, label %if.end.379

if.then.377:                                      ; preds = %for.end.375
  %call378 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call378)
  br label %if.end.379

if.end.379:                                       ; preds = %if.then.377, %for.end.375
  %261 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %261)
  %262 = load i32, i32* %err, align 4
  %tobool380 = icmp ne i32 %262, 0
  br i1 %tobool380, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.379
  br label %cond.end

cond.false:                                       ; preds = %if.end.379
  %263 = load i32, i32* %image_ID, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond381 = phi i32 [ -1, %cond.true ], [ %263, %cond.false ]
  store i32 %cond381, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.101, %if.then
  %264 = load i32, i32* %retval
  ret i32 %264
}

; Function Attrs: nounwind uwtable
define internal i32 @load_xwd_f2_d8_b8(i8* %filename, %struct._IO_FILE* %ifp, %struct.L_XWDFILEHEADER* %xwdhdr, %struct.L_XWDCOLOR* %xwdcolmap) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %ifp.addr = alloca %struct._IO_FILE*, align 8
  %xwdhdr.addr = alloca %struct.L_XWDFILEHEADER*, align 8
  %xwdcolmap.addr = alloca %struct.L_XWDCOLOR*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %linepad = alloca i32, align 4
  %tile_height = alloca i32, align 4
  %scan_lines = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ncols = alloca i32, align 4
  %grayscale = alloca i32, align 4
  %dest = alloca i8*, align 8
  %data = alloca i8*, align 8
  %err = alloca i32, align 4
  %layer_ID = alloca i32, align 4
  %image_ID = alloca i32, align 4
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._IO_FILE* %ifp, %struct._IO_FILE** %ifp.addr, align 8
  store %struct.L_XWDFILEHEADER* %xwdhdr, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  store %struct.L_XWDCOLOR* %xwdcolmap, %struct.L_XWDCOLOR** %xwdcolmap.addr, align 8
  store i32 0, i32* %err, align 4
  %0 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_pixmap_width = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %0, i32 0, i32 4
  %1 = load i64, i64* %l_pixmap_width, align 8
  %conv = trunc i64 %1 to i32
  store i32 %conv, i32* %width, align 4
  %2 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_pixmap_height = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %2, i32 0, i32 5
  %3 = load i64, i64* %l_pixmap_height, align 8
  %conv1 = trunc i64 %3 to i32
  store i32 %conv1, i32* %height, align 4
  store i32 0, i32* %grayscale, align 4
  %4 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_ncolors = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %4, i32 0, i32 19
  %5 = load i64, i64* %l_ncolors, align 8
  %cmp = icmp eq i64 %5, 256
  br i1 %cmp, label %land.lhs.true, label %if.end.32

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_colormap_entries = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %6, i32 0, i32 18
  %7 = load i64, i64* %l_colormap_entries, align 8
  %cmp3 = icmp eq i64 %7, 256
  br i1 %cmp3, label %if.then, label %if.end.32

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i32, i32* %j, align 4
  %cmp5 = icmp slt i32 %8, 256
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %j, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %xwdcolmap.addr, align 8
  %arrayidx = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %10, i64 %idxprom
  %l_pixel = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx, i32 0, i32 0
  %11 = load i64, i64* %l_pixel, align 8
  %12 = load i32, i32* %j, align 4
  %conv7 = sext i32 %12 to i64
  %cmp8 = icmp ne i64 %11, %conv7
  br i1 %cmp8, label %if.then.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %13 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %13 to i64
  %14 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %xwdcolmap.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %14, i64 %idxprom10
  %l_red = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx11, i32 0, i32 1
  %15 = load i16, i16* %l_red, align 2
  %conv12 = zext i16 %15 to i32
  %shr = ashr i32 %conv12, 8
  %16 = load i32, i32* %j, align 4
  %cmp13 = icmp ne i32 %shr, %16
  br i1 %cmp13, label %if.then.29, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false
  %17 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %17 to i64
  %18 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %xwdcolmap.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %18, i64 %idxprom16
  %l_green = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx17, i32 0, i32 2
  %19 = load i16, i16* %l_green, align 2
  %conv18 = zext i16 %19 to i32
  %shr19 = ashr i32 %conv18, 8
  %20 = load i32, i32* %j, align 4
  %cmp20 = icmp ne i32 %shr19, %20
  br i1 %cmp20, label %if.then.29, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %lor.lhs.false.15
  %21 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %21 to i64
  %22 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %xwdcolmap.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %22, i64 %idxprom23
  %l_blue = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx24, i32 0, i32 3
  %23 = load i16, i16* %l_blue, align 2
  %conv25 = zext i16 %23 to i32
  %shr26 = ashr i32 %conv25, 8
  %24 = load i32, i32* %j, align 4
  %cmp27 = icmp ne i32 %shr26, %24
  br i1 %cmp27, label %if.then.29, label %if.end

if.then.29:                                       ; preds = %lor.lhs.false.22, %lor.lhs.false.15, %lor.lhs.false, %for.body
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false.22
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %25 = load i32, i32* %j, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.29, %for.cond
  %26 = load i32, i32* %j, align 4
  %cmp30 = icmp eq i32 %26, 256
  %conv31 = zext i1 %cmp30 to i32
  store i32 %conv31, i32* %grayscale, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %for.end, %land.lhs.true, %entry
  %27 = load i8*, i8** %filename.addr, align 8
  %28 = load i32, i32* %width, align 4
  %29 = load i32, i32* %height, align 4
  %30 = load i32, i32* %grayscale, align 4
  %tobool = icmp ne i32 %30, 0
  %cond = select i1 %tobool, i32 1, i32 2
  %call = call i32 @create_new_image(i8* %27, i32 %28, i32 %29, i32 %cond, i32* %layer_ID, %struct._GimpDrawable** %drawable, %struct._GimpPixelRgn* %pixel_rgn)
  store i32 %call, i32* %image_ID, align 4
  %call33 = call i32 @gimp_tile_height() #6
  store i32 %call33, i32* %tile_height, align 4
  %31 = load i32, i32* %tile_height, align 4
  %32 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %31, %32
  %conv34 = sext i32 %mul to i64
  %call35 = call noalias i8* @g_malloc(i64 %conv34)
  store i8* %call35, i8** %data, align 8
  %33 = load i32, i32* %grayscale, align 4
  %tobool36 = icmp ne i32 %33, 0
  br i1 %tobool36, label %if.end.52, label %if.then.37

if.then.37:                                       ; preds = %if.end.32
  %34 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_colormap_entries38 = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %34, i32 0, i32 18
  %35 = load i64, i64* %l_colormap_entries38, align 8
  %conv39 = trunc i64 %35 to i32
  store i32 %conv39, i32* %ncols, align 4
  %36 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_ncolors40 = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %36, i32 0, i32 19
  %37 = load i64, i64* %l_ncolors40, align 8
  %38 = load i32, i32* %ncols, align 4
  %conv41 = sext i32 %38 to i64
  %cmp42 = icmp ult i64 %37, %conv41
  br i1 %cmp42, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %if.then.37
  %39 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_ncolors45 = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %39, i32 0, i32 19
  %40 = load i64, i64* %l_ncolors45, align 8
  %conv46 = trunc i64 %40 to i32
  store i32 %conv46, i32* %ncols, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.44, %if.then.37
  %41 = load i32, i32* %ncols, align 4
  %cmp48 = icmp slt i32 %41, 2
  br i1 %cmp48, label %if.then.50, label %if.else

if.then.50:                                       ; preds = %if.end.47
  %42 = load i32, i32* %image_ID, align 4
  call void @set_bw_color_table(i32 %42)
  br label %if.end.51

if.else:                                          ; preds = %if.end.47
  %43 = load i32, i32* %image_ID, align 4
  %44 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %45 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %xwdcolmap.addr, align 8
  call void @set_color_table(i32 %43, %struct.L_XWDFILEHEADER* %44, %struct.L_XWDCOLOR* %45)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else, %if.then.50
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.end.32
  %46 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_bytes_per_line = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %46, i32 0, i32 12
  %47 = load i64, i64* %l_bytes_per_line, align 8
  %48 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_pixmap_width53 = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %48, i32 0, i32 4
  %49 = load i64, i64* %l_pixmap_width53, align 8
  %sub = sub i64 %47, %49
  %conv54 = trunc i64 %sub to i32
  store i32 %conv54, i32* %linepad, align 4
  %50 = load i32, i32* %linepad, align 4
  %cmp55 = icmp slt i32 %50, 0
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.52
  store i32 0, i32* %linepad, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %if.end.52
  %51 = load i8*, i8** %data, align 8
  store i8* %51, i8** %dest, align 8
  store i32 0, i32* %scan_lines, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.96, %if.end.58
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* %height, align 4
  %cmp60 = icmp slt i32 %52, %53
  br i1 %cmp60, label %for.body.62, label %for.end.98

for.body.62:                                      ; preds = %for.cond.59
  %54 = load i8*, i8** %dest, align 8
  %55 = load i32, i32* %width, align 4
  %conv63 = sext i32 %55 to i64
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call64 = call i64 @fread(i8* %54, i64 1, i64 %conv63, %struct._IO_FILE* %56)
  %57 = load i32, i32* %width, align 4
  %conv65 = sext i32 %57 to i64
  %cmp66 = icmp ne i64 %call64, %conv65
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %for.body.62
  store i32 1, i32* %err, align 4
  br label %for.end.98

if.end.69:                                        ; preds = %for.body.62
  %58 = load i32, i32* %width, align 4
  %59 = load i8*, i8** %dest, align 8
  %idx.ext = sext i32 %58 to i64
  %add.ptr = getelementptr inbounds i8, i8* %59, i64 %idx.ext
  store i8* %add.ptr, i8** %dest, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.75, %if.end.69
  %60 = load i32, i32* %j, align 4
  %61 = load i32, i32* %linepad, align 4
  %cmp71 = icmp slt i32 %60, %61
  br i1 %cmp71, label %for.body.73, label %for.end.77

for.body.73:                                      ; preds = %for.cond.70
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call74 = call i32 @_IO_getc(%struct._IO_FILE* %62)
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.body.73
  %63 = load i32, i32* %j, align 4
  %inc76 = add nsw i32 %63, 1
  store i32 %inc76, i32* %j, align 4
  br label %for.cond.70

for.end.77:                                       ; preds = %for.cond.70
  %64 = load i32, i32* %scan_lines, align 4
  %inc78 = add nsw i32 %64, 1
  store i32 %inc78, i32* %scan_lines, align 4
  %65 = load i32, i32* %i, align 4
  %rem = srem i32 %65, 20
  %cmp79 = icmp eq i32 %rem, 0
  br i1 %cmp79, label %if.then.81, label %if.end.85

if.then.81:                                       ; preds = %for.end.77
  %66 = load i32, i32* %i, align 4
  %add = add nsw i32 %66, 1
  %conv82 = sitofp i32 %add to double
  %67 = load i32, i32* %height, align 4
  %conv83 = sitofp i32 %67 to double
  %div = fdiv double %conv82, %conv83
  %call84 = call i32 @gimp_progress_update(double %div)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.81, %for.end.77
  %68 = load i32, i32* %scan_lines, align 4
  %69 = load i32, i32* %tile_height, align 4
  %cmp86 = icmp eq i32 %68, %69
  br i1 %cmp86, label %if.then.92, label %lor.lhs.false.88

lor.lhs.false.88:                                 ; preds = %if.end.85
  %70 = load i32, i32* %i, align 4
  %add89 = add nsw i32 %70, 1
  %71 = load i32, i32* %height, align 4
  %cmp90 = icmp eq i32 %add89, %71
  br i1 %cmp90, label %if.then.92, label %if.end.95

if.then.92:                                       ; preds = %lor.lhs.false.88, %if.end.85
  %72 = load i8*, i8** %data, align 8
  %73 = load i32, i32* %i, align 4
  %74 = load i32, i32* %scan_lines, align 4
  %sub93 = sub nsw i32 %73, %74
  %add94 = add nsw i32 %sub93, 1
  %75 = load i32, i32* %width, align 4
  %76 = load i32, i32* %scan_lines, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %72, i32 0, i32 %add94, i32 %75, i32 %76)
  store i32 0, i32* %scan_lines, align 4
  %77 = load i8*, i8** %data, align 8
  store i8* %77, i8** %dest, align 8
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.92, %lor.lhs.false.88
  br label %for.inc.96

for.inc.96:                                       ; preds = %if.end.95
  %78 = load i32, i32* %i, align 4
  %inc97 = add nsw i32 %78, 1
  store i32 %inc97, i32* %i, align 4
  br label %for.cond.59

for.end.98:                                       ; preds = %if.then.68, %for.cond.59
  %79 = load i8*, i8** %data, align 8
  call void @g_free(i8* %79)
  %80 = load i32, i32* %err, align 4
  %tobool99 = icmp ne i32 %80, 0
  br i1 %tobool99, label %if.then.100, label %if.end.102

if.then.100:                                      ; preds = %for.end.98
  %call101 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call101)
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.100, %for.end.98
  %81 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %81)
  %82 = load i32, i32* %err, align 4
  %tobool103 = icmp ne i32 %82, 0
  br i1 %tobool103, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.102
  br label %cond.end

cond.false:                                       ; preds = %if.end.102
  %83 = load i32, i32* %image_ID, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond104 = phi i32 [ -1, %cond.true ], [ %83, %cond.false ]
  ret i32 %cond104
}

; Function Attrs: nounwind uwtable
define internal i32 @load_xwd_f2_d16_b16(i8* %filename, %struct._IO_FILE* %ifp, %struct.L_XWDFILEHEADER* %xwdhdr, %struct.L_XWDCOLOR* %xwdcolmap) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %ifp.addr = alloca %struct._IO_FILE*, align 8
  %xwdhdr.addr = alloca %struct.L_XWDFILEHEADER*, align 8
  %xwdcolmap.addr = alloca %struct.L_XWDCOLOR*, align 8
  %dest = alloca i8*, align 8
  %lsbyte_first = alloca i8, align 1
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %linepad = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %c0 = alloca i32, align 4
  %c1 = alloca i32, align 4
  %ncols = alloca i32, align 4
  %red = alloca i32, align 4
  %green = alloca i32, align 4
  %blue = alloca i32, align 4
  %redval = alloca i32, align 4
  %greenval = alloca i32, align 4
  %blueval = alloca i32, align 4
  %maxred = alloca i32, align 4
  %maxgreen = alloca i32, align 4
  %maxblue = alloca i32, align 4
  %tile_height = alloca i32, align 4
  %scan_lines = alloca i32, align 4
  %redmask = alloca i64, align 8
  %greenmask = alloca i64, align 8
  %bluemask = alloca i64, align 8
  %redshift = alloca i32, align 4
  %greenshift = alloca i32, align 4
  %blueshift = alloca i32, align 4
  %maxval = alloca i64, align 8
  %ColorMap = alloca i8*, align 8
  %cm = alloca i8*, align 8
  %data = alloca i8*, align 8
  %err = alloca i32, align 4
  %layer_ID = alloca i32, align 4
  %image_ID = alloca i32, align 4
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._IO_FILE* %ifp, %struct._IO_FILE** %ifp.addr, align 8
  store %struct.L_XWDFILEHEADER* %xwdhdr, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  store %struct.L_XWDCOLOR* %xwdcolmap, %struct.L_XWDCOLOR** %xwdcolmap.addr, align 8
  store i32 0, i32* %err, align 4
  %0 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_pixmap_width = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %0, i32 0, i32 4
  %1 = load i64, i64* %l_pixmap_width, align 8
  %conv = trunc i64 %1 to i32
  store i32 %conv, i32* %width, align 4
  %2 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_pixmap_height = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %2, i32 0, i32 5
  %3 = load i64, i64* %l_pixmap_height, align 8
  %conv1 = trunc i64 %3 to i32
  store i32 %conv1, i32* %height, align 4
  %4 = load i8*, i8** %filename.addr, align 8
  %5 = load i32, i32* %width, align 4
  %6 = load i32, i32* %height, align 4
  %call = call i32 @create_new_image(i8* %4, i32 %5, i32 %6, i32 0, i32* %layer_ID, %struct._GimpDrawable** %drawable, %struct._GimpPixelRgn* %pixel_rgn)
  store i32 %call, i32* %image_ID, align 4
  %call2 = call i32 @gimp_tile_height() #6
  store i32 %call2, i32* %tile_height, align 4
  %7 = load i32, i32* %tile_height, align 4
  %8 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %7, %8
  %mul3 = mul nsw i32 %mul, 3
  %conv4 = sext i32 %mul3 to i64
  %call5 = call noalias i8* @g_malloc(i64 %conv4)
  store i8* %call5, i8** %data, align 8
  store i64 196608, i64* %maxval, align 8
  %9 = load i64, i64* %maxval, align 8
  %call6 = call noalias i8* @g_malloc0_n(i64 %9, i64 1)
  store i8* %call6, i8** %ColorMap, align 8
  %10 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_red_mask = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %10, i32 0, i32 14
  %11 = load i64, i64* %l_red_mask, align 8
  store i64 %11, i64* %redmask, align 8
  %12 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_green_mask = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %12, i32 0, i32 15
  %13 = load i64, i64* %l_green_mask, align 8
  store i64 %13, i64* %greenmask, align 8
  %14 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_blue_mask = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %14, i32 0, i32 16
  %15 = load i64, i64* %l_blue_mask, align 8
  store i64 %15, i64* %bluemask, align 8
  store i32 0, i32* %blueshift, align 4
  store i32 0, i32* %greenshift, align 4
  store i32 0, i32* %redshift, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %16 = load i32, i32* %redshift, align 4
  %shl = shl i32 1, %16
  %conv7 = sext i32 %shl to i64
  %17 = load i64, i64* %redmask, align 8
  %and = and i64 %conv7, %17
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i32, i32* %redshift, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %redshift, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.9

while.cond.9:                                     ; preds = %while.body.15, %while.end
  %19 = load i32, i32* %greenshift, align 4
  %shl10 = shl i32 1, %19
  %conv11 = sext i32 %shl10 to i64
  %20 = load i64, i64* %greenmask, align 8
  %and12 = and i64 %conv11, %20
  %cmp13 = icmp eq i64 %and12, 0
  br i1 %cmp13, label %while.body.15, label %while.end.17

while.body.15:                                    ; preds = %while.cond.9
  %21 = load i32, i32* %greenshift, align 4
  %inc16 = add i32 %21, 1
  store i32 %inc16, i32* %greenshift, align 4
  br label %while.cond.9

while.end.17:                                     ; preds = %while.cond.9
  br label %while.cond.18

while.cond.18:                                    ; preds = %while.body.24, %while.end.17
  %22 = load i32, i32* %blueshift, align 4
  %shl19 = shl i32 1, %22
  %conv20 = sext i32 %shl19 to i64
  %23 = load i64, i64* %bluemask, align 8
  %and21 = and i64 %conv20, %23
  %cmp22 = icmp eq i64 %and21, 0
  br i1 %cmp22, label %while.body.24, label %while.end.26

while.body.24:                                    ; preds = %while.cond.18
  %24 = load i32, i32* %blueshift, align 4
  %inc25 = add i32 %24, 1
  store i32 %inc25, i32* %blueshift, align 4
  br label %while.cond.18

while.end.26:                                     ; preds = %while.cond.18
  store i32 0, i32* %maxred, align 4
  br label %while.cond.27

while.cond.27:                                    ; preds = %while.body.28, %while.end.26
  %25 = load i64, i64* %redmask, align 8
  %26 = load i32, i32* %redshift, align 4
  %27 = load i32, i32* %maxred, align 4
  %add = add i32 %26, %27
  %sh_prom = zext i32 %add to i64
  %shr = lshr i64 %25, %sh_prom
  %tobool = icmp ne i64 %shr, 0
  br i1 %tobool, label %while.body.28, label %while.end.30

while.body.28:                                    ; preds = %while.cond.27
  %28 = load i32, i32* %maxred, align 4
  %inc29 = add nsw i32 %28, 1
  store i32 %inc29, i32* %maxred, align 4
  br label %while.cond.27

while.end.30:                                     ; preds = %while.cond.27
  %29 = load i32, i32* %maxred, align 4
  %shl31 = shl i32 1, %29
  %sub = sub nsw i32 %shl31, 1
  store i32 %sub, i32* %maxred, align 4
  store i32 0, i32* %maxgreen, align 4
  br label %while.cond.32

while.cond.32:                                    ; preds = %while.body.37, %while.end.30
  %30 = load i64, i64* %greenmask, align 8
  %31 = load i32, i32* %greenshift, align 4
  %32 = load i32, i32* %maxgreen, align 4
  %add33 = add i32 %31, %32
  %sh_prom34 = zext i32 %add33 to i64
  %shr35 = lshr i64 %30, %sh_prom34
  %tobool36 = icmp ne i64 %shr35, 0
  br i1 %tobool36, label %while.body.37, label %while.end.39

while.body.37:                                    ; preds = %while.cond.32
  %33 = load i32, i32* %maxgreen, align 4
  %inc38 = add nsw i32 %33, 1
  store i32 %inc38, i32* %maxgreen, align 4
  br label %while.cond.32

while.end.39:                                     ; preds = %while.cond.32
  %34 = load i32, i32* %maxgreen, align 4
  %shl40 = shl i32 1, %34
  %sub41 = sub nsw i32 %shl40, 1
  store i32 %sub41, i32* %maxgreen, align 4
  store i32 0, i32* %maxblue, align 4
  br label %while.cond.42

while.cond.42:                                    ; preds = %while.body.47, %while.end.39
  %35 = load i64, i64* %bluemask, align 8
  %36 = load i32, i32* %blueshift, align 4
  %37 = load i32, i32* %maxblue, align 4
  %add43 = add i32 %36, %37
  %sh_prom44 = zext i32 %add43 to i64
  %shr45 = lshr i64 %35, %sh_prom44
  %tobool46 = icmp ne i64 %shr45, 0
  br i1 %tobool46, label %while.body.47, label %while.end.49

while.body.47:                                    ; preds = %while.cond.42
  %38 = load i32, i32* %maxblue, align 4
  %inc48 = add nsw i32 %38, 1
  store i32 %inc48, i32* %maxblue, align 4
  br label %while.cond.42

while.end.49:                                     ; preds = %while.cond.42
  %39 = load i32, i32* %maxblue, align 4
  %shl50 = shl i32 1, %39
  %sub51 = sub nsw i32 %shl50, 1
  store i32 %sub51, i32* %maxblue, align 4
  store i32 0, i32* %red, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.81, %while.end.49
  %40 = load i32, i32* %red, align 4
  %41 = load i32, i32* %maxred, align 4
  %cmp52 = icmp sle i32 %40, %41
  br i1 %cmp52, label %for.body, label %for.end.83

for.body:                                         ; preds = %for.cond
  %42 = load i32, i32* %red, align 4
  %mul54 = mul nsw i32 %42, 255
  %43 = load i32, i32* %maxred, align 4
  %div = sdiv i32 %mul54, %43
  store i32 %div, i32* %redval, align 4
  store i32 0, i32* %green, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.78, %for.body
  %44 = load i32, i32* %green, align 4
  %45 = load i32, i32* %maxgreen, align 4
  %cmp56 = icmp sle i32 %44, %45
  br i1 %cmp56, label %for.body.58, label %for.end.80

for.body.58:                                      ; preds = %for.cond.55
  %46 = load i32, i32* %green, align 4
  %mul59 = mul nsw i32 %46, 255
  %47 = load i32, i32* %maxgreen, align 4
  %div60 = sdiv i32 %mul59, %47
  store i32 %div60, i32* %greenval, align 4
  store i32 0, i32* %blue, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc, %for.body.58
  %48 = load i32, i32* %blue, align 4
  %49 = load i32, i32* %maxblue, align 4
  %cmp62 = icmp sle i32 %48, %49
  br i1 %cmp62, label %for.body.64, label %for.end

for.body.64:                                      ; preds = %for.cond.61
  %50 = load i32, i32* %blue, align 4
  %mul65 = mul nsw i32 %50, 255
  %51 = load i32, i32* %maxblue, align 4
  %div66 = sdiv i32 %mul65, %51
  store i32 %div66, i32* %blueval, align 4
  %52 = load i8*, i8** %ColorMap, align 8
  %53 = load i32, i32* %red, align 4
  %54 = load i32, i32* %redshift, align 4
  %shl67 = shl i32 %53, %54
  %55 = load i32, i32* %green, align 4
  %56 = load i32, i32* %greenshift, align 4
  %shl68 = shl i32 %55, %56
  %add69 = add nsw i32 %shl67, %shl68
  %57 = load i32, i32* %blue, align 4
  %58 = load i32, i32* %blueshift, align 4
  %shl70 = shl i32 %57, %58
  %add71 = add nsw i32 %add69, %shl70
  %mul72 = mul nsw i32 %add71, 3
  %idx.ext = sext i32 %mul72 to i64
  %add.ptr = getelementptr inbounds i8, i8* %52, i64 %idx.ext
  store i8* %add.ptr, i8** %cm, align 8
  %59 = load i32, i32* %redval, align 4
  %conv73 = trunc i32 %59 to i8
  %60 = load i8*, i8** %cm, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr, i8** %cm, align 8
  store i8 %conv73, i8* %60, align 1
  %61 = load i32, i32* %greenval, align 4
  %conv74 = trunc i32 %61 to i8
  %62 = load i8*, i8** %cm, align 8
  %incdec.ptr75 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr75, i8** %cm, align 8
  store i8 %conv74, i8* %62, align 1
  %63 = load i32, i32* %blueval, align 4
  %conv76 = trunc i32 %63 to i8
  %64 = load i8*, i8** %cm, align 8
  store i8 %conv76, i8* %64, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.64
  %65 = load i32, i32* %blue, align 4
  %inc77 = add nsw i32 %65, 1
  store i32 %inc77, i32* %blue, align 4
  br label %for.cond.61

for.end:                                          ; preds = %for.cond.61
  br label %for.inc.78

for.inc.78:                                       ; preds = %for.end
  %66 = load i32, i32* %green, align 4
  %inc79 = add nsw i32 %66, 1
  store i32 %inc79, i32* %green, align 4
  br label %for.cond.55

for.end.80:                                       ; preds = %for.cond.55
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.end.80
  %67 = load i32, i32* %red, align 4
  %inc82 = add nsw i32 %67, 1
  store i32 %inc82, i32* %red, align 4
  br label %for.cond

for.end.83:                                       ; preds = %for.cond
  %68 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_colormap_entries = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %68, i32 0, i32 18
  %69 = load i64, i64* %l_colormap_entries, align 8
  %conv84 = trunc i64 %69 to i32
  store i32 %conv84, i32* %ncols, align 4
  %70 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_ncolors = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %70, i32 0, i32 19
  %71 = load i64, i64* %l_ncolors, align 8
  %72 = load i32, i32* %ncols, align 4
  %conv85 = sext i32 %72 to i64
  %cmp86 = icmp ult i64 %71, %conv85
  br i1 %cmp86, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.83
  %73 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_ncolors88 = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %73, i32 0, i32 19
  %74 = load i64, i64* %l_ncolors88, align 8
  %conv89 = trunc i64 %74 to i32
  store i32 %conv89, i32* %ncols, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.83
  store i32 0, i32* %j, align 4
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.113, %if.end
  %75 = load i32, i32* %j, align 4
  %76 = load i32, i32* %ncols, align 4
  %cmp91 = icmp slt i32 %75, %76
  br i1 %cmp91, label %for.body.93, label %for.end.115

for.body.93:                                      ; preds = %for.cond.90
  %77 = load i8*, i8** %ColorMap, align 8
  %78 = load i32, i32* %j, align 4
  %idxprom = sext i32 %78 to i64
  %79 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %xwdcolmap.addr, align 8
  %arrayidx = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %79, i64 %idxprom
  %l_pixel = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx, i32 0, i32 0
  %80 = load i64, i64* %l_pixel, align 8
  %mul94 = mul i64 %80, 3
  %add.ptr95 = getelementptr inbounds i8, i8* %77, i64 %mul94
  store i8* %add.ptr95, i8** %cm, align 8
  %81 = load i32, i32* %j, align 4
  %idxprom96 = sext i32 %81 to i64
  %82 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %xwdcolmap.addr, align 8
  %arrayidx97 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %82, i64 %idxprom96
  %l_red = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx97, i32 0, i32 1
  %83 = load i16, i16* %l_red, align 2
  %conv98 = zext i16 %83 to i32
  %shr99 = ashr i32 %conv98, 8
  %conv100 = trunc i32 %shr99 to i8
  %84 = load i8*, i8** %cm, align 8
  %incdec.ptr101 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %incdec.ptr101, i8** %cm, align 8
  store i8 %conv100, i8* %84, align 1
  %85 = load i32, i32* %j, align 4
  %idxprom102 = sext i32 %85 to i64
  %86 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %xwdcolmap.addr, align 8
  %arrayidx103 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %86, i64 %idxprom102
  %l_green = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx103, i32 0, i32 2
  %87 = load i16, i16* %l_green, align 2
  %conv104 = zext i16 %87 to i32
  %shr105 = ashr i32 %conv104, 8
  %conv106 = trunc i32 %shr105 to i8
  %88 = load i8*, i8** %cm, align 8
  %incdec.ptr107 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %incdec.ptr107, i8** %cm, align 8
  store i8 %conv106, i8* %88, align 1
  %89 = load i32, i32* %j, align 4
  %idxprom108 = sext i32 %89 to i64
  %90 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %xwdcolmap.addr, align 8
  %arrayidx109 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %90, i64 %idxprom108
  %l_blue = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx109, i32 0, i32 3
  %91 = load i16, i16* %l_blue, align 2
  %conv110 = zext i16 %91 to i32
  %shr111 = ashr i32 %conv110, 8
  %conv112 = trunc i32 %shr111 to i8
  %92 = load i8*, i8** %cm, align 8
  store i8 %conv112, i8* %92, align 1
  br label %for.inc.113

for.inc.113:                                      ; preds = %for.body.93
  %93 = load i32, i32* %j, align 4
  %inc114 = add nsw i32 %93, 1
  store i32 %inc114, i32* %j, align 4
  br label %for.cond.90

for.end.115:                                      ; preds = %for.cond.90
  %94 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_bytes_per_line = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %94, i32 0, i32 12
  %95 = load i64, i64* %l_bytes_per_line, align 8
  %96 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_pixmap_width116 = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %96, i32 0, i32 4
  %97 = load i64, i64* %l_pixmap_width116, align 8
  %98 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_bits_per_pixel = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %98, i32 0, i32 11
  %99 = load i64, i64* %l_bits_per_pixel, align 8
  %mul117 = mul i64 %97, %99
  %div118 = udiv i64 %mul117, 8
  %sub119 = sub i64 %95, %div118
  %conv120 = trunc i64 %sub119 to i32
  store i32 %conv120, i32* %linepad, align 4
  %100 = load i32, i32* %linepad, align 4
  %cmp121 = icmp slt i32 %100, 0
  br i1 %cmp121, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %for.end.115
  store i32 0, i32* %linepad, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.123, %for.end.115
  %101 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_byte_order = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %101, i32 0, i32 7
  %102 = load i64, i64* %l_byte_order, align 8
  %cmp125 = icmp eq i64 %102, 0
  %conv126 = zext i1 %cmp125 to i32
  %conv127 = trunc i32 %conv126 to i8
  store i8 %conv127, i8* %lsbyte_first, align 1
  %103 = load i8*, i8** %data, align 8
  store i8* %103, i8** %dest, align 8
  store i32 0, i32* %scan_lines, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.128

for.cond.128:                                     ; preds = %for.inc.189, %if.end.124
  %104 = load i32, i32* %i, align 4
  %105 = load i32, i32* %height, align 4
  %cmp129 = icmp slt i32 %104, %105
  br i1 %cmp129, label %for.body.131, label %for.end.191

for.body.131:                                     ; preds = %for.cond.128
  store i32 0, i32* %j, align 4
  br label %for.cond.132

for.cond.132:                                     ; preds = %for.inc.156, %for.body.131
  %106 = load i32, i32* %j, align 4
  %107 = load i32, i32* %width, align 4
  %cmp133 = icmp slt i32 %106, %107
  br i1 %cmp133, label %for.body.135, label %for.end.158

for.body.135:                                     ; preds = %for.cond.132
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call136 = call i32 @_IO_getc(%struct._IO_FILE* %108)
  store i32 %call136, i32* %c0, align 4
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call137 = call i32 @_IO_getc(%struct._IO_FILE* %109)
  store i32 %call137, i32* %c1, align 4
  %110 = load i32, i32* %c1, align 4
  %cmp138 = icmp slt i32 %110, 0
  br i1 %cmp138, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %for.body.135
  store i32 1, i32* %err, align 4
  br label %for.end.158

if.end.141:                                       ; preds = %for.body.135
  %111 = load i8, i8* %lsbyte_first, align 1
  %tobool142 = icmp ne i8 %111, 0
  br i1 %tobool142, label %if.then.143, label %if.else

if.then.143:                                      ; preds = %if.end.141
  %112 = load i32, i32* %c0, align 4
  %113 = load i32, i32* %c1, align 4
  %shl144 = shl i32 %113, 8
  %or = or i32 %112, %shl144
  store i32 %or, i32* %c0, align 4
  br label %if.end.147

if.else:                                          ; preds = %if.end.141
  %114 = load i32, i32* %c0, align 4
  %shl145 = shl i32 %114, 8
  %115 = load i32, i32* %c1, align 4
  %or146 = or i32 %shl145, %115
  store i32 %or146, i32* %c0, align 4
  br label %if.end.147

if.end.147:                                       ; preds = %if.else, %if.then.143
  %116 = load i8*, i8** %ColorMap, align 8
  %117 = load i32, i32* %c0, align 4
  %mul148 = mul nsw i32 %117, 3
  %idx.ext149 = sext i32 %mul148 to i64
  %add.ptr150 = getelementptr inbounds i8, i8* %116, i64 %idx.ext149
  store i8* %add.ptr150, i8** %cm, align 8
  %118 = load i8*, i8** %cm, align 8
  %incdec.ptr151 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %incdec.ptr151, i8** %cm, align 8
  %119 = load i8, i8* %118, align 1
  %120 = load i8*, i8** %dest, align 8
  %incdec.ptr152 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %incdec.ptr152, i8** %dest, align 8
  store i8 %119, i8* %120, align 1
  %121 = load i8*, i8** %cm, align 8
  %incdec.ptr153 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %incdec.ptr153, i8** %cm, align 8
  %122 = load i8, i8* %121, align 1
  %123 = load i8*, i8** %dest, align 8
  %incdec.ptr154 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %incdec.ptr154, i8** %dest, align 8
  store i8 %122, i8* %123, align 1
  %124 = load i8*, i8** %cm, align 8
  %125 = load i8, i8* %124, align 1
  %126 = load i8*, i8** %dest, align 8
  %incdec.ptr155 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %incdec.ptr155, i8** %dest, align 8
  store i8 %125, i8* %126, align 1
  br label %for.inc.156

for.inc.156:                                      ; preds = %if.end.147
  %127 = load i32, i32* %j, align 4
  %inc157 = add nsw i32 %127, 1
  store i32 %inc157, i32* %j, align 4
  br label %for.cond.132

for.end.158:                                      ; preds = %if.then.140, %for.cond.132
  %128 = load i32, i32* %err, align 4
  %tobool159 = icmp ne i32 %128, 0
  br i1 %tobool159, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %for.end.158
  br label %for.end.191

if.end.161:                                       ; preds = %for.end.158
  store i32 0, i32* %j, align 4
  br label %for.cond.162

for.cond.162:                                     ; preds = %for.inc.167, %if.end.161
  %129 = load i32, i32* %j, align 4
  %130 = load i32, i32* %linepad, align 4
  %cmp163 = icmp slt i32 %129, %130
  br i1 %cmp163, label %for.body.165, label %for.end.169

for.body.165:                                     ; preds = %for.cond.162
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call166 = call i32 @_IO_getc(%struct._IO_FILE* %131)
  br label %for.inc.167

for.inc.167:                                      ; preds = %for.body.165
  %132 = load i32, i32* %j, align 4
  %inc168 = add nsw i32 %132, 1
  store i32 %inc168, i32* %j, align 4
  br label %for.cond.162

for.end.169:                                      ; preds = %for.cond.162
  %133 = load i32, i32* %scan_lines, align 4
  %inc170 = add nsw i32 %133, 1
  store i32 %inc170, i32* %scan_lines, align 4
  %134 = load i32, i32* %i, align 4
  %rem = srem i32 %134, 20
  %cmp171 = icmp eq i32 %rem, 0
  br i1 %cmp171, label %if.then.173, label %if.end.179

if.then.173:                                      ; preds = %for.end.169
  %135 = load i32, i32* %i, align 4
  %add174 = add nsw i32 %135, 1
  %conv175 = sitofp i32 %add174 to double
  %136 = load i32, i32* %height, align 4
  %conv176 = sitofp i32 %136 to double
  %div177 = fdiv double %conv175, %conv176
  %call178 = call i32 @gimp_progress_update(double %div177)
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.173, %for.end.169
  %137 = load i32, i32* %scan_lines, align 4
  %138 = load i32, i32* %tile_height, align 4
  %cmp180 = icmp eq i32 %137, %138
  br i1 %cmp180, label %if.then.185, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.179
  %139 = load i32, i32* %i, align 4
  %add182 = add nsw i32 %139, 1
  %140 = load i32, i32* %height, align 4
  %cmp183 = icmp eq i32 %add182, %140
  br i1 %cmp183, label %if.then.185, label %if.end.188

if.then.185:                                      ; preds = %lor.lhs.false, %if.end.179
  %141 = load i8*, i8** %data, align 8
  %142 = load i32, i32* %i, align 4
  %143 = load i32, i32* %scan_lines, align 4
  %sub186 = sub nsw i32 %142, %143
  %add187 = add nsw i32 %sub186, 1
  %144 = load i32, i32* %width, align 4
  %145 = load i32, i32* %scan_lines, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %141, i32 0, i32 %add187, i32 %144, i32 %145)
  store i32 0, i32* %scan_lines, align 4
  %146 = load i8*, i8** %data, align 8
  store i8* %146, i8** %dest, align 8
  br label %if.end.188

if.end.188:                                       ; preds = %if.then.185, %lor.lhs.false
  br label %for.inc.189

for.inc.189:                                      ; preds = %if.end.188
  %147 = load i32, i32* %i, align 4
  %inc190 = add nsw i32 %147, 1
  store i32 %inc190, i32* %i, align 4
  br label %for.cond.128

for.end.191:                                      ; preds = %if.then.160, %for.cond.128
  %148 = load i8*, i8** %data, align 8
  call void @g_free(i8* %148)
  %149 = load i8*, i8** %ColorMap, align 8
  call void @g_free(i8* %149)
  %150 = load i32, i32* %err, align 4
  %tobool192 = icmp ne i32 %150, 0
  br i1 %tobool192, label %if.then.193, label %if.end.195

if.then.193:                                      ; preds = %for.end.191
  %call194 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call194)
  br label %if.end.195

if.end.195:                                       ; preds = %if.then.193, %for.end.191
  %151 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %151)
  %152 = load i32, i32* %err, align 4
  %tobool196 = icmp ne i32 %152, 0
  br i1 %tobool196, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.195
  br label %cond.end

cond.false:                                       ; preds = %if.end.195
  %153 = load i32, i32* %image_ID, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %153, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @load_xwd_f2_d24_b32(i8* %filename, %struct._IO_FILE* %ifp, %struct.L_XWDFILEHEADER* %xwdhdr, %struct.L_XWDCOLOR* %xwdcolmap, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %ifp.addr = alloca %struct._IO_FILE*, align 8
  %xwdhdr.addr = alloca %struct.L_XWDFILEHEADER*, align 8
  %xwdcolmap.addr = alloca %struct.L_XWDCOLOR*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %dest = alloca i8*, align 8
  %lsbyte_first = alloca i8, align 1
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %linepad = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %c0 = alloca i32, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %c3 = alloca i32, align 4
  %tile_height = alloca i32, align 4
  %scan_lines = alloca i32, align 4
  %pixelval = alloca i64, align 8
  %red = alloca i32, align 4
  %green = alloca i32, align 4
  %blue = alloca i32, align 4
  %ncols = alloca i32, align 4
  %maxred = alloca i32, align 4
  %maxgreen = alloca i32, align 4
  %maxblue = alloca i32, align 4
  %redmask = alloca i64, align 8
  %greenmask = alloca i64, align 8
  %bluemask = alloca i64, align 8
  %redshift = alloca i32, align 4
  %greenshift = alloca i32, align 4
  %blueshift = alloca i32, align 4
  %redmap = alloca [256 x i8], align 16
  %greenmap = alloca [256 x i8], align 16
  %bluemap = alloca [256 x i8], align 16
  %data = alloca i8*, align 8
  %pixel_map = alloca %struct.PIXEL_MAP, align 8
  %err = alloca i32, align 4
  %layer_ID = alloca i32, align 4
  %image_ID = alloca i32, align 4
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._IO_FILE* %ifp, %struct._IO_FILE** %ifp.addr, align 8
  store %struct.L_XWDFILEHEADER* %xwdhdr, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  store %struct.L_XWDCOLOR* %xwdcolmap, %struct.L_XWDCOLOR** %xwdcolmap.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %err, align 4
  %0 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_pixmap_width = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %0, i32 0, i32 4
  %1 = load i64, i64* %l_pixmap_width, align 8
  %conv = trunc i64 %1 to i32
  store i32 %conv, i32* %width, align 4
  %2 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_pixmap_height = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %2, i32 0, i32 5
  %3 = load i64, i64* %l_pixmap_height, align 8
  %conv1 = trunc i64 %3 to i32
  store i32 %conv1, i32* %height, align 4
  %4 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_red_mask = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %4, i32 0, i32 14
  %5 = load i64, i64* %l_red_mask, align 8
  store i64 %5, i64* %redmask, align 8
  %6 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_green_mask = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %6, i32 0, i32 15
  %7 = load i64, i64* %l_green_mask, align 8
  store i64 %7, i64* %greenmask, align 8
  %8 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_blue_mask = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %8, i32 0, i32 16
  %9 = load i64, i64* %l_blue_mask, align 8
  store i64 %9, i64* %bluemask, align 8
  %10 = load i64, i64* %redmask, align 8
  %cmp = icmp eq i64 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 16711680, i64* %redmask, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i64, i64* %greenmask, align 8
  %cmp3 = icmp eq i64 %11, 0
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i64 65280, i64* %greenmask, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %12 = load i64, i64* %bluemask, align 8
  %cmp7 = icmp eq i64 %12, 0
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store i64 255, i64* %bluemask, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.6
  store i32 0, i32* %blueshift, align 4
  store i32 0, i32* %greenshift, align 4
  store i32 0, i32* %redshift, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.10
  %13 = load i32, i32* %redshift, align 4
  %shl = shl i32 1, %13
  %conv11 = sext i32 %shl to i64
  %14 = load i64, i64* %redmask, align 8
  %and = and i64 %conv11, %14
  %cmp12 = icmp eq i64 %and, 0
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load i32, i32* %redshift, align 4
  %inc = add i32 %15, 1
  store i32 %inc, i32* %redshift, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.14

while.cond.14:                                    ; preds = %while.body.20, %while.end
  %16 = load i32, i32* %greenshift, align 4
  %shl15 = shl i32 1, %16
  %conv16 = sext i32 %shl15 to i64
  %17 = load i64, i64* %greenmask, align 8
  %and17 = and i64 %conv16, %17
  %cmp18 = icmp eq i64 %and17, 0
  br i1 %cmp18, label %while.body.20, label %while.end.22

while.body.20:                                    ; preds = %while.cond.14
  %18 = load i32, i32* %greenshift, align 4
  %inc21 = add i32 %18, 1
  store i32 %inc21, i32* %greenshift, align 4
  br label %while.cond.14

while.end.22:                                     ; preds = %while.cond.14
  br label %while.cond.23

while.cond.23:                                    ; preds = %while.body.29, %while.end.22
  %19 = load i32, i32* %blueshift, align 4
  %shl24 = shl i32 1, %19
  %conv25 = sext i32 %shl24 to i64
  %20 = load i64, i64* %bluemask, align 8
  %and26 = and i64 %conv25, %20
  %cmp27 = icmp eq i64 %and26, 0
  br i1 %cmp27, label %while.body.29, label %while.end.31

while.body.29:                                    ; preds = %while.cond.23
  %21 = load i32, i32* %blueshift, align 4
  %inc30 = add i32 %21, 1
  store i32 %inc30, i32* %blueshift, align 4
  br label %while.cond.23

while.end.31:                                     ; preds = %while.cond.23
  store i32 0, i32* %maxred, align 4
  br label %while.cond.32

while.cond.32:                                    ; preds = %while.body.33, %while.end.31
  %22 = load i64, i64* %redmask, align 8
  %23 = load i32, i32* %redshift, align 4
  %24 = load i32, i32* %maxred, align 4
  %add = add i32 %23, %24
  %sh_prom = zext i32 %add to i64
  %shr = lshr i64 %22, %sh_prom
  %tobool = icmp ne i64 %shr, 0
  br i1 %tobool, label %while.body.33, label %while.end.35

while.body.33:                                    ; preds = %while.cond.32
  %25 = load i32, i32* %maxred, align 4
  %inc34 = add nsw i32 %25, 1
  store i32 %inc34, i32* %maxred, align 4
  br label %while.cond.32

while.end.35:                                     ; preds = %while.cond.32
  %26 = load i32, i32* %maxred, align 4
  %shl36 = shl i32 1, %26
  %sub = sub nsw i32 %shl36, 1
  store i32 %sub, i32* %maxred, align 4
  store i32 0, i32* %maxgreen, align 4
  br label %while.cond.37

while.cond.37:                                    ; preds = %while.body.42, %while.end.35
  %27 = load i64, i64* %greenmask, align 8
  %28 = load i32, i32* %greenshift, align 4
  %29 = load i32, i32* %maxgreen, align 4
  %add38 = add i32 %28, %29
  %sh_prom39 = zext i32 %add38 to i64
  %shr40 = lshr i64 %27, %sh_prom39
  %tobool41 = icmp ne i64 %shr40, 0
  br i1 %tobool41, label %while.body.42, label %while.end.44

while.body.42:                                    ; preds = %while.cond.37
  %30 = load i32, i32* %maxgreen, align 4
  %inc43 = add nsw i32 %30, 1
  store i32 %inc43, i32* %maxgreen, align 4
  br label %while.cond.37

while.end.44:                                     ; preds = %while.cond.37
  %31 = load i32, i32* %maxgreen, align 4
  %shl45 = shl i32 1, %31
  %sub46 = sub nsw i32 %shl45, 1
  store i32 %sub46, i32* %maxgreen, align 4
  store i32 0, i32* %maxblue, align 4
  br label %while.cond.47

while.cond.47:                                    ; preds = %while.body.52, %while.end.44
  %32 = load i64, i64* %bluemask, align 8
  %33 = load i32, i32* %blueshift, align 4
  %34 = load i32, i32* %maxblue, align 4
  %add48 = add i32 %33, %34
  %sh_prom49 = zext i32 %add48 to i64
  %shr50 = lshr i64 %32, %sh_prom49
  %tobool51 = icmp ne i64 %shr50, 0
  br i1 %tobool51, label %while.body.52, label %while.end.54

while.body.52:                                    ; preds = %while.cond.47
  %35 = load i32, i32* %maxblue, align 4
  %inc53 = add nsw i32 %35, 1
  store i32 %inc53, i32* %maxblue, align 4
  br label %while.cond.47

while.end.54:                                     ; preds = %while.cond.47
  %36 = load i32, i32* %maxblue, align 4
  %shl55 = shl i32 1, %36
  %sub56 = sub nsw i32 %shl55, 1
  store i32 %sub56, i32* %maxblue, align 4
  %37 = load i32, i32* %maxred, align 4
  %conv57 = sext i32 %37 to i64
  %cmp58 = icmp ugt i64 %conv57, 256
  br i1 %cmp58, label %if.then.67, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end.54
  %38 = load i32, i32* %maxgreen, align 4
  %conv60 = sext i32 %38 to i64
  %cmp61 = icmp ugt i64 %conv60, 256
  br i1 %cmp61, label %if.then.67, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %lor.lhs.false
  %39 = load i32, i32* %maxblue, align 4
  %conv64 = sext i32 %39 to i64
  %cmp65 = icmp ugt i64 %conv64, 256
  br i1 %cmp65, label %if.then.67, label %if.end.70

if.then.67:                                       ; preds = %lor.lhs.false.63, %lor.lhs.false, %while.end.54
  %40 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call = call i32 @g_file_error_quark()
  %call68 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.48, i32 0, i32 0)) #5
  %41 = load i8*, i8** %filename.addr, align 8
  %call69 = call i8* @gimp_filename_to_utf8(i8* %41)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %40, i32 %call, i32 24, i8* %call68, i8* %call69)
  store i32 -1, i32* %retval
  br label %return

if.end.70:                                        ; preds = %lor.lhs.false.63
  %42 = load i8*, i8** %filename.addr, align 8
  %43 = load i32, i32* %width, align 4
  %44 = load i32, i32* %height, align 4
  %call71 = call i32 @create_new_image(i8* %42, i32 %43, i32 %44, i32 0, i32* %layer_ID, %struct._GimpDrawable** %drawable, %struct._GimpPixelRgn* %pixel_rgn)
  store i32 %call71, i32* %image_ID, align 4
  %call72 = call i32 @gimp_tile_height() #6
  store i32 %call72, i32* %tile_height, align 4
  %45 = load i32, i32* %tile_height, align 4
  %46 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %45, %46
  %mul73 = mul nsw i32 %mul, 3
  %conv74 = sext i32 %mul73 to i64
  %call75 = call noalias i8* @g_malloc(i64 %conv74)
  store i8* %call75, i8** %data, align 8
  store i32 0, i32* %red, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.70
  %47 = load i32, i32* %red, align 4
  %48 = load i32, i32* %maxred, align 4
  %cmp76 = icmp sle i32 %47, %48
  br i1 %cmp76, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %49 = load i32, i32* %red, align 4
  %mul78 = mul nsw i32 %49, 255
  %50 = load i32, i32* %maxred, align 4
  %div = sdiv i32 %mul78, %50
  %conv79 = trunc i32 %div to i8
  %51 = load i32, i32* %red, align 4
  %idxprom = sext i32 %51 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %redmap, i32 0, i64 %idxprom
  store i8 %conv79, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %52 = load i32, i32* %red, align 4
  %inc80 = add nsw i32 %52, 1
  store i32 %inc80, i32* %red, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %green, align 4
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.90, %for.end
  %53 = load i32, i32* %green, align 4
  %54 = load i32, i32* %maxgreen, align 4
  %cmp82 = icmp sle i32 %53, %54
  br i1 %cmp82, label %for.body.84, label %for.end.92

for.body.84:                                      ; preds = %for.cond.81
  %55 = load i32, i32* %green, align 4
  %mul85 = mul nsw i32 %55, 255
  %56 = load i32, i32* %maxgreen, align 4
  %div86 = sdiv i32 %mul85, %56
  %conv87 = trunc i32 %div86 to i8
  %57 = load i32, i32* %green, align 4
  %idxprom88 = sext i32 %57 to i64
  %arrayidx89 = getelementptr inbounds [256 x i8], [256 x i8]* %greenmap, i32 0, i64 %idxprom88
  store i8 %conv87, i8* %arrayidx89, align 1
  br label %for.inc.90

for.inc.90:                                       ; preds = %for.body.84
  %58 = load i32, i32* %green, align 4
  %inc91 = add nsw i32 %58, 1
  store i32 %inc91, i32* %green, align 4
  br label %for.cond.81

for.end.92:                                       ; preds = %for.cond.81
  store i32 0, i32* %blue, align 4
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc.102, %for.end.92
  %59 = load i32, i32* %blue, align 4
  %60 = load i32, i32* %maxblue, align 4
  %cmp94 = icmp sle i32 %59, %60
  br i1 %cmp94, label %for.body.96, label %for.end.104

for.body.96:                                      ; preds = %for.cond.93
  %61 = load i32, i32* %blue, align 4
  %mul97 = mul nsw i32 %61, 255
  %62 = load i32, i32* %maxblue, align 4
  %div98 = sdiv i32 %mul97, %62
  %conv99 = trunc i32 %div98 to i8
  %63 = load i32, i32* %blue, align 4
  %idxprom100 = sext i32 %63 to i64
  %arrayidx101 = getelementptr inbounds [256 x i8], [256 x i8]* %bluemap, i32 0, i64 %idxprom100
  store i8 %conv99, i8* %arrayidx101, align 1
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.body.96
  %64 = load i32, i32* %blue, align 4
  %inc103 = add nsw i32 %64, 1
  store i32 %inc103, i32* %blue, align 4
  br label %for.cond.93

for.end.104:                                      ; preds = %for.cond.93
  %65 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_colormap_entries = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %65, i32 0, i32 18
  %66 = load i64, i64* %l_colormap_entries, align 8
  %conv105 = trunc i64 %66 to i32
  store i32 %conv105, i32* %ncols, align 4
  %67 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_ncolors = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %67, i32 0, i32 19
  %68 = load i64, i64* %l_ncolors, align 8
  %69 = load i32, i32* %ncols, align 4
  %conv106 = sext i32 %69 to i64
  %cmp107 = icmp ult i64 %68, %conv106
  br i1 %cmp107, label %if.then.109, label %if.end.112

if.then.109:                                      ; preds = %for.end.104
  %70 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_ncolors110 = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %70, i32 0, i32 19
  %71 = load i64, i64* %l_ncolors110, align 8
  %conv111 = trunc i64 %71 to i32
  store i32 %conv111, i32* %ncols, align 4
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.109, %for.end.104
  %72 = load i32, i32* %ncols, align 4
  %73 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %xwdcolmap.addr, align 8
  %call113 = call i32 @set_pixelmap(i32 %72, %struct.L_XWDCOLOR* %73, %struct.PIXEL_MAP* %pixel_map)
  %74 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_bytes_per_line = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %74, i32 0, i32 12
  %75 = load i64, i64* %l_bytes_per_line, align 8
  %76 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_pixmap_width114 = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %76, i32 0, i32 4
  %77 = load i64, i64* %l_pixmap_width114, align 8
  %78 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_bits_per_pixel = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %78, i32 0, i32 11
  %79 = load i64, i64* %l_bits_per_pixel, align 8
  %mul115 = mul i64 %77, %79
  %div116 = udiv i64 %mul115, 8
  %sub117 = sub i64 %75, %div116
  %conv118 = trunc i64 %sub117 to i32
  store i32 %conv118, i32* %linepad, align 4
  %80 = load i32, i32* %linepad, align 4
  %cmp119 = icmp slt i32 %80, 0
  br i1 %cmp119, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %if.end.112
  store i32 0, i32* %linepad, align 4
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.121, %if.end.112
  %81 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_byte_order = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %81, i32 0, i32 7
  %82 = load i64, i64* %l_byte_order, align 8
  %cmp123 = icmp eq i64 %82, 0
  %conv124 = zext i1 %cmp123 to i32
  %conv125 = trunc i32 %conv124 to i8
  store i8 %conv125, i8* %lsbyte_first, align 1
  %83 = load i8*, i8** %data, align 8
  store i8* %83, i8** %dest, align 8
  store i32 0, i32* %scan_lines, align 4
  %84 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_bits_per_pixel126 = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %84, i32 0, i32 11
  %85 = load i64, i64* %l_bits_per_pixel126, align 8
  %cmp127 = icmp eq i64 %85, 32
  br i1 %cmp127, label %if.then.129, label %if.else.220

if.then.129:                                      ; preds = %if.end.122
  store i32 0, i32* %i, align 4
  br label %for.cond.130

for.cond.130:                                     ; preds = %for.inc.217, %if.then.129
  %86 = load i32, i32* %i, align 4
  %87 = load i32, i32* %height, align 4
  %cmp131 = icmp slt i32 %86, %87
  br i1 %cmp131, label %for.body.133, label %for.end.219

for.body.133:                                     ; preds = %for.cond.130
  store i32 0, i32* %j, align 4
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.183, %for.body.133
  %88 = load i32, i32* %j, align 4
  %89 = load i32, i32* %width, align 4
  %cmp135 = icmp slt i32 %88, %89
  br i1 %cmp135, label %for.body.137, label %for.end.185

for.body.137:                                     ; preds = %for.cond.134
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call138 = call i32 @_IO_getc(%struct._IO_FILE* %90)
  store i32 %call138, i32* %c0, align 4
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call139 = call i32 @_IO_getc(%struct._IO_FILE* %91)
  store i32 %call139, i32* %c1, align 4
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call140 = call i32 @_IO_getc(%struct._IO_FILE* %92)
  store i32 %call140, i32* %c2, align 4
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call141 = call i32 @_IO_getc(%struct._IO_FILE* %93)
  store i32 %call141, i32* %c3, align 4
  %94 = load i32, i32* %c3, align 4
  %cmp142 = icmp slt i32 %94, 0
  br i1 %cmp142, label %if.then.144, label %if.end.145

if.then.144:                                      ; preds = %for.body.137
  store i32 1, i32* %err, align 4
  br label %for.end.185

if.end.145:                                       ; preds = %for.body.137
  %95 = load i8, i8* %lsbyte_first, align 1
  %tobool146 = icmp ne i8 %95, 0
  br i1 %tobool146, label %if.then.147, label %if.else

if.then.147:                                      ; preds = %if.end.145
  %96 = load i32, i32* %c0, align 4
  %97 = load i32, i32* %c1, align 4
  %shl148 = shl i32 %97, 8
  %or = or i32 %96, %shl148
  %98 = load i32, i32* %c2, align 4
  %shl149 = shl i32 %98, 16
  %or150 = or i32 %or, %shl149
  %99 = load i32, i32* %c3, align 4
  %shl151 = shl i32 %99, 24
  %or152 = or i32 %or150, %shl151
  %conv153 = sext i32 %or152 to i64
  store i64 %conv153, i64* %pixelval, align 8
  br label %if.end.161

if.else:                                          ; preds = %if.end.145
  %100 = load i32, i32* %c0, align 4
  %shl154 = shl i32 %100, 24
  %101 = load i32, i32* %c1, align 4
  %shl155 = shl i32 %101, 16
  %or156 = or i32 %shl154, %shl155
  %102 = load i32, i32* %c2, align 4
  %shl157 = shl i32 %102, 8
  %or158 = or i32 %or156, %shl157
  %103 = load i32, i32* %c3, align 4
  %or159 = or i32 %or158, %103
  %conv160 = sext i32 %or159 to i64
  store i64 %conv160, i64* %pixelval, align 8
  br label %if.end.161

if.end.161:                                       ; preds = %if.else, %if.then.147
  %104 = load i64, i64* %pixelval, align 8
  %105 = load i8*, i8** %dest, align 8
  %106 = load i8*, i8** %dest, align 8
  %add.ptr = getelementptr inbounds i8, i8* %106, i64 1
  %107 = load i8*, i8** %dest, align 8
  %add.ptr162 = getelementptr inbounds i8, i8* %107, i64 2
  %call163 = call i32 @get_pixelmap(i64 %104, %struct.PIXEL_MAP* %pixel_map, i8* %105, i8* %add.ptr, i8* %add.ptr162)
  %tobool164 = icmp ne i32 %call163, 0
  br i1 %tobool164, label %if.then.165, label %if.else.167

if.then.165:                                      ; preds = %if.end.161
  %108 = load i8*, i8** %dest, align 8
  %add.ptr166 = getelementptr inbounds i8, i8* %108, i64 3
  store i8* %add.ptr166, i8** %dest, align 8
  br label %if.end.182

if.else.167:                                      ; preds = %if.end.161
  %109 = load i64, i64* %pixelval, align 8
  %110 = load i64, i64* %redmask, align 8
  %and168 = and i64 %109, %110
  %111 = load i32, i32* %redshift, align 4
  %sh_prom169 = zext i32 %111 to i64
  %shr170 = lshr i64 %and168, %sh_prom169
  %arrayidx171 = getelementptr inbounds [256 x i8], [256 x i8]* %redmap, i32 0, i64 %shr170
  %112 = load i8, i8* %arrayidx171, align 1
  %113 = load i8*, i8** %dest, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %incdec.ptr, i8** %dest, align 8
  store i8 %112, i8* %113, align 1
  %114 = load i64, i64* %pixelval, align 8
  %115 = load i64, i64* %greenmask, align 8
  %and172 = and i64 %114, %115
  %116 = load i32, i32* %greenshift, align 4
  %sh_prom173 = zext i32 %116 to i64
  %shr174 = lshr i64 %and172, %sh_prom173
  %arrayidx175 = getelementptr inbounds [256 x i8], [256 x i8]* %greenmap, i32 0, i64 %shr174
  %117 = load i8, i8* %arrayidx175, align 1
  %118 = load i8*, i8** %dest, align 8
  %incdec.ptr176 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %incdec.ptr176, i8** %dest, align 8
  store i8 %117, i8* %118, align 1
  %119 = load i64, i64* %pixelval, align 8
  %120 = load i64, i64* %bluemask, align 8
  %and177 = and i64 %119, %120
  %121 = load i32, i32* %blueshift, align 4
  %sh_prom178 = zext i32 %121 to i64
  %shr179 = lshr i64 %and177, %sh_prom178
  %arrayidx180 = getelementptr inbounds [256 x i8], [256 x i8]* %bluemap, i32 0, i64 %shr179
  %122 = load i8, i8* %arrayidx180, align 1
  %123 = load i8*, i8** %dest, align 8
  %incdec.ptr181 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %incdec.ptr181, i8** %dest, align 8
  store i8 %122, i8* %123, align 1
  br label %if.end.182

if.end.182:                                       ; preds = %if.else.167, %if.then.165
  br label %for.inc.183

for.inc.183:                                      ; preds = %if.end.182
  %124 = load i32, i32* %j, align 4
  %inc184 = add nsw i32 %124, 1
  store i32 %inc184, i32* %j, align 4
  br label %for.cond.134

for.end.185:                                      ; preds = %if.then.144, %for.cond.134
  %125 = load i32, i32* %scan_lines, align 4
  %inc186 = add nsw i32 %125, 1
  store i32 %inc186, i32* %scan_lines, align 4
  %126 = load i32, i32* %err, align 4
  %tobool187 = icmp ne i32 %126, 0
  br i1 %tobool187, label %if.then.188, label %if.end.189

if.then.188:                                      ; preds = %for.end.185
  br label %for.end.219

if.end.189:                                       ; preds = %for.end.185
  store i32 0, i32* %j, align 4
  br label %for.cond.190

for.cond.190:                                     ; preds = %for.inc.195, %if.end.189
  %127 = load i32, i32* %j, align 4
  %128 = load i32, i32* %linepad, align 4
  %cmp191 = icmp slt i32 %127, %128
  br i1 %cmp191, label %for.body.193, label %for.end.197

for.body.193:                                     ; preds = %for.cond.190
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call194 = call i32 @_IO_getc(%struct._IO_FILE* %129)
  br label %for.inc.195

for.inc.195:                                      ; preds = %for.body.193
  %130 = load i32, i32* %j, align 4
  %inc196 = add nsw i32 %130, 1
  store i32 %inc196, i32* %j, align 4
  br label %for.cond.190

for.end.197:                                      ; preds = %for.cond.190
  %131 = load i32, i32* %i, align 4
  %rem = srem i32 %131, 20
  %cmp198 = icmp eq i32 %rem, 0
  br i1 %cmp198, label %if.then.200, label %if.end.206

if.then.200:                                      ; preds = %for.end.197
  %132 = load i32, i32* %i, align 4
  %add201 = add nsw i32 %132, 1
  %conv202 = sitofp i32 %add201 to double
  %133 = load i32, i32* %height, align 4
  %conv203 = sitofp i32 %133 to double
  %div204 = fdiv double %conv202, %conv203
  %call205 = call i32 @gimp_progress_update(double %div204)
  br label %if.end.206

if.end.206:                                       ; preds = %if.then.200, %for.end.197
  %134 = load i32, i32* %scan_lines, align 4
  %135 = load i32, i32* %tile_height, align 4
  %cmp207 = icmp eq i32 %134, %135
  br i1 %cmp207, label %if.then.213, label %lor.lhs.false.209

lor.lhs.false.209:                                ; preds = %if.end.206
  %136 = load i32, i32* %i, align 4
  %add210 = add nsw i32 %136, 1
  %137 = load i32, i32* %height, align 4
  %cmp211 = icmp eq i32 %add210, %137
  br i1 %cmp211, label %if.then.213, label %if.end.216

if.then.213:                                      ; preds = %lor.lhs.false.209, %if.end.206
  %138 = load i8*, i8** %data, align 8
  %139 = load i32, i32* %i, align 4
  %140 = load i32, i32* %scan_lines, align 4
  %sub214 = sub nsw i32 %139, %140
  %add215 = add nsw i32 %sub214, 1
  %141 = load i32, i32* %width, align 4
  %142 = load i32, i32* %scan_lines, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %138, i32 0, i32 %add215, i32 %141, i32 %142)
  store i32 0, i32* %scan_lines, align 4
  %143 = load i8*, i8** %data, align 8
  store i8* %143, i8** %dest, align 8
  br label %if.end.216

if.end.216:                                       ; preds = %if.then.213, %lor.lhs.false.209
  br label %for.inc.217

for.inc.217:                                      ; preds = %if.end.216
  %144 = load i32, i32* %i, align 4
  %inc218 = add nsw i32 %144, 1
  store i32 %inc218, i32* %i, align 4
  br label %for.cond.130

for.end.219:                                      ; preds = %if.then.188, %for.cond.130
  br label %if.end.311

if.else.220:                                      ; preds = %if.end.122
  store i32 0, i32* %i, align 4
  br label %for.cond.221

for.cond.221:                                     ; preds = %for.inc.308, %if.else.220
  %145 = load i32, i32* %i, align 4
  %146 = load i32, i32* %height, align 4
  %cmp222 = icmp slt i32 %145, %146
  br i1 %cmp222, label %for.body.224, label %for.end.310

for.body.224:                                     ; preds = %for.cond.221
  store i32 0, i32* %j, align 4
  br label %for.cond.225

for.cond.225:                                     ; preds = %for.inc.273, %for.body.224
  %147 = load i32, i32* %j, align 4
  %148 = load i32, i32* %width, align 4
  %cmp226 = icmp slt i32 %147, %148
  br i1 %cmp226, label %for.body.228, label %for.end.275

for.body.228:                                     ; preds = %for.cond.225
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call229 = call i32 @_IO_getc(%struct._IO_FILE* %149)
  store i32 %call229, i32* %c0, align 4
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call230 = call i32 @_IO_getc(%struct._IO_FILE* %150)
  store i32 %call230, i32* %c1, align 4
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call231 = call i32 @_IO_getc(%struct._IO_FILE* %151)
  store i32 %call231, i32* %c2, align 4
  %152 = load i32, i32* %c2, align 4
  %cmp232 = icmp slt i32 %152, 0
  br i1 %cmp232, label %if.then.234, label %if.end.235

if.then.234:                                      ; preds = %for.body.228
  store i32 1, i32* %err, align 4
  br label %for.end.275

if.end.235:                                       ; preds = %for.body.228
  %153 = load i8, i8* %lsbyte_first, align 1
  %tobool236 = icmp ne i8 %153, 0
  br i1 %tobool236, label %if.then.237, label %if.else.243

if.then.237:                                      ; preds = %if.end.235
  %154 = load i32, i32* %c0, align 4
  %155 = load i32, i32* %c1, align 4
  %shl238 = shl i32 %155, 8
  %or239 = or i32 %154, %shl238
  %156 = load i32, i32* %c2, align 4
  %shl240 = shl i32 %156, 16
  %or241 = or i32 %or239, %shl240
  %conv242 = sext i32 %or241 to i64
  store i64 %conv242, i64* %pixelval, align 8
  br label %if.end.249

if.else.243:                                      ; preds = %if.end.235
  %157 = load i32, i32* %c0, align 4
  %shl244 = shl i32 %157, 16
  %158 = load i32, i32* %c1, align 4
  %shl245 = shl i32 %158, 8
  %or246 = or i32 %shl244, %shl245
  %159 = load i32, i32* %c2, align 4
  %or247 = or i32 %or246, %159
  %conv248 = sext i32 %or247 to i64
  store i64 %conv248, i64* %pixelval, align 8
  br label %if.end.249

if.end.249:                                       ; preds = %if.else.243, %if.then.237
  %160 = load i64, i64* %pixelval, align 8
  %161 = load i8*, i8** %dest, align 8
  %162 = load i8*, i8** %dest, align 8
  %add.ptr250 = getelementptr inbounds i8, i8* %162, i64 1
  %163 = load i8*, i8** %dest, align 8
  %add.ptr251 = getelementptr inbounds i8, i8* %163, i64 2
  %call252 = call i32 @get_pixelmap(i64 %160, %struct.PIXEL_MAP* %pixel_map, i8* %161, i8* %add.ptr250, i8* %add.ptr251)
  %tobool253 = icmp ne i32 %call252, 0
  br i1 %tobool253, label %if.then.254, label %if.else.256

if.then.254:                                      ; preds = %if.end.249
  %164 = load i8*, i8** %dest, align 8
  %add.ptr255 = getelementptr inbounds i8, i8* %164, i64 3
  store i8* %add.ptr255, i8** %dest, align 8
  br label %if.end.272

if.else.256:                                      ; preds = %if.end.249
  %165 = load i64, i64* %pixelval, align 8
  %166 = load i64, i64* %redmask, align 8
  %and257 = and i64 %165, %166
  %167 = load i32, i32* %redshift, align 4
  %sh_prom258 = zext i32 %167 to i64
  %shr259 = lshr i64 %and257, %sh_prom258
  %arrayidx260 = getelementptr inbounds [256 x i8], [256 x i8]* %redmap, i32 0, i64 %shr259
  %168 = load i8, i8* %arrayidx260, align 1
  %169 = load i8*, i8** %dest, align 8
  %incdec.ptr261 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %incdec.ptr261, i8** %dest, align 8
  store i8 %168, i8* %169, align 1
  %170 = load i64, i64* %pixelval, align 8
  %171 = load i64, i64* %greenmask, align 8
  %and262 = and i64 %170, %171
  %172 = load i32, i32* %greenshift, align 4
  %sh_prom263 = zext i32 %172 to i64
  %shr264 = lshr i64 %and262, %sh_prom263
  %arrayidx265 = getelementptr inbounds [256 x i8], [256 x i8]* %greenmap, i32 0, i64 %shr264
  %173 = load i8, i8* %arrayidx265, align 1
  %174 = load i8*, i8** %dest, align 8
  %incdec.ptr266 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %incdec.ptr266, i8** %dest, align 8
  store i8 %173, i8* %174, align 1
  %175 = load i64, i64* %pixelval, align 8
  %176 = load i64, i64* %bluemask, align 8
  %and267 = and i64 %175, %176
  %177 = load i32, i32* %blueshift, align 4
  %sh_prom268 = zext i32 %177 to i64
  %shr269 = lshr i64 %and267, %sh_prom268
  %arrayidx270 = getelementptr inbounds [256 x i8], [256 x i8]* %bluemap, i32 0, i64 %shr269
  %178 = load i8, i8* %arrayidx270, align 1
  %179 = load i8*, i8** %dest, align 8
  %incdec.ptr271 = getelementptr inbounds i8, i8* %179, i32 1
  store i8* %incdec.ptr271, i8** %dest, align 8
  store i8 %178, i8* %179, align 1
  br label %if.end.272

if.end.272:                                       ; preds = %if.else.256, %if.then.254
  br label %for.inc.273

for.inc.273:                                      ; preds = %if.end.272
  %180 = load i32, i32* %j, align 4
  %inc274 = add nsw i32 %180, 1
  store i32 %inc274, i32* %j, align 4
  br label %for.cond.225

for.end.275:                                      ; preds = %if.then.234, %for.cond.225
  %181 = load i32, i32* %scan_lines, align 4
  %inc276 = add nsw i32 %181, 1
  store i32 %inc276, i32* %scan_lines, align 4
  %182 = load i32, i32* %err, align 4
  %tobool277 = icmp ne i32 %182, 0
  br i1 %tobool277, label %if.then.278, label %if.end.279

if.then.278:                                      ; preds = %for.end.275
  br label %for.end.310

if.end.279:                                       ; preds = %for.end.275
  store i32 0, i32* %j, align 4
  br label %for.cond.280

for.cond.280:                                     ; preds = %for.inc.285, %if.end.279
  %183 = load i32, i32* %j, align 4
  %184 = load i32, i32* %linepad, align 4
  %cmp281 = icmp slt i32 %183, %184
  br i1 %cmp281, label %for.body.283, label %for.end.287

for.body.283:                                     ; preds = %for.cond.280
  %185 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call284 = call i32 @_IO_getc(%struct._IO_FILE* %185)
  br label %for.inc.285

for.inc.285:                                      ; preds = %for.body.283
  %186 = load i32, i32* %j, align 4
  %inc286 = add nsw i32 %186, 1
  store i32 %inc286, i32* %j, align 4
  br label %for.cond.280

for.end.287:                                      ; preds = %for.cond.280
  %187 = load i32, i32* %i, align 4
  %rem288 = srem i32 %187, 20
  %cmp289 = icmp eq i32 %rem288, 0
  br i1 %cmp289, label %if.then.291, label %if.end.297

if.then.291:                                      ; preds = %for.end.287
  %188 = load i32, i32* %i, align 4
  %add292 = add nsw i32 %188, 1
  %conv293 = sitofp i32 %add292 to double
  %189 = load i32, i32* %height, align 4
  %conv294 = sitofp i32 %189 to double
  %div295 = fdiv double %conv293, %conv294
  %call296 = call i32 @gimp_progress_update(double %div295)
  br label %if.end.297

if.end.297:                                       ; preds = %if.then.291, %for.end.287
  %190 = load i32, i32* %scan_lines, align 4
  %191 = load i32, i32* %tile_height, align 4
  %cmp298 = icmp eq i32 %190, %191
  br i1 %cmp298, label %if.then.304, label %lor.lhs.false.300

lor.lhs.false.300:                                ; preds = %if.end.297
  %192 = load i32, i32* %i, align 4
  %add301 = add nsw i32 %192, 1
  %193 = load i32, i32* %height, align 4
  %cmp302 = icmp eq i32 %add301, %193
  br i1 %cmp302, label %if.then.304, label %if.end.307

if.then.304:                                      ; preds = %lor.lhs.false.300, %if.end.297
  %194 = load i8*, i8** %data, align 8
  %195 = load i32, i32* %i, align 4
  %196 = load i32, i32* %scan_lines, align 4
  %sub305 = sub nsw i32 %195, %196
  %add306 = add nsw i32 %sub305, 1
  %197 = load i32, i32* %width, align 4
  %198 = load i32, i32* %scan_lines, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %194, i32 0, i32 %add306, i32 %197, i32 %198)
  store i32 0, i32* %scan_lines, align 4
  %199 = load i8*, i8** %data, align 8
  store i8* %199, i8** %dest, align 8
  br label %if.end.307

if.end.307:                                       ; preds = %if.then.304, %lor.lhs.false.300
  br label %for.inc.308

for.inc.308:                                      ; preds = %if.end.307
  %200 = load i32, i32* %i, align 4
  %inc309 = add nsw i32 %200, 1
  store i32 %inc309, i32* %i, align 4
  br label %for.cond.221

for.end.310:                                      ; preds = %if.then.278, %for.cond.221
  br label %if.end.311

if.end.311:                                       ; preds = %for.end.310, %for.end.219
  %201 = load i8*, i8** %data, align 8
  call void @g_free(i8* %201)
  %202 = load i32, i32* %err, align 4
  %tobool312 = icmp ne i32 %202, 0
  br i1 %tobool312, label %if.then.313, label %if.end.315

if.then.313:                                      ; preds = %if.end.311
  %call314 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call314)
  br label %if.end.315

if.end.315:                                       ; preds = %if.then.313, %if.end.311
  %203 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %203)
  %204 = load i32, i32* %err, align 4
  %tobool316 = icmp ne i32 %204, 0
  br i1 %tobool316, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.315
  br label %cond.end

cond.false:                                       ; preds = %if.end.315
  %205 = load i32, i32* %image_ID, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %205, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.67
  %206 = load i32, i32* %retval
  ret i32 %206
}

declare i32 @gimp_progress_update(double) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define internal i64 @read_card32(%struct._IO_FILE* %ifp, i32* %err) #0 {
entry:
  %ifp.addr = alloca %struct._IO_FILE*, align 8
  %err.addr = alloca i32*, align 8
  %c = alloca i64, align 8
  store %struct._IO_FILE* %ifp, %struct._IO_FILE** %ifp.addr, align 8
  store i32* %err, i32** %err.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %0)
  %conv = sext i32 %call to i64
  %shl = shl i64 %conv, 24
  store i64 %shl, i64* %c, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call1 = call i32 @_IO_getc(%struct._IO_FILE* %1)
  %conv2 = sext i32 %call1 to i64
  %shl3 = shl i64 %conv2, 16
  %2 = load i64, i64* %c, align 8
  %or = or i64 %2, %shl3
  store i64 %or, i64* %c, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call4 = call i32 @_IO_getc(%struct._IO_FILE* %3)
  %conv5 = sext i32 %call4 to i64
  %shl6 = shl i64 %conv5, 8
  %4 = load i64, i64* %c, align 8
  %or7 = or i64 %4, %shl6
  store i64 %or7, i64* %c, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call8 = call i32 @_IO_getc(%struct._IO_FILE* %5)
  %6 = load i32*, i32** %err.addr, align 8
  store i32 %call8, i32* %6, align 4
  %conv9 = sext i32 %call8 to i64
  %7 = load i64, i64* %c, align 8
  %or10 = or i64 %7, %conv9
  store i64 %or10, i64* %c, align 8
  %8 = load i32*, i32** %err.addr, align 8
  %9 = load i32, i32* %8, align 4
  %cmp = icmp slt i32 %9, 0
  %conv11 = zext i1 %cmp to i32
  %10 = load i32*, i32** %err.addr, align 8
  store i32 %conv11, i32* %10, align 4
  %11 = load i64, i64* %c, align 8
  ret i64 %11
}

declare i32 @_IO_getc(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare i64 @ftell(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal zeroext i16 @read_card16(%struct._IO_FILE* %ifp, i32* %err) #0 {
entry:
  %ifp.addr = alloca %struct._IO_FILE*, align 8
  %err.addr = alloca i32*, align 8
  %c = alloca i16, align 2
  store %struct._IO_FILE* %ifp, %struct._IO_FILE** %ifp.addr, align 8
  store i32* %err, i32** %err.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %0)
  %conv = trunc i32 %call to i16
  %conv1 = zext i16 %conv to i32
  %shl = shl i32 %conv1, 8
  %conv2 = trunc i32 %shl to i16
  store i16 %conv2, i16* %c, align 2
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call3 = call i32 @_IO_getc(%struct._IO_FILE* %1)
  %2 = load i32*, i32** %err.addr, align 8
  store i32 %call3, i32* %2, align 4
  %conv4 = trunc i32 %call3 to i16
  %conv5 = zext i16 %conv4 to i32
  %3 = load i16, i16* %c, align 2
  %conv6 = zext i16 %3 to i32
  %or = or i32 %conv6, %conv5
  %conv7 = trunc i32 %or to i16
  store i16 %conv7, i16* %c, align 2
  %4 = load i32*, i32** %err.addr, align 8
  %5 = load i32, i32* %4, align 4
  %cmp = icmp slt i32 %5, 0
  %conv8 = zext i1 %cmp to i32
  %6 = load i32*, i32** %err.addr, align 8
  store i32 %conv8, i32* %6, align 4
  %7 = load i16, i16* %c, align 2
  ret i16 %7
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @read_card8(%struct._IO_FILE* %ifp, i32* %err) #0 {
entry:
  %ifp.addr = alloca %struct._IO_FILE*, align 8
  %err.addr = alloca i32*, align 8
  %c = alloca i8, align 1
  store %struct._IO_FILE* %ifp, %struct._IO_FILE** %ifp.addr, align 8
  store i32* %err, i32** %err.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %0)
  %1 = load i32*, i32** %err.addr, align 8
  store i32 %call, i32* %1, align 4
  %conv = trunc i32 %call to i8
  store i8 %conv, i8* %c, align 1
  %2 = load i32*, i32** %err.addr, align 8
  %3 = load i32, i32* %2, align 4
  %cmp = icmp slt i32 %3, 0
  %conv1 = zext i1 %cmp to i32
  %4 = load i32*, i32** %err.addr, align 8
  store i32 %conv1, i32* %4, align 4
  %5 = load i8, i8* %c, align 1
  ret i8 %5
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @create_new_image(i8* %filename, i32 %width, i32 %height, i32 %type, i32* %layer_ID, %struct._GimpDrawable** %drawable, %struct._GimpPixelRgn* %pixel_rgn) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %layer_ID.addr = alloca i32*, align 8
  %drawable.addr = alloca %struct._GimpDrawable**, align 8
  %pixel_rgn.addr = alloca %struct._GimpPixelRgn*, align 8
  %image_ID = alloca i32, align 4
  %gdtype = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  store i32* %layer_ID, i32** %layer_ID.addr, align 8
  store %struct._GimpDrawable** %drawable, %struct._GimpDrawable*** %drawable.addr, align 8
  store %struct._GimpPixelRgn* %pixel_rgn, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %0 = load i32, i32* %type.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
    i32 0, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store i32 2, i32* %gdtype, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  store i32 4, i32* %gdtype, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store i32 0, i32* %gdtype, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.46, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i32, i32* %width.addr, align 4
  %2 = load i32, i32* %height.addr, align 4
  %3 = load i32, i32* %type.addr, align 4
  %call = call i32 @gimp_image_new(i32 %1, i32 %2, i32 %3)
  store i32 %call, i32* %image_ID, align 4
  %4 = load i32, i32* %image_ID, align 4
  %5 = load i8*, i8** %filename.addr, align 8
  %call3 = call i32 @gimp_image_set_filename(i32 %4, i8* %5)
  %6 = load i32, i32* %image_ID, align 4
  %7 = load i32, i32* %width.addr, align 4
  %8 = load i32, i32* %height.addr, align 4
  %9 = load i32, i32* %gdtype, align 4
  %call4 = call i32 @gimp_layer_new(i32 %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0), i32 %7, i32 %8, i32 %9, double 1.000000e+02, i32 0)
  %10 = load i32*, i32** %layer_ID.addr, align 8
  store i32 %call4, i32* %10, align 4
  %11 = load i32, i32* %image_ID, align 4
  %12 = load i32*, i32** %layer_ID.addr, align 8
  %13 = load i32, i32* %12, align 4
  %call5 = call i32 @gimp_image_insert_layer(i32 %11, i32 %13, i32 -1, i32 0)
  %14 = load i32*, i32** %layer_ID.addr, align 8
  %15 = load i32, i32* %14, align 4
  %call6 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %15)
  %16 = load %struct._GimpDrawable**, %struct._GimpDrawable*** %drawable.addr, align 8
  store %struct._GimpDrawable* %call6, %struct._GimpDrawable** %16, align 8
  %17 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pixel_rgn.addr, align 8
  %18 = load %struct._GimpDrawable**, %struct._GimpDrawable*** %drawable.addr, align 8
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %18, align 8
  %20 = load %struct._GimpDrawable**, %struct._GimpDrawable*** %drawable.addr, align 8
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %20, align 8
  %width7 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %21, i32 0, i32 1
  %22 = load i32, i32* %width7, align 4
  %23 = load %struct._GimpDrawable**, %struct._GimpDrawable*** %drawable.addr, align 8
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %23, align 8
  %height8 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %24, i32 0, i32 2
  %25 = load i32, i32* %height8, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %17, %struct._GimpDrawable* %19, i32 0, i32 0, i32 %22, i32 %25, i32 1, i32 0)
  %26 = load i32, i32* %image_ID, align 4
  store i32 %26, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_height() #3

declare noalias i8* @g_malloc(i64) #1

; Function Attrs: nounwind uwtable
define internal void @set_bw_color_table(i32 %image_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call i32 @gimp_image_set_colormap(i32 %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @set_bw_color_table.BWColorMap, i32 0, i32 0), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_color_table(i32 %image_ID, %struct.L_XWDFILEHEADER* %xwdhdr, %struct.L_XWDCOLOR* %xwdcolmap) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %xwdhdr.addr = alloca %struct.L_XWDFILEHEADER*, align 8
  %xwdcolmap.addr = alloca %struct.L_XWDCOLOR*, align 8
  %ncols = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ColorMap = alloca [768 x i8], align 16
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store %struct.L_XWDFILEHEADER* %xwdhdr, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  store %struct.L_XWDCOLOR* %xwdcolmap, %struct.L_XWDCOLOR** %xwdcolmap.addr, align 8
  %0 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_colormap_entries = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %0, i32 0, i32 18
  %1 = load i64, i64* %l_colormap_entries, align 8
  %conv = trunc i64 %1 to i32
  store i32 %conv, i32* %ncols, align 4
  %2 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_ncolors = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %2, i32 0, i32 19
  %3 = load i64, i64* %l_ncolors, align 8
  %4 = load i32, i32* %ncols, align 4
  %conv1 = sext i32 %4 to i64
  %cmp = icmp ult i64 %3, %conv1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_ncolors3 = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %5, i32 0, i32 19
  %6 = load i64, i64* %l_ncolors3, align 8
  %conv4 = trunc i64 %6 to i32
  store i32 %conv4, i32* %ncols, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %ncols, align 4
  %cmp5 = icmp sle i32 %7, 0
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  br label %return

if.end.8:                                         ; preds = %if.end
  %8 = load i32, i32* %ncols, align 4
  %cmp9 = icmp sgt i32 %8, 256
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  store i32 256, i32* %ncols, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.8
  %9 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %arraydecay = getelementptr inbounds [768 x i8], [768 x i8]* %ColorMap, i32 0, i32 0
  call void @init_color_table256(%struct.L_XWDFILEHEADER* %9, i8* %arraydecay)
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.12
  %10 = load i32, i32* %j, align 4
  %11 = load i32, i32* %ncols, align 4
  %cmp13 = icmp slt i32 %10, %11
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %j, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %xwdcolmap.addr, align 8
  %arrayidx = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %13, i64 %idxprom
  %l_pixel = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx, i32 0, i32 0
  %14 = load i64, i64* %l_pixel, align 8
  %conv15 = trunc i64 %14 to i32
  store i32 %conv15, i32* %i, align 4
  %15 = load i32, i32* %i, align 4
  %cmp16 = icmp sge i32 %15, 0
  br i1 %cmp16, label %land.lhs.true, label %if.end.44

land.lhs.true:                                    ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %cmp18 = icmp slt i32 %16, 256
  br i1 %cmp18, label %if.then.20, label %if.end.44

if.then.20:                                       ; preds = %land.lhs.true
  %17 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %17 to i64
  %18 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %xwdcolmap.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %18, i64 %idxprom21
  %l_red = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx22, i32 0, i32 1
  %19 = load i16, i16* %l_red, align 2
  %conv23 = zext i16 %19 to i32
  %shr = ashr i32 %conv23, 8
  %conv24 = trunc i32 %shr to i8
  %20 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %20, 3
  %idxprom25 = sext i32 %mul to i64
  %arrayidx26 = getelementptr inbounds [768 x i8], [768 x i8]* %ColorMap, i32 0, i64 %idxprom25
  store i8 %conv24, i8* %arrayidx26, align 1
  %21 = load i32, i32* %j, align 4
  %idxprom27 = sext i32 %21 to i64
  %22 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %xwdcolmap.addr, align 8
  %arrayidx28 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %22, i64 %idxprom27
  %l_green = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx28, i32 0, i32 2
  %23 = load i16, i16* %l_green, align 2
  %conv29 = zext i16 %23 to i32
  %shr30 = ashr i32 %conv29, 8
  %conv31 = trunc i32 %shr30 to i8
  %24 = load i32, i32* %i, align 4
  %mul32 = mul nsw i32 %24, 3
  %add = add nsw i32 %mul32, 1
  %idxprom33 = sext i32 %add to i64
  %arrayidx34 = getelementptr inbounds [768 x i8], [768 x i8]* %ColorMap, i32 0, i64 %idxprom33
  store i8 %conv31, i8* %arrayidx34, align 1
  %25 = load i32, i32* %j, align 4
  %idxprom35 = sext i32 %25 to i64
  %26 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %xwdcolmap.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %26, i64 %idxprom35
  %l_blue = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx36, i32 0, i32 3
  %27 = load i16, i16* %l_blue, align 2
  %conv37 = zext i16 %27 to i32
  %shr38 = ashr i32 %conv37, 8
  %conv39 = trunc i32 %shr38 to i8
  %28 = load i32, i32* %i, align 4
  %mul40 = mul nsw i32 %28, 3
  %add41 = add nsw i32 %mul40, 2
  %idxprom42 = sext i32 %add41 to i64
  %arrayidx43 = getelementptr inbounds [768 x i8], [768 x i8]* %ColorMap, i32 0, i64 %idxprom42
  store i8 %conv39, i8* %arrayidx43, align 1
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.20, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.44
  %29 = load i32, i32* %j, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load i32, i32* %image_ID.addr, align 4
  %arraydecay45 = getelementptr inbounds [768 x i8], [768 x i8]* %ColorMap, i32 0, i32 0
  %call = call i32 @gimp_image_set_colormap(i32 %30, i8* %arraydecay45, i32 256)
  br label %return

return:                                           ; preds = %for.end, %if.then.7
  ret void
}

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* null, i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i32 @gimp_image_new(i32, i32, i32) #1

declare i32 @gimp_image_set_filename(i32, i8*) #1

declare i32 @gimp_layer_new(i32, i8*, i32, i32, i32, double, i32) #1

declare i32 @gimp_image_insert_layer(i32, i32, i32, i32) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare i32 @gimp_image_set_colormap(i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @init_color_table256(%struct.L_XWDFILEHEADER* %xwdhdr, i8* %ColorMap) #0 {
entry:
  %xwdhdr.addr = alloca %struct.L_XWDFILEHEADER*, align 8
  %ColorMap.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %cuind = alloca i32, align 4
  %redshift = alloca i32, align 4
  %greenshift = alloca i32, align 4
  %blueshift = alloca i32, align 4
  %maxred = alloca i32, align 4
  %maxgreen = alloca i32, align 4
  %maxblue = alloca i32, align 4
  store %struct.L_XWDFILEHEADER* %xwdhdr, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  store i8* %ColorMap, i8** %ColorMap.addr, align 8
  store i32 0, i32* %blueshift, align 4
  store i32 0, i32* %greenshift, align 4
  store i32 0, i32* %redshift, align 4
  %0 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_red_mask = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %0, i32 0, i32 14
  %1 = load i64, i64* %l_red_mask, align 8
  %conv = trunc i64 %1 to i32
  store i32 %conv, i32* %maxred, align 4
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end.68

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %2 = load i32, i32* %maxred, align 4
  %and = and i32 %2, 1
  %cmp2 = icmp eq i32 %and, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %redshift, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %redshift, align 4
  %4 = load i32, i32* %maxred, align 4
  %shr = ashr i32 %4, 1
  store i32 %shr, i32* %maxred, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_green_mask = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %5, i32 0, i32 15
  %6 = load i64, i64* %l_green_mask, align 8
  %conv4 = trunc i64 %6 to i32
  store i32 %conv4, i32* %maxgreen, align 4
  %cmp5 = icmp eq i32 %conv4, 0
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %while.end
  br label %for.end.68

if.end.8:                                         ; preds = %while.end
  br label %while.cond.9

while.cond.9:                                     ; preds = %while.body.13, %if.end.8
  %7 = load i32, i32* %maxgreen, align 4
  %and10 = and i32 %7, 1
  %cmp11 = icmp eq i32 %and10, 0
  br i1 %cmp11, label %while.body.13, label %while.end.16

while.body.13:                                    ; preds = %while.cond.9
  %8 = load i32, i32* %greenshift, align 4
  %inc14 = add nsw i32 %8, 1
  store i32 %inc14, i32* %greenshift, align 4
  %9 = load i32, i32* %maxgreen, align 4
  %shr15 = ashr i32 %9, 1
  store i32 %shr15, i32* %maxgreen, align 4
  br label %while.cond.9

while.end.16:                                     ; preds = %while.cond.9
  %10 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_blue_mask = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %10, i32 0, i32 16
  %11 = load i64, i64* %l_blue_mask, align 8
  %conv17 = trunc i64 %11 to i32
  store i32 %conv17, i32* %maxblue, align 4
  %cmp18 = icmp eq i32 %conv17, 0
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %while.end.16
  br label %for.end.68

if.end.21:                                        ; preds = %while.end.16
  br label %while.cond.22

while.cond.22:                                    ; preds = %while.body.26, %if.end.21
  %12 = load i32, i32* %maxblue, align 4
  %and23 = and i32 %12, 1
  %cmp24 = icmp eq i32 %and23, 0
  br i1 %cmp24, label %while.body.26, label %while.end.29

while.body.26:                                    ; preds = %while.cond.22
  %13 = load i32, i32* %blueshift, align 4
  %inc27 = add nsw i32 %13, 1
  store i32 %inc27, i32* %blueshift, align 4
  %14 = load i32, i32* %maxblue, align 4
  %shr28 = ashr i32 %14, 1
  store i32 %shr28, i32* %maxblue, align 4
  br label %while.cond.22

while.end.29:                                     ; preds = %while.cond.22
  %15 = load i8*, i8** %ColorMap.addr, align 8
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 768, i32 1, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.66, %while.end.29
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %maxred, align 4
  %cmp30 = icmp sle i32 %16, %17
  br i1 %cmp30, label %for.body, label %for.end.68

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.63, %for.body
  %18 = load i32, i32* %j, align 4
  %19 = load i32, i32* %maxgreen, align 4
  %cmp33 = icmp sle i32 %18, %19
  br i1 %cmp33, label %for.body.35, label %for.end.65

for.body.35:                                      ; preds = %for.cond.32
  store i32 0, i32* %k, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc, %for.body.35
  %20 = load i32, i32* %k, align 4
  %21 = load i32, i32* %maxblue, align 4
  %cmp37 = icmp sle i32 %20, %21
  br i1 %cmp37, label %for.body.39, label %for.end

for.body.39:                                      ; preds = %for.cond.36
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %redshift, align 4
  %shl = shl i32 %22, %23
  %24 = load i32, i32* %j, align 4
  %25 = load i32, i32* %greenshift, align 4
  %shl40 = shl i32 %24, %25
  %or = or i32 %shl, %shl40
  %26 = load i32, i32* %k, align 4
  %27 = load i32, i32* %blueshift, align 4
  %shl41 = shl i32 %26, %27
  %or42 = or i32 %or, %shl41
  store i32 %or42, i32* %cuind, align 4
  %28 = load i32, i32* %cuind, align 4
  %cmp43 = icmp slt i32 %28, 256
  br i1 %cmp43, label %if.then.45, label %if.end.61

if.then.45:                                       ; preds = %for.body.39
  %29 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %29, 255
  %30 = load i32, i32* %maxred, align 4
  %div = sdiv i32 %mul, %30
  %conv46 = trunc i32 %div to i8
  %31 = load i32, i32* %cuind, align 4
  %mul47 = mul nsw i32 %31, 3
  %idxprom = sext i32 %mul47 to i64
  %32 = load i8*, i8** %ColorMap.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %32, i64 %idxprom
  store i8 %conv46, i8* %arrayidx, align 1
  %33 = load i32, i32* %j, align 4
  %mul48 = mul nsw i32 %33, 255
  %34 = load i32, i32* %maxgreen, align 4
  %div49 = sdiv i32 %mul48, %34
  %conv50 = trunc i32 %div49 to i8
  %35 = load i32, i32* %cuind, align 4
  %mul51 = mul nsw i32 %35, 3
  %add = add nsw i32 %mul51, 1
  %idxprom52 = sext i32 %add to i64
  %36 = load i8*, i8** %ColorMap.addr, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %36, i64 %idxprom52
  store i8 %conv50, i8* %arrayidx53, align 1
  %37 = load i32, i32* %k, align 4
  %mul54 = mul nsw i32 %37, 255
  %38 = load i32, i32* %maxblue, align 4
  %div55 = sdiv i32 %mul54, %38
  %conv56 = trunc i32 %div55 to i8
  %39 = load i32, i32* %cuind, align 4
  %mul57 = mul nsw i32 %39, 3
  %add58 = add nsw i32 %mul57, 2
  %idxprom59 = sext i32 %add58 to i64
  %40 = load i8*, i8** %ColorMap.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %40, i64 %idxprom59
  store i8 %conv56, i8* %arrayidx60, align 1
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.45, %for.body.39
  br label %for.inc

for.inc:                                          ; preds = %if.end.61
  %41 = load i32, i32* %k, align 4
  %inc62 = add nsw i32 %41, 1
  store i32 %inc62, i32* %k, align 4
  br label %for.cond.36

for.end:                                          ; preds = %for.cond.36
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.end
  %42 = load i32, i32* %j, align 4
  %inc64 = add nsw i32 %42, 1
  store i32 %inc64, i32* %j, align 4
  br label %for.cond.32

for.end.65:                                       ; preds = %for.cond.32
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.end.65
  %43 = load i32, i32* %i, align 4
  %inc67 = add nsw i32 %43, 1
  store i32 %inc67, i32* %i, align 4
  br label %for.cond

for.end.68:                                       ; preds = %if.then, %if.then.7, %if.then.20, %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define internal i32 @set_pixelmap(i32 %ncols, %struct.L_XWDCOLOR* %xwdcol, %struct.PIXEL_MAP* %pixelmap) #0 {
entry:
  %ncols.addr = alloca i32, align 4
  %xwdcol.addr = alloca %struct.L_XWDCOLOR*, align 8
  %pixelmap.addr = alloca %struct.PIXEL_MAP*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %maxcols = alloca i32, align 4
  %pixel_val = alloca i64, align 8
  store i32 %ncols, i32* %ncols.addr, align 4
  store %struct.L_XWDCOLOR* %xwdcol, %struct.L_XWDCOLOR** %xwdcol.addr, align 8
  store %struct.PIXEL_MAP* %pixelmap, %struct.PIXEL_MAP** %pixelmap.addr, align 8
  %0 = load %struct.PIXEL_MAP*, %struct.PIXEL_MAP** %pixelmap.addr, align 8
  %1 = bitcast %struct.PIXEL_MAP* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 8200, i32 1, i1 false)
  store i32 0, i32* %maxcols, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.61, %entry
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %ncols.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.63

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %xwdcol.addr, align 8
  %arrayidx = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %5, i64 %idxprom
  %l_pixel = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx, i32 0, i32 0
  %6 = load i64, i64* %l_pixel, align 8
  store i64 %6, i64* %pixel_val, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %7 = load i32, i32* %k, align 4
  %8 = load i32, i32* %maxcols, align 4
  %cmp2 = icmp slt i32 %7, %8
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %9 = load i64, i64* %pixel_val, align 8
  %10 = load i32, i32* %k, align 4
  %idxprom4 = sext i32 %10 to i64
  %11 = load %struct.PIXEL_MAP*, %struct.PIXEL_MAP** %pixelmap.addr, align 8
  %pmap = getelementptr inbounds %struct.PIXEL_MAP, %struct.PIXEL_MAP* %11, i32 0, i32 2
  %arrayidx5 = getelementptr inbounds [256 x %struct.PMAP], [256 x %struct.PMAP]* %pmap, i32 0, i64 %idxprom4
  %pixel_val6 = getelementptr inbounds %struct.PMAP, %struct.PMAP* %arrayidx5, i32 0, i32 0
  %12 = load i64, i64* %pixel_val6, align 8
  %cmp7 = icmp ule i64 %9, %12
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  br label %for.end

if.end:                                           ; preds = %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %k, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.1

for.end:                                          ; preds = %if.then, %for.cond.1
  %14 = load i32, i32* %k, align 4
  %15 = load i32, i32* %maxcols, align 4
  %cmp8 = icmp slt i32 %14, %15
  br i1 %cmp8, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %for.end
  %16 = load i64, i64* %pixel_val, align 8
  %17 = load i32, i32* %k, align 4
  %idxprom9 = sext i32 %17 to i64
  %18 = load %struct.PIXEL_MAP*, %struct.PIXEL_MAP** %pixelmap.addr, align 8
  %pmap10 = getelementptr inbounds %struct.PIXEL_MAP, %struct.PIXEL_MAP* %18, i32 0, i32 2
  %arrayidx11 = getelementptr inbounds [256 x %struct.PMAP], [256 x %struct.PMAP]* %pmap10, i32 0, i64 %idxprom9
  %pixel_val12 = getelementptr inbounds %struct.PMAP, %struct.PMAP* %arrayidx11, i32 0, i32 0
  %19 = load i64, i64* %pixel_val12, align 8
  %cmp13 = icmp eq i64 %16, %19
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %land.lhs.true
  br label %for.end.63

if.end.15:                                        ; preds = %land.lhs.true, %for.end
  %20 = load i32, i32* %k, align 4
  %cmp16 = icmp sge i32 %20, 256
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.15
  br label %for.end.63

if.end.18:                                        ; preds = %if.end.15
  %21 = load i32, i32* %k, align 4
  %22 = load i32, i32* %maxcols, align 4
  %cmp19 = icmp slt i32 %21, %22
  br i1 %cmp19, label %if.then.20, label %if.end.32

if.then.20:                                       ; preds = %if.end.18
  %23 = load i32, i32* %maxcols, align 4
  %sub = sub nsw i32 %23, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.30, %if.then.20
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %k, align 4
  %cmp22 = icmp sge i32 %24, %25
  br i1 %cmp22, label %for.body.23, label %for.end.31

for.body.23:                                      ; preds = %for.cond.21
  %26 = load i32, i32* %i, align 4
  %add = add nsw i32 %26, 1
  %idxprom24 = sext i32 %add to i64
  %27 = load %struct.PIXEL_MAP*, %struct.PIXEL_MAP** %pixelmap.addr, align 8
  %pmap25 = getelementptr inbounds %struct.PIXEL_MAP, %struct.PIXEL_MAP* %27, i32 0, i32 2
  %arrayidx26 = getelementptr inbounds [256 x %struct.PMAP], [256 x %struct.PMAP]* %pmap25, i32 0, i64 %idxprom24
  %28 = bitcast %struct.PMAP* %arrayidx26 to i8*
  %29 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %29 to i64
  %30 = load %struct.PIXEL_MAP*, %struct.PIXEL_MAP** %pixelmap.addr, align 8
  %pmap28 = getelementptr inbounds %struct.PIXEL_MAP, %struct.PIXEL_MAP* %30, i32 0, i32 2
  %arrayidx29 = getelementptr inbounds [256 x %struct.PMAP], [256 x %struct.PMAP]* %pmap28, i32 0, i64 %idxprom27
  %31 = bitcast %struct.PMAP* %arrayidx29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %31, i64 16, i32 1, i1 false)
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.body.23
  %32 = load i32, i32* %i, align 4
  %dec = add nsw i32 %32, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.21

for.end.31:                                       ; preds = %for.cond.21
  br label %if.end.32

if.end.32:                                        ; preds = %for.end.31, %if.end.18
  %33 = load i64, i64* %pixel_val, align 8
  %34 = load i32, i32* %k, align 4
  %idxprom33 = sext i32 %34 to i64
  %35 = load %struct.PIXEL_MAP*, %struct.PIXEL_MAP** %pixelmap.addr, align 8
  %pmap34 = getelementptr inbounds %struct.PIXEL_MAP, %struct.PIXEL_MAP* %35, i32 0, i32 2
  %arrayidx35 = getelementptr inbounds [256 x %struct.PMAP], [256 x %struct.PMAP]* %pmap34, i32 0, i64 %idxprom33
  %pixel_val36 = getelementptr inbounds %struct.PMAP, %struct.PMAP* %arrayidx35, i32 0, i32 0
  store i64 %33, i64* %pixel_val36, align 8
  %36 = load i32, i32* %j, align 4
  %idxprom37 = sext i32 %36 to i64
  %37 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %xwdcol.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %37, i64 %idxprom37
  %l_red = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx38, i32 0, i32 1
  %38 = load i16, i16* %l_red, align 2
  %conv = zext i16 %38 to i32
  %shr = ashr i32 %conv, 8
  %conv39 = trunc i32 %shr to i8
  %39 = load i32, i32* %k, align 4
  %idxprom40 = sext i32 %39 to i64
  %40 = load %struct.PIXEL_MAP*, %struct.PIXEL_MAP** %pixelmap.addr, align 8
  %pmap41 = getelementptr inbounds %struct.PIXEL_MAP, %struct.PIXEL_MAP* %40, i32 0, i32 2
  %arrayidx42 = getelementptr inbounds [256 x %struct.PMAP], [256 x %struct.PMAP]* %pmap41, i32 0, i64 %idxprom40
  %red = getelementptr inbounds %struct.PMAP, %struct.PMAP* %arrayidx42, i32 0, i32 1
  store i8 %conv39, i8* %red, align 1
  %41 = load i32, i32* %j, align 4
  %idxprom43 = sext i32 %41 to i64
  %42 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %xwdcol.addr, align 8
  %arrayidx44 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %42, i64 %idxprom43
  %l_green = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx44, i32 0, i32 2
  %43 = load i16, i16* %l_green, align 2
  %conv45 = zext i16 %43 to i32
  %shr46 = ashr i32 %conv45, 8
  %conv47 = trunc i32 %shr46 to i8
  %44 = load i32, i32* %k, align 4
  %idxprom48 = sext i32 %44 to i64
  %45 = load %struct.PIXEL_MAP*, %struct.PIXEL_MAP** %pixelmap.addr, align 8
  %pmap49 = getelementptr inbounds %struct.PIXEL_MAP, %struct.PIXEL_MAP* %45, i32 0, i32 2
  %arrayidx50 = getelementptr inbounds [256 x %struct.PMAP], [256 x %struct.PMAP]* %pmap49, i32 0, i64 %idxprom48
  %green = getelementptr inbounds %struct.PMAP, %struct.PMAP* %arrayidx50, i32 0, i32 2
  store i8 %conv47, i8* %green, align 1
  %46 = load i32, i32* %j, align 4
  %idxprom51 = sext i32 %46 to i64
  %47 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %xwdcol.addr, align 8
  %arrayidx52 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %47, i64 %idxprom51
  %l_blue = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx52, i32 0, i32 3
  %48 = load i16, i16* %l_blue, align 2
  %conv53 = zext i16 %48 to i32
  %shr54 = ashr i32 %conv53, 8
  %conv55 = trunc i32 %shr54 to i8
  %49 = load i32, i32* %k, align 4
  %idxprom56 = sext i32 %49 to i64
  %50 = load %struct.PIXEL_MAP*, %struct.PIXEL_MAP** %pixelmap.addr, align 8
  %pmap57 = getelementptr inbounds %struct.PIXEL_MAP, %struct.PIXEL_MAP* %50, i32 0, i32 2
  %arrayidx58 = getelementptr inbounds [256 x %struct.PMAP], [256 x %struct.PMAP]* %pmap57, i32 0, i64 %idxprom56
  %blue = getelementptr inbounds %struct.PMAP, %struct.PMAP* %arrayidx58, i32 0, i32 3
  store i8 %conv55, i8* %blue, align 1
  %51 = load i64, i64* %pixel_val, align 8
  %and = and i64 %51, 4095
  %52 = load %struct.PIXEL_MAP*, %struct.PIXEL_MAP** %pixelmap.addr, align 8
  %pixel_in_map = getelementptr inbounds %struct.PIXEL_MAP, %struct.PIXEL_MAP* %52, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [4096 x i8], [4096 x i8]* %pixel_in_map, i32 0, i64 %and
  store i8 1, i8* %arrayidx59, align 1
  %53 = load i32, i32* %maxcols, align 4
  %inc60 = add nsw i32 %53, 1
  store i32 %inc60, i32* %maxcols, align 4
  br label %for.inc.61

for.inc.61:                                       ; preds = %if.end.32
  %54 = load i32, i32* %j, align 4
  %inc62 = add nsw i32 %54, 1
  store i32 %inc62, i32* %j, align 4
  br label %for.cond

for.end.63:                                       ; preds = %if.then.17, %if.then.14, %for.cond
  %55 = load i32, i32* %maxcols, align 4
  %56 = load %struct.PIXEL_MAP*, %struct.PIXEL_MAP** %pixelmap.addr, align 8
  %npixel = getelementptr inbounds %struct.PIXEL_MAP, %struct.PIXEL_MAP* %56, i32 0, i32 0
  store i32 %55, i32* %npixel, align 4
  %57 = load %struct.PIXEL_MAP*, %struct.PIXEL_MAP** %pixelmap.addr, align 8
  %npixel64 = getelementptr inbounds %struct.PIXEL_MAP, %struct.PIXEL_MAP* %57, i32 0, i32 0
  %58 = load i32, i32* %npixel64, align 4
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define internal i32 @get_pixelmap(i64 %pixelval, %struct.PIXEL_MAP* %pixelmap, i8* %red, i8* %green, i8* %blue) #0 {
entry:
  %retval = alloca i32, align 4
  %pixelval.addr = alloca i64, align 8
  %pixelmap.addr = alloca %struct.PIXEL_MAP*, align 8
  %red.addr = alloca i8*, align 8
  %green.addr = alloca i8*, align 8
  %blue.addr = alloca i8*, align 8
  %low = alloca %struct.PMAP*, align 8
  %high = alloca %struct.PMAP*, align 8
  %middle = alloca %struct.PMAP*, align 8
  store i64 %pixelval, i64* %pixelval.addr, align 8
  store %struct.PIXEL_MAP* %pixelmap, %struct.PIXEL_MAP** %pixelmap.addr, align 8
  store i8* %red, i8** %red.addr, align 8
  store i8* %green, i8** %green.addr, align 8
  store i8* %blue, i8** %blue.addr, align 8
  %0 = load %struct.PIXEL_MAP*, %struct.PIXEL_MAP** %pixelmap.addr, align 8
  %npixel = getelementptr inbounds %struct.PIXEL_MAP, %struct.PIXEL_MAP* %0, i32 0, i32 0
  %1 = load i32, i32* %npixel, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %pixelval.addr, align 8
  %and = and i64 %2, 4095
  %3 = load %struct.PIXEL_MAP*, %struct.PIXEL_MAP** %pixelmap.addr, align 8
  %pixel_in_map = getelementptr inbounds %struct.PIXEL_MAP, %struct.PIXEL_MAP* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4096 x i8], [4096 x i8]* %pixel_in_map, i32 0, i64 %and
  %4 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %5 = load %struct.PIXEL_MAP*, %struct.PIXEL_MAP** %pixelmap.addr, align 8
  %pmap = getelementptr inbounds %struct.PIXEL_MAP, %struct.PIXEL_MAP* %5, i32 0, i32 2
  %arrayidx3 = getelementptr inbounds [256 x %struct.PMAP], [256 x %struct.PMAP]* %pmap, i32 0, i64 0
  store %struct.PMAP* %arrayidx3, %struct.PMAP** %low, align 8
  %6 = load %struct.PIXEL_MAP*, %struct.PIXEL_MAP** %pixelmap.addr, align 8
  %npixel4 = getelementptr inbounds %struct.PIXEL_MAP, %struct.PIXEL_MAP* %6, i32 0, i32 0
  %7 = load i32, i32* %npixel4, align 4
  %sub = sub nsw i32 %7, 1
  %idxprom = sext i32 %sub to i64
  %8 = load %struct.PIXEL_MAP*, %struct.PIXEL_MAP** %pixelmap.addr, align 8
  %pmap5 = getelementptr inbounds %struct.PIXEL_MAP, %struct.PIXEL_MAP* %8, i32 0, i32 2
  %arrayidx6 = getelementptr inbounds [256 x %struct.PMAP], [256 x %struct.PMAP]* %pmap5, i32 0, i64 %idxprom
  store %struct.PMAP* %arrayidx6, %struct.PMAP** %high, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.11, %if.end.2
  %9 = load %struct.PMAP*, %struct.PMAP** %low, align 8
  %10 = load %struct.PMAP*, %struct.PMAP** %high, align 8
  %cmp7 = icmp ult %struct.PMAP* %9, %10
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load %struct.PMAP*, %struct.PMAP** %low, align 8
  %12 = load %struct.PMAP*, %struct.PMAP** %high, align 8
  %13 = load %struct.PMAP*, %struct.PMAP** %low, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.PMAP* %12 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.PMAP* %13 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %div = sdiv i64 %sub.ptr.div, 2
  %add.ptr = getelementptr inbounds %struct.PMAP, %struct.PMAP* %11, i64 %div
  store %struct.PMAP* %add.ptr, %struct.PMAP** %middle, align 8
  %14 = load i64, i64* %pixelval.addr, align 8
  %15 = load %struct.PMAP*, %struct.PMAP** %middle, align 8
  %pixel_val = getelementptr inbounds %struct.PMAP, %struct.PMAP* %15, i32 0, i32 0
  %16 = load i64, i64* %pixel_val, align 8
  %cmp8 = icmp ule i64 %14, %16
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %while.body
  %17 = load %struct.PMAP*, %struct.PMAP** %middle, align 8
  store %struct.PMAP* %17, %struct.PMAP** %high, align 8
  br label %if.end.11

if.else:                                          ; preds = %while.body
  %18 = load %struct.PMAP*, %struct.PMAP** %middle, align 8
  %add.ptr10 = getelementptr inbounds %struct.PMAP, %struct.PMAP* %18, i64 1
  store %struct.PMAP* %add.ptr10, %struct.PMAP** %low, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %19 = load i64, i64* %pixelval.addr, align 8
  %20 = load %struct.PMAP*, %struct.PMAP** %low, align 8
  %pixel_val12 = getelementptr inbounds %struct.PMAP, %struct.PMAP* %20, i32 0, i32 0
  %21 = load i64, i64* %pixel_val12, align 8
  %cmp13 = icmp eq i64 %19, %21
  br i1 %cmp13, label %if.then.14, label %if.end.18

if.then.14:                                       ; preds = %while.end
  %22 = load %struct.PMAP*, %struct.PMAP** %low, align 8
  %red15 = getelementptr inbounds %struct.PMAP, %struct.PMAP* %22, i32 0, i32 1
  %23 = load i8, i8* %red15, align 1
  %24 = load i8*, i8** %red.addr, align 8
  store i8 %23, i8* %24, align 1
  %25 = load %struct.PMAP*, %struct.PMAP** %low, align 8
  %green16 = getelementptr inbounds %struct.PMAP, %struct.PMAP* %25, i32 0, i32 2
  %26 = load i8, i8* %green16, align 1
  %27 = load i8*, i8** %green.addr, align 8
  store i8 %26, i8* %27, align 1
  %28 = load %struct.PMAP*, %struct.PMAP** %low, align 8
  %blue17 = getelementptr inbounds %struct.PMAP, %struct.PMAP* %28, i32 0, i32 3
  %29 = load i8, i8* %blue17, align 1
  %30 = load i8*, i8** %blue.addr, align 8
  store i8 %29, i8* %30, align 1
  store i32 1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %while.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.14, %if.then.1, %if.then
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare i32 @gimp_drawable_type(i32) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @save_index(%struct._IO_FILE* %ofp, i32 %image_ID, i32 %drawable_ID, i32 %gray) #0 {
entry:
  %retval = alloca i32, align 4
  %ofp.addr = alloca %struct._IO_FILE*, align 8
  %image_ID.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32, align 4
  %gray.addr = alloca i32, align 4
  %height = alloca i32, align 4
  %width = alloca i32, align 4
  %linepad = alloca i32, align 4
  %tile_height = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ncolors = alloca i32, align 4
  %vclass = alloca i32, align 4
  %tmp = alloca i64, align 8
  %data = alloca i8*, align 8
  %src = alloca i8*, align 8
  %cmap = alloca i8*, align 8
  %xwdhdr = alloca %struct.L_XWDFILEHEADER, align 8
  %xwdcolmap = alloca [256 x %struct.L_XWDCOLOR], align 16
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %scan_lines = alloca i32, align 4
  store %struct._IO_FILE* %ofp, %struct._IO_FILE** %ofp.addr, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i32 %gray, i32* %gray.addr, align 4
  store i64 0, i64* %tmp, align 8
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call %struct._GimpDrawable* @gimp_drawable_get(i32 %0)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width8 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %1, i32 0, i32 1
  %2 = load i32, i32* %width8, align 4
  store i32 %2, i32* %width, align 4
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height9 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 2
  %4 = load i32, i32* %height9, align 4
  store i32 %4, i32* %height, align 4
  %call10 = call i32 @gimp_tile_height() #6
  store i32 %call10, i32* %tile_height, align 4
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %6 = load i32, i32* %width, align 4
  %7 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %5, i32 0, i32 0, i32 %6, i32 %7, i32 0, i32 0)
  %8 = load i32, i32* %tile_height, align 4
  %9 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %8, %9
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 3
  %11 = load i32, i32* %bpp, align 4
  %mul11 = mul i32 %mul, %11
  %conv = zext i32 %mul11 to i64
  %call12 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call12, i8** %data, align 8
  store i8* %call12, i8** %src, align 8
  %12 = load i32, i32* %width, align 4
  %rem = srem i32 %12, 4
  store i32 %rem, i32* %linepad, align 4
  %13 = load i32, i32* %linepad, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %linepad, align 4
  %sub = sub nsw i32 4, %14
  store i32 %sub, i32* %linepad, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load i32, i32* %gray.addr, align 4
  %tobool13 = icmp ne i32 %15, 0
  br i1 %tobool13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end
  store i32 0, i32* %vclass, align 4
  store i32 256, i32* %ncolors, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.14
  %16 = load i32, i32* %j, align 4
  %17 = load i32, i32* %ncolors, align 4
  %cmp = icmp slt i32 %16, %17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %j, align 4
  %conv16 = sext i32 %18 to i64
  %19 = load i32, i32* %j, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds [256 x %struct.L_XWDCOLOR], [256 x %struct.L_XWDCOLOR]* %xwdcolmap, i32 0, i64 %idxprom
  %l_pixel = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx, i32 0, i32 0
  store i64 %conv16, i64* %l_pixel, align 8
  %20 = load i32, i32* %j, align 4
  %shl = shl i32 %20, 8
  %21 = load i32, i32* %j, align 4
  %or = or i32 %shl, %21
  %conv17 = trunc i32 %or to i16
  %22 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %22 to i64
  %arrayidx19 = getelementptr inbounds [256 x %struct.L_XWDCOLOR], [256 x %struct.L_XWDCOLOR]* %xwdcolmap, i32 0, i64 %idxprom18
  %l_red = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx19, i32 0, i32 1
  store i16 %conv17, i16* %l_red, align 2
  %23 = load i32, i32* %j, align 4
  %shl20 = shl i32 %23, 8
  %24 = load i32, i32* %j, align 4
  %or21 = or i32 %shl20, %24
  %conv22 = trunc i32 %or21 to i16
  %25 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %25 to i64
  %arrayidx24 = getelementptr inbounds [256 x %struct.L_XWDCOLOR], [256 x %struct.L_XWDCOLOR]* %xwdcolmap, i32 0, i64 %idxprom23
  %l_green = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx24, i32 0, i32 2
  store i16 %conv22, i16* %l_green, align 2
  %26 = load i32, i32* %j, align 4
  %shl25 = shl i32 %26, 8
  %27 = load i32, i32* %j, align 4
  %or26 = or i32 %shl25, %27
  %conv27 = trunc i32 %or26 to i16
  %28 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %28 to i64
  %arrayidx29 = getelementptr inbounds [256 x %struct.L_XWDCOLOR], [256 x %struct.L_XWDCOLOR]* %xwdcolmap, i32 0, i64 %idxprom28
  %l_blue = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx29, i32 0, i32 3
  store i16 %conv27, i16* %l_blue, align 2
  %29 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %29 to i64
  %arrayidx31 = getelementptr inbounds [256 x %struct.L_XWDCOLOR], [256 x %struct.L_XWDCOLOR]* %xwdcolmap, i32 0, i64 %idxprom30
  %l_flags = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx31, i32 0, i32 4
  store i8 7, i8* %l_flags, align 1
  %30 = load i32, i32* %j, align 4
  %idxprom32 = sext i32 %30 to i64
  %arrayidx33 = getelementptr inbounds [256 x %struct.L_XWDCOLOR], [256 x %struct.L_XWDCOLOR]* %xwdcolmap, i32 0, i64 %idxprom32
  %l_pad = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx33, i32 0, i32 5
  store i8 0, i8* %l_pad, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %j, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.78

if.else:                                          ; preds = %if.end
  store i32 3, i32* %vclass, align 4
  %32 = load i32, i32* %image_ID.addr, align 4
  %call34 = call i8* @gimp_image_get_colormap(i32 %32, i32* %ncolors)
  store i8* %call34, i8** %cmap, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.75, %if.else
  %33 = load i32, i32* %j, align 4
  %34 = load i32, i32* %ncolors, align 4
  %cmp36 = icmp slt i32 %33, %34
  br i1 %cmp36, label %for.body.38, label %for.end.77

for.body.38:                                      ; preds = %for.cond.35
  %35 = load i32, i32* %j, align 4
  %conv39 = sext i32 %35 to i64
  %36 = load i32, i32* %j, align 4
  %idxprom40 = sext i32 %36 to i64
  %arrayidx41 = getelementptr inbounds [256 x %struct.L_XWDCOLOR], [256 x %struct.L_XWDCOLOR]* %xwdcolmap, i32 0, i64 %idxprom40
  %l_pixel42 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx41, i32 0, i32 0
  store i64 %conv39, i64* %l_pixel42, align 8
  %37 = load i8*, i8** %cmap, align 8
  %38 = load i8, i8* %37, align 1
  %conv43 = zext i8 %38 to i32
  %shl44 = shl i32 %conv43, 8
  %39 = load i8*, i8** %cmap, align 8
  %40 = load i8, i8* %39, align 1
  %conv45 = zext i8 %40 to i32
  %or46 = or i32 %shl44, %conv45
  %conv47 = trunc i32 %or46 to i16
  %41 = load i32, i32* %j, align 4
  %idxprom48 = sext i32 %41 to i64
  %arrayidx49 = getelementptr inbounds [256 x %struct.L_XWDCOLOR], [256 x %struct.L_XWDCOLOR]* %xwdcolmap, i32 0, i64 %idxprom48
  %l_red50 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx49, i32 0, i32 1
  store i16 %conv47, i16* %l_red50, align 2
  %42 = load i8*, i8** %cmap, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr, i8** %cmap, align 8
  %43 = load i8*, i8** %cmap, align 8
  %44 = load i8, i8* %43, align 1
  %conv51 = zext i8 %44 to i32
  %shl52 = shl i32 %conv51, 8
  %45 = load i8*, i8** %cmap, align 8
  %46 = load i8, i8* %45, align 1
  %conv53 = zext i8 %46 to i32
  %or54 = or i32 %shl52, %conv53
  %conv55 = trunc i32 %or54 to i16
  %47 = load i32, i32* %j, align 4
  %idxprom56 = sext i32 %47 to i64
  %arrayidx57 = getelementptr inbounds [256 x %struct.L_XWDCOLOR], [256 x %struct.L_XWDCOLOR]* %xwdcolmap, i32 0, i64 %idxprom56
  %l_green58 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx57, i32 0, i32 2
  store i16 %conv55, i16* %l_green58, align 2
  %48 = load i8*, i8** %cmap, align 8
  %incdec.ptr59 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr59, i8** %cmap, align 8
  %49 = load i8*, i8** %cmap, align 8
  %50 = load i8, i8* %49, align 1
  %conv60 = zext i8 %50 to i32
  %shl61 = shl i32 %conv60, 8
  %51 = load i8*, i8** %cmap, align 8
  %52 = load i8, i8* %51, align 1
  %conv62 = zext i8 %52 to i32
  %or63 = or i32 %shl61, %conv62
  %conv64 = trunc i32 %or63 to i16
  %53 = load i32, i32* %j, align 4
  %idxprom65 = sext i32 %53 to i64
  %arrayidx66 = getelementptr inbounds [256 x %struct.L_XWDCOLOR], [256 x %struct.L_XWDCOLOR]* %xwdcolmap, i32 0, i64 %idxprom65
  %l_blue67 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx66, i32 0, i32 3
  store i16 %conv64, i16* %l_blue67, align 2
  %54 = load i8*, i8** %cmap, align 8
  %incdec.ptr68 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr68, i8** %cmap, align 8
  %55 = load i32, i32* %j, align 4
  %idxprom69 = sext i32 %55 to i64
  %arrayidx70 = getelementptr inbounds [256 x %struct.L_XWDCOLOR], [256 x %struct.L_XWDCOLOR]* %xwdcolmap, i32 0, i64 %idxprom69
  %l_flags71 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx70, i32 0, i32 4
  store i8 7, i8* %l_flags71, align 1
  %56 = load i32, i32* %j, align 4
  %idxprom72 = sext i32 %56 to i64
  %arrayidx73 = getelementptr inbounds [256 x %struct.L_XWDCOLOR], [256 x %struct.L_XWDCOLOR]* %xwdcolmap, i32 0, i64 %idxprom72
  %l_pad74 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx73, i32 0, i32 5
  store i8 0, i8* %l_pad74, align 1
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.body.38
  %57 = load i32, i32* %j, align 4
  %inc76 = add nsw i32 %57, 1
  store i32 %inc76, i32* %j, align 4
  br label %for.cond.35

for.end.77:                                       ; preds = %for.cond.35
  br label %if.end.78

if.end.78:                                        ; preds = %for.end.77, %for.end
  %l_header_size = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 0
  store i64 0, i64* %l_header_size, align 8
  %l_file_version = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 1
  store i64 7, i64* %l_file_version, align 8
  %l_pixmap_format = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 2
  store i64 2, i64* %l_pixmap_format, align 8
  %l_pixmap_depth = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 3
  store i64 8, i64* %l_pixmap_depth, align 8
  %58 = load i32, i32* %width, align 4
  %conv79 = sext i32 %58 to i64
  %l_pixmap_width = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 4
  store i64 %conv79, i64* %l_pixmap_width, align 8
  %59 = load i32, i32* %height, align 4
  %conv80 = sext i32 %59 to i64
  %l_pixmap_height = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 5
  store i64 %conv80, i64* %l_pixmap_height, align 8
  %l_xoffset = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 6
  store i64 0, i64* %l_xoffset, align 8
  %l_byte_order = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 7
  store i64 1, i64* %l_byte_order, align 8
  %l_bitmap_unit = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 8
  store i64 32, i64* %l_bitmap_unit, align 8
  %l_bitmap_bit_order = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 9
  store i64 1, i64* %l_bitmap_bit_order, align 8
  %l_bitmap_pad = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 10
  store i64 32, i64* %l_bitmap_pad, align 8
  %l_bits_per_pixel = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 11
  store i64 8, i64* %l_bits_per_pixel, align 8
  %60 = load i32, i32* %width, align 4
  %61 = load i32, i32* %linepad, align 4
  %add = add nsw i32 %60, %61
  %conv81 = sext i32 %add to i64
  %l_bytes_per_line = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 12
  store i64 %conv81, i64* %l_bytes_per_line, align 8
  %62 = load i32, i32* %vclass, align 4
  %conv82 = sext i32 %62 to i64
  %l_visual_class = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 13
  store i64 %conv82, i64* %l_visual_class, align 8
  %l_red_mask = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 14
  store i64 0, i64* %l_red_mask, align 8
  %l_green_mask = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 15
  store i64 0, i64* %l_green_mask, align 8
  %l_blue_mask = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 16
  store i64 0, i64* %l_blue_mask, align 8
  %l_bits_per_rgb = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 17
  store i64 8, i64* %l_bits_per_rgb, align 8
  %63 = load i32, i32* %ncolors, align 4
  %conv83 = sext i32 %63 to i64
  %l_colormap_entries = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 18
  store i64 %conv83, i64* %l_colormap_entries, align 8
  %64 = load i32, i32* %ncolors, align 4
  %conv84 = sext i32 %64 to i64
  %l_ncolors = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 19
  store i64 %conv84, i64* %l_ncolors, align 8
  %65 = load i32, i32* %width, align 4
  %conv85 = sext i32 %65 to i64
  %l_window_width = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 20
  store i64 %conv85, i64* %l_window_width, align 8
  %66 = load i32, i32* %height, align 4
  %conv86 = sext i32 %66 to i64
  %l_window_height = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 21
  store i64 %conv86, i64* %l_window_height, align 8
  %l_window_x = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 22
  store i64 64, i64* %l_window_x, align 8
  %l_window_y = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 23
  store i64 64, i64* %l_window_y, align 8
  %l_window_bdrwidth = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 24
  store i64 0, i64* %l_window_bdrwidth, align 8
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  call void @write_xwd_header(%struct._IO_FILE* %67, %struct.L_XWDFILEHEADER* %xwdhdr)
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %arraydecay = getelementptr inbounds [256 x %struct.L_XWDCOLOR], [256 x %struct.L_XWDCOLOR]* %xwdcolmap, i32 0, i32 0
  call void @write_xwd_cols(%struct._IO_FILE* %68, %struct.L_XWDFILEHEADER* %xwdhdr, %struct.L_XWDCOLOR* %arraydecay)
  store i32 0, i32* %i, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.117, %if.end.78
  %69 = load i32, i32* %i, align 4
  %70 = load i32, i32* %height, align 4
  %cmp88 = icmp slt i32 %69, %70
  br i1 %cmp88, label %for.body.90, label %for.end.119

for.body.90:                                      ; preds = %for.cond.87
  %71 = load i32, i32* %i, align 4
  %72 = load i32, i32* %tile_height, align 4
  %rem91 = srem i32 %71, %72
  %cmp92 = icmp eq i32 %rem91, 0
  br i1 %cmp92, label %if.then.94, label %if.end.101

if.then.94:                                       ; preds = %for.body.90
  %73 = load i32, i32* %i, align 4
  %74 = load i32, i32* %tile_height, align 4
  %add96 = add nsw i32 %73, %74
  %sub97 = sub nsw i32 %add96, 1
  %75 = load i32, i32* %height, align 4
  %cmp98 = icmp slt i32 %sub97, %75
  br i1 %cmp98, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.94
  %76 = load i32, i32* %tile_height, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.94
  %77 = load i32, i32* %height, align 4
  %78 = load i32, i32* %i, align 4
  %sub100 = sub nsw i32 %77, %78
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %76, %cond.true ], [ %sub100, %cond.false ]
  store i32 %cond, i32* %scan_lines, align 4
  %79 = load i8*, i8** %data, align 8
  %80 = load i32, i32* %i, align 4
  %81 = load i32, i32* %width, align 4
  %82 = load i32, i32* %scan_lines, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %79, i32 0, i32 %80, i32 %81, i32 %82)
  %83 = load i8*, i8** %data, align 8
  store i8* %83, i8** %src, align 8
  br label %if.end.101

if.end.101:                                       ; preds = %cond.end, %for.body.90
  %84 = load i8*, i8** %src, align 8
  %85 = load i32, i32* %width, align 4
  %conv102 = sext i32 %85 to i64
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call103 = call i64 @fwrite(i8* %84, i64 %conv102, i64 1, %struct._IO_FILE* %86)
  %87 = load i32, i32* %linepad, align 4
  %tobool104 = icmp ne i32 %87, 0
  br i1 %tobool104, label %if.then.105, label %if.end.108

if.then.105:                                      ; preds = %if.end.101
  %88 = bitcast i64* %tmp to i8*
  %89 = load i32, i32* %linepad, align 4
  %conv106 = sext i32 %89 to i64
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call107 = call i64 @fwrite(i8* %88, i64 %conv106, i64 1, %struct._IO_FILE* %90)
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.105, %if.end.101
  %91 = load i32, i32* %width, align 4
  %92 = load i8*, i8** %src, align 8
  %idx.ext = sext i32 %91 to i64
  %add.ptr = getelementptr inbounds i8, i8* %92, i64 %idx.ext
  store i8* %add.ptr, i8** %src, align 8
  %93 = load i32, i32* %i, align 4
  %rem109 = srem i32 %93, 20
  %cmp110 = icmp eq i32 %rem109, 0
  br i1 %cmp110, label %if.then.112, label %if.end.116

if.then.112:                                      ; preds = %if.end.108
  %94 = load i32, i32* %i, align 4
  %conv113 = sitofp i32 %94 to double
  %95 = load i32, i32* %height, align 4
  %conv114 = sitofp i32 %95 to double
  %div = fdiv double %conv113, %conv114
  %call115 = call i32 @gimp_progress_update(double %div)
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.112, %if.end.108
  br label %for.inc.117

for.inc.117:                                      ; preds = %if.end.116
  %96 = load i32, i32* %i, align 4
  %inc118 = add nsw i32 %96, 1
  store i32 %inc118, i32* %i, align 4
  br label %for.cond.87

for.end.119:                                      ; preds = %for.cond.87
  %97 = load i8*, i8** %data, align 8
  call void @g_free(i8* %97)
  %98 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %98)
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call120 = call i32 @ferror(%struct._IO_FILE* %99) #5
  %tobool121 = icmp ne i32 %call120, 0
  br i1 %tobool121, label %if.then.122, label %if.end.124

if.then.122:                                      ; preds = %for.end.119
  %call123 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.54, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call123)
  store i32 0, i32* %retval
  br label %return

if.end.124:                                       ; preds = %for.end.119
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.124, %if.then.122
  %100 = load i32, i32* %retval
  ret i32 %100
}

; Function Attrs: nounwind uwtable
define internal i32 @save_rgb(%struct._IO_FILE* %ofp, i32 %image_ID, i32 %drawable_ID) #0 {
entry:
  %retval = alloca i32, align 4
  %ofp.addr = alloca %struct._IO_FILE*, align 8
  %image_ID.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32, align 4
  %height = alloca i32, align 4
  %width = alloca i32, align 4
  %linepad = alloca i32, align 4
  %tile_height = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp = alloca i64, align 8
  %data = alloca i8*, align 8
  %src = alloca i8*, align 8
  %xwdhdr = alloca %struct.L_XWDFILEHEADER, align 8
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %scan_lines = alloca i32, align 4
  store %struct._IO_FILE* %ofp, %struct._IO_FILE** %ofp.addr, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i64 0, i64* %tmp, align 8
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call %struct._GimpDrawable* @gimp_drawable_get(i32 %0)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width6 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %1, i32 0, i32 1
  %2 = load i32, i32* %width6, align 4
  store i32 %2, i32* %width, align 4
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height7 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 2
  %4 = load i32, i32* %height7, align 4
  store i32 %4, i32* %height, align 4
  %call8 = call i32 @gimp_tile_height() #6
  store i32 %call8, i32* %tile_height, align 4
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %6 = load i32, i32* %width, align 4
  %7 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %5, i32 0, i32 0, i32 %6, i32 %7, i32 0, i32 0)
  %8 = load i32, i32* %tile_height, align 4
  %9 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %8, %9
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 3
  %11 = load i32, i32* %bpp, align 4
  %mul9 = mul i32 %mul, %11
  %conv = zext i32 %mul9 to i64
  %call10 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call10, i8** %data, align 8
  store i8* %call10, i8** %src, align 8
  %12 = load i32, i32* %width, align 4
  %mul11 = mul nsw i32 %12, 3
  %rem = srem i32 %mul11, 4
  store i32 %rem, i32* %linepad, align 4
  %13 = load i32, i32* %linepad, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %linepad, align 4
  %sub = sub nsw i32 4, %14
  store i32 %sub, i32* %linepad, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %l_header_size = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 0
  store i64 0, i64* %l_header_size, align 8
  %l_file_version = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 1
  store i64 7, i64* %l_file_version, align 8
  %l_pixmap_format = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 2
  store i64 2, i64* %l_pixmap_format, align 8
  %l_pixmap_depth = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 3
  store i64 24, i64* %l_pixmap_depth, align 8
  %15 = load i32, i32* %width, align 4
  %conv12 = sext i32 %15 to i64
  %l_pixmap_width = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 4
  store i64 %conv12, i64* %l_pixmap_width, align 8
  %16 = load i32, i32* %height, align 4
  %conv13 = sext i32 %16 to i64
  %l_pixmap_height = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 5
  store i64 %conv13, i64* %l_pixmap_height, align 8
  %l_xoffset = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 6
  store i64 0, i64* %l_xoffset, align 8
  %l_byte_order = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 7
  store i64 1, i64* %l_byte_order, align 8
  %l_bitmap_unit = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 8
  store i64 32, i64* %l_bitmap_unit, align 8
  %l_bitmap_bit_order = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 9
  store i64 1, i64* %l_bitmap_bit_order, align 8
  %l_bitmap_pad = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 10
  store i64 32, i64* %l_bitmap_pad, align 8
  %l_bits_per_pixel = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 11
  store i64 24, i64* %l_bits_per_pixel, align 8
  %17 = load i32, i32* %width, align 4
  %mul14 = mul nsw i32 %17, 3
  %18 = load i32, i32* %linepad, align 4
  %add = add nsw i32 %mul14, %18
  %conv15 = sext i32 %add to i64
  %l_bytes_per_line = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 12
  store i64 %conv15, i64* %l_bytes_per_line, align 8
  %l_visual_class = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 13
  store i64 5, i64* %l_visual_class, align 8
  %l_red_mask = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 14
  store i64 16711680, i64* %l_red_mask, align 8
  %l_green_mask = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 15
  store i64 65280, i64* %l_green_mask, align 8
  %l_blue_mask = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 16
  store i64 255, i64* %l_blue_mask, align 8
  %l_bits_per_rgb = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 17
  store i64 8, i64* %l_bits_per_rgb, align 8
  %l_colormap_entries = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 18
  store i64 0, i64* %l_colormap_entries, align 8
  %l_ncolors = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 19
  store i64 0, i64* %l_ncolors, align 8
  %19 = load i32, i32* %width, align 4
  %conv16 = sext i32 %19 to i64
  %l_window_width = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 20
  store i64 %conv16, i64* %l_window_width, align 8
  %20 = load i32, i32* %height, align 4
  %conv17 = sext i32 %20 to i64
  %l_window_height = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 21
  store i64 %conv17, i64* %l_window_height, align 8
  %l_window_x = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 22
  store i64 64, i64* %l_window_x, align 8
  %l_window_y = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 23
  store i64 64, i64* %l_window_y, align 8
  %l_window_bdrwidth = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %xwdhdr, i32 0, i32 24
  store i64 0, i64* %l_window_bdrwidth, align 8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  call void @write_xwd_header(%struct._IO_FILE* %21, %struct.L_XWDFILEHEADER* %xwdhdr)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %height, align 4
  %cmp = icmp slt i32 %22, %23
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %tile_height, align 4
  %rem19 = srem i32 %24, %25
  %cmp20 = icmp eq i32 %rem19, 0
  br i1 %cmp20, label %if.then.22, label %if.end.29

if.then.22:                                       ; preds = %for.body
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %tile_height, align 4
  %add24 = add nsw i32 %26, %27
  %sub25 = sub nsw i32 %add24, 1
  %28 = load i32, i32* %height, align 4
  %cmp26 = icmp slt i32 %sub25, %28
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.22
  %29 = load i32, i32* %tile_height, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.22
  %30 = load i32, i32* %height, align 4
  %31 = load i32, i32* %i, align 4
  %sub28 = sub nsw i32 %30, %31
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %29, %cond.true ], [ %sub28, %cond.false ]
  store i32 %cond, i32* %scan_lines, align 4
  %32 = load i8*, i8** %data, align 8
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %width, align 4
  %35 = load i32, i32* %scan_lines, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %32, i32 0, i32 %33, i32 %34, i32 %35)
  %36 = load i8*, i8** %data, align 8
  store i8* %36, i8** %src, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %cond.end, %for.body
  %37 = load i8*, i8** %src, align 8
  %38 = load i32, i32* %width, align 4
  %mul30 = mul nsw i32 %38, 3
  %conv31 = sext i32 %mul30 to i64
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call32 = call i64 @fwrite(i8* %37, i64 %conv31, i64 1, %struct._IO_FILE* %39)
  %40 = load i32, i32* %linepad, align 4
  %tobool33 = icmp ne i32 %40, 0
  br i1 %tobool33, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %if.end.29
  %41 = bitcast i64* %tmp to i8*
  %42 = load i32, i32* %linepad, align 4
  %conv35 = sext i32 %42 to i64
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call36 = call i64 @fwrite(i8* %41, i64 %conv35, i64 1, %struct._IO_FILE* %43)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.34, %if.end.29
  %44 = load i32, i32* %width, align 4
  %mul38 = mul nsw i32 %44, 3
  %45 = load i8*, i8** %src, align 8
  %idx.ext = sext i32 %mul38 to i64
  %add.ptr = getelementptr inbounds i8, i8* %45, i64 %idx.ext
  store i8* %add.ptr, i8** %src, align 8
  %46 = load i32, i32* %i, align 4
  %rem39 = srem i32 %46, 20
  %cmp40 = icmp eq i32 %rem39, 0
  br i1 %cmp40, label %if.then.42, label %if.end.46

if.then.42:                                       ; preds = %if.end.37
  %47 = load i32, i32* %i, align 4
  %conv43 = sitofp i32 %47 to double
  %48 = load i32, i32* %height, align 4
  %conv44 = sitofp i32 %48 to double
  %div = fdiv double %conv43, %conv44
  %call45 = call i32 @gimp_progress_update(double %div)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.42, %if.end.37
  br label %for.inc

for.inc:                                          ; preds = %if.end.46
  %49 = load i32, i32* %i, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %50 = load i8*, i8** %data, align 8
  call void @g_free(i8* %50)
  %51 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %51)
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call47 = call i32 @ferror(%struct._IO_FILE* %52) #5
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %for.end
  %call50 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.55, i32 0, i32 0)) #5
  call void (i8*, ...) @g_message(i8* %call50)
  store i32 0, i32* %retval
  br label %return

if.end.51:                                        ; preds = %for.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.51, %if.then.49
  %53 = load i32, i32* %retval
  ret i32 %53
}

declare i8* @gimp_image_get_colormap(i32, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @write_xwd_header(%struct._IO_FILE* %ofp, %struct.L_XWDFILEHEADER* %xwdhdr) #0 {
entry:
  %ofp.addr = alloca %struct._IO_FILE*, align 8
  %xwdhdr.addr = alloca %struct.L_XWDFILEHEADER*, align 8
  %j = alloca i32, align 4
  %hdrpad = alloca i32, align 4
  %hdr_entries = alloca i32, align 4
  %cp = alloca i64*, align 8
  store %struct._IO_FILE* %ofp, %struct._IO_FILE** %ofp.addr, align 8
  store %struct.L_XWDFILEHEADER* %xwdhdr, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  store i32 0, i32* %hdrpad, align 4
  store i32 25, i32* %hdr_entries, align 4
  %0 = load i32, i32* %hdr_entries, align 4
  %mul = mul nsw i32 %0, 4
  %1 = load i32, i32* %hdrpad, align 4
  %add = add nsw i32 %mul, %1
  %conv = sext i32 %add to i64
  %2 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_header_size = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %2, i32 0, i32 0
  store i64 %conv, i64* %l_header_size, align 8
  %3 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %4 = bitcast %struct.L_XWDFILEHEADER* %3 to i64*
  store i64* %4, i64** %cp, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %j, align 4
  %conv1 = sext i32 %5 to i64
  %cmp = icmp ult i64 %conv1, 25
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %7 = load i64*, i64** %cp, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %7, i32 1
  store i64* %incdec.ptr, i64** %cp, align 8
  %8 = load i64, i64* %7, align 8
  call void @write_card32(%struct._IO_FILE* %6, i64 %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.7, %for.end
  %10 = load i32, i32* %j, align 4
  %11 = load i32, i32* %hdrpad, align 4
  %cmp4 = icmp slt i32 %10, %11
  br i1 %cmp4, label %for.body.6, label %for.end.9

for.body.6:                                       ; preds = %for.cond.3
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  call void @write_card8(%struct._IO_FILE* %12, i64 0)
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.body.6
  %13 = load i32, i32* %j, align 4
  %inc8 = add nsw i32 %13, 1
  store i32 %inc8, i32* %j, align 4
  br label %for.cond.3

for.end.9:                                        ; preds = %for.cond.3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_xwd_cols(%struct._IO_FILE* %ofp, %struct.L_XWDFILEHEADER* %xwdhdr, %struct.L_XWDCOLOR* %colormap) #0 {
entry:
  %ofp.addr = alloca %struct._IO_FILE*, align 8
  %xwdhdr.addr = alloca %struct.L_XWDFILEHEADER*, align 8
  %colormap.addr = alloca %struct.L_XWDCOLOR*, align 8
  %j = alloca i32, align 4
  store %struct._IO_FILE* %ofp, %struct._IO_FILE** %ofp.addr, align 8
  store %struct.L_XWDFILEHEADER* %xwdhdr, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  store %struct.L_XWDCOLOR* %colormap, %struct.L_XWDCOLOR** %colormap.addr, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4
  %conv = sext i32 %0 to i64
  %1 = load %struct.L_XWDFILEHEADER*, %struct.L_XWDFILEHEADER** %xwdhdr.addr, align 8
  %l_colormap_entries = getelementptr inbounds %struct.L_XWDFILEHEADER, %struct.L_XWDFILEHEADER* %1, i32 0, i32 18
  %2 = load i64, i64* %l_colormap_entries, align 8
  %cmp = icmp ult i64 %conv, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %colormap.addr, align 8
  %arrayidx = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %5, i64 %idxprom
  %l_pixel = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx, i32 0, i32 0
  %6 = load i64, i64* %l_pixel, align 8
  call void @write_card32(%struct._IO_FILE* %3, i64 %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %8 = load i32, i32* %j, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %colormap.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %9, i64 %idxprom2
  %l_red = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx3, i32 0, i32 1
  %10 = load i16, i16* %l_red, align 2
  %conv4 = zext i16 %10 to i64
  call void @write_card16(%struct._IO_FILE* %7, i64 %conv4)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %12 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %12 to i64
  %13 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %colormap.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %13, i64 %idxprom5
  %l_green = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx6, i32 0, i32 2
  %14 = load i16, i16* %l_green, align 2
  %conv7 = zext i16 %14 to i64
  call void @write_card16(%struct._IO_FILE* %11, i64 %conv7)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %16 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %16 to i64
  %17 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %colormap.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %17, i64 %idxprom8
  %l_blue = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx9, i32 0, i32 3
  %18 = load i16, i16* %l_blue, align 2
  %conv10 = zext i16 %18 to i64
  call void @write_card16(%struct._IO_FILE* %15, i64 %conv10)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %20 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %20 to i64
  %21 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %colormap.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %21, i64 %idxprom11
  %l_flags = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx12, i32 0, i32 4
  %22 = load i8, i8* %l_flags, align 1
  %conv13 = zext i8 %22 to i64
  call void @write_card8(%struct._IO_FILE* %19, i64 %conv13)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %24 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %24 to i64
  %25 = load %struct.L_XWDCOLOR*, %struct.L_XWDCOLOR** %colormap.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %25, i64 %idxprom14
  %l_pad = getelementptr inbounds %struct.L_XWDCOLOR, %struct.L_XWDCOLOR* %arrayidx15, i32 0, i32 5
  %26 = load i8, i8* %l_pad, align 1
  %conv16 = zext i8 %26 to i64
  call void @write_card8(%struct._IO_FILE* %23, i64 %conv16)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %j, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define internal void @write_card32(%struct._IO_FILE* %ofp, i64 %c) #0 {
entry:
  %ofp.addr = alloca %struct._IO_FILE*, align 8
  %c.addr = alloca i64, align 8
  store %struct._IO_FILE* %ofp, %struct._IO_FILE** %ofp.addr, align 8
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %c.addr, align 8
  %shr = lshr i64 %0, 24
  %and = and i64 %shr, 255
  %conv = trunc i64 %and to i32
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call = call i32 @_IO_putc(i32 %conv, %struct._IO_FILE* %1)
  %2 = load i64, i64* %c.addr, align 8
  %shr1 = lshr i64 %2, 16
  %and2 = and i64 %shr1, 255
  %conv3 = trunc i64 %and2 to i32
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call4 = call i32 @_IO_putc(i32 %conv3, %struct._IO_FILE* %3)
  %4 = load i64, i64* %c.addr, align 8
  %shr5 = lshr i64 %4, 8
  %and6 = and i64 %shr5, 255
  %conv7 = trunc i64 %and6 to i32
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call8 = call i32 @_IO_putc(i32 %conv7, %struct._IO_FILE* %5)
  %6 = load i64, i64* %c.addr, align 8
  %and9 = and i64 %6, 255
  %conv10 = trunc i64 %and9 to i32
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call11 = call i32 @_IO_putc(i32 %conv10, %struct._IO_FILE* %7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_card8(%struct._IO_FILE* %ofp, i64 %c) #0 {
entry:
  %ofp.addr = alloca %struct._IO_FILE*, align 8
  %c.addr = alloca i64, align 8
  store %struct._IO_FILE* %ofp, %struct._IO_FILE** %ofp.addr, align 8
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %c.addr, align 8
  %and = and i64 %0, 255
  %conv = trunc i64 %and to i32
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call = call i32 @_IO_putc(i32 %conv, %struct._IO_FILE* %1)
  ret void
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @write_card16(%struct._IO_FILE* %ofp, i64 %c) #0 {
entry:
  %ofp.addr = alloca %struct._IO_FILE*, align 8
  %c.addr = alloca i64, align 8
  store %struct._IO_FILE* %ofp, %struct._IO_FILE** %ofp.addr, align 8
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %c.addr, align 8
  %shr = lshr i64 %0, 8
  %and = and i64 %shr, 255
  %conv = trunc i64 %and to i32
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call = call i32 @_IO_putc(i32 %conv, %struct._IO_FILE* %1)
  %2 = load i64, i64* %c.addr, align 8
  %and1 = and i64 %2, 255
  %conv2 = trunc i64 %and1 to i32
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %ofp.addr, align 8
  %call3 = call i32 @_IO_putc(i32 %conv2, %struct._IO_FILE* %3)
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
