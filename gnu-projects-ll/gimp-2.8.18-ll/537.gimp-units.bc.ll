; ModuleID = './app/core/gimp-units.bc'
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
%struct._GimpContext = type opaque
%struct._GScanner = type { i8*, i32, i32, i8*, %struct._GData*, %struct._GScannerConfig*, i32, %union._GTokenValue, i32, i32, i32, %union._GTokenValue, i32, i32, %struct._GHashTable*, i32, i8*, i8*, i8*, i32, void (%struct._GScanner*, i8*, i32)* }
%struct._GScannerConfig = type { i8*, i8*, i8*, i8*, i24, i32 }
%union._GTokenValue = type { i8* }
%struct._GHashTable = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpConfigWriter = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_units_init = private unnamed_addr constant [16 x i8] c"gimp_units_init\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@__func__.gimp_units_exit = private unnamed_addr constant [16 x i8] c"gimp_units_exit\00", align 1
@__func__.gimp_unitrc_load = private unnamed_addr constant [17 x i8] c"gimp_unitrc_load\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"unitrc\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Parsing '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"unit-info\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"factor\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"digits\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"symbol\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"abbreviation\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"singular\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"plural\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"fatal parse error\00", align 1
@__func__.gimp_unitrc_save = private unnamed_addr constant [17 x i8] c"gimp_unitrc_save\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"Writing '%s'\0A\00", align 1
@.str.13 = private unnamed_addr constant [225 x i8] c"GIMP units\0A\0AThis file contains the user unit database. You can edit this list with the unit editor. You are not supposed to edit it manually, but of course you can do.\0AThis file will be entirely rewritten each time you exit.\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"end of units\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_units_init(%struct._Gimp* %gimp) #0 {
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_units_init, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %user_units = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 18
  store %struct._GList* null, %struct._GList** %user_units, align 8
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %n_user_units = getelementptr inbounds %struct._Gimp, %struct._Gimp* %14, i32 0, i32 19
  store i32 0, i32* %n_user_units, align 4
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @gimp_units_exit(%struct._Gimp* %gimp) #0 {
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_units_exit, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_user_units_free(%struct._Gimp* %13)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare void @gimp_user_units_free(%struct._Gimp*) #3

; Function Attrs: nounwind uwtable
define void @gimp_unitrc_load(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %filename = alloca i8*, align 8
  %scanner = alloca %struct._GScanner*, align 8
  %token = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_unitrc_load, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call noalias i8* @gimp_personal_rc_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0))
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
  %call16 = call %struct._GScanner* @gimp_scanner_new_file(i8* %16, %struct._GError** %error)
  store %struct._GScanner* %call16, %struct._GScanner** %scanner, align 8
  %17 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %tobool17 = icmp ne %struct._GScanner* %17, null
  br i1 %tobool17, label %if.end.24, label %land.lhs.true.18

land.lhs.true.18:                                 ; preds = %if.end.15
  %18 = load %struct._GError*, %struct._GError** %error, align 8
  %code = getelementptr inbounds %struct._GError, %struct._GError* %18, i32 0, i32 1
  %19 = load i32, i32* %code, align 4
  %cmp19 = icmp eq i32 %19, 1
  br i1 %cmp19, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %land.lhs.true.18
  call void @g_clear_error(%struct._GError** %error)
  %20 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %20)
  %call21 = call i8* @gimp_sysconf_directory() #5
  %call22 = call noalias i8* (i8*, ...) @g_build_filename(i8* %call21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* null)
  store i8* %call22, i8** %filename, align 8
  %21 = load i8*, i8** %filename, align 8
  %call23 = call %struct._GScanner* @gimp_scanner_new_file(i8* %21, %struct._GError** null)
  store %struct._GScanner* %call23, %struct._GScanner** %scanner, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.20, %land.lhs.true.18, %if.end.15
  %22 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %tobool25 = icmp ne %struct._GScanner* %22, null
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %if.end.24
  call void @g_clear_error(%struct._GError** %error)
  %23 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %23)
  br label %return

