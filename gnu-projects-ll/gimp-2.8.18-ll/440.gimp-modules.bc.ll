; ModuleID = './app/core/gimp-modules.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type { %struct._GObject, i32, i8*, i8*, i8*, i32, i8*, i32, i32, i8*, i32, %struct._GimpRGB, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpGui = type { {}*, {}*, {}*, {}*, {}*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, {}* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type { %struct._GObject, %struct._GList*, i8*, i32 }
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
%struct._GScanner = type { i8*, i32, i32, i8*, %struct._GData*, %struct._GScannerConfig*, i32, %union._GTokenValue, i32, i32, i32, %union._GTokenValue, i32, i32, %struct._GHashTable*, i32, i8*, i8*, i8*, i32, void (%struct._GScanner*, i8*, i32)* }
%struct._GScannerConfig = type { i8*, i8*, i8*, i8*, i24, i32 }
%union._GTokenValue = type { i8* }
%struct._GHashTable = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpConfigWriter = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GimpModule = type { %struct._GTypeModule, i8*, i32, i32, i32, i32, %struct._GModule*, %struct._GimpModuleInfo*, i8*, %struct._GimpModuleInfo* (%struct._GTypeModule*)*, i32 (%struct._GTypeModule*)* }
%struct._GTypeModule = type { %struct._GObject, i32, %struct._GSList*, %struct._GSList*, i8* }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GModule = type opaque
%struct._GimpModuleInfo = type { i32, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_modules_init = private unnamed_addr constant [18 x i8] c"gimp_modules_init\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@__func__.gimp_modules_exit = private unnamed_addr constant [18 x i8] c"gimp_modules_exit\00", align 1
@__func__.gimp_modules_load = private unnamed_addr constant [18 x i8] c"gimp_modules_load\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"modulerc\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Parsing '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"module-load-inhibit\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"fatal parse error\00", align 1
@__func__.gimp_modules_unload = private unnamed_addr constant [20 x i8] c"gimp_modules_unload\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Writing '%s'\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"GIMP modulerc\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"end of modulerc\00", align 1
@__func__.gimp_modules_refresh = private unnamed_addr constant [21 x i8] c"gimp_modules_refresh\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_modules_init(%struct._Gimp* %gimp) #0 {
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
  %call = call i64 @gimp_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_modules_init, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.14

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %no_interface = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 7
  %14 = load i32, i32* %no_interface, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.end.14, label %if.then.12

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 4
  %16 = load i32, i32* %be_verbose, align 4
  %call13 = call %struct._GimpModuleDB* @gimp_module_db_new(i32 %16)
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %module_db = getelementptr inbounds %struct._Gimp, %struct._Gimp* %17, i32 0, i32 23
  store %struct._GimpModuleDB* %call13, %struct._GimpModuleDB** %module_db, align 8
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %write_modulerc = getelementptr inbounds %struct._Gimp, %struct._Gimp* %18, i32 0, i32 24
  store i32 0, i32* %write_modulerc, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.9, %if.then.12, %do.end
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare %struct._GimpModuleDB* @gimp_module_db_new(i32) #3

; Function Attrs: nounwind uwtable
define void @gimp_modules_exit(%struct._Gimp* %gimp) #0 {
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
  %call = call i64 @gimp_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_modules_exit, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.15

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %module_db = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 23
  %14 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %module_db, align 8
  %tobool11 = icmp ne %struct._GimpModuleDB* %14, null
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %module_db13 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 23
  %16 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %module_db13, align 8
  %17 = bitcast %struct._GimpModuleDB* %16 to i8*
  call void @g_object_unref(i8* %17)
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %module_db14 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %18, i32 0, i32 23
  store %struct._GimpModuleDB* null, %struct._GimpModuleDB** %module_db14, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.9, %if.then.12, %do.end
  ret void
}

declare void @g_object_unref(i8*) #3

