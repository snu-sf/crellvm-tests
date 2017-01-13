; ModuleID = './plug-ins/script-fu/script-fu-script.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SFScript = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct.SFArg* }
%struct.SFArg = type { i32, i8*, %union.SFArgValue, %union.SFArgValue }
%union.SFArgValue = type { %struct.SFAdjustment }
%struct.SFAdjustment = type { %struct._GtkAdjustment*, double, double, double, double, double, i32, i32 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct.SFFilename = type { i8* }
%struct.SFBrush = type { i8*, double, i32, i32 }
%struct.SFOption = type { %struct._GSList*, i32 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct.SFEnum = type { i8*, i32 }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParamDef = type { i32, i8*, i8* }
%struct._GString = type { i8*, i64, i64 }

@__func__.script_fu_script_free = private unnamed_addr constant [22 x i8] c"script_fu_script_free\00", align 1
@.str = private unnamed_addr constant [15 x i8] c"script != NULL\00", align 1
@__func__.script_fu_script_install_proc = private unnamed_addr constant [30 x i8] c"script_fu_script_install_proc\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"run_proc != NULL\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"<None>\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"run-mode\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"layer\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"vectors\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"toggle\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"dirname\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"font\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"palette\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"brush\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"gradient\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"option\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__func__.script_fu_script_uninstall_proc = private unnamed_addr constant [32 x i8] c"script_fu_script_uninstall_proc\00", align 1
@__func__.script_fu_script_get_title = private unnamed_addr constant [27 x i8] c"script_fu_script_get_title\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"\E2\80\A6\00", align 1
@__func__.script_fu_script_reset = private unnamed_addr constant [23 x i8] c"script_fu_script_reset\00", align 1
@__func__.script_fu_script_collect_standard_args = private unnamed_addr constant [39 x i8] c"script_fu_script_collect_standard_args\00", align 1
@__func__.script_fu_script_get_command = private unnamed_addr constant [29 x i8] c"script_fu_script_get_command\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"'(%d %d %d)\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"'(\22%s\22 %s %d %d)\00", align 1
@__func__.script_fu_script_get_command_from_params = private unnamed_addr constant [41 x i8] c"script_fu_script_get_command_from_params\00", align 1

; Function Attrs: nounwind uwtable
define %struct.SFScript* @script_fu_script_new(i8* %name, i8* %menu_label, i8* %blurb, i8* %author, i8* %copyright, i8* %date, i8* %image_types, i32 %n_args) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %menu_label.addr = alloca i8*, align 8
  %blurb.addr = alloca i8*, align 8
  %author.addr = alloca i8*, align 8
  %copyright.addr = alloca i8*, align 8
  %date.addr = alloca i8*, align 8
  %image_types.addr = alloca i8*, align 8
  %n_args.addr = alloca i32, align 4
  %script = alloca %struct.SFScript*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %menu_label, i8** %menu_label.addr, align 8
  store i8* %blurb, i8** %blurb.addr, align 8
  store i8* %author, i8** %author.addr, align 8
  store i8* %copyright, i8** %copyright.addr, align 8
  store i8* %date, i8** %date.addr, align 8
  store i8* %image_types, i8** %image_types.addr, align 8
  store i32 %n_args, i32* %n_args.addr, align 4
  %call = call noalias i8* @g_slice_alloc0(i64 72)
  %0 = bitcast i8* %call to %struct.SFScript*
  store %struct.SFScript* %0, %struct.SFScript** %script, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %call1 = call noalias i8* @g_strdup(i8* %1)
  %2 = load %struct.SFScript*, %struct.SFScript** %script, align 8
  %name2 = getelementptr inbounds %struct.SFScript, %struct.SFScript* %2, i32 0, i32 0
  store i8* %call1, i8** %name2, align 8
  %3 = load i8*, i8** %menu_label.addr, align 8
  %call3 = call noalias i8* @g_strdup(i8* %3)
  %4 = load %struct.SFScript*, %struct.SFScript** %script, align 8
  %menu_label4 = getelementptr inbounds %struct.SFScript, %struct.SFScript* %4, i32 0, i32 1
  store i8* %call3, i8** %menu_label4, align 8
  %5 = load i8*, i8** %blurb.addr, align 8
  %call5 = call noalias i8* @g_strdup(i8* %5)
  %6 = load %struct.SFScript*, %struct.SFScript** %script, align 8
  %blurb6 = getelementptr inbounds %struct.SFScript, %struct.SFScript* %6, i32 0, i32 2
  store i8* %call5, i8** %blurb6, align 8
  %7 = load i8*, i8** %author.addr, align 8
  %call7 = call noalias i8* @g_strdup(i8* %7)
  %8 = load %struct.SFScript*, %struct.SFScript** %script, align 8
  %author8 = getelementptr inbounds %struct.SFScript, %struct.SFScript* %8, i32 0, i32 3
  store i8* %call7, i8** %author8, align 8
  %9 = load i8*, i8** %copyright.addr, align 8
  %call9 = call noalias i8* @g_strdup(i8* %9)
  %10 = load %struct.SFScript*, %struct.SFScript** %script, align 8
  %copyright10 = getelementptr inbounds %struct.SFScript, %struct.SFScript* %10, i32 0, i32 4
  store i8* %call9, i8** %copyright10, align 8
  %11 = load i8*, i8** %date.addr, align 8
  %call11 = call noalias i8* @g_strdup(i8* %11)
  %12 = load %struct.SFScript*, %struct.SFScript** %script, align 8
  %date12 = getelementptr inbounds %struct.SFScript, %struct.SFScript* %12, i32 0, i32 5
  store i8* %call11, i8** %date12, align 8
  %13 = load i8*, i8** %image_types.addr, align 8
  %call13 = call noalias i8* @g_strdup(i8* %13)
  %14 = load %struct.SFScript*, %struct.SFScript** %script, align 8
  %image_types14 = getelementptr inbounds %struct.SFScript, %struct.SFScript* %14, i32 0, i32 6
  store i8* %call13, i8** %image_types14, align 8
  %15 = load i32, i32* %n_args.addr, align 4
  %16 = load %struct.SFScript*, %struct.SFScript** %script, align 8
  %n_args15 = getelementptr inbounds %struct.SFScript, %struct.SFScript* %16, i32 0, i32 7
  store i32 %15, i32* %n_args15, align 4
  %17 = load %struct.SFScript*, %struct.SFScript** %script, align 8
  %n_args16 = getelementptr inbounds %struct.SFScript, %struct.SFScript* %17, i32 0, i32 7
  %18 = load i32, i32* %n_args16, align 4
  %conv = sext i32 %18 to i64
  %call17 = call noalias i8* @g_malloc0_n(i64 %conv, i64 128)
  %19 = bitcast i8* %call17 to %struct.SFArg*
  %20 = load %struct.SFScript*, %struct.SFScript** %script, align 8
  %args = getelementptr inbounds %struct.SFScript, %struct.SFScript* %20, i32 0, i32 8
  store %struct.SFArg* %19, %struct.SFArg** %args, align 8
  %21 = load %struct.SFScript*, %struct.SFScript** %script, align 8
  ret %struct.SFScript* %21
}

declare noalias i8* @g_slice_alloc0(i64) #1

declare noalias i8* @g_strdup(i8*) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @script_fu_script_free(%struct.SFScript* %script) #0 {
entry:
  %script.addr = alloca %struct.SFScript*, align 8
  %i = alloca i32, align 4
  %arg = alloca %struct.SFArg*, align 8
  store %struct.SFScript* %script, %struct.SFScript** %script.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %cmp = icmp ne %struct.SFScript* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.script_fu_script_free, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  br label %do.end.38

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %name = getelementptr inbounds %struct.SFScript, %struct.SFScript* %1, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  call void @g_free(i8* %2)
  %3 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %blurb = getelementptr inbounds %struct.SFScript, %struct.SFScript* %3, i32 0, i32 2
  %4 = load i8*, i8** %blurb, align 8
  call void @g_free(i8* %4)
  %5 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %menu_label = getelementptr inbounds %struct.SFScript, %struct.SFScript* %5, i32 0, i32 1
  %6 = load i8*, i8** %menu_label, align 8
  call void @g_free(i8* %6)
  %7 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %author = getelementptr inbounds %struct.SFScript, %struct.SFScript* %7, i32 0, i32 3
  %8 = load i8*, i8** %author, align 8
  call void @g_free(i8* %8)
  %9 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %copyright = getelementptr inbounds %struct.SFScript, %struct.SFScript* %9, i32 0, i32 4
  %10 = load i8*, i8** %copyright, align 8
  call void @g_free(i8* %10)
  %11 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %date = getelementptr inbounds %struct.SFScript, %struct.SFScript* %11, i32 0, i32 5
  %12 = load i8*, i8** %date, align 8
  call void @g_free(i8* %12)
  %13 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %image_types = getelementptr inbounds %struct.SFScript, %struct.SFScript* %13, i32 0, i32 6
  %14 = load i8*, i8** %image_types, align 8
  call void @g_free(i8* %14)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %15 = load i32, i32* %i, align 4
  %16 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %n_args = getelementptr inbounds %struct.SFScript, %struct.SFScript* %16, i32 0, i32 7
  %17 = load i32, i32* %n_args, align 4
  %cmp1 = icmp slt i32 %15, %17
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %i, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %args = getelementptr inbounds %struct.SFScript, %struct.SFScript* %19, i32 0, i32 8
  %20 = load %struct.SFArg*, %struct.SFArg** %args, align 8
  %arrayidx = getelementptr inbounds %struct.SFArg, %struct.SFArg* %20, i64 %idxprom
  store %struct.SFArg* %arrayidx, %struct.SFArg** %arg, align 8
  %21 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %label = getelementptr inbounds %struct.SFArg, %struct.SFArg* %21, i32 0, i32 1
  %22 = load i8*, i8** %label, align 8
  call void @g_free(i8* %22)
  %23 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %type = getelementptr inbounds %struct.SFArg, %struct.SFArg* %23, i32 0, i32 0
  %24 = load i32, i32* %type, align 4
  switch i32 %24, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 20, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 7, label %sw.bb.2
    i32 8, label %sw.bb.2
    i32 18, label %sw.bb.2
    i32 9, label %sw.bb.4
    i32 14, label %sw.bb.5
    i32 15, label %sw.bb.5
    i32 10, label %sw.bb.10
    i32 17, label %sw.bb.14
    i32 11, label %sw.bb.18
    i32 13, label %sw.bb.22
    i32 12, label %sw.bb.26
    i32 16, label %sw.bb.32
    i32 19, label %sw.bb.34
  ]

