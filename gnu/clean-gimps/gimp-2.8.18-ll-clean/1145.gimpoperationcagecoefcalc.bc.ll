; ModuleID = './app/gegl/gimpoperationcagecoefcalc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpOperationCageCoefCalcClass = type { %struct._GeglOperationSourceClass }
%struct._GeglOperationSourceClass = type { %struct._GeglOperationClass, i32 (%struct._GeglOperation*, %struct._GeglBuffer*, %struct._GeglRectangle*, i32)*, [4 x i8*] }
%struct._GeglOperationClass = type { %struct._GObjectClass, i8*, i8*, %struct._GHashTable*, i64, void (%struct._GeglOperation*)*, void (%struct._GeglOperation*)*, { i64, i64 } (%struct._GeglOperation*)*, { i64, i64 } (%struct._GeglOperation*, i8*, %struct._GeglRectangle*)*, { i64, i64 } (%struct._GeglOperation*, i8*, %struct._GeglRectangle*)*, { i64, i64 } (%struct._GeglOperation*, %struct._GeglRectangle*)*, i32 (%struct._GeglOperation*, %struct._GeglOperationContext*, i8*, %struct._GeglRectangle*, i32)*, %struct._GeglNode* (%struct._GeglOperation*, i32, i32)*, [10 x i8*] }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GHashTable = type opaque
%struct._GeglOperation = type { %struct._GObject, %struct._GeglNode* }
%struct._GeglNode = type opaque
%struct._GeglRectangle = type { i32, i32, i32, i32 }
%struct._GeglOperationContext = type opaque
%struct._GeglBuffer = type opaque
%struct._GimpOperationCageCoefCalc = type { %struct._GeglOperationSource, %struct._GimpCageConfig* }
%struct._GeglOperationSource = type { %struct._GeglOperation }
%struct._GimpCageConfig = type { %struct._GimpImageMapConfig, %struct._GArray*, double, double, i32 }
%struct._GimpImageMapConfig = type { %struct._GimpViewable, i32 }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GArray = type { i8*, i32 }
%union._Babl = type opaque
%struct.GeglBufferIterator = type { i32, [6 x i8*], [6 x %struct._GeglRectangle], i32 }
%struct._GimpCagePoint = type { %struct._GimpVector2, %struct._GimpVector2, %struct._GimpVector2, double, i32 }
%struct._GimpVector2 = type { double, double }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_operation_cage_coef_calc_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"GimpOperationCageCoefCalc\00", align 1
@gimp_operation_cage_coef_calc_parent_class = internal global i8* null, align 8
@GimpOperationCageCoefCalc_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"gimp:cage-coef-calc\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"categories\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"transform\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"Compute a set of coefficient buffer for the GIMP cage tool\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Config\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"A GimpCageConfig object, that define the transformation\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"gimpoperationcagecoefcalc.c\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"Gimp-GEGL\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_operation_cage_coef_calc_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_operation_cage_coef_calc_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_operation_cage_coef_calc_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gegl_operation_source_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 352, void (i8*, i8*)* bitcast (void (i8*)* @gimp_operation_cage_coef_calc_class_intern_init to void (i8*, i8*)*), i32 40, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpOperationCageCoefCalc*)* @gimp_operation_cage_coef_calc_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_operation_cage_coef_calc_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_operation_cage_coef_calc_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gegl_operation_source_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_cage_coef_calc_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_operation_cage_coef_calc_parent_class, align 8
  %1 = load i32, i32* @GimpOperationCageCoefCalc_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpOperationCageCoefCalc_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpOperationCageCoefCalcClass*
  call void @gimp_operation_cage_coef_calc_class_init(%struct._GimpOperationCageCoefCalcClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_cage_coef_calc_init(%struct._GimpOperationCageCoefCalc* %self) #3 {
entry:
  %self.addr = alloca %struct._GimpOperationCageCoefCalc*, align 8
  store %struct._GimpOperationCageCoefCalc* %self, %struct._GimpOperationCageCoefCalc** %self.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_cage_coef_calc_class_init(%struct._GimpOperationCageCoefCalcClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpOperationCageCoefCalcClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %source_class = alloca %struct._GeglOperationSourceClass*, align 8
  %operation_class = alloca %struct._GeglOperationClass*, align 8
  store %struct._GimpOperationCageCoefCalcClass* %klass, %struct._GimpOperationCageCoefCalcClass** %klass.addr, align 8
  %0 = load %struct._GimpOperationCageCoefCalcClass*, %struct._GimpOperationCageCoefCalcClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpOperationCageCoefCalcClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpOperationCageCoefCalcClass*, %struct._GimpOperationCageCoefCalcClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpOperationCageCoefCalcClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gegl_operation_source_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GeglOperationSourceClass*
  store %struct._GeglOperationSourceClass* %5, %struct._GeglOperationSourceClass** %source_class, align 8
  %6 = load %struct._GimpOperationCageCoefCalcClass*, %struct._GimpOperationCageCoefCalcClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpOperationCageCoefCalcClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gegl_operation_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GeglOperationClass*
  store %struct._GeglOperationClass* %8, %struct._GeglOperationClass** %operation_class, align 8
  %9 = load %struct._GeglOperationClass*, %struct._GeglOperationClass** %operation_class, align 8
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i32 0, i32 0)) #5
  call void (%struct._GeglOperationClass*, i8*, ...) @gegl_operation_class_set_keys(%struct._GeglOperationClass* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* %call5, i8* null)
  %10 = load %struct._GeglOperationClass*, %struct._GeglOperationClass** %operation_class, align 8
  %prepare = getelementptr inbounds %struct._GeglOperationClass, %struct._GeglOperationClass* %10, i32 0, i32 6
  store void (%struct._GeglOperation*)* @gimp_operation_cage_coef_calc_prepare, void (%struct._GeglOperation*)** %prepare, align 8
  %11 = load %struct._GeglOperationClass*, %struct._GeglOperationClass** %operation_class, align 8
  %get_bounding_box = getelementptr inbounds %struct._GeglOperationClass, %struct._GeglOperationClass* %11, i32 0, i32 7
  store { i64, i64 } (%struct._GeglOperation*)* @gimp_operation_cage_coef_calc_get_bounding_box, { i64, i64 } (%struct._GeglOperation*)** %get_bounding_box, align 8
  %12 = load %struct._GeglOperationClass*, %struct._GeglOperationClass** %operation_class, align 8
  %no_cache = getelementptr inbounds %struct._GeglOperationClass, %struct._GeglOperationClass* %12, i32 0, i32 4
  %bf.load = load i64, i64* %no_cache, align 8
  %bf.clear = and i64 %bf.load, -2
  store i64 %bf.clear, i64* %no_cache, align 8
  %13 = load %struct._GeglOperationClass*, %struct._GeglOperationClass** %operation_class, align 8
  %get_cached_region = getelementptr inbounds %struct._GeglOperationClass, %struct._GeglOperationClass* %13, i32 0, i32 10
  store { i64, i64 } (%struct._GeglOperation*, %struct._GeglRectangle*)* null, { i64, i64 } (%struct._GeglOperation*, %struct._GeglRectangle*)** %get_cached_region, align 8
  %14 = load %struct._GeglOperationSourceClass*, %struct._GeglOperationSourceClass** %source_class, align 8
  %process = getelementptr inbounds %struct._GeglOperationSourceClass, %struct._GeglOperationSourceClass* %14, i32 0, i32 1
  store i32 (%struct._GeglOperation*, %struct._GeglBuffer*, %struct._GeglRectangle*, i32)* @gimp_operation_cage_coef_calc_process, i32 (%struct._GeglOperation*, %struct._GeglBuffer*, %struct._GeglRectangle*, i32)** %process, align 8
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %15, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_operation_cage_coef_calc_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %16, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_operation_cage_coef_calc_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %17 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %17, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_operation_cage_coef_calc_finalize, void (%struct._GObject*)** %finalize, align 8
  %18 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call i64 @gimp_cage_config_get_type() #6
  %call7 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i32 0, i32 0), i64 %call6, i32 7)
  call void @g_object_class_install_property(%struct._GObjectClass* %18, i32 1, %struct._GParamSpec* %call7)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gegl_operation_get_type() #2

