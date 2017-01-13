; ModuleID = './app/core/gimpbuffer.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpBufferClass = type { %struct._GimpViewableClass }
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
%struct._TempBuf = type { i32, i32, i32, i32, i32, i8* }
%struct._GimpContext = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpContainer = type opaque
%struct._GimpBuffer = type { %struct._GimpViewable, %struct._TileManager*, i32, i32 }
%struct._TileManager = type opaque
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Tile = type opaque

@gimp_buffer_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"GimpBuffer\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_buffer_new = private unnamed_addr constant [16 x i8] c"gimp_buffer_new\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"tiles != NULL\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@__func__.gimp_buffer_new_from_pixbuf = private unnamed_addr constant [28 x i8] c"gimp_buffer_new_from_pixbuf\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"GDK_IS_PIXBUF (pixbuf)\00", align 1
@__func__.gimp_buffer_get_width = private unnamed_addr constant [22 x i8] c"gimp_buffer_get_width\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"GIMP_IS_BUFFER (buffer)\00", align 1
@__func__.gimp_buffer_get_height = private unnamed_addr constant [23 x i8] c"gimp_buffer_get_height\00", align 1
@__func__.gimp_buffer_get_bytes = private unnamed_addr constant [22 x i8] c"gimp_buffer_get_bytes\00", align 1
@__func__.gimp_buffer_get_image_type = private unnamed_addr constant [27 x i8] c"gimp_buffer_get_image_type\00", align 1
@__func__.gimp_buffer_get_tiles = private unnamed_addr constant [22 x i8] c"gimp_buffer_get_tiles\00", align 1
@gimp_buffer_parent_class = internal global i8* null, align 8
@GimpBuffer_private_offset = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"gtk-paste\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"%s (%d \C3\97 %d)\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_buffer_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_buffer_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_buffer_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_viewable_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 280, void (i8*, i8*)* bitcast (void (i8*)* @gimp_buffer_class_intern_init to void (i8*, i8*)*), i32 48, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpBuffer*)* @gimp_buffer_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_buffer_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_buffer_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_buffer_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_buffer_parent_class, align 8
  %1 = load i32, i32* @GimpBuffer_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpBuffer_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpBufferClass*
  call void @gimp_buffer_class_init(%struct._GimpBufferClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_buffer_init(%struct._GimpBuffer* %buffer) #3 {
entry:
  %buffer.addr = alloca %struct._GimpBuffer*, align 8
  store %struct._GimpBuffer* %buffer, %struct._GimpBuffer** %buffer.addr, align 8
  %0 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer.addr, align 8
  %tiles = getelementptr inbounds %struct._GimpBuffer, %struct._GimpBuffer* %0, i32 0, i32 1
  store %struct._TileManager* null, %struct._TileManager** %tiles, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpBuffer* @gimp_buffer_new(%struct._TileManager* %tiles, i8* %name, i32 %offset_x, i32 %offset_y, i32 %copy_pixels) #3 {
entry:
  %retval = alloca %struct._GimpBuffer*, align 8
  %tiles.addr = alloca %struct._TileManager*, align 8
  %name.addr = alloca i8*, align 8
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %copy_pixels.addr = alloca i32, align 4
  %buffer = alloca %struct._GimpBuffer*, align 8
  store %struct._TileManager* %tiles, %struct._TileManager** %tiles.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  store i32 %copy_pixels, i32* %copy_pixels.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %cmp = icmp ne %struct._TileManager* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_buffer_new, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpBuffer* null, %struct._GimpBuffer** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8*, i8** %name.addr, align 8
  %cmp2 = icmp ne i8* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_buffer_new, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpBuffer* null, %struct._GimpBuffer** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %call = call i64 @gimp_buffer_get_type() #5
  %2 = load i8*, i8** %name.addr, align 8
  %call7 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* %2, i8* null)
  %3 = bitcast i8* %call7 to %struct._GimpBuffer*
  store %struct._GimpBuffer* %3, %struct._GimpBuffer** %buffer, align 8
  %4 = load i32, i32* %copy_pixels.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.8, label %if.else.11