sw.bb:                                            ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  br label %sw.epilog

sw.bb.2:                                          ; preds = %for.body, %for.body, %for.body
  %25 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value = getelementptr inbounds %struct.SFArg, %struct.SFArg* %25, i32 0, i32 2
  %sfa_value = bitcast %union.SFArgValue* %default_value to i8**
  %26 = load i8*, i8** %sfa_value, align 8
  call void @g_free(i8* %26)
  %27 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value = getelementptr inbounds %struct.SFArg, %struct.SFArg* %27, i32 0, i32 3
  %sfa_value3 = bitcast %union.SFArgValue* %value to i8**
  %28 = load i8*, i8** %sfa_value3, align 8
  call void @g_free(i8* %28)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %for.body
  br label %sw.epilog

sw.bb.5:                                          ; preds = %for.body, %for.body
  %29 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value6 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %29, i32 0, i32 2
  %sfa_file = bitcast %union.SFArgValue* %default_value6 to %struct.SFFilename*
  %filename = getelementptr inbounds %struct.SFFilename, %struct.SFFilename* %sfa_file, i32 0, i32 0
  %30 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %30)
  %31 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value7 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %31, i32 0, i32 3
  %sfa_file8 = bitcast %union.SFArgValue* %value7 to %struct.SFFilename*
  %filename9 = getelementptr inbounds %struct.SFFilename, %struct.SFFilename* %sfa_file8, i32 0, i32 0
  %32 = load i8*, i8** %filename9, align 8
  call void @g_free(i8* %32)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %for.body
  %33 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value11 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %33, i32 0, i32 2
  %sfa_font = bitcast %union.SFArgValue* %default_value11 to i8**
  %34 = load i8*, i8** %sfa_font, align 8
  call void @g_free(i8* %34)
  %35 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value12 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %35, i32 0, i32 3
  %sfa_font13 = bitcast %union.SFArgValue* %value12 to i8**
  %36 = load i8*, i8** %sfa_font13, align 8
  call void @g_free(i8* %36)
  br label %sw.epilog

sw.bb.14:                                         ; preds = %for.body
  %37 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value15 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %37, i32 0, i32 2
  %sfa_palette = bitcast %union.SFArgValue* %default_value15 to i8**
  %38 = load i8*, i8** %sfa_palette, align 8
  call void @g_free(i8* %38)
  %39 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value16 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %39, i32 0, i32 3
  %sfa_palette17 = bitcast %union.SFArgValue* %value16 to i8**
  %40 = load i8*, i8** %sfa_palette17, align 8
  call void @g_free(i8* %40)
  br label %sw.epilog

sw.bb.18:                                         ; preds = %for.body
  %41 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value19 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %41, i32 0, i32 2
  %sfa_pattern = bitcast %union.SFArgValue* %default_value19 to i8**
  %42 = load i8*, i8** %sfa_pattern, align 8
  call void @g_free(i8* %42)
  %43 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value20 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %43, i32 0, i32 3
  %sfa_pattern21 = bitcast %union.SFArgValue* %value20 to i8**
  %44 = load i8*, i8** %sfa_pattern21, align 8
  call void @g_free(i8* %44)
  br label %sw.epilog

sw.bb.22:                                         ; preds = %for.body
  %45 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value23 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %45, i32 0, i32 2
  %sfa_gradient = bitcast %union.SFArgValue* %default_value23 to i8**
  %46 = load i8*, i8** %sfa_gradient, align 8
  call void @g_free(i8* %46)
  %47 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value24 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %47, i32 0, i32 3
  %sfa_gradient25 = bitcast %union.SFArgValue* %value24 to i8**
  %48 = load i8*, i8** %sfa_gradient25, align 8
  call void @g_free(i8* %48)
  br label %sw.epilog

sw.bb.26:                                         ; preds = %for.body
  %49 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value27 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %49, i32 0, i32 2
  %sfa_brush = bitcast %union.SFArgValue* %default_value27 to %struct.SFBrush*
  %name28 = getelementptr inbounds %struct.SFBrush, %struct.SFBrush* %sfa_brush, i32 0, i32 0
  %50 = load i8*, i8** %name28, align 8
  call void @g_free(i8* %50)
  %51 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value29 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %51, i32 0, i32 3
  %sfa_brush30 = bitcast %union.SFArgValue* %value29 to %struct.SFBrush*
  %name31 = getelementptr inbounds %struct.SFBrush, %struct.SFBrush* %sfa_brush30, i32 0, i32 0
  %52 = load i8*, i8** %name31, align 8
  call void @g_free(i8* %52)
  br label %sw.epilog

sw.bb.32:                                         ; preds = %for.body
  %53 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value33 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %53, i32 0, i32 2
  %sfa_option = bitcast %union.SFArgValue* %default_value33 to %struct.SFOption*
  %list = getelementptr inbounds %struct.SFOption, %struct.SFOption* %sfa_option, i32 0, i32 0
  %54 = load %struct._GSList*, %struct._GSList** %list, align 8
  call void @g_slist_free_full(%struct._GSList* %54, void (i8*)* @g_free)
  br label %sw.epilog

sw.bb.34:                                         ; preds = %for.body
  %55 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value35 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %55, i32 0, i32 2
  %sfa_enum = bitcast %union.SFArgValue* %default_value35 to %struct.SFEnum*
  %type_name = getelementptr inbounds %struct.SFEnum, %struct.SFEnum* %sfa_enum, i32 0, i32 0
  %56 = load i8*, i8** %type_name, align 8
  call void @g_free(i8* %56)
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb.34, %sw.bb.32, %sw.bb.26, %sw.bb.22, %sw.bb.18, %sw.bb.14, %sw.bb.10, %sw.bb.5, %sw.bb.4, %sw.bb.2, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %57 = load i32, i32* %i, align 4
  %inc = add nsw i32 %57, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %58 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %args36 = getelementptr inbounds %struct.SFScript, %struct.SFScript* %58, i32 0, i32 8
  %59 = load %struct.SFArg*, %struct.SFArg** %args36, align 8
  %60 = bitcast %struct.SFArg* %59 to i8*
  call void @g_free(i8* %60)
  br label %do.body.37

do.body.37:                                       ; preds = %for.end
  %61 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %62 = bitcast %struct.SFScript* %61 to i8*
  call void @g_slice_free1(i64 72, i8* %62)
  br label %do.end.38

do.end.38:                                        ; preds = %if.else, %do.body.37
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @g_free(i8*) #1

declare void @g_slist_free_full(%struct._GSList*, void (i8*)*) #1

declare void @g_slice_free1(i64, i8*) #1

; Function Attrs: nounwind uwtable
define void @script_fu_script_install_proc(%struct.SFScript* %script, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* %run_proc) #0 {
entry:
  %script.addr = alloca %struct.SFScript*, align 8
  %run_proc.addr = alloca void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)*, align 8
  %menu_label = alloca i8*, align 8
  %args = alloca %struct._GimpParamDef*, align 8
  %i = alloca i32, align 4
  %type18 = alloca i32, align 4
  %name19 = alloca i8*, align 8
  store %struct.SFScript* %script, %struct.SFScript** %script.addr, align 8
  store void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* %run_proc, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)** %run_proc.addr, align 8
  store i8* null, i8** %menu_label, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %cmp = icmp ne %struct.SFScript* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.script_fu_script_install_proc, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)** %run_proc.addr, align 8
  %cmp2 = icmp ne void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.script_fu_script_install_proc, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %menu_label7 = getelementptr inbounds %struct.SFScript, %struct.SFScript* %2, i32 0, i32 1
  %3 = load i8*, i8** %menu_label7, align 8
  %call = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i64 6) #6
  %cmp8 = icmp ne i32 %call, 0
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %do.end.6
  %4 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %menu_label10 = getelementptr inbounds %struct.SFScript, %struct.SFScript* %4, i32 0, i32 1
  %5 = load i8*, i8** %menu_label10, align 8
  store i8* %5, i8** %menu_label, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %do.end.6
  %6 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %n_args = getelementptr inbounds %struct.SFScript, %struct.SFScript* %6, i32 0, i32 7
  %7 = load i32, i32* %n_args, align 4
  %add = add nsw i32 %7, 1
  %conv = sext i32 %add to i64
  %call12 = call noalias i8* @g_malloc0_n(i64 %conv, i64 24)
  %8 = bitcast i8* %call12 to %struct._GimpParamDef*
  store %struct._GimpParamDef* %8, %struct._GimpParamDef** %args, align 8
  %9 = load %struct._GimpParamDef*, %struct._GimpParamDef** %args, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %9, i64 0
  %type = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %arrayidx, i32 0, i32 0
  store i32 0, i32* %type, align 4
  %10 = load %struct._GimpParamDef*, %struct._GimpParamDef** %args, align 8
  %arrayidx13 = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %10, i64 0
  %name = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %arrayidx13, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8** %name, align 8
  %11 = load %struct._GimpParamDef*, %struct._GimpParamDef** %args, align 8
  %arrayidx14 = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %11, i64 0
  %description = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %arrayidx14, i32 0, i32 2
  store i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i32 0, i32 0), i8** %description, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.11
  %12 = load i32, i32* %i, align 4
  %13 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %n_args15 = getelementptr inbounds %struct.SFScript, %struct.SFScript* %13, i32 0, i32 7
  %14 = load i32, i32* %n_args15, align 4
  %cmp16 = icmp slt i32 %12, %14
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %type18, align 4
  store i8* null, i8** %name19, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %args20 = getelementptr inbounds %struct.SFScript, %struct.SFScript* %16, i32 0, i32 8
  %17 = load %struct.SFArg*, %struct.SFArg** %args20, align 8
  %arrayidx21 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %17, i64 %idxprom
  %type22 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %arrayidx21, i32 0, i32 0
  %18 = load i32, i32* %type22, align 4
  switch i32 %18, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.23
    i32 2, label %sw.bb.24
    i32 3, label %sw.bb.25
    i32 4, label %sw.bb.26
    i32 20, label %sw.bb.27
    i32 5, label %sw.bb.28
    i32 6, label %sw.bb.29
    i32 7, label %sw.bb.30
    i32 8, label %sw.bb.31
    i32 18, label %sw.bb.31
    i32 9, label %sw.bb.32
    i32 14, label %sw.bb.33
    i32 15, label %sw.bb.34
    i32 10, label %sw.bb.35
    i32 17, label %sw.bb.36
    i32 11, label %sw.bb.37
    i32 12, label %sw.bb.38
    i32 13, label %sw.bb.39
    i32 16, label %sw.bb.40
    i32 19, label %sw.bb.41
  ]

