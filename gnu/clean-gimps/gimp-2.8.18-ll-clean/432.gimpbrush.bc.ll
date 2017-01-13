; ModuleID = './app/core/gimpbrush.bc'
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
%struct._GimpBrushClass = type { %struct._GimpDataClass, void (%struct._GimpBrush*)*, void (%struct._GimpBrush*)*, %struct._GimpBrush* (%struct._GimpBrush*, %struct._GimpCoords*, %struct._GimpCoords*)*, i32 (%struct._GimpBrush*, %struct._GimpCoords*, %struct._GimpCoords*)*, void (%struct._GimpBrush*, double, double, double, i32*, i32*)*, %struct._TempBuf* (%struct._GimpBrush*, double, double, double, double)*, %struct._TempBuf* (%struct._GimpBrush*, double, double, double, double)*, %struct.cairo_path* (%struct._GimpBrush*, double, double, double, double, i32*, i32*)*, void (%struct._GimpBrush*)* }
%struct._GimpDataClass = type { %struct._GimpViewableClass, void (%struct._GimpData*)*, i32 (%struct._GimpData*, %struct._GError**)*, i8* (%struct._GimpData*)*, %struct._GimpData* (%struct._GimpData*)* }
%struct._GimpViewableClass = type { %struct._GimpObjectClass, i8*, i8*, void (%struct._GimpViewable*)*, void (%struct._GimpViewable*)*, i32 (%struct._GimpViewable*, i32*, i32*)*, void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, i8* (%struct._GimpViewable*, i8**)*, %struct._GimpContainer* (%struct._GimpViewable*)*, void (%struct._GimpViewable*, i32)*, i32 (%struct._GimpViewable*)* }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._TempBuf = type { i32, i32, i32, i32, i32, i8* }
%struct._GimpContext = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpContainer = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpBrush = type { %struct._GimpData, %struct._TempBuf*, %struct._TempBuf*, i32, %struct._GimpVector2, %struct._GimpVector2, i32, %struct._GimpBrushCache*, %struct._GimpBrushCache*, %struct._GimpBrushCache* }
%struct._GimpVector2 = type { double, double }
%struct._GimpBrushCache = type { %struct._GimpObject, void (i8*)*, i8*, i32, i32, double, double, double, double, i8, i8 }
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct.cairo_path = type { i32, %union._cairo_path_data_t*, i32 }
%union._cairo_path_data_t = type { %struct.anon.0 }
%struct.anon.0 = type { double, double }
%struct._GimpTaggedInterface = type { %struct._GTypeInterface, void (%struct._GimpTagged*, %struct._GimpTag*)*, void (%struct._GimpTagged*, %struct._GimpTag*)*, i32 (%struct._GimpTagged*, %struct._GimpTag*)*, i32 (%struct._GimpTagged*, %struct._GimpTag*)*, %struct._GList* (%struct._GimpTagged*)*, i8* (%struct._GimpTagged*)*, i8* (%struct._GimpTagged*)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpTagged = type opaque
%struct._GimpTag = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GChecksum = type opaque

@gimp_brush_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"GimpBrush\00", align 1
@gimp_brush_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpTaggedInterface*)* @gimp_brush_tagged_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_brush_new = private unnamed_addr constant [15 x i8] c"gimp_brush_new\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@gimp_brush_get_standard.standard_brush = internal global %struct._GimpData* null, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"Standard\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"gimp-brush-standard\00", align 1
@__func__.gimp_brush_begin_use = private unnamed_addr constant [21 x i8] c"gimp_brush_begin_use\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"GIMP_IS_BRUSH (brush)\00", align 1
@__func__.gimp_brush_end_use = private unnamed_addr constant [19 x i8] c"gimp_brush_end_use\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"brush->use_count > 0\00", align 1
@__func__.gimp_brush_select_brush = private unnamed_addr constant [24 x i8] c"gimp_brush_select_brush\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"last_coords != NULL\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"current_coords != NULL\00", align 1
@__func__.gimp_brush_want_null_motion = private unnamed_addr constant [28 x i8] c"gimp_brush_want_null_motion\00", align 1
@__func__.gimp_brush_transform_size = private unnamed_addr constant [26 x i8] c"gimp_brush_transform_size\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"scale > 0.0\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"width != NULL\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"height != NULL\00", align 1
@__func__.gimp_brush_transform_mask = private unnamed_addr constant [26 x i8] c"gimp_brush_transform_mask\00", align 1
@__func__.gimp_brush_transform_pixmap = private unnamed_addr constant [28 x i8] c"gimp_brush_transform_pixmap\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"brush->pixmap != NULL\00", align 1
@__func__.gimp_brush_transform_boundary = private unnamed_addr constant [30 x i8] c"gimp_brush_transform_boundary\00", align 1
@__func__.gimp_brush_get_mask = private unnamed_addr constant [20 x i8] c"gimp_brush_get_mask\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"brush != NULL\00", align 1
@__func__.gimp_brush_get_pixmap = private unnamed_addr constant [22 x i8] c"gimp_brush_get_pixmap\00", align 1
@__func__.gimp_brush_get_spacing = private unnamed_addr constant [23 x i8] c"gimp_brush_get_spacing\00", align 1
@__func__.gimp_brush_set_spacing = private unnamed_addr constant [23 x i8] c"gimp_brush_set_spacing\00", align 1
@brush_signals = internal global [1 x i32] zeroinitializer, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"spacing\00", align 1
@gimp_brush_parent_class = internal global i8* null, align 8
@GimpBrush_private_offset = internal global i32 0, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"spacing-changed\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"gimp-tool-paintbrush\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"Brush Spacing\00", align 1
@.str.18 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"gimpbrush.c\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"%s (%d \C3\97 %d)\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c".gbr\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_brush_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_brush_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_brush_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_data_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 384, void (i8*, i8*)* bitcast (void (i8*)* @gimp_brush_class_intern_init to void (i8*, i8*)*), i32 120, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpBrush*)* @gimp_brush_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_tagged_interface_get_type() #7
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_brush_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_brush_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_brush_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_data_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_brush_parent_class, align 8
  %1 = load i32, i32* @GimpBrush_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpBrush_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpBrushClass*
  call void @gimp_brush_class_init(%struct._GimpBrushClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_init(%struct._GimpBrush* %brush) #3 {
entry:
  %brush.addr = alloca %struct._GimpBrush*, align 8
  store %struct._GimpBrush* %brush, %struct._GimpBrush** %brush.addr, align 8
  %0 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %mask = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %0, i32 0, i32 1
  store %struct._TempBuf* null, %struct._TempBuf** %mask, align 8
  %1 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %pixmap = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %1, i32 0, i32 2
  store %struct._TempBuf* null, %struct._TempBuf** %pixmap, align 8
  %2 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %spacing = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %2, i32 0, i32 3
  store i32 20, i32* %spacing, align 4
  %3 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %x_axis = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %3, i32 0, i32 4
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %x_axis, i32 0, i32 0
  store double 1.500000e+01, double* %x, align 8
  %4 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %x_axis1 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %4, i32 0, i32 4
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %x_axis1, i32 0, i32 1
  store double 0.000000e+00, double* %y, align 8
  %5 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %y_axis = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %5, i32 0, i32 5
  %x2 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %y_axis, i32 0, i32 0
  store double 0.000000e+00, double* %x2, align 8
  %6 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %y_axis3 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %6, i32 0, i32 5
  %y4 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %y_axis3, i32 0, i32 1
  store double 1.500000e+01, double* %y4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_tagged_iface_init(%struct._GimpTaggedInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpTaggedInterface*, align 8
  store %struct._GimpTaggedInterface* %iface, %struct._GimpTaggedInterface** %iface.addr, align 8
  %0 = load %struct._GimpTaggedInterface*, %struct._GimpTaggedInterface** %iface.addr, align 8
  %get_checksum = getelementptr inbounds %struct._GimpTaggedInterface, %struct._GimpTaggedInterface* %0, i32 0, i32 7
  store i8* (%struct._GimpTagged*)* @gimp_brush_get_checksum, i8* (%struct._GimpTagged*)** %get_checksum, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tagged_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpData* @gimp_brush_new(%struct._GimpContext* %context, i8* %name) #3 {
entry:
  %retval = alloca %struct._GimpData*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %name.addr = alloca i8*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %name.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_brush_new, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpData* null, %struct._GimpData** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GimpData* @gimp_brush_generated_new(i8* %1, i32 0, float 5.000000e+00, i32 2, float 5.000000e-01, float 1.000000e+00, float 0.000000e+00)
  store %struct._GimpData* %call, %struct._GimpData** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %2 = load %struct._GimpData*, %struct._GimpData** %retval
  ret %struct._GimpData* %2
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._GimpData* @gimp_brush_generated_new(i8*, i32, float, i32, float, float, float) #1

; Function Attrs: nounwind uwtable
define %struct._GimpData* @gimp_brush_get_standard(%struct._GimpContext* %context) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpData*, %struct._GimpData** @gimp_brush_get_standard.standard_brush, align 8
  %tobool = icmp ne %struct._GimpData* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call = call %struct._GimpData* @gimp_brush_new(%struct._GimpContext* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpData* %call, %struct._GimpData** @gimp_brush_get_standard.standard_brush, align 8
  %2 = load %struct._GimpData*, %struct._GimpData** @gimp_brush_get_standard.standard_brush, align 8
  call void @gimp_data_clean(%struct._GimpData* %2)
  %3 = load %struct._GimpData*, %struct._GimpData** @gimp_brush_get_standard.standard_brush, align 8
  call void @gimp_data_make_internal(%struct._GimpData* %3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  %4 = load %struct._GimpData*, %struct._GimpData** @gimp_brush_get_standard.standard_brush, align 8
  %5 = bitcast %struct._GimpData* %4 to %struct._GTypeInstance*
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 80)
  %6 = bitcast %struct._GTypeInstance* %call1 to %struct._GObject*
  call void @g_object_add_weak_pointer(%struct._GObject* %6, i8** bitcast (%struct._GimpData** @gimp_brush_get_standard.standard_brush to i8**))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpData*, %struct._GimpData** @gimp_brush_get_standard.standard_brush, align 8
  ret %struct._GimpData* %7
}

declare void @gimp_data_clean(%struct._GimpData*) #1

declare void @gimp_data_make_internal(%struct._GimpData*, i8*) #1

declare void @g_object_add_weak_pointer(%struct._GObject*, i8**) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_brush_begin_use(%struct._GimpBrush* %brush) #3 {
entry:
  %brush.addr = alloca %struct._GimpBrush*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpBrush* %brush, %struct._GimpBrush** %brush.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %1 = bitcast %struct._GimpBrush* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_brush_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_brush_begin_use, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.15

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %use_count = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %13, i32 0, i32 6
  %14 = load i32, i32* %use_count, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %use_count, align 4
  %15 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %use_count11 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %15, i32 0, i32 6
  %16 = load i32, i32* %use_count11, align 4
  %cmp12 = icmp eq i32 %16, 1
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %do.end
  %17 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %18 = bitcast %struct._GimpBrush* %17 to %struct._GTypeInstance*
  %g_class14 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class14, align 8
  %20 = bitcast %struct._GTypeClass* %19 to %struct._GimpBrushClass*
  %begin_use = getelementptr inbounds %struct._GimpBrushClass, %struct._GimpBrushClass* %20, i32 0, i32 1
  %21 = load void (%struct._GimpBrush*)*, void (%struct._GimpBrush*)** %begin_use, align 8
  %22 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  call void %21(%struct._GimpBrush* %22)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

; Function Attrs: nounwind uwtable
define void @gimp_brush_end_use(%struct._GimpBrush* %brush) #3 {
entry:
  %brush.addr = alloca %struct._GimpBrush*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpBrush* %brush, %struct._GimpBrush** %brush.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %1 = bitcast %struct._GimpBrush* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_brush_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_brush_end_use, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.22

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %use_count = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %13, i32 0, i32 6
  %14 = load i32, i32* %use_count, align 4
  %cmp12 = icmp sgt i32 %14, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_brush_end_use, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.22

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %15 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %use_count17 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %15, i32 0, i32 6
  %16 = load i32, i32* %use_count17, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %use_count17, align 4
  %17 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %use_count18 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %17, i32 0, i32 6
  %18 = load i32, i32* %use_count18, align 4
  %cmp19 = icmp eq i32 %18, 0
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %do.end.16
  %19 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %20 = bitcast %struct._GimpBrush* %19 to %struct._GTypeInstance*
  %g_class21 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class21, align 8
  %22 = bitcast %struct._GTypeClass* %21 to %struct._GimpBrushClass*
  %end_use = getelementptr inbounds %struct._GimpBrushClass, %struct._GimpBrushClass* %22, i32 0, i32 2
  %23 = load void (%struct._GimpBrush*)*, void (%struct._GimpBrush*)** %end_use, align 8
  %24 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  call void %23(%struct._GimpBrush* %24)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.9, %if.else.14, %if.then.20, %do.end.16
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpBrush* @gimp_brush_select_brush(%struct._GimpBrush* %brush, %struct._GimpCoords* %last_coords, %struct._GimpCoords* %current_coords) #3 {
entry:
  %retval = alloca %struct._GimpBrush*, align 8
  %brush.addr = alloca %struct._GimpBrush*, align 8
  %last_coords.addr = alloca %struct._GimpCoords*, align 8
  %current_coords.addr = alloca %struct._GimpCoords*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpBrush* %brush, %struct._GimpBrush** %brush.addr, align 8
  store %struct._GimpCoords* %last_coords, %struct._GimpCoords** %last_coords.addr, align 8
  store %struct._GimpCoords* %current_coords, %struct._GimpCoords** %current_coords.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %1 = bitcast %struct._GimpBrush* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_brush_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_brush_select_brush, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpBrush* null, %struct._GimpBrush** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpCoords*, %struct._GimpCoords** %last_coords.addr, align 8
  %cmp12 = icmp ne %struct._GimpCoords* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_brush_select_brush, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpBrush* null, %struct._GimpBrush** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpCoords*, %struct._GimpCoords** %current_coords.addr, align 8
  %cmp18 = icmp ne %struct._GimpCoords* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_brush_select_brush, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GimpBrush* null, %struct._GimpBrush** %retval
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %16 = bitcast %struct._GimpBrush* %15 to %struct._GTypeInstance*
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %18 = bitcast %struct._GTypeClass* %17 to %struct._GimpBrushClass*
  %select_brush = getelementptr inbounds %struct._GimpBrushClass, %struct._GimpBrushClass* %18, i32 0, i32 3
  %19 = load %struct._GimpBrush* (%struct._GimpBrush*, %struct._GimpCoords*, %struct._GimpCoords*)*, %struct._GimpBrush* (%struct._GimpBrush*, %struct._GimpCoords*, %struct._GimpCoords*)** %select_brush, align 8
  %20 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %21 = load %struct._GimpCoords*, %struct._GimpCoords** %last_coords.addr, align 8
  %22 = load %struct._GimpCoords*, %struct._GimpCoords** %current_coords.addr, align 8
  %call24 = call %struct._GimpBrush* %19(%struct._GimpBrush* %20, %struct._GimpCoords* %21, %struct._GimpCoords* %22)
  store %struct._GimpBrush* %call24, %struct._GimpBrush** %retval
  br label %return

return:                                           ; preds = %do.end.22, %if.else.20, %if.else.14, %if.else.9
  %23 = load %struct._GimpBrush*, %struct._GimpBrush** %retval
  ret %struct._GimpBrush* %23
}

; Function Attrs: nounwind uwtable
define i32 @gimp_brush_want_null_motion(%struct._GimpBrush* %brush, %struct._GimpCoords* %last_coords, %struct._GimpCoords* %current_coords) #3 {
entry:
  %retval = alloca i32, align 4
  %brush.addr = alloca %struct._GimpBrush*, align 8
  %last_coords.addr = alloca %struct._GimpCoords*, align 8
  %current_coords.addr = alloca %struct._GimpCoords*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpBrush* %brush, %struct._GimpBrush** %brush.addr, align 8
  store %struct._GimpCoords* %last_coords, %struct._GimpCoords** %last_coords.addr, align 8
  store %struct._GimpCoords* %current_coords, %struct._GimpCoords** %current_coords.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %1 = bitcast %struct._GimpBrush* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_brush_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_brush_want_null_motion, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpCoords*, %struct._GimpCoords** %last_coords.addr, align 8
  %cmp12 = icmp ne %struct._GimpCoords* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_brush_want_null_motion, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpCoords*, %struct._GimpCoords** %current_coords.addr, align 8
  %cmp18 = icmp ne %struct._GimpCoords* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_brush_want_null_motion, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %16 = bitcast %struct._GimpBrush* %15 to %struct._GTypeInstance*
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %18 = bitcast %struct._GTypeClass* %17 to %struct._GimpBrushClass*
  %want_null_motion = getelementptr inbounds %struct._GimpBrushClass, %struct._GimpBrushClass* %18, i32 0, i32 4
  %19 = load i32 (%struct._GimpBrush*, %struct._GimpCoords*, %struct._GimpCoords*)*, i32 (%struct._GimpBrush*, %struct._GimpCoords*, %struct._GimpCoords*)** %want_null_motion, align 8
  %20 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %21 = load %struct._GimpCoords*, %struct._GimpCoords** %last_coords.addr, align 8
  %22 = load %struct._GimpCoords*, %struct._GimpCoords** %current_coords.addr, align 8
  %call24 = call i32 %19(%struct._GimpBrush* %20, %struct._GimpCoords* %21, %struct._GimpCoords* %22)
  store i32 %call24, i32* %retval
  br label %return

return:                                           ; preds = %do.end.22, %if.else.20, %if.else.14, %if.else.9
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define void @gimp_brush_transform_size(%struct._GimpBrush* %brush, double %scale, double %aspect_ratio, double %angle, i32* %width, i32* %height) #3 {
entry:
  %brush.addr = alloca %struct._GimpBrush*, align 8
  %scale.addr = alloca double, align 8
  %aspect_ratio.addr = alloca double, align 8
  %angle.addr = alloca double, align 8
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpBrush* %brush, %struct._GimpBrush** %brush.addr, align 8
  store double %scale, double* %scale.addr, align 8
  store double %aspect_ratio, double* %aspect_ratio.addr, align 8
  store double %angle, double* %angle.addr, align 8
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %1 = bitcast %struct._GimpBrush* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_brush_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_brush_transform_size, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load double, double* %scale.addr, align 8
  %cmp12 = fcmp ogt double %13, 0.000000e+00
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_brush_transform_size, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i32*, i32** %width.addr, align 8
  %cmp18 = icmp ne i32* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_brush_transform_size, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %15 = load i32*, i32** %height.addr, align 8
  %cmp24 = icmp ne i32* %15, null
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.23
  br label %if.end.27

if.else.26:                                       ; preds = %do.body.23
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_brush_transform_size, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end.27:                                        ; preds = %if.then.25
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  %16 = load double, double* %scale.addr, align 8
  %cmp29 = fcmp oeq double %16, 1.000000e+00
  br i1 %cmp29, label %land.lhs.true.30, label %if.end.41

land.lhs.true.30:                                 ; preds = %do.end.28
  %17 = load double, double* %aspect_ratio.addr, align 8
  %cmp31 = fcmp oeq double %17, 0.000000e+00
  br i1 %cmp31, label %land.lhs.true.32, label %if.end.41

land.lhs.true.32:                                 ; preds = %land.lhs.true.30
  %18 = load double, double* %angle.addr, align 8
  %cmp33 = fcmp oeq double %18, 0.000000e+00
  br i1 %cmp33, label %if.then.37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.32
  %19 = load double, double* %angle.addr, align 8
  %cmp34 = fcmp oeq double %19, 5.000000e-01
  br i1 %cmp34, label %if.then.37, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %lor.lhs.false
  %20 = load double, double* %angle.addr, align 8
  %cmp36 = fcmp oeq double %20, 1.000000e+00
  br i1 %cmp36, label %if.then.37, label %if.end.41

if.then.37:                                       ; preds = %lor.lhs.false.35, %lor.lhs.false, %land.lhs.true.32
  %21 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %mask = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %21, i32 0, i32 1
  %22 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %width38 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %22, i32 0, i32 1
  %23 = load i32, i32* %width38, align 4
  %24 = load i32*, i32** %width.addr, align 8
  store i32 %23, i32* %24, align 4
  %25 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %mask39 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %25, i32 0, i32 1
  %26 = load %struct._TempBuf*, %struct._TempBuf** %mask39, align 8
  %height40 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %26, i32 0, i32 2
  %27 = load i32, i32* %height40, align 4
  %28 = load i32*, i32** %height.addr, align 8
  store i32 %27, i32* %28, align 4
  br label %return

if.end.41:                                        ; preds = %lor.lhs.false.35, %land.lhs.true.30, %do.end.28
  %29 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %30 = bitcast %struct._GimpBrush* %29 to %struct._GTypeInstance*
  %g_class42 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class42, align 8
  %32 = bitcast %struct._GTypeClass* %31 to %struct._GimpBrushClass*
  %transform_size = getelementptr inbounds %struct._GimpBrushClass, %struct._GimpBrushClass* %32, i32 0, i32 5
  %33 = load void (%struct._GimpBrush*, double, double, double, i32*, i32*)*, void (%struct._GimpBrush*, double, double, double, i32*, i32*)** %transform_size, align 8
  %34 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %35 = load double, double* %scale.addr, align 8
  %36 = load double, double* %aspect_ratio.addr, align 8
  %37 = load double, double* %angle.addr, align 8
  %38 = load i32*, i32** %width.addr, align 8
  %39 = load i32*, i32** %height.addr, align 8
  call void %33(%struct._GimpBrush* %34, double %35, double %36, double %37, i32* %38, i32* %39)
  br label %return

return:                                           ; preds = %if.end.41, %if.then.37, %if.else.26, %if.else.20, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._TempBuf* @gimp_brush_transform_mask(%struct._GimpBrush* %brush, double %scale, double %aspect_ratio, double %angle, double %hardness) #3 {
entry:
  %retval = alloca %struct._TempBuf*, align 8
  %brush.addr = alloca %struct._GimpBrush*, align 8
  %scale.addr = alloca double, align 8
  %aspect_ratio.addr = alloca double, align 8
  %angle.addr = alloca double, align 8
  %hardness.addr = alloca double, align 8
  %mask = alloca %struct._TempBuf*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpBrush* %brush, %struct._GimpBrush** %brush.addr, align 8
  store double %scale, double* %scale.addr, align 8
  store double %aspect_ratio, double* %aspect_ratio.addr, align 8
  store double %angle, double* %angle.addr, align 8
  store double %hardness, double* %hardness.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %1 = bitcast %struct._GimpBrush* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_brush_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_brush_transform_mask, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load double, double* %scale.addr, align 8
  %cmp12 = fcmp ogt double %13, 0.000000e+00
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_brush_transform_mask, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %15 = load double, double* %scale.addr, align 8
  %16 = load double, double* %aspect_ratio.addr, align 8
  %17 = load double, double* %angle.addr, align 8
  call void @gimp_brush_transform_size(%struct._GimpBrush* %14, double %15, double %16, double %17, i32* %width, i32* %height)
  %18 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %mask_cache = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %18, i32 0, i32 7
  %19 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %mask_cache, align 8
  %20 = load i32, i32* %width, align 4
  %21 = load i32, i32* %height, align 4
  %22 = load double, double* %scale.addr, align 8
  %23 = load double, double* %aspect_ratio.addr, align 8
  %24 = load double, double* %angle.addr, align 8
  %25 = load double, double* %hardness.addr, align 8
  %call17 = call i8* @gimp_brush_cache_get(%struct._GimpBrushCache* %19, i32 %20, i32 %21, double %22, double %23, double %24, double %25)
  %26 = bitcast i8* %call17 to %struct._TempBuf*
  store %struct._TempBuf* %26, %struct._TempBuf** %mask, align 8
  %27 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %tobool18 = icmp ne %struct._TempBuf* %27, null
  br i1 %tobool18, label %if.end.35, label %if.then.19

if.then.19:                                       ; preds = %do.end.16
  %28 = load double, double* %scale.addr, align 8
  %cmp20 = fcmp oeq double %28, 1.000000e+00
  br i1 %cmp20, label %land.lhs.true.21, label %if.else.30

land.lhs.true.21:                                 ; preds = %if.then.19
  %29 = load double, double* %aspect_ratio.addr, align 8
  %cmp22 = fcmp oeq double %29, 0.000000e+00
  br i1 %cmp22, label %land.lhs.true.23, label %if.else.30

land.lhs.true.23:                                 ; preds = %land.lhs.true.21
  %30 = load double, double* %angle.addr, align 8
  %cmp24 = fcmp oeq double %30, 0.000000e+00
  br i1 %cmp24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %land.lhs.true.23
  %31 = load double, double* %hardness.addr, align 8
  %cmp26 = fcmp oeq double %31, 1.000000e+00
  br i1 %cmp26, label %if.then.27, label %if.else.30

if.then.27:                                       ; preds = %land.lhs.true.25
  %32 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %mask28 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %32, i32 0, i32 1
  %33 = load %struct._TempBuf*, %struct._TempBuf** %mask28, align 8
  %call29 = call %struct._TempBuf* @temp_buf_copy(%struct._TempBuf* %33, %struct._TempBuf* null)
  store %struct._TempBuf* %call29, %struct._TempBuf** %mask, align 8
  br label %if.end.33

if.else.30:                                       ; preds = %land.lhs.true.25, %land.lhs.true.23, %land.lhs.true.21, %if.then.19
  %34 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %35 = bitcast %struct._GimpBrush* %34 to %struct._GTypeInstance*
  %g_class31 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %35, i32 0, i32 0
  %36 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class31, align 8
  %37 = bitcast %struct._GTypeClass* %36 to %struct._GimpBrushClass*
  %transform_mask = getelementptr inbounds %struct._GimpBrushClass, %struct._GimpBrushClass* %37, i32 0, i32 6
  %38 = load %struct._TempBuf* (%struct._GimpBrush*, double, double, double, double)*, %struct._TempBuf* (%struct._GimpBrush*, double, double, double, double)** %transform_mask, align 8
  %39 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %40 = load double, double* %scale.addr, align 8
  %41 = load double, double* %aspect_ratio.addr, align 8
  %42 = load double, double* %angle.addr, align 8
  %43 = load double, double* %hardness.addr, align 8
  %call32 = call %struct._TempBuf* %38(%struct._GimpBrush* %39, double %40, double %41, double %42, double %43)
  store %struct._TempBuf* %call32, %struct._TempBuf** %mask, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.30, %if.then.27
  %44 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %mask_cache34 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %44, i32 0, i32 7
  %45 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %mask_cache34, align 8
  %46 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %47 = bitcast %struct._TempBuf* %46 to i8*
  %48 = load i32, i32* %width, align 4
  %49 = load i32, i32* %height, align 4
  %50 = load double, double* %scale.addr, align 8
  %51 = load double, double* %aspect_ratio.addr, align 8
  %52 = load double, double* %angle.addr, align 8
  %53 = load double, double* %hardness.addr, align 8
  call void @gimp_brush_cache_add(%struct._GimpBrushCache* %45, i8* %47, i32 %48, i32 %49, double %50, double %51, double %52, double %53)
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.33, %do.end.16
  %54 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  store %struct._TempBuf* %54, %struct._TempBuf** %retval
  br label %return

return:                                           ; preds = %if.end.35, %if.else.14, %if.else.9
  %55 = load %struct._TempBuf*, %struct._TempBuf** %retval
  ret %struct._TempBuf* %55
}

