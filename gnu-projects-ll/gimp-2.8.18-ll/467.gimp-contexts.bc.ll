; ModuleID = './app/core/gimp-contexts.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpConfig = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_contexts_init = private unnamed_addr constant [19 x i8] c"gimp_contexts_init\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"User\00", align 1
@__func__.gimp_contexts_exit = private unnamed_addr constant [19 x i8] c"gimp_contexts_exit\00", align 1
@__func__.gimp_contexts_load = private unnamed_addr constant [19 x i8] c"gimp_contexts_load\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"contextrc\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Parsing '%s'\0A\00", align 1
@__func__.gimp_contexts_save = private unnamed_addr constant [19 x i8] c"gimp_contexts_save\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Writing '%s'\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"GIMP user context\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"end of user context\00", align 1
@__func__.gimp_contexts_clear = private unnamed_addr constant [20 x i8] c"gimp_contexts_clear\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"Deleting \22%s\22 failed: %s\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_contexts_init(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_contexts_init, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call11 = call %struct._GimpContext* @gimp_context_new(%struct._Gimp* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), %struct._GimpContext* null)
  store %struct._GimpContext* %call11, %struct._GimpContext** %context, align 8
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_set_default_context(%struct._Gimp* %14, %struct._GimpContext* %15)
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %17 = bitcast %struct._GimpContext* %16 to i8*
  call void @g_object_unref(i8* %17)
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %19 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call12 = call %struct._GimpContext* @gimp_context_new(%struct._Gimp* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), %struct._GimpContext* %19)
  store %struct._GimpContext* %call12, %struct._GimpContext** %context, align 8
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %21 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_set_user_context(%struct._Gimp* %20, %struct._GimpContext* %21)
  %22 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %23 = bitcast %struct._GimpContext* %22 to i8*
  call void @g_object_unref(i8* %23)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare %struct._GimpContext* @gimp_context_new(%struct._Gimp*, i8*, %struct._GimpContext*) #3

declare void @gimp_set_default_context(%struct._Gimp*, %struct._GimpContext*) #3

declare void @g_object_unref(i8*) #3

declare void @gimp_set_user_context(%struct._Gimp*, %struct._GimpContext*) #3

; Function Attrs: nounwind uwtable
define void @gimp_contexts_exit(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_contexts_exit, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_set_user_context(%struct._Gimp* %13, %struct._GimpContext* null)
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_set_default_context(%struct._Gimp* %14, %struct._GimpContext* null)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_contexts_load(%struct._Gimp* %gimp, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %filename = alloca i8*, align 8
  %my_error = alloca %struct._GError*, align 8
  %success = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store %struct._GError* null, %struct._GError** %my_error, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_contexts_load, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp12 = icmp eq %struct._GError** %13, null
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  %cmp13 = icmp eq %struct._GError* %15, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %lor.lhs.false, %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_contexts_load, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %call18 = call noalias i8* @gimp_personal_rc_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0))
  store i8* %call18, i8** %filename, align 8
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %16, i32 0, i32 4
  %17 = load i32, i32* %be_verbose, align 4
  %tobool19 = icmp ne i32 %17, 0
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %do.end.17
  %18 = load i8*, i8** %filename, align 8
  %call21 = call i8* @gimp_filename_to_utf8(i8* %18)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* %call21)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %do.end.17
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call23 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %19)
  %20 = bitcast %struct._GimpContext* %call23 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_config_interface_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call24)
  %21 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpConfig*
  %22 = load i8*, i8** %filename, align 8
  %call26 = call i32 @gimp_config_deserialize_file(%struct._GimpConfig* %21, i8* %22, i8* null, %struct._GError** %my_error)
  store i32 %call26, i32* %success, align 4
  %23 = load i32, i32* %success, align 4
  %tobool27 = icmp ne i32 %23, 0
  br i1 %tobool27, label %if.end.33, label %if.then.28

if.then.28:                                       ; preds = %if.end.22
  %24 = load %struct._GError*, %struct._GError** %my_error, align 8
  %code = getelementptr inbounds %struct._GError, %struct._GError* %24, i32 0, i32 1
  %25 = load i32, i32* %code, align 4
  %cmp29 = icmp eq i32 %25, 1
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.then.28
  call void @g_clear_error(%struct._GError** %my_error)
  store i32 1, i32* %success, align 4
  br label %if.end.32

