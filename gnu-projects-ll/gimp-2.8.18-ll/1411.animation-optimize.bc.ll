; ModuleID = './plug-ins/common/animation-optimize.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPlugInInfo = type { void ()*, void ()*, void ()*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }

@PLUG_IN_INFO = constant %struct._GimpPlugInInfo { void ()* null, void ()* null, void ()* @query, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @run }, align 8
@query.args = internal constant [3 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0) }, %struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0) }, %struct._GimpParamDef { i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Input image\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Input drawable (unused)\00", align 1
@query.return_args = internal constant [1 x %struct._GimpParamDef] [%struct._GimpParamDef { i32 13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0) }], align 16
@.str.6 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Resulting image\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"plug-in-animationoptimize\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"Modify image to reduce size when saved as GIF animation\00", align 1
@.str.10 = private unnamed_addr constant [342 x i8] c"This procedure applies various optimizations to a GIMP layer-based animation in an attempt to reduce the final file size.  If a frame of the animation can use the 'combine' mode, this procedure attempts to maximize the number of ajdacent pixels having the same color, which improves the compression for some image formats such as GIF or MNG.\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Adam D. Moss <adam@gimp.org>\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"1997-2003\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"Optimize (for _GIF)\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"RGB*, INDEXED*, GRAY*\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"plug-in-animationoptimize-diff\00", align 1
@.str.16 = private unnamed_addr constant [52 x i8] c"Reduce file size where combining layers is possible\00", align 1
@.str.17 = private unnamed_addr constant [239 x i8] c"This procedure applies various optimizations to a GIMP layer-based animation in an attempt to reduce the final file size.  If a frame of the animation can use the 'combine' mode, this procedure uses a simple difference between the frames.\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"1997-2001\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"_Optimize (Difference)\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"plug-in-animationunoptimize\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"Remove optimization to make editing easier\00", align 1
@.str.22 = private unnamed_addr constant [142 x i8] c"This procedure 'simplifies' a GIMP layer-based animation that has been optimized for animation. This makes editing the animation much easier.\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"_Unoptimize\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"<Image>/Filters/Animation\00", align 1
@run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str.25 = private unnamed_addr constant [20 x i8] c"gimp20-std-plug-ins\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@opmode = internal global i32 0, align 4
@.str.27 = private unnamed_addr constant [32 x i8] c"plug-in-animation-find-backdrop\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"plug-in-animation-remove-backdrop\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"GAH!!!\00", align 1
@image_id = internal global i32 0, align 4
@new_image_id = internal global i32 0, align 4
@do_optimizations.rawframe = internal global i8* null, align 8
@.str.30 = private unnamed_addr constant [23 x i8] c"Unoptimizing animation\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"Removing animation background\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"Finding animation background\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"Optimizing animation\00", align 1
@width = internal global i32 0, align 4
@height = internal global i32 0, align 4
@total_frames = internal global i32 0, align 4
@layers = internal global i32* null, align 8
@imagetype = internal global i32 0, align 4
@pixelstep = internal global i8 0, align 1
@drawabletype_alpha = internal global i32 0, align 4
@ncolours = internal global i32 0, align 4
@palette = internal global i8* null, align 8
@drawable = internal global %struct._GimpDrawable* null, align 8
@.str.34 = private unnamed_addr constant [6 x i8] c"Eeep!\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"yayyyy!\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"Backgroundx\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"%s(%dms)%s\00", align 1
@.str.38 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"(combine)\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"(replace)\00", align 1
@compose_row.line_buf = internal global i8* null, align 8
@g_ascii_table = external constant i16*, align 8

; Function Attrs: nounwind uwtable
define internal void @query() #0 {
entry:
  call void @gimp_install_procedure(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([342 x i8], [342 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i32 1, i32 3, i32 1, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @query.return_args, i32 0, i32 0))
  call void @gimp_install_procedure(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([239 x i8], [239 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i32 1, i32 3, i32 1, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @query.return_args, i32 0, i32 0))
  call void @gimp_install_procedure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i32 1, i32 3, i32 1, %struct._GimpParamDef* getelementptr inbounds ([3 x %struct._GimpParamDef], [3 x %struct._GimpParamDef]* @query.args, i32 0, i32 0), %struct._GimpParamDef* getelementptr inbounds ([1 x %struct._GimpParamDef], [1 x %struct._GimpParamDef]* @query.return_args, i32 0, i32 0))
  %call = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i32 0, i32 0))
  %call1 = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i32 0, i32 0))
  %call2 = call i32 @gimp_plugin_menu_register(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i32 0, i32 0))
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
  %run_mode = alloca i32, align 4
  %status = alloca i32, align 4
  %diff_only = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %n_params, i32* %n_params.addr, align 4
  store %struct._GimpParam* %param, %struct._GimpParam** %param.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  store i32 0, i32* %diff_only, align 4
  %0 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %0, align 4
  %1 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i32 0), %struct._GimpParam** %1, align 8
  %2 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %3 = load i32, i32* %d_int32, align 4
  store i32 %3, i32* %run_mode, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i8* @gimp_locale_directory() #7
  %call1 = call i8* @bindtextdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0), i8* %call) #5
  %call2 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0)) #5
  %call3 = call i8* @textdomain(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0)) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %4 = load i32, i32* %run_mode, align 4
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.end
  %5 = load i32, i32* %n_params.addr, align 4
  %cmp4 = icmp ne i32 %5, 3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end
  %6 = load i8*, i8** %name.addr, align 8
  %call5 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0)) #8
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  store i32 0, i32* @opmode, align 4
  br label %if.end.28

if.else:                                          ; preds = %if.end
  %7 = load i8*, i8** %name.addr, align 8
  %call8 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i32 0, i32 0)) #8
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.else
  store i32 0, i32* @opmode, align 4
  store i32 1, i32* %diff_only, align 4
  br label %if.end.27

if.else.11:                                       ; preds = %if.else
  %8 = load i8*, i8** %name.addr, align 8
  %call12 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i32 0, i32 0)) #8
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.else.11
  store i32 1, i32* @opmode, align 4
  br label %if.end.26

if.else.15:                                       ; preds = %if.else.11
  %9 = load i8*, i8** %name.addr, align 8
  %call16 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27, i32 0, i32 0)) #8
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.else.15
  store i32 3, i32* @opmode, align 4
  br label %if.end.25

if.else.19:                                       ; preds = %if.else.15
  %10 = load i8*, i8** %name.addr, align 8
  %call20 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.28, i32 0, i32 0)) #8
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %if.else.19
  store i32 2, i32* @opmode, align 4
  br label %if.end.24

if.else.23:                                       ; preds = %if.else.19
  call void (i8*, ...) @g_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.23, %if.then.22
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.18
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.14
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.10
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.7
  %11 = load i32, i32* %status, align 4
  %cmp29 = icmp eq i32 %11, 3
  br i1 %cmp29, label %if.then.30, label %if.end.38

if.then.30:                                       ; preds = %if.end.28
  %12 = load %struct._GimpParam*, %struct._GimpParam** %param.addr, align 8
  %arrayidx31 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %12, i64 1
  %data32 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx31, i32 0, i32 1
  %d_image = bitcast %union._GimpParamData* %data32 to i32*
  %13 = load i32, i32* %d_image, align 4
  store i32 %13, i32* @image_id, align 4
  %14 = load i32, i32* %run_mode, align 4
  %15 = load i32, i32* %diff_only, align 4
  %call33 = call i32 @do_optimizations(i32 %14, i32 %15)
  store i32 %call33, i32* @new_image_id, align 4
  %16 = load i32, i32* %run_mode, align 4
  %cmp34 = icmp ne i32 %16, 1
  br i1 %cmp34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.then.30
  %call36 = call i32 @gimp_displays_flush()
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.then.30
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.28
  store i32 21, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 0), align 4
  %17 = load i32, i32* %status, align 4
  store i32 %17, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 0, i32 1) to i32*), align 4
  store i32 13, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 0), align 4
  %18 = load i32, i32* @new_image_id, align 4
  store i32 %18, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @run.values, i32 0, i64 1, i32 1) to i32*), align 4
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

; Function Attrs: nounwind uwtable
define internal void @g_error(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* null, i32 4, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  br label %for.cond

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @do_optimizations(i32 %run_mode, i32 %diff_only) #0 {
entry:
  %run_mode.addr = alloca i32, align 4
  %diff_only.addr = alloca i32, align 4
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %srcptr = alloca i8*, align 8
  %destptr = alloca i8*, align 8
  %row = alloca i32, align 4
  %this_frame_num = alloca i32, align 4
  %frame_sizebytes = alloca i32, align 4
  %new_layer_id = alloca i32, align 4
  %dispose = alloca i32, align 4
  %this_frame = alloca i8*, align 8
  %last_frame = alloca i8*, align 8
  %opti_frame = alloca i8*, align 8
  %back_frame = alloca i8*, align 8
  %this_delay = alloca i32, align 4
  %cumulated_delay = alloca i32, align 4
  %last_true_frame = alloca i32, align 4
  %buflen = alloca i32, align 4
  %oldlayer_name = alloca i8*, align 8
  %newlayer_name = alloca i8*, align 8
  %can_combine = alloca i32, align 4
  %bbox_top = alloca i32, align 4
  %bbox_bottom = alloca i32, align 4
  %bbox_left = alloca i32, align 4
  %bbox_right = alloca i32, align 4
  %rbox_top = alloca i32, align 4
  %rbox_bottom = alloca i32, align 4
  %rbox_left = alloca i32, align 4
  %rbox_right = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %these_rows = alloca i8**, align 8
  %red = alloca i8**, align 8
  %green = alloca i8**, align 8
  %blue = alloca i8**, align 8
  %count = alloca i32**, align 8
  %num_colours = alloca i32*, align 8
  %best_count = alloca i32, align 4
  %best_r = alloca i8, align 1
  %best_g = alloca i8, align 1
  %best_b = alloca i8, align 1
  %xit = alloca i32, align 4
  %yit = alloca i32, align 4
  %byteit = alloca i32, align 4
  %xit482 = alloca i32, align 4
  %yit483 = alloca i32, align 4
  %byteit484 = alloca i32, align 4
  %keep_pix = alloca i32, align 4
  %opaq_pix = alloca i32, align 4
  store i32 %run_mode, i32* %run_mode.addr, align 4
  store i32 %diff_only, i32* %diff_only.addr, align 4
  store i8* null, i8** %this_frame, align 8
  store i8* null, i8** %last_frame, align 8
  store i8* null, i8** %opti_frame, align 8
  store i8* null, i8** %back_frame, align 8
  store i32 0, i32* %cumulated_delay, align 4
  store i32 -1, i32* %last_true_frame, align 4
  %0 = load i32, i32* @opmode, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.5
    i32 0, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %entry
  %call = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i32 0, i32 0)) #5
  %call1 = call i32 @gimp_progress_init(i8* %call)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.31, i32 0, i32 0)) #5
  %call4 = call i32 @gimp_progress_init(i8* %call3)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.32, i32 0, i32 0)) #5
  %call7 = call i32 @gimp_progress_init(i8* %call6)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb.8
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i32 0, i32 0)) #5
  %call10 = call i32 @gimp_progress_init(i8* %call9)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.5, %sw.bb.2, %sw.bb
  %1 = load i32, i32* @image_id, align 4
  %call11 = call i32 @gimp_image_width(i32 %1)
  store i32 %call11, i32* @width, align 4
  %2 = load i32, i32* @image_id, align 4
  %call12 = call i32 @gimp_image_height(i32 %2)
  store i32 %call12, i32* @height, align 4
  %3 = load i32, i32* @image_id, align 4
  %call13 = call i32* @gimp_image_get_layers(i32 %3, i32* @total_frames)
  store i32* %call13, i32** @layers, align 8
  %4 = load i32, i32* @image_id, align 4
  %call14 = call i32 @gimp_image_base_type(i32 %4)
  store i32 %call14, i32* @imagetype, align 4
  %5 = load i32, i32* @imagetype, align 4
  %cmp = icmp eq i32 %5, 0
  %cond = select i1 %cmp, i32 4, i32 2
  %conv = trunc i32 %cond to i8
  store i8 %conv, i8* @pixelstep, align 1
  %6 = load i32, i32* @imagetype, align 4
  %cmp15 = icmp eq i32 %6, 0
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog
  br label %cond.end

cond.false:                                       ; preds = %sw.epilog
  %7 = load i32, i32* @imagetype, align 4
  %cmp17 = icmp eq i32 %7, 2
  %cond19 = select i1 %cmp17, i32 5, i32 3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond20 = phi i32 [ 1, %cond.true ], [ %cond19, %cond.false ]
  store i32 %cond20, i32* @drawabletype_alpha, align 4
  %8 = load i32, i32* @width, align 4
  %9 = load i32, i32* @height, align 4
  %mul = mul i32 %8, %9
  %10 = load i8, i8* @pixelstep, align 1
  %conv21 = zext i8 %10 to i32
  %mul22 = mul i32 %mul, %conv21
  store i32 %mul22, i32* %frame_sizebytes, align 4
  %11 = load i32, i32* %frame_sizebytes, align 4
  %conv23 = zext i32 %11 to i64
  %call24 = call noalias i8* @g_malloc(i64 %conv23)
  store i8* %call24, i8** %this_frame, align 8
  %12 = load i32, i32* %frame_sizebytes, align 4
  %conv25 = zext i32 %12 to i64
  %call26 = call noalias i8* @g_malloc(i64 %conv25)
  store i8* %call26, i8** %last_frame, align 8
  %13 = load i32, i32* %frame_sizebytes, align 4
  %conv27 = zext i32 %13 to i64
  %call28 = call noalias i8* @g_malloc(i64 %conv27)
  store i8* %call28, i8** %opti_frame, align 8
  %14 = load i32, i32* @opmode, align 4
  %cmp29 = icmp eq i32 %14, 3
  br i1 %cmp29, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %15 = load i32, i32* @opmode, align 4
  %cmp31 = icmp eq i32 %15, 2
  br i1 %cmp31, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  %16 = load i32, i32* %frame_sizebytes, align 4
  %conv33 = zext i32 %16 to i64
  %call34 = call noalias i8* @g_malloc(i64 %conv33)
  store i8* %call34, i8** %back_frame, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %17 = load i8*, i8** %this_frame, align 8
  %18 = load i32, i32* @width, align 4
  %19 = load i32, i32* @height, align 4
  %mul35 = mul i32 %18, %19
  %20 = load i8, i8* @pixelstep, align 1
  call void @total_alpha(i8* %17, i32 %mul35, i8 zeroext %20)
  %21 = load i8*, i8** %last_frame, align 8
  %22 = load i32, i32* @width, align 4
  %23 = load i32, i32* @height, align 4
  %mul36 = mul i32 %22, %23
  %24 = load i8, i8* @pixelstep, align 1
  call void @total_alpha(i8* %21, i32 %mul36, i8 zeroext %24)
  %25 = load i32, i32* @width, align 4
  %26 = load i32, i32* @height, align 4
  %27 = load i32, i32* @imagetype, align 4
  %call37 = call i32 @gimp_image_new(i32 %25, i32 %26, i32 %27)
  store i32 %call37, i32* @new_image_id, align 4
  %28 = load i32, i32* @new_image_id, align 4
  %call38 = call i32 @gimp_image_undo_disable(i32 %28)
  %29 = load i32, i32* @imagetype, align 4
  %cmp39 = icmp eq i32 %29, 2
  br i1 %cmp39, label %if.then.41, label %if.end.44

if.then.41:                                       ; preds = %if.end
  %30 = load i32, i32* @image_id, align 4
  %call42 = call i8* @gimp_image_get_colormap(i32 %30, i32* @ncolours)
  store i8* %call42, i8** @palette, align 8
  %31 = load i32, i32* @new_image_id, align 4
  %32 = load i8*, i8** @palette, align 8
  %33 = load i32, i32* @ncolours, align 4
  %call43 = call i32 @gimp_image_set_colormap(i32 %31, i8* %32, i32 %33)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.41, %if.end
  %34 = load i32, i32* @opmode, align 4
  %cmp45 = icmp eq i32 %34, 3
  br i1 %cmp45, label %if.then.50, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %if.end.44
  %35 = load i32, i32* @opmode, align 4
  %cmp48 = icmp eq i32 %35, 2
  br i1 %cmp48, label %if.then.50, label %if.end.378

if.then.50:                                       ; preds = %lor.lhs.false.47, %if.end.44
  %36 = load i32, i32* @total_frames, align 4
  %conv51 = sext i32 %36 to i64
  %call52 = call noalias i8* @g_malloc_n(i64 %conv51, i64 8)
  %37 = bitcast i8* %call52 to i8**
  store i8** %37, i8*** %these_rows, align 8
  %38 = load i32, i32* @total_frames, align 4
  %conv53 = sext i32 %38 to i64
  %call54 = call noalias i8* @g_malloc_n(i64 %conv53, i64 8)
  %39 = bitcast i8* %call54 to i8**
  store i8** %39, i8*** %red, align 8
  %40 = load i32, i32* @total_frames, align 4
  %conv55 = sext i32 %40 to i64
  %call56 = call noalias i8* @g_malloc_n(i64 %conv55, i64 8)
  %41 = bitcast i8* %call56 to i8**
  store i8** %41, i8*** %green, align 8
  %42 = load i32, i32* @total_frames, align 4
  %conv57 = sext i32 %42 to i64
  %call58 = call noalias i8* @g_malloc_n(i64 %conv57, i64 8)
  %43 = bitcast i8* %call58 to i8**
  store i8** %43, i8*** %blue, align 8
  %44 = load i32, i32* @total_frames, align 4
  %conv59 = sext i32 %44 to i64
  %call60 = call noalias i8* @g_malloc_n(i64 %conv59, i64 8)
  %45 = bitcast i8* %call60 to i32**
  store i32** %45, i32*** %count, align 8
  %46 = load i32, i32* @width, align 4
  %conv61 = zext i32 %46 to i64
  %call62 = call noalias i8* @g_malloc_n(i64 %conv61, i64 4)
  %47 = bitcast i8* %call62 to i32*
  store i32* %47, i32** %num_colours, align 8
  store i32 0, i32* %this_frame_num, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.50
  %48 = load i32, i32* %this_frame_num, align 4
  %49 = load i32, i32* @total_frames, align 4
  %cmp63 = icmp slt i32 %48, %49
  br i1 %cmp63, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %50 = load i32, i32* @width, align 4
  %51 = load i8, i8* @pixelstep, align 1
  %conv65 = zext i8 %51 to i32
  %mul66 = mul i32 %50, %conv65
  %conv67 = zext i32 %mul66 to i64
  %call68 = call noalias i8* @g_malloc(i64 %conv67)
  %52 = load i32, i32* %this_frame_num, align 4
  %idxprom = sext i32 %52 to i64
  %53 = load i8**, i8*** %these_rows, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %53, i64 %idxprom
  store i8* %call68, i8** %arrayidx, align 8
  %54 = load i32, i32* @width, align 4
  %conv69 = zext i32 %54 to i64
  %call70 = call noalias i8* @g_malloc_n(i64 %conv69, i64 1)
  %55 = load i32, i32* %this_frame_num, align 4
  %idxprom71 = sext i32 %55 to i64
  %56 = load i8**, i8*** %red, align 8
  %arrayidx72 = getelementptr inbounds i8*, i8** %56, i64 %idxprom71
  store i8* %call70, i8** %arrayidx72, align 8
  %57 = load i32, i32* @width, align 4
  %conv73 = zext i32 %57 to i64
  %call74 = call noalias i8* @g_malloc_n(i64 %conv73, i64 1)
  %58 = load i32, i32* %this_frame_num, align 4
  %idxprom75 = sext i32 %58 to i64
  %59 = load i8**, i8*** %green, align 8
  %arrayidx76 = getelementptr inbounds i8*, i8** %59, i64 %idxprom75
  store i8* %call74, i8** %arrayidx76, align 8
  %60 = load i32, i32* @width, align 4
  %conv77 = zext i32 %60 to i64
  %call78 = call noalias i8* @g_malloc_n(i64 %conv77, i64 1)
  %61 = load i32, i32* %this_frame_num, align 4
  %idxprom79 = sext i32 %61 to i64
  %62 = load i8**, i8*** %blue, align 8
  %arrayidx80 = getelementptr inbounds i8*, i8** %62, i64 %idxprom79
  store i8* %call78, i8** %arrayidx80, align 8
  %63 = load i32, i32* @width, align 4
  %conv81 = zext i32 %63 to i64
  %call82 = call noalias i8* @g_malloc0_n(i64 %conv81, i64 4)
  %64 = bitcast i8* %call82 to i32*
  %65 = load i32, i32* %this_frame_num, align 4
  %idxprom83 = sext i32 %65 to i64
  %66 = load i32**, i32*** %count, align 8
  %arrayidx84 = getelementptr inbounds i32*, i32** %66, i64 %idxprom83
  store i32* %64, i32** %arrayidx84, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %67 = load i32, i32* %this_frame_num, align 4
  %inc = add nsw i32 %67, 1
  store i32 %inc, i32* %this_frame_num, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %row, align 4
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.358, %for.end
  %68 = load i32, i32* %row, align 4
  %69 = load i32, i32* @height, align 4
  %cmp86 = icmp ult i32 %68, %69
  br i1 %cmp86, label %for.body.88, label %for.end.360