declare void @gegl_operation_class_set_keys(%struct._GeglOperationClass*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_cage_coef_calc_prepare(%struct._GeglOperation* %operation) #3 {
entry:
  %operation.addr = alloca %struct._GeglOperation*, align 8
  %occc = alloca %struct._GimpOperationCageCoefCalc*, align 8
  %config = alloca %struct._GimpCageConfig*, align 8
  store %struct._GeglOperation* %operation, %struct._GeglOperation** %operation.addr, align 8
  %0 = load %struct._GeglOperation*, %struct._GeglOperation** %operation.addr, align 8
  %1 = bitcast %struct._GeglOperation* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_operation_cage_coef_calc_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpOperationCageCoefCalc*
  store %struct._GimpOperationCageCoefCalc* %2, %struct._GimpOperationCageCoefCalc** %occc, align 8
  %3 = load %struct._GimpOperationCageCoefCalc*, %struct._GimpOperationCageCoefCalc** %occc, align 8
  %config2 = getelementptr inbounds %struct._GimpOperationCageCoefCalc, %struct._GimpOperationCageCoefCalc* %3, i32 0, i32 1
  %4 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config2, align 8
  %5 = bitcast %struct._GimpCageConfig* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_cage_config_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpCageConfig*
  store %struct._GimpCageConfig* %6, %struct._GimpCageConfig** %config, align 8
  %7 = load %struct._GeglOperation*, %struct._GeglOperation** %operation.addr, align 8
  %call5 = call %union._Babl* @babl_type(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0))
  %8 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config, align 8
  %call6 = call i32 @gimp_cage_config_get_n_points(%struct._GimpCageConfig* %8)
  %mul = mul i32 2, %call6
  %call7 = call %union._Babl* @babl_format_n(%union._Babl* %call5, i32 %mul)
  call void @gegl_operation_set_format(%struct._GeglOperation* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), %union._Babl* %call7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @gimp_operation_cage_coef_calc_get_bounding_box(%struct._GeglOperation* %operation) #3 {