if.end.27:                                        ; preds = %if.end.24
  %24 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %24, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* inttoptr (i64 1 to i8*))
  %25 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %25, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* inttoptr (i64 2 to i8*))
  %26 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %26, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* inttoptr (i64 3 to i8*))
  %27 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %27, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* inttoptr (i64 4 to i8*))
  %28 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %28, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* inttoptr (i64 5 to i8*))
  %29 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %29, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* inttoptr (i64 6 to i8*))
  %30 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  call void @g_scanner_scope_add_symbol(%struct._GScanner* %30, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* inttoptr (i64 7 to i8*))
  store i32 40, i32* %token, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end.27
  %31 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %call28 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %31)
  %32 = load i32, i32* %token, align 4
  %cmp29 = icmp eq i32 %call28, %32
  br i1 %cmp29, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %33 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %call30 = call i32 @g_scanner_get_next_token(%struct._GScanner* %33)
  store i32 %call30, i32* %token, align 4
  %34 = load i32, i32* %token, align 4
  switch i32 %34, label %sw.default [
    i32 40, label %sw.bb
    i32 265, label %sw.bb.31
    i32 41, label %sw.bb.41
  ]

sw.bb:                                            ; preds = %while.body
  store i32 265, i32* %token, align 4
  br label %sw.epilog

sw.bb.31:                                         ; preds = %while.body
  %35 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %value = getelementptr inbounds %struct._GScanner, %struct._GScanner* %35, i32 0, i32 7
  %v_symbol = bitcast %union._GTokenValue* %value to i8**
  %36 = load i8*, i8** %v_symbol, align 8
  %cmp32 = icmp eq i8* %36, inttoptr (i64 1 to i8*)
  br i1 %cmp32, label %if.then.33, label %if.end.40

if.then.33:                                       ; preds = %sw.bb.31
  %37 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %call34 = call i32 @g_scanner_set_scope(%struct._GScanner* %37, i32 1)
  %38 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %39 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call35 = call i32 @gimp_unitrc_unit_info_deserialize(%struct._GScanner* %38, %struct._Gimp* %39)
  store i32 %call35, i32* %token, align 4
  %40 = load i32, i32* %token, align 4
  %cmp36 = icmp eq i32 %40, 41
  br i1 %cmp36, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %if.then.33
  %41 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %call38 = call i32 @g_scanner_set_scope(%struct._GScanner* %41, i32 0)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %if.then.33
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %sw.bb.31
  br label %sw.epilog

sw.bb.41:                                         ; preds = %while.body
  store i32 40, i32* %token, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.41, %if.end.40, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %42 = load i32, i32* %token, align 4
  %cmp42 = icmp ne i32 %42, 40
  br i1 %cmp42, label %if.then.43, label %if.end.47

if.then.43:                                       ; preds = %while.end
  %43 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %call44 = call i32 @g_scanner_get_next_token(%struct._GScanner* %43)
  %44 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %45 = load i32, i32* %token, align 4
  %call45 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0)) #7
  call void @g_scanner_unexp_token(%struct._GScanner* %44, i32 %45, i8* null, i8* null, i8* null, i8* %call45, i32 1)
  %46 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %47 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %47, i32 0, i32 2
  %48 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %46, %struct._GObject* null, i32 2, i8* %48)
  call void @g_clear_error(%struct._GError** %error)
  %49 = load i8*, i8** %filename, align 8
  %call46 = call i32 @gimp_config_file_backup_on_error(i8* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), %struct._GError** null)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.43, %while.end
  %50 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  call void @gimp_scanner_destroy(%struct._GScanner* %50)
  %51 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %51)
  br label %return

return:                                           ; preds = %if.end.47, %if.then.26, %if.else.9
  ret void
}

declare noalias i8* @gimp_personal_rc_file(i8*) #3

declare void @g_print(i8*, ...) #3

declare i8* @gimp_filename_to_utf8(i8*) #3

declare %struct._GScanner* @gimp_scanner_new_file(i8*, %struct._GError**) #3

declare void @g_clear_error(%struct._GError**) #3

declare void @g_free(i8*) #3

declare noalias i8* @g_build_filename(i8*, ...) #3

; Function Attrs: nounwind readnone
declare i8* @gimp_sysconf_directory() #1

declare void @g_scanner_scope_add_symbol(%struct._GScanner*, i32, i8*, i8*) #3

declare i32 @g_scanner_peek_next_token(%struct._GScanner*) #3

declare i32 @g_scanner_get_next_token(%struct._GScanner*) #3

