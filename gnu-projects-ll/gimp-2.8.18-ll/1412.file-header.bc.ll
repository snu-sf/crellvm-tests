; ModuleID = './plug-ins/common/file-header.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.save_args = internal constant [5 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Drawable to save\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"The name of the file to save the image in\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"raw-filename\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"file-header-save\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"saves files as C unsigned character array\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"FIXME: write help\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Spencer Kimball & Peter Mattis\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"1997\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"C source code header\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"INDEXED, RGB\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"text/x-chdr\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.19 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"file-header\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"Header\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"\5C\5C\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"\5C\22\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"\22\0A\09\22\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.27 = private unnamed_addr constant [49 x i8] c"/*  GIMP header image file format (%s): %s  */\0A\0A\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"INDEXED\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"static unsigned int width = %d;\0A\00", align 1
@.str.31 = private unnamed_addr constant [35 x i8] c"static unsigned int height = %d;\0A\0A\00", align 1
@.str.32 = private unnamed_addr constant [87 x i8] c"/*  Call this macro repeatedly.  After each use, the pixel data can be extracted  */\0A\0A\00", align 1
@.str.33 = private unnamed_addr constant [249 x i8] c"#define HEADER_PIXEL(data,pixel) {\5C\0Apixel[0] = (((data[0] - 33) << 2) | ((data[1] - 33) >> 4)); \5C\0Apixel[1] = ((((data[1] - 33) & 0xF) << 4) | ((data[2] - 33) >> 2)); \5C\0Apixel[2] = ((((data[2] - 33) & 0x3) << 6) | ((data[3] - 33))); \5C\0Adata += 4; \5C\0A}\0A\00", align 1
@.str.34 = private unnamed_addr constant [30 x i8] c"static char *header_data =\0A\09\22\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"\22;\0A\00", align 1
@.str.36 = private unnamed_addr constant [223 x i8] c"#define HEADER_PIXEL(data,pixel) {\5C\0Apixel[0] = header_data_cmap[(unsigned char)data[0]][0]; \5C\0Apixel[1] = header_data_cmap[(unsigned char)data[0]][1]; \5C\0Apixel[2] = header_data_cmap[(unsigned char)data[0]][2]; \5C\0Adata ++; }\0A\0A\00", align 1
@.str.37 = private unnamed_addr constant [41 x i8] c"static char header_data_cmap[256][3] = {\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"\0A\09{%3d,%3d,%3d}\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c",\0A\09{%3d,%3d,%3d}\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c",\0A\09{255,255,255}\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"\0A\09};\0A\00", align 1
@.str.42 = private unnamed_addr constant [32 x i8] c"static char header_data[] = {\0A\09\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"%d,\0A\09\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"%d\0A\09\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@.str.48 = private unnamed_addr constant [29 x i8] c"unhandled drawable type (%d)\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i32 1, i32 5, i32 0, %struct._GimpParamDef* getelementptr inbounds ([5 x %struct._GimpParamDef], [5 x %struct._GimpParamDef]* @query.save_args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0))
  %call1 = call i32 @gimp_register_save_handler(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i32 0, i32 0))
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
  %call = call i8* @gimp_locale_directory() #6
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %2, align 4
  %3 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  store i32 21, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  store i32 0, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %4 = load i8*, i8** %name.addr, align 8
  %call4 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0)) #7
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  store i32 0, i32* %export, align 4
  %5 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %5, i64 1
  %data6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx5, i32 0, i32 1
  %d_int327 = bitcast %union._GimpParamData* %data6 to i32*
  %6 = load i32, i32* %d_int327, align 4
  store i32 %6, i32* %image_ID, align 4
  %7 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx8 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %7, i64 2
  %data9 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx8, i32 0, i32 1
  %d_int3210 = bitcast %union._GimpParamData* %data9 to i32*
  %8 = load i32, i32* %d_int3210, align 4
  store i32 %8, i32* %drawable_ID, align 4
  %9 = load i32, i32* %run_mode, align 4
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then, %if.then
  call void @gimp_ui_init(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i32 0)
  %call11 = call i32 @gimp_export_image(i32* %image_ID, i32* %drawable_ID, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i32 5)
  store i32 %call11, i32* %export, align 4
  %10 = load i32, i32* %export, align 4
  %cmp12 = icmp eq i32 %10, 0
  br i1 %cmp12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %sw.bb
  store i32 4, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end
  %11 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %11, i64 3
  %data15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx14, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data15 to i8**
  %12 = load i8*, i8** %d_string, align 8
  %13 = load i32, i32* %image_ID, align 4
  %14 = load i32, i32* %drawable_ID, align 4
  %call16 = call i32 @save_image(i8* %12, i32 %13, i32 %14)
  %tobool = icmp ne i32 %call16, 0
  br i1 %tobool, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %sw.epilog
  store i32 0, i32* %status, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %sw.epilog
  %15 = load i32, i32* %export, align 4
  %cmp19 = icmp eq i32 %15, 2
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.18
  %16 = load i32, i32* %image_ID, align 4
  %call21 = call i32 @gimp_image_delete(i32 %16)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.18
  br label %if.end.23