sw.bb:                                            ; preds = %for.body
  store i32 13, i32* %type18, align 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8** %name19, align 8
  br label %sw.epilog

sw.bb.23:                                         ; preds = %for.body
  store i32 16, i32* %type18, align 4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8** %name19, align 8
  br label %sw.epilog

sw.bb.24:                                         ; preds = %for.body
  store i32 14, i32* %type18, align 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8** %name19, align 8
  br label %sw.epilog

sw.bb.25:                                         ; preds = %for.body
  store i32 15, i32* %type18, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8** %name19, align 8
  br label %sw.epilog

sw.bb.26:                                         ; preds = %for.body
  store i32 19, i32* %type18, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8** %name19, align 8
  br label %sw.epilog

sw.bb.27:                                         ; preds = %for.body
  store i32 12, i32* %type18, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8** %name19, align 8
  br label %sw.epilog

sw.bb.28:                                         ; preds = %for.body
  store i32 10, i32* %type18, align 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8** %name19, align 8
  br label %sw.epilog

sw.bb.29:                                         ; preds = %for.body
  store i32 0, i32* %type18, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8** %name19, align 8
  br label %sw.epilog

sw.bb.30:                                         ; preds = %for.body
  store i32 4, i32* %type18, align 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8** %name19, align 8
  br label %sw.epilog

sw.bb.31:                                         ; preds = %for.body, %for.body
  store i32 4, i32* %type18, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8** %name19, align 8
  br label %sw.epilog

sw.bb.32:                                         ; preds = %for.body
  store i32 3, i32* %type18, align 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8** %name19, align 8
  br label %sw.epilog

sw.bb.33:                                         ; preds = %for.body
  store i32 4, i32* %type18, align 4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8** %name19, align 8
  br label %sw.epilog

sw.bb.34:                                         ; preds = %for.body
  store i32 4, i32* %type18, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8** %name19, align 8
  br label %sw.epilog

sw.bb.35:                                         ; preds = %for.body
  store i32 4, i32* %type18, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8** %name19, align 8
  br label %sw.epilog

sw.bb.36:                                         ; preds = %for.body
  store i32 4, i32* %type18, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8** %name19, align 8
  br label %sw.epilog

sw.bb.37:                                         ; preds = %for.body
  store i32 4, i32* %type18, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i8** %name19, align 8
  br label %sw.epilog

sw.bb.38:                                         ; preds = %for.body
  store i32 4, i32* %type18, align 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8** %name19, align 8
  br label %sw.epilog

sw.bb.39:                                         ; preds = %for.body
  store i32 4, i32* %type18, align 4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i8** %name19, align 8
  br label %sw.epilog

sw.bb.40:                                         ; preds = %for.body
  store i32 0, i32* %type18, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i8** %name19, align 8
  br label %sw.epilog

sw.bb.41:                                         ; preds = %for.body
  store i32 0, i32* %type18, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8** %name19, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb.41, %sw.bb.40, %sw.bb.39, %sw.bb.38, %sw.bb.37, %sw.bb.36, %sw.bb.35, %sw.bb.34, %sw.bb.33, %sw.bb.32, %sw.bb.31, %sw.bb.30, %sw.bb.29, %sw.bb.28, %sw.bb.27, %sw.bb.26, %sw.bb.25, %sw.bb.24, %sw.bb.23, %sw.bb
  %19 = load i32, i32* %type18, align 4
  %20 = load i32, i32* %i, align 4
  %add42 = add nsw i32 %20, 1
  %idxprom43 = sext i32 %add42 to i64
  %21 = load %struct._GimpParamDef*, %struct._GimpParamDef** %args, align 8
  %arrayidx44 = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %21, i64 %idxprom43
  %type45 = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %arrayidx44, i32 0, i32 0
  store i32 %19, i32* %type45, align 4
  %22 = load i8*, i8** %name19, align 8
  %23 = load i32, i32* %i, align 4
  %add46 = add nsw i32 %23, 1
  %idxprom47 = sext i32 %add46 to i64
  %24 = load %struct._GimpParamDef*, %struct._GimpParamDef** %args, align 8
  %arrayidx48 = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %24, i64 %idxprom47
  %name49 = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %arrayidx48, i32 0, i32 1
  store i8* %22, i8** %name49, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %25 to i64
  %26 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %args51 = getelementptr inbounds %struct.SFScript, %struct.SFScript* %26, i32 0, i32 8
  %27 = load %struct.SFArg*, %struct.SFArg** %args51, align 8
  %arrayidx52 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %27, i64 %idxprom50
  %label = getelementptr inbounds %struct.SFArg, %struct.SFArg* %arrayidx52, i32 0, i32 1
  %28 = load i8*, i8** %label, align 8
  %29 = load i32, i32* %i, align 4
  %add53 = add nsw i32 %29, 1
  %idxprom54 = sext i32 %add53 to i64
  %30 = load %struct._GimpParamDef*, %struct._GimpParamDef** %args, align 8
  %arrayidx55 = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %30, i64 %idxprom54
  %description56 = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %arrayidx55, i32 0, i32 2
  store i8* %28, i8** %description56, align 8
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %31 = load i32, i32* %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %name57 = getelementptr inbounds %struct.SFScript, %struct.SFScript* %32, i32 0, i32 0
  %33 = load i8*, i8** %name57, align 8
  %34 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %blurb = getelementptr inbounds %struct.SFScript, %struct.SFScript* %34, i32 0, i32 2
  %35 = load i8*, i8** %blurb, align 8
  %36 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %author = getelementptr inbounds %struct.SFScript, %struct.SFScript* %36, i32 0, i32 3
  %37 = load i8*, i8** %author, align 8
  %38 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %copyright = getelementptr inbounds %struct.SFScript, %struct.SFScript* %38, i32 0, i32 4
  %39 = load i8*, i8** %copyright, align 8
  %40 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %date = getelementptr inbounds %struct.SFScript, %struct.SFScript* %40, i32 0, i32 5
  %41 = load i8*, i8** %date, align 8
  %42 = load i8*, i8** %menu_label, align 8
  %43 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %image_types = getelementptr inbounds %struct.SFScript, %struct.SFScript* %43, i32 0, i32 6
  %44 = load i8*, i8** %image_types, align 8
  %45 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %n_args58 = getelementptr inbounds %struct.SFScript, %struct.SFScript* %45, i32 0, i32 7
  %46 = load i32, i32* %n_args58, align 4
  %add59 = add nsw i32 %46, 1
  %47 = load %struct._GimpParamDef*, %struct._GimpParamDef** %args, align 8
  %48 = load void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)** %run_proc.addr, align 8
  call void @gimp_install_temp_proc(i8* %33, i8* %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i32 0, i32 0), i8* %37, i8* %39, i8* %41, i8* %42, i8* %44, i32 3, i32 %add59, i32 0, %struct._GimpParamDef* %47, %struct._GimpParamDef* null, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* %48)
  %49 = load %struct._GimpParamDef*, %struct._GimpParamDef** %args, align 8
  %50 = bitcast %struct._GimpParamDef* %49 to i8*
  call void @g_free(i8* %50)
  br label %return

return:                                           ; preds = %for.end, %if.else.4, %if.else
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

declare void @gimp_install_temp_proc(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct._GimpParamDef*, %struct._GimpParamDef*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)*) #1

; Function Attrs: nounwind uwtable
define void @script_fu_script_uninstall_proc(%struct.SFScript* %script) #0 {
entry:
  %script.addr = alloca %struct.SFScript*, align 8
  store %struct.SFScript* %script, %struct.SFScript** %script.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %cmp = icmp ne %struct.SFScript* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.script_fu_script_uninstall_proc, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %name = getelementptr inbounds %struct.SFScript, %struct.SFScript* %1, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  call void @gimp_uninstall_temp_proc(i8* %2)
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

declare void @gimp_uninstall_temp_proc(i8*) #1

; Function Attrs: nounwind uwtable
define i8* @script_fu_script_get_title(%struct.SFScript* %script) #0 {
entry:
  %retval = alloca i8*, align 8
  %script.addr = alloca %struct.SFScript*, align 8
  %title = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  store %struct.SFScript* %script, %struct.SFScript** %script.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %cmp = icmp ne %struct.SFScript* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.script_fu_script_get_title, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %menu_label = getelementptr inbounds %struct.SFScript, %struct.SFScript* %1, i32 0, i32 1
  %2 = load i8*, i8** %menu_label, align 8
  %call = call i8* @gettext(i8* %2) #4
  %call1 = call noalias i8* @gimp_strip_uline(i8* %call)
  store i8* %call1, i8** %title, align 8
  %3 = load i8*, i8** %title, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp2 = icmp eq i32 %conv, 60
  br i1 %cmp2, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %do.end
  %5 = load i8*, i8** %title, align 8
  %call4 = call i8* @strrchr(i8* %5, i32 47) #6
  store i8* %call4, i8** %tmp, align 8
  %tobool = icmp ne i8* %call4, null
  br i1 %tobool, label %land.lhs.true.5, label %if.end.11

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %6 = load i8*, i8** %tmp, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %7 to i32
  %tobool8 = icmp ne i32 %conv7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %land.lhs.true.5
  %8 = load i8*, i8** %tmp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 1
  %call10 = call noalias i8* @g_strdup(i8* %add.ptr)
  store i8* %call10, i8** %tmp, align 8
  %9 = load i8*, i8** %title, align 8
  call void @g_free(i8* %9)
  %10 = load i8*, i8** %tmp, align 8
  store i8* %10, i8** %title, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %land.lhs.true.5, %land.lhs.true, %do.end
  %11 = load i8*, i8** %title, align 8
  %call12 = call i8* @strstr(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0)) #6
  store i8* %call12, i8** %tmp, align 8
  %12 = load i8*, i8** %tmp, align 8
  %tobool13 = icmp ne i8* %12, null
  br i1 %tobool13, label %if.end.16, label %if.then.14

if.then.14:                                       ; preds = %if.end.11
  %13 = load i8*, i8** %title, align 8
  %call15 = call i8* @strstr(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0)) #6
  store i8* %call15, i8** %tmp, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.11
  %14 = load i8*, i8** %tmp, align 8
  %tobool17 = icmp ne i8* %14, null
  br i1 %tobool17, label %land.lhs.true.18, label %if.end.25

