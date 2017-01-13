; ModuleID = './app/gegl/gimpcurvesconfig.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpCurvesConfigClass = type { %struct._GimpImageMapConfigClass }
%struct._GimpImageMapConfigClass = type { %struct._GimpViewableClass }
%struct._GimpViewableClass = type { %struct._GimpObjectClass, i8*, i8*, void (%struct._GimpViewable*)*, void (%struct._GimpViewable*)*, i32 (%struct._GimpViewable*, i32*, i32*)*, void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, i8* (%struct._GimpViewable*, i8**)*, %struct._GimpContainer* (%struct._GimpViewable*)*, void (%struct._GimpViewable*, i32)*, i32 (%struct._GimpViewable*)* }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpViewable = type { %struct._GimpObject }
%struct._TempBuf = type opaque
%struct._GimpContext = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpContainer = type opaque
%struct._GimpCurvesConfig = type { %struct._GimpImageMapConfig, i32, [5 x %struct._GimpCurve*] }
%struct._GimpImageMapConfig = type { %struct._GimpViewable, i32 }
%struct._GimpCurve = type { %struct._GimpData, i32, i32, %struct._GimpVector2*, i32, double*, i32 }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpVector2 = type { double, double }
%struct._GimpConfig = type opaque
%struct._GimpConfigInterface = type { %struct._GTypeInterface, i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)*, i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)*, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GimpConfigWriter*)*, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GScanner*, i32*)*, %struct._GimpConfig* (%struct._GimpConfig*)*, i32 (%struct._GimpConfig*, %struct._GimpConfig*)*, void (%struct._GimpConfig*)*, i32 (%struct._GimpConfig*, %struct._GimpConfig*, i32)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpConfigWriter = type opaque
%struct._GScanner = type { i8*, i32, i32, i8*, %struct._GData*, %struct._GScannerConfig*, i32, %union._GTokenValue, i32, i32, i32, %union._GTokenValue, i32, i32, %struct._GHashTable*, i32, i8*, i8*, i8*, i32, void (%struct._GScanner*, i8*, i32)* }
%struct._GScannerConfig = type { i8*, i8*, i8*, i8*, i24, i32 }
%union._GTokenValue = type { i8* }
%struct._GHashTable = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Curves = type { [5 x [256 x i8]] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_curves_config_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"GimpCurvesConfig\00", align 1
@gimp_curves_config_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpConfigInterface*)* @gimp_curves_config_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-GEGL\00", align 1
@__func__.gimp_curves_config_reset_channel = private unnamed_addr constant [33 x i8] c"gimp_curves_config_reset_channel\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"GIMP_IS_CURVES_CONFIG (config)\00", align 1
@__func__.gimp_curves_config_load_cruft = private unnamed_addr constant [30 x i8] c"gimp_curves_config_load_cruft\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"file != NULL\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"# GIMP Curves File\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"not a GIMP Curves file\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%d %d \00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"fields != 2\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"parse error\00", align 1
@__func__.gimp_curves_config_save_cruft = private unnamed_addr constant [30 x i8] c"gimp_curves_config_save_cruft\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__func__.gimp_curves_config_to_cruft = private unnamed_addr constant [28 x i8] c"gimp_curves_config_to_cruft\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"cruft != NULL\00", align 1
@gimp_curves_config_parent_class = internal global i8* null, align 8
@GimpCurvesConfig_private_offset = internal global i32 0, align 4
@.str.12 = private unnamed_addr constant [17 x i8] c"gimp-tool-curves\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"The affected channel\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"curve\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"Curve\00", align 1
@.str.17 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"gimpcurvesconfig.c\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"curves config\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"dirty\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_curves_config_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_curves_config_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_curves_config_get_type.g_define_type_id__volatile to i8*))
  %tobool2 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  store i32 %land.ext, i32* %tmp
  %4 = load i32, i32* %tmp
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %call5 = call i64 @gimp_image_map_config_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 280, void (i8*, i8*)* bitcast (void (i8*)* @gimp_curves_config_class_intern_init to void (i8*, i8*)*), i32 88, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpCurvesConfig*)* @gimp_curves_config_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_config_interface_get_type() #7
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_curves_config_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_curves_config_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_curves_config_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_map_config_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_curves_config_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_curves_config_parent_class, align 8
  %1 = load i32, i32* @GimpCurvesConfig_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpCurvesConfig_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpCurvesConfigClass*
  call void @gimp_curves_config_class_init(%struct._GimpCurvesConfigClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_curves_config_init(%struct._GimpCurvesConfig* %self) #3 {
entry:
  %self.addr = alloca %struct._GimpCurvesConfig*, align 8
  %channel = alloca i32, align 4
  store %struct._GimpCurvesConfig* %self, %struct._GimpCurvesConfig** %self.addr, align 8
  store i32 0, i32* %channel, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %channel, align 4
  %cmp = icmp ule i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call %struct._GimpData* @gimp_curve_new(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0))
  %1 = bitcast %struct._GimpData* %call to %struct._GTypeInstance*
  %call1 = call i64 @gimp_curve_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpCurve*
  %3 = load i32, i32* %channel, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %self.addr, align 8
  %curve = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %4, i32 0, i32 2
  %arrayidx = getelementptr inbounds [5 x %struct._GimpCurve*], [5 x %struct._GimpCurve*]* %curve, i32 0, i64 %idxprom
  store %struct._GimpCurve* %2, %struct._GimpCurve** %arrayidx, align 8
  %5 = load i32, i32* %channel, align 4
  %idxprom3 = zext i32 %5 to i64
  %6 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %self.addr, align 8
  %curve4 = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %6, i32 0, i32 2
  %arrayidx5 = getelementptr inbounds [5 x %struct._GimpCurve*], [5 x %struct._GimpCurve*]* %curve4, i32 0, i64 %idxprom3
  %7 = load %struct._GimpCurve*, %struct._GimpCurve** %arrayidx5, align 8
  %8 = bitcast %struct._GimpCurve* %7 to i8*
  %9 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %self.addr, align 8
  %10 = bitcast %struct._GimpCurvesConfig* %9 to i8*
  %call6 = call i64 @g_signal_connect_object(i8* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), void ()* bitcast (void (%struct._GimpCurve*, %struct._GimpCurvesConfig*)* @gimp_curves_config_curve_dirty to void ()*), i8* %10, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %channel, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %channel, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %self.addr, align 8
  %13 = bitcast %struct._GimpCurvesConfig* %12 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_config_interface_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call7)
  %14 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpConfig*
  call void @gimp_config_reset(%struct._GimpConfig* %14)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_curves_config_iface_init(%struct._GimpConfigInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpConfigInterface*, align 8
  store %struct._GimpConfigInterface* %iface, %struct._GimpConfigInterface** %iface.addr, align 8
  %0 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %iface.addr, align 8
  %serialize = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %0, i32 0, i32 1
  store i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)* @gimp_curves_config_serialize, i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)** %serialize, align 8
  %1 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %iface.addr, align 8
  %deserialize = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %1, i32 0, i32 2
  store i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)* @gimp_curves_config_deserialize, i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)** %deserialize, align 8
  %2 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %iface.addr, align 8
  %equal = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %2, i32 0, i32 6
  store i32 (%struct._GimpConfig*, %struct._GimpConfig*)* @gimp_curves_config_equal, i32 (%struct._GimpConfig*, %struct._GimpConfig*)** %equal, align 8
  %3 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %iface.addr, align 8
  %reset = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %3, i32 0, i32 7
  store void (%struct._GimpConfig*)* @gimp_curves_config_reset, void (%struct._GimpConfig*)** %reset, align 8
  %4 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %iface.addr, align 8
  %copy = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %4, i32 0, i32 8
  store i32 (%struct._GimpConfig*, %struct._GimpConfig*, i32)* @gimp_curves_config_copy, i32 (%struct._GimpConfig*, %struct._GimpConfig*, i32)** %copy, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_curves_config_reset_channel(%struct._GimpCurvesConfig* %config) #3 {
