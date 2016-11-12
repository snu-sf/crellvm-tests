; ModuleID = './app/gegl/gimpoperationcagetransform.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GeglRectangle = type { i32, i32, i32, i32 }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpOperationCageTransformClass = type { %struct._GeglOperationComposerClass }
%struct._GeglOperationComposerClass = type { %struct._GeglOperationClass, i32 (%struct._GeglOperation*, %struct._GeglBuffer*, %struct._GeglBuffer*, %struct._GeglBuffer*, %struct._GeglRectangle*, i32)*, [4 x i8*] }
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
%struct._GeglOperationContext = type opaque
%struct._GeglBuffer = type opaque
%struct._GimpOperationCageTransform = type { %struct._GeglOperationComposer, %struct._GimpCageConfig*, i32, %union._Babl*, double }
%struct._GeglOperationComposer = type { %struct._GeglOperation }
%struct._GimpCageConfig = type { %struct._GimpImageMapConfig, %struct._GArray*, double, double, i32 }
%struct._GimpImageMapConfig = type { %struct._GimpViewable, i32 }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GArray = type { i8*, i32 }
%union._Babl = type opaque
%struct._GimpVector2 = type { double, double }
%struct.GeglBufferIterator = type { i32, [6 x i8*], [6 x %struct._GeglRectangle], i32 }
%struct._GimpCagePoint = type { %struct._GimpVector2, %struct._GimpVector2, %struct._GimpVector2, double, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_operation_cage_transform_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"GimpOperationCageTransform\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@gimp_operation_cage_transform_parent_class = internal global i8* null, align 8
@GimpOperationCageTransform_private_offset = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"gimp:cage-transform\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"categories\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"transform\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.7 = private unnamed_addr constant [82 x i8] c"Convert a set of coefficient buffer to a coordinate buffer for the GIMP cage tool\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Config\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"A GimpCageConfig object, that define the transformation\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"fill-plain-color\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"Fill with plain color\00", align 1
@.str.13 = private unnamed_addr constant [58 x i8] c"Fill the original position of the cage with a plain color\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"progress\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"Progress\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"Progress indicator, and a bad hack\00", align 1
@.str.17 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"gimpoperationcagetransform.c\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"Gimp-GEGL\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@gimp_operation_cage_transform_interpolate_source_coords_recurs.rect = private unnamed_addr constant %struct._GeglRectangle { i32 0, i32 0, i32 1, i32 1 }, align 4

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_operation_cage_transform_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_operation_cage_transform_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_operation_cage_transform_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gegl_operation_composer_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 352, void (i8*, i8*)* bitcast (void (i8*)* @gimp_operation_cage_transform_class_intern_init to void (i8*, i8*)*), i32 64, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpOperationCageTransform*)* @gimp_operation_cage_transform_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_operation_cage_transform_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_operation_cage_transform_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gegl_operation_composer_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_cage_transform_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_operation_cage_transform_parent_class, align 8
  %1 = load i32, i32* @GimpOperationCageTransform_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpOperationCageTransform_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpOperationCageTransformClass*
  call void @gimp_operation_cage_transform_class_init(%struct._GimpOperationCageTransformClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_cage_transform_init(%struct._GimpOperationCageTransform* %self) #3 {
entry:
  %self.addr = alloca %struct._GimpOperationCageTransform*, align 8
  store %struct._GimpOperationCageTransform* %self, %struct._GimpOperationCageTransform** %self.addr, align 8
  %call = call %union._Babl* @babl_type(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0))
  %call1 = call %union._Babl* @babl_format_n(%union._Babl* %call, i32 2)
  %0 = load %struct._GimpOperationCageTransform*, %struct._GimpOperationCageTransform** %self.addr, align 8
  %format_coords = getelementptr inbounds %struct._GimpOperationCageTransform, %struct._GimpOperationCageTransform* %0, i32 0, i32 3
  store %union._Babl* %call1, %union._Babl** %format_coords, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define { i64, i64 } @gimp_operation_cage_transform_get_cached_region(%struct._GeglOperation* %operation, %struct._GeglRectangle* %roi) #3 {
entry:
  %retval = alloca %struct._GeglRectangle, align 4
  %operation.addr = alloca %struct._GeglOperation*, align 8
  %roi.addr = alloca %struct._GeglRectangle*, align 8
  %result = alloca %struct._GeglRectangle, align 4
  store %struct._GeglOperation* %operation, %struct._GeglOperation** %operation.addr, align 8
  store %struct._GeglRectangle* %roi, %struct._GeglRectangle** %roi.addr, align 8
  %0 = load %struct._GeglOperation*, %struct._GeglOperation** %operation.addr, align 8
  %call = call %struct._GeglRectangle* @gegl_operation_source_get_bounding_box(%struct._GeglOperation* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  %1 = bitcast %struct._GeglRectangle* %result to i8*
  %2 = bitcast %struct._GeglRectangle* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 16, i32 4, i1 false)
  %3 = bitcast %struct._GeglRectangle* %retval to i8*
  %4 = bitcast %struct._GeglRectangle* %result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 16, i32 4, i1 false)
  %5 = bitcast %struct._GeglRectangle* %retval to { i64, i64 }*
  %6 = load { i64, i64 }, { i64, i64 }* %5, align 4
  ret { i64, i64 } %6
}

declare %struct._GeglRectangle* @gegl_operation_source_get_bounding_box(%struct._GeglOperation*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define { i64, i64 } @gimp_operation_cage_transform_get_required_for_output(%struct._GeglOperation* %operation, i8* %input_pad, %struct._GeglRectangle* %roi) #3 {
entry:
  %retval = alloca %struct._GeglRectangle, align 4
  %operation.addr = alloca %struct._GeglOperation*, align 8
  %input_pad.addr = alloca i8*, align 8
  %roi.addr = alloca %struct._GeglRectangle*, align 8
  %result = alloca %struct._GeglRectangle, align 4
  store %struct._GeglOperation* %operation, %struct._GeglOperation** %operation.addr, align 8
  store i8* %input_pad, i8** %input_pad.addr, align 8
  store %struct._GeglRectangle* %roi, %struct._GeglRectangle** %roi.addr, align 8
  %0 = load %struct._GeglOperation*, %struct._GeglOperation** %operation.addr, align 8
  %call = call %struct._GeglRectangle* @gegl_operation_source_get_bounding_box(%struct._GeglOperation* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  %1 = bitcast %struct._GeglRectangle* %result to i8*
  %2 = bitcast %struct._GeglRectangle* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 16, i32 4, i1 false)
  %3 = bitcast %struct._GeglRectangle* %retval to i8*
  %4 = bitcast %struct._GeglRectangle* %result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 16, i32 4, i1 false)
  %5 = bitcast %struct._GeglRectangle* %retval to { i64, i64 }*
  %6 = load { i64, i64 }, { i64, i64 }* %5, align 4
  ret { i64, i64 } %6
}

; Function Attrs: nounwind uwtable
define { i64, i64 } @gimp_operation_cage_transform_get_bounding_box(%struct._GeglOperation* %operation) #3 {
entry:
  %retval = alloca %struct._GeglRectangle, align 4
  %operation.addr = alloca %struct._GeglOperation*, align 8
  %result = alloca %struct._GeglRectangle, align 4
  store %struct._GeglOperation* %operation, %struct._GeglOperation** %operation.addr, align 8
  %0 = load %struct._GeglOperation*, %struct._GeglOperation** %operation.addr, align 8
  %call = call %struct._GeglRectangle* @gegl_operation_source_get_bounding_box(%struct._GeglOperation* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  %1 = bitcast %struct._GeglRectangle* %result to i8*
  %2 = bitcast %struct._GeglRectangle* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 16, i32 4, i1 false)
  %3 = bitcast %struct._GeglRectangle* %retval to i8*
  %4 = bitcast %struct._GeglRectangle* %result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 16, i32 4, i1 false)
  %5 = bitcast %struct._GeglRectangle* %retval to { i64, i64 }*
  %6 = load { i64, i64 }, { i64, i64 }* %5, align 4
  ret { i64, i64 } %6
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_cage_transform_class_init(%struct._GimpOperationCageTransformClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpOperationCageTransformClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %operation_class = alloca %struct._GeglOperationClass*, align 8
  %filter_class = alloca %struct._GeglOperationComposerClass*, align 8
  store %struct._GimpOperationCageTransformClass* %klass, %struct._GimpOperationCageTransformClass** %klass.addr, align 8
  %0 = load %struct._GimpOperationCageTransformClass*, %struct._GimpOperationCageTransformClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpOperationCageTransformClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpOperationCageTransformClass*, %struct._GimpOperationCageTransformClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpOperationCageTransformClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gegl_operation_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GeglOperationClass*
  store %struct._GeglOperationClass* %5, %struct._GeglOperationClass** %operation_class, align 8
  %6 = load %struct._GimpOperationCageTransformClass*, %struct._GimpOperationCageTransformClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpOperationCageTransformClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gegl_operation_composer_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GeglOperationComposerClass*
  store %struct._GeglOperationComposerClass* %8, %struct._GeglOperationComposerClass** %filter_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_operation_cage_transform_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_operation_cage_transform_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_operation_cage_transform_finalize, void (%struct._GObject*)** %finalize, align 8
  %12 = load %struct._GeglOperationClass*, %struct._GeglOperationClass** %operation_class, align 8
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.7, i32 0, i32 0)) #4
  call void (%struct._GeglOperationClass*, i8*, ...) @gegl_operation_class_set_keys(%struct._GeglOperationClass* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* %call5, i8* null)
  %13 = load %struct._GeglOperationClass*, %struct._GeglOperationClass** %operation_class, align 8
  %prepare = getelementptr inbounds %struct._GeglOperationClass, %struct._GeglOperationClass* %13, i32 0, i32 6
  store void (%struct._GeglOperation*)* @gimp_operation_cage_transform_prepare, void (%struct._GeglOperation*)** %prepare, align 8
  %14 = load %struct._GeglOperationClass*, %struct._GeglOperationClass** %operation_class, align 8
  %get_required_for_output = getelementptr inbounds %struct._GeglOperationClass, %struct._GeglOperationClass* %14, i32 0, i32 9
  store { i64, i64 } (%struct._GeglOperation*, i8*, %struct._GeglRectangle*)* @gimp_operation_cage_transform_get_required_for_output, { i64, i64 } (%struct._GeglOperation*, i8*, %struct._GeglRectangle*)** %get_required_for_output, align 8
  %15 = load %struct._GeglOperationClass*, %struct._GeglOperationClass** %operation_class, align 8
  %get_cached_region = getelementptr inbounds %struct._GeglOperationClass, %struct._GeglOperationClass* %15, i32 0, i32 10
  store { i64, i64 } (%struct._GeglOperation*, %struct._GeglRectangle*)* @gimp_operation_cage_transform_get_cached_region, { i64, i64 } (%struct._GeglOperation*, %struct._GeglRectangle*)** %get_cached_region, align 8
  %16 = load %struct._GeglOperationClass*, %struct._GeglOperationClass** %operation_class, align 8
  %no_cache = getelementptr inbounds %struct._GeglOperationClass, %struct._GeglOperationClass* %16, i32 0, i32 4
  %bf.load = load i64, i64* %no_cache, align 8
  %bf.clear = and i64 %bf.load, -2
  store i64 %bf.clear, i64* %no_cache, align 8
  %17 = load %struct._GeglOperationClass*, %struct._GeglOperationClass** %operation_class, align 8
  %get_bounding_box = getelementptr inbounds %struct._GeglOperationClass, %struct._GeglOperationClass* %17, i32 0, i32 7
  store { i64, i64 } (%struct._GeglOperation*)* @gimp_operation_cage_transform_get_bounding_box, { i64, i64 } (%struct._GeglOperation*)** %get_bounding_box, align 8
  %18 = load %struct._GeglOperationComposerClass*, %struct._GeglOperationComposerClass** %filter_class, align 8
  %process = getelementptr inbounds %struct._GeglOperationComposerClass, %struct._GeglOperationComposerClass* %18, i32 0, i32 1
  store i32 (%struct._GeglOperation*, %struct._GeglBuffer*, %struct._GeglBuffer*, %struct._GeglBuffer*, %struct._GeglRectangle*, i32)* @gimp_operation_cage_transform_process, i32 (%struct._GeglOperation*, %struct._GeglBuffer*, %struct._GeglBuffer*, %struct._GeglBuffer*, %struct._GeglRectangle*, i32)** %process, align 8
  %19 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call i64 @gimp_cage_config_get_type() #6
  %call7 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i32 0, i32 0), i64 %call6, i32 7)
  call void @g_object_class_install_property(%struct._GObjectClass* %19, i32 1, %struct._GParamSpec* %call7)
  %20 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0)) #4
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.13, i32 0, i32 0)) #4
  %call10 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* %call8, i8* %call9, i32 0, i32 3)
  call void @g_object_class_install_property(%struct._GObjectClass* %20, i32 2, %struct._GParamSpec* %call10)
  %21 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call11 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i32 0, i32 0), double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, i32 1)
  call void @g_object_class_install_property(%struct._GObjectClass* %21, i32 3, %struct._GParamSpec* %call11)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gegl_operation_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_cage_transform_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %self = alloca %struct._GimpOperationCageTransform*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_operation_cage_transform_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpOperationCageTransform*
  store %struct._GimpOperationCageTransform* %2, %struct._GimpOperationCageTransform** %self, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpOperationCageTransform*, %struct._GimpOperationCageTransform** %self, align 8
  %config = getelementptr inbounds %struct._GimpOperationCageTransform, %struct._GimpOperationCageTransform* %5, i32 0, i32 1
  %6 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config, align 8
  %7 = bitcast %struct._GimpCageConfig* %6 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %9 = load %struct._GimpOperationCageTransform*, %struct._GimpOperationCageTransform** %self, align 8
  %fill_plain_color = getelementptr inbounds %struct._GimpOperationCageTransform, %struct._GimpOperationCageTransform* %9, i32 0, i32 2
  %10 = load i32, i32* %fill_plain_color, align 4
  call void @g_value_set_boolean(%struct._GValue* %8, i32 %10)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %12 = load %struct._GimpOperationCageTransform*, %struct._GimpOperationCageTransform** %self, align 8
  %progress = getelementptr inbounds %struct._GimpOperationCageTransform, %struct._GimpOperationCageTransform* %12, i32 0, i32 4
  %13 = load double, double* %progress, align 8
  call void @g_value_set_double(%struct._GValue* %11, double %13)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %14, %struct._GObject** %_glib__object, align 8
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %15, %struct._GParamSpec** %_glib__pspec, align 8
  %16 = load i32, i32* %property_id.addr, align 4
  store i32 %16, i32* %_glib__property_id, align 4
  %17 = load i32, i32* %_glib__property_id, align 4
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %18, i32 0, i32 1
  %19 = load i8*, i8** %name, align 8
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %21 = bitcast %struct._GParamSpec* %20 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type, align 8
  %call4 = call i8* @g_type_name(i64 %23)
  %24 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %25 = bitcast %struct._GObject* %24 to %struct._GTypeInstance*
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %25, i32 0, i32 0
  %26 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type6 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %26, i32 0, i32 0
  %27 = load i64, i64* %g_type6, align 8
  %call7 = call i8* @g_type_name(i64 %27)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i32 0, i32 0), i32 182, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 %17, i8* %19, i8* %call4, i8* %call7)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_cage_transform_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %self = alloca %struct._GimpOperationCageTransform*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_operation_cage_transform_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpOperationCageTransform*
  store %struct._GimpOperationCageTransform* %2, %struct._GimpOperationCageTransform** %self, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpOperationCageTransform*, %struct._GimpOperationCageTransform** %self, align 8
  %config = getelementptr inbounds %struct._GimpOperationCageTransform, %struct._GimpOperationCageTransform* %4, i32 0, i32 1
  %5 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config, align 8
  %tobool = icmp ne %struct._GimpCageConfig* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %6 = load %struct._GimpOperationCageTransform*, %struct._GimpOperationCageTransform** %self, align 8
  %config2 = getelementptr inbounds %struct._GimpOperationCageTransform, %struct._GimpOperationCageTransform* %6, i32 0, i32 1
  %7 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config2, align 8
  %8 = bitcast %struct._GimpCageConfig* %7 to i8*
  call void @g_object_unref(i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call3 = call i8* @g_value_dup_object(%struct._GValue* %9)
  %10 = bitcast i8* %call3 to %struct._GimpCageConfig*
  %11 = load %struct._GimpOperationCageTransform*, %struct._GimpOperationCageTransform** %self, align 8
  %config4 = getelementptr inbounds %struct._GimpOperationCageTransform, %struct._GimpOperationCageTransform* %11, i32 0, i32 1
  store %struct._GimpCageConfig* %10, %struct._GimpCageConfig** %config4, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i32 @g_value_get_boolean(%struct._GValue* %12)
  %13 = load %struct._GimpOperationCageTransform*, %struct._GimpOperationCageTransform** %self, align 8
  %fill_plain_color = getelementptr inbounds %struct._GimpOperationCageTransform, %struct._GimpOperationCageTransform* %13, i32 0, i32 2
  store i32 %call6, i32* %fill_plain_color, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %14, %struct._GObject** %_glib__object, align 8
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %15, %struct._GParamSpec** %_glib__pspec, align 8
  %16 = load i32, i32* %property_id.addr, align 4
  store i32 %16, i32* %_glib__property_id, align 4
  %17 = load i32, i32* %_glib__property_id, align 4
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %18, i32 0, i32 1
  %19 = load i8*, i8** %name, align 8
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %21 = bitcast %struct._GParamSpec* %20 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type, align 8
  %call7 = call i8* @g_type_name(i64 %23)
  %24 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %25 = bitcast %struct._GObject* %24 to %struct._GTypeInstance*
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %25, i32 0, i32 0
  %26 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type9 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %26, i32 0, i32 0
  %27 = load i64, i64* %g_type9, align 8
  %call10 = call i8* @g_type_name(i64 %27)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i32 0, i32 0), i32 207, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 %17, i8* %19, i8* %call7, i8* %call10)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.5, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_cage_transform_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %self = alloca %struct._GimpOperationCageTransform*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_operation_cage_transform_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpOperationCageTransform*
  store %struct._GimpOperationCageTransform* %2, %struct._GimpOperationCageTransform** %self, align 8
  %3 = load %struct._GimpOperationCageTransform*, %struct._GimpOperationCageTransform** %self, align 8
  %config = getelementptr inbounds %struct._GimpOperationCageTransform, %struct._GimpOperationCageTransform* %3, i32 0, i32 1
  %4 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config, align 8
  %tobool = icmp ne %struct._GimpCageConfig* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpOperationCageTransform*, %struct._GimpOperationCageTransform** %self, align 8
  %config2 = getelementptr inbounds %struct._GimpOperationCageTransform, %struct._GimpOperationCageTransform* %5, i32 0, i32 1
  %6 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config2, align 8
  %7 = bitcast %struct._GimpCageConfig* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpOperationCageTransform*, %struct._GimpOperationCageTransform** %self, align 8
  %config3 = getelementptr inbounds %struct._GimpOperationCageTransform, %struct._GimpOperationCageTransform* %8, i32 0, i32 1
  store %struct._GimpCageConfig* null, %struct._GimpCageConfig** %config3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** @gimp_operation_cage_transform_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 80)
  %11 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 6
  %12 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %12(%struct._GObject* %13)
  ret void
}

