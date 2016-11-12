; ModuleID = './app/gegl/gimpoperationtilesink.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GStaticMutex = type { %union._GMutex*, %union.pthread_mutex_t }
%union._GMutex = type { i8* }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i32, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpOperationTileSinkClass = type { %struct._GeglOperationSinkClass, void (%struct._GimpOperationTileSink*, %struct._GeglRectangle*)* }
%struct._GeglOperationSinkClass = type { %struct._GeglOperationClass, i32, i32 (%struct._GeglOperation*, %struct._GeglBuffer*, %struct._GeglRectangle*, i32)*, [4 x i8*] }
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
%struct._GimpOperationTileSink = type { %struct._GeglOperationSink, %struct._TileManager*, i32 }
%struct._GeglOperationSink = type { %struct._GeglOperation }
%struct._TileManager = type opaque
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%union._Babl = type opaque
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Tile = type opaque
%struct._PixelRegionIterator = type { %struct._GSList*, i32, i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_operation_tile_sink_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"GimpOperationTileSink\00", align 1
@gimp_operation_tile_sink_parent_class = internal global i8* null, align 8
@GimpOperationTileSink_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"data-written\00", align 1
@tile_sink_signals = internal global [1 x i32] zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"gimp:tilemanager-sink\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"categories\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"GIMP TileManager sink\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"tile-manager\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Tile Manager\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"The tile manager to use as a destination\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"Linear data\00", align 1
@.str.13 = private unnamed_addr constant [74 x i8] c"Should the data written to the tile-manager be linear or gamma-corrected?\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"gimpoperationtilesink.c\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"Gimp-GEGL\00", align 1
@gimp_operation_tile_sink_process.mutex = internal global %struct.GStaticMutex zeroinitializer, align 8

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_operation_tile_sink_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_operation_tile_sink_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_operation_tile_sink_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gegl_operation_sink_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 368, void (i8*, i8*)* bitcast (void (i8*)* @gimp_operation_tile_sink_class_intern_init to void (i8*, i8*)*), i32 48, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpOperationTileSink*)* @gimp_operation_tile_sink_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_operation_tile_sink_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_operation_tile_sink_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gegl_operation_sink_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_tile_sink_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_operation_tile_sink_parent_class, align 8
  %1 = load i32, i32* @GimpOperationTileSink_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpOperationTileSink_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpOperationTileSinkClass*
  call void @gimp_operation_tile_sink_class_init(%struct._GimpOperationTileSinkClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_tile_sink_init(%struct._GimpOperationTileSink* %self) #3 {
entry:
  %self.addr = alloca %struct._GimpOperationTileSink*, align 8
  store %struct._GimpOperationTileSink* %self, %struct._GimpOperationTileSink** %self.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_tile_sink_class_init(%struct._GimpOperationTileSinkClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpOperationTileSinkClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %operation_class = alloca %struct._GeglOperationClass*, align 8
  %sink_class = alloca %struct._GeglOperationSinkClass*, align 8
  store %struct._GimpOperationTileSinkClass* %klass, %struct._GimpOperationTileSinkClass** %klass.addr, align 8
  %0 = load %struct._GimpOperationTileSinkClass*, %struct._GimpOperationTileSinkClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpOperationTileSinkClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpOperationTileSinkClass*, %struct._GimpOperationTileSinkClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpOperationTileSinkClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gegl_operation_get_type() #5
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GeglOperationClass*
  store %struct._GeglOperationClass* %5, %struct._GeglOperationClass** %operation_class, align 8
  %6 = load %struct._GimpOperationTileSinkClass*, %struct._GimpOperationTileSinkClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpOperationTileSinkClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gegl_operation_sink_get_type() #5
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GeglOperationSinkClass*
  store %struct._GeglOperationSinkClass* %8, %struct._GeglOperationSinkClass** %sink_class, align 8
  %9 = load %struct._GimpOperationTileSinkClass*, %struct._GimpOperationTileSinkClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpOperationTileSinkClass* %9 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type, align 8
  %call5 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i64 %11, i32 1, i32 360, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__POINTER, i64 4, i32 1, i64 68)
  store i32 %call5, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @tile_sink_signals, i32 0, i64 0), align 4
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_operation_tile_sink_finalize, void (%struct._GObject*)** %finalize, align 8
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %13, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_operation_tile_sink_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %14, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_operation_tile_sink_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %15 = load %struct._GeglOperationClass*, %struct._GeglOperationClass** %operation_class, align 8
  call void (%struct._GeglOperationClass*, i8*, ...) @gegl_operation_class_set_keys(%struct._GeglOperationClass* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i8* null)
  %16 = load %struct._GeglOperationSinkClass*, %struct._GeglOperationSinkClass** %sink_class, align 8
  %process = getelementptr inbounds %struct._GeglOperationSinkClass, %struct._GeglOperationSinkClass* %16, i32 0, i32 2
  store i32 (%struct._GeglOperation*, %struct._GeglBuffer*, %struct._GeglRectangle*, i32)* @gimp_operation_tile_sink_process, i32 (%struct._GeglOperation*, %struct._GeglBuffer*, %struct._GeglRectangle*, i32)** %process, align 8
  %17 = load %struct._GeglOperationSinkClass*, %struct._GeglOperationSinkClass** %sink_class, align 8
  %needs_full = getelementptr inbounds %struct._GeglOperationSinkClass, %struct._GeglOperationSinkClass* %17, i32 0, i32 1
  store i32 0, i32* %needs_full, align 4
  %18 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call i64 @gimp_tile_manager_get_type() #5
  %call7 = call %struct._GParamSpec* @g_param_spec_boxed(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i32 0, i32 0), i64 %call6, i32 7)
  call void @g_object_class_install_property(%struct._GObjectClass* %18, i32 1, %struct._GParamSpec* %call7)
  %19 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.13, i32 0, i32 0), i32 0, i32 7)
  call void @g_object_class_install_property(%struct._GObjectClass* %19, i32 2, %struct._GParamSpec* %call8)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gegl_operation_get_type() #2

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__POINTER(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_tile_sink_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %self = alloca %struct._GimpOperationTileSink*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_operation_tile_sink_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpOperationTileSink*
  store %struct._GimpOperationTileSink* %2, %struct._GimpOperationTileSink** %self, align 8
  %3 = load %struct._GimpOperationTileSink*, %struct._GimpOperationTileSink** %self, align 8
  %tile_manager = getelementptr inbounds %struct._GimpOperationTileSink, %struct._GimpOperationTileSink* %3, i32 0, i32 1
  %4 = load %struct._TileManager*, %struct._TileManager** %tile_manager, align 8
  %tobool = icmp ne %struct._TileManager* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpOperationTileSink*, %struct._GimpOperationTileSink** %self, align 8
  %tile_manager2 = getelementptr inbounds %struct._GimpOperationTileSink, %struct._GimpOperationTileSink* %5, i32 0, i32 1
  %6 = load %struct._TileManager*, %struct._TileManager** %tile_manager2, align 8
  call void @tile_manager_unref(%struct._TileManager* %6)
  %7 = load %struct._GimpOperationTileSink*, %struct._GimpOperationTileSink** %self, align 8
  %tile_manager3 = getelementptr inbounds %struct._GimpOperationTileSink, %struct._GimpOperationTileSink* %7, i32 0, i32 1
  store %struct._TileManager* null, %struct._TileManager** %tile_manager3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_operation_tile_sink_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 80)
  %10 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 6
  %11 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %11(%struct._GObject* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_tile_sink_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %self = alloca %struct._GimpOperationTileSink*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_operation_tile_sink_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpOperationTileSink*
  store %struct._GimpOperationTileSink* %2, %struct._GimpOperationTileSink** %self, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpOperationTileSink*, %struct._GimpOperationTileSink** %self, align 8
  %tile_manager = getelementptr inbounds %struct._GimpOperationTileSink, %struct._GimpOperationTileSink* %4, i32 0, i32 1
  %5 = load %struct._TileManager*, %struct._TileManager** %tile_manager, align 8
  %tobool = icmp ne %struct._TileManager* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %6 = load %struct._GimpOperationTileSink*, %struct._GimpOperationTileSink** %self, align 8
  %tile_manager2 = getelementptr inbounds %struct._GimpOperationTileSink, %struct._GimpOperationTileSink* %6, i32 0, i32 1
  %7 = load %struct._TileManager*, %struct._TileManager** %tile_manager2, align 8
  call void @tile_manager_unref(%struct._TileManager* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call3 = call i8* @g_value_dup_boxed(%struct._GValue* %8)
  %9 = bitcast i8* %call3 to %struct._TileManager*
  %10 = load %struct._GimpOperationTileSink*, %struct._GimpOperationTileSink** %self, align 8
  %tile_manager4 = getelementptr inbounds %struct._GimpOperationTileSink, %struct._GimpOperationTileSink* %10, i32 0, i32 1
  store %struct._TileManager* %9, %struct._TileManager** %tile_manager4, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i32 @g_value_get_boolean(%struct._GValue* %11)
  %12 = load %struct._GimpOperationTileSink*, %struct._GimpOperationTileSink** %self, align 8
  %linear = getelementptr inbounds %struct._GimpOperationTileSink, %struct._GimpOperationTileSink* %12, i32 0, i32 2
  store i32 %call6, i32* %linear, align 4
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
  %call7 = call i8* @g_type_name(i64 %22)
  %23 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %24 = bitcast %struct._GObject* %23 to %struct._GTypeInstance*
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type9 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %25, i32 0, i32 0
  %26 = load i64, i64* %g_type9, align 8
  %call10 = call i8* @g_type_name(i64 %26)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0), i32 189, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 %16, i8* %18, i8* %call7, i8* %call10)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.5, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_operation_tile_sink_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %self = alloca %struct._GimpOperationTileSink*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_operation_tile_sink_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpOperationTileSink*
  store %struct._GimpOperationTileSink* %2, %struct._GimpOperationTileSink** %self, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpOperationTileSink*, %struct._GimpOperationTileSink** %self, align 8
  %tile_manager = getelementptr inbounds %struct._GimpOperationTileSink, %struct._GimpOperationTileSink* %5, i32 0, i32 1
  %6 = load %struct._TileManager*, %struct._TileManager** %tile_manager, align 8
  %7 = bitcast %struct._TileManager* %6 to i8*
  call void @g_value_set_boxed(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %9 = load %struct._GimpOperationTileSink*, %struct._GimpOperationTileSink** %self, align 8
  %linear = getelementptr inbounds %struct._GimpOperationTileSink, %struct._GimpOperationTileSink* %9, i32 0, i32 2
  %10 = load i32, i32* %linear, align 4
  call void @g_value_set_boolean(%struct._GValue* %8, i32 %10)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %11, %struct._GObject** %_glib__object, align 8
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %12, %struct._GParamSpec** %_glib__pspec, align 8
  %13 = load i32, i32* %property_id.addr, align 4
  store i32 %13, i32* %_glib__property_id, align 4
  %14 = load i32, i32* %_glib__property_id, align 4
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %15, i32 0, i32 1
  %16 = load i8*, i8** %name, align 8
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %18 = bitcast %struct._GParamSpec* %17 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type, align 8
  %call3 = call i8* @g_type_name(i64 %20)
  %21 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %22 = bitcast %struct._GObject* %21 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %24)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0), i32 163, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 %14, i8* %16, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.2, %sw.bb
  ret void
}