declare i32 @g_scanner_set_scope(%struct._GScanner*, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @gimp_unitrc_unit_info_deserialize(%struct._GScanner* %scanner, %struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca i32, align 4
  %scanner.addr = alloca %struct._GScanner*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %identifier = alloca i8*, align 8
  %factor = alloca double, align 8
  %digits = alloca i32, align 4
  %symbol = alloca i8*, align 8
  %abbreviation = alloca i8*, align 8
  %singular = alloca i8*, align 8
  %plural = alloca i8*, align 8
  %token = alloca i32, align 4
  %unit = alloca i32, align 4
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* null, i8** %identifier, align 8
  store double 1.000000e+00, double* %factor, align 8
  store i32 2, i32* %digits, align 4
  store i8* null, i8** %symbol, align 8
  store i8* null, i8** %abbreviation, align 8
  store i8* null, i8** %singular, align 8
  store i8* null, i8** %plural, align 8
  %0 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call = call i32 @gimp_scanner_parse_string(%struct._GScanner* %0, i8** %identifier)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 264, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 40, i32* %token, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.36, %if.end
  %1 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call1 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %1)
  %2 = load i32, i32* %token, align 4
  %cmp = icmp eq i32 %call1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call2 = call i32 @g_scanner_get_next_token(%struct._GScanner* %3)
  store i32 %call2, i32* %token, align 4
  %4 = load i32, i32* %token, align 4
  switch i32 %4, label %sw.default.35 [
    i32 40, label %sw.bb
    i32 265, label %sw.bb.3
    i32 41, label %sw.bb.34
  ]

sw.bb:                                            ; preds = %while.body
  store i32 265, i32* %token, align 4
  br label %sw.epilog.36

sw.bb.3:                                          ; preds = %while.body
  %5 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %value = getelementptr inbounds %struct._GScanner, %struct._GScanner* %5, i32 0, i32 7
  %v_symbol = bitcast %union._GTokenValue* %value to i8**
  %6 = load i8*, i8** %v_symbol, align 8
  %7 = ptrtoint i8* %6 to i64
  %conv = trunc i64 %7 to i32
  switch i32 %conv, label %sw.default [
    i32 2, label %sw.bb.4
    i32 3, label %sw.bb.9
    i32 4, label %sw.bb.14
    i32 5, label %sw.bb.19
    i32 6, label %sw.bb.24
    i32 7, label %sw.bb.29
  ]

sw.bb.4:                                          ; preds = %sw.bb.3
  store i32 263, i32* %token, align 4
  %8 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call5 = call i32 @gimp_scanner_parse_float(%struct._GScanner* %8, double* %factor)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %sw.bb.4
  br label %cleanup

if.end.8:                                         ; preds = %sw.bb.4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %sw.bb.3
  store i32 261, i32* %token, align 4
  %9 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call10 = call i32 @gimp_scanner_parse_int(%struct._GScanner* %9, i32* %digits)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %sw.bb.9
  br label %cleanup

if.end.13:                                        ; preds = %sw.bb.9
  br label %sw.epilog

sw.bb.14:                                         ; preds = %sw.bb.3
  store i32 264, i32* %token, align 4
  %10 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call15 = call i32 @gimp_scanner_parse_string(%struct._GScanner* %10, i8** %symbol)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %sw.bb.14
  br label %cleanup

if.end.18:                                        ; preds = %sw.bb.14
  br label %sw.epilog

sw.bb.19:                                         ; preds = %sw.bb.3
  store i32 264, i32* %token, align 4
  %11 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call20 = call i32 @gimp_scanner_parse_string(%struct._GScanner* %11, i8** %abbreviation)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %sw.bb.19
  br label %cleanup

if.end.23:                                        ; preds = %sw.bb.19
  br label %sw.epilog

sw.bb.24:                                         ; preds = %sw.bb.3
  store i32 264, i32* %token, align 4
  %12 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call25 = call i32 @gimp_scanner_parse_string(%struct._GScanner* %12, i8** %singular)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %sw.bb.24
  br label %cleanup

if.end.28:                                        ; preds = %sw.bb.24
  br label %sw.epilog

sw.bb.29:                                         ; preds = %sw.bb.3
  store i32 264, i32* %token, align 4
  %13 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call30 = call i32 @gimp_scanner_parse_string(%struct._GScanner* %13, i8** %plural)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %sw.bb.29
  br label %cleanup

if.end.33:                                        ; preds = %sw.bb.29
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.33, %if.end.28, %if.end.23, %if.end.18, %if.end.13, %if.end.8
  store i32 41, i32* %token, align 4
  br label %sw.epilog.36

sw.bb.34:                                         ; preds = %while.body
  store i32 40, i32* %token, align 4
  br label %sw.epilog.36

sw.default.35:                                    ; preds = %while.body
  br label %sw.epilog.36

sw.epilog.36:                                     ; preds = %sw.default.35, %sw.bb.34, %sw.epilog, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load i32, i32* %token, align 4
  %cmp37 = icmp eq i32 %14, 40
  br i1 %cmp37, label %if.then.39, label %if.end.46

if.then.39:                                       ; preds = %while.end
  store i32 41, i32* %token, align 4
  %15 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call40 = call i32 @g_scanner_peek_next_token(%struct._GScanner* %15)
  %16 = load i32, i32* %token, align 4
  %cmp41 = icmp eq i32 %call40, %16
  br i1 %cmp41, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.then.39
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %18 = load i8*, i8** %identifier, align 8
  %19 = load double, double* %factor, align 8
  %20 = load i32, i32* %digits, align 4
  %21 = load i8*, i8** %symbol, align 8
  %22 = load i8*, i8** %abbreviation, align 8
  %23 = load i8*, i8** %singular, align 8
  %24 = load i8*, i8** %plural, align 8
  %call44 = call i32 @_gimp_unit_new(%struct._Gimp* %17, i8* %18, double %19, i32 %20, i8* %21, i8* %22, i8* %23, i8* %24)
  store i32 %call44, i32* %unit, align 4
  %25 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %26 = load i32, i32* %unit, align 4
  call void @_gimp_unit_set_deletion_flag(%struct._Gimp* %25, i32 %26, i32 0)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %if.then.39
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %while.end
  br label %cleanup

cleanup:                                          ; preds = %if.end.46, %if.then.32, %if.then.27, %if.then.22, %if.then.17, %if.then.12, %if.then.7
  %27 = load i8*, i8** %identifier, align 8
  call void @g_free(i8* %27)
  %28 = load i8*, i8** %symbol, align 8
  call void @g_free(i8* %28)
  %29 = load i8*, i8** %abbreviation, align 8
  call void @g_free(i8* %29)
  %30 = load i8*, i8** %singular, align 8
  call void @g_free(i8* %30)
  %31 = load i8*, i8** %plural, align 8
  call void @g_free(i8* %31)
  %32 = load i32, i32* %token, align 4
  store i32 %32, i32* %retval
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %33 = load i32, i32* %retval
  ret i32 %33
}