declare void @gegl_operation_class_set_keys(%struct._GeglOperationClass*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_cage_transform_prepare(%struct._GeglOperation* %operation) #3 {
entry:
  %operation.addr = alloca %struct._GeglOperation*, align 8
  %oct = alloca %struct._GimpOperationCageTransform*, align 8
  %config = alloca %struct._GimpCageConfig*, align 8
  store %struct._GeglOperation* %operation, %struct._GeglOperation** %operation.addr, align 8
  %0 = load %struct._GeglOperation*, %struct._GeglOperation** %operation.addr, align 8
  %1 = bitcast %struct._GeglOperation* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_operation_cage_transform_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpOperationCageTransform*
  store %struct._GimpOperationCageTransform* %2, %struct._GimpOperationCageTransform** %oct, align 8
  %3 = load %struct._GimpOperationCageTransform*, %struct._GimpOperationCageTransform** %oct, align 8
  %config2 = getelementptr inbounds %struct._GimpOperationCageTransform, %struct._GimpOperationCageTransform* %3, i32 0, i32 1
  %4 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config2, align 8
  %5 = bitcast %struct._GimpCageConfig* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_cage_config_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpCageConfig*
  store %struct._GimpCageConfig* %6, %struct._GimpCageConfig** %config, align 8
  %7 = load %struct._GeglOperation*, %struct._GeglOperation** %operation.addr, align 8
  %call5 = call %union._Babl* @babl_type(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0))
  %8 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config, align 8
  %call6 = call i32 @gimp_cage_config_get_n_points(%struct._GimpCageConfig* %8)
  %mul = mul i32 2, %call6
  %call7 = call %union._Babl* @babl_format_n(%union._Babl* %call5, i32 %mul)
  call void @gegl_operation_set_format(%struct._GeglOperation* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), %union._Babl* %call7)
  %9 = load %struct._GeglOperation*, %struct._GeglOperation** %operation.addr, align 8
  %call8 = call %union._Babl* @babl_type(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0))
  %call9 = call %union._Babl* @babl_format_n(%union._Babl* %call8, i32 2)
  call void @gegl_operation_set_format(%struct._GeglOperation* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), %union._Babl* %call9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_operation_cage_transform_process(%struct._GeglOperation* %operation, %struct._GeglBuffer* %in_buf, %struct._GeglBuffer* %aux_buf, %struct._GeglBuffer* %out_buf, %struct._GeglRectangle* %roi, i32 %level) #3 {
entry:
  %operation.addr = alloca %struct._GeglOperation*, align 8
  %in_buf.addr = alloca %struct._GeglBuffer*, align 8
  %aux_buf.addr = alloca %struct._GeglBuffer*, align 8
  %out_buf.addr = alloca %struct._GeglBuffer*, align 8
  %roi.addr = alloca %struct._GeglRectangle*, align 8
  %level.addr = alloca i32, align 4
  %oct = alloca %struct._GimpOperationCageTransform*, align 8
  %config = alloca %struct._GimpCageConfig*, align 8
  %cage_bb = alloca %struct._GeglRectangle, align 4
  %coords = alloca float*, align 8
  %coef = alloca float*, align 8
  %format_coef = alloca %union._Babl*, align 8
  %plain_color = alloca %struct._GimpVector2, align 8
  %it = alloca %struct.GeglBufferIterator*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %output_set = alloca i32, align 4
  %point = alloca %struct._GimpCagePoint*, align 8
  %n_cage_vertices = alloca i32, align 4
  %coerce = alloca %struct._GeglRectangle, align 4
  %n_pixels = alloca i32, align 4
  %output = alloca float*, align 8
  %p1_d = alloca %struct._GimpVector2, align 8
  %p2_d = alloca %struct._GimpVector2, align 8
  %p3_d = alloca %struct._GimpVector2, align 8
  %p4_d = alloca %struct._GimpVector2, align 8
  %p1_s = alloca %struct._GimpVector2, align 8
  %p2_s = alloca %struct._GimpVector2, align 8
  %p3_s = alloca %struct._GimpVector2, align 8
  %p4_s = alloca %struct._GimpVector2, align 8
  %coerce110 = alloca %struct._GimpVector2, align 8
  %coerce112 = alloca %struct._GimpVector2, align 8
  %coerce129 = alloca %struct._GimpVector2, align 8
  %coerce131 = alloca %struct._GimpVector2, align 8
  %fraction = alloca double, align 8
  store %struct._GeglOperation* %operation, %struct._GeglOperation** %operation.addr, align 8
  store %struct._GeglBuffer* %in_buf, %struct._GeglBuffer** %in_buf.addr, align 8
  store %struct._GeglBuffer* %aux_buf, %struct._GeglBuffer** %aux_buf.addr, align 8
  store %struct._GeglBuffer* %out_buf, %struct._GeglBuffer** %out_buf.addr, align 8
  store %struct._GeglRectangle* %roi, %struct._GeglRectangle** %roi.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  %0 = load %struct._GeglOperation*, %struct._GeglOperation** %operation.addr, align 8
  %1 = bitcast %struct._GeglOperation* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_operation_cage_transform_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpOperationCageTransform*
  store %struct._GimpOperationCageTransform* %2, %struct._GimpOperationCageTransform** %oct, align 8
  %3 = load %struct._GimpOperationCageTransform*, %struct._GimpOperationCageTransform** %oct, align 8
  %config2 = getelementptr inbounds %struct._GimpOperationCageTransform, %struct._GimpOperationCageTransform* %3, i32 0, i32 1
  %4 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config2, align 8
  %5 = bitcast %struct._GimpCageConfig* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_cage_config_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpCageConfig*
  store %struct._GimpCageConfig* %6, %struct._GimpCageConfig** %config, align 8
  %7 = load %struct._GeglBuffer*, %struct._GeglBuffer** %out_buf.addr, align 8
  %8 = load %struct._GeglRectangle*, %struct._GeglRectangle** %roi.addr, align 8
  %call5 = call %struct.GeglBufferIterator* @gegl_buffer_iterator_new(%struct._GeglBuffer* %7, %struct._GeglRectangle* %8, i32 0, %union._Babl* null, i32 2, i32 0)
  store %struct.GeglBufferIterator* %call5, %struct.GeglBufferIterator** %it, align 8
  %9 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config, align 8
  %call6 = call { i64, i64 } @gimp_cage_config_get_bounding_box(%struct._GimpCageConfig* %9)
  %10 = bitcast %struct._GeglRectangle* %coerce to { i64, i64 }*
  %11 = getelementptr { i64, i64 }, { i64, i64 }* %10, i32 0, i32 0
  %12 = extractvalue { i64, i64 } %call6, 0
  store i64 %12, i64* %11, align 4
  %13 = getelementptr { i64, i64 }, { i64, i64 }* %10, i32 0, i32 1
  %14 = extractvalue { i64, i64 } %call6, 1
  store i64 %14, i64* %13, align 4
  %15 = bitcast %struct._GeglRectangle* %cage_bb to i8*
  %16 = bitcast %struct._GeglRectangle* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 16, i32 4, i1 false)
  %17 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config, align 8
  %cage_points = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %17, i32 0, i32 1
  %18 = load %struct._GArray*, %struct._GArray** %cage_points, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %18, i32 0, i32 0
  %19 = load i8*, i8** %data, align 8
  %20 = bitcast i8* %19 to %struct._GimpCagePoint*
  %arrayidx = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %20, i64 0
  store %struct._GimpCagePoint* %arrayidx, %struct._GimpCagePoint** %point, align 8
  %21 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %src_point = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %21, i32 0, i32 0
  %x7 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %src_point, i32 0, i32 0
  %22 = load double, double* %x7, align 8
  %conv = fptosi double %22 to i32
  %conv8 = sitofp i32 %conv to double
  %x9 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %plain_color, i32 0, i32 0
  store double %conv8, double* %x9, align 8
  %23 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %src_point10 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %23, i32 0, i32 0
  %y11 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %src_point10, i32 0, i32 1
  %24 = load double, double* %y11, align 8
  %conv12 = fptosi double %24 to i32
  %conv13 = sitofp i32 %conv12 to double
  %y14 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %plain_color, i32 0, i32 1
  store double %conv13, double* %y14, align 8
  %25 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config, align 8
  %call15 = call i32 @gimp_cage_config_get_n_points(%struct._GimpCageConfig* %25)
  store i32 %call15, i32* %n_cage_vertices, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %26 = load %struct.GeglBufferIterator*, %struct.GeglBufferIterator** %it, align 8
  %call16 = call i32 @gegl_buffer_iterator_next(%struct.GeglBufferIterator* %26)
  %tobool = icmp ne i32 %call16, 0
  br i1 %tobool, label %while.body, label %while.end.78