for.body.88:                                      ; preds = %for.cond.85
  %70 = load i32*, i32** %num_colours, align 8
  %71 = bitcast i32* %70 to i8*
  %72 = load i32, i32* @width, align 4
  %conv89 = zext i32 %72 to i64
  %mul90 = mul i64 %conv89, 4
  call void @llvm.memset.p0i8.i64(i8* %71, i8 0, i64 %mul90, i32 4, i1 false)
  store i32 0, i32* %this_frame_num, align 4
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.101, %for.body.88
  %73 = load i32, i32* %this_frame_num, align 4
  %74 = load i32, i32* @total_frames, align 4
  %cmp92 = icmp slt i32 %73, %74
  br i1 %cmp92, label %for.body.94, label %for.end.103

for.body.94:                                      ; preds = %for.cond.91
  %75 = load i32, i32* @total_frames, align 4
  %76 = load i32, i32* %this_frame_num, align 4
  %add = add nsw i32 %76, 1
  %sub = sub nsw i32 %75, %add
  %idxprom95 = sext i32 %sub to i64
  %77 = load i32*, i32** @layers, align 8
  %arrayidx96 = getelementptr inbounds i32, i32* %77, i64 %idxprom95
  %78 = load i32, i32* %arrayidx96, align 4
  %call97 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %78)
  store %struct._GimpDrawable* %call97, %struct._GimpDrawable** @drawable, align 8
  %79 = load i32, i32* %this_frame_num, align 4
  %call98 = call i32 @get_frame_disposal(i32 %79)
  store i32 %call98, i32* %dispose, align 4
  %80 = load i32, i32* %this_frame_num, align 4
  %81 = load i32, i32* %dispose, align 4
  %82 = load i32, i32* %row, align 4
  %83 = load i32, i32* %this_frame_num, align 4
  %idxprom99 = sext i32 %83 to i64
  %84 = load i8**, i8*** %these_rows, align 8
  %arrayidx100 = getelementptr inbounds i8*, i8** %84, i64 %idxprom99
  %85 = load i8*, i8** %arrayidx100, align 8
  %86 = load i32, i32* @width, align 4
  %87 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  call void @compose_row(i32 %80, i32 %81, i32 %82, i8* %85, i32 %86, %struct._GimpDrawable* %87, i32 0)
  %88 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %88)
  br label %for.inc.101

for.inc.101:                                      ; preds = %for.body.94
  %89 = load i32, i32* %this_frame_num, align 4
  %inc102 = add nsw i32 %89, 1
  store i32 %inc102, i32* %this_frame_num, align 4
  br label %for.cond.91

for.end.103:                                      ; preds = %for.cond.91
  store i32 0, i32* %this_frame_num, align 4
  br label %for.cond.104

for.cond.104:                                     ; preds = %for.inc.264, %for.end.103
  %90 = load i32, i32* %this_frame_num, align 4
  %91 = load i32, i32* @total_frames, align 4
  %cmp105 = icmp slt i32 %90, %91
  br i1 %cmp105, label %for.body.107, label %for.end.266

for.body.107:                                     ; preds = %for.cond.104
  store i32 0, i32* %i, align 4
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.261, %for.body.107
  %92 = load i32, i32* %i, align 4
  %93 = load i32, i32* @width, align 4
  %cmp109 = icmp ult i32 %92, %93
  br i1 %cmp109, label %for.body.111, label %for.end.263

for.body.111:                                     ; preds = %for.cond.108
  %94 = load i32, i32* %i, align 4
  %95 = load i8, i8* @pixelstep, align 1
  %conv112 = zext i8 %95 to i32
  %mul113 = mul nsw i32 %94, %conv112
  %96 = load i8, i8* @pixelstep, align 1
  %conv114 = zext i8 %96 to i32
  %add115 = add nsw i32 %mul113, %conv114
  %sub116 = sub nsw i32 %add115, 1
  %idxprom117 = sext i32 %sub116 to i64
  %97 = load i32, i32* %this_frame_num, align 4
  %idxprom118 = sext i32 %97 to i64
  %98 = load i8**, i8*** %these_rows, align 8
  %arrayidx119 = getelementptr inbounds i8*, i8** %98, i64 %idxprom118
  %99 = load i8*, i8** %arrayidx119, align 8
  %arrayidx120 = getelementptr inbounds i8, i8* %99, i64 %idxprom117
  %100 = load i8, i8* %arrayidx120, align 1
  %conv121 = zext i8 %100 to i32
  %cmp122 = icmp sge i32 %conv121, 128
  br i1 %cmp122, label %if.then.124, label %if.end.260

if.then.124:                                      ; preds = %for.body.111
  store i32 0, i32* %j, align 4
  br label %for.cond.125

for.cond.125:                                     ; preds = %for.inc.207, %if.then.124
  %101 = load i32, i32* %j, align 4
  %102 = load i32, i32* %i, align 4
  %idxprom126 = sext i32 %102 to i64
  %103 = load i32*, i32** %num_colours, align 8
  %arrayidx127 = getelementptr inbounds i32, i32* %103, i64 %idxprom126
  %104 = load i32, i32* %arrayidx127, align 4
  %cmp128 = icmp ult i32 %101, %104
  br i1 %cmp128, label %for.body.130, label %for.end.209

for.body.130:                                     ; preds = %for.cond.125
  %105 = load i8, i8* @pixelstep, align 1
  %conv131 = zext i8 %105 to i32
  switch i32 %conv131, label %sw.default.205 [
    i32 4, label %sw.bb.132
    i32 2, label %sw.bb.183
  ]

sw.bb.132:                                        ; preds = %for.body.130
  %106 = load i32, i32* %i, align 4
  %mul133 = mul nsw i32 %106, 4
  %add134 = add nsw i32 %mul133, 0
  %idxprom135 = sext i32 %add134 to i64
  %107 = load i32, i32* %this_frame_num, align 4
  %idxprom136 = sext i32 %107 to i64
  %108 = load i8**, i8*** %these_rows, align 8
  %arrayidx137 = getelementptr inbounds i8*, i8** %108, i64 %idxprom136
  %109 = load i8*, i8** %arrayidx137, align 8
  %arrayidx138 = getelementptr inbounds i8, i8* %109, i64 %idxprom135
  %110 = load i8, i8* %arrayidx138, align 1
  %conv139 = zext i8 %110 to i32
  %111 = load i32, i32* %i, align 4
  %idxprom140 = sext i32 %111 to i64
  %112 = load i32, i32* %j, align 4
  %idxprom141 = sext i32 %112 to i64
  %113 = load i8**, i8*** %red, align 8
  %arrayidx142 = getelementptr inbounds i8*, i8** %113, i64 %idxprom141
  %114 = load i8*, i8** %arrayidx142, align 8
  %arrayidx143 = getelementptr inbounds i8, i8* %114, i64 %idxprom140
  %115 = load i8, i8* %arrayidx143, align 1
  %conv144 = zext i8 %115 to i32
  %cmp145 = icmp eq i32 %conv139, %conv144
  br i1 %cmp145, label %land.lhs.true, label %if.end.182

land.lhs.true:                                    ; preds = %sw.bb.132
  %116 = load i32, i32* %i, align 4
  %mul147 = mul nsw i32 %116, 4
  %add148 = add nsw i32 %mul147, 1
  %idxprom149 = sext i32 %add148 to i64
  %117 = load i32, i32* %this_frame_num, align 4
  %idxprom150 = sext i32 %117 to i64
  %118 = load i8**, i8*** %these_rows, align 8
  %arrayidx151 = getelementptr inbounds i8*, i8** %118, i64 %idxprom150
  %119 = load i8*, i8** %arrayidx151, align 8
  %arrayidx152 = getelementptr inbounds i8, i8* %119, i64 %idxprom149
  %120 = load i8, i8* %arrayidx152, align 1
  %conv153 = zext i8 %120 to i32
  %121 = load i32, i32* %i, align 4
  %idxprom154 = sext i32 %121 to i64
  %122 = load i32, i32* %j, align 4
  %idxprom155 = sext i32 %122 to i64
  %123 = load i8**, i8*** %green, align 8
  %arrayidx156 = getelementptr inbounds i8*, i8** %123, i64 %idxprom155
  %124 = load i8*, i8** %arrayidx156, align 8
  %arrayidx157 = getelementptr inbounds i8, i8* %124, i64 %idxprom154
  %125 = load i8, i8* %arrayidx157, align 1
  %conv158 = zext i8 %125 to i32
  %cmp159 = icmp eq i32 %conv153, %conv158
  br i1 %cmp159, label %land.lhs.true.161, label %if.end.182

land.lhs.true.161:                                ; preds = %land.lhs.true
  %126 = load i32, i32* %i, align 4
  %mul162 = mul nsw i32 %126, 4
  %add163 = add nsw i32 %mul162, 2
  %idxprom164 = sext i32 %add163 to i64
  %127 = load i32, i32* %this_frame_num, align 4
  %idxprom165 = sext i32 %127 to i64
  %128 = load i8**, i8*** %these_rows, align 8
  %arrayidx166 = getelementptr inbounds i8*, i8** %128, i64 %idxprom165
  %129 = load i8*, i8** %arrayidx166, align 8
  %arrayidx167 = getelementptr inbounds i8, i8* %129, i64 %idxprom164
  %130 = load i8, i8* %arrayidx167, align 1
  %conv168 = zext i8 %130 to i32
  %131 = load i32, i32* %i, align 4
  %idxprom169 = sext i32 %131 to i64
  %132 = load i32, i32* %j, align 4
  %idxprom170 = sext i32 %132 to i64
  %133 = load i8**, i8*** %blue, align 8
  %arrayidx171 = getelementptr inbounds i8*, i8** %133, i64 %idxprom170
  %134 = load i8*, i8** %arrayidx171, align 8
  %arrayidx172 = getelementptr inbounds i8, i8* %134, i64 %idxprom169
  %135 = load i8, i8* %arrayidx172, align 1
  %conv173 = zext i8 %135 to i32
  %cmp174 = icmp eq i32 %conv168, %conv173
  br i1 %cmp174, label %if.then.176, label %if.end.182

if.then.176:                                      ; preds = %land.lhs.true.161
  %136 = load i32, i32* %i, align 4
  %idxprom177 = sext i32 %136 to i64
  %137 = load i32, i32* %j, align 4
  %idxprom178 = sext i32 %137 to i64
  %138 = load i32**, i32*** %count, align 8
  %arrayidx179 = getelementptr inbounds i32*, i32** %138, i64 %idxprom178
  %139 = load i32*, i32** %arrayidx179, align 8
  %arrayidx180 = getelementptr inbounds i32, i32* %139, i64 %idxprom177
  %140 = load i32, i32* %arrayidx180, align 4
  %inc181 = add i32 %140, 1
  store i32 %inc181, i32* %arrayidx180, align 4
  br label %same

if.end.182:                                       ; preds = %land.lhs.true.161, %land.lhs.true, %sw.bb.132
  br label %sw.epilog.206

sw.bb.183:                                        ; preds = %for.body.130
  %141 = load i32, i32* %i, align 4
  %mul184 = mul nsw i32 %141, 2
  %add185 = add nsw i32 %mul184, 0
  %idxprom186 = sext i32 %add185 to i64
  %142 = load i32, i32* %this_frame_num, align 4
  %idxprom187 = sext i32 %142 to i64
  %143 = load i8**, i8*** %these_rows, align 8
  %arrayidx188 = getelementptr inbounds i8*, i8** %143, i64 %idxprom187
  %144 = load i8*, i8** %arrayidx188, align 8
  %arrayidx189 = getelementptr inbounds i8, i8* %144, i64 %idxprom186
  %145 = load i8, i8* %arrayidx189, align 1
  %conv190 = zext i8 %145 to i32
  %146 = load i32, i32* %i, align 4
  %idxprom191 = sext i32 %146 to i64
  %147 = load i32, i32* %j, align 4
  %idxprom192 = sext i32 %147 to i64
  %148 = load i8**, i8*** %red, align 8
  %arrayidx193 = getelementptr inbounds i8*, i8** %148, i64 %idxprom192
  %149 = load i8*, i8** %arrayidx193, align 8
  %arrayidx194 = getelementptr inbounds i8, i8* %149, i64 %idxprom191
  %150 = load i8, i8* %arrayidx194, align 1
  %conv195 = zext i8 %150 to i32
  %cmp196 = icmp eq i32 %conv190, %conv195
  br i1 %cmp196, label %if.then.198, label %if.end.204

if.then.198:                                      ; preds = %sw.bb.183
  %151 = load i32, i32* %i, align 4
  %idxprom199 = sext i32 %151 to i64
  %152 = load i32, i32* %j, align 4
  %idxprom200 = sext i32 %152 to i64
  %153 = load i32**, i32*** %count, align 8
  %arrayidx201 = getelementptr inbounds i32*, i32** %153, i64 %idxprom200
  %154 = load i32*, i32** %arrayidx201, align 8
  %arrayidx202 = getelementptr inbounds i32, i32* %154, i64 %idxprom199
  %155 = load i32, i32* %arrayidx202, align 4
  %inc203 = add i32 %155, 1
  store i32 %inc203, i32* %arrayidx202, align 4
  br label %same

if.end.204:                                       ; preds = %sw.bb.183
  br label %sw.epilog.206

sw.default.205:                                   ; preds = %for.body.130
  call void (i8*, ...) @g_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0))
  br label %sw.epilog.206

sw.epilog.206:                                    ; preds = %sw.default.205, %if.end.204, %if.end.182
  br label %for.inc.207

for.inc.207:                                      ; preds = %sw.epilog.206
  %156 = load i32, i32* %j, align 4
  %inc208 = add nsw i32 %156, 1
  store i32 %inc208, i32* %j, align 4
  br label %for.cond.125

for.end.209:                                      ; preds = %for.cond.125
  %157 = load i32, i32* %i, align 4
  %idxprom210 = sext i32 %157 to i64
  %158 = load i32, i32* %i, align 4
  %idxprom211 = sext i32 %158 to i64
  %159 = load i32*, i32** %num_colours, align 8
  %arrayidx212 = getelementptr inbounds i32, i32* %159, i64 %idxprom211
  %160 = load i32, i32* %arrayidx212, align 4
  %idxprom213 = zext i32 %160 to i64
  %161 = load i32**, i32*** %count, align 8
  %arrayidx214 = getelementptr inbounds i32*, i32** %161, i64 %idxprom213
  %162 = load i32*, i32** %arrayidx214, align 8
  %arrayidx215 = getelementptr inbounds i32, i32* %162, i64 %idxprom210
  store i32 1, i32* %arrayidx215, align 4
  %163 = load i32, i32* %i, align 4
  %164 = load i8, i8* @pixelstep, align 1
  %conv216 = zext i8 %164 to i32
  %mul217 = mul nsw i32 %163, %conv216
  %idxprom218 = sext i32 %mul217 to i64
  %165 = load i32, i32* %this_frame_num, align 4
  %idxprom219 = sext i32 %165 to i64
  %166 = load i8**, i8*** %these_rows, align 8
  %arrayidx220 = getelementptr inbounds i8*, i8** %166, i64 %idxprom219
  %167 = load i8*, i8** %arrayidx220, align 8
  %arrayidx221 = getelementptr inbounds i8, i8* %167, i64 %idxprom218
  %168 = load i8, i8* %arrayidx221, align 1
  %169 = load i32, i32* %i, align 4
  %idxprom222 = sext i32 %169 to i64
  %170 = load i32, i32* %i, align 4
  %idxprom223 = sext i32 %170 to i64
  %171 = load i32*, i32** %num_colours, align 8
  %arrayidx224 = getelementptr inbounds i32, i32* %171, i64 %idxprom223
  %172 = load i32, i32* %arrayidx224, align 4
  %idxprom225 = zext i32 %172 to i64
  %173 = load i8**, i8*** %red, align 8
  %arrayidx226 = getelementptr inbounds i8*, i8** %173, i64 %idxprom225
  %174 = load i8*, i8** %arrayidx226, align 8
  %arrayidx227 = getelementptr inbounds i8, i8* %174, i64 %idxprom222
  store i8 %168, i8* %arrayidx227, align 1
  %175 = load i8, i8* @pixelstep, align 1
  %conv228 = zext i8 %175 to i32
  %cmp229 = icmp eq i32 %conv228, 4
  br i1 %cmp229, label %if.then.231, label %if.end.256

if.then.231:                                      ; preds = %for.end.209
  %176 = load i32, i32* %i, align 4
  %mul232 = mul nsw i32 %176, 4
  %add233 = add nsw i32 %mul232, 1
  %idxprom234 = sext i32 %add233 to i64
  %177 = load i32, i32* %this_frame_num, align 4
  %idxprom235 = sext i32 %177 to i64
  %178 = load i8**, i8*** %these_rows, align 8
  %arrayidx236 = getelementptr inbounds i8*, i8** %178, i64 %idxprom235
  %179 = load i8*, i8** %arrayidx236, align 8
  %arrayidx237 = getelementptr inbounds i8, i8* %179, i64 %idxprom234
  %180 = load i8, i8* %arrayidx237, align 1
  %181 = load i32, i32* %i, align 4
  %idxprom238 = sext i32 %181 to i64
  %182 = load i32, i32* %i, align 4
  %idxprom239 = sext i32 %182 to i64
  %183 = load i32*, i32** %num_colours, align 8
  %arrayidx240 = getelementptr inbounds i32, i32* %183, i64 %idxprom239
  %184 = load i32, i32* %arrayidx240, align 4
  %idxprom241 = zext i32 %184 to i64
  %185 = load i8**, i8*** %green, align 8
  %arrayidx242 = getelementptr inbounds i8*, i8** %185, i64 %idxprom241
  %186 = load i8*, i8** %arrayidx242, align 8
  %arrayidx243 = getelementptr inbounds i8, i8* %186, i64 %idxprom238
  store i8 %180, i8* %arrayidx243, align 1
  %187 = load i32, i32* %i, align 4
  %mul244 = mul nsw i32 %187, 4
  %add245 = add nsw i32 %mul244, 2
  %idxprom246 = sext i32 %add245 to i64
  %188 = load i32, i32* %this_frame_num, align 4
  %idxprom247 = sext i32 %188 to i64
  %189 = load i8**, i8*** %these_rows, align 8
  %arrayidx248 = getelementptr inbounds i8*, i8** %189, i64 %idxprom247
  %190 = load i8*, i8** %arrayidx248, align 8
  %arrayidx249 = getelementptr inbounds i8, i8* %190, i64 %idxprom246
  %191 = load i8, i8* %arrayidx249, align 1
  %192 = load i32, i32* %i, align 4
  %idxprom250 = sext i32 %192 to i64
  %193 = load i32, i32* %i, align 4
  %idxprom251 = sext i32 %193 to i64
  %194 = load i32*, i32** %num_colours, align 8
  %arrayidx252 = getelementptr inbounds i32, i32* %194, i64 %idxprom251
  %195 = load i32, i32* %arrayidx252, align 4
  %idxprom253 = zext i32 %195 to i64
  %196 = load i8**, i8*** %blue, align 8
  %arrayidx254 = getelementptr inbounds i8*, i8** %196, i64 %idxprom253
  %197 = load i8*, i8** %arrayidx254, align 8
  %arrayidx255 = getelementptr inbounds i8, i8* %197, i64 %idxprom250
  store i8 %191, i8* %arrayidx255, align 1
  br label %if.end.256

