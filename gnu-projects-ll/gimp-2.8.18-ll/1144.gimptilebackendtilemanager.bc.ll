; ModuleID = './app/gegl/gimptilebackendtilemanager.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpTileBackendTileManagerClass = type { %struct._GeglTileBackendClass }
%struct._GeglTileBackendClass = type { %struct._GeglTileSourceClass, [4 x i8*] }
%struct._GeglTileSourceClass = type { %struct._GObjectClass, [4 x i8*] }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpTileBackendTileManager = type { %struct._GeglTileBackend, %struct._GimpTileBackendTileManagerPrivate* }
%struct._GeglTileBackend = type { %struct._GeglTileSource, %struct._GeglTileBackendPrivate* }
%struct._GeglTileSource = type { %struct._GObject, i8* (%struct._GeglTileSource*, i32, i32, i32, i32, i8*)*, [4 x i8*] }
%struct._GeglTileBackendPrivate = type opaque
%struct._GimpTileBackendTileManagerPrivate = type { %struct._TileManager*, i32 }
%struct._TileManager = type opaque
%struct._GeglRectangle = type { i32, i32, i32, i32 }
%union._Babl = type opaque
%struct._GeglBuffer = type opaque
%struct._GeglTile = type opaque
%struct._Tile = type opaque

@gimp_tile_backend_tile_manager_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"GimpTileBackendTileManager\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"tile-width\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"tile-height\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@gimp_tile_backend_tile_manager_parent_class = internal global i8* null, align 8
@GimpTileBackendTileManager_private_offset = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"Gimp-GEGL\00", align 1
@__func__.gimp_tile_backend_tile_manager_command = private unnamed_addr constant [39 x i8] c"gimp_tile_backend_tile_manager_command\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"gimp_tile != NULL\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"gimptilebackendtilemanager.c\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"command < GEGL_TILE_LAST_COMMAND && command >= 0\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_tile_backend_tile_manager_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_tile_backend_tile_manager_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_tile_backend_tile_manager_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gegl_tile_backend_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 200, void (i8*, i8*)* bitcast (void (i8*)* @gimp_tile_backend_tile_manager_class_intern_init to void (i8*, i8*)*), i32 80, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpTileBackendTileManager*)* @gimp_tile_backend_tile_manager_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_tile_backend_tile_manager_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_tile_backend_tile_manager_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gegl_tile_backend_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tile_backend_tile_manager_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_tile_backend_tile_manager_parent_class, align 8
  %1 = load i32, i32* @GimpTileBackendTileManager_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpTileBackendTileManager_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpTileBackendTileManagerClass*
  call void @gimp_tile_backend_tile_manager_class_init(%struct._GimpTileBackendTileManagerClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tile_backend_tile_manager_init(%struct._GimpTileBackendTileManager* %backend) #3 {
entry:
  %backend.addr = alloca %struct._GimpTileBackendTileManager*, align 8
  %source = alloca %struct._GeglTileSource*, align 8
  store %struct._GimpTileBackendTileManager* %backend, %struct._GimpTileBackendTileManager** %backend.addr, align 8
  %0 = load %struct._GimpTileBackendTileManager*, %struct._GimpTileBackendTileManager** %backend.addr, align 8
  %1 = bitcast %struct._GimpTileBackendTileManager* %0 to %struct._GTypeInstance*
  %call = call i64 @gegl_tile_source_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GeglTileSource*
  store %struct._GeglTileSource* %2, %struct._GeglTileSource** %source, align 8
  %3 = load %struct._GimpTileBackendTileManager*, %struct._GimpTileBackendTileManager** %backend.addr, align 8
  %4 = bitcast %struct._GimpTileBackendTileManager* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tile_backend_tile_manager_get_type() #6
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpTileBackendTileManagerPrivate*
  %6 = load %struct._GimpTileBackendTileManager*, %struct._GimpTileBackendTileManager** %backend.addr, align 8
  %priv = getelementptr inbounds %struct._GimpTileBackendTileManager, %struct._GimpTileBackendTileManager* %6, i32 0, i32 1
  store %struct._GimpTileBackendTileManagerPrivate* %5, %struct._GimpTileBackendTileManagerPrivate** %priv, align 8
  %7 = load %struct._GeglTileSource*, %struct._GeglTileSource** %source, align 8
  %command = getelementptr inbounds %struct._GeglTileSource, %struct._GeglTileSource* %7, i32 0, i32 1
  store i8* (%struct._GeglTileSource*, i32, i32, i32, i32, i8*)* @gimp_tile_backend_tile_manager_command, i8* (%struct._GeglTileSource*, i32, i32, i32, i32, i8*)** %command, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GeglTileBackend* @gimp_tile_backend_tile_manager_new(%struct._TileManager* %tm, i32 %write) #3 {
entry:
  %tm.addr = alloca %struct._TileManager*, align 8
  %write.addr = alloca i32, align 4
  %ret = alloca %struct._GeglTileBackend*, align 8
  %backend_tm = alloca %struct._GimpTileBackendTileManager*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bpp = alloca i32, align 4
  %rect = alloca %struct._GeglRectangle, align 4
  store %struct._TileManager* %tm, %struct._TileManager** %tm.addr, align 8
  store i32 %write, i32* %write.addr, align 4
  %0 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %call = call i32 @tile_manager_width(%struct._TileManager* %0)
  store i32 %call, i32* %width, align 4
  %1 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %call1 = call i32 @tile_manager_height(%struct._TileManager* %1)
  store i32 %call1, i32* %height, align 4
  %2 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %call2 = call i32 @tile_manager_bpp(%struct._TileManager* %2)
  store i32 %call2, i32* %bpp, align 4
  %x = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 0
  store i32 0, i32* %x, align 4
  %y = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 1
  store i32 0, i32* %y, align 4
  %width3 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 2
  %3 = load i32, i32* %width, align 4
  store i32 %3, i32* %width3, align 4
  %height4 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 3
  %4 = load i32, i32* %height, align 4
  store i32 %4, i32* %height4, align 4
  %call5 = call i64 @gimp_tile_backend_tile_manager_get_type() #6
  %5 = load i32, i32* %bpp, align 4
  %call6 = call %union._Babl* @gimp_bpp_to_babl_format(i32 %5, i32 0) #6
  %call7 = call i8* (i64, i8*, ...) @g_object_new(i64 %call5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), %union._Babl* %call6, i8* null)
  %6 = bitcast i8* %call7 to %struct._GeglTileBackend*
  store %struct._GeglTileBackend* %6, %struct._GeglTileBackend** %ret, align 8
  %7 = load %struct._GeglTileBackend*, %struct._GeglTileBackend** %ret, align 8
  %8 = bitcast %struct._GeglTileBackend* %7 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_tile_backend_tile_manager_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call8)
  %9 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpTileBackendTileManager*
  store %struct._GimpTileBackendTileManager* %9, %struct._GimpTileBackendTileManager** %backend_tm, align 8
  %10 = load i32, i32* %write.addr, align 4
  %11 = load %struct._GimpTileBackendTileManager*, %struct._GimpTileBackendTileManager** %backend_tm, align 8
  %priv = getelementptr inbounds %struct._GimpTileBackendTileManager, %struct._GimpTileBackendTileManager* %11, i32 0, i32 1
  %12 = load %struct._GimpTileBackendTileManagerPrivate*, %struct._GimpTileBackendTileManagerPrivate** %priv, align 8
  %write10 = getelementptr inbounds %struct._GimpTileBackendTileManagerPrivate, %struct._GimpTileBackendTileManagerPrivate* %12, i32 0, i32 1
  store i32 %10, i32* %write10, align 4
  %13 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %call11 = call %struct._TileManager* @tile_manager_ref(%struct._TileManager* %13)
  %14 = load %struct._GimpTileBackendTileManager*, %struct._GimpTileBackendTileManager** %backend_tm, align 8
  %priv12 = getelementptr inbounds %struct._GimpTileBackendTileManager, %struct._GimpTileBackendTileManager* %14, i32 0, i32 1
  %15 = load %struct._GimpTileBackendTileManagerPrivate*, %struct._GimpTileBackendTileManagerPrivate** %priv12, align 8
  %tile_manager = getelementptr inbounds %struct._GimpTileBackendTileManagerPrivate, %struct._GimpTileBackendTileManagerPrivate* %15, i32 0, i32 0
  store %struct._TileManager* %call11, %struct._TileManager** %tile_manager, align 8
  %16 = load %struct._GeglTileBackend*, %struct._GeglTileBackend** %ret, align 8
  call void @gegl_tile_backend_set_extent(%struct._GeglTileBackend* %16, %struct._GeglRectangle* %rect)
  %17 = load %struct._GeglTileBackend*, %struct._GeglTileBackend** %ret, align 8
  ret %struct._GeglTileBackend* %17
}