while.body:                                       ; preds = %while.cond
  %27 = load %struct.GeglBufferIterator*, %struct.GeglBufferIterator** %it, align 8
  %length = getelementptr inbounds %struct.GeglBufferIterator, %struct.GeglBufferIterator* %27, i32 0, i32 0
  %28 = load i32, i32* %length, align 4
  store i32 %28, i32* %n_pixels, align 4
  %29 = load %struct.GeglBufferIterator*, %struct.GeglBufferIterator** %it, align 8
  %data17 = getelementptr inbounds %struct.GeglBufferIterator, %struct.GeglBufferIterator* %29, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [6 x i8*], [6 x i8*]* %data17, i32 0, i64 0
  %30 = load i8*, i8** %arrayidx18, align 8
  %31 = bitcast i8* %30 to float*
  store float* %31, float** %output, align 8
  %32 = load %struct.GeglBufferIterator*, %struct.GeglBufferIterator** %it, align 8
  %roi19 = getelementptr inbounds %struct.GeglBufferIterator, %struct.GeglBufferIterator* %32, i32 0, i32 2
  %arraydecay = getelementptr inbounds [6 x %struct._GeglRectangle], [6 x %struct._GeglRectangle]* %roi19, i32 0, i32 0
  %x20 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %arraydecay, i32 0, i32 0
  %33 = load i32, i32* %x20, align 4
  store i32 %33, i32* %x, align 4
  %34 = load %struct.GeglBufferIterator*, %struct.GeglBufferIterator** %it, align 8
  %roi21 = getelementptr inbounds %struct.GeglBufferIterator, %struct.GeglBufferIterator* %34, i32 0, i32 2
  %arraydecay22 = getelementptr inbounds [6 x %struct._GeglRectangle], [6 x %struct._GeglRectangle]* %roi21, i32 0, i32 0
  %y23 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %arraydecay22, i32 0, i32 1
  %35 = load i32, i32* %y23, align 4
  store i32 %35, i32* %y, align 4
  br label %while.cond.24

while.cond.24:                                    ; preds = %if.end.77, %while.body
  %36 = load i32, i32* %n_pixels, align 4
  %dec = add nsw i32 %36, -1
  store i32 %dec, i32* %n_pixels, align 4
  %tobool25 = icmp ne i32 %36, 0
  br i1 %tobool25, label %while.body.26, label %while.end

while.body.26:                                    ; preds = %while.cond.24
  store i32 0, i32* %output_set, align 4
  %37 = load %struct._GimpOperationCageTransform*, %struct._GimpOperationCageTransform** %oct, align 8
  %fill_plain_color = getelementptr inbounds %struct._GimpOperationCageTransform, %struct._GimpOperationCageTransform* %37, i32 0, i32 2
  %38 = load i32, i32* %fill_plain_color, align 4
  %tobool27 = icmp ne i32 %38, 0
  br i1 %tobool27, label %if.then, label %if.end.55

if.then:                                          ; preds = %while.body.26
  %39 = load i32, i32* %x, align 4
  %x28 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %cage_bb, i32 0, i32 0
  %40 = load i32, i32* %x28, align 4
  %cmp = icmp sgt i32 %39, %40
  br i1 %cmp, label %land.lhs.true, label %if.end.54

land.lhs.true:                                    ; preds = %if.then
  %41 = load i32, i32* %y, align 4
  %y30 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %cage_bb, i32 0, i32 1
  %42 = load i32, i32* %y30, align 4
  %cmp31 = icmp sgt i32 %41, %42
  br i1 %cmp31, label %land.lhs.true.33, label %if.end.54

land.lhs.true.33:                                 ; preds = %land.lhs.true
  %43 = load i32, i32* %x, align 4
  %x34 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %cage_bb, i32 0, i32 0
  %44 = load i32, i32* %x34, align 4
  %width = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %cage_bb, i32 0, i32 2
  %45 = load i32, i32* %width, align 4
  %add = add nsw i32 %44, %45
  %cmp35 = icmp slt i32 %43, %add
  br i1 %cmp35, label %land.lhs.true.37, label %if.end.54

land.lhs.true.37:                                 ; preds = %land.lhs.true.33
  %46 = load i32, i32* %y, align 4
  %y38 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %cage_bb, i32 0, i32 1
  %47 = load i32, i32* %y38, align 4
  %height = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %cage_bb, i32 0, i32 3
  %48 = load i32, i32* %height, align 4
  %add39 = add nsw i32 %47, %48
  %cmp40 = icmp slt i32 %46, %add39
  br i1 %cmp40, label %if.then.42, label %if.end.54

if.then.42:                                       ; preds = %land.lhs.true.37
  %49 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config, align 8
  %50 = load i32, i32* %x, align 4
  %conv43 = sitofp i32 %50 to float
  %51 = load i32, i32* %y, align 4
  %conv44 = sitofp i32 %51 to float
  %call45 = call i32 @gimp_cage_config_point_inside(%struct._GimpCageConfig* %49, float %conv43, float %conv44)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.47, label %if.end

if.then.47:                                       ; preds = %if.then.42
  %x48 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %plain_color, i32 0, i32 0
  %52 = load double, double* %x48, align 8
  %conv49 = fptrunc double %52 to float
  %53 = load float*, float** %output, align 8
  %arrayidx50 = getelementptr inbounds float, float* %53, i64 0
  store float %conv49, float* %arrayidx50, align 4
  %y51 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %plain_color, i32 0, i32 1
  %54 = load double, double* %y51, align 8
  %conv52 = fptrunc double %54 to float
  %55 = load float*, float** %output, align 8
  %arrayidx53 = getelementptr inbounds float, float* %55, i64 1
  store float %conv52, float* %arrayidx53, align 4
  store i32 1, i32* %output_set, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.47, %if.then.42
  br label %if.end.54

if.end.54:                                        ; preds = %if.end, %land.lhs.true.37, %land.lhs.true.33, %land.lhs.true, %if.then
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %while.body.26
  %56 = load i32, i32* %output_set, align 4
  %tobool56 = icmp ne i32 %56, 0
  br i1 %tobool56, label %if.end.62, label %if.then.57

if.then.57:                                       ; preds = %if.end.55
  %57 = load i32, i32* %x, align 4
  %conv58 = sitofp i32 %57 to float
  %58 = load float*, float** %output, align 8
  %arrayidx59 = getelementptr inbounds float, float* %58, i64 0
  store float %conv58, float* %arrayidx59, align 4
  %59 = load i32, i32* %y, align 4
  %conv60 = sitofp i32 %59 to float
  %60 = load float*, float** %output, align 8
  %arrayidx61 = getelementptr inbounds float, float* %60, i64 1
  store float %conv60, float* %arrayidx61, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.57, %if.end.55
  %61 = load float*, float** %output, align 8
  %add.ptr = getelementptr inbounds float, float* %61, i64 2
  store float* %add.ptr, float** %output, align 8
  %62 = load i32, i32* %x, align 4
  %inc = add nsw i32 %62, 1
  store i32 %inc, i32* %x, align 4
  %63 = load i32, i32* %x, align 4
  %64 = load %struct.GeglBufferIterator*, %struct.GeglBufferIterator** %it, align 8
  %roi63 = getelementptr inbounds %struct.GeglBufferIterator, %struct.GeglBufferIterator* %64, i32 0, i32 2
  %arraydecay64 = getelementptr inbounds [6 x %struct._GeglRectangle], [6 x %struct._GeglRectangle]* %roi63, i32 0, i32 0
  %x65 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %arraydecay64, i32 0, i32 0
  %65 = load i32, i32* %x65, align 4
  %66 = load %struct.GeglBufferIterator*, %struct.GeglBufferIterator** %it, align 8
  %roi66 = getelementptr inbounds %struct.GeglBufferIterator, %struct.GeglBufferIterator* %66, i32 0, i32 2
  %arraydecay67 = getelementptr inbounds [6 x %struct._GeglRectangle], [6 x %struct._GeglRectangle]* %roi66, i32 0, i32 0
  %width68 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %arraydecay67, i32 0, i32 2
  %67 = load i32, i32* %width68, align 4
  %add69 = add nsw i32 %65, %67
  %cmp70 = icmp sge i32 %63, %add69
  br i1 %cmp70, label %if.then.72, label %if.end.77

if.then.72:                                       ; preds = %if.end.62
  %68 = load %struct.GeglBufferIterator*, %struct.GeglBufferIterator** %it, align 8
  %roi73 = getelementptr inbounds %struct.GeglBufferIterator, %struct.GeglBufferIterator* %68, i32 0, i32 2
  %arraydecay74 = getelementptr inbounds [6 x %struct._GeglRectangle], [6 x %struct._GeglRectangle]* %roi73, i32 0, i32 0
  %x75 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %arraydecay74, i32 0, i32 0
  %69 = load i32, i32* %x75, align 4
  store i32 %69, i32* %x, align 4
  %70 = load i32, i32* %y, align 4
  %inc76 = add nsw i32 %70, 1
  store i32 %inc76, i32* %y, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.72, %if.end.62
  br label %while.cond.24

while.end:                                        ; preds = %while.cond.24
  br label %while.cond

while.end.78:                                     ; preds = %while.cond
  %71 = load %struct._GimpOperationCageTransform*, %struct._GimpOperationCageTransform** %oct, align 8
  %progress = getelementptr inbounds %struct._GimpOperationCageTransform, %struct._GimpOperationCageTransform* %71, i32 0, i32 4
  store double 0.000000e+00, double* %progress, align 8
  %72 = load %struct._GimpOperationCageTransform*, %struct._GimpOperationCageTransform** %oct, align 8
  %73 = bitcast %struct._GimpOperationCageTransform* %72 to %struct._GTypeInstance*
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 80)
  %74 = bitcast %struct._GTypeInstance* %call79 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0))
  %call80 = call noalias i8* @g_slice_alloc(i64 8)
  %75 = bitcast i8* %call80 to float*
  store float* %75, float** %coords, align 8
  %76 = load i32, i32* %n_cage_vertices, align 4
  %mul = mul i32 %76, 2
  %conv81 = zext i32 %mul to i64
  %mul82 = mul i64 %conv81, 4
  %call83 = call noalias i8* @g_malloc(i64 %mul82)
  %77 = bitcast i8* %call83 to float*
  store float* %77, float** %coef, align 8
  %call84 = call %union._Babl* @babl_type(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0))
  %78 = load i32, i32* %n_cage_vertices, align 4
  %mul85 = mul i32 2, %78
  %call86 = call %union._Babl* @babl_format_n(%union._Babl* %call84, i32 %mul85)
  store %union._Babl* %call86, %union._Babl** %format_coef, align 8
  %y87 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %cage_bb, i32 0, i32 1
  %79 = load i32, i32* %y87, align 4
  store i32 %79, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.159, %while.end.78
  %80 = load i32, i32* %y, align 4
  %y88 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %cage_bb, i32 0, i32 1
  %81 = load i32, i32* %y88, align 4
  %height89 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %cage_bb, i32 0, i32 3
  %82 = load i32, i32* %height89, align 4
  %add90 = add nsw i32 %81, %82
  %sub = sub nsw i32 %add90, 1
  %cmp91 = icmp slt i32 %80, %sub
  br i1 %cmp91, label %for.body, label %for.end.161