if.else:                                          ; preds = %do.end
  store i32 1, i32* %status, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.end.22
  %17 = load i32, i32* %status, align 4
  store i32 %17, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  br label %return

return:                                           ; preds = %if.end.23, %if.then.13
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

declare void @gimp_ui_init(i8*, i32) #1

declare i32 @gimp_export_image(i32*, i32*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @save_image(i8* %filename, i32 %image_ID, i32 %drawable_ID) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %image_ID.addr = alloca i32, align 4
  %drawable_ID.addr = alloca i32, align 4
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %drawable_type = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %backslash = alloca i8*, align 8
  %quote = alloca i8*, align 8
  %newline = alloca i8*, align 8
  %buf = alloca [4 x i8], align 1
  %d = alloca i8*, align 8
  %data = alloca i8*, align 8
  %cmap = alloca i8*, align 8
  %colors = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8** %backslash, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8** %quote, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8** %newline, align 8
  store i8* null, i8** %d, align 8
  store i8* null, i8** %data, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %drawable_ID.addr, align 4
  %call1 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %1)
  store %struct._GimpDrawable* %call1, %struct._GimpDrawable** %drawable, align 8
  %2 = load i32, i32* %drawable_ID.addr, align 4
  %call2 = call i32 @gimp_drawable_type(i32 %2)
  store i32 %call2, i32* %drawable_type, align 4
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 1
  %5 = load i32, i32* %width, align 4
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 2
  %7 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %3, i32 0, i32 0, i32 %5, i32 %7, i32 0, i32 0)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %9 = load i32, i32* %drawable_type, align 4
  %cmp3 = icmp eq i32 0, %9
  %cond = select i1 %cmp3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0)
  %10 = load i8*, i8** %filename.addr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.27, i32 0, i32 0), i8* %cond, i8* %10)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width5 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %12, i32 0, i32 1
  %13 = load i32, i32* %width5, align 4
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.30, i32 0, i32 0), i32 %13)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height7 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %15, i32 0, i32 2
  %16 = load i32, i32* %height7, align 4
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.31, i32 0, i32 0), i32 %16)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.32, i32 0, i32 0))
  %18 = load i32, i32* %drawable_type, align 4
  switch i32 %18, label %sw.default [
    i32 0, label %sw.bb
    i32 4, label %sw.bb.92
  ]

sw.bb:                                            ; preds = %if.end
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([249 x i8], [249 x i8]* @.str.33, i32 0, i32 0))
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.34, i32 0, i32 0))
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width12 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %21, i32 0, i32 1
  %22 = load i32, i32* %width12, align 4
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %23, i32 0, i32 3
  %24 = load i32, i32* %bpp, align 4
  %mul = mul i32 %22, %24
  %conv = zext i32 %mul to i64
  %call13 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call13, i8** %data, align 8
  store i32 0, i32* %c, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.88, %sw.bb
  %25 = load i32, i32* %y, align 4
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height14 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %26, i32 0, i32 2
  %27 = load i32, i32* %height14, align 4
  %cmp15 = icmp ult i32 %25, %27
  br i1 %cmp15, label %for.body, label %for.end.90

