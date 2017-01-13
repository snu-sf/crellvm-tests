; ModuleID = './app/text/gimp-fonts.bc'
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
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._FcConfig = type opaque
%struct._GThread = type { i8* (i8*)*, i8*, i32, i32 }
%struct.GimpFontsLoadFuncData = type { %struct._FcConfig*, %union._GMutex, %struct._GCond, i8 }
%union._GMutex = type { i8* }
%struct._GCond = type { i8*, [2 x i32] }
%struct._GError = type { i32, i32, i8* }
%struct._GimpFontList = type { %struct._GimpList, double, double }
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Text\00", align 1
@__func__.gimp_fonts_init = private unnamed_addr constant [16 x i8] c"gimp_fonts_init\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"fonts\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"notify::font-path\00", align 1
@__func__.gimp_fonts_load_with_status = private unnamed_addr constant [28 x i8] c"gimp_fonts_load_with_status\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"GIMP_IS_FONT_LIST (gimp->fonts)\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Loading fonts\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"fonts.conf\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"font-cacher\00", align 1
@__func__.gimp_fonts_reset = private unnamed_addr constant [17 x i8] c"gimp_fonts_reset\00", align 1
@__func__.gimp_fonts_add_directories = private unnamed_addr constant [27 x i8] c"gimp_fonts_add_directories\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"config != NULL\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"path_str != NULL\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_fonts_init(%struct._Gimp* %gimp) #0 {
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
  %call = call i64 @gimp_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_fonts_init, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call %struct._GimpContainer* @gimp_font_list_new(double 7.200000e+01, double 7.200000e+01)
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %fonts = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 36
  store %struct._GimpContainer* %call11, %struct._GimpContainer** %fonts, align 8
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %fonts12 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %14, i32 0, i32 36
  %15 = load %struct._GimpContainer*, %struct._GimpContainer** %fonts12, align 8
  %16 = bitcast %struct._GimpContainer* %15 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_object_get_type() #4
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call13)
  %17 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpObject*
  call void @gimp_object_set_name(%struct._GimpObject* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0))
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %18, i32 0, i32 1
  %19 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %20 = bitcast %struct._GimpCoreConfig* %19 to i8*
  %21 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %22 = bitcast %struct._Gimp* %21 to i8*
  %call15 = call i64 @g_signal_connect_data(i8* %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (void (%struct._Gimp*)* @gimp_fonts_load to void ()*), i8* %22, void (i8*, %struct._GClosure*)* null, i32 2)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare %struct._GimpContainer* @gimp_font_list_new(double, double) #3

declare void @gimp_object_set_name(%struct._GimpObject*, i8*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define void @gimp_fonts_load(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_fonts_load_with_status(%struct._Gimp* %0, void (i8*, i8*, double)* null)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_fonts_load_with_status(%struct._Gimp* %gimp, void (i8*, i8*, double)* %status_callback) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %status_callback.addr = alloca void (i8*, i8*, double)*, align 8
  %config = alloca %struct._FcConfig*, align 8
  %fonts_conf = alloca i8*, align 8
  %path = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %end_time = alloca i64, align 8
  %cache_thread = alloca %struct._GThread*, align 8
  %data = alloca %struct.GimpFontsLoadFuncData, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store void (i8*, i8*, double)* %status_callback, void (i8*, i8*, double)** %status_callback.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %fonts = getelementptr inbounds %struct._Gimp, %struct._Gimp* %0, i32 0, i32 36
  %1 = load %struct._GimpContainer*, %struct._GimpContainer** %fonts, align 8
  %2 = bitcast %struct._GimpContainer* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_font_list_get_type() #4
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %8, %9
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #5
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_fonts_load_with_status, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_set_busy(%struct._Gimp* %14)
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 4
  %16 = load i32, i32* %be_verbose, align 4
  %tobool11 = icmp ne i32 %16, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %do.end
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %do.end
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %fonts14 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %17, i32 0, i32 36
  %18 = load %struct._GimpContainer*, %struct._GimpContainer** %fonts14, align 8
  %19 = bitcast %struct._GimpContainer* %18 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_container_get_type() #4
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call15)
  %20 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpContainer*
  call void @gimp_container_freeze(%struct._GimpContainer* %20)
  %21 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %fonts17 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %21, i32 0, i32 36
  %22 = load %struct._GimpContainer*, %struct._GimpContainer** %fonts17, align 8
  %23 = bitcast %struct._GimpContainer* %22 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_container_get_type() #4
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call18)
  %24 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpContainer*
  call void @gimp_container_clear(%struct._GimpContainer* %24)
  %call20 = call %struct._FcConfig* @FcInitLoadConfig()
  store %struct._FcConfig* %call20, %struct._FcConfig** %config, align 8
  %25 = load %struct._FcConfig*, %struct._FcConfig** %config, align 8
  %tobool21 = icmp ne %struct._FcConfig* %25, null
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %if.end.13
  br label %cleanup