if.end.256:                                       ; preds = %if.then.231, %for.end.209
  %198 = load i32, i32* %i, align 4
  %idxprom257 = sext i32 %198 to i64
  %199 = load i32*, i32** %num_colours, align 8
  %arrayidx258 = getelementptr inbounds i32, i32* %199, i64 %idxprom257
  %200 = load i32, i32* %arrayidx258, align 4
  %inc259 = add i32 %200, 1
  store i32 %inc259, i32* %arrayidx258, align 4
  br label %if.end.260

if.end.260:                                       ; preds = %if.end.256, %for.body.111
  br label %same

same:                                             ; preds = %if.end.260, %if.then.198, %if.then.176
  br label %for.inc.261

for.inc.261:                                      ; preds = %same
  %201 = load i32, i32* %i, align 4
  %inc262 = add nsw i32 %201, 1
  store i32 %inc262, i32* %i, align 4
  br label %for.cond.108

for.end.263:                                      ; preds = %for.cond.108
  br label %for.inc.264

for.inc.264:                                      ; preds = %for.end.263
  %202 = load i32, i32* %this_frame_num, align 4
  %inc265 = add nsw i32 %202, 1
  store i32 %inc265, i32* %this_frame_num, align 4
  br label %for.cond.104

for.end.266:                                      ; preds = %for.cond.104
  store i32 0, i32* %i, align 4
  br label %for.cond.267

for.cond.267:                                     ; preds = %for.inc.355, %for.end.266
  %203 = load i32, i32* %i, align 4
  %204 = load i32, i32* @width, align 4
  %cmp268 = icmp ult i32 %203, %204
  br i1 %cmp268, label %for.body.270, label %for.end.357

for.body.270:                                     ; preds = %for.cond.267
  store i32 0, i32* %best_count, align 4
  store i8 -1, i8* %best_r, align 1
  store i8 0, i8* %best_g, align 1
  store i8 -1, i8* %best_b, align 1
  store i32 0, i32* %j, align 4
  br label %for.cond.271

for.cond.271:                                     ; preds = %for.inc.301, %for.body.270
  %205 = load i32, i32* %j, align 4
  %206 = load i32, i32* %i, align 4
  %idxprom272 = sext i32 %206 to i64
  %207 = load i32*, i32** %num_colours, align 8
  %arrayidx273 = getelementptr inbounds i32, i32* %207, i64 %idxprom272
  %208 = load i32, i32* %arrayidx273, align 4
  %cmp274 = icmp ult i32 %205, %208
  br i1 %cmp274, label %for.body.276, label %for.end.303

for.body.276:                                     ; preds = %for.cond.271
  %209 = load i32, i32* %i, align 4
  %idxprom277 = sext i32 %209 to i64
  %210 = load i32, i32* %j, align 4
  %idxprom278 = sext i32 %210 to i64
  %211 = load i32**, i32*** %count, align 8
  %arrayidx279 = getelementptr inbounds i32*, i32** %211, i64 %idxprom278
  %212 = load i32*, i32** %arrayidx279, align 8
  %arrayidx280 = getelementptr inbounds i32, i32* %212, i64 %idxprom277
  %213 = load i32, i32* %arrayidx280, align 4
  %214 = load i32, i32* %best_count, align 4
  %cmp281 = icmp ugt i32 %213, %214
  br i1 %cmp281, label %if.then.283, label %if.end.300

if.then.283:                                      ; preds = %for.body.276
  %215 = load i32, i32* %i, align 4
  %idxprom284 = sext i32 %215 to i64
  %216 = load i32, i32* %j, align 4
  %idxprom285 = sext i32 %216 to i64
  %217 = load i32**, i32*** %count, align 8
  %arrayidx286 = getelementptr inbounds i32*, i32** %217, i64 %idxprom285
  %218 = load i32*, i32** %arrayidx286, align 8
  %arrayidx287 = getelementptr inbounds i32, i32* %218, i64 %idxprom284
  %219 = load i32, i32* %arrayidx287, align 4
  store i32 %219, i32* %best_count, align 4
  %220 = load i32, i32* %i, align 4
  %idxprom288 = sext i32 %220 to i64
  %221 = load i32, i32* %j, align 4
  %idxprom289 = sext i32 %221 to i64
  %222 = load i8**, i8*** %red, align 8
  %arrayidx290 = getelementptr inbounds i8*, i8** %222, i64 %idxprom289
  %223 = load i8*, i8** %arrayidx290, align 8
  %arrayidx291 = getelementptr inbounds i8, i8* %223, i64 %idxprom288
  %224 = load i8, i8* %arrayidx291, align 1
  store i8 %224, i8* %best_r, align 1
  %225 = load i32, i32* %i, align 4
  %idxprom292 = sext i32 %225 to i64
  %226 = load i32, i32* %j, align 4
  %idxprom293 = sext i32 %226 to i64
  %227 = load i8**, i8*** %green, align 8
  %arrayidx294 = getelementptr inbounds i8*, i8** %227, i64 %idxprom293
  %228 = load i8*, i8** %arrayidx294, align 8
  %arrayidx295 = getelementptr inbounds i8, i8* %228, i64 %idxprom292
  %229 = load i8, i8* %arrayidx295, align 1
  store i8 %229, i8* %best_g, align 1
  %230 = load i32, i32* %i, align 4
  %idxprom296 = sext i32 %230 to i64
  %231 = load i32, i32* %j, align 4
  %idxprom297 = sext i32 %231 to i64
  %232 = load i8**, i8*** %blue, align 8
  %arrayidx298 = getelementptr inbounds i8*, i8** %232, i64 %idxprom297
  %233 = load i8*, i8** %arrayidx298, align 8
  %arrayidx299 = getelementptr inbounds i8, i8* %233, i64 %idxprom296
  %234 = load i8, i8* %arrayidx299, align 1
  store i8 %234, i8* %best_b, align 1
  br label %if.end.300

if.end.300:                                       ; preds = %if.then.283, %for.body.276
  br label %for.inc.301

for.inc.301:                                      ; preds = %if.end.300
  %235 = load i32, i32* %j, align 4
  %inc302 = add nsw i32 %235, 1
  store i32 %inc302, i32* %j, align 4
  br label %for.cond.271

for.end.303:                                      ; preds = %for.cond.271
  %236 = load i8, i8* %best_r, align 1
  %237 = load i32, i32* @width, align 4
  %238 = load i8, i8* @pixelstep, align 1
  %conv304 = zext i8 %238 to i32
  %mul305 = mul i32 %237, %conv304
  %239 = load i32, i32* %row, align 4
  %mul306 = mul i32 %mul305, %239
  %240 = load i32, i32* %i, align 4
  %241 = load i8, i8* @pixelstep, align 1
  %conv307 = zext i8 %241 to i32
  %mul308 = mul nsw i32 %240, %conv307
  %add309 = add i32 %mul306, %mul308
  %add310 = add i32 %add309, 0
  %idxprom311 = zext i32 %add310 to i64
  %242 = load i8*, i8** %back_frame, align 8
  %arrayidx312 = getelementptr inbounds i8, i8* %242, i64 %idxprom311
  store i8 %236, i8* %arrayidx312, align 1
  %243 = load i8, i8* @pixelstep, align 1
  %conv313 = zext i8 %243 to i32
  %cmp314 = icmp eq i32 %conv313, 4
  br i1 %cmp314, label %if.then.316, label %if.end.335

if.then.316:                                      ; preds = %for.end.303
  %244 = load i8, i8* %best_g, align 1
  %245 = load i32, i32* @width, align 4
  %246 = load i8, i8* @pixelstep, align 1
  %conv317 = zext i8 %246 to i32
  %mul318 = mul i32 %245, %conv317
  %247 = load i32, i32* %row, align 4
  %mul319 = mul i32 %mul318, %247
  %248 = load i32, i32* %i, align 4
  %249 = load i8, i8* @pixelstep, align 1
  %conv320 = zext i8 %249 to i32
  %mul321 = mul nsw i32 %248, %conv320
  %add322 = add i32 %mul319, %mul321
  %add323 = add i32 %add322, 1
  %idxprom324 = zext i32 %add323 to i64
  %250 = load i8*, i8** %back_frame, align 8
  %arrayidx325 = getelementptr inbounds i8, i8* %250, i64 %idxprom324
  store i8 %244, i8* %arrayidx325, align 1
  %251 = load i8, i8* %best_b, align 1
  %252 = load i32, i32* @width, align 4
  %253 = load i8, i8* @pixelstep, align 1
  %conv326 = zext i8 %253 to i32
  %mul327 = mul i32 %252, %conv326
  %254 = load i32, i32* %row, align 4
  %mul328 = mul i32 %mul327, %254
  %255 = load i32, i32* %i, align 4
  %256 = load i8, i8* @pixelstep, align 1
  %conv329 = zext i8 %256 to i32
  %mul330 = mul nsw i32 %255, %conv329
  %add331 = add i32 %mul328, %mul330
  %add332 = add i32 %add331, 2
  %idxprom333 = zext i32 %add332 to i64
  %257 = load i8*, i8** %back_frame, align 8
  %arrayidx334 = getelementptr inbounds i8, i8* %257, i64 %idxprom333
  store i8 %251, i8* %arrayidx334, align 1
  br label %if.end.335

if.end.335:                                       ; preds = %if.then.316, %for.end.303
  %258 = load i32, i32* %best_count, align 4
  %cmp336 = icmp eq i32 %258, 0
  %cond338 = select i1 %cmp336, i32 0, i32 255
  %conv339 = trunc i32 %cond338 to i8
  %259 = load i32, i32* @width, align 4
  %260 = load i8, i8* @pixelstep, align 1
  %conv340 = zext i8 %260 to i32
  %mul341 = mul i32 %259, %conv340
  %261 = load i32, i32* %row, align 4
  %mul342 = mul i32 %mul341, %261
  %262 = load i32, i32* %i, align 4
  %263 = load i8, i8* @pixelstep, align 1
  %conv343 = zext i8 %263 to i32
  %mul344 = mul nsw i32 %262, %conv343
  %add345 = add i32 %mul342, %mul344
  %264 = load i8, i8* @pixelstep, align 1
  %conv346 = zext i8 %264 to i32
  %add347 = add i32 %add345, %conv346
  %sub348 = sub i32 %add347, 1
  %idxprom349 = zext i32 %sub348 to i64
  %265 = load i8*, i8** %back_frame, align 8
  %arrayidx350 = getelementptr inbounds i8, i8* %265, i64 %idxprom349
  store i8 %conv339, i8* %arrayidx350, align 1
  %266 = load i32, i32* %best_count, align 4
  %cmp351 = icmp eq i32 %266, 0
  br i1 %cmp351, label %if.then.353, label %if.end.354

if.then.353:                                      ; preds = %if.end.335
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end.354

if.end.354:                                       ; preds = %if.then.353, %if.end.335
  br label %for.inc.355

for.inc.355:                                      ; preds = %if.end.354
  %267 = load i32, i32* %i, align 4
  %inc356 = add nsw i32 %267, 1
  store i32 %inc356, i32* %i, align 4
  br label %for.cond.267

for.end.357:                                      ; preds = %for.cond.267
  br label %for.inc.358

for.inc.358:                                      ; preds = %for.end.357
  %268 = load i32, i32* %row, align 4
  %inc359 = add nsw i32 %268, 1
  store i32 %inc359, i32* %row, align 4
  br label %for.cond.85

for.end.360:                                      ; preds = %for.cond.85
  store i32 0, i32* %this_frame_num, align 4
  br label %for.cond.361

for.cond.361:                                     ; preds = %for.inc.375, %for.end.360
  %269 = load i32, i32* %this_frame_num, align 4
  %270 = load i32, i32* @total_frames, align 4
  %cmp362 = icmp slt i32 %269, %270
  br i1 %cmp362, label %for.body.364, label %for.end.377

for.body.364:                                     ; preds = %for.cond.361
  %271 = load i32, i32* %this_frame_num, align 4
  %idxprom365 = sext i32 %271 to i64
  %272 = load i8**, i8*** %these_rows, align 8
  %arrayidx366 = getelementptr inbounds i8*, i8** %272, i64 %idxprom365
  %273 = load i8*, i8** %arrayidx366, align 8
  call void @g_free(i8* %273)
  %274 = load i32, i32* %this_frame_num, align 4
  %idxprom367 = sext i32 %274 to i64
  %275 = load i8**, i8*** %red, align 8
  %arrayidx368 = getelementptr inbounds i8*, i8** %275, i64 %idxprom367
  %276 = load i8*, i8** %arrayidx368, align 8
  call void @g_free(i8* %276)
  %277 = load i32, i32* %this_frame_num, align 4
  %idxprom369 = sext i32 %277 to i64
  %278 = load i8**, i8*** %green, align 8
  %arrayidx370 = getelementptr inbounds i8*, i8** %278, i64 %idxprom369
  %279 = load i8*, i8** %arrayidx370, align 8
  call void @g_free(i8* %279)
  %280 = load i32, i32* %this_frame_num, align 4
  %idxprom371 = sext i32 %280 to i64
  %281 = load i8**, i8*** %blue, align 8
  %arrayidx372 = getelementptr inbounds i8*, i8** %281, i64 %idxprom371
  %282 = load i8*, i8** %arrayidx372, align 8
  call void @g_free(i8* %282)
  %283 = load i32, i32* %this_frame_num, align 4
  %idxprom373 = sext i32 %283 to i64
  %284 = load i32**, i32*** %count, align 8
  %arrayidx374 = getelementptr inbounds i32*, i32** %284, i64 %idxprom373
  %285 = load i32*, i32** %arrayidx374, align 8
  %286 = bitcast i32* %285 to i8*
  call void @g_free(i8* %286)
  br label %for.inc.375

for.inc.375:                                      ; preds = %for.body.364
  %287 = load i32, i32* %this_frame_num, align 4
  %inc376 = add nsw i32 %287, 1
  store i32 %inc376, i32* %this_frame_num, align 4
  br label %for.cond.361

for.end.377:                                      ; preds = %for.cond.361
  %288 = load i8**, i8*** %these_rows, align 8
  %289 = bitcast i8** %288 to i8*
  call void @g_free(i8* %289)
  %290 = load i8**, i8*** %red, align 8
  %291 = bitcast i8** %290 to i8*
  call void @g_free(i8* %291)
  %292 = load i8**, i8*** %green, align 8
  %293 = bitcast i8** %292 to i8*
  call void @g_free(i8* %293)
  %294 = load i8**, i8*** %blue, align 8
  %295 = bitcast i8** %294 to i8*
  call void @g_free(i8* %295)
  %296 = load i32**, i32*** %count, align 8
  %297 = bitcast i32** %296 to i8*
  call void @g_free(i8* %297)
  %298 = load i32*, i32** %num_colours, align 8
  %299 = bitcast i32* %298 to i8*
  call void @g_free(i8* %299)
  br label %if.end.378

if.end.378:                                       ; preds = %for.end.377, %lor.lhs.false.47
  %300 = load i32, i32* @opmode, align 4
  %cmp379 = icmp eq i32 %300, 3
  br i1 %cmp379, label %if.then.381, label %if.else

if.then.381:                                      ; preds = %if.end.378
  %301 = load i32, i32* @new_image_id, align 4
  %302 = load i32, i32* @width, align 4
  %303 = load i32, i32* @height, align 4
  %304 = load i32, i32* @drawabletype_alpha, align 4
  %call382 = call i32 @gimp_layer_new(i32 %301, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0), i32 %302, i32 %303, i32 %304, double 1.000000e+02, i32 0)
  store i32 %call382, i32* %new_layer_id, align 4
  %305 = load i32, i32* @new_image_id, align 4
  %306 = load i32, i32* %new_layer_id, align 4
  %call383 = call i32 @gimp_image_insert_layer(i32 %305, i32 %306, i32 -1, i32 0)
  %307 = load i32, i32* %new_layer_id, align 4
  %call384 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %307)
  store %struct._GimpDrawable* %call384, %struct._GimpDrawable** @drawable, align 8
  %308 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %309 = load i32, i32* @width, align 4
  %310 = load i32, i32* @height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %308, i32 0, i32 0, i32 %309, i32 %310, i32 1, i32 0)
  %311 = load i8*, i8** %back_frame, align 8
  %312 = load i32, i32* @width, align 4
  %313 = load i32, i32* @height, align 4
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %311, i32 0, i32 0, i32 %312, i32 %313)
  %314 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %314)
  %315 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %315)
  br label %if.end.1026

if.else:                                          ; preds = %if.end.378
  store i32 0, i32* %this_frame_num, align 4
  br label %for.cond.385

for.cond.385:                                     ; preds = %for.inc.1022, %if.else
  %316 = load i32, i32* %this_frame_num, align 4
  %317 = load i32, i32* @total_frames, align 4
  %cmp386 = icmp slt i32 %316, %317
  br i1 %cmp386, label %for.body.388, label %for.end.1024

for.body.388:                                     ; preds = %for.cond.385
  %318 = load i32, i32* @total_frames, align 4
  %319 = load i32, i32* %this_frame_num, align 4
  %add389 = add nsw i32 %319, 1
  %sub390 = sub nsw i32 %318, %add389
  %idxprom391 = sext i32 %sub390 to i64
  %320 = load i32*, i32** @layers, align 8
  %arrayidx392 = getelementptr inbounds i32, i32* %320, i64 %idxprom391
  %321 = load i32, i32* %arrayidx392, align 4
  %call393 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %321)
  store %struct._GimpDrawable* %call393, %struct._GimpDrawable** @drawable, align 8
  %322 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %322, i32 0, i32 0
  %323 = load i32, i32* %drawable_id, align 4
  %call394 = call i32 @gimp_drawable_width(i32 %323)
  %cmp395 = icmp eq i32 %call394, 0
  br i1 %cmp395, label %if.then.397, label %if.end.398

if.then.397:                                      ; preds = %for.body.388
  call void @gimp_quit() #9
  unreachable

if.end.398:                                       ; preds = %for.body.388
  %324 = load i32, i32* %this_frame_num, align 4
  %call399 = call i32 @get_frame_duration(i32 %324)
  store i32 %call399, i32* %this_delay, align 4
  %325 = load i32, i32* %this_frame_num, align 4
  %call400 = call i32 @get_frame_disposal(i32 %325)
  store i32 %call400, i32* %dispose, align 4
  store i32 0, i32* %row, align 4
  br label %for.cond.401