entry:
  %config.addr = alloca %struct._GimpCurvesConfig*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCurvesConfig* %config, %struct._GimpCurvesConfig** %config.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpCurvesConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_curves_config_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_curves_config_reset_channel, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config.addr, align 8
  %channel = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %13, i32 0, i32 1
  %14 = load i32, i32* %channel, align 4
  %idxprom = zext i32 %14 to i64
  %15 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config.addr, align 8
  %curve = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %15, i32 0, i32 2
  %arrayidx = getelementptr inbounds [5 x %struct._GimpCurve*], [5 x %struct._GimpCurve*]* %curve, i32 0, i64 %idxprom
  %16 = load %struct._GimpCurve*, %struct._GimpCurve** %arrayidx, align 8
  %17 = bitcast %struct._GimpCurve* %16 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_config_interface_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call11)
  %18 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpConfig*
  call void @gimp_config_reset(%struct._GimpConfig* %18)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @gimp_config_reset(%struct._GimpConfig*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_curves_config_load_cruft(%struct._GimpCurvesConfig* %config, i8* %fp, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %config.addr = alloca %struct._GimpCurvesConfig*, align 8
  %fp.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %fields = alloca i32, align 4
  %buf = alloca [50 x i8], align 16
  %index = alloca [5 x [17 x i32]], align 16
  %value = alloca [5 x [17 x i32]], align 16
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %curve = alloca %struct._GimpCurve*, align 8
  store %struct._GimpCurvesConfig* %config, %struct._GimpCurvesConfig** %config.addr, align 8
  store i8* %fp, i8** %fp.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i8*, i8** %fp.addr, align 8
  %1 = bitcast i8* %0 to %struct._IO_FILE*
  store %struct._IO_FILE* %1, %struct._IO_FILE** %file, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config.addr, align 8
  %3 = bitcast %struct._GimpCurvesConfig* %2 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %3, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_curves_config_get_type() #7
  store i64 %call, i64* %__t, align 8
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %4, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %6, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %8, i32 0, i32 0
  %9 = load i64, i64* %g_type, align 8
  %10 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %9, %10
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %12 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %11, i64 %12) #8
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %13 = load i32, i32* %__r, align 4
  store i32 %13, i32* %tmp
  %14 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %14, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_curves_config_load_cruft, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %cmp12 = icmp ne %struct._IO_FILE* %15, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_curves_config_load_cruft, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp18 = icmp eq %struct._GError** %16, null
  br i1 %cmp18, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.17
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %18 = load %struct._GError*, %struct._GError** %17, align 8
  %cmp19 = icmp eq %struct._GError* %18, null
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %lor.lhs.false, %do.body.17
  br label %if.end.22

if.else.21:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_curves_config_load_cruft, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call24 = call i8* @fgets(i8* %arraydecay, i32 50, %struct._IO_FILE* %19)
  %tobool25 = icmp ne i8* %call24, null
  br i1 %tobool25, label %lor.lhs.false.26, label %if.then.30

lor.lhs.false.26:                                 ; preds = %do.end.23
  %arraydecay27 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  %call28 = call i32 @strcmp(i8* %arraydecay27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0)) #8
  %cmp29 = icmp ne i32 %call28, 0
  br i1 %cmp29, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %lor.lhs.false.26, %do.end.23
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call31 = call i32 @gimp_config_error_quark() #7
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0)) #6
  call void @g_set_error_literal(%struct._GError** %20, i32 %call31, i32 3, i8* %call32)
  store i32 0, i32* %retval
  br label %return

if.end.33:                                        ; preds = %lor.lhs.false.26
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.50, %if.end.33
  %21 = load i32, i32* %i, align 4
  %cmp34 = icmp slt i32 %21, 5
  br i1 %cmp34, label %for.body, label %for.end.52

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc, %for.body
  %22 = load i32, i32* %j, align 4
  %cmp36 = icmp slt i32 %22, 17
  br i1 %cmp36, label %for.body.37, label %for.end

for.body.37:                                      ; preds = %for.cond.35
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %24 = load i32, i32* %j, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds [5 x [17 x i32]], [5 x [17 x i32]]* %index, i32 0, i64 %idxprom38
  %arrayidx39 = getelementptr inbounds [17 x i32], [17 x i32]* %arrayidx, i32 0, i64 %idxprom
  %26 = load i32, i32* %j, align 4
  %idxprom40 = sext i32 %26 to i64
  %27 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %27 to i64
  %arrayidx42 = getelementptr inbounds [5 x [17 x i32]], [5 x [17 x i32]]* %value, i32 0, i64 %idxprom41
  %arrayidx43 = getelementptr inbounds [17 x i32], [17 x i32]* %arrayidx42, i32 0, i64 %idxprom40
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32* %arrayidx39, i32* %arrayidx43)
  store i32 %call44, i32* %fields, align 4
  %28 = load i32, i32* %fields, align 4
  %cmp45 = icmp ne i32 %28, 2
  br i1 %cmp45, label %if.then.46, label %if.end.49

if.then.46:                                       ; preds = %for.body.37
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0))
  %29 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call47 = call i32 @gimp_config_error_quark() #7
  %call48 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0)) #6
  call void @g_set_error_literal(%struct._GError** %29, i32 %call47, i32 3, i8* %call48)
  store i32 0, i32* %retval
  br label %return

if.end.49:                                        ; preds = %for.body.37
  br label %for.inc

for.inc:                                          ; preds = %if.end.49
  %30 = load i32, i32* %j, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.35

for.end:                                          ; preds = %for.cond.35
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.end
  %31 = load i32, i32* %i, align 4
  %inc51 = add nsw i32 %31, 1
  store i32 %inc51, i32* %i, align 4
  br label %for.cond

for.end.52:                                       ; preds = %for.cond
  %32 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config.addr, align 8
  %33 = bitcast %struct._GimpCurvesConfig* %32 to %struct._GTypeInstance*
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 80)
  %34 = bitcast %struct._GTypeInstance* %call53 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %34)
  store i32 0, i32* %i, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.95, %for.end.52
  %35 = load i32, i32* %i, align 4
  %cmp55 = icmp slt i32 %35, 5
  br i1 %cmp55, label %for.body.56, label %for.end.97