if.then.8:                                        ; preds = %do.end.6
  %5 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %call9 = call %struct._TileManager* @tile_manager_duplicate(%struct._TileManager* %5)
  %6 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %tiles10 = getelementptr inbounds %struct._GimpBuffer, %struct._GimpBuffer* %6, i32 0, i32 1
  store %struct._TileManager* %call9, %struct._TileManager** %tiles10, align 8
  br label %if.end.14

if.else.11:                                       ; preds = %do.end.6
  %7 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %call12 = call %struct._TileManager* @tile_manager_ref(%struct._TileManager* %7)
  %8 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %tiles13 = getelementptr inbounds %struct._GimpBuffer, %struct._GimpBuffer* %8, i32 0, i32 1
  store %struct._TileManager* %call12, %struct._TileManager** %tiles13, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.11, %if.then.8
  %9 = load i32, i32* %offset_x.addr, align 4
  %10 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %offset_x15 = getelementptr inbounds %struct._GimpBuffer, %struct._GimpBuffer* %10, i32 0, i32 2
  store i32 %9, i32* %offset_x15, align 4
  %11 = load i32, i32* %offset_y.addr, align 4
  %12 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %offset_y16 = getelementptr inbounds %struct._GimpBuffer, %struct._GimpBuffer* %12, i32 0, i32 3
  store i32 %11, i32* %offset_y16, align 4
  %13 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  store %struct._GimpBuffer* %13, %struct._GimpBuffer** %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.else.4, %if.else
  %14 = load %struct._GimpBuffer*, %struct._GimpBuffer** %retval
  ret %struct._GimpBuffer* %14
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare %struct._TileManager* @tile_manager_duplicate(%struct._TileManager*) #1

declare %struct._TileManager* @tile_manager_ref(%struct._TileManager*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpBuffer* @gimp_buffer_new_from_pixbuf(%struct._GdkPixbuf* %pixbuf, i8* %name, i32 %offset_x, i32 %offset_y) #3 {
entry:
  %retval = alloca %struct._GimpBuffer*, align 8
  %pixbuf.addr = alloca %struct._GdkPixbuf*, align 8
  %name.addr = alloca i8*, align 8
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %buffer = alloca %struct._GimpBuffer*, align 8
  %tiles = alloca %struct._TileManager*, align 8
  %pixels = alloca i8*, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %channels = alloca i32, align 4
  %y = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GdkPixbuf* %pixbuf, %struct._GdkPixbuf** %pixbuf.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %1 = bitcast %struct._GdkPixbuf* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gdk_pixbuf_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_buffer_new_from_pixbuf, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpBuffer* null, %struct._GimpBuffer** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %name.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_buffer_new_from_pixbuf, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpBuffer* null, %struct._GimpBuffer** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call17 = call i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf* %14)
  store i32 %call17, i32* %width, align 4
  %15 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call18 = call i32 @gdk_pixbuf_get_height(%struct._GdkPixbuf* %15)
  store i32 %call18, i32* %height, align 4
  %16 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call19 = call i32 @gdk_pixbuf_get_rowstride(%struct._GdkPixbuf* %16)
  store i32 %call19, i32* %rowstride, align 4
  %17 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call20 = call i32 @gdk_pixbuf_get_n_channels(%struct._GdkPixbuf* %17)
  store i32 %call20, i32* %channels, align 4
  %18 = load i32, i32* %width, align 4
  %19 = load i32, i32* %height, align 4
  %20 = load i32, i32* %channels, align 4
  %call21 = call %struct._TileManager* @tile_manager_new(i32 %18, i32 %19, i32 %20)
  store %struct._TileManager* %call21, %struct._TileManager** %tiles, align 8
  %21 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %22 = load i32, i32* %width, align 4
  %23 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %21, i32 0, i32 0, i32 %22, i32 %23, i32 1)
  store i32 0, i32* %y, align 4
  %24 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call22 = call i8* @gdk_pixbuf_get_pixels(%struct._GdkPixbuf* %24)
  store i8* %call22, i8** %pixels, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.16
  %25 = load i32, i32* %y, align 4
  %26 = load i32, i32* %height, align 4
  %cmp23 = icmp slt i32 %25, %26
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %y, align 4
  %28 = load i32, i32* %width, align 4
  %29 = load i8*, i8** %pixels, align 8
  call void @pixel_region_set_row(%struct._PixelRegion* %destPR, i32 0, i32 %27, i32 %28, i8* %29)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %y, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %y, align 4
  %31 = load i32, i32* %rowstride, align 4
  %32 = load i8*, i8** %pixels, align 8
  %idx.ext = sext i32 %31 to i64
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 %idx.ext
  store i8* %add.ptr, i8** %pixels, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %34 = load i8*, i8** %name.addr, align 8
  %35 = load i32, i32* %offset_x.addr, align 4
  %36 = load i32, i32* %offset_y.addr, align 4
  %call24 = call %struct._GimpBuffer* @gimp_buffer_new(%struct._TileManager* %33, i8* %34, i32 %35, i32 %36, i32 0)
  store %struct._GimpBuffer* %call24, %struct._GimpBuffer** %buffer, align 8
  %37 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  call void @tile_manager_unref(%struct._TileManager* %37)
  %38 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  store %struct._GimpBuffer* %38, %struct._GimpBuffer** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.14, %if.else.9
  %39 = load %struct._GimpBuffer*, %struct._GimpBuffer** %retval
  ret %struct._GimpBuffer* %39
}