for.body:                                         ; preds = %for.cond
  %28 = load i8*, i8** %data, align 8
  %29 = load i32, i32* %y, align 4
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width17 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %30, i32 0, i32 1
  %31 = load i32, i32* %width17, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %pixel_rgn, i8* %28, i32 0, i32 %29, i32 %31)
  store i32 0, i32* %x, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.85, %for.body
  %32 = load i32, i32* %x, align 4
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width19 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %33, i32 0, i32 1
  %34 = load i32, i32* %width19, align 4
  %cmp20 = icmp ult i32 %32, %34
  br i1 %cmp20, label %for.body.22, label %for.end.87

for.body.22:                                      ; preds = %for.cond.18
  %35 = load i8*, i8** %data, align 8
  %36 = load i32, i32* %x, align 4
  %37 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp23 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %37, i32 0, i32 3
  %38 = load i32, i32* %bpp23, align 4
  %mul24 = mul i32 %36, %38
  %idx.ext = zext i32 %mul24 to i64
  %add.ptr = getelementptr inbounds i8, i8* %35, i64 %idx.ext
  store i8* %add.ptr, i8** %d, align 8
  %39 = load i8*, i8** %d, align 8
  %arrayidx = getelementptr inbounds i8, i8* %39, i64 0
  %40 = load i8, i8* %arrayidx, align 1
  %conv25 = zext i8 %40 to i32
  %shr = ashr i32 %conv25, 2
  %and = and i32 %shr, 63
  %add = add nsw i32 %and, 33
  %conv26 = trunc i32 %add to i8
  %arrayidx27 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 0
  store i8 %conv26, i8* %arrayidx27, align 1
  %41 = load i8*, i8** %d, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %41, i64 0
  %42 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %42 to i32
  %and30 = and i32 %conv29, 3
  %shl = shl i32 %and30, 4
  %43 = load i8*, i8** %d, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %43, i64 1
  %44 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %44 to i32
  %shr33 = ashr i32 %conv32, 4
  %or = or i32 %shl, %shr33
  %and34 = and i32 %or, 63
  %add35 = add nsw i32 %and34, 33
  %conv36 = trunc i32 %add35 to i8
  %arrayidx37 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 1
  store i8 %conv36, i8* %arrayidx37, align 1
  %45 = load i8*, i8** %d, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %45, i64 1
  %46 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %46 to i32
  %and40 = and i32 %conv39, 15
  %shl41 = shl i32 %and40, 2
  %47 = load i8*, i8** %d, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %47, i64 2
  %48 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %48 to i32
  %shr44 = ashr i32 %conv43, 6
  %or45 = or i32 %shl41, %shr44
  %and46 = and i32 %or45, 63
  %add47 = add nsw i32 %and46, 33
  %conv48 = trunc i32 %add47 to i8
  %arrayidx49 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 2
  store i8 %conv48, i8* %arrayidx49, align 1
  %49 = load i8*, i8** %d, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %49, i64 2
  %50 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %50 to i32
  %and52 = and i32 %conv51, 63
  %add53 = add nsw i32 %and52, 33
  %conv54 = trunc i32 %add53 to i8
  %arrayidx55 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 3
  store i8 %conv54, i8* %arrayidx55, align 1
  store i32 0, i32* %b, align 4
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc, %for.body.22
  %51 = load i32, i32* %b, align 4
  %cmp57 = icmp slt i32 %51, 4
  br i1 %cmp57, label %for.body.59, label %for.end

for.body.59:                                      ; preds = %for.cond.56
  %52 = load i32, i32* %b, align 4
  %idxprom = sext i32 %52 to i64
  %arrayidx60 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 %idxprom
  %53 = load i8, i8* %arrayidx60, align 1
  %conv61 = sext i8 %53 to i32
  %cmp62 = icmp eq i32 %conv61, 34
  br i1 %cmp62, label %if.then.64, label %if.else