if.end.23:                                        ; preds = %if.end.13
  %call24 = call noalias i8* @gimp_personal_rc_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0))
  store i8* %call24, i8** %fonts_conf, align 8
  %26 = load %struct._FcConfig*, %struct._FcConfig** %config, align 8
  %27 = load i8*, i8** %fonts_conf, align 8
  %call25 = call i32 @gimp_fonts_load_fonts_conf(%struct._FcConfig* %26, i8* %27)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %if.end.23
  br label %cleanup

if.end.28:                                        ; preds = %if.end.23
  %call29 = call i8* @gimp_sysconf_directory() #4
  %call30 = call noalias i8* (i8*, ...) @g_build_filename(i8* %call29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* null)
  store i8* %call30, i8** %fonts_conf, align 8
  %28 = load %struct._FcConfig*, %struct._FcConfig** %config, align 8
  %29 = load i8*, i8** %fonts_conf, align 8
  %call31 = call i32 @gimp_fonts_load_fonts_conf(%struct._FcConfig* %28, i8* %29)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %if.end.28
  br label %cleanup

if.end.34:                                        ; preds = %if.end.28
  %30 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config35 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %30, i32 0, i32 1
  %31 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config35, align 8
  %font_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %31, i32 0, i32 20
  %32 = load i8*, i8** %font_path, align 8
  %call36 = call noalias i8* @gimp_config_path_expand(i8* %32, i32 1, %struct._GError** null)
  store i8* %call36, i8** %path, align 8
  %33 = load %struct._FcConfig*, %struct._FcConfig** %config, align 8
  %34 = load i8*, i8** %path, align 8
  call void @gimp_fonts_add_directories(%struct._FcConfig* %33, i8* %34)
  %35 = load i8*, i8** %path, align 8
  call void @g_free(i8* %35)
  %36 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  %tobool37 = icmp ne void (i8*, i8*, double)* %36, null
  br i1 %tobool37, label %if.then.38, label %if.else.63

if.then.38:                                       ; preds = %if.end.34
  %37 = load %struct._FcConfig*, %struct._FcConfig** %config, align 8
  %config42 = getelementptr inbounds %struct.GimpFontsLoadFuncData, %struct.GimpFontsLoadFuncData* %data, i32 0, i32 0
  store %struct._FcConfig* %37, %struct._FcConfig** %config42, align 8
  %mutex = getelementptr inbounds %struct.GimpFontsLoadFuncData, %struct.GimpFontsLoadFuncData* %data, i32 0, i32 1
  call void @g_mutex_init(%union._GMutex* %mutex)
  %cond = getelementptr inbounds %struct.GimpFontsLoadFuncData, %struct.GimpFontsLoadFuncData* %data, i32 0, i32 2
  call void @g_cond_init(%struct._GCond* %cond)
  %caching_complete = getelementptr inbounds %struct.GimpFontsLoadFuncData, %struct.GimpFontsLoadFuncData* %data, i32 0, i32 3
  %bf.load = load i8, i8* %caching_complete, align 8
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %caching_complete, align 8
  %38 = bitcast %struct.GimpFontsLoadFuncData* %data to i8*
  %call43 = call %struct._GThread* @g_thread_new(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* (i8*)* bitcast (void (%struct.GimpFontsLoadFuncData*)* @gimp_fonts_load_thread to i8* (i8*)*), i8* %38)
  store %struct._GThread* %call43, %struct._GThread** %cache_thread, align 8
  %mutex44 = getelementptr inbounds %struct.GimpFontsLoadFuncData, %struct.GimpFontsLoadFuncData* %data, i32 0, i32 1
  call void @g_mutex_lock(%union._GMutex* %mutex44)
  %call45 = call i64 @g_get_monotonic_time()
  %conv = sitofp i64 %call45 to double
  %add = fadd double %conv, 1.000000e+05
  %conv46 = fptosi double %add to i64
  store i64 %conv46, i64* %end_time, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.58, %if.then.54, %if.then.38
  %caching_complete47 = getelementptr inbounds %struct.GimpFontsLoadFuncData, %struct.GimpFontsLoadFuncData* %data, i32 0, i32 3
  %bf.load48 = load i8, i8* %caching_complete47, align 8
  %bf.shl = shl i8 %bf.load48, 7
  %bf.ashr = ashr i8 %bf.shl, 7
  %bf.cast = sext i8 %bf.ashr to i32
  %tobool49 = icmp ne i32 %bf.cast, 0
  %lnot = xor i1 %tobool49, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %cond50 = getelementptr inbounds %struct.GimpFontsLoadFuncData, %struct.GimpFontsLoadFuncData* %data, i32 0, i32 2
  %mutex51 = getelementptr inbounds %struct.GimpFontsLoadFuncData, %struct.GimpFontsLoadFuncData* %data, i32 0, i32 1
  %39 = load i64, i64* %end_time, align 8
  %call52 = call i32 @g_cond_wait_until(%struct._GCond* %cond50, %union._GMutex* %mutex51, i64 %39)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.end.58, label %if.then.54