; Function Attrs: nounwind readnone
declare i64 @gdk_pixbuf_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf*) #1

declare i32 @gdk_pixbuf_get_height(%struct._GdkPixbuf*) #1

declare i32 @gdk_pixbuf_get_rowstride(%struct._GdkPixbuf*) #1

declare i32 @gdk_pixbuf_get_n_channels(%struct._GdkPixbuf*) #1

declare %struct._TileManager* @tile_manager_new(i32, i32, i32) #1

declare void @pixel_region_init(%struct._PixelRegion*, %struct._TileManager*, i32, i32, i32, i32, i32) #1

declare i8* @gdk_pixbuf_get_pixels(%struct._GdkPixbuf*) #1

declare void @pixel_region_set_row(%struct._PixelRegion*, i32, i32, i32, i8*) #1

declare void @tile_manager_unref(%struct._TileManager*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_buffer_get_width(%struct._GimpBuffer* %buffer) #3 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca %struct._GimpBuffer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpBuffer* %buffer, %struct._GimpBuffer** %buffer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer.addr, align 8
  %1 = bitcast %struct._GimpBuffer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_buffer_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_buffer_get_width, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer.addr, align 8
  %tiles = getelementptr inbounds %struct._GimpBuffer, %struct._GimpBuffer* %13, i32 0, i32 1
  %14 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %call11 = call i32 @tile_manager_width(%struct._TileManager* %14)
  store i32 %call11, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i32 @tile_manager_width(%struct._TileManager*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_buffer_get_height(%struct._GimpBuffer* %buffer) #3 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca %struct._GimpBuffer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpBuffer* %buffer, %struct._GimpBuffer** %buffer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer.addr, align 8
  %1 = bitcast %struct._GimpBuffer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_buffer_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_buffer_get_height, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer.addr, align 8
  %tiles = getelementptr inbounds %struct._GimpBuffer, %struct._GimpBuffer* %13, i32 0, i32 1
  %14 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %call11 = call i32 @tile_manager_height(%struct._TileManager* %14)
  store i32 %call11, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i32 @tile_manager_height(%struct._TileManager*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_buffer_get_bytes(%struct._GimpBuffer* %buffer) #3 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca %struct._GimpBuffer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpBuffer* %buffer, %struct._GimpBuffer** %buffer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer.addr, align 8
  %1 = bitcast %struct._GimpBuffer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_buffer_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_buffer_get_bytes, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer.addr, align 8
  %tiles = getelementptr inbounds %struct._GimpBuffer, %struct._GimpBuffer* %13, i32 0, i32 1
  %14 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %call11 = call i32 @tile_manager_bpp(%struct._TileManager* %14)
  store i32 %call11, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i32 @tile_manager_bpp(%struct._TileManager*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_buffer_get_image_type(%struct._GimpBuffer* %buffer) #3 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca %struct._GimpBuffer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpBuffer* %buffer, %struct._GimpBuffer** %buffer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer.addr, align 8
  %1 = bitcast %struct._GimpBuffer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_buffer_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_buffer_get_image_type, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer.addr, align 8
  %tiles = getelementptr inbounds %struct._GimpBuffer, %struct._GimpBuffer* %13, i32 0, i32 1
  %14 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %call11 = call i32 @tile_manager_bpp(%struct._TileManager* %14)
  switch i32 %call11, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.12
    i32 3, label %sw.bb.13
    i32 4, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %do.end
  store i32 2, i32* %retval
  br label %return

sw.bb.12:                                         ; preds = %do.end
  store i32 3, i32* %retval
  br label %return

sw.bb.13:                                         ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

sw.bb.14:                                         ; preds = %do.end
  store i32 1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define %struct._TileManager* @gimp_buffer_get_tiles(%struct._GimpBuffer* %buffer) #3 {
entry:
  %retval = alloca %struct._TileManager*, align 8
  %buffer.addr = alloca %struct._GimpBuffer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpBuffer* %buffer, %struct._GimpBuffer** %buffer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer.addr, align 8
  %1 = bitcast %struct._GimpBuffer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_buffer_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_buffer_get_tiles, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0))
  store %struct._TileManager* null, %struct._TileManager** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer.addr, align 8
  %tiles = getelementptr inbounds %struct._GimpBuffer, %struct._GimpBuffer* %13, i32 0, i32 1
  %14 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  store %struct._TileManager* %14, %struct._TileManager** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._TileManager*, %struct._TileManager** %retval
  ret %struct._TileManager* %15
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_buffer_class_init(%struct._GimpBufferClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpBufferClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  %viewable_class = alloca %struct._GimpViewableClass*, align 8
  store %struct._GimpBufferClass* %klass, %struct._GimpBufferClass** %klass.addr, align 8
  %0 = load %struct._GimpBufferClass*, %struct._GimpBufferClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpBufferClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpBufferClass*, %struct._GimpBufferClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpBufferClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #5
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GimpBufferClass*, %struct._GimpBufferClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpBufferClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_viewable_get_type() #5
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpViewableClass*
  store %struct._GimpViewableClass* %8, %struct._GimpViewableClass** %viewable_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_buffer_finalize, void (%struct._GObject*)** %finalize, align 8
  %10 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %10, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_buffer_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %11 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %default_stock_id = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %11, i32 0, i32 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8** %default_stock_id, align 8
  %12 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %get_size = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %12, i32 0, i32 5
  store i32 (%struct._GimpViewable*, i32*, i32*)* @gimp_buffer_get_size, i32 (%struct._GimpViewable*, i32*, i32*)** %get_size, align 8
  %13 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %get_preview_size = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %13, i32 0, i32 6
  store void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)* @gimp_buffer_get_preview_size, void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)** %get_preview_size, align 8
  %14 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %get_popup_size = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %14, i32 0, i32 7
  store i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)* @gimp_buffer_get_popup_size, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)** %get_popup_size, align 8
  %15 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %get_new_preview = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %15, i32 0, i32 9
  store %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)* @gimp_buffer_get_new_preview, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)** %get_new_preview, align 8
  %16 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %get_description = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %16, i32 0, i32 12
  store i8* (%struct._GimpViewable*, i8**)* @gimp_buffer_get_description, i8* (%struct._GimpViewable*, i8**)** %get_description, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_buffer_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %buffer = alloca %struct._GimpBuffer*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_buffer_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBuffer*
  store %struct._GimpBuffer* %2, %struct._GimpBuffer** %buffer, align 8
  %3 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %tiles = getelementptr inbounds %struct._GimpBuffer, %struct._GimpBuffer* %3, i32 0, i32 1
  %4 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %tobool = icmp ne %struct._TileManager* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %tiles2 = getelementptr inbounds %struct._GimpBuffer, %struct._GimpBuffer* %5, i32 0, i32 1
  %6 = load %struct._TileManager*, %struct._TileManager** %tiles2, align 8
  call void @tile_manager_unref(%struct._TileManager* %6)
  %7 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %tiles3 = getelementptr inbounds %struct._GimpBuffer, %struct._GimpBuffer* %7, i32 0, i32 1
  store %struct._TileManager* null, %struct._TileManager** %tiles3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_buffer_parent_class, align 8
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
define internal i64 @gimp_buffer_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %buffer = alloca %struct._GimpBuffer*, align 8
  %memsize = alloca i64, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_buffer_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBuffer*
  store %struct._GimpBuffer* %2, %struct._GimpBuffer** %buffer, align 8
  store i64 0, i64* %memsize, align 8
  %3 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %tiles = getelementptr inbounds %struct._GimpBuffer, %struct._GimpBuffer* %3, i32 0, i32 1
  %4 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %call2 = call i64 @tile_manager_get_memsize(%struct._TileManager* %4, i32 0)
  %5 = load i64, i64* %memsize, align 8
  %add = add nsw i64 %5, %call2
  store i64 %add, i64* %memsize, align 8
  %6 = load i64, i64* %memsize, align 8
  %7 = load i8*, i8** @gimp_buffer_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call i64 @gimp_object_get_type() #5
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 %call3)
  %9 = bitcast %struct._GTypeClass* %call4 to %struct._GimpObjectClass*
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %9, i32 0, i32 3
  %10 = load i64 (%struct._GimpObject*, i64*)*, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %11 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %12 = load i64*, i64** %gui_size.addr, align 8
  %call5 = call i64 %10(%struct._GimpObject* %11, i64* %12)
  %add6 = add nsw i64 %6, %call5
  ret i64 %add6
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_buffer_get_size(%struct._GimpViewable* %viewable, i32* %width, i32* %height) #3 {
entry:
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %buffer = alloca %struct._GimpBuffer*, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_buffer_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBuffer*
  store %struct._GimpBuffer* %2, %struct._GimpBuffer** %buffer, align 8
  %3 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %call2 = call i32 @gimp_buffer_get_width(%struct._GimpBuffer* %3)
  %4 = load i32*, i32** %width.addr, align 8
  store i32 %call2, i32* %4, align 4
  %5 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %call3 = call i32 @gimp_buffer_get_height(%struct._GimpBuffer* %5)
  %6 = load i32*, i32** %height.addr, align 8
  store i32 %call3, i32* %6, align 4
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @gimp_buffer_get_preview_size(%struct._GimpViewable* %viewable, i32 %size, i32 %is_popup, i32 %dot_for_dot, i32* %width, i32* %height) #3 {
entry:
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %size.addr = alloca i32, align 4
  %is_popup.addr = alloca i32, align 4
  %dot_for_dot.addr = alloca i32, align 4
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %buffer = alloca %struct._GimpBuffer*, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %is_popup, i32* %is_popup.addr, align 4
  store i32 %dot_for_dot, i32* %dot_for_dot.addr, align 4
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_buffer_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBuffer*
  store %struct._GimpBuffer* %2, %struct._GimpBuffer** %buffer, align 8
  %3 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %call2 = call i32 @gimp_buffer_get_width(%struct._GimpBuffer* %3)
  %4 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %call3 = call i32 @gimp_buffer_get_height(%struct._GimpBuffer* %4)
  %5 = load i32, i32* %size.addr, align 4
  %6 = load i32, i32* %size.addr, align 4
  %7 = load i32, i32* %dot_for_dot.addr, align 4
  %8 = load i32*, i32** %width.addr, align 8
  %9 = load i32*, i32** %height.addr, align 8
  call void @gimp_viewable_calc_preview_size(i32 %call2, i32 %call3, i32 %5, i32 %6, i32 %7, double 1.000000e+00, double 1.000000e+00, i32* %8, i32* %9, i32* null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_buffer_get_popup_size(%struct._GimpViewable* %viewable, i32 %width, i32 %height, i32 %dot_for_dot, i32* %popup_width, i32* %popup_height) #3 {
entry:
  %retval = alloca i32, align 4
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %dot_for_dot.addr = alloca i32, align 4
  %popup_width.addr = alloca i32*, align 8
  %popup_height.addr = alloca i32*, align 8
  %buffer = alloca %struct._GimpBuffer*, align 8
  %buffer_width = alloca i32, align 4
  %buffer_height = alloca i32, align 4
  %scaling_up = alloca i32, align 4
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %dot_for_dot, i32* %dot_for_dot.addr, align 4
  store i32* %popup_width, i32** %popup_width.addr, align 8
  store i32* %popup_height, i32** %popup_height.addr, align 8
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_buffer_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBuffer*
  store %struct._GimpBuffer* %2, %struct._GimpBuffer** %buffer, align 8
  %3 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %call2 = call i32 @gimp_buffer_get_width(%struct._GimpBuffer* %3)
  store i32 %call2, i32* %buffer_width, align 4
  %4 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %call3 = call i32 @gimp_buffer_get_height(%struct._GimpBuffer* %4)
  store i32 %call3, i32* %buffer_height, align 4
  %5 = load i32, i32* %buffer_width, align 4
  %6 = load i32, i32* %width.addr, align 4
  %cmp = icmp sgt i32 %5, %6
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* %buffer_height, align 4
  %8 = load i32, i32* %height.addr, align 4
  %cmp4 = icmp sgt i32 %7, %8
  br i1 %cmp4, label %if.then, label %if.end.7

if.then:                                          ; preds = %lor.lhs.false, %entry
  %9 = load i32, i32* %buffer_width, align 4
  %10 = load i32, i32* %buffer_height, align 4
  %11 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %11, 2
  %12 = load i32, i32* %height.addr, align 4
  %mul5 = mul nsw i32 %12, 2
  %13 = load i32, i32* %dot_for_dot.addr, align 4
  %14 = load i32*, i32** %popup_width.addr, align 8
  %15 = load i32*, i32** %popup_height.addr, align 8
  call void @gimp_viewable_calc_preview_size(i32 %9, i32 %10, i32 %mul, i32 %mul5, i32 %13, double 1.000000e+00, double 1.000000e+00, i32* %14, i32* %15, i32* %scaling_up)
  %16 = load i32, i32* %scaling_up, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %17 = load i32, i32* %buffer_width, align 4
  %18 = load i32*, i32** %popup_width.addr, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %buffer_height, align 4
  %20 = load i32*, i32** %popup_height.addr, align 8
  store i32 %19, i32* %20, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  store i32 1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.end
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal %struct._TempBuf* @gimp_buffer_get_new_preview(%struct._GimpViewable* %viewable, %struct._GimpContext* %context, i32 %width, i32 %height) #3 {
entry:
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %buffer = alloca %struct._GimpBuffer*, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_buffer_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBuffer*
  store %struct._GimpBuffer* %2, %struct._GimpBuffer** %buffer, align 8
  %3 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %tiles = getelementptr inbounds %struct._GimpBuffer, %struct._GimpBuffer* %3, i32 0, i32 1
  %4 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %5 = load i32, i32* %width.addr, align 4
  %6 = load i32, i32* %height.addr, align 4
  %call2 = call %struct._TempBuf* @tile_manager_get_preview(%struct._TileManager* %4, i32 %5, i32 %6)
  ret %struct._TempBuf* %call2
}