for.body.56:                                      ; preds = %for.cond.54
  %36 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %36 to i64
  %37 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config.addr, align 8
  %curve59 = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %37, i32 0, i32 2
  %arrayidx60 = getelementptr inbounds [5 x %struct._GimpCurve*], [5 x %struct._GimpCurve*]* %curve59, i32 0, i64 %idxprom58
  %38 = load %struct._GimpCurve*, %struct._GimpCurve** %arrayidx60, align 8
  store %struct._GimpCurve* %38, %struct._GimpCurve** %curve, align 8
  %39 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %40 = bitcast %struct._GimpCurve* %39 to %struct._GTypeInstance*
  %call61 = call i64 @gimp_data_get_type() #7
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call61)
  %41 = bitcast %struct._GTypeInstance* %call62 to %struct._GimpData*
  call void @gimp_data_freeze(%struct._GimpData* %41)
  %42 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  call void @gimp_curve_set_curve_type(%struct._GimpCurve* %42, i32 0)
  %43 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  call void @gimp_curve_reset(%struct._GimpCurve* %43, i32 0)
  store i32 0, i32* %j, align 4
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.90, %for.body.56
  %44 = load i32, i32* %j, align 4
  %cmp64 = icmp slt i32 %44, 17
  br i1 %cmp64, label %for.body.65, label %for.end.92

for.body.65:                                      ; preds = %for.cond.63
  %45 = load i32, i32* %j, align 4
  %idxprom66 = sext i32 %45 to i64
  %46 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %46 to i64
  %arrayidx68 = getelementptr inbounds [5 x [17 x i32]], [5 x [17 x i32]]* %index, i32 0, i64 %idxprom67
  %arrayidx69 = getelementptr inbounds [17 x i32], [17 x i32]* %arrayidx68, i32 0, i64 %idxprom66
  %47 = load i32, i32* %arrayidx69, align 4
  %cmp70 = icmp slt i32 %47, 0
  br i1 %cmp70, label %if.then.77, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %for.body.65
  %48 = load i32, i32* %j, align 4
  %idxprom72 = sext i32 %48 to i64
  %49 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %49 to i64
  %arrayidx74 = getelementptr inbounds [5 x [17 x i32]], [5 x [17 x i32]]* %value, i32 0, i64 %idxprom73
  %arrayidx75 = getelementptr inbounds [17 x i32], [17 x i32]* %arrayidx74, i32 0, i64 %idxprom72
  %50 = load i32, i32* %arrayidx75, align 4
  %cmp76 = icmp slt i32 %50, 0
  br i1 %cmp76, label %if.then.77, label %if.else.78

if.then.77:                                       ; preds = %lor.lhs.false.71, %for.body.65
  %51 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %52 = load i32, i32* %j, align 4
  call void @gimp_curve_set_point(%struct._GimpCurve* %51, i32 %52, double -1.000000e+00, double -1.000000e+00)
  br label %if.end.89

if.else.78:                                       ; preds = %lor.lhs.false.71
  %53 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %54 = load i32, i32* %j, align 4
  %55 = load i32, i32* %j, align 4
  %idxprom79 = sext i32 %55 to i64
  %56 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %56 to i64
  %arrayidx81 = getelementptr inbounds [5 x [17 x i32]], [5 x [17 x i32]]* %index, i32 0, i64 %idxprom80
  %arrayidx82 = getelementptr inbounds [17 x i32], [17 x i32]* %arrayidx81, i32 0, i64 %idxprom79
  %57 = load i32, i32* %arrayidx82, align 4
  %conv = sitofp i32 %57 to double
  %div = fdiv double %conv, 2.550000e+02
  %58 = load i32, i32* %j, align 4
  %idxprom83 = sext i32 %58 to i64
  %59 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %59 to i64
  %arrayidx85 = getelementptr inbounds [5 x [17 x i32]], [5 x [17 x i32]]* %value, i32 0, i64 %idxprom84
  %arrayidx86 = getelementptr inbounds [17 x i32], [17 x i32]* %arrayidx85, i32 0, i64 %idxprom83
  %60 = load i32, i32* %arrayidx86, align 4
  %conv87 = sitofp i32 %60 to double
  %div88 = fdiv double %conv87, 2.550000e+02
  call void @gimp_curve_set_point(%struct._GimpCurve* %53, i32 %54, double %div, double %div88)
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.78, %if.then.77
  br label %for.inc.90

for.inc.90:                                       ; preds = %if.end.89
  %61 = load i32, i32* %j, align 4
  %inc91 = add nsw i32 %61, 1
  store i32 %inc91, i32* %j, align 4
  br label %for.cond.63

for.end.92:                                       ; preds = %for.cond.63
  %62 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %63 = bitcast %struct._GimpCurve* %62 to %struct._GTypeInstance*
  %call93 = call i64 @gimp_data_get_type() #7
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call93)
  %64 = bitcast %struct._GTypeInstance* %call94 to %struct._GimpData*
  call void @gimp_data_thaw(%struct._GimpData* %64)
  br label %for.inc.95

for.inc.95:                                       ; preds = %for.end.92
  %65 = load i32, i32* %i, align 4
  %inc96 = add nsw i32 %65, 1
  store i32 %inc96, i32* %i, align 4
  br label %for.cond.54

for.end.97:                                       ; preds = %for.cond.54
  %66 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config.addr, align 8
  %67 = bitcast %struct._GimpCurvesConfig* %66 to %struct._GTypeInstance*
  %call98 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 80)
  %68 = bitcast %struct._GTypeInstance* %call98 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %68)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.97, %if.then.46, %if.then.30, %if.else.21, %if.else.14, %if.else.9
  %69 = load i32, i32* %retval
  ret i32 %69
}

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_config_error_quark() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

declare void @g_printerr(i8*, ...) #1

declare void @g_object_freeze_notify(%struct._GObject*) #1