declare i32 @tile_manager_width(%struct._TileManager*) #1

declare i32 @tile_manager_height(%struct._TileManager*) #1

declare i32 @tile_manager_bpp(%struct._TileManager*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind readnone
declare %union._Babl* @gimp_bpp_to_babl_format(i32, i32) #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._TileManager* @tile_manager_ref(%struct._TileManager*) #1

declare void @gegl_tile_backend_set_extent(%struct._GeglTileBackend*, %struct._GeglRectangle*) #1

; Function Attrs: nounwind uwtable
define %struct._GeglBuffer* @gimp_tile_manager_get_gegl_buffer(%struct._TileManager* %tm, i32 %write) #3 {
entry:
  %tm.addr = alloca %struct._TileManager*, align 8
  %write.addr = alloca i32, align 4
  %backend = alloca %struct._GeglTileBackend*, align 8
  %buffer = alloca %struct._GeglBuffer*, align 8
  store %struct._TileManager* %tm, %struct._TileManager** %tm.addr, align 8
  store i32 %write, i32* %write.addr, align 4
  %0 = load %struct._TileManager*, %struct._TileManager** %tm.addr, align 8
  %1 = load i32, i32* %write.addr, align 4
  %call = call %struct._GeglTileBackend* @gimp_tile_backend_tile_manager_new(%struct._TileManager* %0, i32 %1)
  store %struct._GeglTileBackend* %call, %struct._GeglTileBackend** %backend, align 8
  %2 = load %struct._GeglTileBackend*, %struct._GeglTileBackend** %backend, align 8
  %3 = bitcast %struct._GeglTileBackend* %2 to i8*
  %call1 = call %struct._GeglBuffer* @gegl_buffer_new_for_backend(%struct._GeglRectangle* null, i8* %3)
  store %struct._GeglBuffer* %call1, %struct._GeglBuffer** %buffer, align 8
  %4 = load %struct._GeglTileBackend*, %struct._GeglTileBackend** %backend, align 8
  %5 = bitcast %struct._GeglTileBackend* %4 to i8*
  call void @g_object_unref(i8* %5)
  %6 = load %struct._GeglBuffer*, %struct._GeglBuffer** %buffer, align 8
  ret %struct._GeglBuffer* %6
}