for.cond.401:                                     ; preds = %for.inc.410, %if.end.398
  %326 = load i32, i32* %row, align 4
  %327 = load i32, i32* @height, align 4
  %cmp402 = icmp ult i32 %326, %327
  br i1 %cmp402, label %for.body.404, label %for.end.412

for.body.404:                                     ; preds = %for.cond.401
  %328 = load i32, i32* %this_frame_num, align 4
  %329 = load i32, i32* %dispose, align 4
  %330 = load i32, i32* %row, align 4
  %331 = load i8, i8* @pixelstep, align 1
  %conv405 = zext i8 %331 to i32
  %332 = load i32, i32* @width, align 4
  %mul406 = mul i32 %conv405, %332
  %333 = load i32, i32* %row, align 4
  %mul407 = mul i32 %mul406, %333
  %idxprom408 = zext i32 %mul407 to i64
  %334 = load i8*, i8** %this_frame, align 8
  %arrayidx409 = getelementptr inbounds i8, i8* %334, i64 %idxprom408
  %335 = load i32, i32* @width, align 4
  %336 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  call void @compose_row(i32 %328, i32 %329, i32 %330, i8* %arrayidx409, i32 %335, %struct._GimpDrawable* %336, i32 0)
  br label %for.inc.410

for.inc.410:                                      ; preds = %for.body.404
  %337 = load i32, i32* %row, align 4
  %inc411 = add nsw i32 %337, 1
  store i32 %inc411, i32* %row, align 4
  br label %for.cond.401

for.end.412:                                      ; preds = %for.cond.401
  %338 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %338)
  %339 = load i32, i32* @opmode, align 4
  %cmp413 = icmp eq i32 %339, 2
  br i1 %cmp413, label %if.then.415, label %if.end.474

if.then.415:                                      ; preds = %for.end.412
  store i32 0, i32* %yit, align 4
  br label %for.cond.416

for.cond.416:                                     ; preds = %for.inc.471, %if.then.415
  %340 = load i32, i32* %yit, align 4
  %341 = load i32, i32* @height, align 4
  %cmp417 = icmp ult i32 %340, %341
  br i1 %cmp417, label %for.body.419, label %for.end.473

for.body.419:                                     ; preds = %for.cond.416
  store i32 0, i32* %xit, align 4
  br label %for.cond.420

for.cond.420:                                     ; preds = %for.inc.468, %for.body.419
  %342 = load i32, i32* %xit, align 4
  %343 = load i32, i32* @width, align 4
  %cmp421 = icmp ult i32 %342, %343
  br i1 %cmp421, label %for.body.423, label %for.end.470

for.body.423:                                     ; preds = %for.cond.420
  store i32 0, i32* %byteit, align 4
  br label %for.cond.424

for.cond.424:                                     ; preds = %for.inc.454, %for.body.423
  %344 = load i32, i32* %byteit, align 4
  %345 = load i8, i8* @pixelstep, align 1
  %conv425 = zext i8 %345 to i32
  %sub426 = sub nsw i32 %conv425, 1
  %cmp427 = icmp slt i32 %344, %sub426
  br i1 %cmp427, label %for.body.429, label %for.end.456

for.body.429:                                     ; preds = %for.cond.424
  %346 = load i32, i32* %yit, align 4
  %347 = load i32, i32* @width, align 4
  %mul430 = mul i32 %346, %347
  %348 = load i8, i8* @pixelstep, align 1
  %conv431 = zext i8 %348 to i32
  %mul432 = mul i32 %mul430, %conv431
  %349 = load i32, i32* %xit, align 4
  %350 = load i8, i8* @pixelstep, align 1
  %conv433 = zext i8 %350 to i32
  %mul434 = mul nsw i32 %349, %conv433
  %add435 = add i32 %mul432, %mul434
  %351 = load i32, i32* %byteit, align 4
  %add436 = add i32 %add435, %351
  %idxprom437 = zext i32 %add436 to i64
  %352 = load i8*, i8** %back_frame, align 8
  %arrayidx438 = getelementptr inbounds i8, i8* %352, i64 %idxprom437
  %353 = load i8, i8* %arrayidx438, align 1
  %conv439 = zext i8 %353 to i32
  %354 = load i32, i32* %yit, align 4
  %355 = load i32, i32* @width, align 4
  %mul440 = mul i32 %354, %355
  %356 = load i8, i8* @pixelstep, align 1
  %conv441 = zext i8 %356 to i32
  %mul442 = mul i32 %mul440, %conv441
  %357 = load i32, i32* %xit, align 4
  %358 = load i8, i8* @pixelstep, align 1
  %conv443 = zext i8 %358 to i32
  %mul444 = mul nsw i32 %357, %conv443
  %add445 = add i32 %mul442, %mul444
  %359 = load i32, i32* %byteit, align 4
  %add446 = add i32 %add445, %359
  %idxprom447 = zext i32 %add446 to i64
  %360 = load i8*, i8** %this_frame, align 8
  %arrayidx448 = getelementptr inbounds i8, i8* %360, i64 %idxprom447
  %361 = load i8, i8* %arrayidx448, align 1
  %conv449 = zext i8 %361 to i32
  %cmp450 = icmp ne i32 %conv439, %conv449
  br i1 %cmp450, label %if.then.452, label %if.end.453

if.then.452:                                      ; preds = %for.body.429
  br label %enough

if.end.453:                                       ; preds = %for.body.429
  br label %for.inc.454

for.inc.454:                                      ; preds = %if.end.453
  %362 = load i32, i32* %byteit, align 4
  %inc455 = add nsw i32 %362, 1
  store i32 %inc455, i32* %byteit, align 4
  br label %for.cond.424

for.end.456:                                      ; preds = %for.cond.424
  %363 = load i32, i32* %yit, align 4
  %364 = load i32, i32* @width, align 4
  %mul457 = mul i32 %363, %364
  %365 = load i8, i8* @pixelstep, align 1
  %conv458 = zext i8 %365 to i32
  %mul459 = mul i32 %mul457, %conv458
  %366 = load i32, i32* %xit, align 4
  %367 = load i8, i8* @pixelstep, align 1
  %conv460 = zext i8 %367 to i32
  %mul461 = mul nsw i32 %366, %conv460
  %add462 = add i32 %mul459, %mul461
  %368 = load i8, i8* @pixelstep, align 1
  %conv463 = zext i8 %368 to i32
  %add464 = add i32 %add462, %conv463
  %sub465 = sub i32 %add464, 1
  %idxprom466 = zext i32 %sub465 to i64
  %369 = load i8*, i8** %this_frame, align 8
  %arrayidx467 = getelementptr inbounds i8, i8* %369, i64 %idxprom466
  store i8 0, i8* %arrayidx467, align 1
  br label %enough

enough:                                           ; preds = %for.end.456, %if.then.452
  br label %for.inc.468

for.inc.468:                                      ; preds = %enough
  %370 = load i32, i32* %xit, align 4
  %inc469 = add nsw i32 %370, 1
  store i32 %inc469, i32* %xit, align 4
  br label %for.cond.420

for.end.470:                                      ; preds = %for.cond.420
  br label %for.inc.471

for.inc.471:                                      ; preds = %for.end.470
  %371 = load i32, i32* %yit, align 4
  %inc472 = add nsw i32 %371, 1
  store i32 %inc472, i32* %yit, align 4
  br label %for.cond.416

for.end.473:                                      ; preds = %for.cond.416
  br label %if.end.474

if.end.474:                                       ; preds = %for.end.473, %for.end.412
  store i32 0, i32* %can_combine, align 4
  store i32 0, i32* %bbox_left, align 4
  store i32 0, i32* %bbox_top, align 4
  %372 = load i32, i32* @width, align 4
  store i32 %372, i32* %bbox_right, align 4
  %373 = load i32, i32* @height, align 4
  store i32 %373, i32* %bbox_bottom, align 4
  store i32 0, i32* %rbox_left, align 4
  store i32 0, i32* %rbox_top, align 4
  %374 = load i32, i32* @width, align 4
  store i32 %374, i32* %rbox_right, align 4
  %375 = load i32, i32* @height, align 4
  store i32 %375, i32* %rbox_bottom, align 4
  %376 = load i8*, i8** %opti_frame, align 8
  %377 = load i8*, i8** %this_frame, align 8
  %378 = load i32, i32* %frame_sizebytes, align 4
  %conv475 = zext i32 %378 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %376, i8* %377, i64 %conv475, i32 1, i1 false)
  %379 = load i32, i32* %this_frame_num, align 4
  %cmp476 = icmp ne i32 %379, 0
  br i1 %cmp476, label %land.lhs.true.478, label %if.else.954

land.lhs.true.478:                                ; preds = %if.end.474
  %380 = load i32, i32* @opmode, align 4
  %cmp479 = icmp eq i32 %380, 0
  br i1 %cmp479, label %if.then.481, label %if.else.954

if.then.481:                                      ; preds = %land.lhs.true.478
  store i32 1, i32* %can_combine, align 4
  %381 = load i32, i32* @width, align 4
  store i32 %381, i32* %bbox_left, align 4
  %382 = load i32, i32* @height, align 4
  store i32 %382, i32* %bbox_top, align 4
  store i32 0, i32* %bbox_right, align 4
  store i32 0, i32* %bbox_bottom, align 4
  %383 = load i32, i32* @width, align 4
  store i32 %383, i32* %rbox_left, align 4
  %384 = load i32, i32* @height, align 4
  store i32 %384, i32* %rbox_top, align 4
  store i32 0, i32* %rbox_right, align 4
  store i32 0, i32* %rbox_bottom, align 4
  store i32 0, i32* %yit483, align 4
  br label %for.cond.485

for.cond.485:                                     ; preds = %for.inc.670, %if.then.481
  %385 = load i32, i32* %yit483, align 4
  %386 = load i32, i32* @height, align 4
  %cmp486 = icmp ult i32 %385, %386
  br i1 %cmp486, label %for.body.488, label %for.end.672

for.body.488:                                     ; preds = %for.cond.485
  store i32 0, i32* %xit482, align 4
  br label %for.cond.489

for.cond.489:                                     ; preds = %for.inc.667, %for.body.488
  %387 = load i32, i32* %xit482, align 4
  %388 = load i32, i32* @width, align 4
  %cmp490 = icmp ult i32 %387, %388
  br i1 %cmp490, label %for.body.492, label %for.end.669

for.body.492:                                     ; preds = %for.cond.489
  %389 = load i32, i32* %yit483, align 4
  %390 = load i32, i32* @width, align 4
  %mul493 = mul i32 %389, %390
  %391 = load i8, i8* @pixelstep, align 1
  %conv494 = zext i8 %391 to i32
  %mul495 = mul i32 %mul493, %conv494
  %392 = load i32, i32* %xit482, align 4
  %393 = load i8, i8* @pixelstep, align 1
  %conv496 = zext i8 %393 to i32
  %mul497 = mul nsw i32 %392, %conv496
  %add498 = add i32 %mul495, %mul497
  %394 = load i8, i8* @pixelstep, align 1
  %conv499 = zext i8 %394 to i32
  %add500 = add i32 %add498, %conv499
  %sub501 = sub i32 %add500, 1
  %idxprom502 = zext i32 %sub501 to i64
  %395 = load i8*, i8** %this_frame, align 8
  %arrayidx503 = getelementptr inbounds i8, i8* %395, i64 %idxprom502
  %396 = load i8, i8* %arrayidx503, align 1
  %conv504 = zext i8 %396 to i32
  %and = and i32 %conv504, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.521, label %land.lhs.true.505

land.lhs.true.505:                                ; preds = %for.body.492
  %397 = load i32, i32* %yit483, align 4
  %398 = load i32, i32* @width, align 4
  %mul506 = mul i32 %397, %398
  %399 = load i8, i8* @pixelstep, align 1
  %conv507 = zext i8 %399 to i32
  %mul508 = mul i32 %mul506, %conv507
  %400 = load i32, i32* %xit482, align 4
  %401 = load i8, i8* @pixelstep, align 1
  %conv509 = zext i8 %401 to i32
  %mul510 = mul nsw i32 %400, %conv509
  %add511 = add i32 %mul508, %mul510
  %402 = load i8, i8* @pixelstep, align 1
  %conv512 = zext i8 %402 to i32
  %add513 = add i32 %add511, %conv512
  %sub514 = sub i32 %add513, 1
  %idxprom515 = zext i32 %sub514 to i64
  %403 = load i8*, i8** %last_frame, align 8
  %arrayidx516 = getelementptr inbounds i8, i8* %403, i64 %idxprom515
  %404 = load i8, i8* %arrayidx516, align 1
  %conv517 = zext i8 %404 to i32
  %and518 = and i32 %conv517, 128
  %tobool519 = icmp ne i32 %and518, 0
  br i1 %tobool519, label %if.end.521, label %if.then.520

if.then.520:                                      ; preds = %land.lhs.true.505
  store i32 0, i32* %keep_pix, align 4
  store i32 0, i32* %opaq_pix, align 4
  br label %decided

if.end.521:                                       ; preds = %land.lhs.true.505, %for.body.492
  %405 = load i32, i32* %yit483, align 4
  %406 = load i32, i32* @width, align 4
  %mul522 = mul i32 %405, %406
  %407 = load i8, i8* @pixelstep, align 1
  %conv523 = zext i8 %407 to i32
  %mul524 = mul i32 %mul522, %conv523
  %408 = load i32, i32* %xit482, align 4
  %409 = load i8, i8* @pixelstep, align 1
  %conv525 = zext i8 %409 to i32
  %mul526 = mul nsw i32 %408, %conv525
  %add527 = add i32 %mul524, %mul526
  %410 = load i8, i8* @pixelstep, align 1
  %conv528 = zext i8 %410 to i32
  %add529 = add i32 %add527, %conv528
  %sub530 = sub i32 %add529, 1
  %idxprom531 = zext i32 %sub530 to i64
  %411 = load i8*, i8** %last_frame, align 8
  %arrayidx532 = getelementptr inbounds i8, i8* %411, i64 %idxprom531
  %412 = load i8, i8* %arrayidx532, align 1
  %conv533 = zext i8 %412 to i32
  %and534 = and i32 %conv533, 128
  %tobool535 = icmp ne i32 %and534, 0
  br i1 %tobool535, label %land.lhs.true.536, label %if.end.552

land.lhs.true.536:                                ; preds = %if.end.521
  %413 = load i32, i32* %yit483, align 4
  %414 = load i32, i32* @width, align 4
  %mul537 = mul i32 %413, %414
  %415 = load i8, i8* @pixelstep, align 1
  %conv538 = zext i8 %415 to i32
  %mul539 = mul i32 %mul537, %conv538
  %416 = load i32, i32* %xit482, align 4
  %417 = load i8, i8* @pixelstep, align 1
  %conv540 = zext i8 %417 to i32
  %mul541 = mul nsw i32 %416, %conv540
  %add542 = add i32 %mul539, %mul541
  %418 = load i8, i8* @pixelstep, align 1
  %conv543 = zext i8 %418 to i32
  %add544 = add i32 %add542, %conv543
  %sub545 = sub i32 %add544, 1
  %idxprom546 = zext i32 %sub545 to i64
  %419 = load i8*, i8** %this_frame, align 8
  %arrayidx547 = getelementptr inbounds i8, i8* %419, i64 %idxprom546
  %420 = load i8, i8* %arrayidx547, align 1
  %conv548 = zext i8 %420 to i32
  %and549 = and i32 %conv548, 128
  %tobool550 = icmp ne i32 %and549, 0
  br i1 %tobool550, label %if.end.552, label %if.then.551

if.then.551:                                      ; preds = %land.lhs.true.536
  store i32 1, i32* %keep_pix, align 4
  store i32 0, i32* %opaq_pix, align 4
  store i32 0, i32* %can_combine, align 4
  br label %decided

if.end.552:                                       ; preds = %land.lhs.true.536, %if.end.521
  %421 = load i32, i32* %yit483, align 4
  %422 = load i32, i32* @width, align 4
  %mul553 = mul i32 %421, %422
  %423 = load i8, i8* @pixelstep, align 1
  %conv554 = zext i8 %423 to i32
  %mul555 = mul i32 %mul553, %conv554
  %424 = load i32, i32* %xit482, align 4
  %425 = load i8, i8* @pixelstep, align 1
  %conv556 = zext i8 %425 to i32
  %mul557 = mul nsw i32 %424, %conv556
  %add558 = add i32 %mul555, %mul557
  %426 = load i8, i8* @pixelstep, align 1
  %conv559 = zext i8 %426 to i32
  %add560 = add i32 %add558, %conv559
  %sub561 = sub i32 %add560, 1
  %idxprom562 = zext i32 %sub561 to i64
  %427 = load i8*, i8** %last_frame, align 8
  %arrayidx563 = getelementptr inbounds i8, i8* %427, i64 %idxprom562
  %428 = load i8, i8* %arrayidx563, align 1
  %conv564 = zext i8 %428 to i32
  %and565 = and i32 %conv564, 128
  %tobool566 = icmp ne i32 %and565, 0
  br i1 %tobool566, label %if.end.583, label %land.lhs.true.567

land.lhs.true.567:                                ; preds = %if.end.552
  %429 = load i32, i32* %yit483, align 4
  %430 = load i32, i32* @width, align 4
  %mul568 = mul i32 %429, %430
  %431 = load i8, i8* @pixelstep, align 1
  %conv569 = zext i8 %431 to i32
  %mul570 = mul i32 %mul568, %conv569
  %432 = load i32, i32* %xit482, align 4
  %433 = load i8, i8* @pixelstep, align 1
  %conv571 = zext i8 %433 to i32
  %mul572 = mul nsw i32 %432, %conv571
  %add573 = add i32 %mul570, %mul572
  %434 = load i8, i8* @pixelstep, align 1
  %conv574 = zext i8 %434 to i32
  %add575 = add i32 %add573, %conv574
  %sub576 = sub i32 %add575, 1
  %idxprom577 = zext i32 %sub576 to i64
  %435 = load i8*, i8** %this_frame, align 8
  %arrayidx578 = getelementptr inbounds i8, i8* %435, i64 %idxprom577
  %436 = load i8, i8* %arrayidx578, align 1
  %conv579 = zext i8 %436 to i32
  %and580 = and i32 %conv579, 128
  %tobool581 = icmp ne i32 %and580, 0
  br i1 %tobool581, label %if.then.582, label %if.end.583

if.then.582:                                      ; preds = %land.lhs.true.567
  store i32 1, i32* %keep_pix, align 4
  store i32 1, i32* %opaq_pix, align 4
  br label %decided

if.end.583:                                       ; preds = %land.lhs.true.567, %if.end.552
  store i32 0, i32* %keep_pix, align 4
  store i32 1, i32* %opaq_pix, align 4
  store i32 0, i32* %byteit484, align 4
  br label %for.cond.584

for.cond.584:                                     ; preds = %for.inc.614, %if.end.583
  %437 = load i32, i32* %byteit484, align 4
  %438 = load i8, i8* @pixelstep, align 1
  %conv585 = zext i8 %438 to i32
  %sub586 = sub nsw i32 %conv585, 1
  %cmp587 = icmp slt i32 %437, %sub586
  br i1 %cmp587, label %for.body.589, label %for.end.616