declare i8* @gimp_brush_cache_get(%struct._GimpBrushCache*, i32, i32, double, double, double, double) #1

declare %struct._TempBuf* @temp_buf_copy(%struct._TempBuf*, %struct._TempBuf*) #1

declare void @gimp_brush_cache_add(%struct._GimpBrushCache*, i8*, i32, i32, double, double, double, double) #1

; Function Attrs: nounwind uwtable
define %struct._TempBuf* @gimp_brush_transform_pixmap(%struct._GimpBrush* %brush, double %scale, double %aspect_ratio, double %angle, double %hardness) #3 {
entry:
  %retval = alloca %struct._TempBuf*, align 8
  %brush.addr = alloca %struct._GimpBrush*, align 8
  %scale.addr = alloca double, align 8
  %aspect_ratio.addr = alloca double, align 8
  %angle.addr = alloca double, align 8
  %hardness.addr = alloca double, align 8
  %pixmap = alloca %struct._TempBuf*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpBrush* %brush, %struct._GimpBrush** %brush.addr, align 8
  store double %scale, double* %scale.addr, align 8
  store double %aspect_ratio, double* %aspect_ratio.addr, align 8
  store double %angle, double* %angle.addr, align 8
  store double %hardness, double* %hardness.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %1 = bitcast %struct._GimpBrush* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_brush_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_brush_transform_pixmap, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %pixmap12 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %13, i32 0, i32 2
  %14 = load %struct._TempBuf*, %struct._TempBuf** %pixmap12, align 8
  %cmp13 = icmp ne %struct._TempBuf* %14, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_brush_transform_pixmap, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %15 = load double, double* %scale.addr, align 8
  %cmp19 = fcmp ogt double %15, 0.000000e+00
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.18
  br label %if.end.22

