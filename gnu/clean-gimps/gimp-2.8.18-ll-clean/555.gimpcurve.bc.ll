; ModuleID = './app/core/gimpcurve.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpCurveClass = type { %struct._GimpDataClass }
%struct._GimpDataClass = type { %struct._GimpViewableClass, void (%struct._GimpData*)*, i32 (%struct._GimpData*, %struct._GError**)*, i8* (%struct._GimpData*)*, %struct._GimpData* (%struct._GimpData*)* }
%struct._GimpViewableClass = type { %struct._GimpObjectClass, i8*, i8*, void (%struct._GimpViewable*)*, void (%struct._GimpViewable*)*, i32 (%struct._GimpViewable*, i32*, i32*)*, void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, i8* (%struct._GimpViewable*, i8**)*, %struct._GimpContainer* (%struct._GimpViewable*)*, void (%struct._GimpViewable*, i32)*, i32 (%struct._GimpViewable*)* }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._TempBuf = type opaque
%struct._GimpContext = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpContainer = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpCurve = type { %struct._GimpData, i32, i32, %struct._GimpVector2*, i32, double*, i32 }
%struct._GimpVector2 = type { double, double }
%struct._GimpConfigInterface = type { %struct._GTypeInterface, i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)*, i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)*, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GimpConfigWriter*)*, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GScanner*, i32*)*, %struct._GimpConfig* (%struct._GimpConfig*)*, i32 (%struct._GimpConfig*, %struct._GimpConfig*)*, void (%struct._GimpConfig*)*, i32 (%struct._GimpConfig*, %struct._GimpConfig*, i32)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpConfig = type opaque
%struct._GimpConfigWriter = type opaque
%struct._GScanner = type { i8*, i32, i32, i8*, %struct._GData*, %struct._GScannerConfig*, i32, %union._GTokenValue, i32, i32, i32, %union._GTokenValue, i32, i32, %struct._GHashTable*, i32, i8*, i8*, i8*, i32, void (%struct._GScanner*, i8*, i32)* }
%struct._GScannerConfig = type { i8*, i8*, i8*, i8*, i24, i32 }
%union._GTokenValue = type { i8* }
%struct._GHashTable = type opaque
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_curve_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"GimpCurve\00", align 1
@gimp_curve_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpConfigInterface*)* @gimp_curve_config_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_curve_new = private unnamed_addr constant [15 x i8] c"gimp_curve_new\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"*name != '\5C0'\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@gimp_curve_get_standard.standard_curve = internal global %struct._GimpData* null, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"Standard\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"gimp-curve-standard\00", align 1
@__func__.gimp_curve_reset = private unnamed_addr constant [17 x i8] c"gimp_curve_reset\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"GIMP_IS_CURVE (curve)\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"samples\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"points\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"curve-type\00", align 1
@__func__.gimp_curve_set_curve_type = private unnamed_addr constant [26 x i8] c"gimp_curve_set_curve_type\00", align 1
@__func__.gimp_curve_get_curve_type = private unnamed_addr constant [26 x i8] c"gimp_curve_get_curve_type\00", align 1
@__func__.gimp_curve_get_n_points = private unnamed_addr constant [24 x i8] c"gimp_curve_get_n_points\00", align 1
@__func__.gimp_curve_get_n_samples = private unnamed_addr constant [25 x i8] c"gimp_curve_get_n_samples\00", align 1
@__func__.gimp_curve_get_closest_point = private unnamed_addr constant [29 x i8] c"gimp_curve_get_closest_point\00", align 1
@__func__.gimp_curve_set_point = private unnamed_addr constant [21 x i8] c"gimp_curve_set_point\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"point >= 0 && point < curve->n_points\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"x == -1.0 || (x >= 0 && x <= 1.0)\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"y == -1.0 || (y >= 0 && y <= 1.0)\00", align 1
@__func__.gimp_curve_move_point = private unnamed_addr constant [22 x i8] c"gimp_curve_move_point\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"y >= 0 && y <= 1.0\00", align 1
@__func__.gimp_curve_delete_point = private unnamed_addr constant [24 x i8] c"gimp_curve_delete_point\00", align 1
@__func__.gimp_curve_get_point = private unnamed_addr constant [21 x i8] c"gimp_curve_get_point\00", align 1
@__func__.gimp_curve_set_curve = private unnamed_addr constant [21 x i8] c"gimp_curve_set_curve\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"x >= 0 && x <= 1.0\00", align 1
@__func__.gimp_curve_is_identity = private unnamed_addr constant [23 x i8] c"gimp_curve_is_identity\00", align 1
@__func__.gimp_curve_get_uchar = private unnamed_addr constant [21 x i8] c"gimp_curve_get_uchar\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"n_samples == curve->n_samples\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"samples != NULL\00", align 1
@gimp_curve_parent_class = internal global i8* null, align 8
@GimpCurve_private_offset = internal global i32 0, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"FIXME\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"The curve type\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"n-points\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"The number of points\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"point\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"n-samples\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"The number of samples\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"sample\00", align 1
@.str.26 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"gimpcurve.c\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@__func__.gimp_curve_set_n_points = private unnamed_addr constant [24 x i8] c"gimp_curve_set_n_points\00", align 1
@__func__.gimp_curve_set_n_samples = private unnamed_addr constant [25 x i8] c"gimp_curve_set_n_samples\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__func__.gimp_curve_plot = private unnamed_addr constant [16 x i8] c"gimp_curve_plot\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"dx > 0\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c".curve\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_curve_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_curve_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_curve_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_data_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 312, void (i8*, i8*)* bitcast (void (i8*)* @gimp_curve_class_intern_init to void (i8*, i8*)*), i32 72, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpCurve*)* @gimp_curve_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_config_interface_get_type() #6
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_curve_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_curve_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_curve_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_data_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_curve_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_curve_parent_class, align 8
  %1 = load i32, i32* @GimpCurve_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpCurve_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpCurveClass*
  call void @gimp_curve_class_init(%struct._GimpCurveClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_curve_init(%struct._GimpCurve* %curve) #3 {
entry:
  %curve.addr = alloca %struct._GimpCurve*, align 8
  store %struct._GimpCurve* %curve, %struct._GimpCurve** %curve.addr, align 8
  %0 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_points = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %0, i32 0, i32 2
  store i32 0, i32* %n_points, align 4
  %1 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %1, i32 0, i32 3
  store %struct._GimpVector2* null, %struct._GimpVector2** %points, align 8
  %2 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_samples = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %2, i32 0, i32 4
  store i32 0, i32* %n_samples, align 4
  %3 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %samples = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %3, i32 0, i32 5
  store double* null, double** %samples, align 8
  %4 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %identity = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %4, i32 0, i32 6
  store i32 0, i32* %identity, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_curve_config_iface_init(%struct._GimpConfigInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpConfigInterface*, align 8
  store %struct._GimpConfigInterface* %iface, %struct._GimpConfigInterface** %iface.addr, align 8
  %0 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %iface.addr, align 8
  %serialize = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %0, i32 0, i32 1
  store i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)* @gimp_curve_serialize, i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)** %serialize, align 8
  %1 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %iface.addr, align 8
  %deserialize = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %1, i32 0, i32 2
  store i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)* @gimp_curve_deserialize, i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)** %deserialize, align 8
  %2 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %iface.addr, align 8
  %equal = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %2, i32 0, i32 6
  store i32 (%struct._GimpConfig*, %struct._GimpConfig*)* @gimp_curve_equal, i32 (%struct._GimpConfig*, %struct._GimpConfig*)** %equal, align 8
  %3 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %iface.addr, align 8
  %reset = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %3, i32 0, i32 7
  store void (%struct._GimpConfig*)* @_gimp_curve_reset, void (%struct._GimpConfig*)** %reset, align 8
  %4 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %iface.addr, align 8
  %copy = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %4, i32 0, i32 8
  store i32 (%struct._GimpConfig*, %struct._GimpConfig*, i32)* @gimp_curve_copy, i32 (%struct._GimpConfig*, %struct._GimpConfig*, i32)** %copy, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpData* @gimp_curve_new(i8* %name) #3 {
entry:
  %retval = alloca %struct._GimpData*, align 8
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %name.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_curve_new, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpData* null, %struct._GimpData** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8*, i8** %name.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp2 = icmp ne i32 %conv, 0
  br i1 %cmp2, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %do.body.1
  br label %if.end.6

if.else.5:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_curve_new, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpData* null, %struct._GimpData** %retval
  br label %return

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  %call = call i64 @gimp_curve_get_type() #6
  %3 = load i8*, i8** %name.addr, align 8
  %call8 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* %3, i8* null)
  %4 = bitcast i8* %call8 to %struct._GimpData*
  store %struct._GimpData* %4, %struct._GimpData** %retval
  br label %return

return:                                           ; preds = %do.end.7, %if.else.5, %if.else
  %5 = load %struct._GimpData*, %struct._GimpData** %retval
  ret %struct._GimpData* %5
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct._GimpData* @gimp_curve_get_standard() #3 {
entry:
  %0 = load %struct._GimpData*, %struct._GimpData** @gimp_curve_get_standard.standard_curve, align 8
  %tobool = icmp ne %struct._GimpData* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct._GimpData* @gimp_curve_new(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpData* %call, %struct._GimpData** @gimp_curve_get_standard.standard_curve, align 8
  %1 = load %struct._GimpData*, %struct._GimpData** @gimp_curve_get_standard.standard_curve, align 8
  call void @gimp_data_clean(%struct._GimpData* %1)
  %2 = load %struct._GimpData*, %struct._GimpData** @gimp_curve_get_standard.standard_curve, align 8
  call void @gimp_data_make_internal(%struct._GimpData* %2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  %3 = load %struct._GimpData*, %struct._GimpData** @gimp_curve_get_standard.standard_curve, align 8
  %4 = bitcast %struct._GimpData* %3 to i8*
  %call1 = call i8* @g_object_ref(i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpData*, %struct._GimpData** @gimp_curve_get_standard.standard_curve, align 8
  ret %struct._GimpData* %5
}

declare void @gimp_data_clean(%struct._GimpData*) #1

declare void @gimp_data_make_internal(%struct._GimpData*, i8*) #1

declare i8* @g_object_ref(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_curve_reset(%struct._GimpCurve* %curve, i32 %reset_type) #3 {
entry:
  %curve.addr = alloca %struct._GimpCurve*, align 8
  %reset_type.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCurve* %curve, %struct._GimpCurve** %curve.addr, align 8
  store i32 %reset_type, i32* %reset_type.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %1 = bitcast %struct._GimpCurve* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_curve_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_curve_reset, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %14 = bitcast %struct._GimpCurve* %13 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %15)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %16 = load i32, i32* %i, align 4
  %17 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_samples = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %17, i32 0, i32 4
  %18 = load i32, i32* %n_samples, align 4
  %cmp12 = icmp slt i32 %16, %18
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4
  %conv = sitofp i32 %19 to double
  %20 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_samples13 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %20, i32 0, i32 4
  %21 = load i32, i32* %n_samples13, align 4
  %sub = sub nsw i32 %21, 1
  %conv14 = sitofp i32 %sub to double
  %div = fdiv double %conv, %conv14
  %22 = load i32, i32* %i, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %samples = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %23, i32 0, i32 5
  %24 = load double*, double** %samples, align 8
  %arrayidx = getelementptr inbounds double, double* %24, i64 %idxprom
  store double %div, double* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %27 = bitcast %struct._GimpCurve* %26 to %struct._GTypeInstance*
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 80)
  %28 = bitcast %struct._GTypeInstance* %call15 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0))
  %29 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %29, i32 0, i32 3
  %30 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %arrayidx16 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %30, i64 0
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx16, i32 0, i32 0
  store double 0.000000e+00, double* %x, align 8
  %31 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points17 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %31, i32 0, i32 3
  %32 = load %struct._GimpVector2*, %struct._GimpVector2** %points17, align 8
  %arrayidx18 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %32, i64 0
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx18, i32 0, i32 1
  store double 0.000000e+00, double* %y, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.32, %for.end
  %33 = load i32, i32* %i, align 4
  %34 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_points = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %34, i32 0, i32 2
  %35 = load i32, i32* %n_points, align 4
  %sub20 = sub nsw i32 %35, 1
  %cmp21 = icmp slt i32 %33, %sub20
  br i1 %cmp21, label %for.body.23, label %for.end.34

for.body.23:                                      ; preds = %for.cond.19
  %36 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %36 to i64
  %37 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points25 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %37, i32 0, i32 3
  %38 = load %struct._GimpVector2*, %struct._GimpVector2** %points25, align 8
  %arrayidx26 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %38, i64 %idxprom24
  %x27 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx26, i32 0, i32 0
  store double -1.000000e+00, double* %x27, align 8
  %39 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %39 to i64
  %40 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points29 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %40, i32 0, i32 3
  %41 = load %struct._GimpVector2*, %struct._GimpVector2** %points29, align 8
  %arrayidx30 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %41, i64 %idxprom28
  %y31 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx30, i32 0, i32 1
  store double -1.000000e+00, double* %y31, align 8
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.body.23
  %42 = load i32, i32* %i, align 4
  %inc33 = add nsw i32 %42, 1
  store i32 %inc33, i32* %i, align 4
  br label %for.cond.19

for.end.34:                                       ; preds = %for.cond.19
  %43 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_points35 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %43, i32 0, i32 2
  %44 = load i32, i32* %n_points35, align 4
  %sub36 = sub nsw i32 %44, 1
  %idxprom37 = sext i32 %sub36 to i64
  %45 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points38 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %45, i32 0, i32 3
  %46 = load %struct._GimpVector2*, %struct._GimpVector2** %points38, align 8
  %arrayidx39 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %46, i64 %idxprom37
  %x40 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx39, i32 0, i32 0
  store double 1.000000e+00, double* %x40, align 8
  %47 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_points41 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %47, i32 0, i32 2
  %48 = load i32, i32* %n_points41, align 4
  %sub42 = sub nsw i32 %48, 1
  %idxprom43 = sext i32 %sub42 to i64
  %49 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points44 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %49, i32 0, i32 3
  %50 = load %struct._GimpVector2*, %struct._GimpVector2** %points44, align 8
  %arrayidx45 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %50, i64 %idxprom43
  %y46 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx45, i32 0, i32 1
  store double 1.000000e+00, double* %y46, align 8
  %51 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %52 = bitcast %struct._GimpCurve* %51 to %struct._GTypeInstance*
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 80)
  %53 = bitcast %struct._GTypeInstance* %call47 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0))
  %54 = load i32, i32* %reset_type.addr, align 4
  %tobool48 = icmp ne i32 %54, 0
  br i1 %tobool48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %for.end.34
  %55 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %curve_type = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %55, i32 0, i32 1
  store i32 0, i32* %curve_type, align 4
  %56 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %57 = bitcast %struct._GimpCurve* %56 to %struct._GTypeInstance*
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 80)
  %58 = bitcast %struct._GTypeInstance* %call50 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %for.end.34
  %59 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %identity = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %59, i32 0, i32 6
  store i32 1, i32* %identity, align 4
  %60 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %61 = bitcast %struct._GimpCurve* %60 to %struct._GTypeInstance*
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 80)
  %62 = bitcast %struct._GTypeInstance* %call52 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %62)
  %63 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %64 = bitcast %struct._GimpCurve* %63 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_data_get_type() #6
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call53)
  %65 = bitcast %struct._GTypeInstance* %call54 to %struct._GimpData*
  call void @gimp_data_dirty(%struct._GimpData* %65)
  br label %return