declare %struct._GeglBuffer* @gegl_buffer_new_for_backend(%struct._GeglRectangle*, i8*) #1

declare void @g_object_unref(i8*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tile_backend_tile_manager_class_init(%struct._GimpTileBackendTileManagerClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpTileBackendTileManagerClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpTileBackendTileManagerClass* %klass, %struct._GimpTileBackendTileManagerClass** %klass.addr, align 8
  %0 = load %struct._GimpTileBackendTileManagerClass*, %struct._GimpTileBackendTileManagerClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpTileBackendTileManagerClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_tile_backend_tile_manager_finalize, void (%struct._GObject*)** %finalize, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_tile_backend_tile_manager_dispose, void (%struct._GObject*)** %dispose, align 8
  %5 = load %struct._GimpTileBackendTileManagerClass*, %struct._GimpTileBackendTileManagerClass** %klass.addr, align 8
  %6 = bitcast %struct._GimpTileBackendTileManagerClass* %5 to i8*
  call void @g_type_class_add_private(i8* %6, i64 16)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tile_backend_tile_manager_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load i8*, i8** @gimp_tile_backend_tile_manager_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %2, i32 0, i32 6
  %3 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %4 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %3(%struct._GObject* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_tile_backend_tile_manager_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %backend = alloca %struct._GimpTileBackendTileManager*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tile_backend_tile_manager_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTileBackendTileManager*
  store %struct._GimpTileBackendTileManager* %2, %struct._GimpTileBackendTileManager** %backend, align 8
  %3 = load %struct._GimpTileBackendTileManager*, %struct._GimpTileBackendTileManager** %backend, align 8
  %priv = getelementptr inbounds %struct._GimpTileBackendTileManager, %struct._GimpTileBackendTileManager* %3, i32 0, i32 1
  %4 = load %struct._GimpTileBackendTileManagerPrivate*, %struct._GimpTileBackendTileManagerPrivate** %priv, align 8
  %tile_manager = getelementptr inbounds %struct._GimpTileBackendTileManagerPrivate, %struct._GimpTileBackendTileManagerPrivate* %4, i32 0, i32 0
  %5 = load %struct._TileManager*, %struct._TileManager** %tile_manager, align 8
  %tobool = icmp ne %struct._TileManager* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpTileBackendTileManager*, %struct._GimpTileBackendTileManager** %backend, align 8
  %priv2 = getelementptr inbounds %struct._GimpTileBackendTileManager, %struct._GimpTileBackendTileManager* %6, i32 0, i32 1
  %7 = load %struct._GimpTileBackendTileManagerPrivate*, %struct._GimpTileBackendTileManagerPrivate** %priv2, align 8
  %tile_manager3 = getelementptr inbounds %struct._GimpTileBackendTileManagerPrivate, %struct._GimpTileBackendTileManagerPrivate* %7, i32 0, i32 0
  %8 = load %struct._TileManager*, %struct._TileManager** %tile_manager3, align 8
  call void @tile_manager_unref(%struct._TileManager* %8)
  %9 = load %struct._GimpTileBackendTileManager*, %struct._GimpTileBackendTileManager** %backend, align 8
  %priv4 = getelementptr inbounds %struct._GimpTileBackendTileManager, %struct._GimpTileBackendTileManager* %9, i32 0, i32 1
  %10 = load %struct._GimpTileBackendTileManagerPrivate*, %struct._GimpTileBackendTileManagerPrivate** %priv4, align 8
  %tile_manager5 = getelementptr inbounds %struct._GimpTileBackendTileManagerPrivate, %struct._GimpTileBackendTileManagerPrivate* %10, i32 0, i32 0
  store %struct._TileManager* null, %struct._TileManager** %tile_manager5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i8*, i8** @gimp_tile_backend_tile_manager_parent_class, align 8
  %12 = bitcast i8* %11 to %struct._GTypeClass*
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %12, i64 80)
  %13 = bitcast %struct._GTypeClass* %call6 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %13, i32 0, i32 5
  %14 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %15 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %14(%struct._GObject* %15)
  ret void
}

declare void @g_type_class_add_private(i8*, i64) #1

declare void @tile_manager_unref(%struct._TileManager*) #1

; Function Attrs: nounwind readnone
declare i64 @gegl_tile_source_get_type() #2

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define internal i8* @gimp_tile_backend_tile_manager_command(%struct._GeglTileSource* %tile_store, i32 %command, i32 %x, i32 %y, i32 %z, i8* %data) #3 {
entry:
  %retval = alloca i8*, align 8
  %tile_store.addr = alloca %struct._GeglTileSource*, align 8
  %command.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %backend_tm = alloca %struct._GimpTileBackendTileManager*, align 8
  %backend = alloca %struct._GeglTileBackend*, align 8
  %tile = alloca %struct._GeglTile*, align 8
  %tile_size = alloca i32, align 4
  %gimp_tile = alloca %struct._Tile*, align 8
  %tile_stride = alloca i32, align 4
  %gimp_tile_stride = alloca i32, align 4
  %row = alloca i32, align 4
  %tile26 = alloca %struct._GeglTile*, align 8
  store %struct._GeglTileSource* %tile_store, %struct._GeglTileSource** %tile_store.addr, align 8
  store i32 %command, i32* %command.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %z, i32* %z.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GeglTileSource*, %struct._GeglTileSource** %tile_store.addr, align 8
  %1 = bitcast %struct._GeglTileSource* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tile_backend_tile_manager_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTileBackendTileManager*
  store %struct._GimpTileBackendTileManager* %2, %struct._GimpTileBackendTileManager** %backend_tm, align 8
  %3 = load %struct._GeglTileSource*, %struct._GeglTileSource** %tile_store.addr, align 8
  %4 = bitcast %struct._GeglTileSource* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gegl_tile_backend_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GeglTileBackend*
  store %struct._GeglTileBackend* %5, %struct._GeglTileBackend** %backend, align 8
  %6 = load i32, i32* %command.addr, align 4
  switch i32 %6, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.25
    i32 0, label %sw.bb.34
    i32 5, label %sw.bb.34
    i32 4, label %sw.bb.34
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct._GimpTileBackendTileManager*, %struct._GimpTileBackendTileManager** %backend_tm, align 8
  %priv = getelementptr inbounds %struct._GimpTileBackendTileManager, %struct._GimpTileBackendTileManager* %7, i32 0, i32 1
  %8 = load %struct._GimpTileBackendTileManagerPrivate*, %struct._GimpTileBackendTileManagerPrivate** %priv, align 8
  %tile_manager = getelementptr inbounds %struct._GimpTileBackendTileManagerPrivate, %struct._GimpTileBackendTileManagerPrivate* %8, i32 0, i32 0
  %9 = load %struct._TileManager*, %struct._TileManager** %tile_manager, align 8
  %10 = load i32, i32* %x.addr, align 4
  %11 = load i32, i32* %y.addr, align 4
  %12 = load %struct._GimpTileBackendTileManager*, %struct._GimpTileBackendTileManager** %backend_tm, align 8
  %priv4 = getelementptr inbounds %struct._GimpTileBackendTileManager, %struct._GimpTileBackendTileManager* %12, i32 0, i32 1
  %13 = load %struct._GimpTileBackendTileManagerPrivate*, %struct._GimpTileBackendTileManagerPrivate** %priv4, align 8
  %write = getelementptr inbounds %struct._GimpTileBackendTileManagerPrivate, %struct._GimpTileBackendTileManagerPrivate* %13, i32 0, i32 1
  %14 = load i32, i32* %write, align 4
  %call5 = call %struct._Tile* @tile_manager_get_at(%struct._TileManager* %9, i32 %10, i32 %11, i32 1, i32 %14)
  store %struct._Tile* %call5, %struct._Tile** %gimp_tile, align 8
  %15 = load %struct._Tile*, %struct._Tile** %gimp_tile, align 8
  %tobool = icmp ne %struct._Tile* %15, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %do.body

do.body:                                          ; preds = %if.end
  %16 = load %struct._Tile*, %struct._Tile** %gimp_tile, align 8
  %cmp = icmp ne %struct._Tile* %16, null
  br i1 %cmp, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  br label %if.end.7

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_tile_backend_tile_manager_command, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.7:                                         ; preds = %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  %17 = load %struct._GeglTileBackend*, %struct._GeglTileBackend** %backend, align 8
  %call8 = call i32 @gegl_tile_backend_get_tile_size(%struct._GeglTileBackend* %17)
  store i32 %call8, i32* %tile_size, align 4
  %18 = load %struct._Tile*, %struct._Tile** %gimp_tile, align 8
  %call9 = call i32 @tile_bpp(%struct._Tile* %18)
  %mul = mul nsw i32 64, %call9
  store i32 %mul, i32* %tile_stride, align 4
  %19 = load %struct._Tile*, %struct._Tile** %gimp_tile, align 8
  %call10 = call i32 @tile_ewidth(%struct._Tile* %19)
  %20 = load %struct._Tile*, %struct._Tile** %gimp_tile, align 8
  %call11 = call i32 @tile_bpp(%struct._Tile* %20)
  %mul12 = mul nsw i32 %call10, %call11
  store i32 %mul12, i32* %gimp_tile_stride, align 4
  %21 = load i32, i32* %tile_stride, align 4
  %22 = load i32, i32* %gimp_tile_stride, align 4
  %cmp13 = icmp eq i32 %21, %22
  br i1 %cmp13, label %if.then.14, label %if.else.17

if.then.14:                                       ; preds = %do.end
  %call15 = call %struct._GeglTile* @gegl_tile_new_bare()
  store %struct._GeglTile* %call15, %struct._GeglTile** %tile, align 8
  %23 = load %struct._GeglTile*, %struct._GeglTile** %tile, align 8
  %24 = load %struct._Tile*, %struct._Tile** %gimp_tile, align 8
  %call16 = call i8* @tile_data_pointer(%struct._Tile* %24, i32 0, i32 0)
  %25 = load i32, i32* %tile_size, align 4
  %26 = load %struct._Tile*, %struct._Tile** %gimp_tile, align 8
  %27 = bitcast %struct._Tile* %26 to i8*
  call void @gegl_tile_set_data_full(%struct._GeglTile* %23, i8* %call16, i32 %25, void (i8*)* bitcast (void (%struct._Tile*, i8*)* @tile_done to void (i8*)*), i8* %27)
  br label %if.end.24

if.else.17:                                       ; preds = %do.end
  %28 = load i32, i32* %tile_size, align 4
  %call18 = call %struct._GeglTile* @gegl_tile_new(i32 %28)
  store %struct._GeglTile* %call18, %struct._GeglTile** %tile, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.17
  %29 = load i32, i32* %row, align 4
  %30 = load %struct._Tile*, %struct._Tile** %gimp_tile, align 8
  %call19 = call i32 @tile_eheight(%struct._Tile* %30)
  %cmp20 = icmp slt i32 %29, %call19
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load %struct._GeglTile*, %struct._GeglTile** %tile, align 8
  %call21 = call i8* @gegl_tile_get_data(%struct._GeglTile* %31)
  %32 = load i32, i32* %row, align 4
  %33 = load i32, i32* %tile_stride, align 4
  %mul22 = mul nsw i32 %32, %33
  %idx.ext = sext i32 %mul22 to i64
  %add.ptr = getelementptr inbounds i8, i8* %call21, i64 %idx.ext
  %34 = load %struct._Tile*, %struct._Tile** %gimp_tile, align 8
  %35 = load i32, i32* %row, align 4
  %call23 = call i8* @tile_data_pointer(%struct._Tile* %34, i32 0, i32 %35)
  %36 = load i32, i32* %gimp_tile_stride, align 4
  %conv = sext i32 %36 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %call23, i64 %conv, i32 1, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i32, i32* %row, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %row, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load %struct._Tile*, %struct._Tile** %gimp_tile, align 8
  call void @tile_release(%struct._Tile* %38, i32 0)
  br label %if.end.24

if.end.24:                                        ; preds = %for.end, %if.then.14
  %39 = load %struct._GeglTile*, %struct._GeglTile** %tile, align 8
  %40 = bitcast %struct._GeglTile* %39 to i8*
  store i8* %40, i8** %retval
  br label %return

sw.bb.25:                                         ; preds = %entry
  %41 = load i8*, i8** %data.addr, align 8
  %42 = bitcast i8* %41 to %struct._GeglTile*
  store %struct._GeglTile* %42, %struct._GeglTile** %tile26, align 8
  %43 = load %struct._GimpTileBackendTileManager*, %struct._GimpTileBackendTileManager** %backend_tm, align 8
  %priv27 = getelementptr inbounds %struct._GimpTileBackendTileManager, %struct._GimpTileBackendTileManager* %43, i32 0, i32 1
  %44 = load %struct._GimpTileBackendTileManagerPrivate*, %struct._GimpTileBackendTileManagerPrivate** %priv27, align 8
  %write28 = getelementptr inbounds %struct._GimpTileBackendTileManagerPrivate, %struct._GimpTileBackendTileManagerPrivate* %44, i32 0, i32 1
  %45 = load i32, i32* %write28, align 4
  %cmp29 = icmp eq i32 %45, 0
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %sw.bb.25
  store i8* null, i8** %retval
  br label %return

if.end.32:                                        ; preds = %sw.bb.25
  %46 = load %struct._GimpTileBackendTileManager*, %struct._GimpTileBackendTileManager** %backend_tm, align 8
  %47 = load i32, i32* %x.addr, align 4
  %48 = load i32, i32* %y.addr, align 4
  %49 = load i32, i32* %z.addr, align 4
  %50 = load %struct._GeglTile*, %struct._GeglTile** %tile26, align 8
  %call33 = call i8* @gegl_tile_get_data(%struct._GeglTile* %50)
  call void @gimp_tile_write(%struct._GimpTileBackendTileManager* %46, i32 %47, i32 %48, i32 %49, i8* %call33)
  %51 = load %struct._GeglTile*, %struct._GeglTile** %tile26, align 8
  call void @gegl_tile_mark_as_stored(%struct._GeglTile* %51)
  store i8* null, i8** %retval
  br label %return

sw.bb.34:                                         ; preds = %entry, %entry, %entry
  store i8* null, i8** %retval
  br label %return

sw.default:                                       ; preds = %entry
  br label %do.body.35

do.body.35:                                       ; preds = %sw.default
  %52 = load i32, i32* %command.addr, align 4
  %cmp36 = icmp slt i32 %52, 9
  br i1 %cmp36, label %land.lhs.true, label %if.else.41

land.lhs.true:                                    ; preds = %do.body.35
  %53 = load i32, i32* %command.addr, align 4
  %cmp38 = icmp sge i32 %53, 0
  br i1 %cmp38, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %land.lhs.true
  br label %if.end.42

if.else.41:                                       ; preds = %land.lhs.true, %do.body.35
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0), i32 194, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_tile_backend_tile_manager_command, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i32 0, i32 0)) #7
  unreachable