if.then.54:                                       ; preds = %while.body
  %40 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  call void %40(i8* null, i8* null, double 6.000000e-01)
  %41 = load i64, i64* %end_time, align 8
  %conv55 = sitofp i64 %41 to double
  %add56 = fadd double %conv55, 1.000000e+05
  %conv57 = fptosi double %add56 to i64
  store i64 %conv57, i64* %end_time, align 8
  br label %while.cond

if.end.58:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %mutex59 = getelementptr inbounds %struct.GimpFontsLoadFuncData, %struct.GimpFontsLoadFuncData* %data, i32 0, i32 1
  call void @g_mutex_unlock(%union._GMutex* %mutex59)
  %42 = load %struct._GThread*, %struct._GThread** %cache_thread, align 8
  %call60 = call i8* @g_thread_join(%struct._GThread* %42)
  %mutex61 = getelementptr inbounds %struct.GimpFontsLoadFuncData, %struct.GimpFontsLoadFuncData* %data, i32 0, i32 1
  call void @g_mutex_clear(%union._GMutex* %mutex61)
  %cond62 = getelementptr inbounds %struct.GimpFontsLoadFuncData, %struct.GimpFontsLoadFuncData* %data, i32 0, i32 2
  call void @g_cond_clear(%struct._GCond* %cond62)
  br label %if.end.64

if.else.63:                                       ; preds = %if.end.34
  %43 = load %struct._FcConfig*, %struct._FcConfig** %config, align 8
  call void @gimp_fonts_load_func(%struct._FcConfig* %43)
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.63, %while.end
  %44 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %fonts65 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %44, i32 0, i32 36
  %45 = load %struct._GimpContainer*, %struct._GimpContainer** %fonts65, align 8
  %46 = bitcast %struct._GimpContainer* %45 to %struct._GTypeInstance*
  %call66 = call i64 @gimp_font_list_get_type() #4
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call66)
  %47 = bitcast %struct._GTypeInstance* %call67 to %struct._GimpFontList*
  call void @gimp_font_list_restore(%struct._GimpFontList* %47)
  br label %cleanup

cleanup:                                          ; preds = %if.end.64, %if.then.33, %if.then.27, %if.then.22
  %48 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %fonts68 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %48, i32 0, i32 36
  %49 = load %struct._GimpContainer*, %struct._GimpContainer** %fonts68, align 8
  %50 = bitcast %struct._GimpContainer* %49 to %struct._GTypeInstance*
  %call69 = call i64 @gimp_container_get_type() #4
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call69)
  %51 = bitcast %struct._GTypeInstance* %call70 to %struct._GimpContainer*
  call void @gimp_container_thaw(%struct._GimpContainer* %51)
  %52 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_unset_busy(%struct._Gimp* %52)
  br label %return

return:                                           ; preds = %cleanup, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_font_list_get_type() #1