if.else.21:                                       ; preds = %do.body.18
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_brush_transform_pixmap, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %16 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %17 = load double, double* %scale.addr, align 8
  %18 = load double, double* %aspect_ratio.addr, align 8
  %19 = load double, double* %angle.addr, align 8
  call void @gimp_brush_transform_size(%struct._GimpBrush* %16, double %17, double %18, double %19, i32* %width, i32* %height)
  %20 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %pixmap_cache = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %20, i32 0, i32 8
  %21 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %pixmap_cache, align 8
  %22 = load i32, i32* %width, align 4
  %23 = load i32, i32* %height, align 4
  %24 = load double, double* %scale.addr, align 8
  %25 = load double, double* %aspect_ratio.addr, align 8
  %26 = load double, double* %angle.addr, align 8
  %27 = load double, double* %hardness.addr, align 8
  %call24 = call i8* @gimp_brush_cache_get(%struct._GimpBrushCache* %21, i32 %22, i32 %23, double %24, double %25, double %26, double %27)
  %28 = bitcast i8* %call24 to %struct._TempBuf*
  store %struct._TempBuf* %28, %struct._TempBuf** %pixmap, align 8
  %29 = load %struct._TempBuf*, %struct._TempBuf** %pixmap, align 8
  %tobool25 = icmp ne %struct._TempBuf* %29, null
  br i1 %tobool25, label %if.end.42, label %if.then.26

if.then.26:                                       ; preds = %do.end.23
  %30 = load double, double* %scale.addr, align 8
  %cmp27 = fcmp oeq double %30, 1.000000e+00
  br i1 %cmp27, label %land.lhs.true.28, label %if.else.37

land.lhs.true.28:                                 ; preds = %if.then.26
  %31 = load double, double* %aspect_ratio.addr, align 8
  %cmp29 = fcmp oeq double %31, 0.000000e+00
  br i1 %cmp29, label %land.lhs.true.30, label %if.else.37

land.lhs.true.30:                                 ; preds = %land.lhs.true.28
  %32 = load double, double* %angle.addr, align 8
  %cmp31 = fcmp oeq double %32, 0.000000e+00
  br i1 %cmp31, label %land.lhs.true.32, label %if.else.37

land.lhs.true.32:                                 ; preds = %land.lhs.true.30
  %33 = load double, double* %hardness.addr, align 8
  %cmp33 = fcmp oeq double %33, 1.000000e+00
  br i1 %cmp33, label %if.then.34, label %if.else.37

if.then.34:                                       ; preds = %land.lhs.true.32
  %34 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %pixmap35 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %34, i32 0, i32 2
  %35 = load %struct._TempBuf*, %struct._TempBuf** %pixmap35, align 8
  %call36 = call %struct._TempBuf* @temp_buf_copy(%struct._TempBuf* %35, %struct._TempBuf* null)
  store %struct._TempBuf* %call36, %struct._TempBuf** %pixmap, align 8
  br label %if.end.40