return:                                           ; preds = %if.end.51, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_object_freeze_notify(%struct._GObject*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @g_object_notify(%struct._GObject*, i8*) #1

declare void @g_object_thaw_notify(%struct._GObject*) #1

declare void @gimp_data_dirty(%struct._GimpData*) #1

; Function Attrs: nounwind uwtable
define void @gimp_curve_set_curve_type(%struct._GimpCurve* %curve, i32 %curve_type) #3 {
entry:
  %curve.addr = alloca %struct._GimpCurve*, align 8
  %curve_type.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %n_points = alloca i32, align 4
  %i = alloca i32, align 4
  %sample = alloca i32, align 4
  %point = alloca i32, align 4
  store %struct._GimpCurve* %curve, %struct._GimpCurve** %curve.addr, align 8
  store i32 %curve_type, i32* %curve_type.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %1 = bitcast %struct._GimpCurve* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_curve_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_curve_set_curve_type, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.71

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %curve_type11 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %13, i32 0, i32 1
  %14 = load i32, i32* %curve_type11, align 4
  %15 = load i32, i32* %curve_type.addr, align 4
  %cmp12 = icmp ne i32 %14, %15
  br i1 %cmp12, label %if.then.13, label %if.end.71

if.then.13:                                       ; preds = %do.end
  %16 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %17 = bitcast %struct._GimpCurve* %16 to %struct._GTypeInstance*
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 80)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %18)
  %19 = load i32, i32* %curve_type.addr, align 4
  %20 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %curve_type15 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %20, i32 0, i32 1
  store i32 %19, i32* %curve_type15, align 4
  %21 = load i32, i32* %curve_type.addr, align 4
  %cmp16 = icmp eq i32 %21, 0
  br i1 %cmp16, label %if.then.17, label %if.end.66

if.then.17:                                       ; preds = %if.then.13
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.17
  %22 = load i32, i32* %i, align 4
  %23 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_points20 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %23, i32 0, i32 2
  %24 = load i32, i32* %n_points20, align 4
  %cmp21 = icmp slt i32 %22, %24
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %i, align 4
  %idxprom = sext i32 %25 to i64
  %26 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %26, i32 0, i32 3
  %27 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %arrayidx = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %27, i64 %idxprom
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx, i32 0, i32 0
  store double -1.000000e+00, double* %x, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %28 to i64
  %29 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points23 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %29, i32 0, i32 3
  %30 = load %struct._GimpVector2*, %struct._GimpVector2** %points23, align 8
  %arrayidx24 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %30, i64 %idxprom22
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx24, i32 0, i32 1
  store double -1.000000e+00, double* %y, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_points25 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %32, i32 0, i32 2
  %33 = load i32, i32* %n_points25, align 4
  %cmp26 = icmp sgt i32 9, %33
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %34 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_points27 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %34, i32 0, i32 2
  %35 = load i32, i32* %n_points27, align 4
  br label %cond.end.34

cond.false:                                       ; preds = %for.end
  %36 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_points28 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %36, i32 0, i32 2
  %37 = load i32, i32* %n_points28, align 4
  %div = sdiv i32 %37, 2
  %cmp29 = icmp slt i32 9, %div
  br i1 %cmp29, label %cond.true.30, label %cond.false.33

cond.true.30:                                     ; preds = %cond.false
  %38 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_points31 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %38, i32 0, i32 2
  %39 = load i32, i32* %n_points31, align 4
  %div32 = sdiv i32 %39, 2
  br label %cond.end

cond.false.33:                                    ; preds = %cond.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false.33, %cond.true.30
  %cond = phi i32 [ %div32, %cond.true.30 ], [ 9, %cond.false.33 ]
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.end, %cond.true
  %cond35 = phi i32 [ %35, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond35, i32* %n_points, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.62, %cond.end.34
  %40 = load i32, i32* %i, align 4
  %41 = load i32, i32* %n_points, align 4
  %cmp37 = icmp slt i32 %40, %41
  br i1 %cmp37, label %for.body.38, label %for.end.64

for.body.38:                                      ; preds = %for.cond.36
  %42 = load i32, i32* %i, align 4
  %43 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_samples = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %43, i32 0, i32 4
  %44 = load i32, i32* %n_samples, align 4
  %sub = sub nsw i32 %44, 1
  %mul = mul nsw i32 %42, %sub
  %45 = load i32, i32* %n_points, align 4
  %sub40 = sub nsw i32 %45, 1
  %div41 = sdiv i32 %mul, %sub40
  store i32 %div41, i32* %sample, align 4
  %46 = load i32, i32* %i, align 4
  %47 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_points43 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %47, i32 0, i32 2
  %48 = load i32, i32* %n_points43, align 4
  %sub44 = sub nsw i32 %48, 1
  %mul45 = mul nsw i32 %46, %sub44
  %49 = load i32, i32* %n_points, align 4
  %sub46 = sub nsw i32 %49, 1
  %div47 = sdiv i32 %mul45, %sub46
  store i32 %div47, i32* %point, align 4
  %50 = load i32, i32* %sample, align 4
  %conv = sitofp i32 %50 to double
  %51 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_samples48 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %51, i32 0, i32 4
  %52 = load i32, i32* %n_samples48, align 4
  %sub49 = sub nsw i32 %52, 1
  %conv50 = sitofp i32 %sub49 to double
  %div51 = fdiv double %conv, %conv50
  %53 = load i32, i32* %point, align 4
  %idxprom52 = sext i32 %53 to i64
  %54 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points53 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %54, i32 0, i32 3
  %55 = load %struct._GimpVector2*, %struct._GimpVector2** %points53, align 8
  %arrayidx54 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %55, i64 %idxprom52
  %x55 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx54, i32 0, i32 0
  store double %div51, double* %x55, align 8
  %56 = load i32, i32* %sample, align 4
  %idxprom56 = sext i32 %56 to i64
  %57 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %samples = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %57, i32 0, i32 5
  %58 = load double*, double** %samples, align 8
  %arrayidx57 = getelementptr inbounds double, double* %58, i64 %idxprom56
  %59 = load double, double* %arrayidx57, align 8
  %60 = load i32, i32* %point, align 4
  %idxprom58 = sext i32 %60 to i64
  %61 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points59 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %61, i32 0, i32 3
  %62 = load %struct._GimpVector2*, %struct._GimpVector2** %points59, align 8
  %arrayidx60 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %62, i64 %idxprom58
  %y61 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx60, i32 0, i32 1
  store double %59, double* %y61, align 8
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.body.38
  %63 = load i32, i32* %i, align 4
  %inc63 = add nsw i32 %63, 1
  store i32 %inc63, i32* %i, align 4
  br label %for.cond.36

for.end.64:                                       ; preds = %for.cond.36
  %64 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %65 = bitcast %struct._GimpCurve* %64 to %struct._GTypeInstance*
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 80)
  %66 = bitcast %struct._GTypeInstance* %call65 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.66

if.end.66:                                        ; preds = %for.end.64, %if.then.13
  %67 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %68 = bitcast %struct._GimpCurve* %67 to %struct._GTypeInstance*
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 80)
  %69 = bitcast %struct._GTypeInstance* %call67 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0))
  %70 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %71 = bitcast %struct._GimpCurve* %70 to %struct._GTypeInstance*
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 80)
  %72 = bitcast %struct._GTypeInstance* %call68 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %72)
  %73 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %74 = bitcast %struct._GimpCurve* %73 to %struct._GTypeInstance*
  %call69 = call i64 @gimp_data_get_type() #6
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call69)
  %75 = bitcast %struct._GTypeInstance* %call70 to %struct._GimpData*
  call void @gimp_data_dirty(%struct._GimpData* %75)
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.9, %if.end.66, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_curve_get_curve_type(%struct._GimpCurve* %curve) #3 {
entry:
  %retval = alloca i32, align 4
  %curve.addr = alloca %struct._GimpCurve*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCurve* %curve, %struct._GimpCurve** %curve.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %1 = bitcast %struct._GimpCurve* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_curve_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_curve_get_curve_type, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %curve_type = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %13, i32 0, i32 1
  %14 = load i32, i32* %curve_type, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @gimp_curve_get_n_points(%struct._GimpCurve* %curve) #3 {
entry:
  %retval = alloca i32, align 4
  %curve.addr = alloca %struct._GimpCurve*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCurve* %curve, %struct._GimpCurve** %curve.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %1 = bitcast %struct._GimpCurve* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_curve_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_curve_get_n_points, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_points = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %13, i32 0, i32 2
  %14 = load i32, i32* %n_points, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @gimp_curve_get_n_samples(%struct._GimpCurve* %curve) #3 {
entry:
  %retval = alloca i32, align 4
  %curve.addr = alloca %struct._GimpCurve*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCurve* %curve, %struct._GimpCurve** %curve.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %1 = bitcast %struct._GimpCurve* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_curve_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_curve_get_n_samples, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_samples = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %13, i32 0, i32 4
  %14 = load i32, i32* %n_samples, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @gimp_curve_get_closest_point(%struct._GimpCurve* %curve, double %x) #3 {
entry:
  %retval = alloca i32, align 4
  %curve.addr = alloca %struct._GimpCurve*, align 8
  %x.addr = alloca double, align 8
  %closest_point = alloca i32, align 4
  %distance = alloca double, align 8
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCurve* %curve, %struct._GimpCurve** %curve.addr, align 8
  store double %x, double* %x.addr, align 8
  store i32 0, i32* %closest_point, align 4
  store double 0x7FEFFFFFFFFFFFFF, double* %distance, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %1 = bitcast %struct._GimpCurve* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_curve_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_curve_get_closest_point, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %13 = load i32, i32* %i, align 4
  %14 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_points = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %14, i32 0, i32 2
  %15 = load i32, i32* %n_points, align 4
  %cmp11 = icmp slt i32 %13, %15
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %17, i32 0, i32 3
  %18 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %arrayidx = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %18, i64 %idxprom
  %x12 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx, i32 0, i32 0
  %19 = load double, double* %x12, align 8
  %cmp13 = fcmp oge double %19, 0.000000e+00
  br i1 %cmp13, label %land.lhs.true.14, label %if.end.28

land.lhs.true.14:                                 ; preds = %for.body
  %20 = load double, double* %x.addr, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %21 to i64
  %22 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points16 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %22, i32 0, i32 3
  %23 = load %struct._GimpVector2*, %struct._GimpVector2** %points16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %23, i64 %idxprom15
  %x18 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx17, i32 0, i32 0
  %24 = load double, double* %x18, align 8
  %sub = fsub double %20, %24
  %call19 = call double @fabs(double %sub) #6
  %25 = load double, double* %distance, align 8
  %cmp20 = fcmp olt double %call19, %25
  br i1 %cmp20, label %if.then.21, label %if.end.28

if.then.21:                                       ; preds = %land.lhs.true.14
  %26 = load double, double* %x.addr, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %27 to i64
  %28 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points23 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %28, i32 0, i32 3
  %29 = load %struct._GimpVector2*, %struct._GimpVector2** %points23, align 8
  %arrayidx24 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %29, i64 %idxprom22
  %x25 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx24, i32 0, i32 0
  %30 = load double, double* %x25, align 8
  %sub26 = fsub double %26, %30
  %call27 = call double @fabs(double %sub26) #6
  store double %call27, double* %distance, align 8
  %31 = load i32, i32* %i, align 4
  store i32 %31, i32* %closest_point, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.21, %land.lhs.true.14, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %32 = load i32, i32* %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load double, double* %distance, align 8
  %34 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_points29 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %34, i32 0, i32 2
  %35 = load i32, i32* %n_points29, align 4
  %conv = sitofp i32 %35 to double
  %mul = fmul double %conv, 2.000000e+00
  %div = fdiv double 1.000000e+00, %mul
  %cmp30 = fcmp ogt double %33, %div
  br i1 %cmp30, label %if.then.32, label %if.end.38

if.then.32:                                       ; preds = %for.end
  %36 = load double, double* %x.addr, align 8
  %37 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_points33 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %37, i32 0, i32 2
  %38 = load i32, i32* %n_points33, align 4
  %sub34 = sub nsw i32 %38, 1
  %conv35 = sitofp i32 %sub34 to double
  %mul36 = fmul double %36, %conv35
  %add = fadd double %mul36, 5.000000e-01
  %conv37 = fptosi double %add to i32
  store i32 %conv37, i32* %closest_point, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.32, %for.end
  %39 = load i32, i32* %closest_point, align 4
  store i32 %39, i32* %retval
  br label %return

return:                                           ; preds = %if.end.38, %if.else.9
  %40 = load i32, i32* %retval
  ret i32 %40
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: nounwind uwtable
define void @gimp_curve_set_point(%struct._GimpCurve* %curve, i32 %point, double %x, double %y) #3 {
entry:
  %curve.addr = alloca %struct._GimpCurve*, align 8
  %point.addr = alloca i32, align 4
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCurve* %curve, %struct._GimpCurve** %curve.addr, align 8
  store i32 %point, i32* %point.addr, align 4
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %1 = bitcast %struct._GimpCurve* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_curve_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_curve_set_point, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %point.addr, align 4
  %cmp12 = icmp sge i32 %13, 0
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.16

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load i32, i32* %point.addr, align 4
  %15 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_points = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %15, i32 0, i32 2
  %16 = load i32, i32* %n_points, align 4
  %cmp14 = icmp slt i32 %14, %16
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.13
  br label %if.end.17

if.else.16:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_curve_set_point, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %17 = load double, double* %x.addr, align 8
  %cmp20 = fcmp oeq double %17, -1.000000e+00
  br i1 %cmp20, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.19
  %18 = load double, double* %x.addr, align 8
  %cmp21 = fcmp oge double %18, 0.000000e+00
  br i1 %cmp21, label %land.lhs.true.22, label %if.else.25

land.lhs.true.22:                                 ; preds = %lor.lhs.false
  %19 = load double, double* %x.addr, align 8
  %cmp23 = fcmp ole double %19, 1.000000e+00
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %land.lhs.true.22, %do.body.19
  br label %if.end.26

if.else.25:                                       ; preds = %land.lhs.true.22, %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_curve_set_point, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i32 0, i32 0))
  br label %return

if.end.26:                                        ; preds = %if.then.24
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  br label %do.body.28

do.body.28:                                       ; preds = %do.end.27
  %20 = load double, double* %y.addr, align 8
  %cmp29 = fcmp oeq double %20, -1.000000e+00
  br i1 %cmp29, label %if.then.34, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %do.body.28
  %21 = load double, double* %y.addr, align 8
  %cmp31 = fcmp oge double %21, 0.000000e+00
  br i1 %cmp31, label %land.lhs.true.32, label %if.else.35

land.lhs.true.32:                                 ; preds = %lor.lhs.false.30
  %22 = load double, double* %y.addr, align 8
  %cmp33 = fcmp ole double %22, 1.000000e+00
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %land.lhs.true.32, %do.body.28
  br label %if.end.36