entry:
  %retval = alloca %struct._GeglRectangle, align 4
  %operation.addr = alloca %struct._GeglOperation*, align 8
  %occc = alloca %struct._GimpOperationCageCoefCalc*, align 8
  %config = alloca %struct._GimpCageConfig*, align 8
  store %struct._GeglOperation* %operation, %struct._GeglOperation** %operation.addr, align 8
  %0 = load %struct._GeglOperation*, %struct._GeglOperation** %operation.addr, align 8
  %1 = bitcast %struct._GeglOperation* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_operation_cage_coef_calc_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpOperationCageCoefCalc*
  store %struct._GimpOperationCageCoefCalc* %2, %struct._GimpOperationCageCoefCalc** %occc, align 8
  %3 = load %struct._GimpOperationCageCoefCalc*, %struct._GimpOperationCageCoefCalc** %occc, align 8
  %config2 = getelementptr inbounds %struct._GimpOperationCageCoefCalc, %struct._GimpOperationCageCoefCalc* %3, i32 0, i32 1
  %4 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config2, align 8
  %5 = bitcast %struct._GimpCageConfig* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_cage_config_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpCageConfig*
  store %struct._GimpCageConfig* %6, %struct._GimpCageConfig** %config, align 8
  %7 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config, align 8
  %call5 = call { i64, i64 } @gimp_cage_config_get_bounding_box(%struct._GimpCageConfig* %7)
  %8 = bitcast %struct._GeglRectangle* %retval to { i64, i64 }*
  %9 = getelementptr { i64, i64 }, { i64, i64 }* %8, i32 0, i32 0
  %10 = extractvalue { i64, i64 } %call5, 0
  store i64 %10, i64* %9, align 4
  %11 = getelementptr { i64, i64 }, { i64, i64 }* %8, i32 0, i32 1
  %12 = extractvalue { i64, i64 } %call5, 1
  store i64 %12, i64* %11, align 4
  %13 = bitcast %struct._GeglRectangle* %retval to { i64, i64 }*
  %14 = load { i64, i64 }, { i64, i64 }* %13, align 4
  ret { i64, i64 } %14
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_operation_cage_coef_calc_process(%struct._GeglOperation* %operation, %struct._GeglBuffer* %output, %struct._GeglRectangle* %roi, i32 %level) #3 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct._GeglOperation*, align 8
  %output.addr = alloca %struct._GeglBuffer*, align 8
  %roi.addr = alloca %struct._GeglRectangle*, align 8
  %level.addr = alloca i32, align 4
  %occc = alloca %struct._GimpOperationCageCoefCalc*, align 8
  %config = alloca %struct._GimpCageConfig*, align 8
  %format = alloca %union._Babl*, align 8
  %it = alloca %struct.GeglBufferIterator*, align 8
  %n_cage_vertices = alloca i32, align 4
  %current = alloca %struct._GimpCagePoint*, align 8
  %last = alloca %struct._GimpCagePoint*, align 8
  %n_pixels = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %j = alloca i32, align 4
  %coef = alloca float*, align 8
  %v1 = alloca %struct._GimpVector2, align 8
  %v2 = alloca %struct._GimpVector2, align 8
  %a = alloca %struct._GimpVector2, align 8
  %b = alloca %struct._GimpVector2, align 8
  %p = alloca %struct._GimpVector2, align 8
  %BA = alloca double, align 8
  %SRT = alloca double, align 8
  %L0 = alloca double, align 8
  %L1 = alloca double, align 8
  %A0 = alloca double, align 8
  %A1 = alloca double, align 8
  %A10 = alloca double, align 8
  %L10 = alloca double, align 8
  %Q = alloca double, align 8
  %S = alloca double, align 8
  %R = alloca double, align 8
  %absa = alloca double, align 8
  store %struct._GeglOperation* %operation, %struct._GeglOperation** %operation.addr, align 8
  store %struct._GeglBuffer* %output, %struct._GeglBuffer** %output.addr, align 8
  store %struct._GeglRectangle* %roi, %struct._GeglRectangle** %roi.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  %0 = load %struct._GeglOperation*, %struct._GeglOperation** %operation.addr, align 8
  %1 = bitcast %struct._GeglOperation* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_operation_cage_coef_calc_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpOperationCageCoefCalc*
  store %struct._GimpOperationCageCoefCalc* %2, %struct._GimpOperationCageCoefCalc** %occc, align 8
  %3 = load %struct._GimpOperationCageCoefCalc*, %struct._GimpOperationCageCoefCalc** %occc, align 8
  %config2 = getelementptr inbounds %struct._GimpOperationCageCoefCalc, %struct._GimpOperationCageCoefCalc* %3, i32 0, i32 1
  %4 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config2, align 8
  %5 = bitcast %struct._GimpCageConfig* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_cage_config_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpCageConfig*
  store %struct._GimpCageConfig* %6, %struct._GimpCageConfig** %config, align 8
  %call5 = call %union._Babl* @babl_type(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0))
  %7 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config, align 8
  %call6 = call i32 @gimp_cage_config_get_n_points(%struct._GimpCageConfig* %7)
  %mul = mul i32 2, %call6
  %call7 = call %union._Babl* @babl_format_n(%union._Babl* %call5, i32 %mul)
  store %union._Babl* %call7, %union._Babl** %format, align 8
  %8 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config, align 8
  %tobool = icmp ne %struct._GimpCageConfig* %8, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config, align 8
  %call8 = call i32 @gimp_cage_config_get_n_points(%struct._GimpCageConfig* %9)
  store i32 %call8, i32* %n_cage_vertices, align 4
  %10 = load %struct._GeglBuffer*, %struct._GeglBuffer** %output.addr, align 8
  %11 = load %struct._GeglRectangle*, %struct._GeglRectangle** %roi.addr, align 8
  %12 = load %union._Babl*, %union._Babl** %format, align 8
  %call9 = call %struct.GeglBufferIterator* @gegl_buffer_iterator_new(%struct._GeglBuffer* %10, %struct._GeglRectangle* %11, i32 0, %union._Babl* %12, i32 3, i32 0)
  store %struct.GeglBufferIterator* %call9, %struct.GeglBufferIterator** %it, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.end
  %13 = load %struct.GeglBufferIterator*, %struct.GeglBufferIterator** %it, align 8
  %call10 = call i32 @gegl_buffer_iterator_next(%struct.GeglBufferIterator* %13)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %while.body, label %while.end.186

while.body:                                       ; preds = %while.cond
  %14 = load %struct.GeglBufferIterator*, %struct.GeglBufferIterator** %it, align 8
  %length = getelementptr inbounds %struct.GeglBufferIterator, %struct.GeglBufferIterator* %14, i32 0, i32 0
  %15 = load i32, i32* %length, align 4
  store i32 %15, i32* %n_pixels, align 4
  %16 = load %struct.GeglBufferIterator*, %struct.GeglBufferIterator** %it, align 8
  %roi12 = getelementptr inbounds %struct.GeglBufferIterator, %struct.GeglBufferIterator* %16, i32 0, i32 2
  %arraydecay = getelementptr inbounds [6 x %struct._GeglRectangle], [6 x %struct._GeglRectangle]* %roi12, i32 0, i32 0
  %x13 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %arraydecay, i32 0, i32 0
  %17 = load i32, i32* %x13, align 4
  store i32 %17, i32* %x, align 4
  %18 = load %struct.GeglBufferIterator*, %struct.GeglBufferIterator** %it, align 8
  %roi14 = getelementptr inbounds %struct.GeglBufferIterator, %struct.GeglBufferIterator* %18, i32 0, i32 2
  %arraydecay15 = getelementptr inbounds [6 x %struct._GeglRectangle], [6 x %struct._GeglRectangle]* %roi14, i32 0, i32 0
  %y16 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %arraydecay15, i32 0, i32 1
  %19 = load i32, i32* %y16, align 4
  store i32 %19, i32* %y, align 4
  %20 = load %struct.GeglBufferIterator*, %struct.GeglBufferIterator** %it, align 8
  %data = getelementptr inbounds %struct.GeglBufferIterator, %struct.GeglBufferIterator* %20, i32 0, i32 1
  %arrayidx = getelementptr inbounds [6 x i8*], [6 x i8*]* %data, i32 0, i64 0
  %21 = load i8*, i8** %arrayidx, align 8
  %22 = bitcast i8* %21 to float*
  store float* %22, float** %coef, align 8
  br label %while.cond.17