land.lhs.true.18:                                 ; preds = %if.end.16
  %15 = load i8*, i8** %tmp, align 8
  %16 = load i8*, i8** %title, align 8
  %17 = load i8*, i8** %title, align 8
  %call19 = call i64 @strlen(i8* %17) #6
  %add.ptr20 = getelementptr inbounds i8, i8* %16, i64 %call19
  %add.ptr21 = getelementptr inbounds i8, i8* %add.ptr20, i64 -3
  %cmp22 = icmp eq i8* %15, %add.ptr21
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %land.lhs.true.18
  %18 = load i8*, i8** %tmp, align 8
  store i8 0, i8* %18, align 1
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %land.lhs.true.18, %if.end.16
  %19 = load i8*, i8** %title, align 8
  store i8* %19, i8** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.else
  %20 = load i8*, i8** %retval
  ret i8* %20
}

declare noalias i8* @gimp_strip_uline(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #2

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define void @script_fu_script_reset(%struct.SFScript* %script, i32 %reset_ids) #0 {
entry:
  %script.addr = alloca %struct.SFScript*, align 8
  %reset_ids.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %value = alloca %union.SFArgValue*, align 8
  %default_value = alloca %union.SFArgValue*, align 8
  store %struct.SFScript* %script, %struct.SFScript** %script.addr, align 8
  store i32 %reset_ids, i32* %reset_ids.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %cmp = icmp ne %struct.SFScript* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.script_fu_script_reset, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  br label %for.end

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %n_args = getelementptr inbounds %struct.SFScript, %struct.SFScript* %2, i32 0, i32 7
  %3 = load i32, i32* %n_args, align 4
  %cmp1 = icmp slt i32 %1, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %args = getelementptr inbounds %struct.SFScript, %struct.SFScript* %5, i32 0, i32 8
  %6 = load %struct.SFArg*, %struct.SFArg** %args, align 8
  %arrayidx = getelementptr inbounds %struct.SFArg, %struct.SFArg* %6, i64 %idxprom
  %value2 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %arrayidx, i32 0, i32 3
  store %union.SFArgValue* %value2, %union.SFArgValue** %value, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %7 to i64
  %8 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %args4 = getelementptr inbounds %struct.SFScript, %struct.SFScript* %8, i32 0, i32 8
  %9 = load %struct.SFArg*, %struct.SFArg** %args4, align 8
  %arrayidx5 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %9, i64 %idxprom3
  %default_value6 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %arrayidx5, i32 0, i32 2
  store %union.SFArgValue* %default_value6, %union.SFArgValue** %default_value, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %10 to i64
  %11 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %args8 = getelementptr inbounds %struct.SFScript, %struct.SFScript* %11, i32 0, i32 8
  %12 = load %struct.SFArg*, %struct.SFArg** %args8, align 8
  %arrayidx9 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %12, i64 %idxprom7
  %type = getelementptr inbounds %struct.SFArg, %struct.SFArg* %arrayidx9, i32 0, i32 0
  %13 = load i32, i32* %type, align 4
  switch i32 %13, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 20, label %sw.bb
    i32 5, label %sw.bb.13
    i32 6, label %sw.bb.15
    i32 7, label %sw.bb.17
    i32 8, label %sw.bb.17
    i32 18, label %sw.bb.17
    i32 9, label %sw.bb.20
    i32 14, label %sw.bb.24
    i32 15, label %sw.bb.24
    i32 10, label %sw.bb.30
    i32 17, label %sw.bb.34
    i32 11, label %sw.bb.38
    i32 13, label %sw.bb.42
    i32 12, label %sw.bb.46
    i32 16, label %sw.bb.61
    i32 19, label %sw.bb.64
  ]

sw.bb:                                            ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  %14 = load i32, i32* %reset_ids.addr, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %sw.bb
  %15 = load %union.SFArgValue*, %union.SFArgValue** %default_value, align 8
  %sfa_image = bitcast %union.SFArgValue* %15 to i32*
  %16 = load i32, i32* %sfa_image, align 4
  %17 = load %union.SFArgValue*, %union.SFArgValue** %value, align 8
  %sfa_image11 = bitcast %union.SFArgValue* %17 to i32*
  store i32 %16, i32* %sfa_image11, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %sw.bb
  br label %sw.epilog

sw.bb.13:                                         ; preds = %for.body
  %18 = load %union.SFArgValue*, %union.SFArgValue** %value, align 8
  %sfa_color = bitcast %union.SFArgValue* %18 to %struct._GimpRGB*
  %19 = load %union.SFArgValue*, %union.SFArgValue** %default_value, align 8
  %sfa_color14 = bitcast %union.SFArgValue* %19 to %struct._GimpRGB*
  %20 = bitcast %struct._GimpRGB* %sfa_color to i8*
  %21 = bitcast %struct._GimpRGB* %sfa_color14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 32, i32 8, i1 false)
  br label %sw.epilog

sw.bb.15:                                         ; preds = %for.body
  %22 = load %union.SFArgValue*, %union.SFArgValue** %default_value, align 8
  %sfa_toggle = bitcast %union.SFArgValue* %22 to i32*
  %23 = load i32, i32* %sfa_toggle, align 4
  %24 = load %union.SFArgValue*, %union.SFArgValue** %value, align 8
  %sfa_toggle16 = bitcast %union.SFArgValue* %24 to i32*
  store i32 %23, i32* %sfa_toggle16, align 4
  br label %sw.epilog

sw.bb.17:                                         ; preds = %for.body, %for.body, %for.body
  %25 = load %union.SFArgValue*, %union.SFArgValue** %value, align 8
  %sfa_value = bitcast %union.SFArgValue* %25 to i8**
  %26 = load i8*, i8** %sfa_value, align 8
  call void @g_free(i8* %26)
  %27 = load %union.SFArgValue*, %union.SFArgValue** %default_value, align 8
  %sfa_value18 = bitcast %union.SFArgValue* %27 to i8**
  %28 = load i8*, i8** %sfa_value18, align 8
  %call = call noalias i8* @g_strdup(i8* %28)
  %29 = load %union.SFArgValue*, %union.SFArgValue** %value, align 8
  %sfa_value19 = bitcast %union.SFArgValue* %29 to i8**
  store i8* %call, i8** %sfa_value19, align 8
  br label %sw.epilog

sw.bb.20:                                         ; preds = %for.body
  %30 = load %union.SFArgValue*, %union.SFArgValue** %default_value, align 8
  %sfa_adjustment = bitcast %union.SFArgValue* %30 to %struct.SFAdjustment*
  %value21 = getelementptr inbounds %struct.SFAdjustment, %struct.SFAdjustment* %sfa_adjustment, i32 0, i32 1
  %31 = load double, double* %value21, align 8
  %32 = load %union.SFArgValue*, %union.SFArgValue** %value, align 8
  %sfa_adjustment22 = bitcast %union.SFArgValue* %32 to %struct.SFAdjustment*
  %value23 = getelementptr inbounds %struct.SFAdjustment, %struct.SFAdjustment* %sfa_adjustment22, i32 0, i32 1
  store double %31, double* %value23, align 8
  br label %sw.epilog

sw.bb.24:                                         ; preds = %for.body, %for.body
  %33 = load %union.SFArgValue*, %union.SFArgValue** %value, align 8
  %sfa_file = bitcast %union.SFArgValue* %33 to %struct.SFFilename*
  %filename = getelementptr inbounds %struct.SFFilename, %struct.SFFilename* %sfa_file, i32 0, i32 0
  %34 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %34)
  %35 = load %union.SFArgValue*, %union.SFArgValue** %default_value, align 8
  %sfa_file25 = bitcast %union.SFArgValue* %35 to %struct.SFFilename*
  %filename26 = getelementptr inbounds %struct.SFFilename, %struct.SFFilename* %sfa_file25, i32 0, i32 0
  %36 = load i8*, i8** %filename26, align 8
  %call27 = call noalias i8* @g_strdup(i8* %36)
  %37 = load %union.SFArgValue*, %union.SFArgValue** %value, align 8
  %sfa_file28 = bitcast %union.SFArgValue* %37 to %struct.SFFilename*
  %filename29 = getelementptr inbounds %struct.SFFilename, %struct.SFFilename* %sfa_file28, i32 0, i32 0
  store i8* %call27, i8** %filename29, align 8
  br label %sw.epilog

sw.bb.30:                                         ; preds = %for.body
  %38 = load %union.SFArgValue*, %union.SFArgValue** %value, align 8
  %sfa_font = bitcast %union.SFArgValue* %38 to i8**
  %39 = load i8*, i8** %sfa_font, align 8
  call void @g_free(i8* %39)
  %40 = load %union.SFArgValue*, %union.SFArgValue** %default_value, align 8
  %sfa_font31 = bitcast %union.SFArgValue* %40 to i8**
  %41 = load i8*, i8** %sfa_font31, align 8
  %call32 = call noalias i8* @g_strdup(i8* %41)
  %42 = load %union.SFArgValue*, %union.SFArgValue** %value, align 8
  %sfa_font33 = bitcast %union.SFArgValue* %42 to i8**
  store i8* %call32, i8** %sfa_font33, align 8
  br label %sw.epilog

sw.bb.34:                                         ; preds = %for.body
  %43 = load %union.SFArgValue*, %union.SFArgValue** %value, align 8
  %sfa_palette = bitcast %union.SFArgValue* %43 to i8**
  %44 = load i8*, i8** %sfa_palette, align 8
  call void @g_free(i8* %44)
  %45 = load %union.SFArgValue*, %union.SFArgValue** %default_value, align 8
  %sfa_palette35 = bitcast %union.SFArgValue* %45 to i8**
  %46 = load i8*, i8** %sfa_palette35, align 8
  %call36 = call noalias i8* @g_strdup(i8* %46)
  %47 = load %union.SFArgValue*, %union.SFArgValue** %value, align 8
  %sfa_palette37 = bitcast %union.SFArgValue* %47 to i8**
  store i8* %call36, i8** %sfa_palette37, align 8
  br label %sw.epilog