if.else.37:                                       ; preds = %land.lhs.true.32, %land.lhs.true.30, %land.lhs.true.28, %if.then.26
  %36 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %37 = bitcast %struct._GimpBrush* %36 to %struct._GTypeInstance*
  %g_class38 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %37, i32 0, i32 0
  %38 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class38, align 8
  %39 = bitcast %struct._GTypeClass* %38 to %struct._GimpBrushClass*
  %transform_pixmap = getelementptr inbounds %struct._GimpBrushClass, %struct._GimpBrushClass* %39, i32 0, i32 7
  %40 = load %struct._TempBuf* (%struct._GimpBrush*, double, double, double, double)*, %struct._TempBuf* (%struct._GimpBrush*, double, double, double, double)** %transform_pixmap, align 8
  %41 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %42 = load double, double* %scale.addr, align 8
  %43 = load double, double* %aspect_ratio.addr, align 8
  %44 = load double, double* %angle.addr, align 8
  %45 = load double, double* %hardness.addr, align 8
  %call39 = call %struct._TempBuf* %40(%struct._GimpBrush* %41, double %42, double %43, double %44, double %45)
  store %struct._TempBuf* %call39, %struct._TempBuf** %pixmap, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.37, %if.then.34
  %46 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %pixmap_cache41 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %46, i32 0, i32 8
  %47 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %pixmap_cache41, align 8
  %48 = load %struct._TempBuf*, %struct._TempBuf** %pixmap, align 8
  %49 = bitcast %struct._TempBuf* %48 to i8*
  %50 = load i32, i32* %width, align 4
  %51 = load i32, i32* %height, align 4
  %52 = load double, double* %scale.addr, align 8
  %53 = load double, double* %aspect_ratio.addr, align 8
  %54 = load double, double* %angle.addr, align 8
  %55 = load double, double* %hardness.addr, align 8
  call void @gimp_brush_cache_add(%struct._GimpBrushCache* %47, i8* %49, i32 %50, i32 %51, double %52, double %53, double %54, double %55)
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.40, %do.end.23
  %56 = load %struct._TempBuf*, %struct._TempBuf** %pixmap, align 8
  store %struct._TempBuf* %56, %struct._TempBuf** %retval
  br label %return

return:                                           ; preds = %if.end.42, %if.else.21, %if.else.15, %if.else.9
  %57 = load %struct._TempBuf*, %struct._TempBuf** %retval
  ret %struct._TempBuf* %57
}

; Function Attrs: nounwind uwtable
define %struct.cairo_path* @gimp_brush_transform_boundary(%struct._GimpBrush* %brush, double %scale, double %aspect_ratio, double %angle, double %hardness, i32* %width, i32* %height) #3 {
entry:
  %retval = alloca %struct.cairo_path*, align 8
  %brush.addr = alloca %struct._GimpBrush*, align 8
  %scale.addr = alloca double, align 8
  %aspect_ratio.addr = alloca double, align 8
  %angle.addr = alloca double, align 8
  %hardness.addr = alloca double, align 8
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %boundary = alloca %struct.cairo_path*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpBrush* %brush, %struct._GimpBrush** %brush.addr, align 8
  store double %scale, double* %scale.addr, align 8
  store double %aspect_ratio, double* %aspect_ratio.addr, align 8
  store double %angle, double* %angle.addr, align 8
  store double %hardness, double* %hardness.addr, align 8
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %1 = bitcast %struct._GimpBrush* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_brush_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_brush_transform_boundary, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0))
  store %struct.cairo_path* null, %struct.cairo_path** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load double, double* %scale.addr, align 8
  %cmp12 = fcmp ogt double %13, 0.000000e+00
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_brush_transform_boundary, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0))
  store %struct.cairo_path* null, %struct.cairo_path** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i32*, i32** %width.addr, align 8
  %cmp18 = icmp ne i32* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_brush_transform_boundary, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0))
  store %struct.cairo_path* null, %struct.cairo_path** %retval
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %15 = load i32*, i32** %height.addr, align 8
  %cmp24 = icmp ne i32* %15, null
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.23
  br label %if.end.27

if.else.26:                                       ; preds = %do.body.23
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_brush_transform_boundary, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0))
  store %struct.cairo_path* null, %struct.cairo_path** %retval
  br label %return

if.end.27:                                        ; preds = %if.then.25
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  %16 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %17 = load double, double* %scale.addr, align 8
  %18 = load double, double* %aspect_ratio.addr, align 8
  %19 = load double, double* %angle.addr, align 8
  %20 = load i32*, i32** %width.addr, align 8
  %21 = load i32*, i32** %height.addr, align 8
  call void @gimp_brush_transform_size(%struct._GimpBrush* %16, double %17, double %18, double %19, i32* %20, i32* %21)
  %22 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %boundary_cache = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %22, i32 0, i32 9
  %23 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %boundary_cache, align 8
  %24 = load i32*, i32** %width.addr, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %height.addr, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load double, double* %scale.addr, align 8
  %29 = load double, double* %aspect_ratio.addr, align 8
  %30 = load double, double* %angle.addr, align 8
  %31 = load double, double* %hardness.addr, align 8
  %call29 = call i8* @gimp_brush_cache_get(%struct._GimpBrushCache* %23, i32 %25, i32 %27, double %28, double %29, double %30, double %31)
  %32 = bitcast i8* %call29 to %struct.cairo_path*
  store %struct.cairo_path* %32, %struct.cairo_path** %boundary, align 8
  %33 = load %struct.cairo_path*, %struct.cairo_path** %boundary, align 8
  %tobool30 = icmp ne %struct.cairo_path* %33, null
  br i1 %tobool30, label %if.end.38, label %if.then.31

if.then.31:                                       ; preds = %do.end.28
  %34 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %35 = bitcast %struct._GimpBrush* %34 to %struct._GTypeInstance*
  %g_class32 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %35, i32 0, i32 0
  %36 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class32, align 8
  %37 = bitcast %struct._GTypeClass* %36 to %struct._GimpBrushClass*
  %transform_boundary = getelementptr inbounds %struct._GimpBrushClass, %struct._GimpBrushClass* %37, i32 0, i32 8
  %38 = load %struct.cairo_path* (%struct._GimpBrush*, double, double, double, double, i32*, i32*)*, %struct.cairo_path* (%struct._GimpBrush*, double, double, double, double, i32*, i32*)** %transform_boundary, align 8
  %39 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %40 = load double, double* %scale.addr, align 8
  %41 = load double, double* %aspect_ratio.addr, align 8
  %42 = load double, double* %angle.addr, align 8
  %43 = load double, double* %hardness.addr, align 8
  %44 = load i32*, i32** %width.addr, align 8
  %45 = load i32*, i32** %height.addr, align 8
  %call33 = call %struct.cairo_path* %38(%struct._GimpBrush* %39, double %40, double %41, double %42, double %43, i32* %44, i32* %45)
  store %struct.cairo_path* %call33, %struct.cairo_path** %boundary, align 8
  %46 = load %struct.cairo_path*, %struct.cairo_path** %boundary, align 8
  %tobool34 = icmp ne %struct.cairo_path* %46, null
  br i1 %tobool34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.then.31
  %47 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %boundary_cache36 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %47, i32 0, i32 9
  %48 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %boundary_cache36, align 8
  %49 = load %struct.cairo_path*, %struct.cairo_path** %boundary, align 8
  %50 = bitcast %struct.cairo_path* %49 to i8*
  %51 = load i32*, i32** %width.addr, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %height.addr, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load double, double* %scale.addr, align 8
  %56 = load double, double* %aspect_ratio.addr, align 8
  %57 = load double, double* %angle.addr, align 8
  %58 = load double, double* %hardness.addr, align 8
  call void @gimp_brush_cache_add(%struct._GimpBrushCache* %48, i8* %50, i32 %52, i32 %54, double %55, double %56, double %57, double %58)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.then.31
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %do.end.28
  %59 = load %struct.cairo_path*, %struct.cairo_path** %boundary, align 8
  store %struct.cairo_path* %59, %struct.cairo_path** %retval
  br label %return

return:                                           ; preds = %if.end.38, %if.else.26, %if.else.20, %if.else.14, %if.else.9
  %60 = load %struct.cairo_path*, %struct.cairo_path** %retval
  ret %struct.cairo_path* %60
}

; Function Attrs: nounwind uwtable
define %struct._TempBuf* @gimp_brush_get_mask(%struct._GimpBrush* %brush) #3 {
entry:
  %retval = alloca %struct._TempBuf*, align 8
  %brush.addr = alloca %struct._GimpBrush*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpBrush* %brush, %struct._GimpBrush** %brush.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %cmp = icmp ne %struct._GimpBrush* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_brush_get_mask, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %2 = bitcast %struct._GimpBrush* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_brush_get_type() #7
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else.3, label %if.then.2

if.then.2:                                        ; preds = %do.body.1
  store i32 0, i32* %__r, align 4
  br label %if.end.11

if.else.3:                                        ; preds = %do.body.1
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool4 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool4, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else.3
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp6 = icmp eq i64 %8, %9
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.10

if.else.8:                                        ; preds = %land.lhs.true, %if.else.3
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #8
  store i32 %call9, i32* %__r, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8, %if.then.7
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.2
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool12 = icmp ne i32 %13, 0
  br i1 %tobool12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.end.11
  br label %if.end.15

if.else.14:                                       ; preds = %if.end.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_brush_get_mask, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %mask = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %14, i32 0, i32 1
  %15 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  store %struct._TempBuf* %15, %struct._TempBuf** %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else
  %16 = load %struct._TempBuf*, %struct._TempBuf** %retval
  ret %struct._TempBuf* %16
}

; Function Attrs: nounwind uwtable
define %struct._TempBuf* @gimp_brush_get_pixmap(%struct._GimpBrush* %brush) #3 {
entry:
  %retval = alloca %struct._TempBuf*, align 8
  %brush.addr = alloca %struct._GimpBrush*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpBrush* %brush, %struct._GimpBrush** %brush.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %cmp = icmp ne %struct._GimpBrush* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_brush_get_pixmap, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %2 = bitcast %struct._GimpBrush* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_brush_get_type() #7
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else.3, label %if.then.2

if.then.2:                                        ; preds = %do.body.1
  store i32 0, i32* %__r, align 4
  br label %if.end.11

if.else.3:                                        ; preds = %do.body.1
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool4 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool4, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else.3
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp6 = icmp eq i64 %8, %9
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.10

if.else.8:                                        ; preds = %land.lhs.true, %if.else.3
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #8
  store i32 %call9, i32* %__r, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8, %if.then.7
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.2
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool12 = icmp ne i32 %13, 0
  br i1 %tobool12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.end.11
  br label %if.end.15