declare void @gimp_data_freeze(%struct._GimpData*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_data_get_type() #2

declare void @gimp_curve_set_curve_type(%struct._GimpCurve*, i32) #1

declare void @gimp_curve_reset(%struct._GimpCurve*, i32) #1

declare void @gimp_curve_set_point(%struct._GimpCurve*, i32, double, double) #1

declare void @gimp_data_thaw(%struct._GimpData*) #1

declare void @g_object_thaw_notify(%struct._GObject*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_curves_config_save_cruft(%struct._GimpCurvesConfig* %config, i8* %fp, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %config.addr = alloca %struct._GimpCurvesConfig*, align 8
  %fp.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %curve = alloca %struct._GimpCurve*, align 8
  %j = alloca i32, align 4
  %n_points = alloca i32, align 4
  %sample = alloca i32, align 4
  %point = alloca i32, align 4
  %x88 = alloca double, align 8
  %y94 = alloca double, align 8
  store %struct._GimpCurvesConfig* %config, %struct._GimpCurvesConfig** %config.addr, align 8
  store i8* %fp, i8** %fp.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i8*, i8** %fp.addr, align 8
  %1 = bitcast i8* %0 to %struct._IO_FILE*
  store %struct._IO_FILE* %1, %struct._IO_FILE** %file, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config.addr, align 8
  %3 = bitcast %struct._GimpCurvesConfig* %2 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %3, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_curves_config_get_type() #7
  store i64 %call, i64* %__t, align 8
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %4, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %6, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %8, i32 0, i32 0
  %9 = load i64, i64* %g_type, align 8
  %10 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %9, %10
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %12 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %11, i64 %12) #8
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %13 = load i32, i32* %__r, align 4
  store i32 %13, i32* %tmp
  %14 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %14, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_curves_config_save_cruft, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %cmp12 = icmp ne %struct._IO_FILE* %15, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_curves_config_save_cruft, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp18 = icmp eq %struct._GError** %16, null
  br i1 %cmp18, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.17
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %18 = load %struct._GError*, %struct._GError** %17, align 8
  %cmp19 = icmp eq %struct._GError* %18, null
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %lor.lhs.false, %do.body.17
  br label %if.end.22

if.else.21:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_curves_config_save_cruft, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.117, %do.end.23
  %20 = load i32, i32* %i, align 4
  %cmp25 = icmp slt i32 %20, 5
  br i1 %cmp25, label %for.body, label %for.end.119

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config.addr, align 8
  %curve27 = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %22, i32 0, i32 2
  %arrayidx = getelementptr inbounds [5 x %struct._GimpCurve*], [5 x %struct._GimpCurve*]* %curve27, i32 0, i64 %idxprom
  %23 = load %struct._GimpCurve*, %struct._GimpCurve** %arrayidx, align 8
  store %struct._GimpCurve* %23, %struct._GimpCurve** %curve, align 8
  %24 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %curve_type = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %24, i32 0, i32 1
  %25 = load i32, i32* %curve_type, align 4
  %cmp29 = icmp eq i32 %25, 1
  br i1 %cmp29, label %if.then.30, label %if.end.81

if.then.30:                                       ; preds = %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc, %if.then.30
  %26 = load i32, i32* %j, align 4
  %27 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %n_points33 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %27, i32 0, i32 2
  %28 = load i32, i32* %n_points33, align 4
  %cmp34 = icmp slt i32 %26, %28
  br i1 %cmp34, label %for.body.35, label %for.end

for.body.35:                                      ; preds = %for.cond.32
  %29 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %29 to i64
  %30 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %points = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %30, i32 0, i32 3
  %31 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %arrayidx37 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %31, i64 %idxprom36
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx37, i32 0, i32 0
  store double -1.000000e+00, double* %x, align 8
  %32 = load i32, i32* %j, align 4
  %idxprom38 = sext i32 %32 to i64
  %33 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %points39 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %33, i32 0, i32 3
  %34 = load %struct._GimpVector2*, %struct._GimpVector2** %points39, align 8
  %arrayidx40 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %34, i64 %idxprom38
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx40, i32 0, i32 1
  store double -1.000000e+00, double* %y, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.35
  %35 = load i32, i32* %j, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.32

for.end:                                          ; preds = %for.cond.32
  %36 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %n_points41 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %36, i32 0, i32 2
  %37 = load i32, i32* %n_points41, align 4
  %cmp42 = icmp sgt i32 9, %37
  br i1 %cmp42, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %38 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %n_points43 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %38, i32 0, i32 2
  %39 = load i32, i32* %n_points43, align 4
  br label %cond.end.50

cond.false:                                       ; preds = %for.end
  %40 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %n_points44 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %40, i32 0, i32 2
  %41 = load i32, i32* %n_points44, align 4
  %div = sdiv i32 %41, 2
  %cmp45 = icmp slt i32 9, %div
  br i1 %cmp45, label %cond.true.46, label %cond.false.49

cond.true.46:                                     ; preds = %cond.false
  %42 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %n_points47 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %42, i32 0, i32 2
  %43 = load i32, i32* %n_points47, align 4
  %div48 = sdiv i32 %43, 2
  br label %cond.end

cond.false.49:                                    ; preds = %cond.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false.49, %cond.true.46
  %cond = phi i32 [ %div48, %cond.true.46 ], [ 9, %cond.false.49 ]
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.end, %cond.true
  %cond51 = phi i32 [ %39, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond51, i32* %n_points, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.78, %cond.end.50
  %44 = load i32, i32* %j, align 4
  %45 = load i32, i32* %n_points, align 4
  %cmp53 = icmp slt i32 %44, %45
  br i1 %cmp53, label %for.body.54, label %for.end.80

for.body.54:                                      ; preds = %for.cond.52
  %46 = load i32, i32* %j, align 4
  %47 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %n_samples = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %47, i32 0, i32 4
  %48 = load i32, i32* %n_samples, align 4
  %sub = sub nsw i32 %48, 1
  %mul = mul nsw i32 %46, %sub
  %49 = load i32, i32* %n_points, align 4
  %sub56 = sub nsw i32 %49, 1
  %div57 = sdiv i32 %mul, %sub56
  store i32 %div57, i32* %sample, align 4
  %50 = load i32, i32* %j, align 4
  %51 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %n_points59 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %51, i32 0, i32 2
  %52 = load i32, i32* %n_points59, align 4
  %sub60 = sub nsw i32 %52, 1
  %mul61 = mul nsw i32 %50, %sub60
  %53 = load i32, i32* %n_points, align 4
  %sub62 = sub nsw i32 %53, 1
  %div63 = sdiv i32 %mul61, %sub62
  store i32 %div63, i32* %point, align 4
  %54 = load i32, i32* %sample, align 4
  %conv = sitofp i32 %54 to double
  %55 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %n_samples64 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %55, i32 0, i32 4
  %56 = load i32, i32* %n_samples64, align 4
  %sub65 = sub nsw i32 %56, 1
  %conv66 = sitofp i32 %sub65 to double
  %div67 = fdiv double %conv, %conv66
  %57 = load i32, i32* %point, align 4
  %idxprom68 = sext i32 %57 to i64
  %58 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %points69 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %58, i32 0, i32 3
  %59 = load %struct._GimpVector2*, %struct._GimpVector2** %points69, align 8
  %arrayidx70 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %59, i64 %idxprom68
  %x71 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx70, i32 0, i32 0
  store double %div67, double* %x71, align 8
  %60 = load i32, i32* %sample, align 4
  %idxprom72 = sext i32 %60 to i64
  %61 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %samples = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %61, i32 0, i32 5
  %62 = load double*, double** %samples, align 8
  %arrayidx73 = getelementptr inbounds double, double* %62, i64 %idxprom72
  %63 = load double, double* %arrayidx73, align 8
  %64 = load i32, i32* %point, align 4
  %idxprom74 = sext i32 %64 to i64
  %65 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %points75 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %65, i32 0, i32 3
  %66 = load %struct._GimpVector2*, %struct._GimpVector2** %points75, align 8
  %arrayidx76 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %66, i64 %idxprom74
  %y77 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx76, i32 0, i32 1
  store double %63, double* %y77, align 8
  br label %for.inc.78

for.inc.78:                                       ; preds = %for.body.54
  %67 = load i32, i32* %j, align 4
  %inc79 = add nsw i32 %67, 1
  store i32 %inc79, i32* %j, align 4
  br label %for.cond.52

for.end.80:                                       ; preds = %for.cond.52
  br label %if.end.81

if.end.81:                                        ; preds = %for.end.80, %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.113, %if.end.81
  %68 = load i32, i32* %j, align 4
  %69 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %n_points83 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %69, i32 0, i32 2
  %70 = load i32, i32* %n_points83, align 4
  %cmp84 = icmp slt i32 %68, %70
  br i1 %cmp84, label %for.body.86, label %for.end.115

for.body.86:                                      ; preds = %for.cond.82
  %71 = load i32, i32* %j, align 4
  %idxprom89 = sext i32 %71 to i64
  %72 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %points90 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %72, i32 0, i32 3
  %73 = load %struct._GimpVector2*, %struct._GimpVector2** %points90, align 8
  %arrayidx91 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %73, i64 %idxprom89
  %x92 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx91, i32 0, i32 0
  %74 = load double, double* %x92, align 8
  store double %74, double* %x88, align 8
  %75 = load i32, i32* %j, align 4
  %idxprom95 = sext i32 %75 to i64
  %76 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %points96 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %76, i32 0, i32 3
  %77 = load %struct._GimpVector2*, %struct._GimpVector2** %points96, align 8
  %arrayidx97 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %77, i64 %idxprom95
  %y98 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx97, i32 0, i32 1
  %78 = load double, double* %y98, align 8
  store double %78, double* %y94, align 8
  %79 = load double, double* %x88, align 8
  %cmp99 = fcmp olt double %79, 0.000000e+00
  br i1 %cmp99, label %if.then.104, label %lor.lhs.false.101

lor.lhs.false.101:                                ; preds = %for.body.86
  %80 = load double, double* %y94, align 8
  %cmp102 = fcmp olt double %80, 0.000000e+00
  br i1 %cmp102, label %if.then.104, label %if.else.106

if.then.104:                                      ; preds = %lor.lhs.false.101, %for.body.86
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call105 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.112

if.else.106:                                      ; preds = %lor.lhs.false.101
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %83 = load double, double* %x88, align 8
  %mul107 = fmul double %83, 2.559990e+02
  %conv108 = fptosi double %mul107 to i32
  %84 = load double, double* %y94, align 8
  %mul109 = fmul double %84, 2.559990e+02
  %conv110 = fptosi double %mul109 to i32
  %call111 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 %conv108, i32 %conv110)
  br label %if.end.112

if.end.112:                                       ; preds = %if.else.106, %if.then.104
  br label %for.inc.113

for.inc.113:                                      ; preds = %if.end.112
  %85 = load i32, i32* %j, align 4
  %inc114 = add nsw i32 %85, 1
  store i32 %inc114, i32* %j, align 4
  br label %for.cond.82

for.end.115:                                      ; preds = %for.cond.82
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call116 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  br label %for.inc.117

for.inc.117:                                      ; preds = %for.end.115
  %87 = load i32, i32* %i, align 4
  %inc118 = add nsw i32 %87, 1
  store i32 %inc118, i32* %i, align 4
  br label %for.cond

for.end.119:                                      ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.119, %if.else.21, %if.else.14, %if.else.9
  %88 = load i32, i32* %retval
  ret i32 %88
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_curves_config_to_cruft(%struct._GimpCurvesConfig* %config, %struct._Curves* %cruft, i32 %is_color) #3 {
entry:
  %config.addr = alloca %struct._GimpCurvesConfig*, align 8
  %cruft.addr = alloca %struct._Curves*, align 8
  %is_color.addr = alloca i32, align 4
  %channel = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCurvesConfig* %config, %struct._GimpCurvesConfig** %config.addr, align 8
  store %struct._Curves* %cruft, %struct._Curves** %cruft.addr, align 8
  store i32 %is_color, i32* %is_color.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpCurvesConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_curves_config_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_curves_config_to_cruft, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.28

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._Curves*, %struct._Curves** %cruft.addr, align 8
  %cmp12 = icmp ne %struct._Curves* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_curves_config_to_cruft, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.28

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  store i32 0, i32* %channel, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.16
  %14 = load i32, i32* %channel, align 4
  %cmp17 = icmp ule i32 %14, 4
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %channel, align 4
  %idxprom = zext i32 %15 to i64
  %16 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config.addr, align 8
  %curve = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %16, i32 0, i32 2
  %arrayidx = getelementptr inbounds [5 x %struct._GimpCurve*], [5 x %struct._GimpCurve*]* %curve, i32 0, i64 %idxprom
  %17 = load %struct._GimpCurve*, %struct._GimpCurve** %arrayidx, align 8
  %18 = load i32, i32* %channel, align 4
  %idxprom18 = zext i32 %18 to i64
  %19 = load %struct._Curves*, %struct._Curves** %cruft.addr, align 8
  %curve19 = getelementptr inbounds %struct._Curves, %struct._Curves* %19, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [5 x [256 x i8]], [5 x [256 x i8]]* %curve19, i32 0, i64 %idxprom18
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx20, i32 0, i32 0
  call void @gimp_curve_get_uchar(%struct._GimpCurve* %17, i32 256, i8* %arraydecay)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %channel, align 4
  %inc = add i32 %20, 1
  store i32 %inc, i32* %channel, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %is_color.addr, align 4
  %tobool21 = icmp ne i32 %21, 0
  br i1 %tobool21, label %if.end.28, label %if.then.22

if.then.22:                                       ; preds = %for.end
  %22 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config.addr, align 8
  %curve23 = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %22, i32 0, i32 2
  %arrayidx24 = getelementptr inbounds [5 x %struct._GimpCurve*], [5 x %struct._GimpCurve*]* %curve23, i32 0, i64 4
  %23 = load %struct._GimpCurve*, %struct._GimpCurve** %arrayidx24, align 8
  %24 = load %struct._Curves*, %struct._Curves** %cruft.addr, align 8
  %curve25 = getelementptr inbounds %struct._Curves, %struct._Curves* %24, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [5 x [256 x i8]], [5 x [256 x i8]]* %curve25, i32 0, i64 1
  %arraydecay27 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx26, i32 0, i32 0
  call void @gimp_curve_get_uchar(%struct._GimpCurve* %23, i32 256, i8* %arraydecay27)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.9, %if.else.14, %if.then.22, %for.end
  ret void
}

declare void @gimp_curve_get_uchar(%struct._GimpCurve*, i32, i8*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_curves_config_class_init(%struct._GimpCurvesConfigClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpCurvesConfigClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %viewable_class = alloca %struct._GimpViewableClass*, align 8
  store %struct._GimpCurvesConfigClass* %klass, %struct._GimpCurvesConfigClass** %klass.addr, align 8
  %0 = load %struct._GimpCurvesConfigClass*, %struct._GimpCurvesConfigClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpCurvesConfigClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpCurvesConfigClass*, %struct._GimpCurvesConfigClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpCurvesConfigClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_viewable_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpViewableClass*
  store %struct._GimpViewableClass* %5, %struct._GimpViewableClass** %viewable_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_curves_config_finalize, void (%struct._GObject*)** %finalize, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_curves_config_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_curves_config_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %9 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %default_stock_id = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %9, i32 0, i32 1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i8** %default_stock_id, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gimp_histogram_channel_get_type() #7
  %call4 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0), i64 %call3, i32 0, i32 263)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 1, %struct._GParamSpec* %call4)
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call i64 @gimp_curve_get_type() #7
  %call6 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i64 %call5, i32 771)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 2, %struct._GParamSpec* %call6)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_curves_config_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %self = alloca %struct._GimpCurvesConfig*, align 8
  %channel = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_curves_config_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCurvesConfig*
  store %struct._GimpCurvesConfig* %2, %struct._GimpCurvesConfig** %self, align 8
  store i32 0, i32* %channel, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %channel, align 4
  %cmp = icmp ule i32 %3, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %channel, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %self, align 8
  %curve = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %5, i32 0, i32 2
  %arrayidx = getelementptr inbounds [5 x %struct._GimpCurve*], [5 x %struct._GimpCurve*]* %curve, i32 0, i64 %idxprom
  %6 = load %struct._GimpCurve*, %struct._GimpCurve** %arrayidx, align 8
  %7 = bitcast %struct._GimpCurve* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load i32, i32* %channel, align 4
  %idxprom2 = zext i32 %8 to i64
  %9 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %self, align 8
  %curve3 = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %9, i32 0, i32 2
  %arrayidx4 = getelementptr inbounds [5 x %struct._GimpCurve*], [5 x %struct._GimpCurve*]* %curve3, i32 0, i64 %idxprom2
  store %struct._GimpCurve* null, %struct._GimpCurve** %arrayidx4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %channel, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %channel, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i8*, i8** @gimp_curves_config_parent_class, align 8
  %12 = bitcast i8* %11 to %struct._GTypeClass*
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %12, i64 80)
  %13 = bitcast %struct._GTypeClass* %call5 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %13, i32 0, i32 6
  %14 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %15 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %14(%struct._GObject* %15)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_curves_config_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %self = alloca %struct._GimpCurvesConfig*, align 8
  %src_curve = alloca %struct._GimpCurve*, align 8
  %dest_curve = alloca %struct._GimpCurve*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_curves_config_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCurvesConfig*
  store %struct._GimpCurvesConfig* %2, %struct._GimpCurvesConfig** %self, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_enum(%struct._GValue* %4)
  %5 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %self, align 8
  %channel = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %5, i32 0, i32 1
  store i32 %call2, i32* %channel, align 4
  %6 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void @g_object_notify(%struct._GObject* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0))
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i8* @g_value_get_object(%struct._GValue* %7)
  %8 = bitcast i8* %call4 to %struct._GimpCurve*
  store %struct._GimpCurve* %8, %struct._GimpCurve** %src_curve, align 8
  %9 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %self, align 8
  %channel5 = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %9, i32 0, i32 1
  %10 = load i32, i32* %channel5, align 4
  %idxprom = zext i32 %10 to i64
  %11 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %self, align 8
  %curve = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %11, i32 0, i32 2
  %arrayidx = getelementptr inbounds [5 x %struct._GimpCurve*], [5 x %struct._GimpCurve*]* %curve, i32 0, i64 %idxprom
  %12 = load %struct._GimpCurve*, %struct._GimpCurve** %arrayidx, align 8
  store %struct._GimpCurve* %12, %struct._GimpCurve** %dest_curve, align 8
  %13 = load %struct._GimpCurve*, %struct._GimpCurve** %src_curve, align 8
  %tobool = icmp ne %struct._GimpCurve* %13, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb.3
  %14 = load %struct._GimpCurve*, %struct._GimpCurve** %dest_curve, align 8
  %tobool6 = icmp ne %struct._GimpCurve* %14, null
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %15 = load %struct._GimpCurve*, %struct._GimpCurve** %src_curve, align 8
  %16 = bitcast %struct._GimpCurve* %15 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_config_interface_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call7)
  %17 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpConfig*
  %18 = load %struct._GimpCurve*, %struct._GimpCurve** %dest_curve, align 8
  %19 = bitcast %struct._GimpCurve* %18 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_config_interface_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call9)
  %20 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpConfig*
  %call11 = call i32 @gimp_config_copy(%struct._GimpConfig* %17, %struct._GimpConfig* %20, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.bb.3
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %21 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %21, %struct._GObject** %_glib__object, align 8
  %22 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %22, %struct._GParamSpec** %_glib__pspec, align 8
  %23 = load i32, i32* %property_id.addr, align 4
  store i32 %23, i32* %_glib__property_id, align 4
  %24 = load i32, i32* %_glib__property_id, align 4
  %25 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %25, i32 0, i32 1
  %26 = load i8*, i8** %name, align 8
  %27 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %28 = bitcast %struct._GParamSpec* %27 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %28, i32 0, i32 0
  %29 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %29, i32 0, i32 0
  %30 = load i64, i64* %g_type, align 8
  %call12 = call i8* @g_type_name(i64 %30)
  %31 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %32 = bitcast %struct._GObject* %31 to %struct._GTypeInstance*
  %g_class13 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class13, align 8
  %g_type14 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type14, align 8
  %call15 = call i8* @g_type_name(i64 %34)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i32 217, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 %24, i8* %26, i8* %call12, i8* %call15)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_curves_config_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %self = alloca %struct._GimpCurvesConfig*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_curves_config_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCurvesConfig*
  store %struct._GimpCurvesConfig* %2, %struct._GimpCurvesConfig** %self, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %self, align 8
  %channel = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %5, i32 0, i32 1
  %6 = load i32, i32* %channel, align 4
  call void @g_value_set_enum(%struct._GValue* %4, i32 %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %self, align 8
  %channel3 = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %8, i32 0, i32 1
  %9 = load i32, i32* %channel3, align 4
  %idxprom = zext i32 %9 to i64
  %10 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %self, align 8
  %curve = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %10, i32 0, i32 2
  %arrayidx = getelementptr inbounds [5 x %struct._GimpCurve*], [5 x %struct._GimpCurve*]* %curve, i32 0, i64 %idxprom
  %11 = load %struct._GimpCurve*, %struct._GimpCurve** %arrayidx, align 8
  %12 = bitcast %struct._GimpCurve* %11 to i8*
  call void @g_value_set_object(%struct._GValue* %7, i8* %12)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %13, %struct._GObject** %_glib__object, align 8
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %14, %struct._GParamSpec** %_glib__pspec, align 8
  %15 = load i32, i32* %property_id.addr, align 4
  store i32 %15, i32* %_glib__property_id, align 4
  %16 = load i32, i32* %_glib__property_id, align 4
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %17, i32 0, i32 1
  %18 = load i8*, i8** %name, align 8
  %19 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %20 = bitcast %struct._GParamSpec* %19 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type, align 8
  %call4 = call i8* @g_type_name(i64 %22)
  %23 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %24 = bitcast %struct._GObject* %23 to %struct._GTypeInstance*
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type6 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %25, i32 0, i32 0
  %26 = load i64, i64* %g_type6, align 8
  %call7 = call i8* @g_type_name(i64 %26)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i32 183, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 %16, i8* %18, i8* %call4, i8* %call7)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.2, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_histogram_channel_get_type() #2

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_curve_get_type() #2

