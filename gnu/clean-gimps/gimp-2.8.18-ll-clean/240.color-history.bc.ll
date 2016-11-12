; ModuleID = './app/gui/color-history.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpRGB = type { double, double, double, double }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { {}*, {}*, {}*, {}*, {}*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, {}* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GimpConfigWriter = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GScanner = type { i8*, i32, i32, i8*, %struct._GData*, %struct._GScannerConfig*, i32, %union._GTokenValue, i32, i32, i32, %union._GTokenValue, i32, i32, %struct._GHashTable*, i32, i8*, i8*, i8*, i32, void (%struct._GScanner*, i8*, i32)* }
%struct._GScannerConfig = type { i8*, i8*, i8*, i8*, i24, i32 }
%union._GTokenValue = type { i8* }
%struct._GHashTable = type opaque

@.str = private unnamed_addr constant [9 x i8] c"Gimp-GUI\00", align 1
@__func__.color_history_save = private unnamed_addr constant [19 x i8] c"color_history_save\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"colorrc\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Writing '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"GIMP colorrc\0A\0AThis file holds a list of recently used colors.\00", align 1
@color_history_initialized = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"color-history\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@color_history = internal global [12 x %struct._GimpRGB] zeroinitializer, align 16
@.str.7 = private unnamed_addr constant [11 x i8] c"color-rgba\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"%s %s %s %s\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"end of colorrc\00", align 1
@__func__.color_history_restore = private unnamed_addr constant [22 x i8] c"color_history_restore\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Parsing '%s'\0A\00", align 1
@__func__.color_history_set = private unnamed_addr constant [18 x i8] c"color_history_set\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"index >= 0\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"index < COLOR_HISTORY_SIZE\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"rgb != NULL\00", align 1
@__func__.color_history_get = private unnamed_addr constant [18 x i8] c"color_history_get\00", align 1
@__func__.color_history_add = private unnamed_addr constant [18 x i8] c"color_history_add\00", align 1
@color_history_add_from_rc.index = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @color_history_save(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %writer = alloca %struct._GimpConfigWriter*, align 8
  %filename = alloca i8*, align 8
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %buf = alloca [4 x [39 x i8]], align 16
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.color_history_save, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call noalias i8* @gimp_personal_rc_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0))
  store i8* %call11, i8** %filename, align 8
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 4
  %14 = load i32, i32* %be_verbose, align 4
  %tobool12 = icmp ne i32 %14, 0
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %do.end
  %15 = load i8*, i8** %filename, align 8
  %call14 = call i8* @gimp_filename_to_utf8(i8* %15)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* %call14)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %do.end
  %16 = load i8*, i8** %filename, align 8
  %call16 = call %struct._GimpConfigWriter* @gimp_config_writer_new_file(i8* %16, i32 1, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i32 0, i32 0), %struct._GError** null)
  store %struct._GimpConfigWriter* %call16, %struct._GimpConfigWriter** %writer, align 8
  %17 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %17)
  %18 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %tobool17 = icmp ne %struct._GimpConfigWriter* %18, null
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.end.15
  br label %return