if.else.31:                                       ; preds = %if.then.28
  %26 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %27 = load %struct._GError*, %struct._GError** %my_error, align 8
  call void @g_propagate_error(%struct._GError** %26, %struct._GError* %27)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.31, %if.then.30
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.22
  %28 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %28)
  %29 = load i32, i32* %success, align 4
  store i32 %29, i32* %retval
  br label %return

return:                                           ; preds = %if.end.33, %if.else.15, %if.else.9
  %30 = load i32, i32* %retval
  ret i32 %30
}

declare noalias i8* @gimp_personal_rc_file(i8*) #3

declare void @g_print(i8*, ...) #3

declare i8* @gimp_filename_to_utf8(i8*) #3

declare i32 @gimp_config_deserialize_file(%struct._GimpConfig*, i8*, i8*, %struct._GError**) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #1

declare void @g_clear_error(%struct._GError**) #3

declare void @g_propagate_error(%struct._GError**, %struct._GError*) #3

declare void @g_free(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_contexts_save(%struct._Gimp* %gimp, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %filename = alloca i8*, align 8
  %success = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_contexts_save, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp12 = icmp eq %struct._GError** %13, null
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  %cmp13 = icmp eq %struct._GError* %15, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %lor.lhs.false, %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_contexts_save, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %call18 = call noalias i8* @gimp_personal_rc_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0))
  store i8* %call18, i8** %filename, align 8
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %16, i32 0, i32 4
  %17 = load i32, i32* %be_verbose, align 4
  %tobool19 = icmp ne i32 %17, 0
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %do.end.17
  %18 = load i8*, i8** %filename, align 8
  %call21 = call i8* @gimp_filename_to_utf8(i8* %18)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i8* %call21)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %do.end.17
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call23 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %19)
  %20 = bitcast %struct._GimpContext* %call23 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_config_interface_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call24)
  %21 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpConfig*
  %22 = load i8*, i8** %filename, align 8
  %23 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call26 = call i32 @gimp_config_serialize_to_file(%struct._GimpConfig* %21, i8* %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i8* null, %struct._GError** %23)
  store i32 %call26, i32* %success, align 4
  %24 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %24)
  %25 = load i32, i32* %success, align 4
  store i32 %25, i32* %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.else.15, %if.else.9
  %26 = load i32, i32* %retval
  ret i32 %26
}

declare i32 @gimp_config_serialize_to_file(%struct._GimpConfig*, i8*, i8*, i8*, i8*, %struct._GError**) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_contexts_clear(%struct._Gimp* %gimp, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %filename = alloca i8*, align 8
  %success = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_contexts_clear, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call noalias i8* @gimp_personal_rc_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0))
  store i8* %call11, i8** %filename, align 8
  %13 = load i8*, i8** %filename, align 8
  %call12 = call i32 @g_unlink(i8* %13)
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %land.lhs.true.14, label %if.end.25

land.lhs.true.14:                                 ; preds = %do.end
  %call15 = call i32* @__errno_location() #5
  %14 = load i32, i32* %call15, align 4
  %cmp16 = icmp ne i32 %14, 2
  br i1 %cmp16, label %if.then.17, label %if.end.25

if.then.17:                                       ; preds = %land.lhs.true.14
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call18 = call i32 @g_file_error_quark()
  %call19 = call i32* @__errno_location() #5
  %16 = load i32, i32* %call19, align 4
  %call20 = call i32 @g_file_error_from_errno(i32 %16)
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0)) #7
  %17 = load i8*, i8** %filename, align 8
  %call22 = call i8* @gimp_filename_to_utf8(i8* %17)
  %call23 = call i32* @__errno_location() #5
  %18 = load i32, i32* %call23, align 4
  %call24 = call i8* @g_strerror(i32 %18) #5
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %15, i32 %call18, i32 %call20, i8* %call21, i8* %call22, i8* %call24)
  store i32 0, i32* %success, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.17, %land.lhs.true.14, %do.end
  %19 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %19)
  %20 = load i32, i32* %success, align 4
  store i32 %20, i32* %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.else.9
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i32 @g_unlink(i8*) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #1

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #3

declare i32 @g_file_error_quark() #3

declare i32 @g_file_error_from_errno(i32) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