declare void @g_object_unref(i8*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare void @g_object_notify(%struct._GObject*, i8*) #1

declare i8* @g_value_get_object(%struct._GValue*) #1

declare i32 @gimp_config_copy(%struct._GimpConfig*, %struct._GimpConfig*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #3 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @g_value_set_object(%struct._GValue*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_curves_config_serialize(%struct._GimpConfig* %config, %struct._GimpConfigWriter* %writer, i8* %data) #3 {
entry:
  %retval = alloca i32, align 4
  %config.addr = alloca %struct._GimpConfig*, align 8
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  %data.addr = alloca i8*, align 8
  %c_config = alloca %struct._GimpCurvesConfig*, align 8
  %channel = alloca i32, align 4
  %old_channel = alloca i32, align 4
  %success = alloca i32, align 4
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_curves_config_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCurvesConfig*
  store %struct._GimpCurvesConfig* %2, %struct._GimpCurvesConfig** %c_config, align 8
  store i32 1, i32* %success, align 4
  %3 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %4 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %call2 = call i32 @gimp_config_serialize_property_by_name(%struct._GimpConfig* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), %struct._GimpConfigWriter* %4)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %c_config, align 8
  %channel3 = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %5, i32 0, i32 1
  %6 = load i32, i32* %channel3, align 4
  store i32 %6, i32* %old_channel, align 4
  store i32 0, i32* %channel, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %channel, align 4
  %cmp = icmp ule i32 %7, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %channel, align 4
  %9 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %c_config, align 8
  %channel4 = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %9, i32 0, i32 1
  store i32 %8, i32* %channel4, align 4
  %10 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %11 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %call5 = call i32 @gimp_config_serialize_property_by_name(%struct._GimpConfig* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), %struct._GimpConfigWriter* %11)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.body
  %12 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %13 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %call7 = call i32 @gimp_config_serialize_property_by_name(%struct._GimpConfig* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), %struct._GimpConfigWriter* %13)
  %tobool8 = icmp ne i32 %call7, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body
  %14 = phi i1 [ false, %for.body ], [ %tobool8, %land.rhs ]
  %land.ext = zext i1 %14 to i32
  store i32 %land.ext, i32* %success, align 4
  %15 = load i32, i32* %success, align 4
  %tobool9 = icmp ne i32 %15, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %land.end
  br label %for.end