for.body.589:                                     ; preds = %for.cond.584
  %439 = load i32, i32* %yit483, align 4
  %440 = load i32, i32* @width, align 4
  %mul590 = mul i32 %439, %440
  %441 = load i8, i8* @pixelstep, align 1
  %conv591 = zext i8 %441 to i32
  %mul592 = mul i32 %mul590, %conv591
  %442 = load i32, i32* %xit482, align 4
  %443 = load i8, i8* @pixelstep, align 1
  %conv593 = zext i8 %443 to i32
  %mul594 = mul nsw i32 %442, %conv593
  %add595 = add i32 %mul592, %mul594
  %444 = load i32, i32* %byteit484, align 4
  %add596 = add i32 %add595, %444
  %idxprom597 = zext i32 %add596 to i64
  %445 = load i8*, i8** %last_frame, align 8
  %arrayidx598 = getelementptr inbounds i8, i8* %445, i64 %idxprom597
  %446 = load i8, i8* %arrayidx598, align 1
  %conv599 = zext i8 %446 to i32
  %447 = load i32, i32* %yit483, align 4
  %448 = load i32, i32* @width, align 4
  %mul600 = mul i32 %447, %448
  %449 = load i8, i8* @pixelstep, align 1
  %conv601 = zext i8 %449 to i32
  %mul602 = mul i32 %mul600, %conv601
  %450 = load i32, i32* %xit482, align 4
  %451 = load i8, i8* @pixelstep, align 1
  %conv603 = zext i8 %451 to i32
  %mul604 = mul nsw i32 %450, %conv603
  %add605 = add i32 %mul602, %mul604
  %452 = load i32, i32* %byteit484, align 4
  %add606 = add i32 %add605, %452
  %idxprom607 = zext i32 %add606 to i64
  %453 = load i8*, i8** %this_frame, align 8
  %arrayidx608 = getelementptr inbounds i8, i8* %453, i64 %idxprom607
  %454 = load i8, i8* %arrayidx608, align 1
  %conv609 = zext i8 %454 to i32
  %cmp610 = icmp ne i32 %conv599, %conv609
  br i1 %cmp610, label %if.then.612, label %if.end.613

if.then.612:                                      ; preds = %for.body.589
  store i32 1, i32* %keep_pix, align 4
  br label %decided

if.end.613:                                       ; preds = %for.body.589
  br label %for.inc.614

for.inc.614:                                      ; preds = %if.end.613
  %455 = load i32, i32* %byteit484, align 4
  %inc615 = add nsw i32 %455, 1
  store i32 %inc615, i32* %byteit484, align 4
  br label %for.cond.584

for.end.616:                                      ; preds = %for.cond.584
  br label %decided

decided:                                          ; preds = %for.end.616, %if.then.612, %if.then.582, %if.then.551, %if.then.520
  %456 = load i32, i32* %opaq_pix, align 4
  %tobool617 = icmp ne i32 %456, 0
  br i1 %tobool617, label %if.then.618, label %if.end.635

if.then.618:                                      ; preds = %decided
  %457 = load i32, i32* %xit482, align 4
  %458 = load i32, i32* %rbox_left, align 4
  %cmp619 = icmp slt i32 %457, %458
  br i1 %cmp619, label %if.then.621, label %if.end.622

if.then.621:                                      ; preds = %if.then.618
  %459 = load i32, i32* %xit482, align 4
  store i32 %459, i32* %rbox_left, align 4
  br label %if.end.622

if.end.622:                                       ; preds = %if.then.621, %if.then.618
  %460 = load i32, i32* %xit482, align 4
  %461 = load i32, i32* %rbox_right, align 4
  %cmp623 = icmp sgt i32 %460, %461
  br i1 %cmp623, label %if.then.625, label %if.end.626

if.then.625:                                      ; preds = %if.end.622
  %462 = load i32, i32* %xit482, align 4
  store i32 %462, i32* %rbox_right, align 4
  br label %if.end.626

if.end.626:                                       ; preds = %if.then.625, %if.end.622
  %463 = load i32, i32* %yit483, align 4
  %464 = load i32, i32* %rbox_top, align 4
  %cmp627 = icmp slt i32 %463, %464
  br i1 %cmp627, label %if.then.629, label %if.end.630

if.then.629:                                      ; preds = %if.end.626
  %465 = load i32, i32* %yit483, align 4
  store i32 %465, i32* %rbox_top, align 4
  br label %if.end.630

if.end.630:                                       ; preds = %if.then.629, %if.end.626
  %466 = load i32, i32* %yit483, align 4
  %467 = load i32, i32* %rbox_bottom, align 4
  %cmp631 = icmp sgt i32 %466, %467
  br i1 %cmp631, label %if.then.633, label %if.end.634

if.then.633:                                      ; preds = %if.end.630
  %468 = load i32, i32* %yit483, align 4
  store i32 %468, i32* %rbox_bottom, align 4
  br label %if.end.634

if.end.634:                                       ; preds = %if.then.633, %if.end.630
  br label %if.end.635

if.end.635:                                       ; preds = %if.end.634, %decided
  %469 = load i32, i32* %keep_pix, align 4
  %tobool636 = icmp ne i32 %469, 0
  br i1 %tobool636, label %if.then.637, label %if.else.654

if.then.637:                                      ; preds = %if.end.635
  %470 = load i32, i32* %xit482, align 4
  %471 = load i32, i32* %bbox_left, align 4
  %cmp638 = icmp slt i32 %470, %471
  br i1 %cmp638, label %if.then.640, label %if.end.641

if.then.640:                                      ; preds = %if.then.637
  %472 = load i32, i32* %xit482, align 4
  store i32 %472, i32* %bbox_left, align 4
  br label %if.end.641

if.end.641:                                       ; preds = %if.then.640, %if.then.637
  %473 = load i32, i32* %xit482, align 4
  %474 = load i32, i32* %bbox_right, align 4
  %cmp642 = icmp sgt i32 %473, %474
  br i1 %cmp642, label %if.then.644, label %if.end.645

if.then.644:                                      ; preds = %if.end.641
  %475 = load i32, i32* %xit482, align 4
  store i32 %475, i32* %bbox_right, align 4
  br label %if.end.645

if.end.645:                                       ; preds = %if.then.644, %if.end.641
  %476 = load i32, i32* %yit483, align 4
  %477 = load i32, i32* %bbox_top, align 4
  %cmp646 = icmp slt i32 %476, %477
  br i1 %cmp646, label %if.then.648, label %if.end.649

if.then.648:                                      ; preds = %if.end.645
  %478 = load i32, i32* %yit483, align 4
  store i32 %478, i32* %bbox_top, align 4
  br label %if.end.649

if.end.649:                                       ; preds = %if.then.648, %if.end.645
  %479 = load i32, i32* %yit483, align 4
  %480 = load i32, i32* %bbox_bottom, align 4
  %cmp650 = icmp sgt i32 %479, %480
  br i1 %cmp650, label %if.then.652, label %if.end.653

if.then.652:                                      ; preds = %if.end.649
  %481 = load i32, i32* %yit483, align 4
  store i32 %481, i32* %bbox_bottom, align 4
  br label %if.end.653

if.end.653:                                       ; preds = %if.then.652, %if.end.649
  br label %if.end.666

if.else.654:                                      ; preds = %if.end.635
  %482 = load i32, i32* %yit483, align 4
  %483 = load i32, i32* @width, align 4
  %mul655 = mul i32 %482, %483
  %484 = load i8, i8* @pixelstep, align 1
  %conv656 = zext i8 %484 to i32
  %mul657 = mul i32 %mul655, %conv656
  %485 = load i32, i32* %xit482, align 4
  %486 = load i8, i8* @pixelstep, align 1
  %conv658 = zext i8 %486 to i32
  %mul659 = mul nsw i32 %485, %conv658
  %add660 = add i32 %mul657, %mul659
  %487 = load i8, i8* @pixelstep, align 1
  %conv661 = zext i8 %487 to i32
  %add662 = add i32 %add660, %conv661
  %sub663 = sub i32 %add662, 1
  %idxprom664 = zext i32 %sub663 to i64
  %488 = load i8*, i8** %opti_frame, align 8
  %arrayidx665 = getelementptr inbounds i8, i8* %488, i64 %idxprom664
  store i8 0, i8* %arrayidx665, align 1
  br label %if.end.666

if.end.666:                                       ; preds = %if.else.654, %if.end.653
  br label %for.inc.667

for.inc.667:                                      ; preds = %if.end.666
  %489 = load i32, i32* %xit482, align 4
  %inc668 = add nsw i32 %489, 1
  store i32 %inc668, i32* %xit482, align 4
  br label %for.cond.489

for.end.669:                                      ; preds = %for.cond.489
  br label %for.inc.670

for.inc.670:                                      ; preds = %for.end.669
  %490 = load i32, i32* %yit483, align 4
  %inc671 = add nsw i32 %490, 1
  store i32 %inc671, i32* %yit483, align 4
  br label %for.cond.485

for.end.672:                                      ; preds = %for.cond.485
  %491 = load i32, i32* %can_combine, align 4
  %tobool673 = icmp ne i32 %491, 0
  br i1 %tobool673, label %if.end.675, label %if.then.674

if.then.674:                                      ; preds = %for.end.672
  %492 = load i32, i32* %rbox_left, align 4
  store i32 %492, i32* %bbox_left, align 4
  %493 = load i32, i32* %rbox_top, align 4
  store i32 %493, i32* %bbox_top, align 4
  %494 = load i32, i32* %rbox_right, align 4
  store i32 %494, i32* %bbox_right, align 4
  %495 = load i32, i32* %rbox_bottom, align 4
  store i32 %495, i32* %bbox_bottom, align 4
  br label %if.end.675

if.end.675:                                       ; preds = %if.then.674, %for.end.672
  %496 = load i32, i32* %bbox_right, align 4
  %inc676 = add nsw i32 %496, 1
  store i32 %inc676, i32* %bbox_right, align 4
  %497 = load i32, i32* %bbox_bottom, align 4
  %inc677 = add nsw i32 %497, 1
  store i32 %inc677, i32* %bbox_bottom, align 4
  %498 = load i32, i32* %can_combine, align 4
  %tobool678 = icmp ne i32 %498, 0
  br i1 %tobool678, label %land.lhs.true.679, label %if.end.918

land.lhs.true.679:                                ; preds = %if.end.675
  %499 = load i32, i32* %diff_only.addr, align 4
  %tobool680 = icmp ne i32 %499, 0
  br i1 %tobool680, label %if.end.918, label %if.then.681

if.then.681:                                      ; preds = %land.lhs.true.679
  %500 = load i32, i32* %bbox_top, align 4
  store i32 %500, i32* %yit483, align 4
  br label %for.cond.682

for.cond.682:                                     ; preds = %for.inc.915, %if.then.681
  %501 = load i32, i32* %yit483, align 4
  %502 = load i32, i32* %bbox_bottom, align 4
  %cmp683 = icmp slt i32 %501, %502
  br i1 %cmp683, label %for.body.685, label %for.end.917

for.body.685:                                     ; preds = %for.cond.682
  %503 = load i32, i32* %bbox_left, align 4
  %add686 = add nsw i32 %503, 1
  store i32 %add686, i32* %xit482, align 4
  br label %for.cond.687

for.cond.687:                                     ; preds = %for.inc.798, %for.body.685
  %504 = load i32, i32* %xit482, align 4
  %505 = load i32, i32* %bbox_right, align 4
  %cmp688 = icmp slt i32 %504, %505
  br i1 %cmp688, label %for.body.690, label %for.end.800

for.body.690:                                     ; preds = %for.cond.687
  %506 = load i32, i32* %yit483, align 4
  %507 = load i32, i32* @width, align 4
  %mul691 = mul i32 %506, %507
  %508 = load i8, i8* @pixelstep, align 1
  %conv692 = zext i8 %508 to i32
  %mul693 = mul i32 %mul691, %conv692
  %509 = load i32, i32* %xit482, align 4
  %510 = load i8, i8* @pixelstep, align 1
  %conv694 = zext i8 %510 to i32
  %mul695 = mul nsw i32 %509, %conv694
  %add696 = add i32 %mul693, %mul695
  %511 = load i8, i8* @pixelstep, align 1
  %conv697 = zext i8 %511 to i32
  %add698 = add i32 %add696, %conv697
  %sub699 = sub i32 %add698, 1
  %idxprom700 = zext i32 %sub699 to i64
  %512 = load i8*, i8** %opti_frame, align 8
  %arrayidx701 = getelementptr inbounds i8, i8* %512, i64 %idxprom700
  %513 = load i8, i8* %arrayidx701, align 1
  %conv702 = zext i8 %513 to i32
  %and703 = and i32 %conv702, 128
  %tobool704 = icmp ne i32 %and703, 0
  br i1 %tobool704, label %if.end.797, label %land.lhs.true.705

land.lhs.true.705:                                ; preds = %for.body.690
  %514 = load i32, i32* %yit483, align 4
  %515 = load i32, i32* @width, align 4
  %mul706 = mul i32 %514, %515
  %516 = load i8, i8* @pixelstep, align 1
  %conv707 = zext i8 %516 to i32
  %mul708 = mul i32 %mul706, %conv707
  %517 = load i32, i32* %xit482, align 4
  %sub709 = sub nsw i32 %517, 1
  %518 = load i8, i8* @pixelstep, align 1
  %conv710 = zext i8 %518 to i32
  %mul711 = mul nsw i32 %sub709, %conv710
  %add712 = add i32 %mul708, %mul711
  %519 = load i8, i8* @pixelstep, align 1
  %conv713 = zext i8 %519 to i32
  %add714 = add i32 %add712, %conv713
  %sub715 = sub i32 %add714, 1
  %idxprom716 = zext i32 %sub715 to i64
  %520 = load i8*, i8** %opti_frame, align 8
  %arrayidx717 = getelementptr inbounds i8, i8* %520, i64 %idxprom716
  %521 = load i8, i8* %arrayidx717, align 1
  %conv718 = zext i8 %521 to i32
  %and719 = and i32 %conv718, 128
  %tobool720 = icmp ne i32 %and719, 0
  br i1 %tobool720, label %land.lhs.true.721, label %if.end.797

land.lhs.true.721:                                ; preds = %land.lhs.true.705
  %522 = load i32, i32* %yit483, align 4
  %523 = load i32, i32* @width, align 4
  %mul722 = mul i32 %522, %523
  %524 = load i8, i8* @pixelstep, align 1
  %conv723 = zext i8 %524 to i32
  %mul724 = mul i32 %mul722, %conv723
  %525 = load i32, i32* %xit482, align 4
  %526 = load i8, i8* @pixelstep, align 1
  %conv725 = zext i8 %526 to i32
  %mul726 = mul nsw i32 %525, %conv725
  %add727 = add i32 %mul724, %mul726
  %527 = load i8, i8* @pixelstep, align 1
  %conv728 = zext i8 %527 to i32
  %add729 = add i32 %add727, %conv728
  %sub730 = sub i32 %add729, 1
  %idxprom731 = zext i32 %sub730 to i64
  %528 = load i8*, i8** %last_frame, align 8
  %arrayidx732 = getelementptr inbounds i8, i8* %528, i64 %idxprom731
  %529 = load i8, i8* %arrayidx732, align 1
  %conv733 = zext i8 %529 to i32
  %and734 = and i32 %conv733, 128
  %tobool735 = icmp ne i32 %and734, 0
  br i1 %tobool735, label %if.then.736, label %if.end.797

if.then.736:                                      ; preds = %land.lhs.true.721
  store i32 0, i32* %byteit484, align 4
  br label %for.cond.737

for.cond.737:                                     ; preds = %for.inc.768, %if.then.736
  %530 = load i32, i32* %byteit484, align 4
  %531 = load i8, i8* @pixelstep, align 1
  %conv738 = zext i8 %531 to i32
  %sub739 = sub nsw i32 %conv738, 1
  %cmp740 = icmp slt i32 %530, %sub739
  br i1 %cmp740, label %for.body.742, label %for.end.770

for.body.742:                                     ; preds = %for.cond.737
  %532 = load i32, i32* %yit483, align 4
  %533 = load i32, i32* @width, align 4
  %mul743 = mul i32 %532, %533
  %534 = load i8, i8* @pixelstep, align 1
  %conv744 = zext i8 %534 to i32
  %mul745 = mul i32 %mul743, %conv744
  %535 = load i32, i32* %xit482, align 4
  %sub746 = sub nsw i32 %535, 1
  %536 = load i8, i8* @pixelstep, align 1
  %conv747 = zext i8 %536 to i32
  %mul748 = mul nsw i32 %sub746, %conv747
  %add749 = add i32 %mul745, %mul748
  %537 = load i32, i32* %byteit484, align 4
  %add750 = add i32 %add749, %537
  %idxprom751 = zext i32 %add750 to i64
  %538 = load i8*, i8** %opti_frame, align 8
  %arrayidx752 = getelementptr inbounds i8, i8* %538, i64 %idxprom751
  %539 = load i8, i8* %arrayidx752, align 1
  %conv753 = zext i8 %539 to i32
  %540 = load i32, i32* %yit483, align 4
  %541 = load i32, i32* @width, align 4
  %mul754 = mul i32 %540, %541
  %542 = load i8, i8* @pixelstep, align 1
  %conv755 = zext i8 %542 to i32
  %mul756 = mul i32 %mul754, %conv755
  %543 = load i32, i32* %xit482, align 4
  %544 = load i8, i8* @pixelstep, align 1
  %conv757 = zext i8 %544 to i32
  %mul758 = mul nsw i32 %543, %conv757
  %add759 = add i32 %mul756, %mul758
  %545 = load i32, i32* %byteit484, align 4
  %add760 = add i32 %add759, %545
  %idxprom761 = zext i32 %add760 to i64
  %546 = load i8*, i8** %last_frame, align 8
  %arrayidx762 = getelementptr inbounds i8, i8* %546, i64 %idxprom761
  %547 = load i8, i8* %arrayidx762, align 1
  %conv763 = zext i8 %547 to i32
  %cmp764 = icmp ne i32 %conv753, %conv763
  br i1 %cmp764, label %if.then.766, label %if.end.767

if.then.766:                                      ; preds = %for.body.742
  br label %skip_right

if.end.767:                                       ; preds = %for.body.742
  br label %for.inc.768

for.inc.768:                                      ; preds = %if.end.767
  %548 = load i32, i32* %byteit484, align 4
  %inc769 = add nsw i32 %548, 1
  store i32 %inc769, i32* %byteit484, align 4
  br label %for.cond.737

for.end.770:                                      ; preds = %for.cond.737
  store i32 0, i32* %byteit484, align 4
  br label %for.cond.771

for.cond.771:                                     ; preds = %for.inc.794, %for.end.770
  %549 = load i32, i32* %byteit484, align 4
  %550 = load i8, i8* @pixelstep, align 1
  %conv772 = zext i8 %550 to i32
  %cmp773 = icmp slt i32 %549, %conv772
  br i1 %cmp773, label %for.body.775, label %for.end.796