declare void @g_scanner_unexp_token(%struct._GScanner*, i32, i8*, i8*, i8*, i8*, i32) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #3

declare i32 @gimp_config_file_backup_on_error(i8*, i8*, %struct._GError**) #3

declare void @gimp_scanner_destroy(%struct._GScanner*) #3

; Function Attrs: nounwind uwtable
define void @gimp_unitrc_save(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %writer = alloca %struct._GimpConfigWriter*, align 8
  %filename = alloca i8*, align 8
  %i = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %buf = alloca [39 x i8], align 16
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_unitrc_save, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.39

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call noalias i8* @gimp_personal_rc_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0))
  store i8* %call11, i8** %filename, align 8
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 4
  %14 = load i32, i32* %be_verbose, align 4
  %tobool12 = icmp ne i32 %14, 0
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %do.end
  %15 = load i8*, i8** %filename, align 8
  %call14 = call i8* @gimp_filename_to_utf8(i8* %15)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* %call14)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %do.end
  %16 = load i8*, i8** %filename, align 8
  %call16 = call %struct._GimpConfigWriter* @gimp_config_writer_new_file(i8* %16, i32 1, i8* getelementptr inbounds ([225 x i8], [225 x i8]* @.str.13, i32 0, i32 0), %struct._GError** null)
  store %struct._GimpConfigWriter* %call16, %struct._GimpConfigWriter** %writer, align 8
  %17 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %17)
  %18 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %tobool17 = icmp ne %struct._GimpConfigWriter* %18, null
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.end.15
  br label %if.end.39

if.end.19:                                        ; preds = %if.end.15
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call20 = call i32 @_gimp_unit_get_number_of_built_in_units(%struct._Gimp* %19) #5
  store i32 %call20, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.19
  %20 = load i32, i32* %i, align 4
  %21 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call21 = call i32 @_gimp_unit_get_number_of_units(%struct._Gimp* %21)
  %cmp22 = icmp slt i32 %20, %call21
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %23 = load i32, i32* %i, align 4
  %call23 = call i32 @_gimp_unit_get_deletion_flag(%struct._Gimp* %22, i32 %23)
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then.25, label %if.end.35