if.else.35:                                       ; preds = %land.lhs.true.32, %lor.lhs.false.30
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_curve_set_point, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0))
  br label %return

if.end.36:                                        ; preds = %if.then.34
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  %23 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %curve_type = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %23, i32 0, i32 1
  %24 = load i32, i32* %curve_type, align 4
  %cmp38 = icmp eq i32 %24, 1
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %do.end.37
  br label %return

if.end.40:                                        ; preds = %do.end.37
  %25 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %26 = bitcast %struct._GimpCurve* %25 to %struct._GTypeInstance*
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 80)
  %27 = bitcast %struct._GTypeInstance* %call41 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %27)
  %28 = load double, double* %x.addr, align 8
  %29 = load i32, i32* %point.addr, align 4
  %idxprom = sext i32 %29 to i64
  %30 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %30, i32 0, i32 3
  %31 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %arrayidx = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %31, i64 %idxprom
  %x42 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx, i32 0, i32 0
  store double %28, double* %x42, align 8
  %32 = load double, double* %y.addr, align 8
  %33 = load i32, i32* %point.addr, align 4
  %idxprom43 = sext i32 %33 to i64
  %34 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points44 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %34, i32 0, i32 3
  %35 = load %struct._GimpVector2*, %struct._GimpVector2** %points44, align 8
  %arrayidx45 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %35, i64 %idxprom43
  %y46 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx45, i32 0, i32 1
  store double %32, double* %y46, align 8
  %36 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %37 = bitcast %struct._GimpCurve* %36 to %struct._GTypeInstance*
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 80)
  %38 = bitcast %struct._GTypeInstance* %call47 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0))
  %39 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %40 = bitcast %struct._GimpCurve* %39 to %struct._GTypeInstance*
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 80)
  %41 = bitcast %struct._GTypeInstance* %call48 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %41)
  %42 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %43 = bitcast %struct._GimpCurve* %42 to %struct._GTypeInstance*
  %call49 = call i64 @gimp_data_get_type() #6
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call49)
  %44 = bitcast %struct._GTypeInstance* %call50 to %struct._GimpData*
  call void @gimp_data_dirty(%struct._GimpData* %44)
  br label %return

return:                                           ; preds = %if.end.40, %if.then.39, %if.else.35, %if.else.25, %if.else.16, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_curve_move_point(%struct._GimpCurve* %curve, i32 %point, double %y) #3 {
entry:
  %curve.addr = alloca %struct._GimpCurve*, align 8
  %point.addr = alloca i32, align 4
  %y.addr = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCurve* %curve, %struct._GimpCurve** %curve.addr, align 8
  store i32 %point, i32* %point.addr, align 4
  store double %y, double* %y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %1 = bitcast %struct._GimpCurve* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_curve_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_curve_move_point, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %point.addr, align 4
  %cmp12 = icmp sge i32 %13, 0
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.16

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load i32, i32* %point.addr, align 4
  %15 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_points = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %15, i32 0, i32 2
  %16 = load i32, i32* %n_points, align 4
  %cmp14 = icmp slt i32 %14, %16
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.13
  br label %if.end.17

if.else.16:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_curve_move_point, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %17 = load double, double* %y.addr, align 8
  %cmp20 = fcmp oge double %17, 0.000000e+00
  br i1 %cmp20, label %land.lhs.true.21, label %if.else.24

land.lhs.true.21:                                 ; preds = %do.body.19
  %18 = load double, double* %y.addr, align 8
  %cmp22 = fcmp ole double %18, 1.000000e+00
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %land.lhs.true.21
  br label %if.end.25

if.else.24:                                       ; preds = %land.lhs.true.21, %do.body.19
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_curve_move_point, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0))
  br label %return

if.end.25:                                        ; preds = %if.then.23
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  %19 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %curve_type = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %19, i32 0, i32 1
  %20 = load i32, i32* %curve_type, align 4
  %cmp27 = icmp eq i32 %20, 1
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %do.end.26
  br label %return

if.end.29:                                        ; preds = %do.end.26
  %21 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %22 = bitcast %struct._GimpCurve* %21 to %struct._GTypeInstance*
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call30 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %23)
  %24 = load double, double* %y.addr, align 8
  %25 = load i32, i32* %point.addr, align 4
  %idxprom = sext i32 %25 to i64
  %26 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %26, i32 0, i32 3
  %27 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %arrayidx = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %27, i64 %idxprom
  %y31 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx, i32 0, i32 1
  store double %24, double* %y31, align 8
  %28 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %29 = bitcast %struct._GimpCurve* %28 to %struct._GTypeInstance*
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 80)
  %30 = bitcast %struct._GTypeInstance* %call32 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0))
  %31 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %32 = bitcast %struct._GimpCurve* %31 to %struct._GTypeInstance*
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 80)
  %33 = bitcast %struct._GTypeInstance* %call33 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %33)
  %34 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %35 = bitcast %struct._GimpCurve* %34 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_data_get_type() #6
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call34)
  %36 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpData*
  call void @gimp_data_dirty(%struct._GimpData* %36)
  br label %return

return:                                           ; preds = %if.end.29, %if.then.28, %if.else.24, %if.else.16, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_curve_delete_point(%struct._GimpCurve* %curve, i32 %point) #3 {
entry:
  %curve.addr = alloca %struct._GimpCurve*, align 8
  %point.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCurve* %curve, %struct._GimpCurve** %curve.addr, align 8
  store i32 %point, i32* %point.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %1 = bitcast %struct._GimpCurve* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_curve_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_curve_delete_point, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %point.addr, align 4
  %cmp12 = icmp sge i32 %13, 0
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.16

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load i32, i32* %point.addr, align 4
  %15 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_points = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %15, i32 0, i32 2
  %16 = load i32, i32* %n_points, align 4
  %cmp14 = icmp slt i32 %14, %16
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.13
  br label %if.end.17

if.else.16:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_curve_delete_point, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %17 = load i32, i32* %point.addr, align 4
  %cmp19 = icmp eq i32 %17, 0
  br i1 %cmp19, label %if.then.20, label %if.else.23

if.then.20:                                       ; preds = %do.end.18
  %18 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %18, i32 0, i32 3
  %19 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %arrayidx = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %19, i64 0
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx, i32 0, i32 0
  store double 0.000000e+00, double* %x, align 8
  %20 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points21 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %20, i32 0, i32 3
  %21 = load %struct._GimpVector2*, %struct._GimpVector2** %points21, align 8
  %arrayidx22 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %21, i64 0
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx22, i32 0, i32 1
  store double 0.000000e+00, double* %y, align 8
  br label %if.end.48

if.else.23:                                       ; preds = %do.end.18
  %22 = load i32, i32* %point.addr, align 4
  %23 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_points24 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %23, i32 0, i32 2
  %24 = load i32, i32* %n_points24, align 4
  %sub = sub nsw i32 %24, 1
  %cmp25 = icmp eq i32 %22, %sub
  br i1 %cmp25, label %if.then.26, label %if.else.38

if.then.26:                                       ; preds = %if.else.23
  %25 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_points27 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %25, i32 0, i32 2
  %26 = load i32, i32* %n_points27, align 4
  %sub28 = sub nsw i32 %26, 1
  %idxprom = sext i32 %sub28 to i64
  %27 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points29 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %27, i32 0, i32 3
  %28 = load %struct._GimpVector2*, %struct._GimpVector2** %points29, align 8
  %arrayidx30 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %28, i64 %idxprom
  %x31 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx30, i32 0, i32 0
  store double 1.000000e+00, double* %x31, align 8
  %29 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_points32 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %29, i32 0, i32 2
  %30 = load i32, i32* %n_points32, align 4
  %sub33 = sub nsw i32 %30, 1
  %idxprom34 = sext i32 %sub33 to i64
  %31 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points35 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %31, i32 0, i32 3
  %32 = load %struct._GimpVector2*, %struct._GimpVector2** %points35, align 8
  %arrayidx36 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %32, i64 %idxprom34
  %y37 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx36, i32 0, i32 1
  store double 1.000000e+00, double* %y37, align 8
  br label %if.end.47

if.else.38:                                       ; preds = %if.else.23
  %33 = load i32, i32* %point.addr, align 4
  %idxprom39 = sext i32 %33 to i64
  %34 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points40 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %34, i32 0, i32 3
  %35 = load %struct._GimpVector2*, %struct._GimpVector2** %points40, align 8
  %arrayidx41 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %35, i64 %idxprom39
  %x42 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx41, i32 0, i32 0
  store double -1.000000e+00, double* %x42, align 8
  %36 = load i32, i32* %point.addr, align 4
  %idxprom43 = sext i32 %36 to i64
  %37 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points44 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %37, i32 0, i32 3
  %38 = load %struct._GimpVector2*, %struct._GimpVector2** %points44, align 8
  %arrayidx45 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %38, i64 %idxprom43
  %y46 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx45, i32 0, i32 1
  store double -1.000000e+00, double* %y46, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.38, %if.then.26
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.20
  %39 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %40 = bitcast %struct._GimpCurve* %39 to %struct._GTypeInstance*
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 80)
  %41 = bitcast %struct._GTypeInstance* %call49 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0))
  %42 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %43 = bitcast %struct._GimpCurve* %42 to %struct._GTypeInstance*
  %call50 = call i64 @gimp_data_get_type() #6
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call50)
  %44 = bitcast %struct._GTypeInstance* %call51 to %struct._GimpData*
  call void @gimp_data_dirty(%struct._GimpData* %44)
  br label %return

return:                                           ; preds = %if.end.48, %if.else.16, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_curve_get_point(%struct._GimpCurve* %curve, i32 %point, double* %x, double* %y) #3 {
entry:
  %curve.addr = alloca %struct._GimpCurve*, align 8
  %point.addr = alloca i32, align 4
  %x.addr = alloca double*, align 8
  %y.addr = alloca double*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCurve* %curve, %struct._GimpCurve** %curve.addr, align 8
  store i32 %point, i32* %point.addr, align 4
  store double* %x, double** %x.addr, align 8
  store double* %y, double** %y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %1 = bitcast %struct._GimpCurve* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_curve_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_curve_get_point, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.38

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %point.addr, align 4
  %cmp12 = icmp sge i32 %13, 0
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.16

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load i32, i32* %point.addr, align 4
  %15 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_points = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %15, i32 0, i32 2
  %16 = load i32, i32* %n_points, align 4
  %cmp14 = icmp slt i32 %14, %16
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.13
  br label %if.end.17

if.else.16:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_curve_get_point, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.38

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %17 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %curve_type = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %17, i32 0, i32 1
  %18 = load i32, i32* %curve_type, align 4
  %cmp19 = icmp eq i32 %18, 1
  br i1 %cmp19, label %if.then.20, label %if.end.27

if.then.20:                                       ; preds = %do.end.18
  %19 = load double*, double** %x.addr, align 8
  %tobool21 = icmp ne double* %19, null
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.20
  %20 = load double*, double** %x.addr, align 8
  store double -1.000000e+00, double* %20, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.then.20
  %21 = load double*, double** %y.addr, align 8
  %tobool24 = icmp ne double* %21, null
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.23
  %22 = load double*, double** %y.addr, align 8
  store double -1.000000e+00, double* %22, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end.23
  br label %if.end.38

if.end.27:                                        ; preds = %do.end.18
  %23 = load double*, double** %x.addr, align 8
  %tobool28 = icmp ne double* %23, null
  br i1 %tobool28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.end.27
  %24 = load i32, i32* %point.addr, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %25, i32 0, i32 3
  %26 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %arrayidx = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %26, i64 %idxprom
  %x30 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx, i32 0, i32 0
  %27 = load double, double* %x30, align 8
  %28 = load double*, double** %x.addr, align 8
  store double %27, double* %28, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %if.end.27
  %29 = load double*, double** %y.addr, align 8
  %tobool32 = icmp ne double* %29, null
  br i1 %tobool32, label %if.then.33, label %if.end.38

if.then.33:                                       ; preds = %if.end.31
  %30 = load i32, i32* %point.addr, align 4
  %idxprom34 = sext i32 %30 to i64
  %31 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points35 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %31, i32 0, i32 3
  %32 = load %struct._GimpVector2*, %struct._GimpVector2** %points35, align 8
  %arrayidx36 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %32, i64 %idxprom34
  %y37 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx36, i32 0, i32 1
  %33 = load double, double* %y37, align 8
  %34 = load double*, double** %y.addr, align 8
  store double %33, double* %34, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.9, %if.else.16, %if.end.26, %if.then.33, %if.end.31
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_curve_set_curve(%struct._GimpCurve* %curve, double %x, double %y) #3 {
entry:
  %curve.addr = alloca %struct._GimpCurve*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCurve* %curve, %struct._GimpCurve** %curve.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %1 = bitcast %struct._GimpCurve* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_curve_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_curve_set_curve, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load double, double* %x.addr, align 8
  %cmp12 = fcmp oge double %13, 0.000000e+00
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.16

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load double, double* %x.addr, align 8
  %cmp14 = fcmp ole double %14, 1.000000e+00
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.13
  br label %if.end.17

if.else.16:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_curve_set_curve, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0))
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %15 = load double, double* %y.addr, align 8
  %cmp20 = fcmp oge double %15, 0.000000e+00
  br i1 %cmp20, label %land.lhs.true.21, label %if.else.24

land.lhs.true.21:                                 ; preds = %do.body.19
  %16 = load double, double* %y.addr, align 8
  %cmp22 = fcmp ole double %16, 1.000000e+00
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %land.lhs.true.21
  br label %if.end.25

if.else.24:                                       ; preds = %land.lhs.true.21, %do.body.19
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_curve_set_curve, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0))
  br label %return

if.end.25:                                        ; preds = %if.then.23
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  %17 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %curve_type = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %17, i32 0, i32 1
  %18 = load i32, i32* %curve_type, align 4
  %cmp27 = icmp eq i32 %18, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %do.end.26
  br label %return

if.end.29:                                        ; preds = %do.end.26
  %19 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %20 = bitcast %struct._GimpCurve* %19 to %struct._GTypeInstance*
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 80)
  %21 = bitcast %struct._GTypeInstance* %call30 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %21)
  %22 = load double, double* %y.addr, align 8
  %23 = load double, double* %x.addr, align 8
  %24 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_samples = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %24, i32 0, i32 4
  %25 = load i32, i32* %n_samples, align 4
  %sub = sub nsw i32 %25, 1
  %conv = sitofp i32 %sub to double
  %mul = fmul double %23, %conv
  %add = fadd double %mul, 5.000000e-01
  %conv31 = fptosi double %add to i32
  %idxprom = sext i32 %conv31 to i64
  %26 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %samples = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %26, i32 0, i32 5
  %27 = load double*, double** %samples, align 8
  %arrayidx = getelementptr inbounds double, double* %27, i64 %idxprom
  store double %22, double* %arrayidx, align 8
  %28 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %29 = bitcast %struct._GimpCurve* %28 to %struct._GTypeInstance*
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 80)
  %30 = bitcast %struct._GTypeInstance* %call32 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0))
  %31 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %32 = bitcast %struct._GimpCurve* %31 to %struct._GTypeInstance*
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 80)
  %33 = bitcast %struct._GTypeInstance* %call33 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %33)
  %34 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %35 = bitcast %struct._GimpCurve* %34 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_data_get_type() #6
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call34)
  %36 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpData*
  call void @gimp_data_dirty(%struct._GimpData* %36)
  br label %return