declare void @gimp_set_busy(%struct._Gimp*) #3

declare void @g_print(i8*, ...) #3

declare void @gimp_container_freeze(%struct._GimpContainer*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_container_get_type() #1

declare void @gimp_container_clear(%struct._GimpContainer*) #3

declare %struct._FcConfig* @FcInitLoadConfig() #3

declare noalias i8* @gimp_personal_rc_file(i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @gimp_fonts_load_fonts_conf(%struct._FcConfig* %config, i8* %fonts_conf) #0 {
entry:
  %config.addr = alloca %struct._FcConfig*, align 8
  %fonts_conf.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct._FcConfig* %config, %struct._FcConfig** %config.addr, align 8
  store i8* %fonts_conf, i8** %fonts_conf.addr, align 8
  store i32 1, i32* %ret, align 4
  %0 = load %struct._FcConfig*, %struct._FcConfig** %config.addr, align 8
  %1 = load i8*, i8** %fonts_conf.addr, align 8
  %call = call i32 @FcConfigParseAndLoad(%struct._FcConfig* %0, i8* %1, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._FcConfig*, %struct._FcConfig** %config.addr, align 8
  call void @FcConfigDestroy(%struct._FcConfig* %2)
  store i32 0, i32* %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %fonts_conf.addr, align 8
  call void @g_free(i8* %3)
  %4 = load i32, i32* %ret, align 4
  ret i32 %4
}

declare noalias i8* @g_build_filename(i8*, ...) #3

; Function Attrs: nounwind readnone
declare i8* @gimp_sysconf_directory() #1

declare noalias i8* @gimp_config_path_expand(i8*, i32, %struct._GError**) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_fonts_add_directories(%struct._FcConfig* %config, i8* %path_str) #0 {
entry:
  %config.addr = alloca %struct._FcConfig*, align 8
  %path_str.addr = alloca i8*, align 8
  %path = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %dir = alloca i8*, align 8
  store %struct._FcConfig* %config, %struct._FcConfig** %config.addr, align 8
  store i8* %path_str, i8** %path_str.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._FcConfig*, %struct._FcConfig** %config.addr, align 8
  %cmp = icmp ne %struct._FcConfig* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_fonts_add_directories, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8*, i8** %path_str.addr, align 8
  %cmp2 = icmp ne i8* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_fonts_add_directories, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load i8*, i8** %path_str.addr, align 8
  %call = call %struct._GList* @gimp_path_parse(i8* %2, i32 256, i32 1, %struct._GList** null)
  store %struct._GList* %call, %struct._GList** %path, align 8
  %3 = load %struct._GList*, %struct._GList** %path, align 8
  store %struct._GList* %3, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.6
  %4 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8
  %call7 = call noalias i8* @g_strdup(i8* %6)
  store i8* %call7, i8** %dir, align 8
  %7 = load %struct._FcConfig*, %struct._FcConfig** %config.addr, align 8
  %8 = load i8*, i8** %dir, align 8
  %call8 = call i32 @FcConfigAppFontAddDir(%struct._FcConfig* %7, i8* %8)
  %9 = load i8*, i8** %dir, align 8
  call void @g_free(i8* %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %10, i32 0, i32 1
  %11 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %11, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct._GList*, %struct._GList** %path, align 8
  call void @gimp_path_free(%struct._GList* %12)
  br label %return

return:                                           ; preds = %for.end, %if.else.4, %if.else
  ret void
}

declare void @g_free(i8*) #3

declare void @g_mutex_init(%union._GMutex*) #3

declare void @g_cond_init(%struct._GCond*) #3

declare %struct._GThread* @g_thread_new(i8*, i8* (i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_fonts_load_thread(%struct.GimpFontsLoadFuncData* %data) #0 {
entry:
  %data.addr = alloca %struct.GimpFontsLoadFuncData*, align 8
  store %struct.GimpFontsLoadFuncData* %data, %struct.GimpFontsLoadFuncData** %data.addr, align 8
  %0 = load %struct.GimpFontsLoadFuncData*, %struct.GimpFontsLoadFuncData** %data.addr, align 8
  %config = getelementptr inbounds %struct.GimpFontsLoadFuncData, %struct.GimpFontsLoadFuncData* %0, i32 0, i32 0
  %1 = load %struct._FcConfig*, %struct._FcConfig** %config, align 8
  call void @gimp_fonts_load_func(%struct._FcConfig* %1)
  %2 = load %struct.GimpFontsLoadFuncData*, %struct.GimpFontsLoadFuncData** %data.addr, align 8
  %mutex = getelementptr inbounds %struct.GimpFontsLoadFuncData, %struct.GimpFontsLoadFuncData* %2, i32 0, i32 1
  call void @g_mutex_lock(%union._GMutex* %mutex)
  %3 = load %struct.GimpFontsLoadFuncData*, %struct.GimpFontsLoadFuncData** %data.addr, align 8
  %caching_complete = getelementptr inbounds %struct.GimpFontsLoadFuncData, %struct.GimpFontsLoadFuncData* %3, i32 0, i32 3
  %bf.load = load i8, i8* %caching_complete, align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 1
  store i8 %bf.set, i8* %caching_complete, align 8
  %4 = load %struct.GimpFontsLoadFuncData*, %struct.GimpFontsLoadFuncData** %data.addr, align 8
  %cond = getelementptr inbounds %struct.GimpFontsLoadFuncData, %struct.GimpFontsLoadFuncData* %4, i32 0, i32 2
  call void @g_cond_signal(%struct._GCond* %cond)
  %5 = load %struct.GimpFontsLoadFuncData*, %struct.GimpFontsLoadFuncData** %data.addr, align 8
  %mutex1 = getelementptr inbounds %struct.GimpFontsLoadFuncData, %struct.GimpFontsLoadFuncData* %5, i32 0, i32 1
  call void @g_mutex_unlock(%union._GMutex* %mutex1)
  call void @g_thread_exit(i8* null)
  ret void
}

declare void @g_mutex_lock(%union._GMutex*) #3

declare i64 @g_get_monotonic_time() #3

declare i32 @g_cond_wait_until(%struct._GCond*, %union._GMutex*, i64) #3

declare void @g_mutex_unlock(%union._GMutex*) #3

declare i8* @g_thread_join(%struct._GThread*) #3

declare void @g_mutex_clear(%union._GMutex*) #3

declare void @g_cond_clear(%struct._GCond*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_fonts_load_func(%struct._FcConfig* %config) #0 {
entry:
  %config.addr = alloca %struct._FcConfig*, align 8
  store %struct._FcConfig* %config, %struct._FcConfig** %config.addr, align 8
  %0 = load %struct._FcConfig*, %struct._FcConfig** %config.addr, align 8
  %call = call i32 @FcConfigBuildFonts(%struct._FcConfig* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._FcConfig*, %struct._FcConfig** %config.addr, align 8
  call void @FcConfigDestroy(%struct._FcConfig* %1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load %struct._FcConfig*, %struct._FcConfig** %config.addr, align 8
  %call1 = call i32 @FcConfigSetCurrent(%struct._FcConfig* %2)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @gimp_font_list_restore(%struct._GimpFontList*) #3

declare void @gimp_container_thaw(%struct._GimpContainer*) #3

declare void @gimp_unset_busy(%struct._Gimp*) #3

; Function Attrs: nounwind uwtable
define void @gimp_fonts_reset(%struct._Gimp* %gimp) #0 {
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
  %call = call i64 @gimp_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_fonts_reset, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %no_fonts = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 6
  %14 = load i32, i32* %no_fonts, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %do.end
  br label %return

if.end.13:                                        ; preds = %do.end
  %call14 = call i32 @FcInitReinitialize()
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12, %if.else.9
  ret void
}

declare i32 @FcInitReinitialize() #3

declare void @g_cond_signal(%struct._GCond*) #3

declare void @g_thread_exit(i8*) #3

declare i32 @FcConfigBuildFonts(%struct._FcConfig*) #3

declare void @FcConfigDestroy(%struct._FcConfig*) #3

declare i32 @FcConfigSetCurrent(%struct._FcConfig*) #3

declare i32 @FcConfigParseAndLoad(%struct._FcConfig*, i8*, i32) #3

declare %struct._GList* @gimp_path_parse(i8*, i32, i32, %struct._GList**) #3

declare noalias i8* @g_strdup(i8*) #3

declare i32 @FcConfigAppFontAddDir(%struct._FcConfig*, i8*) #3

declare void @gimp_path_free(%struct._GList*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