if.end.19:                                        ; preds = %if.end.15
  %19 = load i32, i32* @color_history_initialized, align 4
  %tobool20 = icmp ne i32 %19, 0
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %if.end.19
  call void @color_history_init()
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.19
  %20 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.22
  %21 = load i32, i32* %i, align 4
  %cmp23 = icmp slt i32 %21, 12
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %buf, i32 0, i64 0
  %arraydecay = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx, i32 0, i32 0
  %22 = load i32, i32* %i, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx25 = getelementptr inbounds [12 x %struct._GimpRGB], [12 x %struct._GimpRGB]* @color_history, i32 0, i64 %idxprom
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx25, i32 0, i32 0
  %23 = load double, double* %r, align 8
  %call26 = call i8* @g_ascii_formatd(i8* %arraydecay, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), double %23)
  %arrayidx27 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %buf, i32 0, i64 1
  %arraydecay28 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx27, i32 0, i32 0
  %24 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %24 to i64
  %arrayidx30 = getelementptr inbounds [12 x %struct._GimpRGB], [12 x %struct._GimpRGB]* @color_history, i32 0, i64 %idxprom29
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx30, i32 0, i32 1
  %25 = load double, double* %g, align 8
  %call31 = call i8* @g_ascii_formatd(i8* %arraydecay28, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), double %25)
  %arrayidx32 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %buf, i32 0, i64 2
  %arraydecay33 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx32, i32 0, i32 0
  %26 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %26 to i64
  %arrayidx35 = getelementptr inbounds [12 x %struct._GimpRGB], [12 x %struct._GimpRGB]* @color_history, i32 0, i64 %idxprom34
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx35, i32 0, i32 2
  %27 = load double, double* %b, align 8
  %call36 = call i8* @g_ascii_formatd(i8* %arraydecay33, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), double %27)
  %arrayidx37 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %buf, i32 0, i64 3
  %arraydecay38 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx37, i32 0, i32 0
  %28 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %28 to i64
  %arrayidx40 = getelementptr inbounds [12 x %struct._GimpRGB], [12 x %struct._GimpRGB]* @color_history, i32 0, i64 %idxprom39
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %arrayidx40, i32 0, i32 3
  %29 = load double, double* %a, align 8
  %call41 = call i8* @g_ascii_formatd(i8* %arraydecay38, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), double %29)
  %30 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0))
  %31 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %arrayidx42 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %buf, i32 0, i64 0
  %arraydecay43 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx42, i32 0, i32 0
  %arrayidx44 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %buf, i32 0, i64 1
  %arraydecay45 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx44, i32 0, i32 0
  %arrayidx46 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %buf, i32 0, i64 2
  %arraydecay47 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx46, i32 0, i32 0
  %arrayidx48 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %buf, i32 0, i64 3
  %arraydecay49 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx48, i32 0, i32 0
  call void (%struct._GimpConfigWriter*, i8*, ...) @gimp_config_writer_printf(%struct._GimpConfigWriter* %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* %arraydecay43, i8* %arraydecay45, i8* %arraydecay47, i8* %arraydecay49)
  %32 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %32)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %34)
  %35 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %call50 = call i32 @gimp_config_writer_finish(%struct._GimpConfigWriter* %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), %struct._GError** null)
  br label %return

return:                                           ; preds = %for.end, %if.then.18, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare noalias i8* @gimp_personal_rc_file(i8*) #3

declare void @g_print(i8*, ...) #3

declare i8* @gimp_filename_to_utf8(i8*) #3

declare %struct._GimpConfigWriter* @gimp_config_writer_new_file(i8*, i32, i8*, %struct._GError**) #3

declare void @g_free(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @color_history_init() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [12 x %struct._GimpRGB], [12 x %struct._GimpRGB]* @color_history, i32 0, i64 %idxprom
  call void @gimp_rgba_set(%struct._GimpRGB* %arrayidx, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* @color_history_initialized, align 4
  ret void
}

declare void @gimp_config_writer_open(%struct._GimpConfigWriter*, i8*) #3

declare i8* @g_ascii_formatd(i8*, i32, i8*, double) #3

declare void @gimp_config_writer_printf(%struct._GimpConfigWriter*, i8*, ...) #3

declare void @gimp_config_writer_close(%struct._GimpConfigWriter*) #3

declare i32 @gimp_config_writer_finish(%struct._GimpConfigWriter*, i8*, %struct._GError**) #3

; Function Attrs: nounwind uwtable
define void @color_history_restore(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %filename = alloca i8*, align 8
  %scanner = alloca %struct._GScanner*, align 8
  %token = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.color_history_restore, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call noalias i8* @gimp_personal_rc_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0))
  store i8* %call11, i8** %filename, align 8
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 4
  %14 = load i32, i32* %be_verbose, align 4
  %tobool12 = icmp ne i32 %14, 0
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %do.end
  %15 = load i8*, i8** %filename, align 8
  %call14 = call i8* @gimp_filename_to_utf8(i8* %15)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i8* %call14)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %do.end
  %16 = load i8*, i8** %filename, align 8
  %call16 = call %struct._GScanner* @gimp_scanner_new_file(i8* %16, %struct._GError** null)
  store %struct._GScanner* %call16, %struct._GScanner** %scanner, align 8
  %17 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %17)
  %18 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %tobool17 = icmp ne %struct._GScanner* %18, null
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.end.15
  br label %return