for.body.775:                                     ; preds = %for.cond.771
  %551 = load i32, i32* %yit483, align 4
  %552 = load i32, i32* @width, align 4
  %mul776 = mul i32 %551, %552
  %553 = load i8, i8* @pixelstep, align 1
  %conv777 = zext i8 %553 to i32
  %mul778 = mul i32 %mul776, %conv777
  %554 = load i32, i32* %xit482, align 4
  %555 = load i8, i8* @pixelstep, align 1
  %conv779 = zext i8 %555 to i32
  %mul780 = mul nsw i32 %554, %conv779
  %add781 = add i32 %mul778, %mul780
  %556 = load i32, i32* %byteit484, align 4
  %add782 = add i32 %add781, %556
  %idxprom783 = zext i32 %add782 to i64
  %557 = load i8*, i8** %last_frame, align 8
  %arrayidx784 = getelementptr inbounds i8, i8* %557, i64 %idxprom783
  %558 = load i8, i8* %arrayidx784, align 1
  %559 = load i32, i32* %yit483, align 4
  %560 = load i32, i32* @width, align 4
  %mul785 = mul i32 %559, %560
  %561 = load i8, i8* @pixelstep, align 1
  %conv786 = zext i8 %561 to i32
  %mul787 = mul i32 %mul785, %conv786
  %562 = load i32, i32* %xit482, align 4
  %563 = load i8, i8* @pixelstep, align 1
  %conv788 = zext i8 %563 to i32
  %mul789 = mul nsw i32 %562, %conv788
  %add790 = add i32 %mul787, %mul789
  %564 = load i32, i32* %byteit484, align 4
  %add791 = add i32 %add790, %564
  %idxprom792 = zext i32 %add791 to i64
  %565 = load i8*, i8** %opti_frame, align 8
  %arrayidx793 = getelementptr inbounds i8, i8* %565, i64 %idxprom792
  store i8 %558, i8* %arrayidx793, align 1
  br label %for.inc.794

for.inc.794:                                      ; preds = %for.body.775
  %566 = load i32, i32* %byteit484, align 4
  %inc795 = add nsw i32 %566, 1
  store i32 %inc795, i32* %byteit484, align 4
  br label %for.cond.771

for.end.796:                                      ; preds = %for.cond.771
  br label %if.end.797

if.end.797:                                       ; preds = %for.end.796, %land.lhs.true.721, %land.lhs.true.705, %for.body.690
  br label %skip_right

skip_right:                                       ; preds = %if.end.797, %if.then.766
  br label %for.inc.798

for.inc.798:                                      ; preds = %skip_right
  %567 = load i32, i32* %xit482, align 4
  %inc799 = add nsw i32 %567, 1
  store i32 %inc799, i32* %xit482, align 4
  br label %for.cond.687

for.end.800:                                      ; preds = %for.cond.687
  %568 = load i32, i32* %bbox_right, align 4
  %sub801 = sub nsw i32 %568, 2
  store i32 %sub801, i32* %xit482, align 4
  br label %for.cond.802

for.cond.802:                                     ; preds = %for.inc.913, %for.end.800
  %569 = load i32, i32* %xit482, align 4
  %570 = load i32, i32* %bbox_left, align 4
  %cmp803 = icmp sge i32 %569, %570
  br i1 %cmp803, label %for.body.805, label %for.end.914

for.body.805:                                     ; preds = %for.cond.802
  %571 = load i32, i32* %yit483, align 4
  %572 = load i32, i32* @width, align 4
  %mul806 = mul i32 %571, %572
  %573 = load i8, i8* @pixelstep, align 1
  %conv807 = zext i8 %573 to i32
  %mul808 = mul i32 %mul806, %conv807
  %574 = load i32, i32* %xit482, align 4
  %575 = load i8, i8* @pixelstep, align 1
  %conv809 = zext i8 %575 to i32
  %mul810 = mul nsw i32 %574, %conv809
  %add811 = add i32 %mul808, %mul810
  %576 = load i8, i8* @pixelstep, align 1
  %conv812 = zext i8 %576 to i32
  %add813 = add i32 %add811, %conv812
  %sub814 = sub i32 %add813, 1
  %idxprom815 = zext i32 %sub814 to i64
  %577 = load i8*, i8** %opti_frame, align 8
  %arrayidx816 = getelementptr inbounds i8, i8* %577, i64 %idxprom815
  %578 = load i8, i8* %arrayidx816, align 1
  %conv817 = zext i8 %578 to i32
  %and818 = and i32 %conv817, 128
  %tobool819 = icmp ne i32 %and818, 0
  br i1 %tobool819, label %if.end.912, label %land.lhs.true.820

land.lhs.true.820:                                ; preds = %for.body.805
  %579 = load i32, i32* %yit483, align 4
  %580 = load i32, i32* @width, align 4
  %mul821 = mul i32 %579, %580
  %581 = load i8, i8* @pixelstep, align 1
  %conv822 = zext i8 %581 to i32
  %mul823 = mul i32 %mul821, %conv822
  %582 = load i32, i32* %xit482, align 4
  %add824 = add nsw i32 %582, 1
  %583 = load i8, i8* @pixelstep, align 1
  %conv825 = zext i8 %583 to i32
  %mul826 = mul nsw i32 %add824, %conv825
  %add827 = add i32 %mul823, %mul826
  %584 = load i8, i8* @pixelstep, align 1
  %conv828 = zext i8 %584 to i32
  %add829 = add i32 %add827, %conv828
  %sub830 = sub i32 %add829, 1
  %idxprom831 = zext i32 %sub830 to i64
  %585 = load i8*, i8** %opti_frame, align 8
  %arrayidx832 = getelementptr inbounds i8, i8* %585, i64 %idxprom831
  %586 = load i8, i8* %arrayidx832, align 1
  %conv833 = zext i8 %586 to i32
  %and834 = and i32 %conv833, 128
  %tobool835 = icmp ne i32 %and834, 0
  br i1 %tobool835, label %land.lhs.true.836, label %if.end.912

land.lhs.true.836:                                ; preds = %land.lhs.true.820
  %587 = load i32, i32* %yit483, align 4
  %588 = load i32, i32* @width, align 4
  %mul837 = mul i32 %587, %588
  %589 = load i8, i8* @pixelstep, align 1
  %conv838 = zext i8 %589 to i32
  %mul839 = mul i32 %mul837, %conv838
  %590 = load i32, i32* %xit482, align 4
  %591 = load i8, i8* @pixelstep, align 1
  %conv840 = zext i8 %591 to i32
  %mul841 = mul nsw i32 %590, %conv840
  %add842 = add i32 %mul839, %mul841
  %592 = load i8, i8* @pixelstep, align 1
  %conv843 = zext i8 %592 to i32
  %add844 = add i32 %add842, %conv843
  %sub845 = sub i32 %add844, 1
  %idxprom846 = zext i32 %sub845 to i64
  %593 = load i8*, i8** %last_frame, align 8
  %arrayidx847 = getelementptr inbounds i8, i8* %593, i64 %idxprom846
  %594 = load i8, i8* %arrayidx847, align 1
  %conv848 = zext i8 %594 to i32
  %and849 = and i32 %conv848, 128
  %tobool850 = icmp ne i32 %and849, 0
  br i1 %tobool850, label %if.then.851, label %if.end.912

if.then.851:                                      ; preds = %land.lhs.true.836
  store i32 0, i32* %byteit484, align 4
  br label %for.cond.852

for.cond.852:                                     ; preds = %for.inc.883, %if.then.851
  %595 = load i32, i32* %byteit484, align 4
  %596 = load i8, i8* @pixelstep, align 1
  %conv853 = zext i8 %596 to i32
  %sub854 = sub nsw i32 %conv853, 1
  %cmp855 = icmp slt i32 %595, %sub854
  br i1 %cmp855, label %for.body.857, label %for.end.885

for.body.857:                                     ; preds = %for.cond.852
  %597 = load i32, i32* %yit483, align 4
  %598 = load i32, i32* @width, align 4
  %mul858 = mul i32 %597, %598
  %599 = load i8, i8* @pixelstep, align 1
  %conv859 = zext i8 %599 to i32
  %mul860 = mul i32 %mul858, %conv859
  %600 = load i32, i32* %xit482, align 4
  %add861 = add nsw i32 %600, 1
  %601 = load i8, i8* @pixelstep, align 1
  %conv862 = zext i8 %601 to i32
  %mul863 = mul nsw i32 %add861, %conv862
  %add864 = add i32 %mul860, %mul863
  %602 = load i32, i32* %byteit484, align 4
  %add865 = add i32 %add864, %602
  %idxprom866 = zext i32 %add865 to i64
  %603 = load i8*, i8** %opti_frame, align 8
  %arrayidx867 = getelementptr inbounds i8, i8* %603, i64 %idxprom866
  %604 = load i8, i8* %arrayidx867, align 1
  %conv868 = zext i8 %604 to i32
  %605 = load i32, i32* %yit483, align 4
  %606 = load i32, i32* @width, align 4
  %mul869 = mul i32 %605, %606
  %607 = load i8, i8* @pixelstep, align 1
  %conv870 = zext i8 %607 to i32
  %mul871 = mul i32 %mul869, %conv870
  %608 = load i32, i32* %xit482, align 4
  %609 = load i8, i8* @pixelstep, align 1
  %conv872 = zext i8 %609 to i32
  %mul873 = mul nsw i32 %608, %conv872
  %add874 = add i32 %mul871, %mul873
  %610 = load i32, i32* %byteit484, align 4
  %add875 = add i32 %add874, %610
  %idxprom876 = zext i32 %add875 to i64
  %611 = load i8*, i8** %last_frame, align 8
  %arrayidx877 = getelementptr inbounds i8, i8* %611, i64 %idxprom876
  %612 = load i8, i8* %arrayidx877, align 1
  %conv878 = zext i8 %612 to i32
  %cmp879 = icmp ne i32 %conv868, %conv878
  br i1 %cmp879, label %if.then.881, label %if.end.882

if.then.881:                                      ; preds = %for.body.857
  br label %skip_left

if.end.882:                                       ; preds = %for.body.857
  br label %for.inc.883

for.inc.883:                                      ; preds = %if.end.882
  %613 = load i32, i32* %byteit484, align 4
  %inc884 = add nsw i32 %613, 1
  store i32 %inc884, i32* %byteit484, align 4
  br label %for.cond.852

for.end.885:                                      ; preds = %for.cond.852
  store i32 0, i32* %byteit484, align 4
  br label %for.cond.886

for.cond.886:                                     ; preds = %for.inc.909, %for.end.885
  %614 = load i32, i32* %byteit484, align 4
  %615 = load i8, i8* @pixelstep, align 1
  %conv887 = zext i8 %615 to i32
  %cmp888 = icmp slt i32 %614, %conv887
  br i1 %cmp888, label %for.body.890, label %for.end.911

for.body.890:                                     ; preds = %for.cond.886
  %616 = load i32, i32* %yit483, align 4
  %617 = load i32, i32* @width, align 4
  %mul891 = mul i32 %616, %617
  %618 = load i8, i8* @pixelstep, align 1
  %conv892 = zext i8 %618 to i32
  %mul893 = mul i32 %mul891, %conv892
  %619 = load i32, i32* %xit482, align 4
  %620 = load i8, i8* @pixelstep, align 1
  %conv894 = zext i8 %620 to i32
  %mul895 = mul nsw i32 %619, %conv894
  %add896 = add i32 %mul893, %mul895
  %621 = load i32, i32* %byteit484, align 4
  %add897 = add i32 %add896, %621
  %idxprom898 = zext i32 %add897 to i64
  %622 = load i8*, i8** %last_frame, align 8
  %arrayidx899 = getelementptr inbounds i8, i8* %622, i64 %idxprom898
  %623 = load i8, i8* %arrayidx899, align 1
  %624 = load i32, i32* %yit483, align 4
  %625 = load i32, i32* @width, align 4
  %mul900 = mul i32 %624, %625
  %626 = load i8, i8* @pixelstep, align 1
  %conv901 = zext i8 %626 to i32
  %mul902 = mul i32 %mul900, %conv901
  %627 = load i32, i32* %xit482, align 4
  %628 = load i8, i8* @pixelstep, align 1
  %conv903 = zext i8 %628 to i32
  %mul904 = mul nsw i32 %627, %conv903
  %add905 = add i32 %mul902, %mul904
  %629 = load i32, i32* %byteit484, align 4
  %add906 = add i32 %add905, %629
  %idxprom907 = zext i32 %add906 to i64
  %630 = load i8*, i8** %opti_frame, align 8
  %arrayidx908 = getelementptr inbounds i8, i8* %630, i64 %idxprom907
  store i8 %623, i8* %arrayidx908, align 1
  br label %for.inc.909

for.inc.909:                                      ; preds = %for.body.890
  %631 = load i32, i32* %byteit484, align 4
  %inc910 = add nsw i32 %631, 1
  store i32 %inc910, i32* %byteit484, align 4
  br label %for.cond.886

for.end.911:                                      ; preds = %for.cond.886
  br label %if.end.912

if.end.912:                                       ; preds = %for.end.911, %land.lhs.true.836, %land.lhs.true.820, %for.body.805
  br label %skip_left

skip_left:                                        ; preds = %if.end.912, %if.then.881
  br label %for.inc.913

for.inc.913:                                      ; preds = %skip_left
  %632 = load i32, i32* %xit482, align 4
  %dec = add nsw i32 %632, -1
  store i32 %dec, i32* %xit482, align 4
  br label %for.cond.802

for.end.914:                                      ; preds = %for.cond.802
  br label %for.inc.915

for.inc.915:                                      ; preds = %for.end.914
  %633 = load i32, i32* %yit483, align 4
  %inc916 = add nsw i32 %633, 1
  store i32 %inc916, i32* %yit483, align 4
  br label %for.cond.682

for.end.917:                                      ; preds = %for.cond.682
  br label %if.end.918

if.end.918:                                       ; preds = %for.end.917, %land.lhs.true.679, %if.end.675
  %634 = load i8*, i8** %opti_frame, align 8
  store i8* %634, i8** %destptr, align 8
  %635 = load i32, i32* %can_combine, align 4
  %tobool919 = icmp ne i32 %635, 0
  br i1 %tobool919, label %if.then.920, label %if.else.921

if.then.920:                                      ; preds = %if.end.918
  %636 = load i8*, i8** %opti_frame, align 8
  store i8* %636, i8** %srcptr, align 8
  br label %if.end.922

if.else.921:                                      ; preds = %if.end.918
  %637 = load i8*, i8** %this_frame, align 8
  store i8* %637, i8** %srcptr, align 8
  br label %if.end.922

if.end.922:                                       ; preds = %if.else.921, %if.then.920
  %638 = load i32, i32* %bbox_top, align 4
  store i32 %638, i32* %yit483, align 4
  br label %for.cond.923

for.cond.923:                                     ; preds = %for.inc.951, %if.end.922
  %639 = load i32, i32* %yit483, align 4
  %640 = load i32, i32* %bbox_bottom, align 4
  %cmp924 = icmp slt i32 %639, %640
  br i1 %cmp924, label %for.body.926, label %for.end.953

for.body.926:                                     ; preds = %for.cond.923
  %641 = load i32, i32* %bbox_left, align 4
  store i32 %641, i32* %xit482, align 4
  br label %for.cond.927

for.cond.927:                                     ; preds = %for.inc.948, %for.body.926
  %642 = load i32, i32* %xit482, align 4
  %643 = load i32, i32* %bbox_right, align 4
  %cmp928 = icmp slt i32 %642, %643
  br i1 %cmp928, label %for.body.930, label %for.end.950

for.body.930:                                     ; preds = %for.cond.927
  store i32 0, i32* %byteit484, align 4
  br label %for.cond.931

for.cond.931:                                     ; preds = %for.inc.945, %for.body.930
  %644 = load i32, i32* %byteit484, align 4
  %645 = load i8, i8* @pixelstep, align 1
  %conv932 = zext i8 %645 to i32
  %cmp933 = icmp slt i32 %644, %conv932
  br i1 %cmp933, label %for.body.935, label %for.end.947

for.body.935:                                     ; preds = %for.cond.931
  %646 = load i32, i32* %yit483, align 4
  %647 = load i8, i8* @pixelstep, align 1
  %conv936 = zext i8 %647 to i32
  %mul937 = mul nsw i32 %646, %conv936
  %648 = load i32, i32* @width, align 4
  %mul938 = mul i32 %mul937, %648
  %649 = load i8, i8* @pixelstep, align 1
  %conv939 = zext i8 %649 to i32
  %650 = load i32, i32* %xit482, align 4
  %mul940 = mul nsw i32 %conv939, %650
  %add941 = add i32 %mul938, %mul940
  %651 = load i32, i32* %byteit484, align 4
  %add942 = add i32 %add941, %651
  %idxprom943 = zext i32 %add942 to i64
  %652 = load i8*, i8** %srcptr, align 8
  %arrayidx944 = getelementptr inbounds i8, i8* %652, i64 %idxprom943
  %653 = load i8, i8* %arrayidx944, align 1
  %654 = load i8*, i8** %destptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %654, i32 1
  store i8* %incdec.ptr, i8** %destptr, align 8
  store i8 %653, i8* %654, align 1
  br label %for.inc.945

for.inc.945:                                      ; preds = %for.body.935
  %655 = load i32, i32* %byteit484, align 4
  %inc946 = add nsw i32 %655, 1
  store i32 %inc946, i32* %byteit484, align 4
  br label %for.cond.931

for.end.947:                                      ; preds = %for.cond.931
  br label %for.inc.948

for.inc.948:                                      ; preds = %for.end.947
  %656 = load i32, i32* %xit482, align 4
  %inc949 = add nsw i32 %656, 1
  store i32 %inc949, i32* %xit482, align 4
  br label %for.cond.927

for.end.950:                                      ; preds = %for.cond.927
  br label %for.inc.951

for.inc.951:                                      ; preds = %for.end.950
  %657 = load i32, i32* %yit483, align 4
  %inc952 = add nsw i32 %657, 1
  store i32 %inc952, i32* %yit483, align 4
  br label %for.cond.923

for.end.953:                                      ; preds = %for.cond.923
  br label %if.end.956

if.else.954:                                      ; preds = %land.lhs.true.478, %if.end.474
  %658 = load i8*, i8** %opti_frame, align 8
  %659 = load i8*, i8** %this_frame, align 8
  %660 = load i32, i32* %frame_sizebytes, align 4
  %conv955 = zext i32 %660 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %658, i8* %659, i64 %conv955, i32 1, i1 false)
  br label %if.end.956

if.end.956:                                       ; preds = %if.else.954, %for.end.953
  %661 = load i8*, i8** %last_frame, align 8
  %662 = load i8*, i8** %this_frame, align 8
  %663 = load i32, i32* %frame_sizebytes, align 4
  %conv957 = zext i32 %663 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %661, i8* %662, i64 %conv957, i32 1, i1 false)
  %664 = load i32, i32* @total_frames, align 4
  %665 = load i32, i32* %this_frame_num, align 4
  %add958 = add nsw i32 %665, 1
  %sub959 = sub nsw i32 %664, %add958
  %idxprom960 = sext i32 %sub959 to i64
  %666 = load i32*, i32** @layers, align 8
  %arrayidx961 = getelementptr inbounds i32, i32* %666, i64 %idxprom960
  %667 = load i32, i32* %arrayidx961, align 4
  %call962 = call i8* @gimp_item_get_name(i32 %667)
  store i8* %call962, i8** %oldlayer_name, align 8
  %668 = load i8*, i8** %oldlayer_name, align 8
  %call963 = call i64 @strlen(i8* %668) #8
  %add964 = add i64 %call963, 40
  %conv965 = trunc i64 %add964 to i32
  store i32 %conv965, i32* %buflen, align 4
  %669 = load i32, i32* %buflen, align 4
  %conv966 = sext i32 %669 to i64
  %call967 = call noalias i8* @g_malloc(i64 %conv966)
  store i8* %call967, i8** %newlayer_name, align 8
  %670 = load i8*, i8** %newlayer_name, align 8
  %671 = load i8*, i8** %oldlayer_name, align 8
  call void @remove_disposal_tag(i8* %670, i8* %671)
  %672 = load i8*, i8** %oldlayer_name, align 8
  call void @g_free(i8* %672)
  %673 = load i32, i32* %buflen, align 4
  %conv968 = sext i32 %673 to i64
  %call969 = call noalias i8* @g_malloc(i64 %conv968)
  store i8* %call969, i8** %oldlayer_name, align 8
  %674 = load i8*, i8** %oldlayer_name, align 8
  %675 = load i8*, i8** %newlayer_name, align 8
  call void @remove_ms_tag(i8* %674, i8* %675)
  %676 = load i8*, i8** %newlayer_name, align 8
  %677 = load i32, i32* %buflen, align 4
  %conv970 = sext i32 %677 to i64
  %678 = load i8*, i8** %oldlayer_name, align 8
  %679 = load i32, i32* %this_delay, align 4
  %680 = load i32, i32* %this_frame_num, align 4
  %cmp971 = icmp eq i32 %680, 0
  br i1 %cmp971, label %cond.true.973, label %cond.false.974