for.body:                                         ; preds = %for.cond
  %83 = load i32, i32* %y, align 4
  %conv93 = sitofp i32 %83 to double
  %y94 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p1_s, i32 0, i32 1
  store double %conv93, double* %y94, align 8
  %84 = load i32, i32* %y, align 4
  %add95 = add nsw i32 %84, 1
  %conv96 = sitofp i32 %add95 to double
  %y97 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p2_s, i32 0, i32 1
  store double %conv96, double* %y97, align 8
  %85 = load i32, i32* %y, align 4
  %add98 = add nsw i32 %85, 1
  %conv99 = sitofp i32 %add98 to double
  %y100 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p3_s, i32 0, i32 1
  store double %conv99, double* %y100, align 8
  %x101 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %cage_bb, i32 0, i32 0
  %86 = load i32, i32* %x101, align 4
  %conv102 = sitofp i32 %86 to double
  %x103 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p3_s, i32 0, i32 0
  store double %conv102, double* %x103, align 8
  %87 = load i32, i32* %y, align 4
  %conv104 = sitofp i32 %87 to double
  %y105 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p4_s, i32 0, i32 1
  store double %conv104, double* %y105, align 8
  %x106 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %cage_bb, i32 0, i32 0
  %88 = load i32, i32* %x106, align 4
  %conv107 = sitofp i32 %88 to double
  %x108 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p4_s, i32 0, i32 0
  store double %conv107, double* %x108, align 8
  %89 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config, align 8
  %90 = load float*, float** %coef, align 8
  %91 = load %union._Babl*, %union._Babl** %format_coef, align 8
  %92 = load %struct._GeglBuffer*, %struct._GeglBuffer** %aux_buf.addr, align 8
  %93 = bitcast %struct._GimpVector2* %p3_s to { double, double }*
  %94 = getelementptr { double, double }, { double, double }* %93, i32 0, i32 0
  %95 = load double, double* %94, align 1
  %96 = getelementptr { double, double }, { double, double }* %93, i32 0, i32 1
  %97 = load double, double* %96, align 1
  %call109 = call { double, double } @gimp_cage_transform_compute_destination(%struct._GimpCageConfig* %89, float* %90, %union._Babl* %91, %struct._GeglBuffer* %92, double %95, double %97)
  %98 = bitcast %struct._GimpVector2* %coerce110 to { double, double }*
  %99 = getelementptr { double, double }, { double, double }* %98, i32 0, i32 0
  %100 = extractvalue { double, double } %call109, 0
  store double %100, double* %99, align 8
  %101 = getelementptr { double, double }, { double, double }* %98, i32 0, i32 1
  %102 = extractvalue { double, double } %call109, 1
  store double %102, double* %101, align 8
  %103 = bitcast %struct._GimpVector2* %p3_d to i8*
  %104 = bitcast %struct._GimpVector2* %coerce110 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %103, i8* %104, i64 16, i32 8, i1 false)
  %105 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config, align 8
  %106 = load float*, float** %coef, align 8
  %107 = load %union._Babl*, %union._Babl** %format_coef, align 8
  %108 = load %struct._GeglBuffer*, %struct._GeglBuffer** %aux_buf.addr, align 8
  %109 = bitcast %struct._GimpVector2* %p4_s to { double, double }*
  %110 = getelementptr { double, double }, { double, double }* %109, i32 0, i32 0
  %111 = load double, double* %110, align 1
  %112 = getelementptr { double, double }, { double, double }* %109, i32 0, i32 1
  %113 = load double, double* %112, align 1
  %call111 = call { double, double } @gimp_cage_transform_compute_destination(%struct._GimpCageConfig* %105, float* %106, %union._Babl* %107, %struct._GeglBuffer* %108, double %111, double %113)
  %114 = bitcast %struct._GimpVector2* %coerce112 to { double, double }*
  %115 = getelementptr { double, double }, { double, double }* %114, i32 0, i32 0
  %116 = extractvalue { double, double } %call111, 0
  store double %116, double* %115, align 8
  %117 = getelementptr { double, double }, { double, double }* %114, i32 0, i32 1
  %118 = extractvalue { double, double } %call111, 1
  store double %118, double* %117, align 8
  %119 = bitcast %struct._GimpVector2* %p4_d to i8*
  %120 = bitcast %struct._GimpVector2* %coerce112 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %119, i8* %120, i64 16, i32 8, i1 false)
  %x113 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %cage_bb, i32 0, i32 0
  %121 = load i32, i32* %x113, align 4
  store i32 %121, i32* %x, align 4
  br label %for.cond.114

for.cond.114:                                     ; preds = %for.inc, %for.body
  %122 = load i32, i32* %x, align 4
  %x115 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %cage_bb, i32 0, i32 0
  %123 = load i32, i32* %x115, align 4
  %width116 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %cage_bb, i32 0, i32 2
  %124 = load i32, i32* %width116, align 4
  %add117 = add nsw i32 %123, %124
  %sub118 = sub nsw i32 %add117, 1
  %cmp119 = icmp slt i32 %122, %sub118
  br i1 %cmp119, label %for.body.121, label %for.end

for.body.121:                                     ; preds = %for.cond.114
  %125 = bitcast %struct._GimpVector2* %p1_s to i8*
  %126 = bitcast %struct._GimpVector2* %p4_s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %125, i8* %126, i64 16, i32 8, i1 false)
  %127 = bitcast %struct._GimpVector2* %p2_s to i8*
  %128 = bitcast %struct._GimpVector2* %p3_s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %127, i8* %128, i64 16, i32 8, i1 false)
  %129 = load i32, i32* %x, align 4
  %add122 = add nsw i32 %129, 1
  %conv123 = sitofp i32 %add122 to double
  %x124 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p3_s, i32 0, i32 0
  store double %conv123, double* %x124, align 8
  %130 = load i32, i32* %x, align 4
  %add125 = add nsw i32 %130, 1
  %conv126 = sitofp i32 %add125 to double
  %x127 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p4_s, i32 0, i32 0
  store double %conv126, double* %x127, align 8
  %131 = bitcast %struct._GimpVector2* %p1_d to i8*
  %132 = bitcast %struct._GimpVector2* %p4_d to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %131, i8* %132, i64 16, i32 8, i1 false)
  %133 = bitcast %struct._GimpVector2* %p2_d to i8*
  %134 = bitcast %struct._GimpVector2* %p3_d to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %133, i8* %134, i64 16, i32 8, i1 false)
  %135 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config, align 8
  %136 = load float*, float** %coef, align 8
  %137 = load %union._Babl*, %union._Babl** %format_coef, align 8
  %138 = load %struct._GeglBuffer*, %struct._GeglBuffer** %aux_buf.addr, align 8
  %139 = bitcast %struct._GimpVector2* %p3_s to { double, double }*
  %140 = getelementptr { double, double }, { double, double }* %139, i32 0, i32 0
  %141 = load double, double* %140, align 1
  %142 = getelementptr { double, double }, { double, double }* %139, i32 0, i32 1
  %143 = load double, double* %142, align 1
  %call128 = call { double, double } @gimp_cage_transform_compute_destination(%struct._GimpCageConfig* %135, float* %136, %union._Babl* %137, %struct._GeglBuffer* %138, double %141, double %143)
  %144 = bitcast %struct._GimpVector2* %coerce129 to { double, double }*
  %145 = getelementptr { double, double }, { double, double }* %144, i32 0, i32 0
  %146 = extractvalue { double, double } %call128, 0
  store double %146, double* %145, align 8
  %147 = getelementptr { double, double }, { double, double }* %144, i32 0, i32 1
  %148 = extractvalue { double, double } %call128, 1
  store double %148, double* %147, align 8
  %149 = bitcast %struct._GimpVector2* %p3_d to i8*
  %150 = bitcast %struct._GimpVector2* %coerce129 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %149, i8* %150, i64 16, i32 8, i1 false)
  %151 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config, align 8
  %152 = load float*, float** %coef, align 8
  %153 = load %union._Babl*, %union._Babl** %format_coef, align 8
  %154 = load %struct._GeglBuffer*, %struct._GeglBuffer** %aux_buf.addr, align 8
  %155 = bitcast %struct._GimpVector2* %p4_s to { double, double }*
  %156 = getelementptr { double, double }, { double, double }* %155, i32 0, i32 0
  %157 = load double, double* %156, align 1
  %158 = getelementptr { double, double }, { double, double }* %155, i32 0, i32 1
  %159 = load double, double* %158, align 1
  %call130 = call { double, double } @gimp_cage_transform_compute_destination(%struct._GimpCageConfig* %151, float* %152, %union._Babl* %153, %struct._GeglBuffer* %154, double %157, double %159)
  %160 = bitcast %struct._GimpVector2* %coerce131 to { double, double }*
  %161 = getelementptr { double, double }, { double, double }* %160, i32 0, i32 0
  %162 = extractvalue { double, double } %call130, 0
  store double %162, double* %161, align 8
  %163 = getelementptr { double, double }, { double, double }* %160, i32 0, i32 1
  %164 = extractvalue { double, double } %call130, 1
  store double %164, double* %163, align 8
  %165 = bitcast %struct._GimpVector2* %p4_d to i8*
  %166 = bitcast %struct._GimpVector2* %coerce131 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %165, i8* %166, i64 16, i32 8, i1 false)
  %167 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config, align 8
  %168 = load i32, i32* %x, align 4
  %conv132 = sitofp i32 %168 to float
  %169 = load i32, i32* %y, align 4
  %conv133 = sitofp i32 %169 to float
  %call134 = call i32 @gimp_cage_config_point_inside(%struct._GimpCageConfig* %167, float %conv132, float %conv133)
  %tobool135 = icmp ne i32 %call134, 0
  br i1 %tobool135, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %for.body.121
  %170 = load %struct._GimpOperationCageTransform*, %struct._GimpOperationCageTransform** %oct, align 8
  %171 = load %struct._GeglBuffer*, %struct._GeglBuffer** %out_buf.addr, align 8
  %172 = load %struct._GeglRectangle*, %struct._GeglRectangle** %roi.addr, align 8
  %173 = load float*, float** %coords, align 8
  %174 = bitcast %struct._GimpVector2* %p1_s to { double, double }*
  %175 = getelementptr { double, double }, { double, double }* %174, i32 0, i32 0
  %176 = load double, double* %175, align 1
  %177 = getelementptr { double, double }, { double, double }* %174, i32 0, i32 1
  %178 = load double, double* %177, align 1
  %179 = bitcast %struct._GimpVector2* %p1_d to { double, double }*
  %180 = getelementptr { double, double }, { double, double }* %179, i32 0, i32 0
  %181 = load double, double* %180, align 1
  %182 = getelementptr { double, double }, { double, double }* %179, i32 0, i32 1
  %183 = load double, double* %182, align 1
  %184 = bitcast %struct._GimpVector2* %p2_s to { double, double }*
  %185 = getelementptr { double, double }, { double, double }* %184, i32 0, i32 0
  %186 = load double, double* %185, align 1
  %187 = getelementptr { double, double }, { double, double }* %184, i32 0, i32 1
  %188 = load double, double* %187, align 1
  %189 = bitcast %struct._GimpVector2* %p2_d to { double, double }*
  %190 = getelementptr { double, double }, { double, double }* %189, i32 0, i32 0
  %191 = load double, double* %190, align 1
  %192 = getelementptr { double, double }, { double, double }* %189, i32 0, i32 1
  %193 = load double, double* %192, align 1
  call void @gimp_operation_cage_transform_interpolate_source_coords_recurs(%struct._GimpOperationCageTransform* %170, %struct._GeglBuffer* %171, %struct._GeglRectangle* %172, double %176, double %178, double %181, double %183, double %186, double %188, double %191, double %193, %struct._GimpVector2* byval align 8 %p3_s, %struct._GimpVector2* byval align 8 %p3_d, i32 0, float* %173)
  %194 = load %struct._GimpOperationCageTransform*, %struct._GimpOperationCageTransform** %oct, align 8
  %195 = load %struct._GeglBuffer*, %struct._GeglBuffer** %out_buf.addr, align 8
  %196 = load %struct._GeglRectangle*, %struct._GeglRectangle** %roi.addr, align 8
  %197 = load float*, float** %coords, align 8
  %198 = bitcast %struct._GimpVector2* %p1_s to { double, double }*
  %199 = getelementptr { double, double }, { double, double }* %198, i32 0, i32 0
  %200 = load double, double* %199, align 1
  %201 = getelementptr { double, double }, { double, double }* %198, i32 0, i32 1
  %202 = load double, double* %201, align 1
  %203 = bitcast %struct._GimpVector2* %p1_d to { double, double }*
  %204 = getelementptr { double, double }, { double, double }* %203, i32 0, i32 0
  %205 = load double, double* %204, align 1
  %206 = getelementptr { double, double }, { double, double }* %203, i32 0, i32 1
  %207 = load double, double* %206, align 1
  %208 = bitcast %struct._GimpVector2* %p3_s to { double, double }*
  %209 = getelementptr { double, double }, { double, double }* %208, i32 0, i32 0
  %210 = load double, double* %209, align 1
  %211 = getelementptr { double, double }, { double, double }* %208, i32 0, i32 1
  %212 = load double, double* %211, align 1
  %213 = bitcast %struct._GimpVector2* %p3_d to { double, double }*
  %214 = getelementptr { double, double }, { double, double }* %213, i32 0, i32 0
  %215 = load double, double* %214, align 1
  %216 = getelementptr { double, double }, { double, double }* %213, i32 0, i32 1
  %217 = load double, double* %216, align 1
  call void @gimp_operation_cage_transform_interpolate_source_coords_recurs(%struct._GimpOperationCageTransform* %194, %struct._GeglBuffer* %195, %struct._GeglRectangle* %196, double %200, double %202, double %205, double %207, double %210, double %212, double %215, double %217, %struct._GimpVector2* byval align 8 %p4_s, %struct._GimpVector2* byval align 8 %p4_d, i32 0, float* %197)
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.136, %for.body.121
  br label %for.inc