; Function Attrs: nounwind uwtable
define internal i8* @gimp_buffer_get_description(%struct._GimpViewable* %viewable, i8** %tooltip) #3 {
entry:
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %tooltip.addr = alloca i8**, align 8
  %buffer = alloca %struct._GimpBuffer*, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8** %tooltip, i8*** %tooltip.addr, align 8
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_buffer_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBuffer*
  store %struct._GimpBuffer* %2, %struct._GimpBuffer** %buffer, align 8
  %3 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %4 = bitcast %struct._GimpBuffer* %3 to i8*
  %call2 = call i8* @gimp_object_get_name(i8* %4)
  %5 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %call3 = call i32 @gimp_buffer_get_width(%struct._GimpBuffer* %5)
  %6 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %call4 = call i32 @gimp_buffer_get_height(%struct._GimpBuffer* %6)
  %call5 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8* %call2, i32 %call3, i32 %call4)
  ret i8* %call5
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i64 @tile_manager_get_memsize(%struct._TileManager*, i32) #1

declare void @gimp_viewable_calc_preview_size(i32, i32, i32, i32, i32, double, double, i32*, i32*, i32*) #1

declare %struct._TempBuf* @tile_manager_get_preview(%struct._TileManager*, i32, i32) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i8* @gimp_object_get_name(i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