return:                                           ; preds = %if.end.29, %if.then.28, %if.else.24, %if.else.16, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_curve_is_identity(%struct._GimpCurve* %curve) #3 {
entry:
  %retval = alloca i32, align 4
  %curve.addr = alloca %struct._GimpCurve*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCurve* %curve, %struct._GimpCurve** %curve.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %1 = bitcast %struct._GimpCurve* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_curve_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_curve_is_identity, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %identity = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %13, i32 0, i32 6
  %14 = load i32, i32* %identity, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define void @gimp_curve_get_uchar(%struct._GimpCurve* %curve, i32 %n_samples, i8* %samples) #3 {
entry:
  %curve.addr = alloca %struct._GimpCurve*, align 8
  %n_samples.addr = alloca i32, align 4
  %samples.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCurve* %curve, %struct._GimpCurve** %curve.addr, align 8
  store i32 %n_samples, i32* %n_samples.addr, align 4
  store i8* %samples, i8** %samples.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %1 = bitcast %struct._GimpCurve* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_curve_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_curve_get_uchar, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0))
  br label %for.end

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %n_samples.addr, align 4
  %14 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_samples12 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %14, i32 0, i32 4
  %15 = load i32, i32* %n_samples12, align 4
  %cmp13 = icmp eq i32 %13, %15
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_curve_get_uchar, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i32 0, i32 0))
  br label %for.end

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %16 = load i8*, i8** %samples.addr, align 8
  %cmp19 = icmp ne i8* %16, null
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.18
  br label %if.end.22

if.else.21:                                       ; preds = %do.body.18
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_curve_get_uchar, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0))
  br label %for.end

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.23
  %17 = load i32, i32* %i, align 4
  %18 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_samples24 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %18, i32 0, i32 4
  %19 = load i32, i32* %n_samples24, align 4
  %cmp25 = icmp slt i32 %17, %19
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %i, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %samples26 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %21, i32 0, i32 5
  %22 = load double*, double** %samples26, align 8
  %arrayidx = getelementptr inbounds double, double* %22, i64 %idxprom
  %23 = load double, double* %arrayidx, align 8
  %mul = fmul double %23, 2.559990e+02
  %conv = fptoui double %mul to i8
  %24 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %24 to i64
  %25 = load i8*, i8** %samples.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %25, i64 %idxprom27
  store i8 %conv, i8* %arrayidx28, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else.9, %if.else.15, %if.else.21, %for.cond
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_curve_class_init(%struct._GimpCurveClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpCurveClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  %viewable_class = alloca %struct._GimpViewableClass*, align 8
  %data_class = alloca %struct._GimpDataClass*, align 8
  %array_spec = alloca %struct._GParamSpec*, align 8
  store %struct._GimpCurveClass* %klass, %struct._GimpCurveClass** %klass.addr, align 8
  %0 = load %struct._GimpCurveClass*, %struct._GimpCurveClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpCurveClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpCurveClass*, %struct._GimpCurveClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpCurveClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GimpCurveClass*, %struct._GimpCurveClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpCurveClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_viewable_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpViewableClass*
  store %struct._GimpViewableClass* %8, %struct._GimpViewableClass** %viewable_class, align 8
  %9 = load %struct._GimpCurveClass*, %struct._GimpCurveClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpCurveClass* %9 to %struct._GTypeClass*
  %call5 = call i64 @gimp_data_get_type() #6
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 %call5)
  %11 = bitcast %struct._GTypeClass* %call6 to %struct._GimpDataClass*
  store %struct._GimpDataClass* %11, %struct._GimpDataClass** %data_class, align 8
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_curve_finalize, void (%struct._GObject*)** %finalize, align 8
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %13, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_curve_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %14, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_curve_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %15 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %15, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_curve_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %16 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %default_stock_id = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %16, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8** %default_stock_id, align 8
  %17 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %get_preview_size = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %17, i32 0, i32 6
  store void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)* @gimp_curve_get_preview_size, void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)** %get_preview_size, align 8
  %18 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %get_popup_size = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %18, i32 0, i32 7
  store i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)* @gimp_curve_get_popup_size, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)** %get_popup_size, align 8
  %19 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %get_new_preview = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %19, i32 0, i32 9
  store %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)* @gimp_curve_get_new_preview, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)** %get_new_preview, align 8
  %20 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %get_description = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %20, i32 0, i32 12
  store i8* (%struct._GimpViewable*, i8**)* @gimp_curve_get_description, i8* (%struct._GimpViewable*, i8**)** %get_description, align 8
  %21 = load %struct._GimpDataClass*, %struct._GimpDataClass** %data_class, align 8
  %dirty = getelementptr inbounds %struct._GimpDataClass, %struct._GimpDataClass* %21, i32 0, i32 1
  store void (%struct._GimpData*)* @gimp_curve_dirty, void (%struct._GimpData*)** %dirty, align 8
  %22 = load %struct._GimpDataClass*, %struct._GimpDataClass** %data_class, align 8
  %save = getelementptr inbounds %struct._GimpDataClass, %struct._GimpDataClass* %22, i32 0, i32 2
  store i32 (%struct._GimpData*, %struct._GError**)* @gimp_curve_save, i32 (%struct._GimpData*, %struct._GError**)** %save, align 8
  %23 = load %struct._GimpDataClass*, %struct._GimpDataClass** %data_class, align 8
  %get_extension = getelementptr inbounds %struct._GimpDataClass, %struct._GimpDataClass* %23, i32 0, i32 3
  store i8* (%struct._GimpData*)* @gimp_curve_get_extension, i8* (%struct._GimpData*)** %get_extension, align 8
  %24 = load %struct._GimpDataClass*, %struct._GimpDataClass** %data_class, align 8
  %duplicate = getelementptr inbounds %struct._GimpDataClass, %struct._GimpDataClass* %24, i32 0, i32 4
  store %struct._GimpData* (%struct._GimpData*)* @gimp_curve_duplicate, %struct._GimpData* (%struct._GimpData*)** %duplicate, align 8
  %25 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call i64 @gimp_curve_type_get_type() #6
  %call8 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i64 %call7, i32 0, i32 263)
  call void @g_object_class_install_property(%struct._GObjectClass* %25, i32 1, %struct._GParamSpec* %call8)
  %26 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call9 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i32 0, i32 0), i32 17, i32 17, i32 17, i32 263)
  call void @g_object_class_install_property(%struct._GObjectClass* %26, i32 2, %struct._GParamSpec* %call9)
  %call10 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i8* null, i8* null, double -1.000000e+00, double 1.000000e+00, double 0.000000e+00, i32 227)
  store %struct._GParamSpec* %call10, %struct._GParamSpec** %array_spec, align 8
  %27 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %28 = load %struct._GParamSpec*, %struct._GParamSpec** %array_spec, align 8
  %call11 = call %struct._GParamSpec* @g_param_spec_value_array(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null, %struct._GParamSpec* %28, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %27, i32 3, %struct._GParamSpec* %call11)
  %29 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call12 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0), i32 256, i32 256, i32 256, i32 263)
  call void @g_object_class_install_property(%struct._GObjectClass* %29, i32 4, %struct._GParamSpec* %call12)
  %call13 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i8* null, i8* null, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, i32 227)
  store %struct._GParamSpec* %call13, %struct._GParamSpec** %array_spec, align 8
  %30 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %31 = load %struct._GParamSpec*, %struct._GParamSpec** %array_spec, align 8
  %call14 = call %struct._GParamSpec* @g_param_spec_value_array(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null, %struct._GParamSpec* %31, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %30, i32 5, %struct._GParamSpec* %call14)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_curve_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %curve = alloca %struct._GimpCurve*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_curve_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCurve*
  store %struct._GimpCurve* %2, %struct._GimpCurve** %curve, align 8
  %3 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %points = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %3, i32 0, i32 3
  %4 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %tobool = icmp ne %struct._GimpVector2* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %points2 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %5, i32 0, i32 3
  %6 = load %struct._GimpVector2*, %struct._GimpVector2** %points2, align 8
  %7 = bitcast %struct._GimpVector2* %6 to i8*
  call void @g_free(i8* %7)
  %8 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %points3 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %8, i32 0, i32 3
  store %struct._GimpVector2* null, %struct._GimpVector2** %points3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %samples = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %9, i32 0, i32 5
  %10 = load double*, double** %samples, align 8
  %tobool4 = icmp ne double* %10, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %11 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %samples6 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %11, i32 0, i32 5
  %12 = load double*, double** %samples6, align 8
  %13 = bitcast double* %12 to i8*
  call void @g_free(i8* %13)
  %14 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %samples7 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %14, i32 0, i32 5
  store double* null, double** %samples7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %15 = load i8*, i8** @gimp_curve_parent_class, align 8
  %16 = bitcast i8* %15 to %struct._GTypeClass*
  %call9 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %16, i64 80)
  %17 = bitcast %struct._GTypeClass* %call9 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %17, i32 0, i32 6
  %18 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %19 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %18(%struct._GObject* %19)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_curve_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %curve = alloca %struct._GimpCurve*, align 8
  %array = alloca %struct._GValueArray*, align 8
  %i = alloca i32, align 4
  %x = alloca %struct._GValue*, align 8
  %y = alloca %struct._GValue*, align 8
  %array22 = alloca %struct._GValueArray*, align 8
  %i24 = alloca i32, align 4
  %v = alloca %struct._GValue*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_curve_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCurve*
  store %struct._GimpCurve* %2, %struct._GimpCurve** %curve, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.19
    i32 5, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %5 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_enum(%struct._GValue* %5)
  call void @gimp_curve_set_curve_type(%struct._GimpCurve* %4, i32 %call2)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %6 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i32 @g_value_get_int(%struct._GValue* %7)
  call void @gimp_curve_set_n_points(%struct._GimpCurve* %6, i32 %call4)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i8* @g_value_get_boxed(%struct._GValue* %8)
  %9 = bitcast i8* %call6 to %struct._GValueArray*
  store %struct._GValueArray* %9, %struct._GValueArray** %array, align 8
  %10 = load %struct._GValueArray*, %struct._GValueArray** %array, align 8
  %tobool = icmp ne %struct._GValueArray* %10, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb.5
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb.5
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, i32* %i, align 4
  %12 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %n_points = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %12, i32 0, i32 2
  %13 = load i32, i32* %n_points, align 4
  %cmp = icmp slt i32 %11, %13
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %14, 2
  %15 = load %struct._GValueArray*, %struct._GValueArray** %array, align 8
  %n_values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %15, i32 0, i32 0
  %16 = load i32, i32* %n_values, align 4
  %cmp7 = icmp ult i32 %mul, %16
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %17 = phi i1 [ false, %for.cond ], [ %cmp7, %land.rhs ]
  br i1 %17, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %18 = load %struct._GValueArray*, %struct._GValueArray** %array, align 8
  %19 = load i32, i32* %i, align 4
  %mul8 = mul nsw i32 %19, 2
  %call9 = call %struct._GValue* @g_value_array_get_nth(%struct._GValueArray* %18, i32 %mul8)
  store %struct._GValue* %call9, %struct._GValue** %x, align 8
  %20 = load %struct._GValueArray*, %struct._GValueArray** %array, align 8
  %21 = load i32, i32* %i, align 4
  %mul10 = mul nsw i32 %21, 2
  %add = add nsw i32 %mul10, 1
  %call11 = call %struct._GValue* @g_value_array_get_nth(%struct._GValueArray* %20, i32 %add)
  store %struct._GValue* %call11, %struct._GValue** %y, align 8
  %22 = load %struct._GValue*, %struct._GValue** %x, align 8
  %call12 = call double @g_value_get_double(%struct._GValue* %22)
  %23 = load i32, i32* %i, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %points = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %24, i32 0, i32 3
  %25 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %arrayidx = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %25, i64 %idxprom
  %x13 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx, i32 0, i32 0
  store double %call12, double* %x13, align 8
  %26 = load %struct._GValue*, %struct._GValue** %y, align 8
  %call14 = call double @g_value_get_double(%struct._GValue* %26)
  %27 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %27 to i64
  %28 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %points16 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %28, i32 0, i32 3
  %29 = load %struct._GimpVector2*, %struct._GimpVector2** %points16, align 8
  %arrayidx17 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %29, i64 %idxprom15
  %y18 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx17, i32 0, i32 1
  store double %call14, double* %y18, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry
  %31 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %32 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call20 = call i32 @g_value_get_int(%struct._GValue* %32)
  call void @gimp_curve_set_n_samples(%struct._GimpCurve* %31, i32 %call20)
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %33 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call23 = call i8* @g_value_get_boxed(%struct._GValue* %33)
  %34 = bitcast i8* %call23 to %struct._GValueArray*
  store %struct._GValueArray* %34, %struct._GValueArray** %array22, align 8
  %35 = load %struct._GValueArray*, %struct._GValueArray** %array22, align 8
  %tobool25 = icmp ne %struct._GValueArray* %35, null
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %sw.bb.21
  br label %sw.epilog

if.end.27:                                        ; preds = %sw.bb.21
  store i32 0, i32* %i24, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.39, %if.end.27
  %36 = load i32, i32* %i24, align 4
  %37 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %n_samples = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %37, i32 0, i32 4
  %38 = load i32, i32* %n_samples, align 4
  %cmp29 = icmp slt i32 %36, %38
  br i1 %cmp29, label %land.rhs.30, label %land.end.33

land.rhs.30:                                      ; preds = %for.cond.28
  %39 = load i32, i32* %i24, align 4
  %40 = load %struct._GValueArray*, %struct._GValueArray** %array22, align 8
  %n_values31 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %40, i32 0, i32 0
  %41 = load i32, i32* %n_values31, align 4
  %cmp32 = icmp ult i32 %39, %41
  br label %land.end.33

land.end.33:                                      ; preds = %land.rhs.30, %for.cond.28
  %42 = phi i1 [ false, %for.cond.28 ], [ %cmp32, %land.rhs.30 ]
  br i1 %42, label %for.body.34, label %for.end.41

for.body.34:                                      ; preds = %land.end.33
  %43 = load %struct._GValueArray*, %struct._GValueArray** %array22, align 8
  %44 = load i32, i32* %i24, align 4
  %call35 = call %struct._GValue* @g_value_array_get_nth(%struct._GValueArray* %43, i32 %44)
  store %struct._GValue* %call35, %struct._GValue** %v, align 8
  %45 = load %struct._GValue*, %struct._GValue** %v, align 8
  %call36 = call double @g_value_get_double(%struct._GValue* %45)
  %46 = load i32, i32* %i24, align 4
  %idxprom37 = sext i32 %46 to i64
  %47 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %samples = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %47, i32 0, i32 5
  %48 = load double*, double** %samples, align 8
  %arrayidx38 = getelementptr inbounds double, double* %48, i64 %idxprom37
  store double %call36, double* %arrayidx38, align 8
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.body.34
  %49 = load i32, i32* %i24, align 4
  %inc40 = add nsw i32 %49, 1
  store i32 %inc40, i32* %i24, align 4
  br label %for.cond.28