if.then.25:                                       ; preds = %for.body
  %24 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0))
  %25 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %26 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %27 = load i32, i32* %i, align 4
  %call27 = call i8* @_gimp_unit_get_identifier(%struct._Gimp* %26, i32 %27)
  call void @gimp_config_writer_string(%struct._GimpConfigWriter* %25, i8* %call27)
  %28 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0))
  %29 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %arraydecay = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %30 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %31 = load i32, i32* %i, align 4
  %call28 = call double @_gimp_unit_get_factor(%struct._Gimp* %30, i32 %31)
  %call29 = call i8* @g_ascii_formatd(i8* %arraydecay, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), double %call28)
  call void @gimp_config_writer_print(%struct._GimpConfigWriter* %29, i8* %call29, i32 -1)
  %32 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %32)
  %33 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0))
  %34 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %35 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %36 = load i32, i32* %i, align 4
  %call30 = call i32 @_gimp_unit_get_digits(%struct._Gimp* %35, i32 %36)
  call void (%struct._GimpConfigWriter*, i8*, ...) @gimp_config_writer_printf(%struct._GimpConfigWriter* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i32 %call30)
  %37 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %37)
  %38 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0))
  %39 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %40 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %41 = load i32, i32* %i, align 4
  %call31 = call i8* @_gimp_unit_get_symbol(%struct._Gimp* %40, i32 %41)
  call void @gimp_config_writer_string(%struct._GimpConfigWriter* %39, i8* %call31)
  %42 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %42)
  %43 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0))
  %44 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %45 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %46 = load i32, i32* %i, align 4
  %call32 = call i8* @_gimp_unit_get_abbreviation(%struct._Gimp* %45, i32 %46)
  call void @gimp_config_writer_string(%struct._GimpConfigWriter* %44, i8* %call32)
  %47 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %47)
  %48 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0))
  %49 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %50 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %51 = load i32, i32* %i, align 4
  %call33 = call i8* @_gimp_unit_get_singular(%struct._Gimp* %50, i32 %51)
  call void @gimp_config_writer_string(%struct._GimpConfigWriter* %49, i8* %call33)
  %52 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %52)
  %53 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0))
  %54 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %55 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %56 = load i32, i32* %i, align 4
  %call34 = call i8* @_gimp_unit_get_plural(%struct._Gimp* %55, i32 %56)
  call void @gimp_config_writer_string(%struct._GimpConfigWriter* %54, i8* %call34)
  %57 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %57)
  %58 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %58)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.25, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %59 = load i32, i32* %i, align 4
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %60 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %call36 = call i32 @gimp_config_writer_finish(%struct._GimpConfigWriter* %60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), %struct._GError** %error)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.end.39, label %if.then.38

if.then.38:                                       ; preds = %for.end
  %61 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %62 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %62, i32 0, i32 2
  %63 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %61, %struct._GObject* null, i32 2, i8* %63)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.9, %if.then.18, %if.then.38, %for.end
  ret void
}

declare %struct._GimpConfigWriter* @gimp_config_writer_new_file(i8*, i32, i8*, %struct._GError**) #3

; Function Attrs: nounwind readnone
declare i32 @_gimp_unit_get_number_of_built_in_units(%struct._Gimp*) #1

declare i32 @_gimp_unit_get_number_of_units(%struct._Gimp*) #3

declare i32 @_gimp_unit_get_deletion_flag(%struct._Gimp*, i32) #3

declare void @gimp_config_writer_open(%struct._GimpConfigWriter*, i8*) #3

declare void @gimp_config_writer_string(%struct._GimpConfigWriter*, i8*) #3

declare i8* @_gimp_unit_get_identifier(%struct._Gimp*, i32) #3

declare void @gimp_config_writer_print(%struct._GimpConfigWriter*, i8*, i32) #3

declare i8* @g_ascii_formatd(i8*, i32, i8*, double) #3

declare double @_gimp_unit_get_factor(%struct._Gimp*, i32) #3

declare void @gimp_config_writer_close(%struct._GimpConfigWriter*) #3

declare void @gimp_config_writer_printf(%struct._GimpConfigWriter*, i8*, ...) #3

declare i32 @_gimp_unit_get_digits(%struct._Gimp*, i32) #3

declare i8* @_gimp_unit_get_symbol(%struct._Gimp*, i32) #3

declare i8* @_gimp_unit_get_abbreviation(%struct._Gimp*, i32) #3

declare i8* @_gimp_unit_get_singular(%struct._Gimp*, i32) #3

declare i8* @_gimp_unit_get_plural(%struct._Gimp*, i32) #3

declare i32 @gimp_config_writer_finish(%struct._GimpConfigWriter*, i8*, %struct._GError**) #3

declare i32 @gimp_scanner_parse_string(%struct._GScanner*, i8**) #3

declare i32 @gimp_scanner_parse_float(%struct._GScanner*, double*) #3

declare i32 @gimp_scanner_parse_int(%struct._GScanner*, i32*) #3

declare i32 @_gimp_unit_new(%struct._Gimp*, i8*, double, i32, i8*, i8*, i8*, i8*) #3

declare void @_gimp_unit_set_deletion_flag(%struct._Gimp*, i32, i32) #3

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