while.cond.17:                                    ; preds = %if.end.185, %while.body
  %23 = load i32, i32* %n_pixels, align 4
  %dec = add nsw i32 %23, -1
  store i32 %dec, i32* %n_pixels, align 4
  %tobool18 = icmp ne i32 %23, 0
  br i1 %tobool18, label %while.body.19, label %while.end

while.body.19:                                    ; preds = %while.cond.17
  %24 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config, align 8
  %25 = load i32, i32* %x, align 4
  %conv = sitofp i32 %25 to float
  %26 = load i32, i32* %y, align 4
  %conv20 = sitofp i32 %26 to float
  %call21 = call i32 @gimp_cage_config_point_inside(%struct._GimpCageConfig* %24, float %conv, float %conv20)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.169

if.then.23:                                       ; preds = %while.body.19
  %27 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config, align 8
  %cage_points = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %27, i32 0, i32 1
  %28 = load %struct._GArray*, %struct._GArray** %cage_points, align 8
  %data24 = getelementptr inbounds %struct._GArray, %struct._GArray* %28, i32 0, i32 0
  %29 = load i8*, i8** %data24, align 8
  %30 = bitcast i8* %29 to %struct._GimpCagePoint*
  %arrayidx25 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %30, i64 0
  store %struct._GimpCagePoint* %arrayidx25, %struct._GimpCagePoint** %last, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.23
  %31 = load i32, i32* %j, align 4
  %32 = load i32, i32* %n_cage_vertices, align 4
  %cmp = icmp ult i32 %31, %32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load i32, i32* %j, align 4
  %add = add nsw i32 %33, 1
  %34 = load i32, i32* %n_cage_vertices, align 4
  %rem = urem i32 %add, %34
  %idxprom = zext i32 %rem to i64
  %35 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config, align 8
  %cage_points27 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %35, i32 0, i32 1
  %36 = load %struct._GArray*, %struct._GArray** %cage_points27, align 8
  %data28 = getelementptr inbounds %struct._GArray, %struct._GArray* %36, i32 0, i32 0
  %37 = load i8*, i8** %data28, align 8
  %38 = bitcast i8* %37 to %struct._GimpCagePoint*
  %arrayidx29 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %38, i64 %idxprom
  store %struct._GimpCagePoint* %arrayidx29, %struct._GimpCagePoint** %current, align 8
  %39 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %last, align 8
  %src_point = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %39, i32 0, i32 0
  %40 = bitcast %struct._GimpVector2* %v1 to i8*
  %41 = bitcast %struct._GimpVector2* %src_point to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 16, i32 8, i1 false)
  %42 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %current, align 8
  %src_point30 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %42, i32 0, i32 0
  %43 = bitcast %struct._GimpVector2* %v2 to i8*
  %44 = bitcast %struct._GimpVector2* %src_point30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 16, i32 8, i1 false)
  %45 = load i32, i32* %x, align 4
  %conv31 = sitofp i32 %45 to double
  %x32 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p, i32 0, i32 0
  store double %conv31, double* %x32, align 8
  %46 = load i32, i32* %y, align 4
  %conv33 = sitofp i32 %46 to double
  %y34 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p, i32 0, i32 1
  store double %conv33, double* %y34, align 8
  %x35 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %v2, i32 0, i32 0
  %47 = load double, double* %x35, align 8
  %x36 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %v1, i32 0, i32 0
  %48 = load double, double* %x36, align 8
  %sub = fsub double %47, %48
  %x37 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %a, i32 0, i32 0
  store double %sub, double* %x37, align 8
  %y38 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %v2, i32 0, i32 1
  %49 = load double, double* %y38, align 8
  %y39 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %v1, i32 0, i32 1
  %50 = load double, double* %y39, align 8
  %sub40 = fsub double %49, %50
  %y41 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %a, i32 0, i32 1
  store double %sub40, double* %y41, align 8
  %call42 = call double @gimp_vector2_length(%struct._GimpVector2* %a)
  store double %call42, double* %absa, align 8
  %x43 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %v1, i32 0, i32 0
  %51 = load double, double* %x43, align 8
  %52 = load i32, i32* %x, align 4
  %conv44 = sitofp i32 %52 to double
  %sub45 = fsub double %51, %conv44
  %x46 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %b, i32 0, i32 0
  store double %sub45, double* %x46, align 8
  %y47 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %v1, i32 0, i32 1
  %53 = load double, double* %y47, align 8
  %54 = load i32, i32* %y, align 4
  %conv48 = sitofp i32 %54 to double
  %sub49 = fsub double %53, %conv48
  %y50 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %b, i32 0, i32 1
  store double %sub49, double* %y50, align 8
  %x51 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %a, i32 0, i32 0
  %55 = load double, double* %x51, align 8
  %x52 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %a, i32 0, i32 0
  %56 = load double, double* %x52, align 8
  %mul53 = fmul double %55, %56
  %y54 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %a, i32 0, i32 1
  %57 = load double, double* %y54, align 8
  %y55 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %a, i32 0, i32 1
  %58 = load double, double* %y55, align 8
  %mul56 = fmul double %57, %58
  %add57 = fadd double %mul53, %mul56
  store double %add57, double* %Q, align 8
  %x58 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %b, i32 0, i32 0
  %59 = load double, double* %x58, align 8
  %x59 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %b, i32 0, i32 0
  %60 = load double, double* %x59, align 8
  %mul60 = fmul double %59, %60
  %y61 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %b, i32 0, i32 1
  %61 = load double, double* %y61, align 8
  %y62 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %b, i32 0, i32 1
  %62 = load double, double* %y62, align 8
  %mul63 = fmul double %61, %62
  %add64 = fadd double %mul60, %mul63
  store double %add64, double* %S, align 8
  %x65 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %a, i32 0, i32 0
  %63 = load double, double* %x65, align 8
  %x66 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %b, i32 0, i32 0
  %64 = load double, double* %x66, align 8
  %mul67 = fmul double %63, %64
  %y68 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %a, i32 0, i32 1
  %65 = load double, double* %y68, align 8
  %y69 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %b, i32 0, i32 1
  %66 = load double, double* %y69, align 8
  %mul70 = fmul double %65, %66
  %add71 = fadd double %mul67, %mul70
  %mul72 = fmul double 2.000000e+00, %add71
  store double %mul72, double* %R, align 8
  %x73 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %b, i32 0, i32 0
  %67 = load double, double* %x73, align 8
  %y74 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %a, i32 0, i32 1
  %68 = load double, double* %y74, align 8
  %mul75 = fmul double %67, %68
  %y76 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %b, i32 0, i32 1
  %69 = load double, double* %y76, align 8
  %x77 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %a, i32 0, i32 0
  %70 = load double, double* %x77, align 8
  %mul78 = fmul double %69, %70
  %sub79 = fsub double %mul75, %mul78
  store double %sub79, double* %BA, align 8
  %71 = load double, double* %S, align 8
  %mul80 = fmul double 4.000000e+00, %71
  %72 = load double, double* %Q, align 8
  %mul81 = fmul double %mul80, %72
  %73 = load double, double* %R, align 8
  %74 = load double, double* %R, align 8
  %mul82 = fmul double %73, %74
  %sub83 = fsub double %mul81, %mul82
  %call84 = call double @sqrt(double %sub83) #5
  store double %call84, double* %SRT, align 8
  %75 = load double, double* %S, align 8
  %call85 = call double @log(double %75) #5
  store double %call85, double* %L0, align 8
  %76 = load double, double* %S, align 8
  %77 = load double, double* %Q, align 8
  %add86 = fadd double %76, %77
  %78 = load double, double* %R, align 8
  %add87 = fadd double %add86, %78
  %call88 = call double @log(double %add87) #5
  store double %call88, double* %L1, align 8
  %79 = load double, double* %R, align 8
  %80 = load double, double* %SRT, align 8
  %call89 = call double @atan2(double %79, double %80) #5
  %81 = load double, double* %SRT, align 8
  %div = fdiv double %call89, %81
  store double %div, double* %A0, align 8
  %82 = load double, double* %Q, align 8
  %mul90 = fmul double 2.000000e+00, %82
  %83 = load double, double* %R, align 8
  %add91 = fadd double %mul90, %83
  %84 = load double, double* %SRT, align 8
  %call92 = call double @atan2(double %add91, double %84) #5
  %85 = load double, double* %SRT, align 8
  %div93 = fdiv double %call92, %85
  store double %div93, double* %A1, align 8
  %86 = load double, double* %A1, align 8
  %87 = load double, double* %A0, align 8
  %sub94 = fsub double %86, %87
  store double %sub94, double* %A10, align 8
  %88 = load double, double* %L1, align 8
  %89 = load double, double* %L0, align 8
  %sub95 = fsub double %88, %89
  store double %sub95, double* %L10, align 8
  %90 = load double, double* %absa, align 8
  %sub96 = fsub double -0.000000e+00, %90
  %div97 = fdiv double %sub96, 0x402921FB54442D18
  %91 = load double, double* %S, align 8
  %mul98 = fmul double 4.000000e+00, %91
  %92 = load double, double* %R, align 8
  %93 = load double, double* %R, align 8
  %mul99 = fmul double %92, %93
  %94 = load double, double* %Q, align 8
  %div100 = fdiv double %mul99, %94
  %sub101 = fsub double %mul98, %div100
  %95 = load double, double* %A10, align 8
  %mul102 = fmul double %sub101, %95
  %96 = load double, double* %R, align 8
  %97 = load double, double* %Q, align 8
  %mul103 = fmul double 2.000000e+00, %97
  %div104 = fdiv double %96, %mul103
  %98 = load double, double* %L10, align 8
  %mul105 = fmul double %div104, %98
  %add106 = fadd double %mul102, %mul105
  %99 = load double, double* %L1, align 8
  %add107 = fadd double %add106, %99
  %sub108 = fsub double %add107, 2.000000e+00
  %mul109 = fmul double %div97, %sub108
  %conv110 = fptrunc double %mul109 to float
  %100 = load i32, i32* %j, align 4
  %101 = load i32, i32* %n_cage_vertices, align 4
  %add111 = add i32 %100, %101
  %idxprom112 = zext i32 %add111 to i64
  %102 = load float*, float** %coef, align 8
  %arrayidx113 = getelementptr inbounds float, float* %102, i64 %idxprom112
  store float %conv110, float* %arrayidx113, align 4
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %103 = load i32, i32* %j, align 4
  %104 = load i32, i32* %n_cage_vertices, align 4
  %add114 = add i32 %103, %104
  %idxprom115 = zext i32 %add114 to i64
  %105 = load float*, float** %coef, align 8
  %arrayidx116 = getelementptr inbounds float, float* %105, i64 %idxprom115
  %106 = load float, float* %arrayidx116, align 4
  %call117 = call i32 @__isnanf(float %106) #6
  %tobool118 = icmp ne i32 %call117, 0
  br i1 %tobool118, label %if.then.133, label %if.end.137