for.end.41:                                       ; preds = %land.end.33
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %50 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %50, %struct._GObject** %_glib__object, align 8
  %51 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %51, %struct._GParamSpec** %_glib__pspec, align 8
  %52 = load i32, i32* %property_id.addr, align 4
  store i32 %52, i32* %_glib__property_id, align 4
  %53 = load i32, i32* %_glib__property_id, align 4
  %54 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %54, i32 0, i32 1
  %55 = load i8*, i8** %name, align 8
  %56 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %57 = bitcast %struct._GParamSpec* %56 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %57, i32 0, i32 0
  %58 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %58, i32 0, i32 0
  %59 = load i64, i64* %g_type, align 8
  %call42 = call i8* @g_type_name(i64 %59)
  %60 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %61 = bitcast %struct._GObject* %60 to %struct._GTypeInstance*
  %g_class43 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %61, i32 0, i32 0
  %62 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class43, align 8
  %g_type44 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %62, i32 0, i32 0
  %63 = load i64, i64* %g_type44, align 8
  %call45 = call i8* @g_type_name(i64 %63)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), i32 282, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 %53, i8* %55, i8* %call42, i8* %call45)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %for.end.41, %if.then.26, %sw.bb.19, %for.end, %if.then, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_curve_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %curve = alloca %struct._GimpCurve*, align 8
  %array = alloca %struct._GValueArray*, align 8
  %v = alloca %struct._GValue, align 8
  %i = alloca i32, align 4
  %array15 = alloca %struct._GValueArray*, align 8
  %v18 = alloca %struct._GValue, align 8
  %i19 = alloca i32, align 4
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_curve_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCurve*
  store %struct._GimpCurve* %2, %struct._GimpCurve** %curve, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.13
    i32 5, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %curve_type = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %5, i32 0, i32 1
  %6 = load i32, i32* %curve_type, align 4
  call void @g_value_set_enum(%struct._GValue* %4, i32 %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %n_points = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %8, i32 0, i32 2
  %9 = load i32, i32* %n_points, align 4
  call void @g_value_set_int(%struct._GValue* %7, i32 %9)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %n_points4 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %10, i32 0, i32 2
  %11 = load i32, i32* %n_points4, align 4
  %mul = mul nsw i32 %11, 2
  %call5 = call %struct._GValueArray* @g_value_array_new(i32 %mul)
  store %struct._GValueArray* %call5, %struct._GValueArray** %array, align 8
  %12 = bitcast %struct._GValue* %v to i8*
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 24, i32 8, i1 false)
  %call6 = call %struct._GValue* @g_value_init(%struct._GValue* %v, i64 60)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.3
  %13 = load i32, i32* %i, align 4
  %14 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %n_points7 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %14, i32 0, i32 2
  %15 = load i32, i32* %n_points7, align 4
  %cmp = icmp slt i32 %13, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %points = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %17, i32 0, i32 3
  %18 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %arrayidx = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %18, i64 %idxprom
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx, i32 0, i32 0
  %19 = load double, double* %x, align 8
  call void @g_value_set_double(%struct._GValue* %v, double %19)
  %20 = load %struct._GValueArray*, %struct._GValueArray** %array, align 8
  %call8 = call %struct._GValueArray* @g_value_array_append(%struct._GValueArray* %20, %struct._GValue* %v)
  %21 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %21 to i64
  %22 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %points10 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %22, i32 0, i32 3
  %23 = load %struct._GimpVector2*, %struct._GimpVector2** %points10, align 8
  %arrayidx11 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %23, i64 %idxprom9
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx11, i32 0, i32 1
  %24 = load double, double* %y, align 8
  call void @g_value_set_double(%struct._GValue* %v, double %24)
  %25 = load %struct._GValueArray*, %struct._GValueArray** %array, align 8
  %call12 = call %struct._GValueArray* @g_value_array_append(%struct._GValueArray* %25, %struct._GValue* %v)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @g_value_unset(%struct._GValue* %v)
  %27 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %28 = load %struct._GValueArray*, %struct._GValueArray** %array, align 8
  %29 = bitcast %struct._GValueArray* %28 to i8*
  call void @g_value_take_boxed(%struct._GValue* %27, i8* %29)
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %30 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %31 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %n_samples = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %31, i32 0, i32 4
  %32 = load i32, i32* %n_samples, align 4
  call void @g_value_set_int(%struct._GValue* %30, i32 %32)
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %33 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %n_samples16 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %33, i32 0, i32 4
  %34 = load i32, i32* %n_samples16, align 4
  %call17 = call %struct._GValueArray* @g_value_array_new(i32 %34)
  store %struct._GValueArray* %call17, %struct._GValueArray** %array15, align 8
  %35 = bitcast %struct._GValue* %v18 to i8*
  call void @llvm.memset.p0i8.i64(i8* %35, i8 0, i64 24, i32 8, i1 false)
  %call20 = call %struct._GValue* @g_value_init(%struct._GValue* %v18, i64 60)
  store i32 0, i32* %i19, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.28, %sw.bb.14
  %36 = load i32, i32* %i19, align 4
  %37 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %n_samples22 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %37, i32 0, i32 4
  %38 = load i32, i32* %n_samples22, align 4
  %cmp23 = icmp slt i32 %36, %38
  br i1 %cmp23, label %for.body.24, label %for.end.30

for.body.24:                                      ; preds = %for.cond.21
  %39 = load i32, i32* %i19, align 4
  %idxprom25 = sext i32 %39 to i64
  %40 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %samples = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %40, i32 0, i32 5
  %41 = load double*, double** %samples, align 8
  %arrayidx26 = getelementptr inbounds double, double* %41, i64 %idxprom25
  %42 = load double, double* %arrayidx26, align 8
  call void @g_value_set_double(%struct._GValue* %v18, double %42)
  %43 = load %struct._GValueArray*, %struct._GValueArray** %array15, align 8
  %call27 = call %struct._GValueArray* @g_value_array_append(%struct._GValueArray* %43, %struct._GValue* %v18)
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.body.24
  %44 = load i32, i32* %i19, align 4
  %inc29 = add nsw i32 %44, 1
  store i32 %inc29, i32* %i19, align 4
  br label %for.cond.21

for.end.30:                                       ; preds = %for.cond.21
  call void @g_value_unset(%struct._GValue* %v18)
  %45 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %46 = load %struct._GValueArray*, %struct._GValueArray** %array15, align 8
  %47 = bitcast %struct._GValueArray* %46 to i8*
  call void @g_value_take_boxed(%struct._GValue* %45, i8* %47)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %48 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %48, %struct._GObject** %_glib__object, align 8
  %49 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %49, %struct._GParamSpec** %_glib__pspec, align 8
  %50 = load i32, i32* %property_id.addr, align 4
  store i32 %50, i32* %_glib__property_id, align 4
  %51 = load i32, i32* %_glib__property_id, align 4
  %52 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %52, i32 0, i32 1
  %53 = load i8*, i8** %name, align 8
  %54 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %55 = bitcast %struct._GParamSpec* %54 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %55, i32 0, i32 0
  %56 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %56, i32 0, i32 0
  %57 = load i64, i64* %g_type, align 8
  %call31 = call i8* @g_type_name(i64 %57)
  %58 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %59 = bitcast %struct._GObject* %58 to %struct._GTypeInstance*
  %g_class32 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %59, i32 0, i32 0
  %60 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class32, align 8
  %g_type33 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %60, i32 0, i32 0
  %61 = load i64, i64* %g_type33, align 8
  %call34 = call i8* @g_type_name(i64 %61)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), i32 353, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 %51, i8* %53, i8* %call31, i8* %call34)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %for.end.30, %sw.bb.13, %for.end, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_curve_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %curve = alloca %struct._GimpCurve*, align 8
  %memsize = alloca i64, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_curve_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCurve*
  store %struct._GimpCurve* %2, %struct._GimpCurve** %curve, align 8
  store i64 0, i64* %memsize, align 8
  %3 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %n_points = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %3, i32 0, i32 2
  %4 = load i32, i32* %n_points, align 4
  %conv = sext i32 %4 to i64
  %mul = mul i64 %conv, 16
  %5 = load i64, i64* %memsize, align 8
  %add = add i64 %5, %mul
  store i64 %add, i64* %memsize, align 8
  %6 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %n_samples = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %6, i32 0, i32 4
  %7 = load i32, i32* %n_samples, align 4
  %conv2 = sext i32 %7 to i64
  %mul3 = mul i64 %conv2, 8
  %8 = load i64, i64* %memsize, align 8
  %add4 = add i64 %8, %mul3
  store i64 %add4, i64* %memsize, align 8
  %9 = load i64, i64* %memsize, align 8
  %10 = load i8*, i8** @gimp_curve_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call5 = call i64 @gimp_object_get_type() #6
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %11, i64 %call5)
  %12 = bitcast %struct._GTypeClass* %call6 to %struct._GimpObjectClass*
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %12, i32 0, i32 3
  %13 = load i64 (%struct._GimpObject*, i64*)*, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %14 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %15 = load i64*, i64** %gui_size.addr, align 8
  %call7 = call i64 %13(%struct._GimpObject* %14, i64* %15)
  %add8 = add nsw i64 %9, %call7
  ret i64 %add8
}

; Function Attrs: nounwind uwtable
define internal void @gimp_curve_get_preview_size(%struct._GimpViewable* %viewable, i32 %size, i32 %popup, i32 %dot_for_dot, i32* %width, i32* %height) #3 {
entry:
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %size.addr = alloca i32, align 4
  %popup.addr = alloca i32, align 4
  %dot_for_dot.addr = alloca i32, align 4
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %popup, i32* %popup.addr, align 4
  store i32 %dot_for_dot, i32* %dot_for_dot.addr, align 4
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  %0 = load i32, i32* %size.addr, align 4
  %1 = load i32*, i32** %width.addr, align 8
  store i32 %0, i32* %1, align 4
  %2 = load i32, i32* %size.addr, align 4
  %3 = load i32*, i32** %height.addr, align 8
  store i32 %2, i32* %3, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_curve_get_popup_size(%struct._GimpViewable* %viewable, i32 %width, i32 %height, i32 %dot_for_dot, i32* %popup_width, i32* %popup_height) #3 {
entry:
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %dot_for_dot.addr = alloca i32, align 4
  %popup_width.addr = alloca i32*, align 8
  %popup_height.addr = alloca i32*, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %dot_for_dot, i32* %dot_for_dot.addr, align 4
  store i32* %popup_width, i32** %popup_width.addr, align 8
  store i32* %popup_height, i32** %popup_height.addr, align 8
  %0 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %0, 2
  %1 = load i32*, i32** %popup_width.addr, align 8
  store i32 %mul, i32* %1, align 4
  %2 = load i32, i32* %height.addr, align 4
  %mul1 = mul nsw i32 %2, 2
  %3 = load i32*, i32** %popup_height.addr, align 8
  store i32 %mul1, i32* %3, align 4
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal %struct._TempBuf* @gimp_curve_get_new_preview(%struct._GimpViewable* %viewable, %struct._GimpContext* %context, i32 %width, i32 %height) #3 {
entry:
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  ret %struct._TempBuf* null
}

; Function Attrs: nounwind uwtable
define internal i8* @gimp_curve_get_description(%struct._GimpViewable* %viewable, i8** %tooltip) #3 {
entry:
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %tooltip.addr = alloca i8**, align 8
  %curve = alloca %struct._GimpCurve*, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8** %tooltip, i8*** %tooltip.addr, align 8
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_curve_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCurve*
  store %struct._GimpCurve* %2, %struct._GimpCurve** %curve, align 8
  %3 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %4 = bitcast %struct._GimpCurve* %3 to i8*
  %call2 = call i8* @gimp_object_get_name(i8* %4)
  %call3 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i8* %call2)
  ret i8* %call3
}

; Function Attrs: nounwind uwtable
define internal void @gimp_curve_dirty(%struct._GimpData* %data) #3 {
entry:
  %data.addr = alloca %struct._GimpData*, align 8
  %curve = alloca %struct._GimpCurve*, align 8
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  %0 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %1 = bitcast %struct._GimpData* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_curve_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCurve*
  store %struct._GimpCurve* %2, %struct._GimpCurve** %curve, align 8
  %3 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %identity = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %3, i32 0, i32 6
  store i32 0, i32* %identity, align 4
  %4 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  call void @gimp_curve_calculate(%struct._GimpCurve* %4)
  %5 = load i8*, i8** @gimp_curve_parent_class, align 8
  %6 = bitcast i8* %5 to %struct._GTypeClass*
  %call2 = call i64 @gimp_data_get_type() #6
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %6, i64 %call2)
  %7 = bitcast %struct._GTypeClass* %call3 to %struct._GimpDataClass*
  %dirty = getelementptr inbounds %struct._GimpDataClass, %struct._GimpDataClass* %7, i32 0, i32 1
  %8 = load void (%struct._GimpData*)*, void (%struct._GimpData*)** %dirty, align 8
  %9 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  call void %8(%struct._GimpData* %9)
  ret void
}

declare i32 @gimp_curve_save(%struct._GimpData*, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define internal i8* @gimp_curve_get_extension(%struct._GimpData* %data) #3 {
entry:
  %data.addr = alloca %struct._GimpData*, align 8
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  ret i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpData* @gimp_curve_duplicate(%struct._GimpData* %data) #3 {
entry:
  %data.addr = alloca %struct._GimpData*, align 8
  %new = alloca %struct._GimpCurve*, align 8
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  %call = call i64 @gimp_curve_get_type() #6
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GimpCurve*
  store %struct._GimpCurve* %0, %struct._GimpCurve** %new, align 8
  %1 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %2 = bitcast %struct._GimpData* %1 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_config_interface_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call2)
  %3 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpConfig*
  %4 = load %struct._GimpCurve*, %struct._GimpCurve** %new, align 8
  %5 = bitcast %struct._GimpCurve* %4 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_config_interface_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call4)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpConfig*
  %call6 = call i32 @gimp_config_copy(%struct._GimpConfig* %3, %struct._GimpConfig* %6, i32 0)
  %7 = load %struct._GimpCurve*, %struct._GimpCurve** %new, align 8
  %8 = bitcast %struct._GimpCurve* %7 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_data_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call7)
  %9 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpData*
  ret %struct._GimpData* %9
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_curve_type_get_type() #2

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare %struct._GParamSpec* @g_param_spec_value_array(i8*, i8*, i8*, %struct._GParamSpec*, i32) #1