; Function Attrs: nounwind uwtable
define void @gimp_modules_load(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %filename = alloca i8*, align 8
  %path = alloca i8*, align 8
  %scanner = alloca %struct._GScanner*, align 8
  %module_load_inhibit = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %token = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* null, i8** %module_load_inhibit, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_modules_load, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %no_interface = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 7
  %14 = load i32, i32* %no_interface, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %do.end
  br label %return

if.end.13:                                        ; preds = %do.end
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 4
  %16 = load i32, i32* %be_verbose, align 4
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %module_db = getelementptr inbounds %struct._Gimp, %struct._Gimp* %17, i32 0, i32 23
  %18 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %module_db, align 8
  %verbose = getelementptr inbounds %struct._GimpModuleDB, %struct._GimpModuleDB* %18, i32 0, i32 3
  store i32 %16, i32* %verbose, align 4
  %call14 = call noalias i8* @gimp_personal_rc_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0))
  store i8* %call14, i8** %filename, align 8
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose15 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %19, i32 0, i32 4
  %20 = load i32, i32* %be_verbose15, align 4
  %tobool16 = icmp ne i32 %20, 0
  br i1 %tobool16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.13
  %21 = load i8*, i8** %filename, align 8
  %call18 = call i8* @gimp_filename_to_utf8(i8* %21)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* %call18)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.end.13
  %22 = load i8*, i8** %filename, align 8
  %call20 = call %struct._GScanner* @gimp_scanner_new_file(i8* %22, %struct._GError** null)
  store %struct._GScanner* %call20, %struct._GScanner** %scanner, align 8
  %23 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %23)
  %24 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %tobool21 = icmp ne %struct._GScanner* %24, null
  br i1 %tobool21, label %if.then.22, label %if.end.46

if.then.22:                                       ; preds = %if.end.19
  store %struct._GError* null, %struct._GError** %error, align 8
  %25 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %25, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i8* inttoptr (i64 1 to i8*))
  store i32 40, i32* %token, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.then.22
  %26 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %call25 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %26)
  %27 = load i32, i32* %token, align 4
  %cmp26 = icmp eq i32 %call25, %27
  br i1 %cmp26, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %28 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %call27 = call i32 @g_scanner_get_next_token(%struct._GScanner* %28)
  store i32 %call27, i32* %token, align 4
  %29 = load i32, i32* %token, align 4
  switch i32 %29, label %sw.default [
    i32 40, label %sw.bb
    i32 265, label %sw.bb.28
    i32 41, label %sw.bb.36
  ]

sw.bb:                                            ; preds = %while.body
  store i32 265, i32* %token, align 4
  br label %sw.epilog

sw.bb.28:                                         ; preds = %while.body
  %30 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %value = getelementptr inbounds %struct._GScanner, %struct._GScanner* %30, i32 0, i32 7
  %v_symbol = bitcast %union._GTokenValue* %value to i8**
  %31 = load i8*, i8** %v_symbol, align 8
  %cmp29 = icmp eq i8* %31, inttoptr (i64 1 to i8*)
  br i1 %cmp29, label %if.then.30, label %if.end.35

if.then.30:                                       ; preds = %sw.bb.28
  store i32 264, i32* %token, align 4
  %32 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %call31 = call i32 @gimp_scanner_parse_string_no_validate(%struct._GScanner* %32, i8** %module_load_inhibit)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %if.then.30
  br label %error.42

if.end.34:                                        ; preds = %if.then.30
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %sw.bb.28
  store i32 41, i32* %token, align 4
  br label %sw.epilog

sw.bb.36:                                         ; preds = %while.body
  store i32 40, i32* %token, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.36, %if.end.35, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %33 = load i32, i32* %token, align 4
  %cmp37 = icmp ne i32 %33, 40
  br i1 %cmp37, label %if.then.38, label %if.end.41

if.then.38:                                       ; preds = %while.end
  %34 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %call39 = call i32 @g_scanner_get_next_token(%struct._GScanner* %34)
  %35 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %36 = load i32, i32* %token, align 4
  %call40 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0)) #8
  call void @g_scanner_unexp_token(%struct._GScanner* %35, i32 %36, i8* null, i8* null, i8* null, i8* %call40, i32 1)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.38, %while.end
  br label %error.42

error.42:                                         ; preds = %if.end.41, %if.then.33
  %37 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool43 = icmp ne %struct._GError* %37, null
  br i1 %tobool43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %error.42
  %38 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %39 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %39, i32 0, i32 2
  %40 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %38, %struct._GObject* null, i32 2, i8* %40)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %error.42
  %41 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  call void @gimp_scanner_destroy(%struct._GScanner* %41)
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.end.19
  %42 = load i8*, i8** %module_load_inhibit, align 8
  %tobool47 = icmp ne i8* %42, null
  br i1 %tobool47, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %if.end.46
  %43 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %module_db49 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %43, i32 0, i32 23
  %44 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %module_db49, align 8
  %45 = load i8*, i8** %module_load_inhibit, align 8
  call void @gimp_module_db_set_load_inhibit(%struct._GimpModuleDB* %44, i8* %45)
  %46 = load i8*, i8** %module_load_inhibit, align 8
  call void @g_free(i8* %46)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %if.end.46
  %47 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %47, i32 0, i32 1
  %48 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %module_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %48, i32 0, i32 5
  %49 = load i8*, i8** %module_path, align 8
  %call51 = call noalias i8* @gimp_config_path_expand(i8* %49, i32 1, %struct._GError** null)
  store i8* %call51, i8** %path, align 8
  %50 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %module_db52 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %50, i32 0, i32 23
  %51 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %module_db52, align 8
  %52 = load i8*, i8** %path, align 8
  call void @gimp_module_db_load(%struct._GimpModuleDB* %51, i8* %52)
  %53 = load i8*, i8** %path, align 8
  call void @g_free(i8* %53)
  br label %return