declare void @gegl_operation_class_set_keys(%struct._GeglOperationClass*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_operation_tile_sink_process(%struct._GeglOperation* %operation, %struct._GeglBuffer* %input, %struct._GeglRectangle* %result, i32 %level) #3 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct._GeglOperation*, align 8
  %input.addr = alloca %struct._GeglBuffer*, align 8
  %result.addr = alloca %struct._GeglRectangle*, align 8
  %level.addr = alloca i32, align 4
  %self = alloca %struct._GimpOperationTileSink*, align 8
  %format = alloca %union._Babl*, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %pr = alloca i8*, align 8
  %rect = alloca %struct._GeglRectangle, align 4
  store %struct._GeglOperation* %operation, %struct._GeglOperation** %operation.addr, align 8
  store %struct._GeglBuffer* %input, %struct._GeglBuffer** %input.addr, align 8
  store %struct._GeglRectangle* %result, %struct._GeglRectangle** %result.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  %0 = load %struct._GeglOperation*, %struct._GeglOperation** %operation.addr, align 8
  %1 = bitcast %struct._GeglOperation* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_operation_tile_sink_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpOperationTileSink*
  store %struct._GimpOperationTileSink* %2, %struct._GimpOperationTileSink** %self, align 8
  %3 = load %struct._GimpOperationTileSink*, %struct._GimpOperationTileSink** %self, align 8
  %tile_manager = getelementptr inbounds %struct._GimpOperationTileSink, %struct._GimpOperationTileSink* %3, i32 0, i32 1
  %4 = load %struct._TileManager*, %struct._TileManager** %tile_manager, align 8
  %tobool = icmp ne %struct._TileManager* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpOperationTileSink*, %struct._GimpOperationTileSink** %self, align 8
  %tile_manager2 = getelementptr inbounds %struct._GimpOperationTileSink, %struct._GimpOperationTileSink* %5, i32 0, i32 1
  %6 = load %struct._TileManager*, %struct._TileManager** %tile_manager2, align 8
  %call3 = call i32 @tile_manager_bpp(%struct._TileManager* %6)
  %7 = load %struct._GimpOperationTileSink*, %struct._GimpOperationTileSink** %self, align 8
  %linear = getelementptr inbounds %struct._GimpOperationTileSink, %struct._GimpOperationTileSink* %7, i32 0, i32 2
  %8 = load i32, i32* %linear, align 4
  %call4 = call %union._Babl* @gimp_bpp_to_babl_format(i32 %call3, i32 %8) #5
  store %union._Babl* %call4, %union._Babl** %format, align 8
  %9 = load %struct._GimpOperationTileSink*, %struct._GimpOperationTileSink** %self, align 8
  %tile_manager5 = getelementptr inbounds %struct._GimpOperationTileSink, %struct._GimpOperationTileSink* %9, i32 0, i32 1
  %10 = load %struct._TileManager*, %struct._TileManager** %tile_manager5, align 8
  %11 = load %struct._GeglRectangle*, %struct._GeglRectangle** %result.addr, align 8
  %x = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %11, i32 0, i32 0
  %12 = load i32, i32* %x, align 4
  %13 = load %struct._GeglRectangle*, %struct._GeglRectangle** %result.addr, align 8
  %y = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %13, i32 0, i32 1
  %14 = load i32, i32* %y, align 4
  %15 = load %struct._GeglRectangle*, %struct._GeglRectangle** %result.addr, align 8
  %width = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %15, i32 0, i32 2
  %16 = load i32, i32* %width, align 4
  %17 = load %struct._GeglRectangle*, %struct._GeglRectangle** %result.addr, align 8
  %height = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %17, i32 0, i32 3
  %18 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %10, i32 %12, i32 %14, i32 %16, i32 %18, i32 1)
  %call6 = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 1, %struct._PixelRegion* %destPR)
  %19 = bitcast %struct._PixelRegionIterator* %call6 to i8*
  store i8* %19, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %20 = load i8*, i8** %pr, align 8
  %tobool7 = icmp ne i8* %20, null
  br i1 %tobool7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %x8 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 0
  %x9 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 6
  %21 = load i32, i32* %x9, align 4
  store i32 %21, i32* %x8, align 4
  %y10 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 1
  %y11 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 7
  %22 = load i32, i32* %y11, align 4
  store i32 %22, i32* %y10, align 4
  %width12 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 2
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 8
  %23 = load i32, i32* %w, align 4
  store i32 %23, i32* %width12, align 4
  %height13 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 3
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 9
  %24 = load i32, i32* %h, align 4
  store i32 %24, i32* %height13, align 4
  %25 = load %struct._GeglBuffer*, %struct._GeglBuffer** %input.addr, align 8
  %26 = load %union._Babl*, %union._Babl** %format, align 8
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 0
  %27 = load i8*, i8** %data, align 8
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 5
  %28 = load i32, i32* %rowstride, align 4
  call void @gegl_buffer_get(%struct._GeglBuffer* %25, %struct._GeglRectangle* %rect, double 1.000000e+00, %union._Babl* %26, i8* %27, i32 %28, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i8*, i8** %pr, align 8
  %30 = bitcast i8* %29 to %struct._PixelRegionIterator*
  %call14 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %30)
  %31 = bitcast %struct._PixelRegionIterator* %call14 to i8*
  store i8* %31, i8** %pr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call15 = call %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex* @gimp_operation_tile_sink_process.mutex)
  call void @g_mutex_lock(%union._GMutex* %call15)
  %32 = load %struct._GeglOperation*, %struct._GeglOperation** %operation.addr, align 8
  %33 = bitcast %struct._GeglOperation* %32 to i8*
  %34 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @tile_sink_signals, i32 0, i64 0), align 4
  %35 = load %struct._GeglRectangle*, %struct._GeglRectangle** %result.addr, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %33, i32 %34, i32 0, %struct._GeglRectangle* %35)
  %call16 = call %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex* @gimp_operation_tile_sink_process.mutex)
  call void @g_mutex_unlock(%union._GMutex* %call16)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %36 = load i32, i32* %retval
  ret i32 %36
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_boxed(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tile_manager_get_type() #2

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @tile_manager_unref(%struct._TileManager*) #1

declare i8* @g_value_dup_boxed(%struct._GValue*) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
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

declare void @g_value_set_boxed(%struct._GValue*, i8*) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

; Function Attrs: nounwind readnone
declare %union._Babl* @gimp_bpp_to_babl_format(i32, i32) #2

declare i32 @tile_manager_bpp(%struct._TileManager*) #1

declare void @pixel_region_init(%struct._PixelRegion*, %struct._TileManager*, i32, i32, i32, i32, i32) #1

declare %struct._PixelRegionIterator* @pixel_regions_register(i32, ...) #1

declare void @gegl_buffer_get(%struct._GeglBuffer*, %struct._GeglRectangle*, double, %union._Babl*, i8*, i32, i32) #1

declare %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator*) #1

declare void @g_mutex_lock(%union._GMutex*) #1

declare %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex*) #1

declare void @g_signal_emit(i8*, i32, i32, ...) #1

declare void @g_mutex_unlock(%union._GMutex*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