for.inc:                                          ; preds = %if.end.137
  %218 = load i32, i32* %x, align 4
  %inc138 = add nsw i32 %218, 1
  store i32 %inc138, i32* %x, align 4
  br label %for.cond.114

for.end:                                          ; preds = %for.cond.114
  %219 = load i32, i32* %y, align 4
  %y139 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %cage_bb, i32 0, i32 1
  %220 = load i32, i32* %y139, align 4
  %sub140 = sub nsw i32 %219, %220
  %rem = srem i32 %sub140, 20
  %cmp141 = icmp eq i32 %rem, 0
  br i1 %cmp141, label %if.then.143, label %if.end.158

if.then.143:                                      ; preds = %for.end
  %221 = load i32, i32* %y, align 4
  %y144 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %cage_bb, i32 0, i32 1
  %222 = load i32, i32* %y144, align 4
  %sub145 = sub nsw i32 %221, %222
  %conv146 = sitofp i32 %sub145 to double
  %height147 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %cage_bb, i32 0, i32 3
  %223 = load i32, i32* %height147, align 4
  %conv148 = sitofp i32 %223 to double
  %div = fdiv double %conv146, %conv148
  store double %div, double* %fraction, align 8
  %224 = load double, double* %fraction, align 8
  %cmp149 = fcmp ogt double %224, 0.000000e+00
  br i1 %cmp149, label %land.lhs.true.151, label %if.end.157

land.lhs.true.151:                                ; preds = %if.then.143
  %225 = load double, double* %fraction, align 8
  %cmp152 = fcmp olt double %225, 1.000000e+00
  br i1 %cmp152, label %if.then.154, label %if.end.157

if.then.154:                                      ; preds = %land.lhs.true.151
  %226 = load double, double* %fraction, align 8
  %227 = load %struct._GimpOperationCageTransform*, %struct._GimpOperationCageTransform** %oct, align 8
  %progress155 = getelementptr inbounds %struct._GimpOperationCageTransform, %struct._GimpOperationCageTransform* %227, i32 0, i32 4
  store double %226, double* %progress155, align 8
  %228 = load %struct._GimpOperationCageTransform*, %struct._GimpOperationCageTransform** %oct, align 8
  %229 = bitcast %struct._GimpOperationCageTransform* %228 to %struct._GTypeInstance*
  %call156 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %229, i64 80)
  %230 = bitcast %struct._GTypeInstance* %call156 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %230, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.154, %land.lhs.true.151, %if.then.143
  br label %if.end.158

if.end.158:                                       ; preds = %if.end.157, %for.end
  br label %for.inc.159

for.inc.159:                                      ; preds = %if.end.158
  %231 = load i32, i32* %y, align 4
  %inc160 = add nsw i32 %231, 1
  store i32 %inc160, i32* %y, align 4
  br label %for.cond

for.end.161:                                      ; preds = %for.cond
  %232 = load float*, float** %coef, align 8
  %233 = bitcast float* %232 to i8*
  call void @g_free(i8* %233)
  %234 = load float*, float** %coords, align 8
  %235 = bitcast float* %234 to i8*
  call void @g_slice_free1(i64 8, i8* %235)
  %236 = load %struct._GimpOperationCageTransform*, %struct._GimpOperationCageTransform** %oct, align 8
  %progress162 = getelementptr inbounds %struct._GimpOperationCageTransform, %struct._GimpOperationCageTransform* %236, i32 0, i32 4
  store double 1.000000e+00, double* %progress162, align 8
  %237 = load %struct._GimpOperationCageTransform*, %struct._GimpOperationCageTransform** %oct, align 8
  %238 = bitcast %struct._GimpOperationCageTransform* %237 to %struct._GTypeInstance*
  %call163 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %238, i64 80)
  %239 = bitcast %struct._GTypeInstance* %call163 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %239, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0))
  ret i32 1
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_cage_config_get_type() #2

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

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
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare void @g_object_unref(i8*) #1

declare i8* @g_value_dup_object(%struct._GValue*) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare void @gegl_operation_set_format(%struct._GeglOperation*, i8*, %union._Babl*) #1

declare %union._Babl* @babl_format_n(%union._Babl*, i32) #1

declare %union._Babl* @babl_type(i8*) #1

declare i32 @gimp_cage_config_get_n_points(%struct._GimpCageConfig*) #1

declare %struct.GeglBufferIterator* @gegl_buffer_iterator_new(%struct._GeglBuffer*, %struct._GeglRectangle*, i32, %union._Babl*, i32, i32) #1

declare { i64, i64 } @gimp_cage_config_get_bounding_box(%struct._GimpCageConfig*) #1

declare i32 @gegl_buffer_iterator_next(%struct.GeglBufferIterator*) #1

declare i32 @gimp_cage_config_point_inside(%struct._GimpCageConfig*, float, float) #1

declare void @g_object_notify(%struct._GObject*, i8*) #1

declare noalias i8* @g_slice_alloc(i64) #1

declare noalias i8* @g_malloc(i64) #1

; Function Attrs: nounwind uwtable
define internal { double, double } @gimp_cage_transform_compute_destination(%struct._GimpCageConfig* %config, float* %coef, %union._Babl* %format_coef, %struct._GeglBuffer* %coef_buf, double %coords.coerce0, double %coords.coerce1) #3 {
entry:
  %retval = alloca %struct._GimpVector2, align 8
  %coords = alloca %struct._GimpVector2, align 8
  %config.addr = alloca %struct._GimpCageConfig*, align 8
  %coef.addr = alloca float*, align 8
  %format_coef.addr = alloca %union._Babl*, align 8
  %coef_buf.addr = alloca %struct._GeglBuffer*, align 8
  %result = alloca %struct._GimpVector2, align 8
  %n_cage_vertices = alloca i32, align 4
  %i = alloca i32, align 4
  %point = alloca %struct._GimpCagePoint*, align 8
  %rect = alloca %struct._GeglRectangle, align 4
  %0 = bitcast %struct._GimpVector2* %coords to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %coords.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %coords.coerce1, double* %2
  store %struct._GimpCageConfig* %config, %struct._GimpCageConfig** %config.addr, align 8
  store float* %coef, float** %coef.addr, align 8
  store %union._Babl* %format_coef, %union._Babl** %format_coef.addr, align 8
  store %struct._GeglBuffer* %coef_buf, %struct._GeglBuffer** %coef_buf.addr, align 8
  %3 = bitcast %struct._GimpVector2* %result to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 16, i32 8, i1 false)
  %4 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config.addr, align 8
  %call = call i32 @gimp_cage_config_get_n_points(%struct._GimpCageConfig* %4)
  store i32 %call, i32* %n_cage_vertices, align 4
  %height = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 3
  store i32 1, i32* %height, align 4
  %width = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 2
  store i32 1, i32* %width, align 4
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %coords, i32 0, i32 0
  %5 = load double, double* %x, align 8
  %conv = fptosi double %5 to i32
  %x1 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 0
  store i32 %conv, i32* %x1, align 4
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %coords, i32 0, i32 1
  %6 = load double, double* %y, align 8
  %conv2 = fptosi double %6 to i32
  %y3 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 1
  store i32 %conv2, i32* %y3, align 4
  %7 = load %struct._GeglBuffer*, %struct._GeglBuffer** %coef_buf.addr, align 8
  %8 = load %union._Babl*, %union._Babl** %format_coef.addr, align 8
  %9 = load float*, float** %coef.addr, align 8
  %10 = bitcast float* %9 to i8*
  call void @gegl_buffer_get(%struct._GeglBuffer* %7, %struct._GeglRectangle* %rect, double 1.000000e+00, %union._Babl* %8, i8* %10, i32 0, i32 0)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %n_cage_vertices, align 4
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %config.addr, align 8
  %cage_points = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %14, i32 0, i32 1
  %15 = load %struct._GArray*, %struct._GArray** %cage_points, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %15, i32 0, i32 0
  %16 = load i8*, i8** %data, align 8
  %17 = bitcast i8* %16 to %struct._GimpCagePoint*
  %arrayidx = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %17, i64 %idxprom
  store %struct._GimpCagePoint* %arrayidx, %struct._GimpCagePoint** %point, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %18 to i64
  %19 = load float*, float** %coef.addr, align 8
  %arrayidx6 = getelementptr inbounds float, float* %19, i64 %idxprom5
  %20 = load float, float* %arrayidx6, align 4
  %conv7 = fpext float %20 to double
  %21 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %dest_point = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %21, i32 0, i32 1
  %x8 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %dest_point, i32 0, i32 0
  %22 = load double, double* %x8, align 8
  %mul = fmul double %conv7, %22
  %x9 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %result, i32 0, i32 0
  %23 = load double, double* %x9, align 8
  %add = fadd double %23, %mul
  store double %add, double* %x9, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %24 to i64
  %25 = load float*, float** %coef.addr, align 8
  %arrayidx11 = getelementptr inbounds float, float* %25, i64 %idxprom10
  %26 = load float, float* %arrayidx11, align 4
  %conv12 = fpext float %26 to double
  %27 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %dest_point13 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %27, i32 0, i32 1
  %y14 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %dest_point13, i32 0, i32 1
  %28 = load double, double* %y14, align 8
  %mul15 = fmul double %conv12, %28
  %y16 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %result, i32 0, i32 1
  %29 = load double, double* %y16, align 8
  %add17 = fadd double %29, %mul15
  store double %add17, double* %y16, align 8
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %n_cage_vertices, align 4
  %add18 = add nsw i32 %30, %31
  %idxprom19 = sext i32 %add18 to i64
  %32 = load float*, float** %coef.addr, align 8
  %arrayidx20 = getelementptr inbounds float, float* %32, i64 %idxprom19
  %33 = load float, float* %arrayidx20, align 4
  %conv21 = fpext float %33 to double
  %34 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %edge_scaling_factor = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %34, i32 0, i32 3
  %35 = load double, double* %edge_scaling_factor, align 8
  %mul22 = fmul double %conv21, %35
  %36 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %edge_normal = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %36, i32 0, i32 2
  %x23 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %edge_normal, i32 0, i32 0
  %37 = load double, double* %x23, align 8
  %mul24 = fmul double %mul22, %37
  %x25 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %result, i32 0, i32 0
  %38 = load double, double* %x25, align 8
  %add26 = fadd double %38, %mul24
  store double %add26, double* %x25, align 8
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* %n_cage_vertices, align 4
  %add27 = add nsw i32 %39, %40
  %idxprom28 = sext i32 %add27 to i64
  %41 = load float*, float** %coef.addr, align 8
  %arrayidx29 = getelementptr inbounds float, float* %41, i64 %idxprom28
  %42 = load float, float* %arrayidx29, align 4
  %conv30 = fpext float %42 to double
  %43 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %edge_scaling_factor31 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %43, i32 0, i32 3
  %44 = load double, double* %edge_scaling_factor31, align 8
  %mul32 = fmul double %conv30, %44
  %45 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %edge_normal33 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %45, i32 0, i32 2
  %y34 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %edge_normal33, i32 0, i32 1
  %46 = load double, double* %y34, align 8
  %mul35 = fmul double %mul32, %46
  %y36 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %result, i32 0, i32 1
  %47 = load double, double* %y36, align 8
  %add37 = fadd double %47, %mul35
  store double %add37, double* %y36, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %48 = load i32, i32* %i, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %49 = bitcast %struct._GimpVector2* %retval to i8*
  %50 = bitcast %struct._GimpVector2* %result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 16, i32 8, i1 false)
  %51 = bitcast %struct._GimpVector2* %retval to { double, double }*
  %52 = load { double, double }, { double, double }* %51, align 8
  ret { double, double } %52
}

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_cage_transform_interpolate_source_coords_recurs(%struct._GimpOperationCageTransform* %oct, %struct._GeglBuffer* %out_buf, %struct._GeglRectangle* %roi, double %p1_s.coerce0, double %p1_s.coerce1, double %p1_d.coerce0, double %p1_d.coerce1, double %p2_s.coerce0, double %p2_s.coerce1, double %p2_d.coerce0, double %p2_d.coerce1, %struct._GimpVector2* byval align 8 %p3_s, %struct._GimpVector2* byval align 8 %p3_d, i32 %recursion_depth, float* %coords) #3 {
entry:
  %p1_s = alloca %struct._GimpVector2, align 8
  %p1_d = alloca %struct._GimpVector2, align 8
  %p2_s = alloca %struct._GimpVector2, align 8
  %p2_d = alloca %struct._GimpVector2, align 8
  %oct.addr = alloca %struct._GimpOperationCageTransform*, align 8
  %out_buf.addr = alloca %struct._GeglBuffer*, align 8
  %roi.addr = alloca %struct._GeglRectangle*, align 8
  %recursion_depth.addr = alloca i32, align 4
  %coords.addr = alloca float*, align 8
  %rect = alloca %struct._GeglRectangle, align 4
  %xmin = alloca i32, align 4
  %xmax = alloca i32, align 4
  %ymin = alloca i32, align 4
  %ymax = alloca i32, align 4
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  %denom = alloca double, align 8
  %x172 = alloca double, align 8
  %y173 = alloca double, align 8
  %pm1_d = alloca %struct._GimpVector2, align 8
  %pm2_d = alloca %struct._GimpVector2, align 8
  %pm3_d = alloca %struct._GimpVector2, align 8
  %pm1_s = alloca %struct._GimpVector2, align 8
  %pm2_s = alloca %struct._GimpVector2, align 8
  %pm3_s = alloca %struct._GimpVector2, align 8
  %next_depth = alloca i32, align 4
  %0 = bitcast %struct._GimpVector2* %p1_s to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %p1_s.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %p1_s.coerce1, double* %2
  %3 = bitcast %struct._GimpVector2* %p1_d to { double, double }*
  %4 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 0
  store double %p1_d.coerce0, double* %4
  %5 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 1
  store double %p1_d.coerce1, double* %5
  %6 = bitcast %struct._GimpVector2* %p2_s to { double, double }*
  %7 = getelementptr { double, double }, { double, double }* %6, i32 0, i32 0
  store double %p2_s.coerce0, double* %7
  %8 = getelementptr { double, double }, { double, double }* %6, i32 0, i32 1
  store double %p2_s.coerce1, double* %8
  %9 = bitcast %struct._GimpVector2* %p2_d to { double, double }*
  %10 = getelementptr { double, double }, { double, double }* %9, i32 0, i32 0
  store double %p2_d.coerce0, double* %10
  %11 = getelementptr { double, double }, { double, double }* %9, i32 0, i32 1
  store double %p2_d.coerce1, double* %11
  store %struct._GimpOperationCageTransform* %oct, %struct._GimpOperationCageTransform** %oct.addr, align 8
  store %struct._GeglBuffer* %out_buf, %struct._GeglBuffer** %out_buf.addr, align 8
  store %struct._GeglRectangle* %roi, %struct._GeglRectangle** %roi.addr, align 8
  store i32 %recursion_depth, i32* %recursion_depth.addr, align 4
  store float* %coords, float** %coords.addr, align 8
  %12 = bitcast %struct._GeglRectangle* %rect to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* bitcast (%struct._GeglRectangle* @gimp_operation_cage_transform_interpolate_source_coords_recurs.rect to i8*), i64 16, i32 4, i1 false)
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p1_d, i32 0, i32 0
  %13 = load double, double* %x, align 8
  %14 = load %struct._GeglRectangle*, %struct._GeglRectangle** %roi.addr, align 8
  %x1 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %14, i32 0, i32 0
  %15 = load i32, i32* %x1, align 4
  %16 = load %struct._GeglRectangle*, %struct._GeglRectangle** %roi.addr, align 8
  %width = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %16, i32 0, i32 2
  %17 = load i32, i32* %width, align 4
  %add = add nsw i32 %15, %17
  %conv = sitofp i32 %add to double
  %cmp = fcmp ogt double %13, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.325