return:                                           ; preds = %if.end.50, %if.then.12, %if.else.9
  ret void
}

declare noalias i8* @gimp_personal_rc_file(i8*) #3

declare void @g_print(i8*, ...) #3

declare i8* @gimp_filename_to_utf8(i8*) #3

declare %struct._GScanner* @gimp_scanner_new_file(i8*, %struct._GError**) #3

declare void @g_free(i8*) #3

declare void @g_scanner_scope_add_symbol(%struct._GScanner*, i32, i8*, i8*) #3

declare i32 @g_scanner_peek_next_token(%struct._GScanner*) #3

declare i32 @g_scanner_get_next_token(%struct._GScanner*) #3

declare i32 @gimp_scanner_parse_string_no_validate(%struct._GScanner*, i8**) #3

declare void @g_scanner_unexp_token(%struct._GScanner*, i32, i8*, i8*, i8*, i8*, i32) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #3

declare void @g_clear_error(%struct._GError**) #3

declare void @gimp_scanner_destroy(%struct._GScanner*) #3

declare void @gimp_module_db_set_load_inhibit(%struct._GimpModuleDB*, i8*) #3

declare noalias i8* @gimp_config_path_expand(i8*, i32, %struct._GError**) #3

declare void @gimp_module_db_load(%struct._GimpModuleDB*, i8*) #3

; Function Attrs: nounwind uwtable
define void @gimp_modules_unload(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %writer = alloca %struct._GimpConfigWriter*, align 8
  %str = alloca %struct._GString*, align 8
  %p = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_modules_unload, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.41

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %no_interface = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 7
  %14 = load i32, i32* %no_interface, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.end.41, label %land.lhs.true.12

land.lhs.true.12:                                 ; preds = %do.end
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %write_modulerc = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 24
  %16 = load i32, i32* %write_modulerc, align 4
  %tobool13 = icmp ne i32 %16, 0
  br i1 %tobool13, label %if.then.14, label %if.end.41

if.then.14:                                       ; preds = %land.lhs.true.12
  store %struct._GError* null, %struct._GError** %error, align 8
  %call20 = call %struct._GString* @g_string_new(i8* null)
  store %struct._GString* %call20, %struct._GString** %str, align 8
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %module_db = getelementptr inbounds %struct._Gimp, %struct._Gimp* %17, i32 0, i32 23
  %18 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %module_db, align 8
  %modules = getelementptr inbounds %struct._GimpModuleDB, %struct._GimpModuleDB* %18, i32 0, i32 1
  %19 = load %struct._GList*, %struct._GList** %modules, align 8
  %20 = load %struct._GString*, %struct._GString** %str, align 8
  %21 = bitcast %struct._GString* %20 to i8*
  call void @g_list_foreach(%struct._GList* %19, void (i8*, i8*)* @add_to_inhibit_string, i8* %21)
  %22 = load %struct._GString*, %struct._GString** %str, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %22, i32 0, i32 1
  %23 = load i64, i64* %len, align 8
  %cmp21 = icmp ugt i64 %23, 0
  br i1 %cmp21, label %if.then.22, label %if.else.24

if.then.22:                                       ; preds = %if.then.14
  %24 = load %struct._GString*, %struct._GString** %str, align 8
  %str23 = getelementptr inbounds %struct._GString, %struct._GString* %24, i32 0, i32 0
  %25 = load i8*, i8** %str23, align 8
  %add.ptr = getelementptr inbounds i8, i8* %25, i64 1
  store i8* %add.ptr, i8** %p, align 8
  br label %if.end.25

if.else.24:                                       ; preds = %if.then.14
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), i8** %p, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.24, %if.then.22
  %call26 = call noalias i8* @gimp_personal_rc_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0))
  store i8* %call26, i8** %filename, align 8
  %26 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %26, i32 0, i32 4
  %27 = load i32, i32* %be_verbose, align 4
  %tobool27 = icmp ne i32 %27, 0
  br i1 %tobool27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.end.25
  %28 = load i8*, i8** %filename, align 8
  %call29 = call i8* @gimp_filename_to_utf8(i8* %28)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i8* %call29)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.end.25
  %29 = load i8*, i8** %filename, align 8
  %call31 = call %struct._GimpConfigWriter* @gimp_config_writer_new_file(i8* %29, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), %struct._GError** %error)
  store %struct._GimpConfigWriter* %call31, %struct._GimpConfigWriter** %writer, align 8
  %30 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %30)
  %31 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %tobool32 = icmp ne %struct._GimpConfigWriter* %31, null
  br i1 %tobool32, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %if.end.30
  %32 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  %33 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %34 = load i8*, i8** %p, align 8
  call void @gimp_config_writer_string(%struct._GimpConfigWriter* %33, i8* %34)
  %35 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %35)
  %36 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %call34 = call i32 @gimp_config_writer_finish(%struct._GimpConfigWriter* %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), %struct._GError** %error)
  %37 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %write_modulerc35 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %37, i32 0, i32 24
  store i32 0, i32* %write_modulerc35, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %if.end.30
  %38 = load %struct._GString*, %struct._GString** %str, align 8
  %call37 = call i8* @g_string_free(%struct._GString* %38, i32 1)
  %39 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool38 = icmp ne %struct._GError* %39, null
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.36
  %40 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %41 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %41, i32 0, i32 2
  %42 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %40, %struct._GObject* null, i32 2, i8* %42)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.end.36
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.9, %if.end.40, %land.lhs.true.12, %do.end
  ret void
}