sw.bb.38:                                         ; preds = %for.body
  %48 = load %union.SFArgValue*, %union.SFArgValue** %value, align 8
  %sfa_pattern = bitcast %union.SFArgValue* %48 to i8**
  %49 = load i8*, i8** %sfa_pattern, align 8
  call void @g_free(i8* %49)
  %50 = load %union.SFArgValue*, %union.SFArgValue** %default_value, align 8
  %sfa_pattern39 = bitcast %union.SFArgValue* %50 to i8**
  %51 = load i8*, i8** %sfa_pattern39, align 8
  %call40 = call noalias i8* @g_strdup(i8* %51)
  %52 = load %union.SFArgValue*, %union.SFArgValue** %value, align 8
  %sfa_pattern41 = bitcast %union.SFArgValue* %52 to i8**
  store i8* %call40, i8** %sfa_pattern41, align 8
  br label %sw.epilog

sw.bb.42:                                         ; preds = %for.body
  %53 = load %union.SFArgValue*, %union.SFArgValue** %value, align 8
  %sfa_gradient = bitcast %union.SFArgValue* %53 to i8**
  %54 = load i8*, i8** %sfa_gradient, align 8
  call void @g_free(i8* %54)
  %55 = load %union.SFArgValue*, %union.SFArgValue** %default_value, align 8
  %sfa_gradient43 = bitcast %union.SFArgValue* %55 to i8**
  %56 = load i8*, i8** %sfa_gradient43, align 8
  %call44 = call noalias i8* @g_strdup(i8* %56)
  %57 = load %union.SFArgValue*, %union.SFArgValue** %value, align 8
  %sfa_gradient45 = bitcast %union.SFArgValue* %57 to i8**
  store i8* %call44, i8** %sfa_gradient45, align 8
  br label %sw.epilog

sw.bb.46:                                         ; preds = %for.body
  %58 = load %union.SFArgValue*, %union.SFArgValue** %value, align 8
  %sfa_brush = bitcast %union.SFArgValue* %58 to %struct.SFBrush*
  %name = getelementptr inbounds %struct.SFBrush, %struct.SFBrush* %sfa_brush, i32 0, i32 0
  %59 = load i8*, i8** %name, align 8
  call void @g_free(i8* %59)
  %60 = load %union.SFArgValue*, %union.SFArgValue** %default_value, align 8
  %sfa_brush47 = bitcast %union.SFArgValue* %60 to %struct.SFBrush*
  %name48 = getelementptr inbounds %struct.SFBrush, %struct.SFBrush* %sfa_brush47, i32 0, i32 0
  %61 = load i8*, i8** %name48, align 8
  %call49 = call noalias i8* @g_strdup(i8* %61)
  %62 = load %union.SFArgValue*, %union.SFArgValue** %value, align 8
  %sfa_brush50 = bitcast %union.SFArgValue* %62 to %struct.SFBrush*
  %name51 = getelementptr inbounds %struct.SFBrush, %struct.SFBrush* %sfa_brush50, i32 0, i32 0
  store i8* %call49, i8** %name51, align 8
  %63 = load %union.SFArgValue*, %union.SFArgValue** %default_value, align 8
  %sfa_brush52 = bitcast %union.SFArgValue* %63 to %struct.SFBrush*
  %opacity = getelementptr inbounds %struct.SFBrush, %struct.SFBrush* %sfa_brush52, i32 0, i32 1
  %64 = load double, double* %opacity, align 8
  %65 = load %union.SFArgValue*, %union.SFArgValue** %value, align 8
  %sfa_brush53 = bitcast %union.SFArgValue* %65 to %struct.SFBrush*
  %opacity54 = getelementptr inbounds %struct.SFBrush, %struct.SFBrush* %sfa_brush53, i32 0, i32 1
  store double %64, double* %opacity54, align 8
  %66 = load %union.SFArgValue*, %union.SFArgValue** %default_value, align 8
  %sfa_brush55 = bitcast %union.SFArgValue* %66 to %struct.SFBrush*
  %spacing = getelementptr inbounds %struct.SFBrush, %struct.SFBrush* %sfa_brush55, i32 0, i32 2
  %67 = load i32, i32* %spacing, align 4
  %68 = load %union.SFArgValue*, %union.SFArgValue** %value, align 8
  %sfa_brush56 = bitcast %union.SFArgValue* %68 to %struct.SFBrush*
  %spacing57 = getelementptr inbounds %struct.SFBrush, %struct.SFBrush* %sfa_brush56, i32 0, i32 2
  store i32 %67, i32* %spacing57, align 4
  %69 = load %union.SFArgValue*, %union.SFArgValue** %default_value, align 8
  %sfa_brush58 = bitcast %union.SFArgValue* %69 to %struct.SFBrush*
  %paint_mode = getelementptr inbounds %struct.SFBrush, %struct.SFBrush* %sfa_brush58, i32 0, i32 3
  %70 = load i32, i32* %paint_mode, align 4
  %71 = load %union.SFArgValue*, %union.SFArgValue** %value, align 8
  %sfa_brush59 = bitcast %union.SFArgValue* %71 to %struct.SFBrush*
  %paint_mode60 = getelementptr inbounds %struct.SFBrush, %struct.SFBrush* %sfa_brush59, i32 0, i32 3
  store i32 %70, i32* %paint_mode60, align 4
  br label %sw.epilog

sw.bb.61:                                         ; preds = %for.body
  %72 = load %union.SFArgValue*, %union.SFArgValue** %default_value, align 8
  %sfa_option = bitcast %union.SFArgValue* %72 to %struct.SFOption*
  %history = getelementptr inbounds %struct.SFOption, %struct.SFOption* %sfa_option, i32 0, i32 1
  %73 = load i32, i32* %history, align 4
  %74 = load %union.SFArgValue*, %union.SFArgValue** %value, align 8
  %sfa_option62 = bitcast %union.SFArgValue* %74 to %struct.SFOption*
  %history63 = getelementptr inbounds %struct.SFOption, %struct.SFOption* %sfa_option62, i32 0, i32 1
  store i32 %73, i32* %history63, align 4
  br label %sw.epilog

sw.bb.64:                                         ; preds = %for.body
  %75 = load %union.SFArgValue*, %union.SFArgValue** %default_value, align 8
  %sfa_enum = bitcast %union.SFArgValue* %75 to %struct.SFEnum*
  %history65 = getelementptr inbounds %struct.SFEnum, %struct.SFEnum* %sfa_enum, i32 0, i32 1
  %76 = load i32, i32* %history65, align 4
  %77 = load %union.SFArgValue*, %union.SFArgValue** %value, align 8
  %sfa_enum66 = bitcast %union.SFArgValue* %77 to %struct.SFEnum*
  %history67 = getelementptr inbounds %struct.SFEnum, %struct.SFEnum* %sfa_enum66, i32 0, i32 1
  store i32 %76, i32* %history67, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb.64, %sw.bb.61, %sw.bb.46, %sw.bb.42, %sw.bb.38, %sw.bb.34, %sw.bb.30, %sw.bb.24, %sw.bb.20, %sw.bb.17, %sw.bb.15, %sw.bb.13, %if.end.12
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %78 = load i32, i32* %i, align 4
  %inc = add nsw i32 %78, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else, %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define i32 @script_fu_script_collect_standard_args(%struct.SFScript* %script, i32 %n_params, %struct._GimpParam* %params) #0 {