cond.false:                                       ; preds = %for.body
  br i1 false, label %cond.true.119, label %cond.false.126

cond.true.119:                                    ; preds = %cond.false
  %107 = load i32, i32* %j, align 4
  %108 = load i32, i32* %n_cage_vertices, align 4
  %add120 = add i32 %107, %108
  %idxprom121 = zext i32 %add120 to i64
  %109 = load float*, float** %coef, align 8
  %arrayidx122 = getelementptr inbounds float, float* %109, i64 %idxprom121
  %110 = load float, float* %arrayidx122, align 4
  %conv123 = fpext float %110 to double
  %call124 = call i32 @__isnan(double %conv123) #6
  %tobool125 = icmp ne i32 %call124, 0
  br i1 %tobool125, label %if.then.133, label %if.end.137

cond.false.126:                                   ; preds = %cond.false
  %111 = load i32, i32* %j, align 4
  %112 = load i32, i32* %n_cage_vertices, align 4
  %add127 = add i32 %111, %112
  %idxprom128 = zext i32 %add127 to i64
  %113 = load float*, float** %coef, align 8
  %arrayidx129 = getelementptr inbounds float, float* %113, i64 %idxprom128
  %114 = load float, float* %arrayidx129, align 4
  %conv130 = fpext float %114 to x86_fp80
  %call131 = call i32 @__isnanl(x86_fp80 %conv130) #6
  %tobool132 = icmp ne i32 %call131, 0
  br i1 %tobool132, label %if.then.133, label %if.end.137