declare void @g_free(i8*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_curve_set_n_points(%struct._GimpCurve* %curve, i32 %n_points) #3 {
entry:
  %curve.addr = alloca %struct._GimpCurve*, align 8
  %n_points.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GimpCurve* %curve, %struct._GimpCurve** %curve.addr, align 8
  store i32 %n_points, i32* %n_points.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %1 = bitcast %struct._GimpCurve* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_curve_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_curve_set_n_points, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.52

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %n_points.addr, align 4
  %14 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_points11 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %14, i32 0, i32 2
  %15 = load i32, i32* %n_points11, align 4
  %cmp12 = icmp ne i32 %13, %15
  br i1 %cmp12, label %if.then.13, label %if.end.52

if.then.13:                                       ; preds = %do.end
  %16 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %17 = bitcast %struct._GimpCurve* %16 to %struct._GTypeInstance*
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 80)
  %18 = bitcast %struct._GTypeInstance* %call15 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %18)
  %19 = load i32, i32* %n_points.addr, align 4
  %20 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_points16 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %20, i32 0, i32 2
  store i32 %19, i32* %n_points16, align 4
  %21 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %22 = bitcast %struct._GimpCurve* %21 to %struct._GTypeInstance*
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call17 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0))
  %24 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %24, i32 0, i32 3
  %25 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %26 = bitcast %struct._GimpVector2* %25 to i8*
  %27 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_points18 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %27, i32 0, i32 2
  %28 = load i32, i32* %n_points18, align 4
  %conv = sext i32 %28 to i64
  %call19 = call i8* @g_realloc_n(i8* %26, i64 %conv, i64 16)
  %29 = bitcast i8* %call19 to %struct._GimpVector2*
  %30 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points20 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %30, i32 0, i32 3
  store %struct._GimpVector2* %29, %struct._GimpVector2** %points20, align 8
  %31 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points21 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %31, i32 0, i32 3
  %32 = load %struct._GimpVector2*, %struct._GimpVector2** %points21, align 8
  %arrayidx = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %32, i64 0
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx, i32 0, i32 0
  store double 0.000000e+00, double* %x, align 8
  %33 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points22 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %33, i32 0, i32 3
  %34 = load %struct._GimpVector2*, %struct._GimpVector2** %points22, align 8
  %arrayidx23 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %34, i64 0
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx23, i32 0, i32 1
  store double 0.000000e+00, double* %y, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.13
  %35 = load i32, i32* %i, align 4
  %36 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_points24 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %36, i32 0, i32 2
  %37 = load i32, i32* %n_points24, align 4
  %sub = sub nsw i32 %37, 1
  %cmp25 = icmp slt i32 %35, %sub
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load i32, i32* %i, align 4
  %idxprom = sext i32 %38 to i64
  %39 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points27 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %39, i32 0, i32 3
  %40 = load %struct._GimpVector2*, %struct._GimpVector2** %points27, align 8
  %arrayidx28 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %40, i64 %idxprom
  %x29 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx28, i32 0, i32 0
  store double -1.000000e+00, double* %x29, align 8
  %41 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %41 to i64
  %42 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points31 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %42, i32 0, i32 3
  %43 = load %struct._GimpVector2*, %struct._GimpVector2** %points31, align 8
  %arrayidx32 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %43, i64 %idxprom30
  %y33 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx32, i32 0, i32 1
  store double -1.000000e+00, double* %y33, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load i32, i32* %i, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %45 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_points34 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %45, i32 0, i32 2
  %46 = load i32, i32* %n_points34, align 4
  %sub35 = sub nsw i32 %46, 1
  %idxprom36 = sext i32 %sub35 to i64
  %47 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points37 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %47, i32 0, i32 3
  %48 = load %struct._GimpVector2*, %struct._GimpVector2** %points37, align 8
  %arrayidx38 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %48, i64 %idxprom36
  %x39 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx38, i32 0, i32 0
  store double 1.000000e+00, double* %x39, align 8
  %49 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_points40 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %49, i32 0, i32 2
  %50 = load i32, i32* %n_points40, align 4
  %sub41 = sub nsw i32 %50, 1
  %idxprom42 = sext i32 %sub41 to i64
  %51 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points43 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %51, i32 0, i32 3
  %52 = load %struct._GimpVector2*, %struct._GimpVector2** %points43, align 8
  %arrayidx44 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %52, i64 %idxprom42
  %y45 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx44, i32 0, i32 1
  store double 1.000000e+00, double* %y45, align 8
  %53 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %54 = bitcast %struct._GimpCurve* %53 to %struct._GTypeInstance*
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 80)
  %55 = bitcast %struct._GTypeInstance* %call46 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0))
  %56 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %curve_type = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %56, i32 0, i32 1
  %57 = load i32, i32* %curve_type, align 4
  %cmp47 = icmp eq i32 %57, 0
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %for.end
  %58 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %identity = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %58, i32 0, i32 6
  store i32 1, i32* %identity, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %for.end
  %59 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %60 = bitcast %struct._GimpCurve* %59 to %struct._GTypeInstance*
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 80)
  %61 = bitcast %struct._GTypeInstance* %call51 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %61)
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.9, %if.end.50, %do.end
  ret void
}

declare i32 @g_value_get_int(%struct._GValue*) #1

declare i8* @g_value_get_boxed(%struct._GValue*) #1

declare %struct._GValue* @g_value_array_get_nth(%struct._GValueArray*, i32) #1

declare double @g_value_get_double(%struct._GValue*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_curve_set_n_samples(%struct._GimpCurve* %curve, i32 %n_samples) #3 {
entry:
  %curve.addr = alloca %struct._GimpCurve*, align 8
  %n_samples.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GimpCurve* %curve, %struct._GimpCurve** %curve.addr, align 8
  store i32 %n_samples, i32* %n_samples.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %1 = bitcast %struct._GimpCurve* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_curve_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_curve_set_n_samples, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.34

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %n_samples.addr, align 4
  %14 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_samples11 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %14, i32 0, i32 4
  %15 = load i32, i32* %n_samples11, align 4
  %cmp12 = icmp ne i32 %13, %15
  br i1 %cmp12, label %if.then.13, label %if.end.34

if.then.13:                                       ; preds = %do.end
  %16 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %17 = bitcast %struct._GimpCurve* %16 to %struct._GTypeInstance*
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 80)
  %18 = bitcast %struct._GTypeInstance* %call15 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %18)
  %19 = load i32, i32* %n_samples.addr, align 4
  %20 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_samples16 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %20, i32 0, i32 4
  store i32 %19, i32* %n_samples16, align 4
  %21 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %22 = bitcast %struct._GimpCurve* %21 to %struct._GTypeInstance*
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call17 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0))
  %24 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %samples = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %24, i32 0, i32 5
  %25 = load double*, double** %samples, align 8
  %26 = bitcast double* %25 to i8*
  %27 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_samples18 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %27, i32 0, i32 4
  %28 = load i32, i32* %n_samples18, align 4
  %conv = sext i32 %28 to i64
  %call19 = call i8* @g_realloc_n(i8* %26, i64 %conv, i64 8)
  %29 = bitcast i8* %call19 to double*
  %30 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %samples20 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %30, i32 0, i32 5
  store double* %29, double** %samples20, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.13
  %31 = load i32, i32* %i, align 4
  %32 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_samples21 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %32, i32 0, i32 4
  %33 = load i32, i32* %n_samples21, align 4
  %cmp22 = icmp slt i32 %31, %33
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load i32, i32* %i, align 4
  %conv24 = sitofp i32 %34 to double
  %35 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_samples25 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %35, i32 0, i32 4
  %36 = load i32, i32* %n_samples25, align 4
  %sub = sub nsw i32 %36, 1
  %conv26 = sitofp i32 %sub to double
  %div = fdiv double %conv24, %conv26
  %37 = load i32, i32* %i, align 4
  %idxprom = sext i32 %37 to i64
  %38 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %samples27 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %38, i32 0, i32 5
  %39 = load double*, double** %samples27, align 8
  %arrayidx = getelementptr inbounds double, double* %39, i64 %idxprom
  store double %div, double* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i32, i32* %i, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %42 = bitcast %struct._GimpCurve* %41 to %struct._GTypeInstance*
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 80)
  %43 = bitcast %struct._GTypeInstance* %call28 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0))
  %44 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %curve_type = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %44, i32 0, i32 1
  %45 = load i32, i32* %curve_type, align 4
  %cmp29 = icmp eq i32 %45, 1
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %for.end
  %46 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %identity = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %46, i32 0, i32 6
  store i32 1, i32* %identity, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %for.end
  %47 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %48 = bitcast %struct._GimpCurve* %47 to %struct._GTypeInstance*
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 80)
  %49 = bitcast %struct._GTypeInstance* %call33 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %49)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.9, %if.end.32, %do.end
  ret void
}

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

declare i8* @g_realloc_n(i8*, i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare %struct._GValueArray* @g_value_array_new(i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare %struct._GValue* @g_value_init(%struct._GValue*, i64) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

declare %struct._GValueArray* @g_value_array_append(%struct._GValueArray*, %struct._GValue*) #1

declare void @g_value_unset(%struct._GValue*) #1

declare void @g_value_take_boxed(%struct._GValue*, i8*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i8* @gimp_object_get_name(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_curve_calculate(%struct._GimpCurve* %curve) #3 {
entry:
  %curve.addr = alloca %struct._GimpCurve*, align 8
  %points = alloca i32*, align 8
  %i = alloca i32, align 4
  %num_pts = alloca i32, align 4
  %p1 = alloca i32, align 4
  %p2 = alloca i32, align 4
  %p3 = alloca i32, align 4
  %p4 = alloca i32, align 4
  %point = alloca %struct._GimpVector2, align 8
  %boundary = alloca i32, align 4
  %x94 = alloca double, align 8
  %y101 = alloca double, align 8
  store %struct._GimpCurve* %curve, %struct._GimpCurve** %curve.addr, align 8
  %0 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %1 = bitcast %struct._GimpCurve* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_data_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpData*
  %call2 = call i32 @gimp_data_is_frozen(%struct._GimpData* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %3 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_points = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %3, i32 0, i32 2
  %4 = load i32, i32* %n_points, align 4
  %conv = sext i32 %4 to i64
  %mul = mul i64 4, %conv
  %5 = alloca i8, i64 %mul
  %6 = bitcast i8* %5 to i32*
  store i32* %6, i32** %points, align 8
  %7 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %curve_type = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %7, i32 0, i32 1
  %8 = load i32, i32* %curve_type, align 4
  switch i32 %8, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.121
  ]

sw.bb:                                            ; preds = %if.end
  store i32 0, i32* %num_pts, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %9 = load i32, i32* %i, align 4
  %10 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_points3 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %10, i32 0, i32 2
  %11 = load i32, i32* %n_points3, align 4
  %cmp = icmp slt i32 %9, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points5 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %13, i32 0, i32 3
  %14 = load %struct._GimpVector2*, %struct._GimpVector2** %points5, align 8
  %arrayidx = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %14, i64 %idxprom
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx, i32 0, i32 0
  %15 = load double, double* %x, align 8
  %cmp6 = fcmp oge double %15, 0.000000e+00
  br i1 %cmp6, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %num_pts, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %num_pts, align 4
  %idxprom9 = sext i32 %17 to i64
  %18 = load i32*, i32** %points, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %18, i64 %idxprom9
  store i32 %16, i32* %arrayidx10, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %19 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %19, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load i32, i32* %num_pts, align 4
  %cmp13 = icmp ne i32 %20, 0
  br i1 %cmp13, label %if.then.15, label %if.end.58

if.then.15:                                       ; preds = %for.end
  %21 = load i32*, i32** %points, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %21, i64 0
  %22 = load i32, i32* %arrayidx16, align 4
  %idxprom17 = sext i32 %22 to i64
  %23 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points18 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %23, i32 0, i32 3
  %24 = load %struct._GimpVector2*, %struct._GimpVector2** %points18, align 8
  %arrayidx19 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %24, i64 %idxprom17
  %25 = bitcast %struct._GimpVector2* %point to i8*
  %26 = bitcast %struct._GimpVector2* %arrayidx19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 16, i32 8, i1 false)
  %x20 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %point, i32 0, i32 0
  %27 = load double, double* %x20, align 8
  %28 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_samples = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %28, i32 0, i32 4
  %29 = load i32, i32* %n_samples, align 4
  %sub = sub nsw i32 %29, 1
  %conv21 = sitofp i32 %sub to double
  %mul22 = fmul double %27, %conv21
  %add = fadd double %mul22, 5.000000e-01
  %conv23 = fptosi double %add to i32
  store i32 %conv23, i32* %boundary, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.30, %if.then.15
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %boundary, align 4
  %cmp25 = icmp slt i32 %30, %31
  br i1 %cmp25, label %for.body.27, label %for.end.32

for.body.27:                                      ; preds = %for.cond.24
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %point, i32 0, i32 1
  %32 = load double, double* %y, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %33 to i64
  %34 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %samples = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %34, i32 0, i32 5
  %35 = load double*, double** %samples, align 8
  %arrayidx29 = getelementptr inbounds double, double* %35, i64 %idxprom28
  store double %32, double* %arrayidx29, align 8
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.body.27
  %36 = load i32, i32* %i, align 4
  %inc31 = add nsw i32 %36, 1
  store i32 %inc31, i32* %i, align 4
  br label %for.cond.24

for.end.32:                                       ; preds = %for.cond.24
  %37 = load i32, i32* %num_pts, align 4
  %sub33 = sub nsw i32 %37, 1
  %idxprom34 = sext i32 %sub33 to i64
  %38 = load i32*, i32** %points, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %38, i64 %idxprom34
  %39 = load i32, i32* %arrayidx35, align 4
  %idxprom36 = sext i32 %39 to i64
  %40 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points37 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %40, i32 0, i32 3
  %41 = load %struct._GimpVector2*, %struct._GimpVector2** %points37, align 8
  %arrayidx38 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %41, i64 %idxprom36
  %42 = bitcast %struct._GimpVector2* %point to i8*
  %43 = bitcast %struct._GimpVector2* %arrayidx38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 16, i32 8, i1 false)
  %x39 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %point, i32 0, i32 0
  %44 = load double, double* %x39, align 8
  %45 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_samples40 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %45, i32 0, i32 4
  %46 = load i32, i32* %n_samples40, align 4
  %sub41 = sub nsw i32 %46, 1
  %conv42 = sitofp i32 %sub41 to double
  %mul43 = fmul double %44, %conv42
  %add44 = fadd double %mul43, 5.000000e-01
  %conv45 = fptosi double %add44 to i32
  store i32 %conv45, i32* %boundary, align 4
  %47 = load i32, i32* %boundary, align 4
  store i32 %47, i32* %i, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.55, %for.end.32
  %48 = load i32, i32* %i, align 4
  %49 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_samples47 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %49, i32 0, i32 4
  %50 = load i32, i32* %n_samples47, align 4
  %cmp48 = icmp slt i32 %48, %50
  br i1 %cmp48, label %for.body.50, label %for.end.57

for.body.50:                                      ; preds = %for.cond.46
  %y51 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %point, i32 0, i32 1
  %51 = load double, double* %y51, align 8
  %52 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %52 to i64
  %53 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %samples53 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %53, i32 0, i32 5
  %54 = load double*, double** %samples53, align 8
  %arrayidx54 = getelementptr inbounds double, double* %54, i64 %idxprom52
  store double %51, double* %arrayidx54, align 8
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.body.50
  %55 = load i32, i32* %i, align 4
  %inc56 = add nsw i32 %55, 1
  store i32 %inc56, i32* %i, align 4
  br label %for.cond.46

for.end.57:                                       ; preds = %for.cond.46
  br label %if.end.58

if.end.58:                                        ; preds = %for.end.57, %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.87, %if.end.58
  %56 = load i32, i32* %i, align 4
  %57 = load i32, i32* %num_pts, align 4
  %sub60 = sub nsw i32 %57, 1
  %cmp61 = icmp slt i32 %56, %sub60
  br i1 %cmp61, label %for.body.63, label %for.end.89

for.body.63:                                      ; preds = %for.cond.59
  %58 = load i32, i32* %i, align 4
  %sub64 = sub nsw i32 %58, 1
  %cmp65 = icmp sgt i32 %sub64, 0
  br i1 %cmp65, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.63
  %59 = load i32, i32* %i, align 4
  %sub67 = sub nsw i32 %59, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body.63
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub67, %cond.true ], [ 0, %cond.false ]
  %idxprom68 = sext i32 %cond to i64
  %60 = load i32*, i32** %points, align 8
  %arrayidx69 = getelementptr inbounds i32, i32* %60, i64 %idxprom68
  %61 = load i32, i32* %arrayidx69, align 4
  store i32 %61, i32* %p1, align 4
  %62 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %62 to i64
  %63 = load i32*, i32** %points, align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %63, i64 %idxprom70
  %64 = load i32, i32* %arrayidx71, align 4
  store i32 %64, i32* %p2, align 4
  %65 = load i32, i32* %i, align 4
  %add72 = add nsw i32 %65, 1
  %idxprom73 = sext i32 %add72 to i64
  %66 = load i32*, i32** %points, align 8
  %arrayidx74 = getelementptr inbounds i32, i32* %66, i64 %idxprom73
  %67 = load i32, i32* %arrayidx74, align 4
  store i32 %67, i32* %p3, align 4
  %68 = load i32, i32* %i, align 4
  %add75 = add nsw i32 %68, 2
  %69 = load i32, i32* %num_pts, align 4
  %sub76 = sub nsw i32 %69, 1
  %cmp77 = icmp slt i32 %add75, %sub76
  br i1 %cmp77, label %cond.true.79, label %cond.false.81

cond.true.79:                                     ; preds = %cond.end
  %70 = load i32, i32* %i, align 4
  %add80 = add nsw i32 %70, 2
  br label %cond.end.83

cond.false.81:                                    ; preds = %cond.end
  %71 = load i32, i32* %num_pts, align 4
  %sub82 = sub nsw i32 %71, 1
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.false.81, %cond.true.79
  %cond84 = phi i32 [ %add80, %cond.true.79 ], [ %sub82, %cond.false.81 ]
  %idxprom85 = sext i32 %cond84 to i64
  %72 = load i32*, i32** %points, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %72, i64 %idxprom85
  %73 = load i32, i32* %arrayidx86, align 4
  store i32 %73, i32* %p4, align 4
  %74 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %75 = load i32, i32* %p1, align 4
  %76 = load i32, i32* %p2, align 4
  %77 = load i32, i32* %p3, align 4
  %78 = load i32, i32* %p4, align 4
  call void @gimp_curve_plot(%struct._GimpCurve* %74, i32 %75, i32 %76, i32 %77, i32 %78)
  br label %for.inc.87

for.inc.87:                                       ; preds = %cond.end.83
  %79 = load i32, i32* %i, align 4
  %inc88 = add nsw i32 %79, 1
  store i32 %inc88, i32* %i, align 4
  br label %for.cond.59

for.end.89:                                       ; preds = %for.cond.59
  store i32 0, i32* %i, align 4
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.117, %for.end.89
  %80 = load i32, i32* %i, align 4
  %81 = load i32, i32* %num_pts, align 4
  %cmp91 = icmp slt i32 %80, %81
  br i1 %cmp91, label %for.body.93, label %for.end.119

for.body.93:                                      ; preds = %for.cond.90
  %82 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %82 to i64
  %83 = load i32*, i32** %points, align 8
  %arrayidx96 = getelementptr inbounds i32, i32* %83, i64 %idxprom95
  %84 = load i32, i32* %arrayidx96, align 4
  %idxprom97 = sext i32 %84 to i64
  %85 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points98 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %85, i32 0, i32 3
  %86 = load %struct._GimpVector2*, %struct._GimpVector2** %points98, align 8
  %arrayidx99 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %86, i64 %idxprom97
  %x100 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx99, i32 0, i32 0
  %87 = load double, double* %x100, align 8
  store double %87, double* %x94, align 8
  %88 = load i32, i32* %i, align 4
  %idxprom102 = sext i32 %88 to i64
  %89 = load i32*, i32** %points, align 8
  %arrayidx103 = getelementptr inbounds i32, i32* %89, i64 %idxprom102
  %90 = load i32, i32* %arrayidx103, align 4
  %idxprom104 = sext i32 %90 to i64
  %91 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points105 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %91, i32 0, i32 3
  %92 = load %struct._GimpVector2*, %struct._GimpVector2** %points105, align 8
  %arrayidx106 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %92, i64 %idxprom104
  %y107 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx106, i32 0, i32 1
  %93 = load double, double* %y107, align 8
  store double %93, double* %y101, align 8
  %94 = load double, double* %y101, align 8
  %95 = load double, double* %x94, align 8
  %96 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_samples108 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %96, i32 0, i32 4
  %97 = load i32, i32* %n_samples108, align 4
  %sub109 = sub nsw i32 %97, 1
  %conv110 = sitofp i32 %sub109 to double
  %mul111 = fmul double %95, %conv110
  %add112 = fadd double %mul111, 5.000000e-01
  %conv113 = fptosi double %add112 to i32
  %idxprom114 = sext i32 %conv113 to i64
  %98 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %samples115 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %98, i32 0, i32 5
  %99 = load double*, double** %samples115, align 8
  %arrayidx116 = getelementptr inbounds double, double* %99, i64 %idxprom114
  store double %94, double* %arrayidx116, align 8
  br label %for.inc.117

for.inc.117:                                      ; preds = %for.body.93
  %100 = load i32, i32* %i, align 4
  %inc118 = add nsw i32 %100, 1
  store i32 %inc118, i32* %i, align 4
  br label %for.cond.90

for.end.119:                                      ; preds = %for.cond.90
  %101 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %102 = bitcast %struct._GimpCurve* %101 to %struct._GTypeInstance*
  %call120 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %102, i64 80)
  %103 = bitcast %struct._GTypeInstance* %call120 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0))
  br label %sw.epilog