entry:
  %retval = alloca i32, align 4
  %script.addr = alloca %struct.SFScript*, align 8
  %n_params.addr = alloca i32, align 4
  %params.addr = alloca %struct._GimpParam*, align 8
  %params_consumed = alloca i32, align 4
  store %struct.SFScript* %script, %struct.SFScript** %script.addr, align 8
  store i32 %n_params, i32* %n_params.addr, align 4
  store %struct._GimpParam* %params, %struct._GimpParam** %params.addr, align 8
  store i32 0, i32* %params_consumed, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %cmp = icmp ne %struct.SFScript* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.script_fu_script_collect_standard_args, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %2 = load i32, i32* %n_params.addr, align 4
  %3 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %4 = load i32, i32* %params_consumed, align 4
  %call = call i32 @script_fu_script_param_init(%struct.SFScript* %1, i32 %2, %struct._GimpParam* %3, i32 20, i32 %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %do.end
  %5 = load i32, i32* %params_consumed, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %params_consumed, align 4
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %do.end
  %6 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %7 = load i32, i32* %n_params.addr, align 4
  %8 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %9 = load i32, i32* %params_consumed, align 4
  %call3 = call i32 @script_fu_script_param_init(%struct.SFScript* %6, i32 %7, %struct._GimpParam* %8, i32 0, i32 %9)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.20

if.then.5:                                        ; preds = %if.end.2
  %10 = load i32, i32* %params_consumed, align 4
  %inc6 = add nsw i32 %10, 1
  store i32 %inc6, i32* %params_consumed, align 4
  %11 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %12 = load i32, i32* %n_params.addr, align 4
  %13 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %14 = load i32, i32* %params_consumed, align 4
  %call7 = call i32 @script_fu_script_param_init(%struct.SFScript* %11, i32 %12, %struct._GimpParam* %13, i32 1, i32 %14)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.5
  %15 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %16 = load i32, i32* %n_params.addr, align 4
  %17 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %18 = load i32, i32* %params_consumed, align 4
  %call9 = call i32 @script_fu_script_param_init(%struct.SFScript* %15, i32 %16, %struct._GimpParam* %17, i32 2, i32 %18)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.17, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false
  %19 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %20 = load i32, i32* %n_params.addr, align 4
  %21 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %22 = load i32, i32* %params_consumed, align 4
  %call12 = call i32 @script_fu_script_param_init(%struct.SFScript* %19, i32 %20, %struct._GimpParam* %21, i32 3, i32 %22)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.17, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.11
  %23 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %24 = load i32, i32* %n_params.addr, align 4
  %25 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %26 = load i32, i32* %params_consumed, align 4
  %call15 = call i32 @script_fu_script_param_init(%struct.SFScript* %23, i32 %24, %struct._GimpParam* %25, i32 4, i32 %26)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %lor.lhs.false.14, %lor.lhs.false.11, %lor.lhs.false, %if.then.5
  %27 = load i32, i32* %params_consumed, align 4
  %inc18 = add nsw i32 %27, 1
  store i32 %inc18, i32* %params_consumed, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %lor.lhs.false.14
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end.2
  %28 = load i32, i32* %params_consumed, align 4
  store i32 %28, i32* %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.else
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @script_fu_script_param_init(%struct.SFScript* %script, i32 %nparams, %struct._GimpParam* %params, i32 %type, i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %script.addr = alloca %struct.SFScript*, align 8
  %nparams.addr = alloca i32, align 4
  %params.addr = alloca %struct._GimpParam*, align 8
  %type.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %arg = alloca %struct.SFArg*, align 8
  store %struct.SFScript* %script, %struct.SFScript** %script.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %params, %struct._GimpParam** %params.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %args = getelementptr inbounds %struct.SFScript, %struct.SFScript* %1, i32 0, i32 8
  %2 = load %struct.SFArg*, %struct.SFArg** %args, align 8
  %arrayidx = getelementptr inbounds %struct.SFArg, %struct.SFArg* %2, i64 %idxprom
  store %struct.SFArg* %arrayidx, %struct.SFArg** %arg, align 8
  %3 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %n_args = getelementptr inbounds %struct.SFScript, %struct.SFScript* %3, i32 0, i32 7
  %4 = load i32, i32* %n_args, align 4
  %5 = load i32, i32* %n.addr, align 4
  %cmp = icmp sgt i32 %4, %5
  br i1 %cmp, label %land.lhs.true, label %if.end.79

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %type1 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %6, i32 0, i32 0
  %7 = load i32, i32* %type1, align 4
  %8 = load i32, i32* %type.addr, align 4
  %cmp2 = icmp eq i32 %7, %8
  br i1 %cmp2, label %land.lhs.true.3, label %if.end.79

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %9 = load i32, i32* %nparams.addr, align 4
  %10 = load i32, i32* %n.addr, align 4
  %add = add nsw i32 %10, 1
  %cmp4 = icmp sgt i32 %9, %add
  br i1 %cmp4, label %if.then, label %if.end.79

if.then:                                          ; preds = %land.lhs.true.3
  %11 = load i32, i32* %type.addr, align 4
  switch i32 %11, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.14
    i32 2, label %sw.bb.27
    i32 3, label %sw.bb.40
    i32 4, label %sw.bb.53
    i32 20, label %sw.bb.66
  ]

sw.bb:                                            ; preds = %if.then
  %12 = load i32, i32* %n.addr, align 4
  %add5 = add nsw i32 %12, 1
  %idxprom6 = sext i32 %add5 to i64
  %13 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %13, i64 %idxprom6
  %type8 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx7, i32 0, i32 0
  %14 = load i32, i32* %type8, align 4
  %cmp9 = icmp eq i32 %14, 13
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %sw.bb
  %15 = load i32, i32* %n.addr, align 4
  %add11 = add nsw i32 %15, 1
  %idxprom12 = sext i32 %add11 to i64
  %16 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx13 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %16, i64 %idxprom12
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx13, i32 0, i32 1
  %d_image = bitcast %union._GimpParamData* %data to i32*
  %17 = load i32, i32* %d_image, align 4
  %18 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value = getelementptr inbounds %struct.SFArg, %struct.SFArg* %18, i32 0, i32 3
  %sfa_image = bitcast %union.SFArgValue* %value to i32*
  store i32 %17, i32* %sfa_image, align 4
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.then
  %19 = load i32, i32* %n.addr, align 4
  %add15 = add nsw i32 %19, 1
  %idxprom16 = sext i32 %add15 to i64
  %20 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %20, i64 %idxprom16
  %type18 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx17, i32 0, i32 0
  %21 = load i32, i32* %type18, align 4
  %cmp19 = icmp eq i32 %21, 16
  br i1 %cmp19, label %if.then.20, label %if.end.26

if.then.20:                                       ; preds = %sw.bb.14
  %22 = load i32, i32* %n.addr, align 4
  %add21 = add nsw i32 %22, 1
  %idxprom22 = sext i32 %add21 to i64
  %23 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx23 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %23, i64 %idxprom22
  %data24 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx23, i32 0, i32 1
  %d_drawable = bitcast %union._GimpParamData* %data24 to i32*
  %24 = load i32, i32* %d_drawable, align 4
  %25 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value25 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %25, i32 0, i32 3
  %sfa_drawable = bitcast %union.SFArgValue* %value25 to i32*
  store i32 %24, i32* %sfa_drawable, align 4
  store i32 1, i32* %retval
  br label %return

if.end.26:                                        ; preds = %sw.bb.14
  br label %sw.epilog

sw.bb.27:                                         ; preds = %if.then
  %26 = load i32, i32* %n.addr, align 4
  %add28 = add nsw i32 %26, 1
  %idxprom29 = sext i32 %add28 to i64
  %27 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx30 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %27, i64 %idxprom29
  %type31 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx30, i32 0, i32 0
  %28 = load i32, i32* %type31, align 4
  %cmp32 = icmp eq i32 %28, 14
  br i1 %cmp32, label %if.then.33, label %if.end.39

if.then.33:                                       ; preds = %sw.bb.27
  %29 = load i32, i32* %n.addr, align 4
  %add34 = add nsw i32 %29, 1
  %idxprom35 = sext i32 %add34 to i64
  %30 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %30, i64 %idxprom35
  %data37 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx36, i32 0, i32 1
  %d_layer = bitcast %union._GimpParamData* %data37 to i32*
  %31 = load i32, i32* %d_layer, align 4
  %32 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value38 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %32, i32 0, i32 3
  %sfa_layer = bitcast %union.SFArgValue* %value38 to i32*
  store i32 %31, i32* %sfa_layer, align 4
  store i32 1, i32* %retval
  br label %return

if.end.39:                                        ; preds = %sw.bb.27
  br label %sw.epilog

sw.bb.40:                                         ; preds = %if.then
  %33 = load i32, i32* %n.addr, align 4
  %add41 = add nsw i32 %33, 1
  %idxprom42 = sext i32 %add41 to i64
  %34 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx43 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %34, i64 %idxprom42
  %type44 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx43, i32 0, i32 0
  %35 = load i32, i32* %type44, align 4
  %cmp45 = icmp eq i32 %35, 15
  br i1 %cmp45, label %if.then.46, label %if.end.52

if.then.46:                                       ; preds = %sw.bb.40
  %36 = load i32, i32* %n.addr, align 4
  %add47 = add nsw i32 %36, 1
  %idxprom48 = sext i32 %add47 to i64
  %37 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx49 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %37, i64 %idxprom48
  %data50 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx49, i32 0, i32 1
  %d_channel = bitcast %union._GimpParamData* %data50 to i32*
  %38 = load i32, i32* %d_channel, align 4
  %39 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value51 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %39, i32 0, i32 3
  %sfa_channel = bitcast %union.SFArgValue* %value51 to i32*
  store i32 %38, i32* %sfa_channel, align 4
  store i32 1, i32* %retval
  br label %return

if.end.52:                                        ; preds = %sw.bb.40
  br label %sw.epilog

sw.bb.53:                                         ; preds = %if.then
  %40 = load i32, i32* %n.addr, align 4
  %add54 = add nsw i32 %40, 1
  %idxprom55 = sext i32 %add54 to i64
  %41 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx56 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %41, i64 %idxprom55
  %type57 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx56, i32 0, i32 0
  %42 = load i32, i32* %type57, align 4
  %cmp58 = icmp eq i32 %42, 19
  br i1 %cmp58, label %if.then.59, label %if.end.65

if.then.59:                                       ; preds = %sw.bb.53
  %43 = load i32, i32* %n.addr, align 4
  %add60 = add nsw i32 %43, 1
  %idxprom61 = sext i32 %add60 to i64
  %44 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx62 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %44, i64 %idxprom61
  %data63 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx62, i32 0, i32 1
  %d_vectors = bitcast %union._GimpParamData* %data63 to i32*
  %45 = load i32, i32* %d_vectors, align 4
  %46 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value64 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %46, i32 0, i32 3
  %sfa_vectors = bitcast %union.SFArgValue* %value64 to i32*
  store i32 %45, i32* %sfa_vectors, align 4
  store i32 1, i32* %retval
  br label %return

if.end.65:                                        ; preds = %sw.bb.53
  br label %sw.epilog

sw.bb.66:                                         ; preds = %if.then
  %47 = load i32, i32* %n.addr, align 4
  %add67 = add nsw i32 %47, 1
  %idxprom68 = sext i32 %add67 to i64
  %48 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx69 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %48, i64 %idxprom68
  %type70 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx69, i32 0, i32 0
  %49 = load i32, i32* %type70, align 4
  %cmp71 = icmp eq i32 %49, 12
  br i1 %cmp71, label %if.then.72, label %if.end.78

if.then.72:                                       ; preds = %sw.bb.66
  %50 = load i32, i32* %n.addr, align 4
  %add73 = add nsw i32 %50, 1
  %idxprom74 = sext i32 %add73 to i64
  %51 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx75 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %51, i64 %idxprom74
  %data76 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx75, i32 0, i32 1
  %d_display = bitcast %union._GimpParamData* %data76 to i32*
  %52 = load i32, i32* %d_display, align 4
  %53 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value77 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %53, i32 0, i32 3
  %sfa_display = bitcast %union.SFArgValue* %value77 to i32*
  store i32 %52, i32* %sfa_display, align 4
  store i32 1, i32* %retval
  br label %return

if.end.78:                                        ; preds = %sw.bb.66
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.78, %if.end.65, %if.end.52, %if.end.39, %if.end.26, %if.end
  br label %if.end.79

if.end.79:                                        ; preds = %sw.epilog, %land.lhs.true.3, %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.79, %if.then.72, %if.then.59, %if.then.46, %if.then.33, %if.then.20, %if.then.10
  %54 = load i32, i32* %retval
  ret i32 %54
}