cond.true.973:                                    ; preds = %if.end.956
  br label %cond.end.977

cond.false.974:                                   ; preds = %if.end.956
  %681 = load i32, i32* %can_combine, align 4
  %tobool975 = icmp ne i32 %681, 0
  %cond976 = select i1 %tobool975, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0)
  br label %cond.end.977

cond.end.977:                                     ; preds = %cond.false.974, %cond.true.973
  %cond978 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.38, i32 0, i32 0), %cond.true.973 ], [ %cond976, %cond.false.974 ]
  %call979 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %676, i64 %conv970, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), i8* %678, i32 %679, i8* %cond978)
  %682 = load i8*, i8** %oldlayer_name, align 8
  call void @g_free(i8* %682)
  %683 = load i32, i32* %bbox_right, align 4
  %684 = load i32, i32* %bbox_left, align 4
  %cmp980 = icmp sle i32 %683, %684
  br i1 %cmp980, label %if.then.985, label %lor.lhs.false.982

lor.lhs.false.982:                                ; preds = %cond.end.977
  %685 = load i32, i32* %bbox_bottom, align 4
  %686 = load i32, i32* %bbox_top, align 4
  %cmp983 = icmp sle i32 %685, %686
  br i1 %cmp983, label %if.then.985, label %if.else.1006

if.then.985:                                      ; preds = %lor.lhs.false.982, %cond.end.977
  %687 = load i32, i32* %this_delay, align 4
  %688 = load i32, i32* %cumulated_delay, align 4
  %add986 = add nsw i32 %688, %687
  store i32 %add986, i32* %cumulated_delay, align 4
  %689 = load i8*, i8** %newlayer_name, align 8
  call void @g_free(i8* %689)
  %690 = load i32, i32* %last_true_frame, align 4
  %call987 = call i8* @gimp_item_get_name(i32 %690)
  store i8* %call987, i8** %oldlayer_name, align 8
  %691 = load i8*, i8** %oldlayer_name, align 8
  %call988 = call i64 @strlen(i8* %691) #8
  %add989 = add i64 %call988, 40
  %conv990 = trunc i64 %add989 to i32
  store i32 %conv990, i32* %buflen, align 4
  %692 = load i32, i32* %buflen, align 4
  %conv991 = sext i32 %692 to i64
  %call992 = call noalias i8* @g_malloc(i64 %conv991)
  store i8* %call992, i8** %newlayer_name, align 8
  %693 = load i8*, i8** %newlayer_name, align 8
  %694 = load i8*, i8** %oldlayer_name, align 8
  call void @remove_disposal_tag(i8* %693, i8* %694)
  %695 = load i8*, i8** %oldlayer_name, align 8
  call void @g_free(i8* %695)
  %696 = load i32, i32* %buflen, align 4
  %conv993 = sext i32 %696 to i64
  %call994 = call noalias i8* @g_malloc(i64 %conv993)
  store i8* %call994, i8** %oldlayer_name, align 8
  %697 = load i8*, i8** %oldlayer_name, align 8
  %698 = load i8*, i8** %newlayer_name, align 8
  call void @remove_ms_tag(i8* %697, i8* %698)
  %699 = load i8*, i8** %newlayer_name, align 8
  %700 = load i32, i32* %buflen, align 4
  %conv995 = sext i32 %700 to i64
  %701 = load i8*, i8** %oldlayer_name, align 8
  %702 = load i32, i32* %cumulated_delay, align 4
  %703 = load i32, i32* %this_frame_num, align 4
  %cmp996 = icmp eq i32 %703, 0
  br i1 %cmp996, label %cond.true.998, label %cond.false.999

cond.true.998:                                    ; preds = %if.then.985
  br label %cond.end.1002

cond.false.999:                                   ; preds = %if.then.985
  %704 = load i32, i32* %can_combine, align 4
  %tobool1000 = icmp ne i32 %704, 0
  %cond1001 = select i1 %tobool1000, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0)
  br label %cond.end.1002

cond.end.1002:                                    ; preds = %cond.false.999, %cond.true.998
  %cond1003 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.38, i32 0, i32 0), %cond.true.998 ], [ %cond1001, %cond.false.999 ]
  %call1004 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %699, i64 %conv995, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), i8* %701, i32 %702, i8* %cond1003)
  %705 = load i32, i32* %last_true_frame, align 4
  %706 = load i8*, i8** %newlayer_name, align 8
  %call1005 = call i32 @gimp_item_set_name(i32 %705, i8* %706)
  %707 = load i8*, i8** %newlayer_name, align 8
  call void @g_free(i8* %707)
  br label %if.end.1017

if.else.1006:                                     ; preds = %lor.lhs.false.982
  %708 = load i32, i32* %this_delay, align 4
  store i32 %708, i32* %cumulated_delay, align 4
  %709 = load i32, i32* @new_image_id, align 4
  %710 = load i8*, i8** %newlayer_name, align 8
  %711 = load i32, i32* %bbox_right, align 4
  %712 = load i32, i32* %bbox_left, align 4
  %sub1007 = sub nsw i32 %711, %712
  %713 = load i32, i32* %bbox_bottom, align 4
  %714 = load i32, i32* %bbox_top, align 4
  %sub1008 = sub nsw i32 %713, %714
  %715 = load i32, i32* @drawabletype_alpha, align 4
  %call1009 = call i32 @gimp_layer_new(i32 %709, i8* %710, i32 %sub1007, i32 %sub1008, i32 %715, double 1.000000e+02, i32 0)
  store i32 %call1009, i32* %new_layer_id, align 4
  store i32 %call1009, i32* %last_true_frame, align 4
  %716 = load i8*, i8** %newlayer_name, align 8
  call void @g_free(i8* %716)
  %717 = load i32, i32* @new_image_id, align 4
  %718 = load i32, i32* %new_layer_id, align 4
  %call1010 = call i32 @gimp_image_insert_layer(i32 %717, i32 %718, i32 -1, i32 0)
  %719 = load i32, i32* %new_layer_id, align 4
  %call1011 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %719)
  store %struct._GimpDrawable* %call1011, %struct._GimpDrawable** @drawable, align 8
  %720 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  %721 = load i32, i32* %bbox_right, align 4
  %722 = load i32, i32* %bbox_left, align 4
  %sub1012 = sub nsw i32 %721, %722
  %723 = load i32, i32* %bbox_bottom, align 4
  %724 = load i32, i32* %bbox_top, align 4
  %sub1013 = sub nsw i32 %723, %724
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %720, i32 0, i32 0, i32 %sub1012, i32 %sub1013, i32 1, i32 0)
  %725 = load i8*, i8** %opti_frame, align 8
  %726 = load i32, i32* %bbox_right, align 4
  %727 = load i32, i32* %bbox_left, align 4
  %sub1014 = sub nsw i32 %726, %727
  %728 = load i32, i32* %bbox_bottom, align 4
  %729 = load i32, i32* %bbox_top, align 4
  %sub1015 = sub nsw i32 %728, %729
  call void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %725, i32 0, i32 0, i32 %sub1014, i32 %sub1015)
  %730 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %730)
  %731 = load %struct._GimpDrawable*, %struct._GimpDrawable** @drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %731)
  %732 = load i32, i32* %new_layer_id, align 4
  %733 = load i32, i32* %bbox_left, align 4
  %734 = load i32, i32* %bbox_top, align 4
  %call1016 = call i32 @gimp_layer_translate(i32 %732, i32 %733, i32 %734)
  br label %if.end.1017

if.end.1017:                                      ; preds = %if.else.1006, %cond.end.1002
  %735 = load i32, i32* %this_frame_num, align 4
  %conv1018 = sitofp i32 %735 to double
  %add1019 = fadd double %conv1018, 1.000000e+00
  %736 = load i32, i32* @total_frames, align 4
  %conv1020 = sitofp i32 %736 to double
  %div = fdiv double %add1019, %conv1020
  %call1021 = call i32 @gimp_progress_update(double %div)
  br label %for.inc.1022

for.inc.1022:                                     ; preds = %if.end.1017
  %737 = load i32, i32* %this_frame_num, align 4
  %inc1023 = add nsw i32 %737, 1
  store i32 %inc1023, i32* %this_frame_num, align 4
  br label %for.cond.385

for.end.1024:                                     ; preds = %for.cond.385
  %call1025 = call i32 @gimp_progress_update(double 1.000000e+00)
  br label %if.end.1026

if.end.1026:                                      ; preds = %for.end.1024, %if.then.381
  %738 = load i32, i32* @new_image_id, align 4
  %call1027 = call i32 @gimp_image_undo_enable(i32 %738)
  %739 = load i32, i32* %run_mode.addr, align 4
  %cmp1028 = icmp ne i32 %739, 1
  br i1 %cmp1028, label %if.then.1030, label %if.end.1032

if.then.1030:                                     ; preds = %if.end.1026
  %740 = load i32, i32* @new_image_id, align 4
  %call1031 = call i32 @gimp_display_new(i32 %740)
  br label %if.end.1032

if.end.1032:                                      ; preds = %if.then.1030, %if.end.1026
  %741 = load i8*, i8** @do_optimizations.rawframe, align 8
  call void @g_free(i8* %741)
  store i8* null, i8** @do_optimizations.rawframe, align 8
  %742 = load i8*, i8** %last_frame, align 8
  call void @g_free(i8* %742)
  store i8* null, i8** %last_frame, align 8
  %743 = load i8*, i8** %this_frame, align 8
  call void @g_free(i8* %743)
  store i8* null, i8** %this_frame, align 8
  %744 = load i8*, i8** %opti_frame, align 8
  call void @g_free(i8* %744)
  store i8* null, i8** %opti_frame, align 8
  %745 = load i8*, i8** %back_frame, align 8
  call void @g_free(i8* %745)
  store i8* null, i8** %back_frame, align 8
  %746 = load i32, i32* @new_image_id, align 4
  ret i32 %746
}

declare i32 @gimp_displays_flush() #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i32 @gimp_image_width(i32) #1

declare i32 @gimp_image_height(i32) #1

declare i32* @gimp_image_get_layers(i32, i32*) #1

declare i32 @gimp_image_base_type(i32) #1

declare noalias i8* @g_malloc(i64) #1

; Function Attrs: nounwind uwtable
define internal void @total_alpha(i8* %imdata, i32 %numpix, i8 zeroext %bytespp) #0 {
entry:
  %imdata.addr = alloca i8*, align 8
  %numpix.addr = alloca i32, align 4
  %bytespp.addr = alloca i8, align 1
  store i8* %imdata, i8** %imdata.addr, align 8
  store i32 %numpix, i32* %numpix.addr, align 4
  store i8 %bytespp, i8* %bytespp.addr, align 1
  %0 = load i8*, i8** %imdata.addr, align 8
  %1 = load i32, i32* %numpix.addr, align 4
  %2 = load i8, i8* %bytespp.addr, align 1
  %conv = zext i8 %2 to i32
  %mul = mul i32 %1, %conv
  %conv1 = zext i32 %mul to i64
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 %conv1, i32 1, i1 false)
  ret void
}

declare i32 @gimp_image_new(i32, i32, i32) #1

declare i32 @gimp_image_undo_disable(i32) #1

declare i8* @gimp_image_get_colormap(i32, i32*) #1

declare i32 @gimp_image_set_colormap(i32, i8*, i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @get_frame_disposal(i32 %whichframe) #0 {
entry:
  %whichframe.addr = alloca i32, align 4
  %layer_name = alloca i8*, align 8
  %disposal = alloca i32, align 4
  store i32 %whichframe, i32* %whichframe.addr, align 4
  %0 = load i32, i32* @total_frames, align 4
  %1 = load i32, i32* %whichframe.addr, align 4
  %add = add i32 %1, 1
  %sub = sub i32 %0, %add
  %idxprom = zext i32 %sub to i64
  %2 = load i32*, i32** @layers, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %call = call i8* @gimp_item_get_name(i32 %3)
  store i8* %call, i8** %layer_name, align 8
  %4 = load i8*, i8** %layer_name, align 8
  %call1 = call i32 @parse_disposal_tag(i8* %4)
  store i32 %call1, i32* %disposal, align 4
  %5 = load i8*, i8** %layer_name, align 8
  call void @g_free(i8* %5)
  %6 = load i32, i32* %disposal, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal void @compose_row(i32 %frame_num, i32 %dispose, i32 %row_num, i8* %dest, i32 %dest_width, %struct._GimpDrawable* %drawable, i32 %cleanup) #0 {
entry:
  %frame_num.addr = alloca i32, align 4
  %dispose.addr = alloca i32, align 4
  %row_num.addr = alloca i32, align 4
  %dest.addr = alloca i8*, align 8
  %dest_width.addr = alloca i32, align 4
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %cleanup.addr = alloca i32, align 4
  %srcptr = alloca i8*, align 8
  %pixel_rgn = alloca %struct._GimpPixelRgn, align 8
  %rawx = alloca i32, align 4
  %rawy = alloca i32, align 4
  %rawbpp = alloca i32, align 4
  %rawwidth = alloca i32, align 4
  %rawheight = alloca i32, align 4
  %i = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %pi = alloca i32, align 4
  store i32 %frame_num, i32* %frame_num.addr, align 4
  store i32 %dispose, i32* %dispose.addr, align 4
  store i32 %row_num, i32* %row_num.addr, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %dest_width, i32* %dest_width.addr, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %cleanup, i32* %cleanup.addr, align 4
  %0 = load i32, i32* %cleanup.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @compose_row.line_buf, align 8
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %2 = load i8*, i8** @compose_row.line_buf, align 8
  call void @g_free(i8* %2)
  store i8* null, i8** @compose_row.line_buf, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %for.end.61

if.end.3:                                         ; preds = %entry
  %3 = load i32, i32* %dispose.addr, align 4
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.3
  %4 = load i8*, i8** %dest.addr, align 8
  %5 = load i32, i32* %dest_width.addr, align 4
  %6 = load i8, i8* @pixelstep, align 1
  call void @total_alpha(i8* %4, i32 %5, i8 zeroext %6)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end.3
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 0
  %8 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_offsets(i32 %8, i32* %rawx, i32* %rawy)
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id6 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 0
  %10 = load i32, i32* %drawable_id6, align 4
  %call7 = call i32 @gimp_drawable_height(i32 %10)
  store i32 %call7, i32* %rawheight, align 4
  %11 = load i32, i32* %row_num.addr, align 4
  %12 = load i32, i32* %rawheight, align 4
  %13 = load i32, i32* %rawy, align 4
  %add = add nsw i32 %12, %13
  %cmp8 = icmp sge i32 %11, %add
  br i1 %cmp8, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.5
  %14 = load i32, i32* %row_num.addr, align 4
  %15 = load i32, i32* %rawy, align 4
  %cmp9 = icmp slt i32 %14, %15
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false, %if.end.5
  br label %for.end.61

if.end.11:                                        ; preds = %lor.lhs.false
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id12 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %16, i32 0, i32 0
  %17 = load i32, i32* %drawable_id12, align 4
  %call13 = call i32 @gimp_drawable_bpp(i32 %17)
  store i32 %call13, i32* %rawbpp, align 4
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id14 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %18, i32 0, i32 0
  %19 = load i32, i32* %drawable_id14, align 4
  %call15 = call i32 @gimp_drawable_width(i32 %19)
  store i32 %call15, i32* %rawwidth, align 4
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id16 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %20, i32 0, i32 0
  %21 = load i32, i32* %drawable_id16, align 4
  %call17 = call i32 @gimp_drawable_has_alpha(i32 %21)
  store i32 %call17, i32* %has_alpha, align 4
  %22 = load i8*, i8** @compose_row.line_buf, align 8
  %tobool18 = icmp ne i8* %22, null
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.11
  %23 = load i8*, i8** @compose_row.line_buf, align 8
  call void @g_free(i8* %23)
  store i8* null, i8** @compose_row.line_buf, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.11
  %24 = load i32, i32* %rawwidth, align 4
  %25 = load i32, i32* %rawbpp, align 4
  %mul = mul nsw i32 %24, %25
  %conv = sext i32 %mul to i64
  %call21 = call noalias i8* @g_malloc(i64 %conv)
  store i8* %call21, i8** @compose_row.line_buf, align 8
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %27 = load i32, i32* %row_num.addr, align 4
  %28 = load i32, i32* %rawy, align 4
  %sub = sub nsw i32 %27, %28
  %29 = load i32, i32* %rawwidth, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pixel_rgn, %struct._GimpDrawable* %26, i32 0, i32 %sub, i32 %29, i32 1, i32 0, i32 0)
  %30 = load i8*, i8** @compose_row.line_buf, align 8
  %31 = load i32, i32* %row_num.addr, align 4
  %32 = load i32, i32* %rawy, align 4
  %sub22 = sub nsw i32 %31, %32
  %33 = load i32, i32* %rawwidth, align 4
  call void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %pixel_rgn, i8* %30, i32 0, i32 %sub22, i32 %33, i32 1)
  %34 = load i8*, i8** @compose_row.line_buf, align 8
  store i8* %34, i8** %srcptr, align 8
  %35 = load i32, i32* %rawx, align 4
  store i32 %35, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.59, %if.end.20
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* %rawwidth, align 4
  %38 = load i32, i32* %rawx, align 4
  %add23 = add nsw i32 %37, %38
  %cmp24 = icmp slt i32 %36, %add23
  br i1 %cmp24, label %for.body, label %for.end.61

for.body:                                         ; preds = %for.cond
  %39 = load i32, i32* %i, align 4
  %cmp26 = icmp sge i32 %39, 0
  br i1 %cmp26, label %land.lhs.true, label %if.end.56

land.lhs.true:                                    ; preds = %for.body
  %40 = load i32, i32* %i, align 4
  %41 = load i32, i32* %dest_width.addr, align 4
  %cmp28 = icmp slt i32 %40, %41
  br i1 %cmp28, label %if.then.30, label %if.end.56

if.then.30:                                       ; preds = %land.lhs.true
  %42 = load i32, i32* %has_alpha, align 4
  %tobool31 = icmp ne i32 %42, 0
  br i1 %tobool31, label %lor.lhs.false.32, label %if.then.36

lor.lhs.false.32:                                 ; preds = %if.then.30
  %43 = load i8*, i8** %srcptr, align 8
  %44 = load i32, i32* %rawbpp, align 4
  %idx.ext = sext i32 %44 to i64
  %add.ptr = getelementptr inbounds i8, i8* %43, i64 %idx.ext
  %add.ptr33 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %45 = load i8, i8* %add.ptr33, align 1
  %conv34 = zext i8 %45 to i32
  %and = and i32 %conv34, 128
  %tobool35 = icmp ne i32 %and, 0
  br i1 %tobool35, label %if.then.36, label %if.end.55