if.end:                                           ; preds = %entry
  %x3 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p2_d, i32 0, i32 0
  %18 = load double, double* %x3, align 8
  %19 = load %struct._GeglRectangle*, %struct._GeglRectangle** %roi.addr, align 8
  %x4 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %19, i32 0, i32 0
  %20 = load i32, i32* %x4, align 4
  %21 = load %struct._GeglRectangle*, %struct._GeglRectangle** %roi.addr, align 8
  %width5 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %21, i32 0, i32 2
  %22 = load i32, i32* %width5, align 4
  %add6 = add nsw i32 %20, %22
  %conv7 = sitofp i32 %add6 to double
  %cmp8 = fcmp ogt double %18, %conv7
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  br label %if.end.325

if.end.11:                                        ; preds = %if.end
  %x12 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p3_d, i32 0, i32 0
  %23 = load double, double* %x12, align 8
  %24 = load %struct._GeglRectangle*, %struct._GeglRectangle** %roi.addr, align 8
  %x13 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %24, i32 0, i32 0
  %25 = load i32, i32* %x13, align 4
  %26 = load %struct._GeglRectangle*, %struct._GeglRectangle** %roi.addr, align 8
  %width14 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %26, i32 0, i32 2
  %27 = load i32, i32* %width14, align 4
  %add15 = add nsw i32 %25, %27
  %conv16 = sitofp i32 %add15 to double
  %cmp17 = fcmp ogt double %23, %conv16
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.11
  br label %if.end.325

if.end.20:                                        ; preds = %if.end.11
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p1_d, i32 0, i32 1
  %28 = load double, double* %y, align 8
  %29 = load %struct._GeglRectangle*, %struct._GeglRectangle** %roi.addr, align 8
  %y21 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %29, i32 0, i32 1
  %30 = load i32, i32* %y21, align 4
  %31 = load %struct._GeglRectangle*, %struct._GeglRectangle** %roi.addr, align 8
  %height = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %31, i32 0, i32 3
  %32 = load i32, i32* %height, align 4
  %add22 = add nsw i32 %30, %32
  %conv23 = sitofp i32 %add22 to double
  %cmp24 = fcmp ogt double %28, %conv23
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.20
  br label %if.end.325

if.end.27:                                        ; preds = %if.end.20
  %y28 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p2_d, i32 0, i32 1
  %33 = load double, double* %y28, align 8
  %34 = load %struct._GeglRectangle*, %struct._GeglRectangle** %roi.addr, align 8
  %y29 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %34, i32 0, i32 1
  %35 = load i32, i32* %y29, align 4
  %36 = load %struct._GeglRectangle*, %struct._GeglRectangle** %roi.addr, align 8
  %height30 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %36, i32 0, i32 3
  %37 = load i32, i32* %height30, align 4
  %add31 = add nsw i32 %35, %37
  %conv32 = sitofp i32 %add31 to double
  %cmp33 = fcmp ogt double %33, %conv32
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.27
  br label %if.end.325

if.end.36:                                        ; preds = %if.end.27
  %y37 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p3_d, i32 0, i32 1
  %38 = load double, double* %y37, align 8
  %39 = load %struct._GeglRectangle*, %struct._GeglRectangle** %roi.addr, align 8
  %y38 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %39, i32 0, i32 1
  %40 = load i32, i32* %y38, align 4
  %41 = load %struct._GeglRectangle*, %struct._GeglRectangle** %roi.addr, align 8
  %height39 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %41, i32 0, i32 3
  %42 = load i32, i32* %height39, align 4
  %add40 = add nsw i32 %40, %42
  %conv41 = sitofp i32 %add40 to double
  %cmp42 = fcmp ogt double %38, %conv41
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.36
  br label %if.end.325

if.end.45:                                        ; preds = %if.end.36
  %x46 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p1_d, i32 0, i32 0
  %43 = load double, double* %x46, align 8
  %44 = load %struct._GeglRectangle*, %struct._GeglRectangle** %roi.addr, align 8
  %x47 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %44, i32 0, i32 0
  %45 = load i32, i32* %x47, align 4
  %conv48 = sitofp i32 %45 to double
  %cmp49 = fcmp ole double %43, %conv48
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.45
  br label %if.end.325

if.end.52:                                        ; preds = %if.end.45
  %x53 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p2_d, i32 0, i32 0
  %46 = load double, double* %x53, align 8
  %47 = load %struct._GeglRectangle*, %struct._GeglRectangle** %roi.addr, align 8
  %x54 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %47, i32 0, i32 0
  %48 = load i32, i32* %x54, align 4
  %conv55 = sitofp i32 %48 to double
  %cmp56 = fcmp ole double %46, %conv55
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.52
  br label %if.end.325

if.end.59:                                        ; preds = %if.end.52
  %x60 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p3_d, i32 0, i32 0
  %49 = load double, double* %x60, align 8
  %50 = load %struct._GeglRectangle*, %struct._GeglRectangle** %roi.addr, align 8
  %x61 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %50, i32 0, i32 0
  %51 = load i32, i32* %x61, align 4
  %conv62 = sitofp i32 %51 to double
  %cmp63 = fcmp ole double %49, %conv62
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.59
  br label %if.end.325

if.end.66:                                        ; preds = %if.end.59
  %y67 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p1_d, i32 0, i32 1
  %52 = load double, double* %y67, align 8
  %53 = load %struct._GeglRectangle*, %struct._GeglRectangle** %roi.addr, align 8
  %y68 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %53, i32 0, i32 1
  %54 = load i32, i32* %y68, align 4
  %conv69 = sitofp i32 %54 to double
  %cmp70 = fcmp ole double %52, %conv69
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end.66
  br label %if.end.325

if.end.73:                                        ; preds = %if.end.66
  %y74 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p2_d, i32 0, i32 1
  %55 = load double, double* %y74, align 8
  %56 = load %struct._GeglRectangle*, %struct._GeglRectangle** %roi.addr, align 8
  %y75 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %56, i32 0, i32 1
  %57 = load i32, i32* %y75, align 4
  %conv76 = sitofp i32 %57 to double
  %cmp77 = fcmp ole double %55, %conv76
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.end.73
  br label %if.end.325

if.end.80:                                        ; preds = %if.end.73
  %y81 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p3_d, i32 0, i32 1
  %58 = load double, double* %y81, align 8
  %59 = load %struct._GeglRectangle*, %struct._GeglRectangle** %roi.addr, align 8
  %y82 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %59, i32 0, i32 1
  %60 = load i32, i32* %y82, align 4
  %conv83 = sitofp i32 %60 to double
  %cmp84 = fcmp ole double %58, %conv83
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.end.80
  br label %if.end.325

if.end.87:                                        ; preds = %if.end.80
  %x88 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p1_d, i32 0, i32 0
  %61 = load double, double* %x88, align 8
  %conv89 = fptosi double %61 to i32
  store i32 %conv89, i32* %xmax, align 4
  store i32 %conv89, i32* %xmin, align 4
  %y90 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p1_d, i32 0, i32 1
  %62 = load double, double* %y90, align 8
  %conv91 = fptosi double %62 to i32
  store i32 %conv91, i32* %ymax, align 4
  store i32 %conv91, i32* %ymin, align 4
  %63 = load i32, i32* %xmin, align 4
  %conv92 = sitofp i32 %63 to double
  %x93 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p2_d, i32 0, i32 0
  %64 = load double, double* %x93, align 8
  %cmp94 = fcmp ogt double %conv92, %64
  br i1 %cmp94, label %if.then.96, label %if.end.99

if.then.96:                                       ; preds = %if.end.87
  %x97 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p2_d, i32 0, i32 0
  %65 = load double, double* %x97, align 8
  %conv98 = fptosi double %65 to i32
  store i32 %conv98, i32* %xmin, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.96, %if.end.87
  %66 = load i32, i32* %xmin, align 4
  %conv100 = sitofp i32 %66 to double
  %x101 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p3_d, i32 0, i32 0
  %67 = load double, double* %x101, align 8
  %cmp102 = fcmp ogt double %conv100, %67
  br i1 %cmp102, label %if.then.104, label %if.end.107

if.then.104:                                      ; preds = %if.end.99
  %x105 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p3_d, i32 0, i32 0
  %68 = load double, double* %x105, align 8
  %conv106 = fptosi double %68 to i32
  store i32 %conv106, i32* %xmin, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.104, %if.end.99
  %69 = load i32, i32* %xmax, align 4
  %conv108 = sitofp i32 %69 to double
  %x109 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p2_d, i32 0, i32 0
  %70 = load double, double* %x109, align 8
  %cmp110 = fcmp olt double %conv108, %70
  br i1 %cmp110, label %if.then.112, label %if.end.115

if.then.112:                                      ; preds = %if.end.107
  %x113 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p2_d, i32 0, i32 0
  %71 = load double, double* %x113, align 8
  %conv114 = fptosi double %71 to i32
  store i32 %conv114, i32* %xmax, align 4
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.112, %if.end.107
  %72 = load i32, i32* %xmax, align 4
  %conv116 = sitofp i32 %72 to double
  %x117 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p3_d, i32 0, i32 0
  %73 = load double, double* %x117, align 8
  %cmp118 = fcmp olt double %conv116, %73
  br i1 %cmp118, label %if.then.120, label %if.end.123

if.then.120:                                      ; preds = %if.end.115
  %x121 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p3_d, i32 0, i32 0
  %74 = load double, double* %x121, align 8
  %conv122 = fptosi double %74 to i32
  store i32 %conv122, i32* %xmax, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.120, %if.end.115
  %75 = load i32, i32* %ymin, align 4
  %conv124 = sitofp i32 %75 to double
  %y125 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p2_d, i32 0, i32 1
  %76 = load double, double* %y125, align 8
  %cmp126 = fcmp ogt double %conv124, %76
  br i1 %cmp126, label %if.then.128, label %if.end.131