; Function Attrs: nounwind uwtable
define i8* @script_fu_script_get_command(%struct.SFScript* %script) #0 {
entry:
  %retval = alloca i8*, align 8
  %script.addr = alloca %struct.SFScript*, align 8
  %s = alloca %struct._GString*, align 8
  %i = alloca i32, align 4
  %arg_value = alloca %union.SFArgValue*, align 8
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b = alloca i8, align 1
  %tmp = alloca i8*, align 8
  %buffer = alloca [39 x i8], align 16
  %tmp25 = alloca i8*, align 8
  %buffer33 = alloca [39 x i8], align 16
  store %struct.SFScript* %script, %struct.SFScript** %script.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %cmp = icmp ne %struct.SFScript* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.script_fu_script_get_command, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call = call %struct._GString* @g_string_new(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0))
  store %struct._GString* %call, %struct._GString** %s, align 8
  %1 = load %struct._GString*, %struct._GString** %s, align 8
  %2 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %name = getelementptr inbounds %struct.SFScript, %struct.SFScript* %2, i32 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %call1 = call %struct._GString* @g_string_append(%struct._GString* %1, i8* %3)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %n_args = getelementptr inbounds %struct.SFScript, %struct.SFScript* %5, i32 0, i32 7
  %6 = load i32, i32* %n_args, align 4
  %cmp2 = icmp slt i32 %4, %6
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %args = getelementptr inbounds %struct.SFScript, %struct.SFScript* %8, i32 0, i32 8
  %9 = load %struct.SFArg*, %struct.SFArg** %args, align 8
  %arrayidx = getelementptr inbounds %struct.SFArg, %struct.SFArg* %9, i64 %idxprom
  %value = getelementptr inbounds %struct.SFArg, %struct.SFArg* %arrayidx, i32 0, i32 3
  store %union.SFArgValue* %value, %union.SFArgValue** %arg_value, align 8
  %10 = load %struct._GString*, %struct._GString** %s, align 8
  %call3 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %10, i8 signext 32)
  %11 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %11 to i64
  %12 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %args5 = getelementptr inbounds %struct.SFScript, %struct.SFScript* %12, i32 0, i32 8
  %13 = load %struct.SFArg*, %struct.SFArg** %args5, align 8
  %arrayidx6 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %13, i64 %idxprom4
  %type = getelementptr inbounds %struct.SFArg, %struct.SFArg* %arrayidx6, i32 0, i32 0
  %14 = load i32, i32* %type, align 4
  switch i32 %14, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 20, label %sw.bb
    i32 5, label %sw.bb.7
    i32 6, label %sw.bb.10
    i32 7, label %sw.bb.12
    i32 8, label %sw.bb.14
    i32 18, label %sw.bb.14
    i32 9, label %sw.bb.17
    i32 14, label %sw.bb.23
    i32 15, label %sw.bb.23
    i32 10, label %sw.bb.27
    i32 17, label %sw.bb.28
    i32 11, label %sw.bb.29
    i32 13, label %sw.bb.30
    i32 12, label %sw.bb.31
    i32 16, label %sw.bb.41
    i32 19, label %sw.bb.42
  ]

sw.bb:                                            ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  %15 = load %struct._GString*, %struct._GString** %s, align 8
  %16 = load %union.SFArgValue*, %union.SFArgValue** %arg_value, align 8
  %sfa_image = bitcast %union.SFArgValue* %16 to i32*
  %17 = load i32, i32* %sfa_image, align 4
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i32 %17)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %for.body
  %18 = load %union.SFArgValue*, %union.SFArgValue** %arg_value, align 8
  %sfa_color = bitcast %union.SFArgValue* %18 to %struct._GimpRGB*
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %sfa_color, i8* %r, i8* %g, i8* %b)
  %19 = load %struct._GString*, %struct._GString** %s, align 8
  %20 = load i8, i8* %r, align 1
  %conv = zext i8 %20 to i32
  %21 = load i8, i8* %g, align 1
  %conv8 = zext i8 %21 to i32
  %22 = load i8, i8* %b, align 1
  %conv9 = zext i8 %22 to i32
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), i32 %conv, i32 %conv8, i32 %conv9)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %for.body
  %23 = load %struct._GString*, %struct._GString** %s, align 8
  %24 = load %union.SFArgValue*, %union.SFArgValue** %arg_value, align 8
  %sfa_toggle = bitcast %union.SFArgValue* %24 to i32*
  %25 = load i32, i32* %sfa_toggle, align 4
  %tobool = icmp ne i32 %25, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0)
  %call11 = call %struct._GString* @g_string_append(%struct._GString* %23, i8* %cond)
  br label %sw.epilog

sw.bb.12:                                         ; preds = %for.body
  %26 = load %struct._GString*, %struct._GString** %s, align 8
  %27 = load %union.SFArgValue*, %union.SFArgValue** %arg_value, align 8
  %sfa_value = bitcast %union.SFArgValue* %27 to i8**
  %28 = load i8*, i8** %sfa_value, align 8
  %call13 = call %struct._GString* @g_string_append(%struct._GString* %26, i8* %28)
  br label %sw.epilog

sw.bb.14:                                         ; preds = %for.body, %for.body
  %29 = load %union.SFArgValue*, %union.SFArgValue** %arg_value, align 8
  %sfa_value15 = bitcast %union.SFArgValue* %29 to i8**
  %30 = load i8*, i8** %sfa_value15, align 8
  %call16 = call i8* @script_fu_strescape(i8* %30)
  store i8* %call16, i8** %tmp, align 8
  %31 = load %struct._GString*, %struct._GString** %s, align 8
  %32 = load i8*, i8** %tmp, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* %32)
  %33 = load i8*, i8** %tmp, align 8
  call void @g_free(i8* %33)
  br label %sw.epilog

sw.bb.17:                                         ; preds = %for.body
  %arraydecay = getelementptr inbounds [39 x i8], [39 x i8]* %buffer, i32 0, i32 0
  %34 = load %union.SFArgValue*, %union.SFArgValue** %arg_value, align 8
  %sfa_adjustment = bitcast %union.SFArgValue* %34 to %struct.SFAdjustment*
  %value19 = getelementptr inbounds %struct.SFAdjustment, %struct.SFAdjustment* %sfa_adjustment, i32 0, i32 1
  %35 = load double, double* %value19, align 8
  %call20 = call i8* @g_ascii_dtostr(i8* %arraydecay, i32 39, double %35)
  %36 = load %struct._GString*, %struct._GString** %s, align 8
  %arraydecay21 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer, i32 0, i32 0
  %call22 = call %struct._GString* @g_string_append(%struct._GString* %36, i8* %arraydecay21)
  br label %sw.epilog

sw.bb.23:                                         ; preds = %for.body, %for.body
  %37 = load %union.SFArgValue*, %union.SFArgValue** %arg_value, align 8
  %sfa_file = bitcast %union.SFArgValue* %37 to %struct.SFFilename*
  %filename = getelementptr inbounds %struct.SFFilename, %struct.SFFilename* %sfa_file, i32 0, i32 0
  %38 = load i8*, i8** %filename, align 8
  %call26 = call i8* @script_fu_strescape(i8* %38)
  store i8* %call26, i8** %tmp25, align 8
  %39 = load %struct._GString*, %struct._GString** %s, align 8
  %40 = load i8*, i8** %tmp25, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* %40)
  %41 = load i8*, i8** %tmp25, align 8
  call void @g_free(i8* %41)
  br label %sw.epilog

sw.bb.27:                                         ; preds = %for.body
  %42 = load %struct._GString*, %struct._GString** %s, align 8
  %43 = load %union.SFArgValue*, %union.SFArgValue** %arg_value, align 8
  %sfa_font = bitcast %union.SFArgValue* %43 to i8**
  %44 = load i8*, i8** %sfa_font, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* %44)
  br label %sw.epilog

sw.bb.28:                                         ; preds = %for.body
  %45 = load %struct._GString*, %struct._GString** %s, align 8
  %46 = load %union.SFArgValue*, %union.SFArgValue** %arg_value, align 8
  %sfa_palette = bitcast %union.SFArgValue* %46 to i8**
  %47 = load i8*, i8** %sfa_palette, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* %47)
  br label %sw.epilog

sw.bb.29:                                         ; preds = %for.body
  %48 = load %struct._GString*, %struct._GString** %s, align 8
  %49 = load %union.SFArgValue*, %union.SFArgValue** %arg_value, align 8
  %sfa_pattern = bitcast %union.SFArgValue* %49 to i8**
  %50 = load i8*, i8** %sfa_pattern, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* %50)
  br label %sw.epilog

sw.bb.30:                                         ; preds = %for.body
  %51 = load %struct._GString*, %struct._GString** %s, align 8
  %52 = load %union.SFArgValue*, %union.SFArgValue** %arg_value, align 8
  %sfa_gradient = bitcast %union.SFArgValue* %52 to i8**
  %53 = load i8*, i8** %sfa_gradient, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* %53)
  br label %sw.epilog

sw.bb.31:                                         ; preds = %for.body
  %arraydecay34 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer33, i32 0, i32 0
  %54 = load %union.SFArgValue*, %union.SFArgValue** %arg_value, align 8
  %sfa_brush = bitcast %union.SFArgValue* %54 to %struct.SFBrush*
  %opacity = getelementptr inbounds %struct.SFBrush, %struct.SFBrush* %sfa_brush, i32 0, i32 1
  %55 = load double, double* %opacity, align 8
  %call35 = call i8* @g_ascii_dtostr(i8* %arraydecay34, i32 39, double %55)
  %56 = load %struct._GString*, %struct._GString** %s, align 8
  %57 = load %union.SFArgValue*, %union.SFArgValue** %arg_value, align 8
  %sfa_brush36 = bitcast %union.SFArgValue* %57 to %struct.SFBrush*
  %name37 = getelementptr inbounds %struct.SFBrush, %struct.SFBrush* %sfa_brush36, i32 0, i32 0
  %58 = load i8*, i8** %name37, align 8
  %arraydecay38 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer33, i32 0, i32 0
  %59 = load %union.SFArgValue*, %union.SFArgValue** %arg_value, align 8
  %sfa_brush39 = bitcast %union.SFArgValue* %59 to %struct.SFBrush*
  %spacing = getelementptr inbounds %struct.SFBrush, %struct.SFBrush* %sfa_brush39, i32 0, i32 2
  %60 = load i32, i32* %spacing, align 4
  %61 = load %union.SFArgValue*, %union.SFArgValue** %arg_value, align 8
  %sfa_brush40 = bitcast %union.SFArgValue* %61 to %struct.SFBrush*
  %paint_mode = getelementptr inbounds %struct.SFBrush, %struct.SFBrush* %sfa_brush40, i32 0, i32 3
  %62 = load i32, i32* %paint_mode, align 4
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i32 0, i32 0), i8* %58, i8* %arraydecay38, i32 %60, i32 %62)
  br label %sw.epilog

sw.bb.41:                                         ; preds = %for.body
  %63 = load %struct._GString*, %struct._GString** %s, align 8
  %64 = load %union.SFArgValue*, %union.SFArgValue** %arg_value, align 8
  %sfa_option = bitcast %union.SFArgValue* %64 to %struct.SFOption*
  %history = getelementptr inbounds %struct.SFOption, %struct.SFOption* %sfa_option, i32 0, i32 1
  %65 = load i32, i32* %history, align 4
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i32 %65)
  br label %sw.epilog