if.else.14:                                       ; preds = %if.end.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_brush_get_pixmap, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %pixmap = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %14, i32 0, i32 2
  %15 = load %struct._TempBuf*, %struct._TempBuf** %pixmap, align 8
  store %struct._TempBuf* %15, %struct._TempBuf** %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else
  %16 = load %struct._TempBuf*, %struct._TempBuf** %retval
  ret %struct._TempBuf* %16
}

; Function Attrs: nounwind uwtable
define i32 @gimp_brush_get_spacing(%struct._GimpBrush* %brush) #3 {
entry:
  %retval = alloca i32, align 4
  %brush.addr = alloca %struct._GimpBrush*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpBrush* %brush, %struct._GimpBrush** %brush.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %1 = bitcast %struct._GimpBrush* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_brush_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_brush_get_spacing, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %spacing = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %13, i32 0, i32 3
  %14 = load i32, i32* %spacing, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define void @gimp_brush_set_spacing(%struct._GimpBrush* %brush, i32 %spacing) #3 {
entry:
  %brush.addr = alloca %struct._GimpBrush*, align 8
  %spacing.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpBrush* %brush, %struct._GimpBrush** %brush.addr, align 8
  store i32 %spacing, i32* %spacing.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %1 = bitcast %struct._GimpBrush* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_brush_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_brush_set_spacing, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.16

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %spacing11 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %13, i32 0, i32 3
  %14 = load i32, i32* %spacing11, align 4
  %15 = load i32, i32* %spacing.addr, align 4
  %cmp12 = icmp ne i32 %14, %15
  br i1 %cmp12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %do.end
  %16 = load i32, i32* %spacing.addr, align 4
  %17 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %spacing14 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %17, i32 0, i32 3
  store i32 %16, i32* %spacing14, align 4
  %18 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %19 = bitcast %struct._GimpBrush* %18 to i8*
  %20 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @brush_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %19, i32 %20, i32 0)
  %21 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %22 = bitcast %struct._GimpBrush* %21 to %struct._GTypeInstance*
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call15 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

declare void @g_signal_emit(i8*, i32, i32, ...) #1