if.then.133:                                      ; preds = %cond.false.126, %cond.true.119, %cond.true
  %115 = load i32, i32* %j, align 4
  %116 = load i32, i32* %n_cage_vertices, align 4
  %add134 = add i32 %115, %116
  %idxprom135 = zext i32 %add134 to i64
  %117 = load float*, float** %coef, align 8
  %arrayidx136 = getelementptr inbounds float, float* %117, i64 %idxprom135
  store float 0.000000e+00, float* %arrayidx136, align 4
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.133, %cond.false.126, %cond.true.119, %cond.true
  %call138 = call i32 @gimp_operation_cage_coef_calc_is_on_straight(%struct._GimpVector2* %v1, %struct._GimpVector2* %v2, %struct._GimpVector2* %p)
  %tobool139 = icmp ne i32 %call138, 0
  br i1 %tobool139, label %if.end.168, label %if.then.140

if.then.140:                                      ; preds = %if.end.137
  %118 = load double, double* %BA, align 8
  %div141 = fdiv double %118, 0x401921FB54442D18
  %119 = load double, double* %L10, align 8
  %120 = load double, double* %Q, align 8
  %mul142 = fmul double 2.000000e+00, %120
  %div143 = fdiv double %119, %mul142
  %121 = load double, double* %A10, align 8
  %122 = load double, double* %R, align 8
  %123 = load double, double* %Q, align 8
  %div144 = fdiv double %122, %123
  %add145 = fadd double 2.000000e+00, %div144
  %mul146 = fmul double %121, %add145
  %sub147 = fsub double %div143, %mul146
  %mul148 = fmul double %div141, %sub147
  %124 = load i32, i32* %j, align 4
  %idxprom149 = sext i32 %124 to i64
  %125 = load float*, float** %coef, align 8
  %arrayidx150 = getelementptr inbounds float, float* %125, i64 %idxprom149
  %126 = load float, float* %arrayidx150, align 4
  %conv151 = fpext float %126 to double
  %add152 = fadd double %conv151, %mul148
  %conv153 = fptrunc double %add152 to float
  store float %conv153, float* %arrayidx150, align 4
  %127 = load double, double* %BA, align 8
  %div154 = fdiv double %127, 0x401921FB54442D18
  %128 = load double, double* %L10, align 8
  %129 = load double, double* %Q, align 8
  %mul155 = fmul double 2.000000e+00, %129
  %div156 = fdiv double %128, %mul155
  %130 = load double, double* %A10, align 8
  %131 = load double, double* %R, align 8
  %132 = load double, double* %Q, align 8
  %div157 = fdiv double %131, %132
  %mul158 = fmul double %130, %div157
  %sub159 = fsub double %div156, %mul158
  %mul160 = fmul double %div154, %sub159
  %133 = load i32, i32* %j, align 4
  %add161 = add nsw i32 %133, 1
  %134 = load i32, i32* %n_cage_vertices, align 4
  %rem162 = urem i32 %add161, %134
  %idxprom163 = zext i32 %rem162 to i64
  %135 = load float*, float** %coef, align 8
  %arrayidx164 = getelementptr inbounds float, float* %135, i64 %idxprom163
  %136 = load float, float* %arrayidx164, align 4
  %conv165 = fpext float %136 to double
  %sub166 = fsub double %conv165, %mul160
  %conv167 = fptrunc double %sub166 to float
  store float %conv167, float* %arrayidx164, align 4
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.140, %if.end.137
  %137 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %current, align 8
  store %struct._GimpCagePoint* %137, %struct._GimpCagePoint** %last, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.168
  %138 = load i32, i32* %j, align 4
  %inc = add nsw i32 %138, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.169

if.end.169:                                       ; preds = %for.end, %while.body.19
  %139 = load i32, i32* %n_cage_vertices, align 4
  %mul170 = mul i32 2, %139
  %140 = load float*, float** %coef, align 8
  %idx.ext = zext i32 %mul170 to i64
  %add.ptr = getelementptr inbounds float, float* %140, i64 %idx.ext
  store float* %add.ptr, float** %coef, align 8
  %141 = load i32, i32* %x, align 4
  %inc171 = add nsw i32 %141, 1
  store i32 %inc171, i32* %x, align 4
  %142 = load i32, i32* %x, align 4
  %143 = load %struct.GeglBufferIterator*, %struct.GeglBufferIterator** %it, align 8
  %roi172 = getelementptr inbounds %struct.GeglBufferIterator, %struct.GeglBufferIterator* %143, i32 0, i32 2
  %arraydecay173 = getelementptr inbounds [6 x %struct._GeglRectangle], [6 x %struct._GeglRectangle]* %roi172, i32 0, i32 0
  %x174 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %arraydecay173, i32 0, i32 0
  %144 = load i32, i32* %x174, align 4
  %145 = load %struct.GeglBufferIterator*, %struct.GeglBufferIterator** %it, align 8
  %roi175 = getelementptr inbounds %struct.GeglBufferIterator, %struct.GeglBufferIterator* %145, i32 0, i32 2
  %arraydecay176 = getelementptr inbounds [6 x %struct._GeglRectangle], [6 x %struct._GeglRectangle]* %roi175, i32 0, i32 0
  %width = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %arraydecay176, i32 0, i32 2
  %146 = load i32, i32* %width, align 4
  %add177 = add nsw i32 %144, %146
  %cmp178 = icmp sge i32 %142, %add177
  br i1 %cmp178, label %if.then.180, label %if.end.185