sw.bb.42:                                         ; preds = %for.body
  %66 = load %struct._GString*, %struct._GString** %s, align 8
  %67 = load %union.SFArgValue*, %union.SFArgValue** %arg_value, align 8
  %sfa_enum = bitcast %union.SFArgValue* %67 to %struct.SFEnum*
  %history43 = getelementptr inbounds %struct.SFEnum, %struct.SFEnum* %sfa_enum, i32 0, i32 1
  %68 = load i32, i32* %history43, align 4
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i32 %68)
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb.42, %sw.bb.41, %sw.bb.31, %sw.bb.30, %sw.bb.29, %sw.bb.28, %sw.bb.27, %sw.bb.23, %sw.bb.17, %sw.bb.14, %sw.bb.12, %sw.bb.10, %sw.bb.7, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %69 = load i32, i32* %i, align 4
  %inc = add nsw i32 %69, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %70 = load %struct._GString*, %struct._GString** %s, align 8
  %call44 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %70, i8 signext 41)
  %71 = load %struct._GString*, %struct._GString** %s, align 8
  %call45 = call i8* @g_string_free(%struct._GString* %71, i32 0)
  store i8* %call45, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else
  %72 = load i8*, i8** %retval
  ret i8* %72
}

declare %struct._GString* @g_string_new(i8*) #1

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString* %gstring, i8 signext %c) #5 {
entry:
  %gstring.addr = alloca %struct._GString*, align 8
  %c.addr = alloca i8, align 1
  store %struct._GString* %gstring, %struct._GString** %gstring.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  %0 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %0, i32 0, i32 1
  %1 = load i64, i64* %len, align 8
  %add = add i64 %1, 1
  %2 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %allocated_len = getelementptr inbounds %struct._GString, %struct._GString* %2, i32 0, i32 2
  %3 = load i64, i64* %allocated_len, align 8
  %cmp = icmp ult i64 %add, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i8, i8* %c.addr, align 1
  %5 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len1 = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 1
  %6 = load i64, i64* %len1, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %len1, align 8
  %7 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %7, i32 0, i32 0
  %8 = load i8*, i8** %str, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %6
  store i8 %4, i8* %arrayidx, align 1
  %9 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len2 = getelementptr inbounds %struct._GString, %struct._GString* %9, i32 0, i32 1
  %10 = load i64, i64* %len2, align 8
  %11 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %str3 = getelementptr inbounds %struct._GString, %struct._GString* %11, i32 0, i32 0
  %12 = load i8*, i8** %str3, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %12, i64 %10
  store i8 0, i8* %arrayidx4, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %14 = load i8, i8* %c.addr, align 1
  %call = call %struct._GString* @g_string_insert_c(%struct._GString* %13, i64 -1, i8 signext %14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  ret %struct._GString* %15
}

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #1

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #1

declare i8* @script_fu_strescape(i8*) #1

declare i8* @g_ascii_dtostr(i8*, i32, double) #1

declare i8* @g_string_free(%struct._GString*, i32) #1

; Function Attrs: nounwind uwtable
define i8* @script_fu_script_get_command_from_params(%struct.SFScript* %script, %struct._GimpParam* %params) #0 {
entry:
  %retval = alloca i8*, align 8
  %script.addr = alloca %struct.SFScript*, align 8
  %params.addr = alloca %struct._GimpParam*, align 8
  %s = alloca %struct._GString*, align 8
  %i = alloca i32, align 4
  %param = alloca %struct._GimpParam*, align 8
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b = alloca i8, align 1
  %tmp = alloca i8*, align 8
  %buffer = alloca [39 x i8], align 16
  store %struct.SFScript* %script, %struct.SFScript** %script.addr, align 8
  store %struct._GimpParam* %params, %struct._GimpParam** %params.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %cmp = icmp ne %struct.SFScript* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__func__.script_fu_script_get_command_from_params, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call = call %struct._GString* @g_string_new(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0))
  store %struct._GString* %call, %struct._GString** %s, align 8
  %1 = load %struct._GString*, %struct._GString** %s, align 8
  %2 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %name = getelementptr inbounds %struct.SFScript, %struct.SFScript* %2, i32 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %call1 = call %struct._GString* @g_string_append(%struct._GString* %1, i8* %3)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %n_args = getelementptr inbounds %struct.SFScript, %struct.SFScript* %5, i32 0, i32 7
  %6 = load i32, i32* %n_args, align 4
  %cmp2 = icmp slt i32 %4, %6
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %add = add nsw i32 %7, 1
  %idxprom = sext i32 %add to i64
  %8 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %8, i64 %idxprom
  store %struct._GimpParam* %arrayidx, %struct._GimpParam** %param, align 8
  %9 = load %struct._GString*, %struct._GString** %s, align 8
  %call3 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %9, i8 signext 32)
  %10 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %10 to i64
  %11 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %args = getelementptr inbounds %struct.SFScript, %struct.SFScript* %11, i32 0, i32 8
  %12 = load %struct.SFArg*, %struct.SFArg** %args, align 8
  %arrayidx5 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %12, i64 %idxprom4
  %type = getelementptr inbounds %struct.SFArg, %struct.SFArg* %arrayidx5, i32 0, i32 0
  %13 = load i32, i32* %type, align 4
  switch i32 %13, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 20, label %sw.bb
    i32 5, label %sw.bb.6
    i32 6, label %sw.bb.10
    i32 7, label %sw.bb.13
    i32 8, label %sw.bb.16
    i32 18, label %sw.bb.16
    i32 14, label %sw.bb.16
    i32 15, label %sw.bb.16
    i32 9, label %sw.bb.20
    i32 10, label %sw.bb.26
    i32 17, label %sw.bb.26
    i32 11, label %sw.bb.26
    i32 13, label %sw.bb.26
    i32 12, label %sw.bb.26
    i32 16, label %sw.bb.29
    i32 19, label %sw.bb.29
  ]

sw.bb:                                            ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  %14 = load %struct._GString*, %struct._GString** %s, align 8
  %15 = load %struct._GimpParam*, %struct._GimpParam** %param, align 8
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %15, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %16 = load i32, i32* %d_int32, align 4
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i32 %16)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %for.body
  %17 = load %struct._GimpParam*, %struct._GimpParam** %param, align 8
  %data7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %17, i32 0, i32 1
  %d_color = bitcast %union._GimpParamData* %data7 to %struct._GimpRGB*
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %d_color, i8* %r, i8* %g, i8* %b)
  %18 = load %struct._GString*, %struct._GString** %s, align 8
  %19 = load i8, i8* %r, align 1
  %conv = zext i8 %19 to i32
  %20 = load i8, i8* %g, align 1
  %conv8 = zext i8 %20 to i32
  %21 = load i8, i8* %b, align 1
  %conv9 = zext i8 %21 to i32
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), i32 %conv, i32 %conv8, i32 %conv9)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %for.body
  %22 = load %struct._GString*, %struct._GString** %s, align 8
  %23 = load %struct._GimpParam*, %struct._GimpParam** %param, align 8
  %data11 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %23, i32 0, i32 1
  %d_int3212 = bitcast %union._GimpParamData* %data11 to i32*
  %24 = load i32, i32* %d_int3212, align 4
  %tobool = icmp ne i32 %24, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0)
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %22, i8* %cond)
  br label %sw.epilog

sw.bb.13:                                         ; preds = %for.body
  %25 = load %struct._GString*, %struct._GString** %s, align 8
  %26 = load %struct._GimpParam*, %struct._GimpParam** %param, align 8
  %data14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %26, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data14 to i8**
  %27 = load i8*, i8** %d_string, align 8
  %call15 = call %struct._GString* @g_string_append(%struct._GString* %25, i8* %27)
  br label %sw.epilog

sw.bb.16:                                         ; preds = %for.body, %for.body, %for.body, %for.body
  %28 = load %struct._GimpParam*, %struct._GimpParam** %param, align 8
  %data17 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %28, i32 0, i32 1
  %d_string18 = bitcast %union._GimpParamData* %data17 to i8**
  %29 = load i8*, i8** %d_string18, align 8
  %call19 = call i8* @script_fu_strescape(i8* %29)
  store i8* %call19, i8** %tmp, align 8
  %30 = load %struct._GString*, %struct._GString** %s, align 8
  %31 = load i8*, i8** %tmp, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* %31)
  %32 = load i8*, i8** %tmp, align 8
  call void @g_free(i8* %32)
  br label %sw.epilog

sw.bb.20:                                         ; preds = %for.body
  %arraydecay = getelementptr inbounds [39 x i8], [39 x i8]* %buffer, i32 0, i32 0
  %33 = load %struct._GimpParam*, %struct._GimpParam** %param, align 8
  %data22 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %33, i32 0, i32 1
  %d_float = bitcast %union._GimpParamData* %data22 to double*
  %34 = load double, double* %d_float, align 8
  %call23 = call i8* @g_ascii_dtostr(i8* %arraydecay, i32 39, double %34)
  %35 = load %struct._GString*, %struct._GString** %s, align 8
  %arraydecay24 = getelementptr inbounds [39 x i8], [39 x i8]* %buffer, i32 0, i32 0
  %call25 = call %struct._GString* @g_string_append(%struct._GString* %35, i8* %arraydecay24)
  br label %sw.epilog

sw.bb.26:                                         ; preds = %for.body, %for.body, %for.body, %for.body, %for.body
  %36 = load %struct._GString*, %struct._GString** %s, align 8
  %37 = load %struct._GimpParam*, %struct._GimpParam** %param, align 8
  %data27 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %37, i32 0, i32 1
  %d_string28 = bitcast %union._GimpParamData* %data27 to i8**
  %38 = load i8*, i8** %d_string28, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* %38)
  br label %sw.epilog

sw.bb.29:                                         ; preds = %for.body, %for.body
  %39 = load %struct._GString*, %struct._GString** %s, align 8
  %40 = load %struct._GimpParam*, %struct._GimpParam** %param, align 8
  %data30 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %40, i32 0, i32 1
  %d_int3231 = bitcast %union._GimpParamData* %data30 to i32*
  %41 = load i32, i32* %d_int3231, align 4
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i32 %41)
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb.29, %sw.bb.26, %sw.bb.20, %sw.bb.16, %sw.bb.13, %sw.bb.10, %sw.bb.6, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %42 = load i32, i32* %i, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load %struct._GString*, %struct._GString** %s, align 8
  %call32 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %43, i8 signext 41)
  %44 = load %struct._GString*, %struct._GString** %s, align 8
  %call33 = call i8* @g_string_free(%struct._GString* %44, i32 0)
  store i8* %call33, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else
  %45 = load i8*, i8** %retval
  ret i8* %45
}

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