if.end.11:                                        ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %16 = load i32, i32* %channel, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %channel, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.10, %for.cond
  %17 = load i32, i32* %old_channel, align 4
  %18 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %c_config, align 8
  %channel12 = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %18, i32 0, i32 1
  store i32 %17, i32* %channel12, align 4
  %19 = load i32, i32* %success, align 4
  store i32 %19, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_curves_config_deserialize(%struct._GimpConfig* %config, %struct._GScanner* %scanner, i32 %nest_level, i8* %data) #3 {
entry:
  %config.addr = alloca %struct._GimpConfig*, align 8
  %scanner.addr = alloca %struct._GScanner*, align 8
  %nest_level.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %c_config = alloca %struct._GimpCurvesConfig*, align 8
  %old_channel = alloca i32, align 4
  %success = alloca i32, align 4
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store i32 %nest_level, i32* %nest_level.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_curves_config_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCurvesConfig*
  store %struct._GimpCurvesConfig* %2, %struct._GimpCurvesConfig** %c_config, align 8
  store i32 1, i32* %success, align 4
  %3 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %c_config, align 8
  %channel = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %3, i32 0, i32 1
  %4 = load i32, i32* %channel, align 4
  store i32 %4, i32* %old_channel, align 4
  %5 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %6 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %7 = load i32, i32* %nest_level.addr, align 4
  %call2 = call i32 @gimp_config_deserialize_properties(%struct._GimpConfig* %5, %struct._GScanner* %6, i32 %7)
  store i32 %call2, i32* %success, align 4
  %8 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %9 = bitcast %struct._GimpConfig* %8 to i8*
  %10 = load i32, i32* %old_channel, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 %10, i8* null)
  %11 = load i32, i32* %success, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_curves_config_equal(%struct._GimpConfig* %a, %struct._GimpConfig* %b) #3 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct._GimpConfig*, align 8
  %b.addr = alloca %struct._GimpConfig*, align 8
  %config_a = alloca %struct._GimpCurvesConfig*, align 8
  %config_b = alloca %struct._GimpCurvesConfig*, align 8
  %channel = alloca i32, align 4
  %curve_a = alloca %struct._GimpCurve*, align 8
  %curve_b = alloca %struct._GimpCurve*, align 8
  store %struct._GimpConfig* %a, %struct._GimpConfig** %a.addr, align 8
  store %struct._GimpConfig* %b, %struct._GimpConfig** %b.addr, align 8
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %a.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_curves_config_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCurvesConfig*
  store %struct._GimpCurvesConfig* %2, %struct._GimpCurvesConfig** %config_a, align 8
  %3 = load %struct._GimpConfig*, %struct._GimpConfig** %b.addr, align 8
  %4 = bitcast %struct._GimpConfig* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_curves_config_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpCurvesConfig*
  store %struct._GimpCurvesConfig* %5, %struct._GimpCurvesConfig** %config_b, align 8
  store i32 0, i32* %channel, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %channel, align 4
  %cmp = icmp ule i32 %6, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %channel, align 4
  %idxprom = zext i32 %7 to i64
  %8 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config_a, align 8
  %curve = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %8, i32 0, i32 2
  %arrayidx = getelementptr inbounds [5 x %struct._GimpCurve*], [5 x %struct._GimpCurve*]* %curve, i32 0, i64 %idxprom
  %9 = load %struct._GimpCurve*, %struct._GimpCurve** %arrayidx, align 8
  store %struct._GimpCurve* %9, %struct._GimpCurve** %curve_a, align 8
  %10 = load i32, i32* %channel, align 4
  %idxprom4 = zext i32 %10 to i64
  %11 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config_b, align 8
  %curve5 = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %11, i32 0, i32 2
  %arrayidx6 = getelementptr inbounds [5 x %struct._GimpCurve*], [5 x %struct._GimpCurve*]* %curve5, i32 0, i64 %idxprom4
  %12 = load %struct._GimpCurve*, %struct._GimpCurve** %arrayidx6, align 8
  store %struct._GimpCurve* %12, %struct._GimpCurve** %curve_b, align 8
  %13 = load %struct._GimpCurve*, %struct._GimpCurve** %curve_a, align 8
  %tobool = icmp ne %struct._GimpCurve* %13, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %14 = load %struct._GimpCurve*, %struct._GimpCurve** %curve_b, align 8
  %tobool7 = icmp ne %struct._GimpCurve* %14, null
  br i1 %tobool7, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %15 = load %struct._GimpCurve*, %struct._GimpCurve** %curve_a, align 8
  %16 = bitcast %struct._GimpCurve* %15 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_config_interface_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call8)
  %17 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpConfig*
  %18 = load %struct._GimpCurve*, %struct._GimpCurve** %curve_b, align 8
  %19 = bitcast %struct._GimpCurve* %18 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_config_interface_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call10)
  %20 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpConfig*
  %call12 = call i32 @gimp_config_is_equal_to(%struct._GimpConfig* %17, %struct._GimpConfig* %20)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end, label %if.then.14