if.then.64:                                       ; preds = %for.body.59
  %54 = load i8*, i8** %quote, align 8
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call65 = call i64 @fwrite(i8* %54, i64 1, i64 2, %struct._IO_FILE* %55)
  br label %if.end.78

if.else:                                          ; preds = %for.body.59
  %56 = load i32, i32* %b, align 4
  %idxprom66 = sext i32 %56 to i64
  %arrayidx67 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i64 %idxprom66
  %57 = load i8, i8* %arrayidx67, align 1
  %conv68 = sext i8 %57 to i32
  %cmp69 = icmp eq i32 %conv68, 92
  br i1 %cmp69, label %if.then.71, label %if.else.73

if.then.71:                                       ; preds = %if.else
  %58 = load i8*, i8** %backslash, align 8
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call72 = call i64 @fwrite(i8* %58, i64 1, i64 2, %struct._IO_FILE* %59)
  br label %if.end.77

if.else.73:                                       ; preds = %if.else
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i32 0
  %60 = load i32, i32* %b, align 4
  %idx.ext74 = sext i32 %60 to i64
  %add.ptr75 = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext74
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call76 = call i64 @fwrite(i8* %add.ptr75, i64 1, i64 1, %struct._IO_FILE* %61)
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.73, %if.then.71
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.64
  br label %for.inc

for.inc:                                          ; preds = %if.end.78
  %62 = load i32, i32* %b, align 4
  %inc = add nsw i32 %62, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond.56

for.end:                                          ; preds = %for.cond.56
  %63 = load i32, i32* %c, align 4
  %inc79 = add nsw i32 %63, 1
  store i32 %inc79, i32* %c, align 4
  %64 = load i32, i32* %c, align 4
  %cmp80 = icmp sge i32 %64, 16
  br i1 %cmp80, label %if.then.82, label %if.end.84

if.then.82:                                       ; preds = %for.end
  %65 = load i8*, i8** %newline, align 8
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call83 = call i64 @fwrite(i8* %65, i64 1, i64 4, %struct._IO_FILE* %66)
  store i32 0, i32* %c, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.82, %for.end
  br label %for.inc.85

for.inc.85:                                       ; preds = %if.end.84
  %67 = load i32, i32* %x, align 4
  %inc86 = add nsw i32 %67, 1
  store i32 %inc86, i32* %x, align 4
  br label %for.cond.18

for.end.87:                                       ; preds = %for.cond.18
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.end.87
  %68 = load i32, i32* %y, align 4
  %inc89 = add nsw i32 %68, 1
  store i32 %inc89, i32* %y, align 4
  br label %for.cond

for.end.90:                                       ; preds = %for.cond
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0))
  br label %sw.epilog

sw.bb.92:                                         ; preds = %if.end
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call93 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([223 x i8], [223 x i8]* @.str.36, i32 0, i32 0))
  %71 = load i32, i32* %image_ID.addr, align 4
  %call94 = call i8* @gimp_image_get_colormap(i32 %71, i32* %colors)
  store i8* %call94, i8** %cmap, align 8
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.37, i32 0, i32 0))
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %74 = load i8*, i8** %cmap, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %74, i64 0
  %75 = load i8, i8* %arrayidx96, align 1
  %conv97 = zext i8 %75 to i32
  %76 = load i8*, i8** %cmap, align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %76, i64 1
  %77 = load i8, i8* %arrayidx98, align 1
  %conv99 = zext i8 %77 to i32
  %78 = load i8*, i8** %cmap, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %78, i64 2
  %79 = load i8, i8* %arrayidx100, align 1
  %conv101 = zext i8 %79 to i32
  %call102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i32 0, i32 0), i32 %conv97, i32 %conv99, i32 %conv101)
  store i32 1, i32* %c, align 4
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc.122, %sw.bb.92
  %80 = load i32, i32* %c, align 4
  %81 = load i32, i32* %colors, align 4
  %cmp104 = icmp slt i32 %80, %81
  br i1 %cmp104, label %for.body.106, label %for.end.124