sw.bb.121:                                        ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %if.end, %sw.bb.121, %for.end.119
  ret void
}

declare i32 @gimp_data_is_frozen(%struct._GimpData*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define internal void @gimp_curve_plot(%struct._GimpCurve* %curve, i32 %p1, i32 %p2, i32 %p3, i32 %p4) #3 {
entry:
  %curve.addr = alloca %struct._GimpCurve*, align 8
  %p1.addr = alloca i32, align 4
  %p2.addr = alloca i32, align 4
  %p3.addr = alloca i32, align 4
  %p4.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %x0 = alloca double, align 8
  %x3 = alloca double, align 8
  %y0 = alloca double, align 8
  %y1 = alloca double, align 8
  %y2 = alloca double, align 8
  %y3 = alloca double, align 8
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %slope = alloca double, align 8
  %y100 = alloca double, align 8
  %t = alloca double, align 8
  %index = alloca i32, align 4
  store %struct._GimpCurve* %curve, %struct._GimpCurve** %curve.addr, align 8
  store i32 %p1, i32* %p1.addr, align 4
  store i32 %p2, i32* %p2.addr, align 4
  store i32 %p3, i32* %p3.addr, align 4
  store i32 %p4, i32* %p4.addr, align 4
  %0 = load i32, i32* %p2.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %1, i32 0, i32 3
  %2 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %arrayidx = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %2, i64 %idxprom
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx, i32 0, i32 0
  %3 = load double, double* %x, align 8
  store double %3, double* %x0, align 8
  %4 = load i32, i32* %p2.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points2 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %5, i32 0, i32 3
  %6 = load %struct._GimpVector2*, %struct._GimpVector2** %points2, align 8
  %arrayidx3 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %6, i64 %idxprom1
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx3, i32 0, i32 1
  %7 = load double, double* %y, align 8
  store double %7, double* %y0, align 8
  %8 = load i32, i32* %p3.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points5 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %9, i32 0, i32 3
  %10 = load %struct._GimpVector2*, %struct._GimpVector2** %points5, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %10, i64 %idxprom4
  %x7 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx6, i32 0, i32 0
  %11 = load double, double* %x7, align 8
  store double %11, double* %x3, align 8
  %12 = load i32, i32* %p3.addr, align 4
  %idxprom8 = sext i32 %12 to i64
  %13 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points9 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %13, i32 0, i32 3
  %14 = load %struct._GimpVector2*, %struct._GimpVector2** %points9, align 8
  %arrayidx10 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %14, i64 %idxprom8
  %y11 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx10, i32 0, i32 1
  %15 = load double, double* %y11, align 8
  store double %15, double* %y3, align 8
  %16 = load double, double* %x3, align 8
  %17 = load double, double* %x0, align 8
  %sub = fsub double %16, %17
  store double %sub, double* %dx, align 8
  %18 = load double, double* %y3, align 8
  %19 = load double, double* %y0, align 8
  %sub12 = fsub double %18, %19
  store double %sub12, double* %dy, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %20 = load double, double* %dx, align 8
  %cmp = fcmp ogt double %20, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_curve_plot, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0))
  br label %for.end

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %21 = load i32, i32* %p1.addr, align 4
  %22 = load i32, i32* %p2.addr, align 4
  %cmp13 = icmp eq i32 %21, %22
  br i1 %cmp13, label %land.lhs.true, label %if.else.18

land.lhs.true:                                    ; preds = %do.end
  %23 = load i32, i32* %p3.addr, align 4
  %24 = load i32, i32* %p4.addr, align 4
  %cmp14 = icmp eq i32 %23, %24
  br i1 %cmp14, label %if.then.15, label %if.else.18

if.then.15:                                       ; preds = %land.lhs.true
  %25 = load double, double* %y0, align 8
  %26 = load double, double* %dy, align 8
  %div = fdiv double %26, 3.000000e+00
  %add = fadd double %25, %div
  store double %add, double* %y1, align 8
  %27 = load double, double* %y0, align 8
  %28 = load double, double* %dy, align 8
  %mul = fmul double %28, 2.000000e+00
  %div16 = fdiv double %mul, 3.000000e+00
  %add17 = fadd double %27, %div16
  store double %add17, double* %y2, align 8
  br label %if.end.93

if.else.18:                                       ; preds = %land.lhs.true, %do.end
  %29 = load i32, i32* %p1.addr, align 4
  %30 = load i32, i32* %p2.addr, align 4
  %cmp19 = icmp eq i32 %29, %30
  br i1 %cmp19, label %land.lhs.true.20, label %if.else.40

land.lhs.true.20:                                 ; preds = %if.else.18
  %31 = load i32, i32* %p3.addr, align 4
  %32 = load i32, i32* %p4.addr, align 4
  %cmp21 = icmp ne i32 %31, %32
  br i1 %cmp21, label %if.then.22, label %if.else.40

if.then.22:                                       ; preds = %land.lhs.true.20
  %33 = load i32, i32* %p4.addr, align 4
  %idxprom23 = sext i32 %33 to i64
  %34 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points24 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %34, i32 0, i32 3
  %35 = load %struct._GimpVector2*, %struct._GimpVector2** %points24, align 8
  %arrayidx25 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %35, i64 %idxprom23
  %y26 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx25, i32 0, i32 1
  %36 = load double, double* %y26, align 8
  %37 = load double, double* %y0, align 8
  %sub27 = fsub double %36, %37
  %38 = load i32, i32* %p4.addr, align 4
  %idxprom28 = sext i32 %38 to i64
  %39 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points29 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %39, i32 0, i32 3
  %40 = load %struct._GimpVector2*, %struct._GimpVector2** %points29, align 8
  %arrayidx30 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %40, i64 %idxprom28
  %x31 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx30, i32 0, i32 0
  %41 = load double, double* %x31, align 8
  %42 = load double, double* %x0, align 8
  %sub32 = fsub double %41, %42
  %div33 = fdiv double %sub27, %sub32
  store double %div33, double* %slope, align 8
  %43 = load double, double* %y3, align 8
  %44 = load double, double* %slope, align 8
  %45 = load double, double* %dx, align 8
  %mul34 = fmul double %44, %45
  %div35 = fdiv double %mul34, 3.000000e+00
  %sub36 = fsub double %43, %div35
  store double %sub36, double* %y2, align 8
  %46 = load double, double* %y0, align 8
  %47 = load double, double* %y2, align 8
  %48 = load double, double* %y0, align 8
  %sub37 = fsub double %47, %48
  %div38 = fdiv double %sub37, 2.000000e+00
  %add39 = fadd double %46, %div38
  store double %add39, double* %y1, align 8
  br label %if.end.92

if.else.40:                                       ; preds = %land.lhs.true.20, %if.else.18
  %49 = load i32, i32* %p1.addr, align 4
  %50 = load i32, i32* %p2.addr, align 4
  %cmp41 = icmp ne i32 %49, %50
  br i1 %cmp41, label %land.lhs.true.42, label %if.else.62

land.lhs.true.42:                                 ; preds = %if.else.40
  %51 = load i32, i32* %p3.addr, align 4
  %52 = load i32, i32* %p4.addr, align 4
  %cmp43 = icmp eq i32 %51, %52
  br i1 %cmp43, label %if.then.44, label %if.else.62

if.then.44:                                       ; preds = %land.lhs.true.42
  %53 = load double, double* %y3, align 8
  %54 = load i32, i32* %p1.addr, align 4
  %idxprom45 = sext i32 %54 to i64
  %55 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points46 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %55, i32 0, i32 3
  %56 = load %struct._GimpVector2*, %struct._GimpVector2** %points46, align 8
  %arrayidx47 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %56, i64 %idxprom45
  %y48 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx47, i32 0, i32 1
  %57 = load double, double* %y48, align 8
  %sub49 = fsub double %53, %57
  %58 = load double, double* %x3, align 8
  %59 = load i32, i32* %p1.addr, align 4
  %idxprom50 = sext i32 %59 to i64
  %60 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points51 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %60, i32 0, i32 3
  %61 = load %struct._GimpVector2*, %struct._GimpVector2** %points51, align 8
  %arrayidx52 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %61, i64 %idxprom50
  %x53 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx52, i32 0, i32 0
  %62 = load double, double* %x53, align 8
  %sub54 = fsub double %58, %62
  %div55 = fdiv double %sub49, %sub54
  store double %div55, double* %slope, align 8
  %63 = load double, double* %y0, align 8
  %64 = load double, double* %slope, align 8
  %65 = load double, double* %dx, align 8
  %mul56 = fmul double %64, %65
  %div57 = fdiv double %mul56, 3.000000e+00
  %add58 = fadd double %63, %div57
  store double %add58, double* %y1, align 8
  %66 = load double, double* %y3, align 8
  %67 = load double, double* %y1, align 8
  %68 = load double, double* %y3, align 8
  %sub59 = fsub double %67, %68
  %div60 = fdiv double %sub59, 2.000000e+00
  %add61 = fadd double %66, %div60
  store double %add61, double* %y2, align 8
  br label %if.end.91