if.end.19:                                        ; preds = %if.end.15
  %19 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %19, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8* inttoptr (i64 1 to i8*))
  store i32 40, i32* %token, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end.19
  %20 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %call20 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %20)
  %21 = load i32, i32* %token, align 4
  %cmp21 = icmp eq i32 %call20, %21
  br i1 %cmp21, label %while.body, label %while.end.37

while.body:                                       ; preds = %while.cond
  %22 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %call22 = call i32 @g_scanner_get_next_token(%struct._GScanner* %22)
  store i32 %call22, i32* %token, align 4
  %23 = load i32, i32* %token, align 4
  switch i32 %23, label %sw.default [
    i32 40, label %sw.bb
    i32 265, label %sw.bb.23
    i32 41, label %sw.bb.36
  ]

sw.bb:                                            ; preds = %while.body
  store i32 265, i32* %token, align 4
  br label %sw.epilog

sw.bb.23:                                         ; preds = %while.body
  %24 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %value = getelementptr inbounds %struct._GScanner, %struct._GScanner* %24, i32 0, i32 7
  %v_symbol = bitcast %union._GTokenValue* %value to i8**
  %25 = load i8*, i8** %v_symbol, align 8
  %cmp24 = icmp eq i8* %25, inttoptr (i64 1 to i8*)
  br i1 %cmp24, label %if.then.25, label %if.end.35

if.then.25:                                       ; preds = %sw.bb.23
  br label %while.cond.26

while.cond.26:                                    ; preds = %if.end.34, %if.then.25
  %26 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %call27 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %26)
  %cmp28 = icmp eq i32 %call27, 40
  br i1 %cmp28, label %while.body.29, label %while.end

while.body.29:                                    ; preds = %while.cond.26
  %27 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %call31 = call i32 @gimp_scanner_parse_color(%struct._GScanner* %27, %struct._GimpRGB* %color)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %while.body.29
  br label %error

if.end.34:                                        ; preds = %while.body.29
  call void @color_history_add_from_rc(%struct._GimpRGB* %color)
  br label %while.cond.26

while.end:                                        ; preds = %while.cond.26
  br label %if.end.35

if.end.35:                                        ; preds = %while.end, %sw.bb.23
  store i32 41, i32* %token, align 4
  br label %sw.epilog

sw.bb.36:                                         ; preds = %while.body
  store i32 40, i32* %token, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.36, %if.end.35, %sw.bb
  br label %while.cond

while.end.37:                                     ; preds = %while.cond
  br label %error

error:                                            ; preds = %while.end.37, %if.then.33
  %28 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  call void @gimp_scanner_destroy(%struct._GScanner* %28)
  br label %return

return:                                           ; preds = %error, %if.then.18, %if.else.9
  ret void
}

declare %struct._GScanner* @gimp_scanner_new_file(i8*, %struct._GError**) #3

declare void @g_scanner_scope_add_symbol(%struct._GScanner*, i32, i8*, i8*) #3

declare i32 @g_scanner_peek_next_token(%struct._GScanner*) #3

declare i32 @g_scanner_get_next_token(%struct._GScanner*) #3

declare i32 @gimp_scanner_parse_color(%struct._GScanner*, %struct._GimpRGB*) #3

; Function Attrs: nounwind uwtable
define internal void @color_history_add_from_rc(%struct._GimpRGB* %color) #0 {
entry:
  %color.addr = alloca %struct._GimpRGB*, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  %0 = load i32, i32* @color_history_initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @color_history_init()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %tobool1 = icmp ne %struct._GimpRGB* %1, null
  br i1 %tobool1, label %land.lhs.true, label %if.end.3