for.body.106:                                     ; preds = %for.cond.103
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %83 = load i32, i32* %c, align 4
  %mul107 = mul nsw i32 3, %83
  %idxprom108 = sext i32 %mul107 to i64
  %84 = load i8*, i8** %cmap, align 8
  %arrayidx109 = getelementptr inbounds i8, i8* %84, i64 %idxprom108
  %85 = load i8, i8* %arrayidx109, align 1
  %conv110 = zext i8 %85 to i32
  %86 = load i32, i32* %c, align 4
  %mul111 = mul nsw i32 3, %86
  %add112 = add nsw i32 %mul111, 1
  %idxprom113 = sext i32 %add112 to i64
  %87 = load i8*, i8** %cmap, align 8
  %arrayidx114 = getelementptr inbounds i8, i8* %87, i64 %idxprom113
  %88 = load i8, i8* %arrayidx114, align 1
  %conv115 = zext i8 %88 to i32
  %89 = load i32, i32* %c, align 4
  %mul116 = mul nsw i32 3, %89
  %add117 = add nsw i32 %mul116, 2
  %idxprom118 = sext i32 %add117 to i64
  %90 = load i8*, i8** %cmap, align 8
  %arrayidx119 = getelementptr inbounds i8, i8* %90, i64 %idxprom118
  %91 = load i8, i8* %arrayidx119, align 1
  %conv120 = zext i8 %91 to i32
  %call121 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i32 0, i32 0), i32 %conv110, i32 %conv115, i32 %conv120)
  br label %for.inc.122

for.inc.122:                                      ; preds = %for.body.106
  %92 = load i32, i32* %c, align 4
  %inc123 = add nsw i32 %92, 1
  store i32 %inc123, i32* %c, align 4
  br label %for.cond.103

for.end.124:                                      ; preds = %for.cond.103
  br label %for.cond.125

for.cond.125:                                     ; preds = %for.inc.130, %for.end.124
  %93 = load i32, i32* %c, align 4
  %cmp126 = icmp slt i32 %93, 256
  br i1 %cmp126, label %for.body.128, label %for.end.132

for.body.128:                                     ; preds = %for.cond.125
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call129 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %94, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i32 0, i32 0))
  br label %for.inc.130

for.inc.130:                                      ; preds = %for.body.128
  %95 = load i32, i32* %c, align 4
  %inc131 = add nsw i32 %95, 1
  store i32 %inc131, i32* %c, align 4
  br label %for.cond.125

for.end.132:                                      ; preds = %for.cond.125
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call133 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0))
  %97 = load i8*, i8** %cmap, align 8
  call void @g_free(i8* %97)
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call134 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.42, i32 0, i32 0))
  %99 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width135 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %99, i32 0, i32 1
  %100 = load i32, i32* %width135, align 4
  %101 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp136 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %101, i32 0, i32 3
  %102 = load i32, i32* %bpp136, align 4
  %mul137 = mul i32 %100, %102
  %conv138 = zext i32 %mul137 to i64
  %call139 = call noalias i8* @g_malloc_n(i64 %conv138, i64 1)
  store i8* %call139, i8** %data, align 8
  store i32 0, i32* %c, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond.140

for.cond.140:                                     ; preds = %for.inc.180, %for.end.132
  %103 = load i32, i32* %y, align 4
  %104 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height141 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %104, i32 0, i32 2
  %105 = load i32, i32* %height141, align 4
  %cmp142 = icmp ult i32 %103, %105
  br i1 %cmp142, label %for.body.144, label %for.end.182

for.body.144:                                     ; preds = %for.cond.140
  %106 = load i8*, i8** %data, align 8
  %107 = load i32, i32* %y, align 4
  %108 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width145 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %108, i32 0, i32 1
  %109 = load i32, i32* %width145, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %pixel_rgn, i8* %106, i32 0, i32 %107, i32 %109)
  store i32 0, i32* %x, align 4
  br label %for.cond.146

for.cond.146:                                     ; preds = %for.inc.164, %for.body.144
  %110 = load i32, i32* %x, align 4
  %111 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width147 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %111, i32 0, i32 1
  %112 = load i32, i32* %width147, align 4
  %sub = sub i32 %112, 1
  %cmp148 = icmp ult i32 %110, %sub
  br i1 %cmp148, label %for.body.150, label %for.end.166