if.then.14:                                       ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.19

if.else:                                          ; preds = %land.lhs.true, %for.body
  %21 = load %struct._GimpCurve*, %struct._GimpCurve** %curve_a, align 8
  %tobool15 = icmp ne %struct._GimpCurve* %21, null
  br i1 %tobool15, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %22 = load %struct._GimpCurve*, %struct._GimpCurve** %curve_b, align 8
  %tobool16 = icmp ne %struct._GimpCurve* %22, null
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %lor.lhs.false, %if.else
  store i32 0, i32* %retval
  br label %return

if.end.18:                                        ; preds = %lor.lhs.false
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %23 = load i32, i32* %channel, align 4
  %inc = add i32 %23, 1
  store i32 %inc, i32* %channel, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.17, %if.then.14
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal void @gimp_curves_config_reset(%struct._GimpConfig* %config) #3 {
entry:
  %config.addr = alloca %struct._GimpConfig*, align 8
  %c_config = alloca %struct._GimpCurvesConfig*, align 8
  %channel = alloca i32, align 4
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_curves_config_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCurvesConfig*
  store %struct._GimpCurvesConfig* %2, %struct._GimpCurvesConfig** %c_config, align 8
  store i32 0, i32* %channel, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %channel, align 4
  %cmp = icmp ule i32 %3, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %channel, align 4
  %5 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %c_config, align 8
  %channel2 = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %5, i32 0, i32 1
  store i32 %4, i32* %channel2, align 4
  %6 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %c_config, align 8
  call void @gimp_curves_config_reset_channel(%struct._GimpCurvesConfig* %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %channel, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %channel, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %9 = bitcast %struct._GimpConfig* %8 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 80)
  %10 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  call void @gimp_config_reset_property(%struct._GObject* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_curves_config_copy(%struct._GimpConfig* %src, %struct._GimpConfig* %dest, i32 %flags) #3 {
entry:
  %src.addr = alloca %struct._GimpConfig*, align 8
  %dest.addr = alloca %struct._GimpConfig*, align 8
  %flags.addr = alloca i32, align 4
  %src_config = alloca %struct._GimpCurvesConfig*, align 8
  %dest_config = alloca %struct._GimpCurvesConfig*, align 8
  %channel = alloca i32, align 4
  store %struct._GimpConfig* %src, %struct._GimpConfig** %src.addr, align 8
  store %struct._GimpConfig* %dest, %struct._GimpConfig** %dest.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %src.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_curves_config_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCurvesConfig*
  store %struct._GimpCurvesConfig* %2, %struct._GimpCurvesConfig** %src_config, align 8
  %3 = load %struct._GimpConfig*, %struct._GimpConfig** %dest.addr, align 8
  %4 = bitcast %struct._GimpConfig* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_curves_config_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpCurvesConfig*
  store %struct._GimpCurvesConfig* %5, %struct._GimpCurvesConfig** %dest_config, align 8
  store i32 0, i32* %channel, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %channel, align 4
  %cmp = icmp ule i32 %6, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %channel, align 4
  %idxprom = zext i32 %7 to i64
  %8 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %src_config, align 8
  %curve = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %8, i32 0, i32 2
  %arrayidx = getelementptr inbounds [5 x %struct._GimpCurve*], [5 x %struct._GimpCurve*]* %curve, i32 0, i64 %idxprom
  %9 = load %struct._GimpCurve*, %struct._GimpCurve** %arrayidx, align 8
  %10 = bitcast %struct._GimpCurve* %9 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_config_interface_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call4)
  %11 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpConfig*
  %12 = load i32, i32* %channel, align 4
  %idxprom6 = zext i32 %12 to i64
  %13 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %dest_config, align 8
  %curve7 = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %13, i32 0, i32 2
  %arrayidx8 = getelementptr inbounds [5 x %struct._GimpCurve*], [5 x %struct._GimpCurve*]* %curve7, i32 0, i64 %idxprom6
  %14 = load %struct._GimpCurve*, %struct._GimpCurve** %arrayidx8, align 8
  %15 = bitcast %struct._GimpCurve* %14 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_config_interface_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call9)
  %16 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpConfig*
  %17 = load i32, i32* %flags.addr, align 4
  %call11 = call i32 @gimp_config_copy(%struct._GimpConfig* %11, %struct._GimpConfig* %16, i32 %17)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %channel, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %channel, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %src_config, align 8
  %channel12 = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %19, i32 0, i32 1
  %20 = load i32, i32* %channel12, align 4
  %21 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %dest_config, align 8
  %channel13 = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %21, i32 0, i32 1
  store i32 %20, i32* %channel13, align 4
  %22 = load %struct._GimpConfig*, %struct._GimpConfig** %dest.addr, align 8
  %23 = bitcast %struct._GimpConfig* %22 to %struct._GTypeInstance*
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 80)
  %24 = bitcast %struct._GTypeInstance* %call14 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0))
  ret i32 1
}

declare i32 @gimp_config_serialize_property_by_name(%struct._GimpConfig*, i8*, %struct._GimpConfigWriter*) #1

declare i32 @gimp_config_deserialize_properties(%struct._GimpConfig*, %struct._GScanner*, i32) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare i32 @gimp_config_is_equal_to(%struct._GimpConfig*, %struct._GimpConfig*) #1

declare void @gimp_config_reset_property(%struct._GObject*, i8*) #1

declare %struct._GimpData* @gimp_curve_new(i8*) #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_curves_config_curve_dirty(%struct._GimpCurve* %curve, %struct._GimpCurvesConfig* %config) #3 {
entry:
  %curve.addr = alloca %struct._GimpCurve*, align 8
  %config.addr = alloca %struct._GimpCurvesConfig*, align 8
  store %struct._GimpCurve* %curve, %struct._GimpCurve** %curve.addr, align 8
  store %struct._GimpCurvesConfig* %config, %struct._GimpCurvesConfig** %config.addr, align 8
  %0 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpCurvesConfig* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0))
  ret void
}

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