if.then.128:                                      ; preds = %if.end.123
  %y129 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p2_d, i32 0, i32 1
  %77 = load double, double* %y129, align 8
  %conv130 = fptosi double %77 to i32
  store i32 %conv130, i32* %ymin, align 4
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.128, %if.end.123
  %78 = load i32, i32* %ymin, align 4
  %conv132 = sitofp i32 %78 to double
  %y133 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p3_d, i32 0, i32 1
  %79 = load double, double* %y133, align 8
  %cmp134 = fcmp ogt double %conv132, %79
  br i1 %cmp134, label %if.then.136, label %if.end.139

if.then.136:                                      ; preds = %if.end.131
  %y137 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p3_d, i32 0, i32 1
  %80 = load double, double* %y137, align 8
  %conv138 = fptosi double %80 to i32
  store i32 %conv138, i32* %ymin, align 4
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.136, %if.end.131
  %81 = load i32, i32* %ymax, align 4
  %conv140 = sitofp i32 %81 to double
  %y141 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p2_d, i32 0, i32 1
  %82 = load double, double* %y141, align 8
  %cmp142 = fcmp olt double %conv140, %82
  br i1 %cmp142, label %if.then.144, label %if.end.147

if.then.144:                                      ; preds = %if.end.139
  %y145 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p2_d, i32 0, i32 1
  %83 = load double, double* %y145, align 8
  %conv146 = fptosi double %83 to i32
  store i32 %conv146, i32* %ymax, align 4
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.144, %if.end.139
  %84 = load i32, i32* %ymax, align 4
  %conv148 = sitofp i32 %84 to double
  %y149 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p3_d, i32 0, i32 1
  %85 = load double, double* %y149, align 8
  %cmp150 = fcmp olt double %conv148, %85
  br i1 %cmp150, label %if.then.152, label %if.end.155

if.then.152:                                      ; preds = %if.end.147
  %y153 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p3_d, i32 0, i32 1
  %86 = load double, double* %y153, align 8
  %conv154 = fptosi double %86 to i32
  store i32 %conv154, i32* %ymax, align 4
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.152, %if.end.147
  %87 = load i32, i32* %xmin, align 4
  %88 = load i32, i32* %xmax, align 4
  %cmp156 = icmp eq i32 %87, %88
  br i1 %cmp156, label %if.then.160, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.155
  %89 = load i32, i32* %ymin, align 4
  %90 = load i32, i32* %ymax, align 4
  %cmp158 = icmp eq i32 %89, %90
  br i1 %cmp158, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %lor.lhs.false, %if.end.155
  br label %if.end.325

if.end.161:                                       ; preds = %lor.lhs.false
  %91 = load i32, i32* %recursion_depth.addr, align 4
  %cmp162 = icmp sgt i32 %91, 5
  br i1 %cmp162, label %if.then.164, label %if.end.165

if.then.164:                                      ; preds = %if.end.161
  br label %if.end.325

if.end.165:                                       ; preds = %if.end.161
  %92 = load i32, i32* %xmax, align 4
  %93 = load i32, i32* %xmin, align 4
  %sub = sub nsw i32 %92, %93
  %cmp166 = icmp eq i32 %sub, 1
  br i1 %cmp166, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.165
  %94 = load i32, i32* %ymax, align 4
  %95 = load i32, i32* %ymin, align 4
  %sub168 = sub nsw i32 %94, %95
  %cmp169 = icmp eq i32 %sub168, 1
  br i1 %cmp169, label %if.then.171, label %if.else

if.then.171:                                      ; preds = %land.lhs.true
  %96 = load i32, i32* %xmax, align 4
  %x174 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 0
  store i32 %96, i32* %x174, align 4
  %97 = load i32, i32* %ymax, align 4
  %y175 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 1
  store i32 %97, i32* %y175, align 4
  %98 = load i32, i32* %xmax, align 4
  %conv176 = sitofp i32 %98 to double
  store double %conv176, double* %x172, align 8
  %99 = load i32, i32* %ymax, align 4
  %conv177 = sitofp i32 %99 to double
  store double %conv177, double* %y173, align 8
  %x178 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p2_d, i32 0, i32 0
  %100 = load double, double* %x178, align 8
  %x179 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p1_d, i32 0, i32 0
  %101 = load double, double* %x179, align 8
  %sub180 = fsub double %100, %101
  %y181 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p3_d, i32 0, i32 1
  %102 = load double, double* %y181, align 8
  %mul = fmul double %sub180, %102
  %x182 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p1_d, i32 0, i32 0
  %103 = load double, double* %x182, align 8
  %x183 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p3_d, i32 0, i32 0
  %104 = load double, double* %x183, align 8
  %sub184 = fsub double %103, %104
  %y185 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p2_d, i32 0, i32 1
  %105 = load double, double* %y185, align 8
  %mul186 = fmul double %sub184, %105
  %add187 = fadd double %mul, %mul186
  %x188 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p3_d, i32 0, i32 0
  %106 = load double, double* %x188, align 8
  %x189 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p2_d, i32 0, i32 0
  %107 = load double, double* %x189, align 8
  %sub190 = fsub double %106, %107
  %y191 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p1_d, i32 0, i32 1
  %108 = load double, double* %y191, align 8
  %mul192 = fmul double %sub190, %108
  %add193 = fadd double %add187, %mul192
  store double %add193, double* %denom, align 8
  %x194 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p2_d, i32 0, i32 0
  %109 = load double, double* %x194, align 8
  %110 = load double, double* %x172, align 8
  %sub195 = fsub double %109, %110
  %y196 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p3_d, i32 0, i32 1
  %111 = load double, double* %y196, align 8
  %mul197 = fmul double %sub195, %111
  %112 = load double, double* %x172, align 8
  %x198 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p3_d, i32 0, i32 0
  %113 = load double, double* %x198, align 8
  %sub199 = fsub double %112, %113
  %y200 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p2_d, i32 0, i32 1
  %114 = load double, double* %y200, align 8
  %mul201 = fmul double %sub199, %114
  %add202 = fadd double %mul197, %mul201
  %x203 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p3_d, i32 0, i32 0
  %115 = load double, double* %x203, align 8
  %x204 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p2_d, i32 0, i32 0
  %116 = load double, double* %x204, align 8
  %sub205 = fsub double %115, %116
  %117 = load double, double* %y173, align 8
  %mul206 = fmul double %sub205, %117
  %add207 = fadd double %add202, %mul206
  %118 = load double, double* %denom, align 8
  %div = fdiv double %add207, %118
  store double %div, double* %a, align 8
  %x208 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p1_d, i32 0, i32 0
  %119 = load double, double* %x208, align 8
  %120 = load double, double* %x172, align 8
  %sub209 = fsub double %119, %120
  %y210 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p3_d, i32 0, i32 1
  %121 = load double, double* %y210, align 8
  %mul211 = fmul double %sub209, %121
  %122 = load double, double* %x172, align 8
  %x212 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p3_d, i32 0, i32 0
  %123 = load double, double* %x212, align 8
  %sub213 = fsub double %122, %123
  %y214 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p1_d, i32 0, i32 1
  %124 = load double, double* %y214, align 8
  %mul215 = fmul double %sub213, %124
  %add216 = fadd double %mul211, %mul215
  %x217 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p3_d, i32 0, i32 0
  %125 = load double, double* %x217, align 8
  %x218 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p1_d, i32 0, i32 0
  %126 = load double, double* %x218, align 8
  %sub219 = fsub double %125, %126
  %127 = load double, double* %y173, align 8
  %mul220 = fmul double %sub219, %127
  %add221 = fadd double %add216, %mul220
  %sub222 = fsub double -0.000000e+00, %add221
  %128 = load double, double* %denom, align 8
  %div223 = fdiv double %sub222, %128
  store double %div223, double* %b, align 8
  %129 = load double, double* %a, align 8
  %sub224 = fsub double 1.000000e+00, %129
  %130 = load double, double* %b, align 8
  %sub225 = fsub double %sub224, %130
  store double %sub225, double* %c, align 8
  %131 = load double, double* %a, align 8
  %cmp226 = fcmp ogt double %131, 0.000000e+00
  br i1 %cmp226, label %land.lhs.true.228, label %lor.lhs.false.234

land.lhs.true.228:                                ; preds = %if.then.171
  %132 = load double, double* %b, align 8
  %cmp229 = fcmp ogt double %132, 0.000000e+00
  br i1 %cmp229, label %land.lhs.true.231, label %lor.lhs.false.234

land.lhs.true.231:                                ; preds = %land.lhs.true.228
  %133 = load double, double* %c, align 8
  %cmp232 = fcmp ogt double %133, 0.000000e+00
  br i1 %cmp232, label %if.then.243, label %lor.lhs.false.234

lor.lhs.false.234:                                ; preds = %land.lhs.true.231, %land.lhs.true.228, %if.then.171
  %134 = load double, double* %a, align 8
  %cmp235 = fcmp olt double %134, 0.000000e+00
  br i1 %cmp235, label %land.lhs.true.237, label %if.end.263

land.lhs.true.237:                                ; preds = %lor.lhs.false.234
  %135 = load double, double* %b, align 8
  %cmp238 = fcmp olt double %135, 0.000000e+00
  br i1 %cmp238, label %land.lhs.true.240, label %if.end.263

land.lhs.true.240:                                ; preds = %land.lhs.true.237
  %136 = load double, double* %c, align 8
  %cmp241 = fcmp olt double %136, 0.000000e+00
  br i1 %cmp241, label %if.then.243, label %if.end.263

if.then.243:                                      ; preds = %land.lhs.true.240, %land.lhs.true.231
  %137 = load double, double* %a, align 8
  %x244 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p1_s, i32 0, i32 0
  %138 = load double, double* %x244, align 8
  %mul245 = fmul double %137, %138
  %139 = load double, double* %b, align 8
  %x246 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p2_s, i32 0, i32 0
  %140 = load double, double* %x246, align 8
  %mul247 = fmul double %139, %140
  %add248 = fadd double %mul245, %mul247
  %141 = load double, double* %c, align 8
  %x249 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p3_s, i32 0, i32 0
  %142 = load double, double* %x249, align 8
  %mul250 = fmul double %141, %142
  %add251 = fadd double %add248, %mul250
  %conv252 = fptrunc double %add251 to float
  %143 = load float*, float** %coords.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %143, i64 0
  store float %conv252, float* %arrayidx, align 4
  %144 = load double, double* %a, align 8
  %y253 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p1_s, i32 0, i32 1
  %145 = load double, double* %y253, align 8
  %mul254 = fmul double %144, %145
  %146 = load double, double* %b, align 8
  %y255 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p2_s, i32 0, i32 1
  %147 = load double, double* %y255, align 8
  %mul256 = fmul double %146, %147
  %add257 = fadd double %mul254, %mul256
  %148 = load double, double* %c, align 8
  %y258 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p3_s, i32 0, i32 1
  %149 = load double, double* %y258, align 8
  %mul259 = fmul double %148, %149
  %add260 = fadd double %add257, %mul259
  %conv261 = fptrunc double %add260 to float
  %150 = load float*, float** %coords.addr, align 8
  %arrayidx262 = getelementptr inbounds float, float* %150, i64 1
  store float %conv261, float* %arrayidx262, align 4
  %151 = load %struct._GeglBuffer*, %struct._GeglBuffer** %out_buf.addr, align 8
  %152 = load %struct._GimpOperationCageTransform*, %struct._GimpOperationCageTransform** %oct.addr, align 8
  %format_coords = getelementptr inbounds %struct._GimpOperationCageTransform, %struct._GimpOperationCageTransform* %152, i32 0, i32 3
  %153 = load %union._Babl*, %union._Babl** %format_coords, align 8
  %154 = load float*, float** %coords.addr, align 8
  %155 = bitcast float* %154 to i8*
  call void @gegl_buffer_set(%struct._GeglBuffer* %151, %struct._GeglRectangle* %rect, i32 0, %union._Babl* %153, i8* %155, i32 0)
  br label %if.end.263

if.end.263:                                       ; preds = %if.then.243, %land.lhs.true.240, %land.lhs.true.237, %lor.lhs.false.234
  br label %if.end.325