land.lhs.true:                                    ; preds = %if.end
  %2 = load i32, i32* @color_history_add_from_rc.index, align 4
  %cmp = icmp slt i32 %2, 12
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %land.lhs.true
  %3 = load i32, i32* @color_history_add_from_rc.index, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* @color_history_add_from_rc.index, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [12 x %struct._GimpRGB], [12 x %struct._GimpRGB]* @color_history, i32 0, i64 %idxprom
  %4 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %5 = bitcast %struct._GimpRGB* %arrayidx to i8*
  %6 = bitcast %struct._GimpRGB* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 32, i32 8, i1 false)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %land.lhs.true, %if.end
  ret void
}

declare void @gimp_scanner_destroy(%struct._GScanner*) #3

; Function Attrs: nounwind uwtable
define void @color_history_set(i32 %index, %struct._GimpRGB* %rgb) #0 {
entry:
  %index.addr = alloca i32, align 4
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  store i32 %index, i32* %index.addr, align 4
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %index.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.color_history_set, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i32, i32* %index.addr, align 4
  %cmp2 = icmp slt i32 %1, 12
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.color_history_set, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %2 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %cmp8 = icmp ne %struct._GimpRGB* %2, null
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %do.body.7
  br label %if.end.11

if.else.10:                                       ; preds = %do.body.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.color_history_set, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0))
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  %3 = load i32, i32* @color_history_initialized, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %do.end.12
  call void @color_history_init()
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %do.end.12
  %4 = load i32, i32* %index.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [12 x %struct._GimpRGB], [12 x %struct._GimpRGB]* @color_history, i32 0, i64 %idxprom
  %5 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %6 = bitcast %struct._GimpRGB* %arrayidx to i8*
  %7 = bitcast %struct._GimpRGB* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  br label %return

return:                                           ; preds = %if.end.14, %if.else.10, %if.else.4, %if.else
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define void @color_history_get(i32 %index, %struct._GimpRGB* %rgb) #0 {
entry:
  %index.addr = alloca i32, align 4
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  store i32 %index, i32* %index.addr, align 4
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %index.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.color_history_get, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i32, i32* %index.addr, align 4
  %cmp2 = icmp slt i32 %1, 12
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.color_history_get, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %2 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %cmp8 = icmp ne %struct._GimpRGB* %2, null
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %do.body.7
  br label %if.end.11

if.else.10:                                       ; preds = %do.body.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.color_history_get, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0))
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  %3 = load i32, i32* @color_history_initialized, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %do.end.12
  call void @color_history_init()
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %do.end.12
  %4 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %5 = load i32, i32* %index.addr, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [12 x %struct._GimpRGB], [12 x %struct._GimpRGB]* @color_history, i32 0, i64 %idxprom
  %6 = bitcast %struct._GimpRGB* %4 to i8*
  %7 = bitcast %struct._GimpRGB* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  br label %return

return:                                           ; preds = %if.end.14, %if.else.10, %if.else.4, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @color_history_add(%struct._GimpRGB* %rgb) #0 {
entry:
  %retval = alloca i32, align 4
  %rgb.addr = alloca %struct._GimpRGB*, align 8
  %shift_begin = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct._GimpRGB* %rgb, %struct._GimpRGB** %rgb.addr, align 8
  store i32 -1, i32* %shift_begin, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.color_history_add, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32, i32* @color_history_initialized, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %do.end
  call void @color_history_init()
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %do.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.2
  %2 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %2, 12
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [12 x %struct._GimpRGB], [12 x %struct._GimpRGB]* @color_history, i32 0, i64 %idxprom
  %4 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %call = call double @gimp_rgba_distance(%struct._GimpRGB* %arrayidx, %struct._GimpRGB* %4)
  %cmp4 = fcmp olt double %call, 1.000000e-04
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  store i32 %5, i32* %shift_begin, align 4
  br label %doit

if.end.6:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %shift_begin, align 4
  %cmp7 = icmp eq i32 %7, -1
  br i1 %cmp7, label %if.then.8, label %if.end.29