declare void @g_object_notify(%struct._GObject*, i8*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_class_init(%struct._GimpBrushClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpBrushClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  %viewable_class = alloca %struct._GimpViewableClass*, align 8
  %data_class = alloca %struct._GimpDataClass*, align 8
  store %struct._GimpBrushClass* %klass, %struct._GimpBrushClass** %klass.addr, align 8
  %0 = load %struct._GimpBrushClass*, %struct._GimpBrushClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpBrushClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpBrushClass*, %struct._GimpBrushClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpBrushClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GimpBrushClass*, %struct._GimpBrushClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpBrushClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_viewable_get_type() #7
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpViewableClass*
  store %struct._GimpViewableClass* %8, %struct._GimpViewableClass** %viewable_class, align 8
  %9 = load %struct._GimpBrushClass*, %struct._GimpBrushClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpBrushClass* %9 to %struct._GTypeClass*
  %call5 = call i64 @gimp_data_get_type() #7
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 %call5)
  %11 = bitcast %struct._GTypeClass* %call6 to %struct._GimpDataClass*
  store %struct._GimpDataClass* %11, %struct._GimpDataClass** %data_class, align 8
  %12 = load %struct._GimpBrushClass*, %struct._GimpBrushClass** %klass.addr, align 8
  %13 = bitcast %struct._GimpBrushClass* %12 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type, align 8
  %call7 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), i64 %14, i32 1, i32 376, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call7, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @brush_signals, i32 0, i64 0), align 4
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %15, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_brush_finalize, void (%struct._GObject*)** %finalize, align 8
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %16, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_brush_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %17 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %17, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_brush_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %18 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %18, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_brush_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %19 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %default_stock_id = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %19, i32 0, i32 1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i8** %default_stock_id, align 8
  %20 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %get_size = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %20, i32 0, i32 5
  store i32 (%struct._GimpViewable*, i32*, i32*)* @gimp_brush_get_size, i32 (%struct._GimpViewable*, i32*, i32*)** %get_size, align 8
  %21 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %get_new_preview = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %21, i32 0, i32 9
  store %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)* @gimp_brush_get_new_preview, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)** %get_new_preview, align 8
  %22 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %get_description = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %22, i32 0, i32 12
  store i8* (%struct._GimpViewable*, i8**)* @gimp_brush_get_description, i8* (%struct._GimpViewable*, i8**)** %get_description, align 8
  %23 = load %struct._GimpDataClass*, %struct._GimpDataClass** %data_class, align 8
  %dirty = getelementptr inbounds %struct._GimpDataClass, %struct._GimpDataClass* %23, i32 0, i32 1
  store void (%struct._GimpData*)* @gimp_brush_dirty, void (%struct._GimpData*)** %dirty, align 8
  %24 = load %struct._GimpDataClass*, %struct._GimpDataClass** %data_class, align 8
  %get_extension = getelementptr inbounds %struct._GimpDataClass, %struct._GimpDataClass* %24, i32 0, i32 3
  store i8* (%struct._GimpData*)* @gimp_brush_get_extension, i8* (%struct._GimpData*)** %get_extension, align 8
  %25 = load %struct._GimpBrushClass*, %struct._GimpBrushClass** %klass.addr, align 8
  %begin_use = getelementptr inbounds %struct._GimpBrushClass, %struct._GimpBrushClass* %25, i32 0, i32 1
  store void (%struct._GimpBrush*)* @gimp_brush_real_begin_use, void (%struct._GimpBrush*)** %begin_use, align 8
  %26 = load %struct._GimpBrushClass*, %struct._GimpBrushClass** %klass.addr, align 8
  %end_use = getelementptr inbounds %struct._GimpBrushClass, %struct._GimpBrushClass* %26, i32 0, i32 2
  store void (%struct._GimpBrush*)* @gimp_brush_real_end_use, void (%struct._GimpBrush*)** %end_use, align 8
  %27 = load %struct._GimpBrushClass*, %struct._GimpBrushClass** %klass.addr, align 8
  %select_brush = getelementptr inbounds %struct._GimpBrushClass, %struct._GimpBrushClass* %27, i32 0, i32 3
  store %struct._GimpBrush* (%struct._GimpBrush*, %struct._GimpCoords*, %struct._GimpCoords*)* @gimp_brush_real_select_brush, %struct._GimpBrush* (%struct._GimpBrush*, %struct._GimpCoords*, %struct._GimpCoords*)** %select_brush, align 8
  %28 = load %struct._GimpBrushClass*, %struct._GimpBrushClass** %klass.addr, align 8
  %want_null_motion = getelementptr inbounds %struct._GimpBrushClass, %struct._GimpBrushClass* %28, i32 0, i32 4
  store i32 (%struct._GimpBrush*, %struct._GimpCoords*, %struct._GimpCoords*)* @gimp_brush_real_want_null_motion, i32 (%struct._GimpBrush*, %struct._GimpCoords*, %struct._GimpCoords*)** %want_null_motion, align 8
  %29 = load %struct._GimpBrushClass*, %struct._GimpBrushClass** %klass.addr, align 8
  %transform_size = getelementptr inbounds %struct._GimpBrushClass, %struct._GimpBrushClass* %29, i32 0, i32 5
  store void (%struct._GimpBrush*, double, double, double, i32*, i32*)* @gimp_brush_real_transform_size, void (%struct._GimpBrush*, double, double, double, i32*, i32*)** %transform_size, align 8
  %30 = load %struct._GimpBrushClass*, %struct._GimpBrushClass** %klass.addr, align 8
  %transform_mask = getelementptr inbounds %struct._GimpBrushClass, %struct._GimpBrushClass* %30, i32 0, i32 6
  store %struct._TempBuf* (%struct._GimpBrush*, double, double, double, double)* @gimp_brush_real_transform_mask, %struct._TempBuf* (%struct._GimpBrush*, double, double, double, double)** %transform_mask, align 8
  %31 = load %struct._GimpBrushClass*, %struct._GimpBrushClass** %klass.addr, align 8
  %transform_pixmap = getelementptr inbounds %struct._GimpBrushClass, %struct._GimpBrushClass* %31, i32 0, i32 7
  store %struct._TempBuf* (%struct._GimpBrush*, double, double, double, double)* @gimp_brush_real_transform_pixmap, %struct._TempBuf* (%struct._GimpBrush*, double, double, double, double)** %transform_pixmap, align 8
  %32 = load %struct._GimpBrushClass*, %struct._GimpBrushClass** %klass.addr, align 8
  %transform_boundary = getelementptr inbounds %struct._GimpBrushClass, %struct._GimpBrushClass* %32, i32 0, i32 8
  store %struct.cairo_path* (%struct._GimpBrush*, double, double, double, double, i32*, i32*)* @gimp_brush_real_transform_boundary, %struct.cairo_path* (%struct._GimpBrush*, double, double, double, double, i32*, i32*)** %transform_boundary, align 8
  %33 = load %struct._GimpBrushClass*, %struct._GimpBrushClass** %klass.addr, align 8
  %spacing_changed = getelementptr inbounds %struct._GimpBrushClass, %struct._GimpBrushClass* %33, i32 0, i32 9
  store void (%struct._GimpBrush*)* null, void (%struct._GimpBrush*)** %spacing_changed, align 8
  %34 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0)) #6
  %call9 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* %call8, double 1.000000e+00, double 5.000000e+03, double 2.000000e+01, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %34, i32 1, %struct._GParamSpec* %call9)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %brush = alloca %struct._GimpBrush*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrush*
  store %struct._GimpBrush* %2, %struct._GimpBrush** %brush, align 8
  %3 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %3, i32 0, i32 1
  %4 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %tobool = icmp ne %struct._TempBuf* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask2 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %5, i32 0, i32 1
  %6 = load %struct._TempBuf*, %struct._TempBuf** %mask2, align 8
  call void @temp_buf_free(%struct._TempBuf* %6)
  %7 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask3 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %7, i32 0, i32 1
  store %struct._TempBuf* null, %struct._TempBuf** %mask3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %pixmap = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %8, i32 0, i32 2
  %9 = load %struct._TempBuf*, %struct._TempBuf** %pixmap, align 8
  %tobool4 = icmp ne %struct._TempBuf* %9, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %10 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %pixmap6 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %10, i32 0, i32 2
  %11 = load %struct._TempBuf*, %struct._TempBuf** %pixmap6, align 8
  call void @temp_buf_free(%struct._TempBuf* %11)
  %12 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %pixmap7 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %12, i32 0, i32 2
  store %struct._TempBuf* null, %struct._TempBuf** %pixmap7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %13 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask_cache = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %13, i32 0, i32 7
  %14 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %mask_cache, align 8
  %tobool9 = icmp ne %struct._GimpBrushCache* %14, null
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.8
  %15 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask_cache11 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %15, i32 0, i32 7
  %16 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %mask_cache11, align 8
  %17 = bitcast %struct._GimpBrushCache* %16 to i8*
  call void @g_object_unref(i8* %17)
  %18 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask_cache12 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %18, i32 0, i32 7
  store %struct._GimpBrushCache* null, %struct._GimpBrushCache** %mask_cache12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end.8
  %19 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %pixmap_cache = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %19, i32 0, i32 8
  %20 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %pixmap_cache, align 8
  %tobool14 = icmp ne %struct._GimpBrushCache* %20, null
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.13
  %21 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %pixmap_cache16 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %21, i32 0, i32 8
  %22 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %pixmap_cache16, align 8
  %23 = bitcast %struct._GimpBrushCache* %22 to i8*
  call void @g_object_unref(i8* %23)
  %24 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %pixmap_cache17 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %24, i32 0, i32 8
  store %struct._GimpBrushCache* null, %struct._GimpBrushCache** %pixmap_cache17, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end.13
  %25 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %boundary_cache = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %25, i32 0, i32 9
  %26 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %boundary_cache, align 8
  %tobool19 = icmp ne %struct._GimpBrushCache* %26, null
  br i1 %tobool19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end.18
  %27 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %boundary_cache21 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %27, i32 0, i32 9
  %28 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %boundary_cache21, align 8
  %29 = bitcast %struct._GimpBrushCache* %28 to i8*
  call void @g_object_unref(i8* %29)
  %30 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %boundary_cache22 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %30, i32 0, i32 9
  store %struct._GimpBrushCache* null, %struct._GimpBrushCache** %boundary_cache22, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.end.18
  %31 = load i8*, i8** @gimp_brush_parent_class, align 8
  %32 = bitcast i8* %31 to %struct._GTypeClass*
  %call24 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %32, i64 80)
  %33 = bitcast %struct._GTypeClass* %call24 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %33, i32 0, i32 6
  %34 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %35 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %34(%struct._GObject* %35)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %brush = alloca %struct._GimpBrush*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrush*
  store %struct._GimpBrush* %2, %struct._GimpBrush** %brush, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %spacing = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %5, i32 0, i32 3
  %6 = load i32, i32* %spacing, align 4
  %conv = sitofp i32 %6 to double
  call void @g_value_set_double(%struct._GValue* %4, double %conv)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %7 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %7, %struct._GObject** %_glib__object, align 8
  %8 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %8, %struct._GParamSpec** %_glib__pspec, align 8
  %9 = load i32, i32* %property_id.addr, align 4
  store i32 %9, i32* %_glib__property_id, align 4
  %10 = load i32, i32* %_glib__property_id, align 4
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %11, i32 0, i32 1
  %12 = load i8*, i8** %name, align 8
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %14 = bitcast %struct._GParamSpec* %13 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %15, i32 0, i32 0
  %16 = load i64, i64* %g_type, align 8
  %call2 = call i8* @g_type_name(i64 %16)
  %17 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %18 = bitcast %struct._GObject* %17 to %struct._GTypeInstance*
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type4 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type4, align 8
  %call5 = call i8* @g_type_name(i64 %20)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i32 246, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 %10, i8* %12, i8* %call2, i8* %call5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %brush = alloca %struct._GimpBrush*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrush*
  store %struct._GimpBrush* %2, %struct._GimpBrush** %brush, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %5 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call double @g_value_get_double(%struct._GValue* %5)
  %conv = fptosi double %call2 to i32
  call void @gimp_brush_set_spacing(%struct._GimpBrush* %4, i32 %conv)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %6 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %6, %struct._GObject** %_glib__object, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %7, %struct._GParamSpec** %_glib__pspec, align 8
  %8 = load i32, i32* %property_id.addr, align 4
  store i32 %8, i32* %_glib__property_id, align 4
  %9 = load i32, i32* %_glib__property_id, align 4
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %10, i32 0, i32 1
  %11 = load i8*, i8** %name, align 8
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %13 = bitcast %struct._GParamSpec* %12 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %13, i32 0, i32 0
  %14 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %14, i32 0, i32 0
  %15 = load i64, i64* %g_type, align 8
  %call3 = call i8* @g_type_name(i64 %15)
  %16 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %17 = bitcast %struct._GObject* %16 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %18, i32 0, i32 0
  %19 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %19)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i32 226, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 %9, i8* %11, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_brush_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %brush = alloca %struct._GimpBrush*, align 8
  %memsize = alloca i64, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrush*
  store %struct._GimpBrush* %2, %struct._GimpBrush** %brush, align 8
  store i64 0, i64* %memsize, align 8
  %3 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %3, i32 0, i32 1
  %4 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %call2 = call i64 @temp_buf_get_memsize(%struct._TempBuf* %4)
  %5 = load i64, i64* %memsize, align 8
  %add = add i64 %5, %call2
  store i64 %add, i64* %memsize, align 8
  %6 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %pixmap = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %6, i32 0, i32 2
  %7 = load %struct._TempBuf*, %struct._TempBuf** %pixmap, align 8
  %call3 = call i64 @temp_buf_get_memsize(%struct._TempBuf* %7)
  %8 = load i64, i64* %memsize, align 8
  %add4 = add i64 %8, %call3
  store i64 %add4, i64* %memsize, align 8
  %9 = load i64, i64* %memsize, align 8
  %10 = load i8*, i8** @gimp_brush_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call5 = call i64 @gimp_object_get_type() #7
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
define internal i32 @gimp_brush_get_size(%struct._GimpViewable* %viewable, i32* %width, i32* %height) #3 {
entry:
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %brush = alloca %struct._GimpBrush*, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrush*
  store %struct._GimpBrush* %2, %struct._GimpBrush** %brush, align 8
  %3 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %3, i32 0, i32 1
  %4 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %width2 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %4, i32 0, i32 1
  %5 = load i32, i32* %width2, align 4
  %6 = load i32*, i32** %width.addr, align 8
  store i32 %5, i32* %6, align 4
  %7 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask3 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %7, i32 0, i32 1
  %8 = load %struct._TempBuf*, %struct._TempBuf** %mask3, align 8
  %height4 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %8, i32 0, i32 2
  %9 = load i32, i32* %height4, align 4
  %10 = load i32*, i32** %height.addr, align 8
  store i32 %9, i32* %10, align 4
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal %struct._TempBuf* @gimp_brush_get_new_preview(%struct._GimpViewable* %viewable, %struct._GimpContext* %context, i32 %width, i32 %height) #3 {
entry:
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %brush = alloca %struct._GimpBrush*, align 8
  %mask_buf = alloca %struct._TempBuf*, align 8
  %free_mask = alloca i32, align 4
  %pixmap_buf = alloca %struct._TempBuf*, align 8
  %return_buf = alloca %struct._TempBuf*, align 8
  %mask_width = alloca i32, align 4
  %mask_height = alloca i32, align 4
  %transp = alloca [4 x i8], align 1
  %mask = alloca i8*, align 8
  %buf = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %scaled = alloca i32, align 4
  %ratio_x = alloca double, align 8
  %ratio_y = alloca double, align 8
  %scale = alloca double, align 8
  %pixmap32 = alloca i8*, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrush*
  store %struct._GimpBrush* %2, %struct._GimpBrush** %brush, align 8
  store %struct._TempBuf* null, %struct._TempBuf** %mask_buf, align 8
  store i32 0, i32* %free_mask, align 4
  store %struct._TempBuf* null, %struct._TempBuf** %pixmap_buf, align 8
  store %struct._TempBuf* null, %struct._TempBuf** %return_buf, align 8
  %3 = bitcast [4 x i8]* %transp to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 4, i32 1, i1 false)
  store i32 0, i32* %scaled, align 4
  %4 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask2 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %4, i32 0, i32 1
  %5 = load %struct._TempBuf*, %struct._TempBuf** %mask2, align 8
  store %struct._TempBuf* %5, %struct._TempBuf** %mask_buf, align 8
  %6 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %pixmap = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %6, i32 0, i32 2
  %7 = load %struct._TempBuf*, %struct._TempBuf** %pixmap, align 8
  store %struct._TempBuf* %7, %struct._TempBuf** %pixmap_buf, align 8
  %8 = load %struct._TempBuf*, %struct._TempBuf** %mask_buf, align 8
  %width3 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %8, i32 0, i32 1
  %9 = load i32, i32* %width3, align 4
  store i32 %9, i32* %mask_width, align 4
  %10 = load %struct._TempBuf*, %struct._TempBuf** %mask_buf, align 8
  %height4 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %10, i32 0, i32 2
  %11 = load i32, i32* %height4, align 4
  store i32 %11, i32* %mask_height, align 4
  %12 = load i32, i32* %mask_width, align 4
  %13 = load i32, i32* %width.addr, align 4
  %cmp = icmp sgt i32 %12, %13
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %14 = load i32, i32* %mask_height, align 4
  %15 = load i32, i32* %height.addr, align 4
  %cmp5 = icmp sgt i32 %14, %15
  br i1 %cmp5, label %if.then, label %if.end.25

if.then:                                          ; preds = %lor.lhs.false, %entry
  %16 = load i32, i32* %width.addr, align 4
  %conv = sitofp i32 %16 to double
  %17 = load i32, i32* %mask_width, align 4
  %conv6 = sitofp i32 %17 to double
  %div = fdiv double %conv, %conv6
  store double %div, double* %ratio_x, align 8
  %18 = load i32, i32* %height.addr, align 4
  %conv7 = sitofp i32 %18 to double
  %19 = load i32, i32* %mask_height, align 4
  %conv8 = sitofp i32 %19 to double
  %div9 = fdiv double %conv7, %conv8
  store double %div9, double* %ratio_y, align 8
  %20 = load double, double* %ratio_x, align 8
  %21 = load double, double* %ratio_y, align 8
  %cmp10 = fcmp olt double %20, %21
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %22 = load double, double* %ratio_x, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %23 = load double, double* %ratio_y, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %22, %cond.true ], [ %23, %cond.false ]
  store double %cond, double* %scale, align 8
  %24 = load double, double* %scale, align 8
  %cmp12 = fcmp une double %24, 1.000000e+00
  br i1 %cmp12, label %if.then.14, label %if.end.24