if.then.180:                                      ; preds = %if.end.169
  %147 = load %struct.GeglBufferIterator*, %struct.GeglBufferIterator** %it, align 8
  %roi181 = getelementptr inbounds %struct.GeglBufferIterator, %struct.GeglBufferIterator* %147, i32 0, i32 2
  %arraydecay182 = getelementptr inbounds [6 x %struct._GeglRectangle], [6 x %struct._GeglRectangle]* %roi181, i32 0, i32 0
  %x183 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %arraydecay182, i32 0, i32 0
  %148 = load i32, i32* %x183, align 4
  store i32 %148, i32* %x, align 4
  %149 = load i32, i32* %y, align 4
  %inc184 = add nsw i32 %149, 1
  store i32 %inc184, i32* %y, align 4
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.180, %if.end.169
  br label %while.cond.17

while.end:                                        ; preds = %while.cond.17
  br label %while.cond

while.end.186:                                    ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end.186, %if.then
  %150 = load i32, i32* %retval
  ret i32 %150
}

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_cage_coef_calc_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %self = alloca %struct._GimpOperationCageCoefCalc*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_operation_cage_coef_calc_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpOperationCageCoefCalc*
  store %struct._GimpOperationCageCoefCalc* %2, %struct._GimpOperationCageCoefCalc** %self, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpOperationCageCoefCalc*, %struct._GimpOperationCageCoefCalc** %self, align 8
  %config = getelementptr inbounds %struct._GimpOperationCageCoefCalc, %struct._GimpOperationCageCoefCalc* %5, i32 0, i32 1
  %6 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config, align 8
  %7 = bitcast %struct._GimpCageConfig* %6 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %8, %struct._GObject** %_glib__object, align 8
  %9 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %9, %struct._GParamSpec** %_glib__pspec, align 8
  %10 = load i32, i32* %property_id.addr, align 4
  store i32 %10, i32* %_glib__property_id, align 4
  %11 = load i32, i32* %_glib__property_id, align 4
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %12, i32 0, i32 1
  %13 = load i8*, i8** %name, align 8
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %15 = bitcast %struct._GParamSpec* %14 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type, align 8
  %call2 = call i8* @g_type_name(i64 %17)
  %18 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %19 = bitcast %struct._GObject* %18 to %struct._GTypeInstance*
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type4 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type4, align 8
  %call5 = call i8* @g_type_name(i64 %21)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0), i32 137, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 %11, i8* %13, i8* %call2, i8* %call5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_cage_coef_calc_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %self = alloca %struct._GimpOperationCageCoefCalc*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_operation_cage_coef_calc_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpOperationCageCoefCalc*
  store %struct._GimpOperationCageCoefCalc* %2, %struct._GimpOperationCageCoefCalc** %self, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpOperationCageCoefCalc*, %struct._GimpOperationCageCoefCalc** %self, align 8
  %config = getelementptr inbounds %struct._GimpOperationCageCoefCalc, %struct._GimpOperationCageCoefCalc* %4, i32 0, i32 1
  %5 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config, align 8
  %tobool = icmp ne %struct._GimpCageConfig* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %6 = load %struct._GimpOperationCageCoefCalc*, %struct._GimpOperationCageCoefCalc** %self, align 8
  %config2 = getelementptr inbounds %struct._GimpOperationCageCoefCalc, %struct._GimpOperationCageCoefCalc* %6, i32 0, i32 1
  %7 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config2, align 8
  %8 = bitcast %struct._GimpCageConfig* %7 to i8*
  call void @g_object_unref(i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call3 = call i8* @g_value_dup_object(%struct._GValue* %9)
  %10 = bitcast i8* %call3 to %struct._GimpCageConfig*
  %11 = load %struct._GimpOperationCageCoefCalc*, %struct._GimpOperationCageCoefCalc** %self, align 8
  %config4 = getelementptr inbounds %struct._GimpOperationCageCoefCalc, %struct._GimpOperationCageCoefCalc* %11, i32 0, i32 1
  store %struct._GimpCageConfig* %10, %struct._GimpCageConfig** %config4, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %12, %struct._GObject** %_glib__object, align 8
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %13, %struct._GParamSpec** %_glib__pspec, align 8
  %14 = load i32, i32* %property_id.addr, align 4
  store i32 %14, i32* %_glib__property_id, align 4
  %15 = load i32, i32* %_glib__property_id, align 4
  %16 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %16, i32 0, i32 1
  %17 = load i8*, i8** %name, align 8
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %19 = bitcast %struct._GParamSpec* %18 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type, align 8
  %call5 = call i8* @g_type_name(i64 %21)
  %22 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %23 = bitcast %struct._GObject* %22 to %struct._GTypeInstance*
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type7 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %24, i32 0, i32 0
  %25 = load i64, i64* %g_type7, align 8
  %call8 = call i8* @g_type_name(i64 %25)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0), i32 159, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 %15, i8* %17, i8* %call5, i8* %call8)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_cage_coef_calc_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %self = alloca %struct._GimpOperationCageCoefCalc*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_operation_cage_coef_calc_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpOperationCageCoefCalc*
  store %struct._GimpOperationCageCoefCalc* %2, %struct._GimpOperationCageCoefCalc** %self, align 8
  %3 = load %struct._GimpOperationCageCoefCalc*, %struct._GimpOperationCageCoefCalc** %self, align 8
  %config = getelementptr inbounds %struct._GimpOperationCageCoefCalc, %struct._GimpOperationCageCoefCalc* %3, i32 0, i32 1
  %4 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config, align 8
  %tobool = icmp ne %struct._GimpCageConfig* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpOperationCageCoefCalc*, %struct._GimpOperationCageCoefCalc** %self, align 8
  %config2 = getelementptr inbounds %struct._GimpOperationCageCoefCalc, %struct._GimpOperationCageCoefCalc* %5, i32 0, i32 1
  %6 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config2, align 8
  %7 = bitcast %struct._GimpCageConfig* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpOperationCageCoefCalc*, %struct._GimpOperationCageCoefCalc** %self, align 8
  %config3 = getelementptr inbounds %struct._GimpOperationCageCoefCalc, %struct._GimpOperationCageCoefCalc* %8, i32 0, i32 1
  store %struct._GimpCageConfig* null, %struct._GimpCageConfig** %config3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** @gimp_operation_cage_coef_calc_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 80)
  %11 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 6
  %12 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %12(%struct._GObject* %13)
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_cage_config_get_type() #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @gegl_operation_set_format(%struct._GeglOperation*, i8*, %union._Babl*) #1