if.end.42:                                        ; preds = %if.then.40
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.43
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.34, %if.end.32, %if.then.31, %if.end.24, %if.else, %if.then
  %54 = load i8*, i8** %retval
  ret i8* %54
}

declare %struct._Tile* @tile_manager_get_at(%struct._TileManager*, i32, i32, i32, i32) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i32 @gegl_tile_backend_get_tile_size(%struct._GeglTileBackend*) #1

declare i32 @tile_bpp(%struct._Tile*) #1

declare i32 @tile_ewidth(%struct._Tile*) #1

declare %struct._GeglTile* @gegl_tile_new_bare() #1

declare void @gegl_tile_set_data_full(%struct._GeglTile*, i8*, i32, void (i8*)*, i8*) #1

declare i8* @tile_data_pointer(%struct._Tile*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @tile_done(%struct._Tile* %tile, i8* %data) #3 {
entry:
  %tile.addr = alloca %struct._Tile*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._Tile* %tile, %struct._Tile** %tile.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._Tile*
  call void @tile_release(%struct._Tile* %1, i32 0)
  ret void
}

declare %struct._GeglTile* @gegl_tile_new(i32) #1

declare i32 @tile_eheight(%struct._Tile*) #1

declare i8* @gegl_tile_get_data(%struct._GeglTile*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @tile_release(%struct._Tile*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_tile_write(%struct._GimpTileBackendTileManager* %backend_tm, i32 %x, i32 %y, i32 %z, i8* %source) #3 {
entry:
  %backend_tm.addr = alloca %struct._GimpTileBackendTileManager*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  %source.addr = alloca i8*, align 8
  %gimp_tile = alloca %struct._Tile*, align 8
  %tile_stride = alloca i32, align 4
  %gimp_tile_stride = alloca i32, align 4
  %row = alloca i32, align 4
  store %struct._GimpTileBackendTileManager* %backend_tm, %struct._GimpTileBackendTileManager** %backend_tm.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %z, i32* %z.addr, align 4
  store i8* %source, i8** %source.addr, align 8
  %0 = load %struct._GimpTileBackendTileManager*, %struct._GimpTileBackendTileManager** %backend_tm.addr, align 8
  %priv = getelementptr inbounds %struct._GimpTileBackendTileManager, %struct._GimpTileBackendTileManager* %0, i32 0, i32 1
  %1 = load %struct._GimpTileBackendTileManagerPrivate*, %struct._GimpTileBackendTileManagerPrivate** %priv, align 8
  %tile_manager = getelementptr inbounds %struct._GimpTileBackendTileManagerPrivate, %struct._GimpTileBackendTileManagerPrivate* %1, i32 0, i32 0
  %2 = load %struct._TileManager*, %struct._TileManager** %tile_manager, align 8
  %3 = load i32, i32* %x.addr, align 4
  %4 = load i32, i32* %y.addr, align 4
  %call = call %struct._Tile* @tile_manager_get_at(%struct._TileManager* %2, i32 %3, i32 %4, i32 1, i32 1)
  store %struct._Tile* %call, %struct._Tile** %gimp_tile, align 8
  %5 = load %struct._Tile*, %struct._Tile** %gimp_tile, align 8
  %tobool = icmp ne %struct._Tile* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i8*, i8** %source.addr, align 8
  %7 = load %struct._Tile*, %struct._Tile** %gimp_tile, align 8
  %call1 = call i8* @tile_data_pointer(%struct._Tile* %7, i32 0, i32 0)
  %cmp = icmp ne i8* %6, %call1
  br i1 %cmp, label %if.then.2, label %if.end.11

if.then.2:                                        ; preds = %if.end
  %8 = load %struct._Tile*, %struct._Tile** %gimp_tile, align 8
  %call3 = call i32 @tile_bpp(%struct._Tile* %8)
  %mul = mul nsw i32 64, %call3
  store i32 %mul, i32* %tile_stride, align 4
  %9 = load %struct._Tile*, %struct._Tile** %gimp_tile, align 8
  %call4 = call i32 @tile_ewidth(%struct._Tile* %9)
  %10 = load %struct._Tile*, %struct._Tile** %gimp_tile, align 8
  %call5 = call i32 @tile_bpp(%struct._Tile* %10)
  %mul6 = mul nsw i32 %call4, %call5
  store i32 %mul6, i32* %gimp_tile_stride, align 4
  store i32 0, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %11 = load i32, i32* %row, align 4
  %12 = load %struct._Tile*, %struct._Tile** %gimp_tile, align 8
  %call7 = call i32 @tile_eheight(%struct._Tile* %12)
  %cmp8 = icmp slt i32 %11, %call7
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct._Tile*, %struct._Tile** %gimp_tile, align 8
  %14 = load i32, i32* %row, align 4
  %call9 = call i8* @tile_data_pointer(%struct._Tile* %13, i32 0, i32 %14)
  %15 = load i8*, i8** %source.addr, align 8
  %16 = load i32, i32* %row, align 4
  %17 = load i32, i32* %tile_stride, align 4
  %mul10 = mul nsw i32 %16, %17
  %idx.ext = sext i32 %mul10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.ext
  %18 = load i32, i32* %gimp_tile_stride, align 4
  %conv = sext i32 %18 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call9, i8* %add.ptr, i64 %conv, i32 1, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %row, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %row, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.11

if.end.11:                                        ; preds = %for.end, %if.end
  %20 = load %struct._Tile*, %struct._Tile** %gimp_tile, align 8
  call void @tile_release(%struct._Tile* %20, i32 0)
  br label %return

return:                                           ; preds = %if.end.11, %if.then
  ret void
}

declare void @gegl_tile_mark_as_stored(%struct._GeglTile*) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