declare %struct._GString* @g_string_new(i8*) #3

declare void @g_list_foreach(%struct._GList*, void (i8*, i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @add_to_inhibit_string(i8* %data, i8* %user_data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %user_data.addr = alloca i8*, align 8
  %module = alloca %struct._GimpModule*, align 8
  %str = alloca %struct._GString*, align 8
  store i8* %data, i8** %data.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GimpModule*
  store %struct._GimpModule* %1, %struct._GimpModule** %module, align 8
  %2 = load i8*, i8** %user_data.addr, align 8
  %3 = bitcast i8* %2 to %struct._GString*
  store %struct._GString* %3, %struct._GString** %str, align 8
  %4 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %load_inhibit = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %4, i32 0, i32 5
  %5 = load i32, i32* %load_inhibit, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GString*, %struct._GString** %str, align 8
  %call = call %struct._GString* @g_string_append_c_inline(%struct._GString* %6, i8 signext 58)
  %7 = load %struct._GString*, %struct._GString** %str, align 8
  %8 = load %struct._GimpModule*, %struct._GimpModule** %module, align 8
  %filename = getelementptr inbounds %struct._GimpModule, %struct._GimpModule* %8, i32 0, i32 1
  %9 = load i8*, i8** %filename, align 8
  %call1 = call %struct._GString* @g_string_append(%struct._GString* %7, i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GimpConfigWriter* @gimp_config_writer_new_file(i8*, i32, i8*, %struct._GError**) #3

declare void @gimp_config_writer_open(%struct._GimpConfigWriter*, i8*) #3

declare void @gimp_config_writer_string(%struct._GimpConfigWriter*, i8*) #3

declare void @gimp_config_writer_close(%struct._GimpConfigWriter*) #3

declare i32 @gimp_config_writer_finish(%struct._GimpConfigWriter*, i8*, %struct._GError**) #3

declare i8* @g_string_free(%struct._GString*, i32) #3

; Function Attrs: nounwind uwtable
define void @gimp_modules_refresh(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %path = alloca i8*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_modules_refresh, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.15

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %no_interface = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 7
  %14 = load i32, i32* %no_interface, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.end.15, label %if.then.12

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 1
  %16 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %module_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %16, i32 0, i32 5
  %17 = load i8*, i8** %module_path, align 8
  %call14 = call noalias i8* @gimp_config_path_expand(i8* %17, i32 1, %struct._GError** null)
  store i8* %call14, i8** %path, align 8
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %module_db = getelementptr inbounds %struct._Gimp, %struct._Gimp* %18, i32 0, i32 23
  %19 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %module_db, align 8
  %20 = load i8*, i8** %path, align 8
  call void @gimp_module_db_refresh(%struct._GimpModuleDB* %19, i8* %20)
  %21 = load i8*, i8** %path, align 8
  call void @g_free(i8* %21)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.9, %if.then.12, %do.end
  ret void
}

declare void @gimp_module_db_refresh(%struct._GimpModuleDB*, i8*) #3

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

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #3

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