declare %union._Babl* @babl_format_n(%union._Babl*, i32) #1

declare %union._Babl* @babl_type(i8*) #1

declare i32 @gimp_cage_config_get_n_points(%struct._GimpCageConfig*) #1

declare { i64, i64 } @gimp_cage_config_get_bounding_box(%struct._GimpCageConfig*) #1

declare %struct.GeglBufferIterator* @gegl_buffer_iterator_new(%struct._GeglBuffer*, %struct._GeglRectangle*, i32, %union._Babl*, i32, i32) #1

declare i32 @gegl_buffer_iterator_next(%struct.GeglBufferIterator*) #1

declare i32 @gimp_cage_config_point_inside(%struct._GimpCageConfig*, float, float) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare double @gimp_vector2_length(%struct._GimpVector2*) #1

; Function Attrs: nounwind
declare double @sqrt(double) #4

; Function Attrs: nounwind
declare double @log(double) #4

; Function Attrs: nounwind
declare double @atan2(double, double) #4

; Function Attrs: nounwind readnone
declare i32 @__isnanf(float) #2

; Function Attrs: nounwind readnone
declare i32 @__isnan(double) #2

; Function Attrs: nounwind readnone
declare i32 @__isnanl(x86_fp80) #2

; Function Attrs: nounwind uwtable
define internal i32 @gimp_operation_cage_coef_calc_is_on_straight(%struct._GimpVector2* %d1, %struct._GimpVector2* %d2, %struct._GimpVector2* %p) #3 {
entry:
  %d1.addr = alloca %struct._GimpVector2*, align 8
  %d2.addr = alloca %struct._GimpVector2*, align 8
  %p.addr = alloca %struct._GimpVector2*, align 8
  %v1 = alloca %struct._GimpVector2, align 8
  %v2 = alloca %struct._GimpVector2, align 8
  %deter = alloca float, align 4
  store %struct._GimpVector2* %d1, %struct._GimpVector2** %d1.addr, align 8
  store %struct._GimpVector2* %d2, %struct._GimpVector2** %d2.addr, align 8
  store %struct._GimpVector2* %p, %struct._GimpVector2** %p.addr, align 8
  %0 = load %struct._GimpVector2*, %struct._GimpVector2** %p.addr, align 8
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %0, i32 0, i32 0
  %1 = load double, double* %x, align 8
  %2 = load %struct._GimpVector2*, %struct._GimpVector2** %d1.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %2, i32 0, i32 0
  %3 = load double, double* %x1, align 8
  %sub = fsub double %1, %3
  %x2 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %v1, i32 0, i32 0
  store double %sub, double* %x2, align 8
  %4 = load %struct._GimpVector2*, %struct._GimpVector2** %p.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %4, i32 0, i32 1
  %5 = load double, double* %y, align 8
  %6 = load %struct._GimpVector2*, %struct._GimpVector2** %d1.addr, align 8
  %y3 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %6, i32 0, i32 1
  %7 = load double, double* %y3, align 8
  %sub4 = fsub double %5, %7
  %y5 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %v1, i32 0, i32 1
  store double %sub4, double* %y5, align 8
  %8 = load %struct._GimpVector2*, %struct._GimpVector2** %d2.addr, align 8
  %x6 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %8, i32 0, i32 0
  %9 = load double, double* %x6, align 8
  %10 = load %struct._GimpVector2*, %struct._GimpVector2** %d1.addr, align 8
  %x7 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %10, i32 0, i32 0
  %11 = load double, double* %x7, align 8
  %sub8 = fsub double %9, %11
  %x9 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %v2, i32 0, i32 0
  store double %sub8, double* %x9, align 8
  %12 = load %struct._GimpVector2*, %struct._GimpVector2** %d2.addr, align 8
  %y10 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %12, i32 0, i32 1
  %13 = load double, double* %y10, align 8
  %14 = load %struct._GimpVector2*, %struct._GimpVector2** %d1.addr, align 8
  %y11 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %14, i32 0, i32 1
  %15 = load double, double* %y11, align 8
  %sub12 = fsub double %13, %15
  %y13 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %v2, i32 0, i32 1
  store double %sub12, double* %y13, align 8
  call void @gimp_vector2_normalize(%struct._GimpVector2* %v1)
  call void @gimp_vector2_normalize(%struct._GimpVector2* %v2)
  %x14 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %v1, i32 0, i32 0
  %16 = load double, double* %x14, align 8
  %y15 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %v2, i32 0, i32 1
  %17 = load double, double* %y15, align 8
  %mul = fmul double %16, %17
  %x16 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %v2, i32 0, i32 0
  %18 = load double, double* %x16, align 8
  %y17 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %v1, i32 0, i32 1
  %19 = load double, double* %y17, align 8
  %mul18 = fmul double %18, %19
  %sub19 = fsub double %mul, %mul18
  %conv = fptrunc double %sub19 to float
  store float %conv, float* %deter, align 4
  %20 = load float, float* %deter, align 4
  %conv20 = fpext float %20 to double
  %cmp = fcmp olt double %conv20, 1.000000e-09
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %21 = load float, float* %deter, align 4
  %conv22 = fpext float %21 to double
  %cmp23 = fcmp ogt double %conv22, -1.000000e-09
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %22 = phi i1 [ false, %entry ], [ %cmp23, %land.rhs ]
  %land.ext = zext i1 %22 to i32
  ret i32 %land.ext
}

declare void @gimp_vector2_normalize(%struct._GimpVector2*) #1

declare void @g_value_set_object(%struct._GValue*, i8*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @g_object_unref(i8*) #1

declare i8* @g_value_dup_object(%struct._GValue*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
