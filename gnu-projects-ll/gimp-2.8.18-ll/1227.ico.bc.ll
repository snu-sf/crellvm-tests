; ModuleID = './plug-ins/file-ico/ico.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GError = type { i32, i32, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@.str = private unnamed_addr constant [21 x i8] c"invalid bitrate: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ico.c\00", align 1
@__func__.ico_rowstride = private unnamed_addr constant [14 x i8] c"ico_rowstride\00", align 1
@query.load_args = internal constant [3 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0) }], align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"The name of the file to load\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"raw-filename\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"The name entered\00", align 1
@query.load_return_vals = internal constant [1 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0) }], align 16
@.str.8 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Output image\00", align 1
@query.thumb_args = internal constant [2 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0) }], align 16
@.str.10 = private unnamed_addr constant [11 x i8] c"thumb-size\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Preferred thumbnail size\00", align 1
@query.thumb_return_vals = internal constant [3 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i32 0, i32 0) }, %struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0) }], align 16
@.str.12 = private unnamed_addr constant [16 x i8] c"Thumbnail image\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"image-width\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"Width of full-sized image\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"image-height\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"Height of full-sized image\00", align 1
@query.save_args = internal constant [5 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i32 0, i32 0) }, %struct._GimpParamDef { i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0) }], align 16
@.str.17 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"Drawable to save\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"The name of the file to save the image in\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"file-ico-load\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"Loads files of Windows ICO file format\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"Christian Kreibich <christian@whoop.org>\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"2002\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"Microsoft Windows icon\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"image/x-ico\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"ico\00", align 1
@.str.28 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.29 = private unnamed_addr constant [52 x i8] c"0,string,\5C000\5C001\5C000\5C000,0,string,\5C000\5C002\5C000\5C000\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"file-ico-load-thumb\00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c"Loads a preview from an Windows ICO file\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"Dom Lachowicz, Sven Neumann\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"Sven Neumann <sven@gimp.org>\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"2005\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"file-ico-save\00", align 1
@.str.36 = private unnamed_addr constant [39 x i8] c"Saves files in Windows ICO file format\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@run.values = internal global [4 x %struct._GimpParam] zeroinitializer, align 16
@.str.38 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i32 0, i32 0), i8* null, i32 1, i32 3, i32 1, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.load_args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @query.load_return_vals, i32 0, i32 0))
  %call = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0))
  %call1 = call i32 @gimp_register_magic_load_handler(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.29, i32 0, i32 0))
  call void @gimp_install_procedure(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i8* null, i8* null, i32 1, i32 2, i32 3, %struct._GimpParamDef* getelementptr inbounds ([2 x %struct._GimpParamDef], [2 x %struct._GimpParamDef]* @query.thumb_args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.thumb_return_vals, i32 0, i32 0))
  %call2 = call i32 @gimp_register_thumbnail_loader(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0))
  call void @gimp_install_procedure(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0), i32 1, i32 5, i32 0, %struct._GimpParamDef* getelementptr inbounds ([5 x %struct._GimpParamDef], [5 x %struct._GimpParamDef]* @query.save_args, i32 0, i32 0), %struct._GimpParamDef* null)
  %call3 = call i32 @gimp_register_file_handler_mime(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0))
  %call4 = call i32 @gimp_register_save_handler(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i32 0, i32 0))
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
  %export = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  %image_ID = alloca i32, align 4
  %filename = alloca i8*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %image_ID33 = alloca i32, align 4
  %file_name = alloca i8*, align 8
  %image_ID44 = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  store i32 0, i32* %export, align 4
  store %struct._GError* null, %struct._GError** %error, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #7
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i32 0, i32 0), i8* %call) #6
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0)) #6
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i32 0, i32 0)) #6
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
  store %struct._GimpParam* getelementptr inbounds ([4 x %struct._GimpParam], [4 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %3, align 8
  store i32 21, i32* getelementptr inbounds ([4 x %struct._GimpParam], [4 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  store i32 0, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([4 x %struct._GimpParam], [4 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %4 = load i8*, i8** %name.addr, align 8
  %call4 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0)) #8
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.else.17

if.then:                                          ; preds = %do.end
  %5 = load i32, i32* %run_mode, align 4
  switch i32 %5, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %if.then
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.then
  %6 = load i32, i32* %nparams.addr, align 4
  %cmp6 = icmp ne i32 %6, 3
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %sw.bb.5
  store i32 1, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.7, %sw.bb.5
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end, %sw.bb
  %7 = load i32, i32* %status, align 4
  %cmp8 = icmp eq i32 %7, 3
  br i1 %cmp8, label %if.then.9, label %if.end.16

if.then.9:                                        ; preds = %sw.epilog
  %8 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %8, i64 1
  %data11 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx10, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data11 to i8**
  %9 = load i8*, i8** %d_string, align 8
  %call12 = call i32 @ico_load_image(i8* %9, %struct._GError** %error)
  store i32 %call12, i32* %image_ID, align 4
  %10 = load i32, i32* %image_ID, align 4
  %cmp13 = icmp ne i32 %10, -1
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then.9
  %11 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %11, align 4
  store i32 13, i32* getelementptr inbounds ([4 x %struct._GimpParam], [4 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %12 = load i32, i32* %image_ID, align 4
  store i32 %12, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([4 x %struct._GimpParam], [4 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i32*), align 4
  br label %if.end.15

if.else:                                          ; preds = %if.then.9
  store i32 0, i32* %status, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.14
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %sw.epilog
  br label %if.end.70

if.else.17:                                       ; preds = %do.end
  %13 = load i8*, i8** %name.addr, align 8
  %call18 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0)) #8
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then.20, label %if.else.40

if.then.20:                                       ; preds = %if.else.17
  %14 = load i32, i32* %nparams.addr, align 4
  %cmp21 = icmp slt i32 %14, 2
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %if.then.20
  store i32 1, i32* %status, align 4
  br label %if.end.39

if.else.23:                                       ; preds = %if.then.20
  %15 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %15, i64 0
  %data25 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx24, i32 0, i32 1
  %d_string26 = bitcast %union._GimpParamData* %data25 to i8**
  %16 = load i8*, i8** %d_string26, align 8
  store i8* %16, i8** %filename, align 8
  %17 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx27 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %17, i64 1
  %data28 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx27, i32 0, i32 1
  %d_int3229 = bitcast %union._GimpParamData* %data28 to i32*
  %18 = load i32, i32* %d_int3229, align 4
  store i32 %18, i32* %width, align 4
  %19 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx30 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %19, i64 1
  %data31 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx30, i32 0, i32 1
  %d_int3232 = bitcast %union._GimpParamData* %data31 to i32*
  %20 = load i32, i32* %d_int3232, align 4
  store i32 %20, i32* %height, align 4
  %21 = load i8*, i8** %filename, align 8
  %call34 = call i32 @ico_load_thumbnail_image(i8* %21, i32* %width, i32* %height, %struct._GError** %error)
  store i32 %call34, i32* %image_ID33, align 4
  %22 = load i32, i32* %image_ID33, align 4
  %cmp35 = icmp ne i32 %22, -1
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.else.23
  %23 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 4, i32* %23, align 4
  store i32 13, i32* getelementptr inbounds ([4 x %struct._GimpParam], [4 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %24 = load i32, i32* %image_ID33, align 4
  store i32 %24, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([4 x %struct._GimpParam], [4 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i32*), align 4
  store i32 0, i32* getelementptr inbounds ([4 x %struct._GimpParam], [4 x %struct._GimpParam]* @run.values, i32 0, i64 2, i32 0), align 4
  %25 = load i32, i32* %width, align 4
  store i32 %25, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([4 x %struct._GimpParam], [4 x %struct._GimpParam]* @run.values, i32 0, i64 2, i32 1) to i32*), align 4
  store i32 0, i32* getelementptr inbounds ([4 x %struct._GimpParam], [4 x %struct._GimpParam]* @run.values, i32 0, i64 3, i32 0), align 4
  %26 = load i32, i32* %height, align 4
  store i32 %26, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([4 x %struct._GimpParam], [4 x %struct._GimpParam]* @run.values, i32 0, i64 3, i32 1) to i32*), align 4
  br label %if.end.38

if.else.37:                                       ; preds = %if.else.23
  store i32 0, i32* %status, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.37, %if.then.36
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.22
  br label %if.end.69

if.else.40:                                       ; preds = %if.else.17
  %27 = load i8*, i8** %name.addr, align 8
  %call41 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0)) #8
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %if.then.43, label %if.else.67

if.then.43:                                       ; preds = %if.else.40
  %28 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx45 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %28, i64 1
  %data46 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx45, i32 0, i32 1
  %d_int3247 = bitcast %union._GimpParamData* %data46 to i32*
  %29 = load i32, i32* %d_int3247, align 4
  store i32 %29, i32* %image_ID44, align 4
  %30 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx48 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %30, i64 3
  %data49 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx48, i32 0, i32 1
  %d_string50 = bitcast %union._GimpParamData* %data49 to i8**
  %31 = load i8*, i8** %d_string50, align 8
  store i8* %31, i8** %file_name, align 8
  %32 = load i32, i32* %run_mode, align 4
  switch i32 %32, label %sw.default.57 [
    i32 0, label %sw.bb.51
    i32 1, label %sw.bb.52
    i32 2, label %sw.bb.56
  ]

sw.bb.51:                                         ; preds = %if.then.43
  br label %sw.epilog.58

sw.bb.52:                                         ; preds = %if.then.43
  %33 = load i32, i32* %nparams.addr, align 4
  %cmp53 = icmp slt i32 %33, 5
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %sw.bb.52
  store i32 1, i32* %status, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %sw.bb.52
  br label %sw.epilog.58

sw.bb.56:                                         ; preds = %if.then.43
  br label %sw.epilog.58

sw.default.57:                                    ; preds = %if.then.43
  br label %sw.epilog.58

sw.epilog.58:                                     ; preds = %sw.default.57, %sw.bb.56, %if.end.55, %sw.bb.51
  %34 = load i32, i32* %status, align 4
  %cmp59 = icmp eq i32 %34, 3
  br i1 %cmp59, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %sw.epilog.58
  %35 = load i8*, i8** %file_name, align 8
  %36 = load i32, i32* %image_ID44, align 4
  %37 = load i32, i32* %run_mode, align 4
  %call61 = call i32 @ico_save_image(i8* %35, i32 %36, i32 %37, %struct._GError** %error)
  store i32 %call61, i32* %status, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %sw.epilog.58
  %38 = load i32, i32* %export, align 4
  %cmp63 = icmp eq i32 %38, 2
  br i1 %cmp63, label %if.then.64, label %if.end.66

if.then.64:                                       ; preds = %if.end.62
  %39 = load i32, i32* %image_ID44, align 4
  %call65 = call i32 @gimp_image_delete(i32 %39)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.64, %if.end.62
  br label %if.end.68

if.else.67:                                       ; preds = %if.else.40
  store i32 1, i32* %status, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.67, %if.end.66
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.end.39
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.end.16
  %40 = load i32, i32* %status, align 4
  %cmp71 = icmp ne i32 %40, 3
  br i1 %cmp71, label %land.lhs.true, label %if.end.73

land.lhs.true:                                    ; preds = %if.end.70
  %41 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool = icmp ne %struct._GError* %41, null
  br i1 %tobool, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %land.lhs.true
  %42 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %42, align 4
  store i32 4, i32* getelementptr inbounds ([4 x %struct._GimpParam], [4 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %43 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %43, i32 0, i32 2
  %44 = load i8*, i8** %message, align 8
  store i8* %44, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([4 x %struct._GimpParam], [4 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %land.lhs.true, %if.end.70
  %45 = load i32, i32* %status, align 4
  store i32 %45, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([4 x %struct._GimpParam], [4 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
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

; Function Attrs: nounwind uwtable
define i32 @ico_rowstride(i32 %width, i32 %bpp) #0 {
entry:
  %retval = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %bpp.addr = alloca i32, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %bpp, i32* %bpp.addr, align 4
  %0 = load i32, i32* %bpp.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 4, label %sw.bb.2
    i32 8, label %sw.bb.11
    i32 24, label %sw.bb.19
    i32 32, label %sw.bb.30
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* %width.addr, align 4
  %rem = srem i32 %1, 32
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %2 = load i32, i32* %width.addr, align 4
  %div = sdiv i32 %2, 8
  store i32 %div, i32* %retval
  br label %return

if.else:                                          ; preds = %sw.bb
  %3 = load i32, i32* %width.addr, align 4
  %div1 = sdiv i32 %3, 32
  %add = add nsw i32 %div1, 1
  %mul = mul nsw i32 4, %add
  store i32 %mul, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  %4 = load i32, i32* %width.addr, align 4
  %rem3 = srem i32 %4, 8
  %cmp4 = icmp eq i32 %rem3, 0
  br i1 %cmp4, label %if.then.5, label %if.else.7

if.then.5:                                        ; preds = %sw.bb.2
  %5 = load i32, i32* %width.addr, align 4
  %div6 = sdiv i32 %5, 2
  store i32 %div6, i32* %retval
  br label %return

if.else.7:                                        ; preds = %sw.bb.2
  %6 = load i32, i32* %width.addr, align 4
  %div8 = sdiv i32 %6, 8
  %add9 = add nsw i32 %div8, 1
  %mul10 = mul nsw i32 4, %add9
  store i32 %mul10, i32* %retval
  br label %return

sw.bb.11:                                         ; preds = %entry
  %7 = load i32, i32* %width.addr, align 4
  %rem12 = srem i32 %7, 4
  %cmp13 = icmp eq i32 %rem12, 0
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %sw.bb.11
  %8 = load i32, i32* %width.addr, align 4
  store i32 %8, i32* %retval
  br label %return

if.else.15:                                       ; preds = %sw.bb.11
  %9 = load i32, i32* %width.addr, align 4
  %div16 = sdiv i32 %9, 4
  %add17 = add nsw i32 %div16, 1
  %mul18 = mul nsw i32 4, %add17
  store i32 %mul18, i32* %retval
  br label %return

sw.bb.19:                                         ; preds = %entry
  %10 = load i32, i32* %width.addr, align 4
  %mul20 = mul nsw i32 %10, 3
  %rem21 = srem i32 %mul20, 4
  %cmp22 = icmp eq i32 %rem21, 0
  br i1 %cmp22, label %if.then.23, label %if.else.25

if.then.23:                                       ; preds = %sw.bb.19
  %11 = load i32, i32* %width.addr, align 4
  %mul24 = mul nsw i32 %11, 3
  store i32 %mul24, i32* %retval
  br label %return

if.else.25:                                       ; preds = %sw.bb.19
  %12 = load i32, i32* %width.addr, align 4
  %mul26 = mul nsw i32 %12, 3
  %div27 = sdiv i32 %mul26, 4
  %add28 = add nsw i32 %div27, 1
  %mul29 = mul nsw i32 4, %add28
  store i32 %mul29, i32* %retval
  br label %return

sw.bb.30:                                         ; preds = %entry
  %13 = load i32, i32* %width.addr, align 4
  %mul31 = mul nsw i32 %13, 4
  store i32 %mul31, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  %14 = load i32, i32* %bpp.addr, align 4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i32 %14)
  br label %do.body

do.body:                                          ; preds = %sw.default
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 322, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.ico_rowstride, i32 0, i32 0), i8* null) #9
  unreachable

do.end:                                           ; No predecessors!
  %15 = load i32, i32* %width.addr, align 4
  %16 = load i32, i32* %bpp.addr, align 4
  %div32 = sdiv i32 %16, 8
  %mul33 = mul nsw i32 %15, %div32
  store i32 %mul33, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %sw.bb.30, %if.else.25, %if.then.23, %if.else.15, %if.then.14, %if.else.7, %if.then.5, %if.else, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

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

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i8* @ico_alloc_map(i32 %width, i32 %height, i32 %bpp, i32* %length) #0 {
entry:
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %bpp.addr = alloca i32, align 4
  %length.addr = alloca i32*, align 8
  %len = alloca i32, align 4
  %map = alloca i8*, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %bpp, i32* %bpp.addr, align 4
  store i32* %length, i32** %length.addr, align 8
  store i32 0, i32* %len, align 4
  store i8* null, i8** %map, align 8
  %0 = load i32, i32* %width.addr, align 4
  %1 = load i32, i32* %bpp.addr, align 4
  %call = call i32 @ico_rowstride(i32 %0, i32 %1)
  %2 = load i32, i32* %height.addr, align 4
  %mul = mul nsw i32 %call, %2
  store i32 %mul, i32* %len, align 4
  %3 = load i32, i32* %len, align 4
  %4 = load i32*, i32** %length.addr, align 8
  store i32 %3, i32* %4, align 4
  %5 = load i32, i32* %len, align 4
  %conv = sext i32 %5 to i64
  %call1 = call noalias i8* @g_malloc0_n(i64 %conv, i64 1)
  store i8* %call1, i8** %map, align 8
  %6 = load i8*, i8** %map, align 8
  ret i8* %6
}

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare void @gimp_install_procedure(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct._GimpParamDef*, %struct._GimpParamDef*) #1

declare i32 @gimp_register_file_handler_mime(i8*, i8*) #1

declare i32 @gimp_register_magic_load_handler(i8*, i8*, i8*, i8*) #1

declare i32 @gimp_register_thumbnail_loader(i8*, i8*) #1

declare i32 @gimp_register_save_handler(i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i8* @gimp_locale_directory() #4

; Function Attrs: nounwind
declare i8* @bind_textdomain_codeset(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @textdomain(i8*) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare i32 @ico_load_image(i8*, %struct._GError**) #1

declare i32 @ico_load_thumbnail_image(i8*, i32*, i32*, %struct._GError**) #1

declare i32 @ico_save_image(i8*, i32, i32, %struct._GError**) #1

declare i32 @gimp_image_delete(i32) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