if.else.62:                                       ; preds = %land.lhs.true.42, %if.else.40
  %69 = load double, double* %y3, align 8
  %70 = load i32, i32* %p1.addr, align 4
  %idxprom63 = sext i32 %70 to i64
  %71 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points64 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %71, i32 0, i32 3
  %72 = load %struct._GimpVector2*, %struct._GimpVector2** %points64, align 8
  %arrayidx65 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %72, i64 %idxprom63
  %y66 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx65, i32 0, i32 1
  %73 = load double, double* %y66, align 8
  %sub67 = fsub double %69, %73
  %74 = load double, double* %x3, align 8
  %75 = load i32, i32* %p1.addr, align 4
  %idxprom68 = sext i32 %75 to i64
  %76 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points69 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %76, i32 0, i32 3
  %77 = load %struct._GimpVector2*, %struct._GimpVector2** %points69, align 8
  %arrayidx70 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %77, i64 %idxprom68
  %x71 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx70, i32 0, i32 0
  %78 = load double, double* %x71, align 8
  %sub72 = fsub double %74, %78
  %div73 = fdiv double %sub67, %sub72
  store double %div73, double* %slope, align 8
  %79 = load double, double* %y0, align 8
  %80 = load double, double* %slope, align 8
  %81 = load double, double* %dx, align 8
  %mul74 = fmul double %80, %81
  %div75 = fdiv double %mul74, 3.000000e+00
  %add76 = fadd double %79, %div75
  store double %add76, double* %y1, align 8
  %82 = load i32, i32* %p4.addr, align 4
  %idxprom77 = sext i32 %82 to i64
  %83 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points78 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %83, i32 0, i32 3
  %84 = load %struct._GimpVector2*, %struct._GimpVector2** %points78, align 8
  %arrayidx79 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %84, i64 %idxprom77
  %y80 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx79, i32 0, i32 1
  %85 = load double, double* %y80, align 8
  %86 = load double, double* %y0, align 8
  %sub81 = fsub double %85, %86
  %87 = load i32, i32* %p4.addr, align 4
  %idxprom82 = sext i32 %87 to i64
  %88 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %points83 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %88, i32 0, i32 3
  %89 = load %struct._GimpVector2*, %struct._GimpVector2** %points83, align 8
  %arrayidx84 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %89, i64 %idxprom82
  %x85 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %arrayidx84, i32 0, i32 0
  %90 = load double, double* %x85, align 8
  %91 = load double, double* %x0, align 8
  %sub86 = fsub double %90, %91
  %div87 = fdiv double %sub81, %sub86
  store double %div87, double* %slope, align 8
  %92 = load double, double* %y3, align 8
  %93 = load double, double* %slope, align 8
  %94 = load double, double* %dx, align 8
  %mul88 = fmul double %93, %94
  %div89 = fdiv double %mul88, 3.000000e+00
  %sub90 = fsub double %92, %div89
  store double %sub90, double* %y2, align 8
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.62, %if.then.44
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.then.22
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.then.15
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.93
  %95 = load i32, i32* %i, align 4
  %96 = load double, double* %dx, align 8
  %97 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_samples = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %97, i32 0, i32 4
  %98 = load i32, i32* %n_samples, align 4
  %sub94 = sub nsw i32 %98, 1
  %conv = sitofp i32 %sub94 to double
  %mul95 = fmul double %96, %conv
  %add96 = fadd double %mul95, 5.000000e-01
  %conv97 = fptosi double %add96 to i32
  %cmp98 = icmp sle i32 %95, %conv97
  br i1 %cmp98, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %99 = load i32, i32* %i, align 4
  %conv101 = sitofp i32 %99 to double
  %100 = load double, double* %dx, align 8
  %div102 = fdiv double %conv101, %100
  %101 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_samples103 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %101, i32 0, i32 4
  %102 = load i32, i32* %n_samples103, align 4
  %sub104 = sub nsw i32 %102, 1
  %conv105 = sitofp i32 %sub104 to double
  %div106 = fdiv double %div102, %conv105
  store double %div106, double* %t, align 8
  %103 = load double, double* %y0, align 8
  %104 = load double, double* %t, align 8
  %sub107 = fsub double 1.000000e+00, %104
  %mul108 = fmul double %103, %sub107
  %105 = load double, double* %t, align 8
  %sub109 = fsub double 1.000000e+00, %105
  %mul110 = fmul double %mul108, %sub109
  %106 = load double, double* %t, align 8
  %sub111 = fsub double 1.000000e+00, %106
  %mul112 = fmul double %mul110, %sub111
  %107 = load double, double* %y1, align 8
  %mul113 = fmul double 3.000000e+00, %107
  %108 = load double, double* %t, align 8
  %sub114 = fsub double 1.000000e+00, %108
  %mul115 = fmul double %mul113, %sub114
  %109 = load double, double* %t, align 8
  %sub116 = fsub double 1.000000e+00, %109
  %mul117 = fmul double %mul115, %sub116
  %110 = load double, double* %t, align 8
  %mul118 = fmul double %mul117, %110
  %add119 = fadd double %mul112, %mul118
  %111 = load double, double* %y2, align 8
  %mul120 = fmul double 3.000000e+00, %111
  %112 = load double, double* %t, align 8
  %sub121 = fsub double 1.000000e+00, %112
  %mul122 = fmul double %mul120, %sub121
  %113 = load double, double* %t, align 8
  %mul123 = fmul double %mul122, %113
  %114 = load double, double* %t, align 8
  %mul124 = fmul double %mul123, %114
  %add125 = fadd double %add119, %mul124
  %115 = load double, double* %y3, align 8
  %116 = load double, double* %t, align 8
  %mul126 = fmul double %115, %116
  %117 = load double, double* %t, align 8
  %mul127 = fmul double %mul126, %117
  %118 = load double, double* %t, align 8
  %mul128 = fmul double %mul127, %118
  %add129 = fadd double %add125, %mul128
  store double %add129, double* %y100, align 8
  %119 = load i32, i32* %i, align 4
  %120 = load double, double* %x0, align 8
  %121 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_samples130 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %121, i32 0, i32 4
  %122 = load i32, i32* %n_samples130, align 4
  %sub131 = sub nsw i32 %122, 1
  %conv132 = sitofp i32 %sub131 to double
  %mul133 = fmul double %120, %conv132
  %add134 = fadd double %mul133, 5.000000e-01
  %conv135 = fptosi double %add134 to i32
  %add136 = add nsw i32 %119, %conv135
  store i32 %add136, i32* %index, align 4
  %123 = load i32, i32* %index, align 4
  %124 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %n_samples137 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %124, i32 0, i32 4
  %125 = load i32, i32* %n_samples137, align 4
  %cmp138 = icmp slt i32 %123, %125
  br i1 %cmp138, label %if.then.140, label %if.end.151

if.then.140:                                      ; preds = %for.body
  %126 = load double, double* %y100, align 8
  %cmp141 = fcmp ogt double %126, 1.000000e+00
  br i1 %cmp141, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.140
  br label %cond.end.147

cond.false:                                       ; preds = %if.then.140
  %127 = load double, double* %y100, align 8
  %cmp143 = fcmp olt double %127, 0.000000e+00
  br i1 %cmp143, label %cond.true.145, label %cond.false.146

cond.true.145:                                    ; preds = %cond.false
  br label %cond.end

cond.false.146:                                   ; preds = %cond.false
  %128 = load double, double* %y100, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.146, %cond.true.145
  %cond = phi double [ 0.000000e+00, %cond.true.145 ], [ %128, %cond.false.146 ]
  br label %cond.end.147

cond.end.147:                                     ; preds = %cond.end, %cond.true
  %cond148 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  %129 = load i32, i32* %index, align 4
  %idxprom149 = sext i32 %129 to i64
  %130 = load %struct._GimpCurve*, %struct._GimpCurve** %curve.addr, align 8
  %samples = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %130, i32 0, i32 5
  %131 = load double*, double** %samples, align 8
  %arrayidx150 = getelementptr inbounds double, double* %131, i64 %idxprom149
  store double %cond148, double* %arrayidx150, align 8
  br label %if.end.151

if.end.151:                                       ; preds = %cond.end.147, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.151
  %132 = load i32, i32* %i, align 4
  %inc = add nsw i32 %132, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else, %for.cond
  ret void
}

declare i32 @gimp_config_copy(%struct._GimpConfig*, %struct._GimpConfig*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_curve_serialize(%struct._GimpConfig* %config, %struct._GimpConfigWriter* %writer, i8* %data) #3 {
entry:
  %config.addr = alloca %struct._GimpConfig*, align 8
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %call = call i32 @gimp_config_serialize_properties(%struct._GimpConfig* %0, %struct._GimpConfigWriter* %1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_curve_deserialize(%struct._GimpConfig* %config, %struct._GScanner* %scanner, i32 %nest_level, i8* %data) #3 {
entry:
  %config.addr = alloca %struct._GimpConfig*, align 8
  %scanner.addr = alloca %struct._GScanner*, align 8
  %nest_level.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %success = alloca i32, align 4
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store i32 %nest_level, i32* %nest_level.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %2 = load i32, i32* %nest_level.addr, align 4
  %call = call i32 @gimp_config_deserialize_properties(%struct._GimpConfig* %0, %struct._GScanner* %1, i32 %2)
  store i32 %call, i32* %success, align 4
  %3 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %4 = bitcast %struct._GimpConfig* %3 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_curve_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call1)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpCurve*
  %identity = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %5, i32 0, i32 6
  store i32 0, i32* %identity, align 4
  %6 = load i32, i32* %success, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_curve_equal(%struct._GimpConfig* %a, %struct._GimpConfig* %b) #3 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct._GimpConfig*, align 8
  %b.addr = alloca %struct._GimpConfig*, align 8
  %a_curve = alloca %struct._GimpCurve*, align 8
  %b_curve = alloca %struct._GimpCurve*, align 8
  store %struct._GimpConfig* %a, %struct._GimpConfig** %a.addr, align 8
  store %struct._GimpConfig* %b, %struct._GimpConfig** %b.addr, align 8
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %a.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_curve_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCurve*
  store %struct._GimpCurve* %2, %struct._GimpCurve** %a_curve, align 8
  %3 = load %struct._GimpConfig*, %struct._GimpConfig** %b.addr, align 8
  %4 = bitcast %struct._GimpConfig* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_curve_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpCurve*
  store %struct._GimpCurve* %5, %struct._GimpCurve** %b_curve, align 8
  %6 = load %struct._GimpCurve*, %struct._GimpCurve** %a_curve, align 8
  %curve_type = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %6, i32 0, i32 1
  %7 = load i32, i32* %curve_type, align 4
  %8 = load %struct._GimpCurve*, %struct._GimpCurve** %b_curve, align 8
  %curve_type4 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %8, i32 0, i32 1
  %9 = load i32, i32* %curve_type4, align 4
  %cmp = icmp ne i32 %7, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load %struct._GimpCurve*, %struct._GimpCurve** %a_curve, align 8
  %points = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %10, i32 0, i32 3
  %11 = load %struct._GimpVector2*, %struct._GimpVector2** %points, align 8
  %12 = bitcast %struct._GimpVector2* %11 to i8*
  %13 = load %struct._GimpCurve*, %struct._GimpCurve** %b_curve, align 8
  %points5 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %13, i32 0, i32 3
  %14 = load %struct._GimpVector2*, %struct._GimpVector2** %points5, align 8
  %15 = bitcast %struct._GimpVector2* %14 to i8*
  %16 = load %struct._GimpCurve*, %struct._GimpCurve** %b_curve, align 8
  %n_points = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %16, i32 0, i32 2
  %17 = load i32, i32* %n_points, align 4
  %conv = sext i32 %17 to i64
  %mul = mul i64 16, %conv
  %call6 = call i32 @memcmp(i8* %12, i8* %15, i64 %mul) #7
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %18 = load %struct._GimpCurve*, %struct._GimpCurve** %a_curve, align 8
  %samples = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %18, i32 0, i32 5
  %19 = load double*, double** %samples, align 8
  %20 = bitcast double* %19 to i8*
  %21 = load %struct._GimpCurve*, %struct._GimpCurve** %b_curve, align 8
  %samples7 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %21, i32 0, i32 5
  %22 = load double*, double** %samples7, align 8
  %23 = bitcast double* %22 to i8*
  %24 = load %struct._GimpCurve*, %struct._GimpCurve** %b_curve, align 8
  %n_samples = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %24, i32 0, i32 4
  %25 = load i32, i32* %n_samples, align 4
  %conv8 = sext i32 %25 to i64
  %mul9 = mul i64 8, %conv8
  %call10 = call i32 @memcmp(i8* %20, i8* %23, i64 %mul9) #7
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %lor.lhs.false, %if.end
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %lor.lhs.false
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal void @_gimp_curve_reset(%struct._GimpConfig* %config) #3 {
entry:
  %config.addr = alloca %struct._GimpConfig*, align 8
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_curve_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCurve*
  call void @gimp_curve_reset(%struct._GimpCurve* %2, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_curve_copy(%struct._GimpConfig* %src, %struct._GimpConfig* %dest, i32 %flags) #3 {
entry:
  %src.addr = alloca %struct._GimpConfig*, align 8
  %dest.addr = alloca %struct._GimpConfig*, align 8
  %flags.addr = alloca i32, align 4
  %src_curve = alloca %struct._GimpCurve*, align 8
  %dest_curve = alloca %struct._GimpCurve*, align 8
  store %struct._GimpConfig* %src, %struct._GimpConfig** %src.addr, align 8
  store %struct._GimpConfig* %dest, %struct._GimpConfig** %dest.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %src.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_curve_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCurve*
  store %struct._GimpCurve* %2, %struct._GimpCurve** %src_curve, align 8
  %3 = load %struct._GimpConfig*, %struct._GimpConfig** %dest.addr, align 8
  %4 = bitcast %struct._GimpConfig* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_curve_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpCurve*
  store %struct._GimpCurve* %5, %struct._GimpCurve** %dest_curve, align 8
  %6 = load %struct._GimpConfig*, %struct._GimpConfig** %src.addr, align 8
  %7 = bitcast %struct._GimpConfig* %6 to %struct._GTypeInstance*
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 80)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GObject*
  %9 = load %struct._GimpConfig*, %struct._GimpConfig** %dest.addr, align 8
  %10 = bitcast %struct._GimpConfig* %9 to %struct._GTypeInstance*
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 80)
  %11 = bitcast %struct._GTypeInstance* %call5 to %struct._GObject*
  %12 = load i32, i32* %flags.addr, align 4
  %call6 = call i32 @gimp_config_sync(%struct._GObject* %8, %struct._GObject* %11, i32 %12)
  %13 = load %struct._GimpCurve*, %struct._GimpCurve** %src_curve, align 8
  %identity = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %13, i32 0, i32 6
  %14 = load i32, i32* %identity, align 4
  %15 = load %struct._GimpCurve*, %struct._GimpCurve** %dest_curve, align 8
  %identity7 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %15, i32 0, i32 6
  store i32 %14, i32* %identity7, align 4
  %16 = load %struct._GimpConfig*, %struct._GimpConfig** %dest.addr, align 8
  %17 = bitcast %struct._GimpConfig* %16 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_data_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call8)
  %18 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpData*
  call void @gimp_data_dirty(%struct._GimpData* %18)
  ret i32 1
}

declare i32 @gimp_config_serialize_properties(%struct._GimpConfig*, %struct._GimpConfigWriter*) #1

declare i32 @gimp_config_deserialize_properties(%struct._GimpConfig*, %struct._GScanner*, i32) #1

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

declare i32 @gimp_config_sync(%struct._GObject*, %struct._GObject*, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