if.then.36:                                       ; preds = %lor.lhs.false.32, %if.then.30
  store i32 0, i32* %pi, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc, %if.then.36
  %46 = load i32, i32* %pi, align 4
  %47 = load i8, i8* @pixelstep, align 1
  %conv38 = zext i8 %47 to i32
  %sub39 = sub nsw i32 %conv38, 1
  %cmp40 = icmp slt i32 %46, %sub39
  br i1 %cmp40, label %for.body.42, label %for.end

for.body.42:                                      ; preds = %for.cond.37
  %48 = load i8*, i8** %srcptr, align 8
  %49 = load i32, i32* %pi, align 4
  %idx.ext43 = sext i32 %49 to i64
  %add.ptr44 = getelementptr inbounds i8, i8* %48, i64 %idx.ext43
  %50 = load i8, i8* %add.ptr44, align 1
  %51 = load i32, i32* %i, align 4
  %52 = load i8, i8* @pixelstep, align 1
  %conv45 = zext i8 %52 to i32
  %mul46 = mul nsw i32 %51, %conv45
  %53 = load i32, i32* %pi, align 4
  %add47 = add nsw i32 %mul46, %53
  %idxprom = sext i32 %add47 to i64
  %54 = load i8*, i8** %dest.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %54, i64 %idxprom
  store i8 %50, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.42
  %55 = load i32, i32* %pi, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %pi, align 4
  br label %for.cond.37

for.end:                                          ; preds = %for.cond.37
  %56 = load i32, i32* %i, align 4
  %57 = load i8, i8* @pixelstep, align 1
  %conv48 = zext i8 %57 to i32
  %mul49 = mul nsw i32 %56, %conv48
  %58 = load i8, i8* @pixelstep, align 1
  %conv50 = zext i8 %58 to i32
  %add51 = add nsw i32 %mul49, %conv50
  %sub52 = sub nsw i32 %add51, 1
  %idxprom53 = sext i32 %sub52 to i64
  %59 = load i8*, i8** %dest.addr, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %59, i64 %idxprom53
  store i8 -1, i8* %arrayidx54, align 1
  br label %if.end.55

if.end.55:                                        ; preds = %for.end, %lor.lhs.false.32
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %land.lhs.true, %for.body
  %60 = load i32, i32* %rawbpp, align 4
  %61 = load i8*, i8** %srcptr, align 8
  %idx.ext57 = sext i32 %60 to i64
  %add.ptr58 = getelementptr inbounds i8, i8* %61, i64 %idx.ext57
  store i8* %add.ptr58, i8** %srcptr, align 8
  br label %for.inc.59

for.inc.59:                                       ; preds = %if.end.56
  %62 = load i32, i32* %i, align 4
  %inc60 = add nsw i32 %62, 1
  store i32 %inc60, i32* %i, align 4
  br label %for.cond

for.end.61:                                       ; preds = %if.end, %if.then.10, %for.cond
  ret void
}

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

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

declare void @g_free(i8*) #1

declare i32 @gimp_layer_new(i32, i8*, i32, i32, i32, double, i32) #1

declare i32 @gimp_image_insert_layer(i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_width(i32) #1

; Function Attrs: noreturn
declare void @gimp_quit() #6

; Function Attrs: nounwind uwtable
define internal i32 @get_frame_duration(i32 %whichframe) #0 {
entry:
  %whichframe.addr = alloca i32, align 4
  %layer_name = alloca i8*, align 8
  %duration = alloca i32, align 4
  store i32 %whichframe, i32* %whichframe.addr, align 4
  store i32 0, i32* %duration, align 4
  %0 = load i32, i32* @total_frames, align 4
  %1 = load i32, i32* %whichframe.addr, align 4
  %add = add i32 %1, 1
  %sub = sub i32 %0, %add
  %idxprom = zext i32 %sub to i64
  %2 = load i32*, i32** @layers, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %call = call i8* @gimp_item_get_name(i32 %3)
  store i8* %call, i8** %layer_name, align 8
  %4 = load i8*, i8** %layer_name, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %layer_name, align 8
  %call1 = call i32 @parse_ms_tag(i8* %5)
  store i32 %call1, i32* %duration, align 4
  %6 = load i8*, i8** %layer_name, align 8
  call void @g_free(i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %duration, align 4
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 100, i32* %duration, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %8 = load i32, i32* %duration, align 4
  %cmp4 = icmp eq i32 %8, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  store i32 100, i32* %duration, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  %9 = load i32, i32* %duration, align 4
  ret i32 %9
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare i8* @gimp_item_get_name(i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define internal void @remove_disposal_tag(i8* %dest, i8* %src) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %offset = alloca i32, align 4
  %destoffset = alloca i32, align 4
  %length = alloca i32, align 4
  %taglength = alloca i32, align 4
  %dummy = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 0, i32* %offset, align 4
  store i32 0, i32* %destoffset, align 4
  %0 = load i8*, i8** %src.addr, align 8
  %call = call i64 @strlen(i8* %0) #8
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %length, align 4
  %1 = load i8*, i8** %dest.addr, align 8
  %2 = load i8*, i8** %src.addr, align 8
  %call1 = call i8* @strcpy(i8* %1, i8* %2) #5
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load i32, i32* %offset, align 4
  %4 = load i32, i32* %length, align 4
  %cmp = icmp sle i32 %3, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %offset, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %call3 = call i32 @is_disposal_tag(i8* %arrayidx, i32* %dummy, i32* %taglength)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %7 = load i32, i32* %taglength, align 4
  %8 = load i32, i32* %offset, align 4
  %add = add nsw i32 %8, %7
  store i32 %add, i32* %offset, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %9 = load i32, i32* %offset, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load i8*, i8** %src.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %10, i64 %idxprom4
  %11 = load i8, i8* %arrayidx5, align 1
  %12 = load i32, i32* %destoffset, align 4
  %idxprom6 = sext i32 %12 to i64
  %13 = load i8*, i8** %dest.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %13, i64 %idxprom6
  store i8 %11, i8* %arrayidx7, align 1
  %14 = load i32, i32* %destoffset, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %destoffset, align 4
  %15 = load i32, i32* %offset, align 4
  %inc8 = add nsw i32 %15, 1
  store i32 %inc8, i32* %offset, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load i32, i32* %offset, align 4
  %idxprom9 = sext i32 %16 to i64
  %17 = load i8*, i8** %dest.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %17, i64 %idxprom9
  store i8 0, i8* %arrayidx10, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @remove_ms_tag(i8* %dest, i8* %src) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %offset = alloca i32, align 4
  %destoffset = alloca i32, align 4
  %length = alloca i32, align 4
  %taglength = alloca i32, align 4
  %dummy = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 0, i32* %offset, align 4
  store i32 0, i32* %destoffset, align 4
  %0 = load i8*, i8** %src.addr, align 8
  %call = call i64 @strlen(i8* %0) #8
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %length, align 4
  %1 = load i8*, i8** %dest.addr, align 8
  %2 = load i8*, i8** %src.addr, align 8
  %call1 = call i8* @strcpy(i8* %1, i8* %2) #5
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load i32, i32* %offset, align 4
  %4 = load i32, i32* %length, align 4
  %cmp = icmp sle i32 %3, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %offset, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %call3 = call i32 @is_ms_tag(i8* %arrayidx, i32* %dummy, i32* %taglength)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %7 = load i32, i32* %taglength, align 4
  %8 = load i32, i32* %offset, align 4
  %add = add nsw i32 %8, %7
  store i32 %add, i32* %offset, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %9 = load i32, i32* %offset, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load i8*, i8** %src.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %10, i64 %idxprom4
  %11 = load i8, i8* %arrayidx5, align 1
  %12 = load i32, i32* %destoffset, align 4
  %idxprom6 = sext i32 %12 to i64
  %13 = load i8*, i8** %dest.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %13, i64 %idxprom6
  store i8 %11, i8* %arrayidx7, align 1
  %14 = load i32, i32* %destoffset, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %destoffset, align 4
  %15 = load i32, i32* %offset, align 4
  %inc8 = add nsw i32 %15, 1
  store i32 %inc8, i32* %offset, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load i32, i32* %offset, align 4
  %idxprom9 = sext i32 %16 to i64
  %17 = load i8*, i8** %dest.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %17, i64 %idxprom9
  store i8 0, i8* %arrayidx10, align 1
  ret void
}

declare i32 @g_snprintf(i8*, i64, i8*, ...) #1

declare i32 @gimp_item_set_name(i32, i8*) #1

declare i32 @gimp_layer_translate(i32, i32, i32) #1

declare i32 @gimp_progress_update(double) #1

declare i32 @gimp_image_undo_enable(i32) #1

declare i32 @gimp_display_new(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @parse_disposal_tag(i8* %str) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %rtn = alloca i32, align 4
  %i = alloca i32, align 4
  %dummy = alloca i32, align 4
  %length = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0) #8
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %length, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %length, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %call2 = call i32 @is_disposal_tag(i8* %arrayidx, i32* %rtn, i32* %dummy)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %rtn, align 4
  store i32 %5, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @is_disposal_tag(i8* %str, i32* %disposal, i32* %taglength) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %disposal.addr = alloca i32*, align 8
  %taglength.addr = alloca i32*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32* %disposal, i32** %disposal.addr, align 8
  store i32* %taglength, i32** %taglength.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0) #8
  %cmp = icmp ne i64 %call, 9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %str.addr, align 8
  %call1 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i64 9) #8
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %2 = load i32*, i32** %taglength.addr, align 8
  store i32 9, i32* %2, align 4
  %3 = load i32*, i32** %disposal.addr, align 8
  store i32 1, i32* %3, align 4
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end
  %4 = load i8*, i8** %str.addr, align 8
  %call4 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i64 9) #8
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.else
  %5 = load i32*, i32** %taglength.addr, align 8
  store i32 9, i32* %5, align 4
  %6 = load i32*, i32** %disposal.addr, align 8
  store i32 2, i32* %6, align 4
  store i32 1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.6, %if.then.3, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

declare i32 @gimp_drawable_offsets(i32, i32*, i32*) #1

declare i32 @gimp_drawable_height(i32) #1

declare i32 @gimp_drawable_bpp(i32) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn*, i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @parse_ms_tag(i8* %str) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %rtn = alloca i32, align 4
  %dummy = alloca i32, align 4
  %length = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0) #8
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %length, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %length, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %call2 = call i32 @is_ms_tag(i8* %arrayidx, i32* %rtn, i32* %dummy)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %rtn, align 4
  store i32 %5, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @is_ms_tag(i8* %str, i32* %duration, i32* %taglength) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %duration.addr = alloca i32*, align 8
  %taglength.addr = alloca i32*, align 8
  %sum = alloca i32, align 4
  %offset = alloca i32, align 4
  %length = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32* %duration, i32** %duration.addr, align 8
  store i32* %taglength, i32** %taglength.addr, align 8
  store i32 0, i32* %sum, align 4
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0) #8
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %length, align 4
  %1 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv1 = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv1, 40
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %offset, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load i32, i32* %offset, align 4
  %4 = load i32, i32* %length, align 4
  %cmp3 = icmp slt i32 %3, %4
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load i32, i32* %offset, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i8*, i8** %str.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %7 to i32
  %cmp7 = icmp eq i32 %conv6, 32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp7, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load i32, i32* %offset, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %offset, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %10 = load i32, i32* %offset, align 4
  %11 = load i32, i32* %length, align 4
  %cmp9 = icmp sge i32 %10, %11
  br i1 %cmp9, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %12 = load i32, i32* %offset, align 4
  %idxprom11 = sext i32 %12 to i64
  %13 = load i8*, i8** %str.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %13, i64 %idxprom11
  %14 = load i8, i8* %arrayidx12, align 1
  %idxprom13 = zext i8 %14 to i64
  %15 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx14 = getelementptr inbounds i16, i16* %15, i64 %idxprom13
  %16 = load i16, i16* %arrayidx14, align 2
  %conv15 = zext i16 %16 to i32
  %and = and i32 %conv15, 8
  %cmp16 = icmp ne i32 %and, 0
  br i1 %cmp16, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %lor.lhs.false, %while.end
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %land.end.35, %if.end.19
  %17 = load i32, i32* %sum, align 4
  %mul = mul nsw i32 %17, 10
  store i32 %mul, i32* %sum, align 4
  %18 = load i32, i32* %offset, align 4
  %idxprom20 = sext i32 %18 to i64
  %19 = load i8*, i8** %str.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %19, i64 %idxprom20
  %20 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %20 to i32
  %sub = sub nsw i32 %conv22, 48
  %21 = load i32, i32* %sum, align 4
  %add = add nsw i32 %21, %sub
  store i32 %add, i32* %sum, align 4
  %22 = load i32, i32* %offset, align 4
  %inc23 = add nsw i32 %22, 1
  store i32 %inc23, i32* %offset, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %23 = load i32, i32* %offset, align 4
  %24 = load i32, i32* %length, align 4
  %cmp24 = icmp slt i32 %23, %24
  br i1 %cmp24, label %land.rhs.26, label %land.end.35

land.rhs.26:                                      ; preds = %do.cond
  %25 = load i32, i32* %offset, align 4
  %idxprom27 = sext i32 %25 to i64
  %26 = load i8*, i8** %str.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %26, i64 %idxprom27
  %27 = load i8, i8* %arrayidx28, align 1
  %idxprom29 = zext i8 %27 to i64
  %28 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx30 = getelementptr inbounds i16, i16* %28, i64 %idxprom29
  %29 = load i16, i16* %arrayidx30, align 2
  %conv31 = zext i16 %29 to i32
  %and32 = and i32 %conv31, 8
  %cmp33 = icmp ne i32 %and32, 0
  br label %land.end.35

land.end.35:                                      ; preds = %land.rhs.26, %do.cond
  %30 = phi i1 [ false, %do.cond ], [ %cmp33, %land.rhs.26 ]
  br i1 %30, label %do.body, label %do.end

do.end:                                           ; preds = %land.end.35
  %31 = load i32, i32* %length, align 4
  %32 = load i32, i32* %offset, align 4
  %sub36 = sub nsw i32 %31, %32
  %cmp37 = icmp sle i32 %sub36, 2
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.40:                                        ; preds = %do.end
  br label %while.cond.41

while.cond.41:                                    ; preds = %while.body.51, %if.end.40
  %33 = load i32, i32* %offset, align 4
  %34 = load i32, i32* %length, align 4
  %cmp42 = icmp slt i32 %33, %34
  br i1 %cmp42, label %land.rhs.44, label %land.end.50

land.rhs.44:                                      ; preds = %while.cond.41
  %35 = load i32, i32* %offset, align 4
  %idxprom45 = sext i32 %35 to i64
  %36 = load i8*, i8** %str.addr, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %36, i64 %idxprom45
  %37 = load i8, i8* %arrayidx46, align 1
  %conv47 = sext i8 %37 to i32
  %cmp48 = icmp eq i32 %conv47, 32
  br label %land.end.50

land.end.50:                                      ; preds = %land.rhs.44, %while.cond.41
  %38 = phi i1 [ false, %while.cond.41 ], [ %cmp48, %land.rhs.44 ]
  br i1 %38, label %while.body.51, label %while.end.53

while.body.51:                                    ; preds = %land.end.50
  %39 = load i32, i32* %offset, align 4
  %inc52 = add nsw i32 %39, 1
  store i32 %inc52, i32* %offset, align 4
  br label %while.cond.41

while.end.53:                                     ; preds = %land.end.50
  %40 = load i32, i32* %length, align 4
  %41 = load i32, i32* %offset, align 4
  %sub54 = sub nsw i32 %40, %41
  %cmp55 = icmp sle i32 %sub54, 2
  br i1 %cmp55, label %if.then.72, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %while.end.53
  %42 = load i32, i32* %offset, align 4
  %idxprom58 = sext i32 %42 to i64
  %43 = load i8*, i8** %str.addr, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %43, i64 %idxprom58
  %44 = load i8, i8* %arrayidx59, align 1
  %call60 = call signext i8 @g_ascii_toupper(i8 signext %44) #7
  %conv61 = sext i8 %call60 to i32
  %cmp62 = icmp ne i32 %conv61, 77
  br i1 %cmp62, label %if.then.72, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %lor.lhs.false.57
  %45 = load i32, i32* %offset, align 4
  %add65 = add nsw i32 %45, 1
  %idxprom66 = sext i32 %add65 to i64
  %46 = load i8*, i8** %str.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %46, i64 %idxprom66
  %47 = load i8, i8* %arrayidx67, align 1
  %call68 = call signext i8 @g_ascii_toupper(i8 signext %47) #7
  %conv69 = sext i8 %call68 to i32
  %cmp70 = icmp ne i32 %conv69, 83
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %lor.lhs.false.64, %lor.lhs.false.57, %while.end.53
  store i32 0, i32* %retval
  br label %return

if.end.73:                                        ; preds = %lor.lhs.false.64
  %48 = load i32, i32* %offset, align 4
  %add74 = add nsw i32 %48, 2
  store i32 %add74, i32* %offset, align 4
  br label %while.cond.75

while.cond.75:                                    ; preds = %while.body.85, %if.end.73
  %49 = load i32, i32* %offset, align 4
  %50 = load i32, i32* %length, align 4
  %cmp76 = icmp slt i32 %49, %50
  br i1 %cmp76, label %land.rhs.78, label %land.end.84

land.rhs.78:                                      ; preds = %while.cond.75
  %51 = load i32, i32* %offset, align 4
  %idxprom79 = sext i32 %51 to i64
  %52 = load i8*, i8** %str.addr, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %52, i64 %idxprom79
  %53 = load i8, i8* %arrayidx80, align 1
  %conv81 = sext i8 %53 to i32
  %cmp82 = icmp eq i32 %conv81, 32
  br label %land.end.84

land.end.84:                                      ; preds = %land.rhs.78, %while.cond.75
  %54 = phi i1 [ false, %while.cond.75 ], [ %cmp82, %land.rhs.78 ]
  br i1 %54, label %while.body.85, label %while.end.87

while.body.85:                                    ; preds = %land.end.84
  %55 = load i32, i32* %offset, align 4
  %inc86 = add nsw i32 %55, 1
  store i32 %inc86, i32* %offset, align 4
  br label %while.cond.75

while.end.87:                                     ; preds = %land.end.84
  %56 = load i32, i32* %length, align 4
  %57 = load i32, i32* %offset, align 4
  %sub88 = sub nsw i32 %56, %57
  %cmp89 = icmp slt i32 %sub88, 1
  br i1 %cmp89, label %if.then.97, label %lor.lhs.false.91

lor.lhs.false.91:                                 ; preds = %while.end.87
  %58 = load i32, i32* %offset, align 4
  %idxprom92 = sext i32 %58 to i64
  %59 = load i8*, i8** %str.addr, align 8
  %arrayidx93 = getelementptr inbounds i8, i8* %59, i64 %idxprom92
  %60 = load i8, i8* %arrayidx93, align 1
  %conv94 = sext i8 %60 to i32
  %cmp95 = icmp ne i32 %conv94, 41
  br i1 %cmp95, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %lor.lhs.false.91, %while.end.87
  store i32 0, i32* %retval
  br label %return

if.end.98:                                        ; preds = %lor.lhs.false.91
  %61 = load i32, i32* %offset, align 4
  %inc99 = add nsw i32 %61, 1
  store i32 %inc99, i32* %offset, align 4
  %62 = load i32, i32* %sum, align 4
  %63 = load i32*, i32** %duration.addr, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %offset, align 4
  %65 = load i32*, i32** %taglength.addr, align 8
  store i32 %64, i32* %65, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.98, %if.then.97, %if.then.72, %if.then.39, %if.then.18, %if.then
  %66 = load i32, i32* %retval
  ret i32 %66
}

; Function Attrs: nounwind readnone
declare signext i8 @g_ascii_toupper(i8 signext) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