if.then.14:                                       ; preds = %cond.end
  %25 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  call void @gimp_brush_begin_use(%struct._GimpBrush* %25)
  %26 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %27 = load double, double* %scale, align 8
  %call15 = call %struct._TempBuf* @gimp_brush_transform_mask(%struct._GimpBrush* %26, double %27, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  store %struct._TempBuf* %call15, %struct._TempBuf** %mask_buf, align 8
  %28 = load %struct._TempBuf*, %struct._TempBuf** %mask_buf, align 8
  %tobool = icmp ne %struct._TempBuf* %28, null
  br i1 %tobool, label %if.end, label %if.then.16

if.then.16:                                       ; preds = %if.then.14
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %transp, i32 0, i32 0
  %call17 = call %struct._TempBuf* @temp_buf_new(i32 1, i32 1, i32 1, i32 0, i32 0, i8* %arraydecay)
  store %struct._TempBuf* %call17, %struct._TempBuf** %mask_buf, align 8
  store i32 1, i32* %free_mask, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.16, %if.then.14
  %29 = load %struct._TempBuf*, %struct._TempBuf** %pixmap_buf, align 8
  %tobool18 = icmp ne %struct._TempBuf* %29, null
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end
  %30 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %31 = load double, double* %scale, align 8
  %call20 = call %struct._TempBuf* @gimp_brush_transform_pixmap(%struct._GimpBrush* %30, double %31, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  store %struct._TempBuf* %call20, %struct._TempBuf** %pixmap_buf, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end
  %32 = load %struct._TempBuf*, %struct._TempBuf** %mask_buf, align 8
  %width22 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %32, i32 0, i32 1
  %33 = load i32, i32* %width22, align 4
  store i32 %33, i32* %mask_width, align 4
  %34 = load %struct._TempBuf*, %struct._TempBuf** %mask_buf, align 8
  %height23 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %34, i32 0, i32 2
  %35 = load i32, i32* %height23, align 4
  store i32 %35, i32* %mask_height, align 4
  store i32 1, i32* %scaled, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.21, %cond.end
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %lor.lhs.false
  %36 = load i32, i32* %mask_width, align 4
  %37 = load i32, i32* %mask_height, align 4
  %arraydecay26 = getelementptr inbounds [4 x i8], [4 x i8]* %transp, i32 0, i32 0
  %call27 = call %struct._TempBuf* @temp_buf_new(i32 %36, i32 %37, i32 4, i32 0, i32 0, i8* %arraydecay26)
  store %struct._TempBuf* %call27, %struct._TempBuf** %return_buf, align 8
  %38 = load %struct._TempBuf*, %struct._TempBuf** %mask_buf, align 8
  %call28 = call i8* @temp_buf_get_data(%struct._TempBuf* %38)
  store i8* %call28, i8** %mask, align 8
  %39 = load %struct._TempBuf*, %struct._TempBuf** %return_buf, align 8
  %call29 = call i8* @temp_buf_get_data(%struct._TempBuf* %39)
  store i8* %call29, i8** %buf, align 8
  %40 = load %struct._TempBuf*, %struct._TempBuf** %pixmap_buf, align 8
  %tobool30 = icmp ne %struct._TempBuf* %40, null
  br i1 %tobool30, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %if.end.25
  %41 = load %struct._TempBuf*, %struct._TempBuf** %pixmap_buf, align 8
  %call33 = call i8* @temp_buf_get_data(%struct._TempBuf* %41)
  store i8* %call33, i8** %pixmap32, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.47, %if.then.31
  %42 = load i32, i32* %y, align 4
  %43 = load i32, i32* %mask_height, align 4
  %cmp34 = icmp slt i32 %42, %43
  br i1 %cmp34, label %for.body, label %for.end.49

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc, %for.body
  %44 = load i32, i32* %x, align 4
  %45 = load i32, i32* %mask_width, align 4
  %cmp37 = icmp slt i32 %44, %45
  br i1 %cmp37, label %for.body.39, label %for.end

for.body.39:                                      ; preds = %for.cond.36
  %46 = load i8*, i8** %pixmap32, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr, i8** %pixmap32, align 8
  %47 = load i8, i8* %46, align 1
  %48 = load i8*, i8** %buf, align 8
  %incdec.ptr40 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr40, i8** %buf, align 8
  store i8 %47, i8* %48, align 1
  %49 = load i8*, i8** %pixmap32, align 8
  %incdec.ptr41 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr41, i8** %pixmap32, align 8
  %50 = load i8, i8* %49, align 1
  %51 = load i8*, i8** %buf, align 8
  %incdec.ptr42 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr42, i8** %buf, align 8
  store i8 %50, i8* %51, align 1
  %52 = load i8*, i8** %pixmap32, align 8
  %incdec.ptr43 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr43, i8** %pixmap32, align 8
  %53 = load i8, i8* %52, align 1
  %54 = load i8*, i8** %buf, align 8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr44, i8** %buf, align 8
  store i8 %53, i8* %54, align 1
  %55 = load i8*, i8** %mask, align 8
  %incdec.ptr45 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr45, i8** %mask, align 8
  %56 = load i8, i8* %55, align 1
  %57 = load i8*, i8** %buf, align 8
  %incdec.ptr46 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr46, i8** %buf, align 8
  store i8 %56, i8* %57, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.39
  %58 = load i32, i32* %x, align 4
  %inc = add nsw i32 %58, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.36

for.end:                                          ; preds = %for.cond.36
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.end
  %59 = load i32, i32* %y, align 4
  %inc48 = add nsw i32 %59, 1
  store i32 %inc48, i32* %y, align 4
  br label %for.cond

for.end.49:                                       ; preds = %for.cond
  br label %if.end.69

if.else:                                          ; preds = %if.end.25
  store i32 0, i32* %y, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.66, %if.else
  %60 = load i32, i32* %y, align 4
  %61 = load i32, i32* %mask_height, align 4
  %cmp51 = icmp slt i32 %60, %61
  br i1 %cmp51, label %for.body.53, label %for.end.68

for.body.53:                                      ; preds = %for.cond.50
  store i32 0, i32* %x, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.63, %for.body.53
  %62 = load i32, i32* %x, align 4
  %63 = load i32, i32* %mask_width, align 4
  %cmp55 = icmp slt i32 %62, %63
  br i1 %cmp55, label %for.body.57, label %for.end.65

for.body.57:                                      ; preds = %for.cond.54
  %64 = load i8*, i8** %buf, align 8
  %incdec.ptr58 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr58, i8** %buf, align 8
  store i8 0, i8* %64, align 1
  %65 = load i8*, i8** %buf, align 8
  %incdec.ptr59 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr59, i8** %buf, align 8
  store i8 0, i8* %65, align 1
  %66 = load i8*, i8** %buf, align 8
  %incdec.ptr60 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr60, i8** %buf, align 8
  store i8 0, i8* %66, align 1
  %67 = load i8*, i8** %mask, align 8
  %incdec.ptr61 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %incdec.ptr61, i8** %mask, align 8
  %68 = load i8, i8* %67, align 1
  %69 = load i8*, i8** %buf, align 8
  %incdec.ptr62 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr62, i8** %buf, align 8
  store i8 %68, i8* %69, align 1
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.body.57
  %70 = load i32, i32* %x, align 4
  %inc64 = add nsw i32 %70, 1
  store i32 %inc64, i32* %x, align 4
  br label %for.cond.54

for.end.65:                                       ; preds = %for.cond.54
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.end.65
  %71 = load i32, i32* %y, align 4
  %inc67 = add nsw i32 %71, 1
  store i32 %inc67, i32* %y, align 4
  br label %for.cond.50

for.end.68:                                       ; preds = %for.cond.50
  br label %if.end.69

if.end.69:                                        ; preds = %for.end.68, %for.end.49
  %72 = load i32, i32* %scaled, align 4
  %tobool70 = icmp ne i32 %72, 0
  br i1 %tobool70, label %if.then.71, label %if.end.75

if.then.71:                                       ; preds = %if.end.69
  %73 = load i32, i32* %free_mask, align 4
  %tobool72 = icmp ne i32 %73, 0
  br i1 %tobool72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.then.71
  %74 = load %struct._TempBuf*, %struct._TempBuf** %mask_buf, align 8
  call void @temp_buf_free(%struct._TempBuf* %74)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %if.then.71
  %75 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  call void @gimp_brush_end_use(%struct._GimpBrush* %75)
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.end.69
  %76 = load %struct._TempBuf*, %struct._TempBuf** %return_buf, align 8
  ret %struct._TempBuf* %76
}

; Function Attrs: nounwind uwtable
define internal i8* @gimp_brush_get_description(%struct._GimpViewable* %viewable, i8** %tooltip) #3 {
entry:
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %tooltip.addr = alloca i8**, align 8
  %brush = alloca %struct._GimpBrush*, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8** %tooltip, i8*** %tooltip.addr, align 8
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrush*
  store %struct._GimpBrush* %2, %struct._GimpBrush** %brush, align 8
  %3 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %4 = bitcast %struct._GimpBrush* %3 to i8*
  %call2 = call i8* @gimp_object_get_name(i8* %4)
  %5 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %5, i32 0, i32 1
  %6 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %6, i32 0, i32 1
  %7 = load i32, i32* %width, align 4
  %8 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask3 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %8, i32 0, i32 1
  %9 = load %struct._TempBuf*, %struct._TempBuf** %mask3, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %9, i32 0, i32 2
  %10 = load i32, i32* %height, align 4
  %call4 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), i8* %call2, i32 %7, i32 %10)
  ret i8* %call4
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_dirty(%struct._GimpData* %data) #3 {
entry:
  %data.addr = alloca %struct._GimpData*, align 8
  %brush = alloca %struct._GimpBrush*, align 8
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  %0 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %1 = bitcast %struct._GimpData* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrush*
  store %struct._GimpBrush* %2, %struct._GimpBrush** %brush, align 8
  %3 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask_cache = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %3, i32 0, i32 7
  %4 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %mask_cache, align 8
  %tobool = icmp ne %struct._GimpBrushCache* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask_cache2 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %5, i32 0, i32 7
  %6 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %mask_cache2, align 8
  call void @gimp_brush_cache_clear(%struct._GimpBrushCache* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %pixmap_cache = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %7, i32 0, i32 8
  %8 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %pixmap_cache, align 8
  %tobool3 = icmp ne %struct._GimpBrushCache* %8, null
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %9 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %pixmap_cache5 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %9, i32 0, i32 8
  %10 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %pixmap_cache5, align 8
  call void @gimp_brush_cache_clear(%struct._GimpBrushCache* %10)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %11 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %boundary_cache = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %11, i32 0, i32 9
  %12 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %boundary_cache, align 8
  %tobool7 = icmp ne %struct._GimpBrushCache* %12, null
  br i1 %tobool7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.6
  %13 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %boundary_cache9 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %13, i32 0, i32 9
  %14 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %boundary_cache9, align 8
  call void @gimp_brush_cache_clear(%struct._GimpBrushCache* %14)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.6
  %15 = load i8*, i8** @gimp_brush_parent_class, align 8
  %16 = bitcast i8* %15 to %struct._GTypeClass*
  %call11 = call i64 @gimp_data_get_type() #7
  %call12 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %16, i64 %call11)
  %17 = bitcast %struct._GTypeClass* %call12 to %struct._GimpDataClass*
  %dirty = getelementptr inbounds %struct._GimpDataClass, %struct._GimpDataClass* %17, i32 0, i32 1
  %18 = load void (%struct._GimpData*)*, void (%struct._GimpData*)** %dirty, align 8
  %19 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  call void %18(%struct._GimpData* %19)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @gimp_brush_get_extension(%struct._GimpData* %data) #3 {