if.then.8:                                        ; preds = %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.26, %if.then.8
  %8 = load i32, i32* %i, align 4
  %cmp10 = icmp slt i32 %8, 12
  br i1 %cmp10, label %for.body.11, label %for.end.28

for.body.11:                                      ; preds = %for.cond.9
  %9 = load i32, i32* %i, align 4
  %add = add nsw i32 %9, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.23, %for.body.11
  %10 = load i32, i32* %j, align 4
  %cmp13 = icmp slt i32 %10, 12
  br i1 %cmp13, label %for.body.14, label %for.end.25

for.body.14:                                      ; preds = %for.cond.12
  %11 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %11 to i64
  %arrayidx16 = getelementptr inbounds [12 x %struct._GimpRGB], [12 x %struct._GimpRGB]* @color_history, i32 0, i64 %idxprom15
  %12 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %12 to i64
  %arrayidx18 = getelementptr inbounds [12 x %struct._GimpRGB], [12 x %struct._GimpRGB]* @color_history, i32 0, i64 %idxprom17
  %call19 = call double @gimp_rgba_distance(%struct._GimpRGB* %arrayidx16, %struct._GimpRGB* %arrayidx18)
  %cmp20 = fcmp olt double %call19, 1.000000e-04
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %for.body.14
  %13 = load i32, i32* %i, align 4
  store i32 %13, i32* %shift_begin, align 4
  br label %doit

if.end.22:                                        ; preds = %for.body.14
  br label %for.inc.23

for.inc.23:                                       ; preds = %if.end.22
  %14 = load i32, i32* %j, align 4
  %inc24 = add nsw i32 %14, 1
  store i32 %inc24, i32* %j, align 4
  br label %for.cond.12

for.end.25:                                       ; preds = %for.cond.12
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.end.25
  %15 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %15, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond.9

for.end.28:                                       ; preds = %for.cond.9
  br label %if.end.29

if.end.29:                                        ; preds = %for.end.28, %for.end
  %16 = load i32, i32* %shift_begin, align 4
  %cmp30 = icmp eq i32 %16, -1
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.29
  store i32 11, i32* %shift_begin, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.29
  br label %doit

doit:                                             ; preds = %if.end.32, %if.then.21, %if.then.5
  %17 = load i32, i32* %shift_begin, align 4
  store i32 %17, i32* %i, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.40, %doit
  %18 = load i32, i32* %i, align 4
  %cmp34 = icmp sgt i32 %18, 0
  br i1 %cmp34, label %for.body.35, label %for.end.41

for.body.35:                                      ; preds = %for.cond.33
  %19 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %19 to i64
  %arrayidx37 = getelementptr inbounds [12 x %struct._GimpRGB], [12 x %struct._GimpRGB]* @color_history, i32 0, i64 %idxprom36
  %20 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %20, 1
  %idxprom38 = sext i32 %sub to i64
  %arrayidx39 = getelementptr inbounds [12 x %struct._GimpRGB], [12 x %struct._GimpRGB]* @color_history, i32 0, i64 %idxprom38
  %21 = bitcast %struct._GimpRGB* %arrayidx37 to i8*
  %22 = bitcast %struct._GimpRGB* %arrayidx39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 32, i32 8, i1 false)
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.35
  %23 = load i32, i32* %i, align 4
  %dec = add nsw i32 %23, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.33

for.end.41:                                       ; preds = %for.cond.33
  %24 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb.addr, align 8
  %25 = bitcast %struct._GimpRGB* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([12 x %struct._GimpRGB]* @color_history to i8*), i8* %25, i64 32, i32 8, i1 false)
  %26 = load i32, i32* %shift_begin, align 4
  store i32 %26, i32* %retval
  br label %return

return:                                           ; preds = %for.end.41, %if.else
  %27 = load i32, i32* %retval
  ret i32 %27
}

declare double @gimp_rgba_distance(%struct._GimpRGB*, %struct._GimpRGB*) #3

declare void @gimp_rgba_set(%struct._GimpRGB*, double, double, double, double) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