for.body.150:                                     ; preds = %for.cond.146
  %113 = load i8*, i8** %data, align 8
  %114 = load i32, i32* %x, align 4
  %115 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %bpp151 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %115, i32 0, i32 3
  %116 = load i32, i32* %bpp151, align 4
  %mul152 = mul i32 %114, %116
  %idx.ext153 = zext i32 %mul152 to i64
  %add.ptr154 = getelementptr inbounds i8, i8* %113, i64 %idx.ext153
  store i8* %add.ptr154, i8** %d, align 8
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %118 = load i8*, i8** %d, align 8
  %arrayidx155 = getelementptr inbounds i8, i8* %118, i64 0
  %119 = load i8, i8* %arrayidx155, align 1
  %conv156 = zext i8 %119 to i32
  %call157 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %117, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0), i32 %conv156)
  %120 = load i32, i32* %c, align 4
  %inc158 = add nsw i32 %120, 1
  store i32 %inc158, i32* %c, align 4
  %121 = load i32, i32* %c, align 4
  %cmp159 = icmp sge i32 %121, 16
  br i1 %cmp159, label %if.then.161, label %if.end.163

if.then.161:                                      ; preds = %for.body.150
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call162 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0))
  store i32 0, i32* %c, align 4
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.161, %for.body.150
  br label %for.inc.164

for.inc.164:                                      ; preds = %if.end.163
  %123 = load i32, i32* %x, align 4
  %inc165 = add nsw i32 %123, 1
  store i32 %inc165, i32* %x, align 4
  br label %for.cond.146

for.end.166:                                      ; preds = %for.cond.146
  %124 = load i32, i32* %y, align 4
  %125 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height167 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %125, i32 0, i32 2
  %126 = load i32, i32* %height167, align 4
  %sub168 = sub i32 %126, 1
  %cmp169 = icmp ne i32 %124, %sub168
  br i1 %cmp169, label %if.then.171, label %if.else.175

if.then.171:                                      ; preds = %for.end.166
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %128 = load i8*, i8** %d, align 8
  %arrayidx172 = getelementptr inbounds i8, i8* %128, i64 1
  %129 = load i8, i8* %arrayidx172, align 1
  %conv173 = zext i8 %129 to i32
  %call174 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %127, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i32 %conv173)
  br label %if.end.179

if.else.175:                                      ; preds = %for.end.166
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %131 = load i8*, i8** %d, align 8
  %arrayidx176 = getelementptr inbounds i8, i8* %131, i64 1
  %132 = load i8, i8* %arrayidx176, align 1
  %conv177 = zext i8 %132 to i32
  %call178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %130, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i32 %conv177)
  br label %if.end.179

if.end.179:                                       ; preds = %if.else.175, %if.then.171
  store i32 0, i32* %c, align 4
  br label %for.inc.180

for.inc.180:                                      ; preds = %if.end.179
  %133 = load i32, i32* %y, align 4
  %inc181 = add nsw i32 %133, 1
  store i32 %inc181, i32* %y, align 4
  br label %for.cond.140

for.end.182:                                      ; preds = %for.cond.140
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call183 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %134, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i32 0, i32 0))
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %135 = load i32, i32* %drawable_type, align 4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.48, i32 0, i32 0), i32 %135)
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call184 = call i32 @fclose(%struct._IO_FILE* %136)
  %137 = load i8*, i8** %data, align 8
  call void @g_free(i8* %137)
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %for.end.182, %for.end.90
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call185 = call i32 @fclose(%struct._IO_FILE* %138)
  %139 = load i8*, i8** %data, align 8
  call void @g_free(i8* %139)
  %140 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %140)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then
  %141 = load i32, i32* %retval
  ret i32 %141
}

declare i32 @gimp_image_delete(i32) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare i32 @gimp_drawable_type(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

declare i8* @gimp_image_get_colormap(i32, i32*) #1

declare void @g_free(i8*) #1

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

declare i32 @fclose(%struct._IO_FILE*) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

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