if.else:                                          ; preds = %land.lhs.true, %if.end.165
  %156 = load i32, i32* %recursion_depth.addr, align 4
  %add264 = add nsw i32 %156, 1
  store i32 %add264, i32* %next_depth, align 4
  %x265 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p1_d, i32 0, i32 0
  %157 = load double, double* %x265, align 8
  %x266 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p2_d, i32 0, i32 0
  %158 = load double, double* %x266, align 8
  %add267 = fadd double %157, %158
  %div268 = fdiv double %add267, 2.000000e+00
  %x269 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %pm1_d, i32 0, i32 0
  store double %div268, double* %x269, align 8
  %y270 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p1_d, i32 0, i32 1
  %159 = load double, double* %y270, align 8
  %y271 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p2_d, i32 0, i32 1
  %160 = load double, double* %y271, align 8
  %add272 = fadd double %159, %160
  %div273 = fdiv double %add272, 2.000000e+00
  %y274 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %pm1_d, i32 0, i32 1
  store double %div273, double* %y274, align 8
  %x275 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p2_d, i32 0, i32 0
  %161 = load double, double* %x275, align 8
  %x276 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p3_d, i32 0, i32 0
  %162 = load double, double* %x276, align 8
  %add277 = fadd double %161, %162
  %div278 = fdiv double %add277, 2.000000e+00
  %x279 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %pm2_d, i32 0, i32 0
  store double %div278, double* %x279, align 8
  %y280 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p2_d, i32 0, i32 1
  %163 = load double, double* %y280, align 8
  %y281 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p3_d, i32 0, i32 1
  %164 = load double, double* %y281, align 8
  %add282 = fadd double %163, %164
  %div283 = fdiv double %add282, 2.000000e+00
  %y284 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %pm2_d, i32 0, i32 1
  store double %div283, double* %y284, align 8
  %x285 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p3_d, i32 0, i32 0
  %165 = load double, double* %x285, align 8
  %x286 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p1_d, i32 0, i32 0
  %166 = load double, double* %x286, align 8
  %add287 = fadd double %165, %166
  %div288 = fdiv double %add287, 2.000000e+00
  %x289 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %pm3_d, i32 0, i32 0
  store double %div288, double* %x289, align 8
  %y290 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p3_d, i32 0, i32 1
  %167 = load double, double* %y290, align 8
  %y291 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p1_d, i32 0, i32 1
  %168 = load double, double* %y291, align 8
  %add292 = fadd double %167, %168
  %div293 = fdiv double %add292, 2.000000e+00
  %y294 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %pm3_d, i32 0, i32 1
  store double %div293, double* %y294, align 8
  %x295 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p1_s, i32 0, i32 0
  %169 = load double, double* %x295, align 8
  %x296 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p2_s, i32 0, i32 0
  %170 = load double, double* %x296, align 8
  %add297 = fadd double %169, %170
  %div298 = fdiv double %add297, 2.000000e+00
  %x299 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %pm1_s, i32 0, i32 0
  store double %div298, double* %x299, align 8
  %y300 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p1_s, i32 0, i32 1
  %171 = load double, double* %y300, align 8
  %y301 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p2_s, i32 0, i32 1
  %172 = load double, double* %y301, align 8
  %add302 = fadd double %171, %172
  %div303 = fdiv double %add302, 2.000000e+00
  %y304 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %pm1_s, i32 0, i32 1
  store double %div303, double* %y304, align 8
  %x305 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p2_s, i32 0, i32 0
  %173 = load double, double* %x305, align 8
  %x306 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p3_s, i32 0, i32 0
  %174 = load double, double* %x306, align 8
  %add307 = fadd double %173, %174
  %div308 = fdiv double %add307, 2.000000e+00
  %x309 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %pm2_s, i32 0, i32 0
  store double %div308, double* %x309, align 8
  %y310 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p2_s, i32 0, i32 1
  %175 = load double, double* %y310, align 8
  %y311 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p3_s, i32 0, i32 1
  %176 = load double, double* %y311, align 8
  %add312 = fadd double %175, %176
  %div313 = fdiv double %add312, 2.000000e+00
  %y314 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %pm2_s, i32 0, i32 1
  store double %div313, double* %y314, align 8
  %x315 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p3_s, i32 0, i32 0
  %177 = load double, double* %x315, align 8
  %x316 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p1_s, i32 0, i32 0
  %178 = load double, double* %x316, align 8
  %add317 = fadd double %177, %178
  %div318 = fdiv double %add317, 2.000000e+00
  %x319 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %pm3_s, i32 0, i32 0
  store double %div318, double* %x319, align 8
  %y320 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p3_s, i32 0, i32 1
  %179 = load double, double* %y320, align 8
  %y321 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %p1_s, i32 0, i32 1
  %180 = load double, double* %y321, align 8
  %add322 = fadd double %179, %180
  %div323 = fdiv double %add322, 2.000000e+00
  %y324 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %pm3_s, i32 0, i32 1
  store double %div323, double* %y324, align 8
  %181 = load %struct._GimpOperationCageTransform*, %struct._GimpOperationCageTransform** %oct.addr, align 8
  %182 = load %struct._GeglBuffer*, %struct._GeglBuffer** %out_buf.addr, align 8
  %183 = load %struct._GeglRectangle*, %struct._GeglRectangle** %roi.addr, align 8
  %184 = load i32, i32* %next_depth, align 4
  %185 = load float*, float** %coords.addr, align 8
  %186 = bitcast %struct._GimpVector2* %p1_s to { double, double }*
  %187 = getelementptr { double, double }, { double, double }* %186, i32 0, i32 0
  %188 = load double, double* %187, align 1
  %189 = getelementptr { double, double }, { double, double }* %186, i32 0, i32 1
  %190 = load double, double* %189, align 1
  %191 = bitcast %struct._GimpVector2* %p1_d to { double, double }*
  %192 = getelementptr { double, double }, { double, double }* %191, i32 0, i32 0
  %193 = load double, double* %192, align 1
  %194 = getelementptr { double, double }, { double, double }* %191, i32 0, i32 1
  %195 = load double, double* %194, align 1
  %196 = bitcast %struct._GimpVector2* %pm1_s to { double, double }*
  %197 = getelementptr { double, double }, { double, double }* %196, i32 0, i32 0
  %198 = load double, double* %197, align 1
  %199 = getelementptr { double, double }, { double, double }* %196, i32 0, i32 1
  %200 = load double, double* %199, align 1
  %201 = bitcast %struct._GimpVector2* %pm1_d to { double, double }*
  %202 = getelementptr { double, double }, { double, double }* %201, i32 0, i32 0
  %203 = load double, double* %202, align 1
  %204 = getelementptr { double, double }, { double, double }* %201, i32 0, i32 1
  %205 = load double, double* %204, align 1
  call void @gimp_operation_cage_transform_interpolate_source_coords_recurs(%struct._GimpOperationCageTransform* %181, %struct._GeglBuffer* %182, %struct._GeglRectangle* %183, double %188, double %190, double %193, double %195, double %198, double %200, double %203, double %205, %struct._GimpVector2* byval align 8 %pm3_s, %struct._GimpVector2* byval align 8 %pm3_d, i32 %184, float* %185)
  %206 = load %struct._GimpOperationCageTransform*, %struct._GimpOperationCageTransform** %oct.addr, align 8
  %207 = load %struct._GeglBuffer*, %struct._GeglBuffer** %out_buf.addr, align 8
  %208 = load %struct._GeglRectangle*, %struct._GeglRectangle** %roi.addr, align 8
  %209 = load i32, i32* %next_depth, align 4
  %210 = load float*, float** %coords.addr, align 8
  %211 = bitcast %struct._GimpVector2* %pm1_s to { double, double }*
  %212 = getelementptr { double, double }, { double, double }* %211, i32 0, i32 0
  %213 = load double, double* %212, align 1
  %214 = getelementptr { double, double }, { double, double }* %211, i32 0, i32 1
  %215 = load double, double* %214, align 1
  %216 = bitcast %struct._GimpVector2* %pm1_d to { double, double }*
  %217 = getelementptr { double, double }, { double, double }* %216, i32 0, i32 0
  %218 = load double, double* %217, align 1
  %219 = getelementptr { double, double }, { double, double }* %216, i32 0, i32 1
  %220 = load double, double* %219, align 1
  %221 = bitcast %struct._GimpVector2* %p2_s to { double, double }*
  %222 = getelementptr { double, double }, { double, double }* %221, i32 0, i32 0
  %223 = load double, double* %222, align 1
  %224 = getelementptr { double, double }, { double, double }* %221, i32 0, i32 1
  %225 = load double, double* %224, align 1
  %226 = bitcast %struct._GimpVector2* %p2_d to { double, double }*
  %227 = getelementptr { double, double }, { double, double }* %226, i32 0, i32 0
  %228 = load double, double* %227, align 1
  %229 = getelementptr { double, double }, { double, double }* %226, i32 0, i32 1
  %230 = load double, double* %229, align 1
  call void @gimp_operation_cage_transform_interpolate_source_coords_recurs(%struct._GimpOperationCageTransform* %206, %struct._GeglBuffer* %207, %struct._GeglRectangle* %208, double %213, double %215, double %218, double %220, double %223, double %225, double %228, double %230, %struct._GimpVector2* byval align 8 %pm2_s, %struct._GimpVector2* byval align 8 %pm2_d, i32 %209, float* %210)
  %231 = load %struct._GimpOperationCageTransform*, %struct._GimpOperationCageTransform** %oct.addr, align 8
  %232 = load %struct._GeglBuffer*, %struct._GeglBuffer** %out_buf.addr, align 8
  %233 = load %struct._GeglRectangle*, %struct._GeglRectangle** %roi.addr, align 8
  %234 = load i32, i32* %next_depth, align 4
  %235 = load float*, float** %coords.addr, align 8
  %236 = bitcast %struct._GimpVector2* %pm1_s to { double, double }*
  %237 = getelementptr { double, double }, { double, double }* %236, i32 0, i32 0
  %238 = load double, double* %237, align 1
  %239 = getelementptr { double, double }, { double, double }* %236, i32 0, i32 1
  %240 = load double, double* %239, align 1
  %241 = bitcast %struct._GimpVector2* %pm1_d to { double, double }*
  %242 = getelementptr { double, double }, { double, double }* %241, i32 0, i32 0
  %243 = load double, double* %242, align 1
  %244 = getelementptr { double, double }, { double, double }* %241, i32 0, i32 1
  %245 = load double, double* %244, align 1
  %246 = bitcast %struct._GimpVector2* %pm2_s to { double, double }*
  %247 = getelementptr { double, double }, { double, double }* %246, i32 0, i32 0
  %248 = load double, double* %247, align 1
  %249 = getelementptr { double, double }, { double, double }* %246, i32 0, i32 1
  %250 = load double, double* %249, align 1
  %251 = bitcast %struct._GimpVector2* %pm2_d to { double, double }*
  %252 = getelementptr { double, double }, { double, double }* %251, i32 0, i32 0
  %253 = load double, double* %252, align 1
  %254 = getelementptr { double, double }, { double, double }* %251, i32 0, i32 1
  %255 = load double, double* %254, align 1
  call void @gimp_operation_cage_transform_interpolate_source_coords_recurs(%struct._GimpOperationCageTransform* %231, %struct._GeglBuffer* %232, %struct._GeglRectangle* %233, double %238, double %240, double %243, double %245, double %248, double %250, double %253, double %255, %struct._GimpVector2* byval align 8 %pm3_s, %struct._GimpVector2* byval align 8 %pm3_d, i32 %234, float* %235)
  %256 = load %struct._GimpOperationCageTransform*, %struct._GimpOperationCageTransform** %oct.addr, align 8
  %257 = load %struct._GeglBuffer*, %struct._GeglBuffer** %out_buf.addr, align 8
  %258 = load %struct._GeglRectangle*, %struct._GeglRectangle** %roi.addr, align 8
  %259 = load i32, i32* %next_depth, align 4
  %260 = load float*, float** %coords.addr, align 8
  %261 = bitcast %struct._GimpVector2* %pm3_s to { double, double }*
  %262 = getelementptr { double, double }, { double, double }* %261, i32 0, i32 0
  %263 = load double, double* %262, align 1
  %264 = getelementptr { double, double }, { double, double }* %261, i32 0, i32 1
  %265 = load double, double* %264, align 1
  %266 = bitcast %struct._GimpVector2* %pm3_d to { double, double }*
  %267 = getelementptr { double, double }, { double, double }* %266, i32 0, i32 0
  %268 = load double, double* %267, align 1
  %269 = getelementptr { double, double }, { double, double }* %266, i32 0, i32 1
  %270 = load double, double* %269, align 1
  %271 = bitcast %struct._GimpVector2* %pm2_s to { double, double }*
  %272 = getelementptr { double, double }, { double, double }* %271, i32 0, i32 0
  %273 = load double, double* %272, align 1
  %274 = getelementptr { double, double }, { double, double }* %271, i32 0, i32 1
  %275 = load double, double* %274, align 1
  %276 = bitcast %struct._GimpVector2* %pm2_d to { double, double }*
  %277 = getelementptr { double, double }, { double, double }* %276, i32 0, i32 0
  %278 = load double, double* %277, align 1
  %279 = getelementptr { double, double }, { double, double }* %276, i32 0, i32 1
  %280 = load double, double* %279, align 1
  call void @gimp_operation_cage_transform_interpolate_source_coords_recurs(%struct._GimpOperationCageTransform* %256, %struct._GeglBuffer* %257, %struct._GeglRectangle* %258, double %263, double %265, double %268, double %270, double %273, double %275, double %278, double %280, %struct._GimpVector2* byval align 8 %p3_s, %struct._GimpVector2* byval align 8 %p3_d, i32 %259, float* %260)
  br label %if.end.325

if.end.325:                                       ; preds = %if.then, %if.then.10, %if.then.19, %if.then.26, %if.then.35, %if.then.44, %if.then.51, %if.then.58, %if.then.65, %if.then.72, %if.then.79, %if.then.86, %if.then.160, %if.then.164, %if.end.263, %if.else
  ret void
}

declare void @g_free(i8*) #1

declare void @g_slice_free1(i64, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare void @gegl_buffer_get(%struct._GeglBuffer*, %struct._GeglRectangle*, double, %union._Babl*, i8*, i32, i32) #1

declare void @gegl_buffer_set(%struct._GeglBuffer*, %struct._GeglRectangle*, i32, %union._Babl*, i8*, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