entry:
  %data.addr = alloca %struct._GimpData*, align 8
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  ret i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_real_begin_use(%struct._GimpBrush* %brush) #3 {
entry:
  %brush.addr = alloca %struct._GimpBrush*, align 8
  store %struct._GimpBrush* %brush, %struct._GimpBrush** %brush.addr, align 8
  %call = call %struct._GimpBrushCache* @gimp_brush_cache_new(void (i8*)* bitcast (void (%struct._TempBuf*)* @temp_buf_free to void (i8*)*), i8 signext 77, i8 signext 109)
  %0 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %mask_cache = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %0, i32 0, i32 7
  store %struct._GimpBrushCache* %call, %struct._GimpBrushCache** %mask_cache, align 8
  %call1 = call %struct._GimpBrushCache* @gimp_brush_cache_new(void (i8*)* bitcast (void (%struct._TempBuf*)* @temp_buf_free to void (i8*)*), i8 signext 80, i8 signext 112)
  %1 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %pixmap_cache = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %1, i32 0, i32 8
  store %struct._GimpBrushCache* %call1, %struct._GimpBrushCache** %pixmap_cache, align 8
  %call2 = call %struct._GimpBrushCache* @gimp_brush_cache_new(void (i8*)* bitcast (void (%struct.cairo_path*)* @gimp_bezier_desc_free to void (i8*)*), i8 signext 66, i8 signext 98)
  %2 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %boundary_cache = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %2, i32 0, i32 9
  store %struct._GimpBrushCache* %call2, %struct._GimpBrushCache** %boundary_cache, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_real_end_use(%struct._GimpBrush* %brush) #3 {
entry:
  %brush.addr = alloca %struct._GimpBrush*, align 8
  store %struct._GimpBrush* %brush, %struct._GimpBrush** %brush.addr, align 8
  %0 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %mask_cache = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %0, i32 0, i32 7
  %1 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %mask_cache, align 8
  %2 = bitcast %struct._GimpBrushCache* %1 to i8*
  call void @g_object_unref(i8* %2)
  %3 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %mask_cache1 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %3, i32 0, i32 7
  store %struct._GimpBrushCache* null, %struct._GimpBrushCache** %mask_cache1, align 8
  %4 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %pixmap_cache = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %4, i32 0, i32 8
  %5 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %pixmap_cache, align 8
  %6 = bitcast %struct._GimpBrushCache* %5 to i8*
  call void @g_object_unref(i8* %6)
  %7 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %pixmap_cache2 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %7, i32 0, i32 8
  store %struct._GimpBrushCache* null, %struct._GimpBrushCache** %pixmap_cache2, align 8
  %8 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %boundary_cache = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %8, i32 0, i32 9
  %9 = load %struct._GimpBrushCache*, %struct._GimpBrushCache** %boundary_cache, align 8
  %10 = bitcast %struct._GimpBrushCache* %9 to i8*
  call void @g_object_unref(i8* %10)
  %11 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %boundary_cache3 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %11, i32 0, i32 9
  store %struct._GimpBrushCache* null, %struct._GimpBrushCache** %boundary_cache3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpBrush* @gimp_brush_real_select_brush(%struct._GimpBrush* %brush, %struct._GimpCoords* %last_coords, %struct._GimpCoords* %current_coords) #3 {
entry:
  %brush.addr = alloca %struct._GimpBrush*, align 8
  %last_coords.addr = alloca %struct._GimpCoords*, align 8
  %current_coords.addr = alloca %struct._GimpCoords*, align 8
  store %struct._GimpBrush* %brush, %struct._GimpBrush** %brush.addr, align 8
  store %struct._GimpCoords* %last_coords, %struct._GimpCoords** %last_coords.addr, align 8
  store %struct._GimpCoords* %current_coords, %struct._GimpCoords** %current_coords.addr, align 8
  %0 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  ret %struct._GimpBrush* %0
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_brush_real_want_null_motion(%struct._GimpBrush* %brush, %struct._GimpCoords* %last_coords, %struct._GimpCoords* %current_coords) #3 {
entry:
  %brush.addr = alloca %struct._GimpBrush*, align 8
  %last_coords.addr = alloca %struct._GimpCoords*, align 8
  %current_coords.addr = alloca %struct._GimpCoords*, align 8
  store %struct._GimpBrush* %brush, %struct._GimpBrush** %brush.addr, align 8
  store %struct._GimpCoords* %last_coords, %struct._GimpCoords** %last_coords.addr, align 8
  store %struct._GimpCoords* %current_coords, %struct._GimpCoords** %current_coords.addr, align 8
  ret i32 1
}

declare void @gimp_brush_real_transform_size(%struct._GimpBrush*, double, double, double, i32*, i32*) #1

declare %struct._TempBuf* @gimp_brush_real_transform_mask(%struct._GimpBrush*, double, double, double, double) #1

declare %struct._TempBuf* @gimp_brush_real_transform_pixmap(%struct._GimpBrush*, double, double, double, double) #1

declare %struct.cairo_path* @gimp_brush_real_transform_boundary(%struct._GimpBrush*, double, double, double, double, i32*, i32*) #1

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare void @temp_buf_free(%struct._TempBuf*) #1

declare void @g_object_unref(i8*) #1

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

declare double @g_value_get_double(%struct._GValue*) #1

declare i64 @temp_buf_get_memsize(%struct._TempBuf*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

declare %struct._TempBuf* @temp_buf_new(i32, i32, i32, i32, i32, i8*) #1

declare i8* @temp_buf_get_data(%struct._TempBuf*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i8* @gimp_object_get_name(i8*) #1

declare void @gimp_brush_cache_clear(%struct._GimpBrushCache*) #1

declare %struct._GimpBrushCache* @gimp_brush_cache_new(void (i8*)*, i8 signext, i8 signext) #1

declare void @gimp_bezier_desc_free(%struct.cairo_path*) #1

; Function Attrs: nounwind uwtable
define internal i8* @gimp_brush_get_checksum(%struct._GimpTagged* %tagged) #3 {
entry:
  %tagged.addr = alloca %struct._GimpTagged*, align 8
  %brush = alloca %struct._GimpBrush*, align 8
  %checksum_string = alloca i8*, align 8
  %checksum = alloca %struct._GChecksum*, align 8
  store %struct._GimpTagged* %tagged, %struct._GimpTagged** %tagged.addr, align 8
  %0 = load %struct._GimpTagged*, %struct._GimpTagged** %tagged.addr, align 8
  %1 = bitcast %struct._GimpTagged* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrush*
  store %struct._GimpBrush* %2, %struct._GimpBrush** %brush, align 8
  store i8* null, i8** %checksum_string, align 8
  %3 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %3, i32 0, i32 1
  %4 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %tobool = icmp ne %struct._TempBuf* %4, null
  br i1 %tobool, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %call2 = call %struct._GChecksum* @g_checksum_new(i32 0)
  store %struct._GChecksum* %call2, %struct._GChecksum** %checksum, align 8
  %5 = load %struct._GChecksum*, %struct._GChecksum** %checksum, align 8
  %6 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask3 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %6, i32 0, i32 1
  %7 = load %struct._TempBuf*, %struct._TempBuf** %mask3, align 8
  %call4 = call i8* @temp_buf_get_data(%struct._TempBuf* %7)
  %8 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask5 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %8, i32 0, i32 1
  %9 = load %struct._TempBuf*, %struct._TempBuf** %mask5, align 8
  %call6 = call i64 @temp_buf_get_data_size(%struct._TempBuf* %9)
  call void @g_checksum_update(%struct._GChecksum* %5, i8* %call4, i64 %call6)
  %10 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %pixmap = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %10, i32 0, i32 2
  %11 = load %struct._TempBuf*, %struct._TempBuf** %pixmap, align 8
  %tobool7 = icmp ne %struct._TempBuf* %11, null
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %12 = load %struct._GChecksum*, %struct._GChecksum** %checksum, align 8
  %13 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %pixmap9 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %13, i32 0, i32 2
  %14 = load %struct._TempBuf*, %struct._TempBuf** %pixmap9, align 8
  %call10 = call i8* @temp_buf_get_data(%struct._TempBuf* %14)
  %15 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %pixmap11 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %15, i32 0, i32 2
  %16 = load %struct._TempBuf*, %struct._TempBuf** %pixmap11, align 8
  %call12 = call i64 @temp_buf_get_data_size(%struct._TempBuf* %16)
  call void @g_checksum_update(%struct._GChecksum* %12, i8* %call10, i64 %call12)
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  %17 = load %struct._GChecksum*, %struct._GChecksum** %checksum, align 8
  %18 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %spacing = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %18, i32 0, i32 3
  %19 = bitcast i32* %spacing to i8*
  call void @g_checksum_update(%struct._GChecksum* %17, i8* %19, i64 4)
  %20 = load %struct._GChecksum*, %struct._GChecksum** %checksum, align 8
  %21 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %x_axis = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %21, i32 0, i32 4
  %22 = bitcast %struct._GimpVector2* %x_axis to i8*
  call void @g_checksum_update(%struct._GChecksum* %20, i8* %22, i64 16)
  %23 = load %struct._GChecksum*, %struct._GChecksum** %checksum, align 8
  %24 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %y_axis = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %24, i32 0, i32 5
  %25 = bitcast %struct._GimpVector2* %y_axis to i8*
  call void @g_checksum_update(%struct._GChecksum* %23, i8* %25, i64 16)
  %26 = load %struct._GChecksum*, %struct._GChecksum** %checksum, align 8
  %call13 = call i8* @g_checksum_get_string(%struct._GChecksum* %26)
  %call14 = call noalias i8* @g_strdup(i8* %call13)
  store i8* %call14, i8** %checksum_string, align 8
  %27 = load %struct._GChecksum*, %struct._GChecksum** %checksum, align 8
  call void @g_checksum_free(%struct._GChecksum* %27)
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %entry
  %28 = load i8*, i8** %checksum_string, align 8
  ret i8* %28
}

declare %struct._GChecksum* @g_checksum_new(i32) #1

declare void @g_checksum_update(%struct._GChecksum*, i8*, i64) #1

declare i64 @temp_buf_get_data_size(%struct._TempBuf*) #1

declare noalias i8* @g_strdup(i8*) #1

declare i8* @g_checksum_get_string(%struct._GChecksum*) #1

declare void @g_checksum_free(%struct._GChecksum*) #1

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
