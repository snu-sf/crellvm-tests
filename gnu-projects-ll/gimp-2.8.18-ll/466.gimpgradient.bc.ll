; ModuleID = './app/core/gimpgradient.bc'
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
%struct._GimpGradientClass = type { %struct._GimpDataClass }
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
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._Gimp = type opaque
%struct._GimpImage = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type { %struct._GimpData, %struct._GimpGradientSegment* }
%struct._GimpGradientSegment = type { double, double, double, i32, %struct._GimpRGB, i32, %struct._GimpRGB, i32, i32, %struct._GimpGradientSegment*, %struct._GimpGradientSegment* }
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpContainer = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpTaggedInterface = type { %struct._GTypeInterface, void (%struct._GimpTagged*, %struct._GimpTag*)*, void (%struct._GimpTagged*, %struct._GimpTag*)*, i32 (%struct._GimpTagged*, %struct._GimpTag*)*, i32 (%struct._GimpTagged*, %struct._GimpTag*)*, %struct._GList* (%struct._GimpTagged*)*, i8* (%struct._GimpTagged*)*, i8* (%struct._GimpTagged*)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpTagged = type opaque
%struct._GimpTag = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpHSV = type { double, double, double, double }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GChecksum = type opaque

@gimp_gradient_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"GimpGradient\00", align 1
@gimp_gradient_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpTaggedInterface*)* @gimp_gradient_tagged_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_gradient_new = private unnamed_addr constant [18 x i8] c"gimp_gradient_new\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"*name != '\5C0'\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@gimp_gradient_get_standard.standard_gradient = internal global %struct._GimpData* null, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"Standard\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"gimp-gradient-standard\00", align 1
@__func__.gimp_gradient_get_color_at = private unnamed_addr constant [27 x i8] c"gimp_gradient_get_color_at\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"GIMP_IS_GRADIENT (gradient)\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"color != NULL\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"%s: Unknown gradient type %d.\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"%s: Unknown coloring mode %d\00", align 1
@__func__.gimp_gradient_get_segment_at = private unnamed_addr constant [29 x i8] c"gimp_gradient_get_segment_at\00", align 1
@__func__.gimp_gradient_has_fg_bg_segments = private unnamed_addr constant [33 x i8] c"gimp_gradient_has_fg_bg_segments\00", align 1
@__func__.gimp_gradient_flatten = private unnamed_addr constant [22 x i8] c"gimp_gradient_flatten\00", align 1
@__func__.gimp_gradient_segment_free = private unnamed_addr constant [27 x i8] c"gimp_gradient_segment_free\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"seg != NULL\00", align 1
@__func__.gimp_gradient_segments_free = private unnamed_addr constant [28 x i8] c"gimp_gradient_segments_free\00", align 1
@__func__.gimp_gradient_segment_get_nth = private unnamed_addr constant [30 x i8] c"gimp_gradient_segment_get_nth\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"index >= 0\00", align 1
@__func__.gimp_gradient_segment_split_midpoint = private unnamed_addr constant [37 x i8] c"gimp_gradient_segment_split_midpoint\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"lseg != NULL\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"newl != NULL\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"newr != NULL\00", align 1
@__func__.gimp_gradient_segment_split_uniform = private unnamed_addr constant [36 x i8] c"gimp_gradient_segment_split_uniform\00", align 1
@__func__.gimp_gradient_segment_get_left_color = private unnamed_addr constant [37 x i8] c"gimp_gradient_segment_get_left_color\00", align 1
@__func__.gimp_gradient_segment_set_left_color = private unnamed_addr constant [37 x i8] c"gimp_gradient_segment_set_left_color\00", align 1
@__func__.gimp_gradient_segment_get_right_color = private unnamed_addr constant [38 x i8] c"gimp_gradient_segment_get_right_color\00", align 1
@__func__.gimp_gradient_segment_set_right_color = private unnamed_addr constant [38 x i8] c"gimp_gradient_segment_set_right_color\00", align 1
@__func__.gimp_gradient_segment_get_left_color_type = private unnamed_addr constant [42 x i8] c"gimp_gradient_segment_get_left_color_type\00", align 1
@__func__.gimp_gradient_segment_set_left_color_type = private unnamed_addr constant [42 x i8] c"gimp_gradient_segment_set_left_color_type\00", align 1
@__func__.gimp_gradient_segment_get_right_color_type = private unnamed_addr constant [43 x i8] c"gimp_gradient_segment_get_right_color_type\00", align 1
@__func__.gimp_gradient_segment_set_right_color_type = private unnamed_addr constant [43 x i8] c"gimp_gradient_segment_set_right_color_type\00", align 1
@__func__.gimp_gradient_segment_get_left_pos = private unnamed_addr constant [35 x i8] c"gimp_gradient_segment_get_left_pos\00", align 1
@__func__.gimp_gradient_segment_set_left_pos = private unnamed_addr constant [35 x i8] c"gimp_gradient_segment_set_left_pos\00", align 1
@__func__.gimp_gradient_segment_get_right_pos = private unnamed_addr constant [36 x i8] c"gimp_gradient_segment_get_right_pos\00", align 1
@__func__.gimp_gradient_segment_set_right_pos = private unnamed_addr constant [36 x i8] c"gimp_gradient_segment_set_right_pos\00", align 1
@__func__.gimp_gradient_segment_get_middle_pos = private unnamed_addr constant [37 x i8] c"gimp_gradient_segment_get_middle_pos\00", align 1
@__func__.gimp_gradient_segment_set_middle_pos = private unnamed_addr constant [37 x i8] c"gimp_gradient_segment_set_middle_pos\00", align 1
@__func__.gimp_gradient_segment_get_blending_function = private unnamed_addr constant [44 x i8] c"gimp_gradient_segment_get_blending_function\00", align 1
@__func__.gimp_gradient_segment_get_coloring_type = private unnamed_addr constant [40 x i8] c"gimp_gradient_segment_get_coloring_type\00", align 1
@__func__.gimp_gradient_segment_range_compress = private unnamed_addr constant [37 x i8] c"gimp_gradient_segment_range_compress\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"range_l != NULL\00", align 1
@__func__.gimp_gradient_segment_range_blend = private unnamed_addr constant [34 x i8] c"gimp_gradient_segment_range_blend\00", align 1
@__func__.gimp_gradient_segment_range_set_blending_function = private unnamed_addr constant [50 x i8] c"gimp_gradient_segment_range_set_blending_function\00", align 1
@__func__.gimp_gradient_segment_range_set_coloring_type = private unnamed_addr constant [46 x i8] c"gimp_gradient_segment_range_set_coloring_type\00", align 1
@__func__.gimp_gradient_segment_range_flip = private unnamed_addr constant [33 x i8] c"gimp_gradient_segment_range_flip\00", align 1
@__func__.gimp_gradient_segment_range_replicate = private unnamed_addr constant [38 x i8] c"gimp_gradient_segment_range_replicate\00", align 1
@__func__.gimp_gradient_segment_range_split_midpoint = private unnamed_addr constant [43 x i8] c"gimp_gradient_segment_range_split_midpoint\00", align 1
@__func__.gimp_gradient_segment_range_split_uniform = private unnamed_addr constant [42 x i8] c"gimp_gradient_segment_range_split_uniform\00", align 1
@__func__.gimp_gradient_segment_range_delete = private unnamed_addr constant [35 x i8] c"gimp_gradient_segment_range_delete\00", align 1
@__func__.gimp_gradient_segment_range_recenter_handles = private unnamed_addr constant [45 x i8] c"gimp_gradient_segment_range_recenter_handles\00", align 1
@__func__.gimp_gradient_segment_range_redistribute_handles = private unnamed_addr constant [49 x i8] c"gimp_gradient_segment_range_redistribute_handles\00", align 1
@__func__.gimp_gradient_segment_range_move = private unnamed_addr constant [33 x i8] c"gimp_gradient_segment_range_move\00", align 1
@gimp_gradient_parent_class = internal global i8* null, align 8
@GimpGradient_private_offset = internal global i32 0, align 4
@.str.18 = private unnamed_addr constant [14 x i8] c"gimp-gradient\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c".ggr\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"%s: no matching segment for position %0.15f\00", align 1
@__func__.gimp_gradient_get_segment_at_internal = private unnamed_addr constant [38 x i8] c"gimp_gradient_get_segment_at_internal\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_gradient_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_gradient_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_gradient_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_data_get_type() #8
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 312, void (i8*, i8*)* bitcast (void (i8*)* @gimp_gradient_class_intern_init to void (i8*, i8*)*), i32 40, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpGradient*)* @gimp_gradient_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_tagged_interface_get_type() #8
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_gradient_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_gradient_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_gradient_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_data_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_gradient_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_gradient_parent_class, align 8
  %1 = load i32, i32* @GimpGradient_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpGradient_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpGradientClass*
  call void @gimp_gradient_class_init(%struct._GimpGradientClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_gradient_init(%struct._GimpGradient* %gradient) #3 {
entry:
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  %0 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %segments = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %0, i32 0, i32 1
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %segments, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_gradient_tagged_iface_init(%struct._GimpTaggedInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpTaggedInterface*, align 8
  store %struct._GimpTaggedInterface* %iface, %struct._GimpTaggedInterface** %iface.addr, align 8
  %0 = load %struct._GimpTaggedInterface*, %struct._GimpTaggedInterface** %iface.addr, align 8
  %get_checksum = getelementptr inbounds %struct._GimpTaggedInterface, %struct._GimpTaggedInterface* %0, i32 0, i32 7
  store i8* (%struct._GimpTagged*)* @gimp_gradient_get_checksum, i8* (%struct._GimpTagged*)** %get_checksum, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tagged_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpData* @gimp_gradient_new(%struct._GimpContext* %context, i8* %name) #3 {
entry:
  %retval = alloca %struct._GimpData*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %name.addr = alloca i8*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_gradient_new, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_gradient_new, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpData* null, %struct._GimpData** %retval
  br label %return

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  %call = call i64 @gimp_gradient_get_type() #8
  %3 = load i8*, i8** %name.addr, align 8
  %call8 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* %3, i8* null)
  %4 = bitcast i8* %call8 to %struct._GimpGradient*
  store %struct._GimpGradient* %4, %struct._GimpGradient** %gradient, align 8
  %call9 = call %struct._GimpGradientSegment* @gimp_gradient_segment_new()
  %5 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %segments = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %5, i32 0, i32 1
  store %struct._GimpGradientSegment* %call9, %struct._GimpGradientSegment** %segments, align 8
  %6 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %7 = bitcast %struct._GimpGradient* %6 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_data_get_type() #8
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call10)
  %8 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpData*
  store %struct._GimpData* %8, %struct._GimpData** %retval
  br label %return

return:                                           ; preds = %do.end.7, %if.else.5, %if.else
  %9 = load %struct._GimpData*, %struct._GimpData** %retval
  ret %struct._GimpData* %9
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct._GimpGradientSegment* @gimp_gradient_segment_new() #3 {
entry:
  %seg = alloca %struct._GimpGradientSegment*, align 8
  %call = call noalias i8* @g_slice_alloc(i64 128)
  %0 = bitcast i8* %call to %struct._GimpGradientSegment*
  store %struct._GimpGradientSegment* %0, %struct._GimpGradientSegment** %seg, align 8
  %1 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %1, i32 0, i32 0
  store double 0.000000e+00, double* %left, align 8
  %2 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %middle = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %2, i32 0, i32 1
  store double 5.000000e-01, double* %middle, align 8
  %3 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %3, i32 0, i32 2
  store double 1.000000e+00, double* %right, align 8
  %4 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left_color_type = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %4, i32 0, i32 3
  store i32 0, i32* %left_color_type, align 4
  %5 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %5, i32 0, i32 4
  call void @gimp_rgba_set(%struct._GimpRGB* %left_color, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %6 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right_color_type = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %6, i32 0, i32 5
  store i32 0, i32* %right_color_type, align 4
  %7 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %7, i32 0, i32 6
  call void @gimp_rgba_set(%struct._GimpRGB* %right_color, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  %8 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %type = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %8, i32 0, i32 7
  store i32 0, i32* %type, align 4
  %9 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %9, i32 0, i32 8
  store i32 0, i32* %color, align 4
  %10 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %next = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %10, i32 0, i32 10
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %next, align 8
  %11 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %prev = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %11, i32 0, i32 9
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %prev, align 8
  %12 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  ret %struct._GimpGradientSegment* %12
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpData* @gimp_gradient_get_standard(%struct._GimpContext* %context) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpData*, %struct._GimpData** @gimp_gradient_get_standard.standard_gradient, align 8
  %tobool = icmp ne %struct._GimpData* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call = call %struct._GimpData* @gimp_gradient_new(%struct._GimpContext* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpData* %call, %struct._GimpData** @gimp_gradient_get_standard.standard_gradient, align 8
  %2 = load %struct._GimpData*, %struct._GimpData** @gimp_gradient_get_standard.standard_gradient, align 8
  call void @gimp_data_clean(%struct._GimpData* %2)
  %3 = load %struct._GimpData*, %struct._GimpData** @gimp_gradient_get_standard.standard_gradient, align 8
  call void @gimp_data_make_internal(%struct._GimpData* %3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0))
  %4 = load %struct._GimpData*, %struct._GimpData** @gimp_gradient_get_standard.standard_gradient, align 8
  %5 = bitcast %struct._GimpData* %4 to %struct._GTypeInstance*
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 80)
  %6 = bitcast %struct._GTypeInstance* %call1 to %struct._GObject*
  call void @g_object_add_weak_pointer(%struct._GObject* %6, i8** bitcast (%struct._GimpData** @gimp_gradient_get_standard.standard_gradient to i8**))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpData*, %struct._GimpData** @gimp_gradient_get_standard.standard_gradient, align 8
  ret %struct._GimpData* %7
}

declare void @gimp_data_clean(%struct._GimpData*) #1

declare void @gimp_data_make_internal(%struct._GimpData*, i8*) #1

declare void @g_object_add_weak_pointer(%struct._GObject*, i8**) #1

; Function Attrs: nounwind uwtable
define %struct._GimpGradientSegment* @gimp_gradient_get_color_at(%struct._GimpGradient* %gradient, %struct._GimpContext* %context, %struct._GimpGradientSegment* %seg, double %pos, i32 %reverse, %struct._GimpRGB* %color) #3 {
entry:
  %retval = alloca %struct._GimpGradientSegment*, align 8
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %seg.addr = alloca %struct._GimpGradientSegment*, align 8
  %pos.addr = alloca double, align 8
  %reverse.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %factor = alloca double, align 8
  %seg_len = alloca double, align 8
  %middle = alloca double, align 8
  %left_color = alloca %struct._GimpRGB, align 8
  %right_color = alloca %struct._GimpRGB, align 8
  %rgb = alloca %struct._GimpRGB, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %left_hsv = alloca %struct._GimpHSV, align 8
  %right_hsv = alloca %struct._GimpHSV, align 8
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpGradientSegment* %seg, %struct._GimpGradientSegment** %seg.addr, align 8
  store double %pos, double* %pos.addr, align 8
  store i32 %reverse, i32* %reverse.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store double 0.000000e+00, double* %factor, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %1 = bitcast %struct._GimpGradient* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_gradient_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_gradient_get_color_at, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_context_get_type() #8
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_gradient_get_color_at, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp40 = icmp ne %struct._GimpRGB* %26, null
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.39
  br label %if.end.43

if.else.42:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_gradient_get_color_at, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0))
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %retval
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %27 = load double, double* %pos.addr, align 8
  %cmp45 = fcmp ogt double %27, 1.000000e+00
  br i1 %cmp45, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.44
  br label %cond.end.49

cond.false:                                       ; preds = %do.end.44
  %28 = load double, double* %pos.addr, align 8
  %cmp46 = fcmp olt double %28, 0.000000e+00
  br i1 %cmp46, label %cond.true.47, label %cond.false.48

cond.true.47:                                     ; preds = %cond.false
  br label %cond.end

cond.false.48:                                    ; preds = %cond.false
  %29 = load double, double* %pos.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.48, %cond.true.47
  %cond = phi double [ 0.000000e+00, %cond.true.47 ], [ %29, %cond.false.48 ]
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.end, %cond.true
  %cond50 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  store double %cond50, double* %pos.addr, align 8
  %30 = load i32, i32* %reverse.addr, align 4
  %tobool51 = icmp ne i32 %30, 0
  br i1 %tobool51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %cond.end.49
  %31 = load double, double* %pos.addr, align 8
  %sub = fsub double 1.000000e+00, %31
  store double %sub, double* %pos.addr, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %cond.end.49
  %32 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %33 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %34 = load double, double* %pos.addr, align 8
  %call54 = call %struct._GimpGradientSegment* @gimp_gradient_get_segment_at_internal(%struct._GimpGradient* %32, %struct._GimpGradientSegment* %33, double %34)
  store %struct._GimpGradientSegment* %call54, %struct._GimpGradientSegment** %seg.addr, align 8
  %35 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %right = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %35, i32 0, i32 2
  %36 = load double, double* %right, align 8
  %37 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %left = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %37, i32 0, i32 0
  %38 = load double, double* %left, align 8
  %sub55 = fsub double %36, %38
  store double %sub55, double* %seg_len, align 8
  %39 = load double, double* %seg_len, align 8
  %cmp56 = fcmp olt double %39, 1.000000e-10
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %if.end.53
  store double 5.000000e-01, double* %middle, align 8
  store double 5.000000e-01, double* %pos.addr, align 8
  br label %if.end.65

if.else.58:                                       ; preds = %if.end.53
  %40 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %middle59 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %40, i32 0, i32 1
  %41 = load double, double* %middle59, align 8
  %42 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %left60 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %42, i32 0, i32 0
  %43 = load double, double* %left60, align 8
  %sub61 = fsub double %41, %43
  %44 = load double, double* %seg_len, align 8
  %div = fdiv double %sub61, %44
  store double %div, double* %middle, align 8
  %45 = load double, double* %pos.addr, align 8
  %46 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %left62 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %46, i32 0, i32 0
  %47 = load double, double* %left62, align 8
  %sub63 = fsub double %45, %47
  %48 = load double, double* %seg_len, align 8
  %div64 = fdiv double %sub63, %48
  store double %div64, double* %pos.addr, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.58, %if.then.57
  %49 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %type = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %49, i32 0, i32 7
  %50 = load i32, i32* %type, align 4
  switch i32 %50, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.67
    i32 2, label %sw.bb.69
    i32 3, label %sw.bb.71
    i32 4, label %sw.bb.73
  ]

sw.bb:                                            ; preds = %if.end.65
  %51 = load double, double* %middle, align 8
  %52 = load double, double* %pos.addr, align 8
  %call66 = call double @gimp_gradient_calc_linear_factor(double %51, double %52)
  store double %call66, double* %factor, align 8
  br label %sw.epilog

sw.bb.67:                                         ; preds = %if.end.65
  %53 = load double, double* %middle, align 8
  %54 = load double, double* %pos.addr, align 8
  %call68 = call double @gimp_gradient_calc_curved_factor(double %53, double %54)
  store double %call68, double* %factor, align 8
  br label %sw.epilog

sw.bb.69:                                         ; preds = %if.end.65
  %55 = load double, double* %middle, align 8
  %56 = load double, double* %pos.addr, align 8
  %call70 = call double @gimp_gradient_calc_sine_factor(double %55, double %56)
  store double %call70, double* %factor, align 8
  br label %sw.epilog

sw.bb.71:                                         ; preds = %if.end.65
  %57 = load double, double* %middle, align 8
  %58 = load double, double* %pos.addr, align 8
  %call72 = call double @gimp_gradient_calc_sphere_increasing_factor(double %57, double %58)
  store double %call72, double* %factor, align 8
  br label %sw.epilog

sw.bb.73:                                         ; preds = %if.end.65
  %59 = load double, double* %middle, align 8
  %60 = load double, double* %pos.addr, align 8
  %call74 = call double @gimp_gradient_calc_sphere_decreasing_factor(double %59, double %60)
  store double %call74, double* %factor, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.65
  %61 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %type75 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %61, i32 0, i32 7
  %62 = load i32, i32* %type75, align 4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_gradient_get_color_at, i32 0, i32 0), i32 %62)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.73, %sw.bb.71, %sw.bb.69, %sw.bb.67, %sw.bb
  %63 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %left_color_type = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %63, i32 0, i32 3
  %64 = load i32, i32* %left_color_type, align 4
  switch i32 %64, label %sw.epilog.88 [
    i32 0, label %sw.bb.76
    i32 1, label %sw.bb.78
    i32 2, label %sw.bb.78
    i32 3, label %sw.bb.83
    i32 4, label %sw.bb.83
  ]

sw.bb.76:                                         ; preds = %sw.epilog
  %65 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %left_color77 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %65, i32 0, i32 4
  %66 = bitcast %struct._GimpRGB* %left_color to i8*
  %67 = bitcast %struct._GimpRGB* %left_color77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %67, i64 32, i32 8, i1 false)
  br label %sw.epilog.88

sw.bb.78:                                         ; preds = %sw.epilog, %sw.epilog
  %68 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_get_foreground(%struct._GimpContext* %68, %struct._GimpRGB* %left_color)
  %69 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %left_color_type79 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %69, i32 0, i32 3
  %70 = load i32, i32* %left_color_type79, align 4
  %cmp80 = icmp eq i32 %70, 2
  br i1 %cmp80, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %sw.bb.78
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %left_color, double 0.000000e+00)
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.81, %sw.bb.78
  br label %sw.epilog.88

sw.bb.83:                                         ; preds = %sw.epilog, %sw.epilog
  %71 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_get_background(%struct._GimpContext* %71, %struct._GimpRGB* %left_color)
  %72 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %left_color_type84 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %72, i32 0, i32 3
  %73 = load i32, i32* %left_color_type84, align 4
  %cmp85 = icmp eq i32 %73, 4
  br i1 %cmp85, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %sw.bb.83
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %left_color, double 0.000000e+00)
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.86, %sw.bb.83
  br label %sw.epilog.88

sw.epilog.88:                                     ; preds = %sw.epilog, %if.end.87, %if.end.82, %sw.bb.76
  %74 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %right_color_type = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %74, i32 0, i32 5
  %75 = load i32, i32* %right_color_type, align 4
  switch i32 %75, label %sw.epilog.101 [
    i32 0, label %sw.bb.89
    i32 1, label %sw.bb.91
    i32 2, label %sw.bb.91
    i32 3, label %sw.bb.96
    i32 4, label %sw.bb.96
  ]

sw.bb.89:                                         ; preds = %sw.epilog.88
  %76 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %right_color90 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %76, i32 0, i32 6
  %77 = bitcast %struct._GimpRGB* %right_color to i8*
  %78 = bitcast %struct._GimpRGB* %right_color90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %77, i8* %78, i64 32, i32 8, i1 false)
  br label %sw.epilog.101

sw.bb.91:                                         ; preds = %sw.epilog.88, %sw.epilog.88
  %79 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_get_foreground(%struct._GimpContext* %79, %struct._GimpRGB* %right_color)
  %80 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %right_color_type92 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %80, i32 0, i32 5
  %81 = load i32, i32* %right_color_type92, align 4
  %cmp93 = icmp eq i32 %81, 2
  br i1 %cmp93, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %sw.bb.91
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %right_color, double 0.000000e+00)
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.94, %sw.bb.91
  br label %sw.epilog.101

sw.bb.96:                                         ; preds = %sw.epilog.88, %sw.epilog.88
  %82 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_get_background(%struct._GimpContext* %82, %struct._GimpRGB* %right_color)
  %83 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %right_color_type97 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %83, i32 0, i32 5
  %84 = load i32, i32* %right_color_type97, align 4
  %cmp98 = icmp eq i32 %84, 4
  br i1 %cmp98, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %sw.bb.96
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %right_color, double 0.000000e+00)
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.99, %sw.bb.96
  br label %sw.epilog.101

sw.epilog.101:                                    ; preds = %sw.epilog.88, %if.end.100, %if.end.95, %sw.bb.89
  %85 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %color102 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %85, i32 0, i32 8
  %86 = load i32, i32* %color102, align 4
  %cmp103 = icmp eq i32 %86, 0
  br i1 %cmp103, label %if.then.104, label %if.else.121

if.then.104:                                      ; preds = %sw.epilog.101
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %left_color, i32 0, i32 0
  %87 = load double, double* %r, align 8
  %r105 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %right_color, i32 0, i32 0
  %88 = load double, double* %r105, align 8
  %r106 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %left_color, i32 0, i32 0
  %89 = load double, double* %r106, align 8
  %sub107 = fsub double %88, %89
  %90 = load double, double* %factor, align 8
  %mul = fmul double %sub107, %90
  %add = fadd double %87, %mul
  %r108 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 0
  store double %add, double* %r108, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %left_color, i32 0, i32 1
  %91 = load double, double* %g, align 8
  %g109 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %right_color, i32 0, i32 1
  %92 = load double, double* %g109, align 8
  %g110 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %left_color, i32 0, i32 1
  %93 = load double, double* %g110, align 8
  %sub111 = fsub double %92, %93
  %94 = load double, double* %factor, align 8
  %mul112 = fmul double %sub111, %94
  %add113 = fadd double %91, %mul112
  %g114 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 1
  store double %add113, double* %g114, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %left_color, i32 0, i32 2
  %95 = load double, double* %b, align 8
  %b115 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %right_color, i32 0, i32 2
  %96 = load double, double* %b115, align 8
  %b116 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %left_color, i32 0, i32 2
  %97 = load double, double* %b116, align 8
  %sub117 = fsub double %96, %97
  %98 = load double, double* %factor, align 8
  %mul118 = fmul double %sub117, %98
  %add119 = fadd double %95, %mul118
  %b120 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 2
  store double %add119, double* %b120, align 8
  br label %if.end.191

if.else.121:                                      ; preds = %sw.epilog.101
  call void @gimp_rgb_to_hsv(%struct._GimpRGB* %left_color, %struct._GimpHSV* %left_hsv)
  call void @gimp_rgb_to_hsv(%struct._GimpRGB* %right_color, %struct._GimpHSV* %right_hsv)
  %s = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %left_hsv, i32 0, i32 1
  %99 = load double, double* %s, align 8
  %s124 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %right_hsv, i32 0, i32 1
  %100 = load double, double* %s124, align 8
  %s125 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %left_hsv, i32 0, i32 1
  %101 = load double, double* %s125, align 8
  %sub126 = fsub double %100, %101
  %102 = load double, double* %factor, align 8
  %mul127 = fmul double %sub126, %102
  %add128 = fadd double %99, %mul127
  %s129 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %left_hsv, i32 0, i32 1
  store double %add128, double* %s129, align 8
  %v = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %left_hsv, i32 0, i32 2
  %103 = load double, double* %v, align 8
  %v130 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %right_hsv, i32 0, i32 2
  %104 = load double, double* %v130, align 8
  %v131 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %left_hsv, i32 0, i32 2
  %105 = load double, double* %v131, align 8
  %sub132 = fsub double %104, %105
  %106 = load double, double* %factor, align 8
  %mul133 = fmul double %sub132, %106
  %add134 = fadd double %103, %mul133
  %v135 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %left_hsv, i32 0, i32 2
  store double %add134, double* %v135, align 8
  %107 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %color136 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %107, i32 0, i32 8
  %108 = load i32, i32* %color136, align 4
  switch i32 %108, label %sw.default.188 [
    i32 1, label %sw.bb.137
    i32 2, label %sw.bb.162
  ]

sw.bb.137:                                        ; preds = %if.else.121
  %h = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %left_hsv, i32 0, i32 0
  %109 = load double, double* %h, align 8
  %h138 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %right_hsv, i32 0, i32 0
  %110 = load double, double* %h138, align 8
  %cmp139 = fcmp olt double %109, %110
  br i1 %cmp139, label %if.then.140, label %if.else.147

if.then.140:                                      ; preds = %sw.bb.137
  %h141 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %right_hsv, i32 0, i32 0
  %111 = load double, double* %h141, align 8
  %h142 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %left_hsv, i32 0, i32 0
  %112 = load double, double* %h142, align 8
  %sub143 = fsub double %111, %112
  %113 = load double, double* %factor, align 8
  %mul144 = fmul double %sub143, %113
  %h145 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %left_hsv, i32 0, i32 0
  %114 = load double, double* %h145, align 8
  %add146 = fadd double %114, %mul144
  store double %add146, double* %h145, align 8
  br label %if.end.161

if.else.147:                                      ; preds = %sw.bb.137
  %h148 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %left_hsv, i32 0, i32 0
  %115 = load double, double* %h148, align 8
  %h149 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %right_hsv, i32 0, i32 0
  %116 = load double, double* %h149, align 8
  %sub150 = fsub double %115, %116
  %sub151 = fsub double 1.000000e+00, %sub150
  %117 = load double, double* %factor, align 8
  %mul152 = fmul double %sub151, %117
  %h153 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %left_hsv, i32 0, i32 0
  %118 = load double, double* %h153, align 8
  %add154 = fadd double %118, %mul152
  store double %add154, double* %h153, align 8
  %h155 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %left_hsv, i32 0, i32 0
  %119 = load double, double* %h155, align 8
  %cmp156 = fcmp ogt double %119, 1.000000e+00
  br i1 %cmp156, label %if.then.157, label %if.end.160

if.then.157:                                      ; preds = %if.else.147
  %h158 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %left_hsv, i32 0, i32 0
  %120 = load double, double* %h158, align 8
  %sub159 = fsub double %120, 1.000000e+00
  store double %sub159, double* %h158, align 8
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.157, %if.else.147
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.160, %if.then.140
  br label %sw.epilog.190

sw.bb.162:                                        ; preds = %if.else.121
  %h163 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %right_hsv, i32 0, i32 0
  %121 = load double, double* %h163, align 8
  %h164 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %left_hsv, i32 0, i32 0
  %122 = load double, double* %h164, align 8
  %cmp165 = fcmp olt double %121, %122
  br i1 %cmp165, label %if.then.166, label %if.else.173

if.then.166:                                      ; preds = %sw.bb.162
  %h167 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %left_hsv, i32 0, i32 0
  %123 = load double, double* %h167, align 8
  %h168 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %right_hsv, i32 0, i32 0
  %124 = load double, double* %h168, align 8
  %sub169 = fsub double %123, %124
  %125 = load double, double* %factor, align 8
  %mul170 = fmul double %sub169, %125
  %h171 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %left_hsv, i32 0, i32 0
  %126 = load double, double* %h171, align 8
  %sub172 = fsub double %126, %mul170
  store double %sub172, double* %h171, align 8
  br label %if.end.187

if.else.173:                                      ; preds = %sw.bb.162
  %h174 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %right_hsv, i32 0, i32 0
  %127 = load double, double* %h174, align 8
  %h175 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %left_hsv, i32 0, i32 0
  %128 = load double, double* %h175, align 8
  %sub176 = fsub double %127, %128
  %sub177 = fsub double 1.000000e+00, %sub176
  %129 = load double, double* %factor, align 8
  %mul178 = fmul double %sub177, %129
  %h179 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %left_hsv, i32 0, i32 0
  %130 = load double, double* %h179, align 8
  %sub180 = fsub double %130, %mul178
  store double %sub180, double* %h179, align 8
  %h181 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %left_hsv, i32 0, i32 0
  %131 = load double, double* %h181, align 8
  %cmp182 = fcmp olt double %131, 0.000000e+00
  br i1 %cmp182, label %if.then.183, label %if.end.186

if.then.183:                                      ; preds = %if.else.173
  %h184 = getelementptr inbounds %struct._GimpHSV, %struct._GimpHSV* %left_hsv, i32 0, i32 0
  %132 = load double, double* %h184, align 8
  %add185 = fadd double %132, 1.000000e+00
  store double %add185, double* %h184, align 8
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.183, %if.else.173
  br label %if.end.187

if.end.187:                                       ; preds = %if.end.186, %if.then.166
  br label %sw.epilog.190

sw.default.188:                                   ; preds = %if.else.121
  %133 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %color189 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %133, i32 0, i32 8
  %134 = load i32, i32* %color189, align 4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_gradient_get_color_at, i32 0, i32 0), i32 %134)
  br label %sw.epilog.190

sw.epilog.190:                                    ; preds = %sw.default.188, %if.end.187, %if.end.161
  call void @gimp_hsv_to_rgb(%struct._GimpHSV* %left_hsv, %struct._GimpRGB* %rgb)
  br label %if.end.191

if.end.191:                                       ; preds = %sw.epilog.190, %if.then.104
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %left_color, i32 0, i32 3
  %135 = load double, double* %a, align 8
  %a192 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %right_color, i32 0, i32 3
  %136 = load double, double* %a192, align 8
  %a193 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %left_color, i32 0, i32 3
  %137 = load double, double* %a193, align 8
  %sub194 = fsub double %136, %137
  %138 = load double, double* %factor, align 8
  %mul195 = fmul double %sub194, %138
  %add196 = fadd double %135, %mul195
  %a197 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %rgb, i32 0, i32 3
  store double %add196, double* %a197, align 8
  %139 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %140 = bitcast %struct._GimpRGB* %139 to i8*
  %141 = bitcast %struct._GimpRGB* %rgb to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %140, i8* %141, i64 32, i32 8, i1 false)
  %142 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  store %struct._GimpGradientSegment* %142, %struct._GimpGradientSegment** %retval
  br label %return

return:                                           ; preds = %if.end.191, %if.else.42, %if.else.36, %if.else.9
  %143 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %retval
  ret %struct._GimpGradientSegment* %143
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GimpGradientSegment* @gimp_gradient_get_segment_at_internal(%struct._GimpGradient* %gradient, %struct._GimpGradientSegment* %seg, double %pos) #3 {
entry:
  %retval = alloca %struct._GimpGradientSegment*, align 8
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %seg.addr = alloca %struct._GimpGradientSegment*, align 8
  %pos.addr = alloca double, align 8
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store %struct._GimpGradientSegment* %seg, %struct._GimpGradientSegment** %seg.addr, align 8
  store double %pos, double* %pos.addr, align 8
  %0 = load double, double* %pos.addr, align 8
  %cmp = fcmp ogt double %0, 1.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.4

cond.false:                                       ; preds = %entry
  %1 = load double, double* %pos.addr, align 8
  %cmp1 = fcmp olt double %1, 0.000000e+00
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.false
  br label %cond.end

cond.false.3:                                     ; preds = %cond.false
  %2 = load double, double* %pos.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.3, %cond.true.2
  %cond = phi double [ 0.000000e+00, %cond.true.2 ], [ %2, %cond.false.3 ]
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.end, %cond.true
  %cond5 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  store double %cond5, double* %pos.addr, align 8
  %3 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %tobool = icmp ne %struct._GimpGradientSegment* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end.4
  %4 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %segments = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %4, i32 0, i32 1
  %5 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments, align 8
  store %struct._GimpGradientSegment* %5, %struct._GimpGradientSegment** %seg.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.4
  br label %while.cond

while.cond:                                       ; preds = %if.end.13, %if.end
  %6 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %tobool6 = icmp ne %struct._GimpGradientSegment* %6, null
  br i1 %tobool6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load double, double* %pos.addr, align 8
  %8 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %left = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %8, i32 0, i32 0
  %9 = load double, double* %left, align 8
  %cmp7 = fcmp oge double %7, %9
  br i1 %cmp7, label %if.then.8, label %if.else.12

if.then.8:                                        ; preds = %while.body
  %10 = load double, double* %pos.addr, align 8
  %11 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %right = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %11, i32 0, i32 2
  %12 = load double, double* %right, align 8
  %cmp9 = fcmp ole double %10, %12
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then.8
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  store %struct._GimpGradientSegment* %13, %struct._GimpGradientSegment** %retval
  br label %return

if.else:                                          ; preds = %if.then.8
  %14 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %next = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %14, i32 0, i32 10
  %15 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next, align 8
  store %struct._GimpGradientSegment* %15, %struct._GimpGradientSegment** %seg.addr, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else
  br label %if.end.13

if.else.12:                                       ; preds = %while.body
  %16 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %prev = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %16, i32 0, i32 9
  %17 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev, align 8
  store %struct._GimpGradientSegment* %17, %struct._GimpGradientSegment** %seg.addr, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.12, %if.end.11
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = load double, double* %pos.addr, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_gradient_get_segment_at_internal, i32 0, i32 0), double %18)
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.10
  %19 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %retval
  ret %struct._GimpGradientSegment* %19
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @gimp_gradient_calc_linear_factor(double %middle, double %pos) #5 {
entry:
  %retval = alloca double, align 8
  %middle.addr = alloca double, align 8
  %pos.addr = alloca double, align 8
  store double %middle, double* %middle.addr, align 8
  store double %pos, double* %pos.addr, align 8
  %0 = load double, double* %pos.addr, align 8
  %1 = load double, double* %middle.addr, align 8
  %cmp = fcmp ole double %0, %1
  br i1 %cmp, label %if.then, label %if.else.3

if.then:                                          ; preds = %entry
  %2 = load double, double* %middle.addr, align 8
  %cmp1 = fcmp olt double %2, 1.000000e-10
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  store double 0.000000e+00, double* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %3 = load double, double* %pos.addr, align 8
  %mul = fmul double 5.000000e-01, %3
  %4 = load double, double* %middle.addr, align 8
  %div = fdiv double %mul, %4
  store double %div, double* %retval
  br label %return

if.else.3:                                        ; preds = %entry
  %5 = load double, double* %middle.addr, align 8
  %6 = load double, double* %pos.addr, align 8
  %sub = fsub double %6, %5
  store double %sub, double* %pos.addr, align 8
  %7 = load double, double* %middle.addr, align 8
  %sub4 = fsub double 1.000000e+00, %7
  store double %sub4, double* %middle.addr, align 8
  %8 = load double, double* %middle.addr, align 8
  %cmp5 = fcmp olt double %8, 1.000000e-10
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.else.3
  store double 1.000000e+00, double* %retval
  br label %return

if.else.7:                                        ; preds = %if.else.3
  %9 = load double, double* %pos.addr, align 8
  %mul8 = fmul double 5.000000e-01, %9
  %10 = load double, double* %middle.addr, align 8
  %div9 = fdiv double %mul8, %10
  %add = fadd double 5.000000e-01, %div9
  store double %add, double* %retval
  br label %return

return:                                           ; preds = %if.else.7, %if.then.6, %if.else, %if.then.2
  %11 = load double, double* %retval
  ret double %11
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @gimp_gradient_calc_curved_factor(double %middle, double %pos) #5 {
entry:
  %middle.addr = alloca double, align 8
  %pos.addr = alloca double, align 8
  store double %middle, double* %middle.addr, align 8
  store double %pos, double* %pos.addr, align 8
  %0 = load double, double* %middle.addr, align 8
  %cmp = fcmp olt double %0, 1.000000e-10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 1.000000e-10, double* %middle.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load double, double* %pos.addr, align 8
  %call = call double @log(double 5.000000e-01) #6
  %2 = load double, double* %middle.addr, align 8
  %call1 = call double @log(double %2) #6
  %div = fdiv double %call, %call1
  %call2 = call double @pow(double %1, double %div) #6
  ret double %call2
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @gimp_gradient_calc_sine_factor(double %middle, double %pos) #5 {
entry:
  %middle.addr = alloca double, align 8
  %pos.addr = alloca double, align 8
  store double %middle, double* %middle.addr, align 8
  store double %pos, double* %pos.addr, align 8
  %0 = load double, double* %middle.addr, align 8
  %1 = load double, double* %pos.addr, align 8
  %call = call double @gimp_gradient_calc_linear_factor(double %0, double %1)
  store double %call, double* %pos.addr, align 8
  %2 = load double, double* %pos.addr, align 8
  %mul = fmul double 0x400921FB54442D18, %2
  %add = fadd double 0xBFF921FB54442D18, %mul
  %call1 = call double @sin(double %add) #6
  %add2 = fadd double %call1, 1.000000e+00
  %div = fdiv double %add2, 2.000000e+00
  ret double %div
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @gimp_gradient_calc_sphere_increasing_factor(double %middle, double %pos) #5 {
entry:
  %middle.addr = alloca double, align 8
  %pos.addr = alloca double, align 8
  store double %middle, double* %middle.addr, align 8
  store double %pos, double* %pos.addr, align 8
  %0 = load double, double* %middle.addr, align 8
  %1 = load double, double* %pos.addr, align 8
  %call = call double @gimp_gradient_calc_linear_factor(double %0, double %1)
  %sub = fsub double %call, 1.000000e+00
  store double %sub, double* %pos.addr, align 8
  %2 = load double, double* %pos.addr, align 8
  %3 = load double, double* %pos.addr, align 8
  %mul = fmul double %2, %3
  %sub1 = fsub double 1.000000e+00, %mul
  %call2 = call double @sqrt(double %sub1) #6
  ret double %call2
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @gimp_gradient_calc_sphere_decreasing_factor(double %middle, double %pos) #5 {
entry:
  %middle.addr = alloca double, align 8
  %pos.addr = alloca double, align 8
  store double %middle, double* %middle.addr, align 8
  store double %pos, double* %pos.addr, align 8
  %0 = load double, double* %middle.addr, align 8
  %1 = load double, double* %pos.addr, align 8
  %call = call double @gimp_gradient_calc_linear_factor(double %0, double %1)
  store double %call, double* %pos.addr, align 8
  %2 = load double, double* %pos.addr, align 8
  %3 = load double, double* %pos.addr, align 8
  %mul = fmul double %2, %3
  %sub = fsub double 1.000000e+00, %mul
  %call1 = call double @sqrt(double %sub) #6
  %sub2 = fsub double 1.000000e+00, %call1
  ret double %sub2
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

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

declare void @gimp_context_get_foreground(%struct._GimpContext*, %struct._GimpRGB*) #1

declare void @gimp_rgb_set_alpha(%struct._GimpRGB*, double) #1

declare void @gimp_context_get_background(%struct._GimpContext*, %struct._GimpRGB*) #1

declare void @gimp_rgb_to_hsv(%struct._GimpRGB*, %struct._GimpHSV*) #1

declare void @gimp_hsv_to_rgb(%struct._GimpHSV*, %struct._GimpRGB*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpGradientSegment* @gimp_gradient_get_segment_at(%struct._GimpGradient* %gradient, double %pos) #3 {
entry:
  %retval = alloca %struct._GimpGradientSegment*, align 8
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %pos.addr = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store double %pos, double* %pos.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %1 = bitcast %struct._GimpGradient* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_gradient_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_gradient_get_segment_at, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %14 = load double, double* %pos.addr, align 8
  %call11 = call %struct._GimpGradientSegment* @gimp_gradient_get_segment_at_internal(%struct._GimpGradient* %13, %struct._GimpGradientSegment* null, double %14)
  store %struct._GimpGradientSegment* %call11, %struct._GimpGradientSegment** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %retval
  ret %struct._GimpGradientSegment* %15
}

; Function Attrs: nounwind uwtable
define i32 @gimp_gradient_has_fg_bg_segments(%struct._GimpGradient* %gradient) #3 {
entry:
  %retval = alloca i32, align 4
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %segment = alloca %struct._GimpGradientSegment*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %1 = bitcast %struct._GimpGradient* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_gradient_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_gradient_has_fg_bg_segments, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %segments = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %13, i32 0, i32 1
  %14 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments, align 8
  store %struct._GimpGradientSegment* %14, %struct._GimpGradientSegment** %segment, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %15 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segment, align 8
  %tobool11 = icmp ne %struct._GimpGradientSegment* %15, null
  br i1 %tobool11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segment, align 8
  %left_color_type = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %16, i32 0, i32 3
  %17 = load i32, i32* %left_color_type, align 4
  %cmp12 = icmp ne i32 %17, 0
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %18 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segment, align 8
  %right_color_type = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %18, i32 0, i32 5
  %19 = load i32, i32* %right_color_type, align 4
  %cmp13 = icmp ne i32 %19, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %lor.lhs.false, %for.body
  store i32 1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %20 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segment, align 8
  %next = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %20, i32 0, i32 10
  %21 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next, align 8
  store %struct._GimpGradientSegment* %21, %struct._GimpGradientSegment** %segment, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.14, %if.else.9
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define %struct._GimpGradient* @gimp_gradient_flatten(%struct._GimpGradient* %gradient, %struct._GimpContext* %context) #3 {
entry:
  %retval = alloca %struct._GimpGradient*, align 8
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %flat = alloca %struct._GimpGradient*, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %1 = bitcast %struct._GimpGradient* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_gradient_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_gradient_flatten, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpGradient* null, %struct._GimpGradient** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_context_get_type() #8
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_gradient_flatten, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GimpGradient* null, %struct._GimpGradient** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %27 = bitcast %struct._GimpGradient* %26 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_data_get_type() #8
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call39)
  %28 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpData*
  %call41 = call %struct._GimpData* @gimp_data_duplicate(%struct._GimpData* %28)
  %29 = bitcast %struct._GimpData* %call41 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_gradient_get_type() #8
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call42)
  %30 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpGradient*
  store %struct._GimpGradient* %30, %struct._GimpGradient** %flat, align 8
  %31 = load %struct._GimpGradient*, %struct._GimpGradient** %flat, align 8
  %segments = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %31, i32 0, i32 1
  %32 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments, align 8
  store %struct._GimpGradientSegment* %32, %struct._GimpGradientSegment** %seg, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.38
  %33 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %tobool44 = icmp ne %struct._GimpGradientSegment* %33, null
  br i1 %tobool44, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left_color_type = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %34, i32 0, i32 3
  %35 = load i32, i32* %left_color_type, align 4
  switch i32 %35, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.45
    i32 2, label %sw.bb.45
    i32 3, label %sw.bb.51
    i32 4, label %sw.bb.51
  ]

sw.bb:                                            ; preds = %for.body
  br label %sw.epilog

sw.bb.45:                                         ; preds = %for.body, %for.body
  %36 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %37 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %37, i32 0, i32 4
  call void @gimp_context_get_foreground(%struct._GimpContext* %36, %struct._GimpRGB* %left_color)
  %38 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left_color_type46 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %38, i32 0, i32 3
  %39 = load i32, i32* %left_color_type46, align 4
  %cmp47 = icmp eq i32 %39, 2
  br i1 %cmp47, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %sw.bb.45
  %40 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left_color49 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %40, i32 0, i32 4
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %left_color49, double 0.000000e+00)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %sw.bb.45
  br label %sw.epilog

sw.bb.51:                                         ; preds = %for.body, %for.body
  %41 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %42 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left_color52 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %42, i32 0, i32 4
  call void @gimp_context_get_background(%struct._GimpContext* %41, %struct._GimpRGB* %left_color52)
  %43 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left_color_type53 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %43, i32 0, i32 3
  %44 = load i32, i32* %left_color_type53, align 4
  %cmp54 = icmp eq i32 %44, 4
  br i1 %cmp54, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %sw.bb.51
  %45 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left_color56 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %45, i32 0, i32 4
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %left_color56, double 0.000000e+00)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %sw.bb.51
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %if.end.57, %if.end.50, %sw.bb
  %46 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left_color_type58 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %46, i32 0, i32 3
  store i32 0, i32* %left_color_type58, align 4
  %47 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right_color_type = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %47, i32 0, i32 5
  %48 = load i32, i32* %right_color_type, align 4
  switch i32 %48, label %sw.epilog.73 [
    i32 0, label %sw.bb.59
    i32 1, label %sw.bb.60
    i32 2, label %sw.bb.60
    i32 3, label %sw.bb.66
    i32 4, label %sw.bb.66
  ]

sw.bb.59:                                         ; preds = %sw.epilog
  br label %sw.epilog.73

sw.bb.60:                                         ; preds = %sw.epilog, %sw.epilog
  %49 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %50 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %50, i32 0, i32 6
  call void @gimp_context_get_foreground(%struct._GimpContext* %49, %struct._GimpRGB* %right_color)
  %51 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right_color_type61 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %51, i32 0, i32 5
  %52 = load i32, i32* %right_color_type61, align 4
  %cmp62 = icmp eq i32 %52, 2
  br i1 %cmp62, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %sw.bb.60
  %53 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right_color64 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %53, i32 0, i32 6
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %right_color64, double 0.000000e+00)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %sw.bb.60
  br label %sw.epilog.73

sw.bb.66:                                         ; preds = %sw.epilog, %sw.epilog
  %54 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %55 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right_color67 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %55, i32 0, i32 6
  call void @gimp_context_get_background(%struct._GimpContext* %54, %struct._GimpRGB* %right_color67)
  %56 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right_color_type68 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %56, i32 0, i32 5
  %57 = load i32, i32* %right_color_type68, align 4
  %cmp69 = icmp eq i32 %57, 4
  br i1 %cmp69, label %if.then.70, label %if.end.72

if.then.70:                                       ; preds = %sw.bb.66
  %58 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right_color71 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %58, i32 0, i32 6
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %right_color71, double 0.000000e+00)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.70, %sw.bb.66
  br label %sw.epilog.73

sw.epilog.73:                                     ; preds = %sw.epilog, %if.end.72, %if.end.65, %sw.bb.59
  %59 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right_color_type74 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %59, i32 0, i32 5
  store i32 0, i32* %right_color_type74, align 4
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog.73
  %60 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %next = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %60, i32 0, i32 10
  %61 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next, align 8
  store %struct._GimpGradientSegment* %61, %struct._GimpGradientSegment** %seg, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %62 = load %struct._GimpGradient*, %struct._GimpGradient** %flat, align 8
  store %struct._GimpGradient* %62, %struct._GimpGradient** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.36, %if.else.9
  %63 = load %struct._GimpGradient*, %struct._GimpGradient** %retval
  ret %struct._GimpGradient* %63
}

declare %struct._GimpData* @gimp_data_duplicate(%struct._GimpData*) #1

declare noalias i8* @g_slice_alloc(i64) #1

declare void @gimp_rgba_set(%struct._GimpRGB*, double, double, double, double) #1

; Function Attrs: nounwind uwtable
define void @gimp_gradient_segment_free(%struct._GimpGradientSegment* %seg) #3 {
entry:
  %seg.addr = alloca %struct._GimpGradientSegment*, align 8
  store %struct._GimpGradientSegment* %seg, %struct._GimpGradientSegment** %seg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %cmp = icmp ne %struct._GimpGradientSegment* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_gradient_segment_free, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0))
  br label %do.end.2

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %2 = bitcast %struct._GimpGradientSegment* %1 to i8*
  call void @g_slice_free1(i64 128, i8* %2)
  br label %do.end.2

do.end.2:                                         ; preds = %if.else, %do.body.1
  ret void
}

declare void @g_slice_free1(i64, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_gradient_segments_free(%struct._GimpGradientSegment* %seg) #3 {
entry:
  %seg.addr = alloca %struct._GimpGradientSegment*, align 8
  store %struct._GimpGradientSegment* %seg, %struct._GimpGradientSegment** %seg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %cmp = icmp ne %struct._GimpGradientSegment* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_gradient_segments_free, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0))
  br label %do.end.2

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %2 = bitcast %struct._GimpGradientSegment* %1 to i8*
  call void @g_slice_free_chain_with_offset(i64 128, i8* %2, i64 120)
  br label %do.end.2

do.end.2:                                         ; preds = %if.else, %do.body.1
  ret void
}

declare void @g_slice_free_chain_with_offset(i64, i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpGradientSegment* @gimp_gradient_segment_get_last(%struct._GimpGradientSegment* %seg) #3 {
entry:
  %retval = alloca %struct._GimpGradientSegment*, align 8
  %seg.addr = alloca %struct._GimpGradientSegment*, align 8
  store %struct._GimpGradientSegment* %seg, %struct._GimpGradientSegment** %seg.addr, align 8
  %0 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %tobool = icmp ne %struct._GimpGradientSegment* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %1 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %next = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %1, i32 0, i32 10
  %2 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next, align 8
  %tobool1 = icmp ne %struct._GimpGradientSegment* %2, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %next2 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %3, i32 0, i32 10
  %4 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next2, align 8
  store %struct._GimpGradientSegment* %4, %struct._GimpGradientSegment** %seg.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  store %struct._GimpGradientSegment* %5, %struct._GimpGradientSegment** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %6 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %retval
  ret %struct._GimpGradientSegment* %6
}

; Function Attrs: nounwind uwtable
define %struct._GimpGradientSegment* @gimp_gradient_segment_get_first(%struct._GimpGradientSegment* %seg) #3 {
entry:
  %retval = alloca %struct._GimpGradientSegment*, align 8
  %seg.addr = alloca %struct._GimpGradientSegment*, align 8
  store %struct._GimpGradientSegment* %seg, %struct._GimpGradientSegment** %seg.addr, align 8
  %0 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %tobool = icmp ne %struct._GimpGradientSegment* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %1 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %prev = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %1, i32 0, i32 9
  %2 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev, align 8
  %tobool1 = icmp ne %struct._GimpGradientSegment* %2, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %prev2 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %3, i32 0, i32 9
  %4 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev2, align 8
  store %struct._GimpGradientSegment* %4, %struct._GimpGradientSegment** %seg.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  store %struct._GimpGradientSegment* %5, %struct._GimpGradientSegment** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %6 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %retval
  ret %struct._GimpGradientSegment* %6
}

; Function Attrs: nounwind uwtable
define %struct._GimpGradientSegment* @gimp_gradient_segment_get_nth(%struct._GimpGradientSegment* %seg, i32 %index) #3 {
entry:
  %retval = alloca %struct._GimpGradientSegment*, align 8
  %seg.addr = alloca %struct._GimpGradientSegment*, align 8
  %index.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GimpGradientSegment* %seg, %struct._GimpGradientSegment** %seg.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  store i32 0, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %index.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_gradient_segment_get_nth, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0))
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %tobool = icmp ne %struct._GimpGradientSegment* %1, null
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %do.end
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %retval
  br label %return

if.end.2:                                         ; preds = %do.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.2
  %2 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %tobool3 = icmp ne %struct._GimpGradientSegment* %2, null
  br i1 %tobool3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %index.addr, align 4
  %cmp4 = icmp slt i32 %3, %4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %next = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %6, i32 0, i32 10
  %7 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next, align 8
  store %struct._GimpGradientSegment* %7, %struct._GimpGradientSegment** %seg.addr, align 8
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %index.addr, align 4
  %cmp5 = icmp eq i32 %9, %10
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %while.end
  %11 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  store %struct._GimpGradientSegment* %11, %struct._GimpGradientSegment** %retval
  br label %return

if.end.7:                                         ; preds = %while.end
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then.1, %if.else
  %12 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %retval
  ret %struct._GimpGradientSegment* %12
}

; Function Attrs: nounwind uwtable
define void @gimp_gradient_segment_split_midpoint(%struct._GimpGradient* %gradient, %struct._GimpContext* %context, %struct._GimpGradientSegment* %lseg, %struct._GimpGradientSegment** %newl, %struct._GimpGradientSegment** %newr) #3 {
entry:
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %lseg.addr = alloca %struct._GimpGradientSegment*, align 8
  %newl.addr = alloca %struct._GimpGradientSegment**, align 8
  %newr.addr = alloca %struct._GimpGradientSegment**, align 8
  %color = alloca %struct._GimpRGB, align 8
  %newseg = alloca %struct._GimpGradientSegment*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpGradientSegment* %lseg, %struct._GimpGradientSegment** %lseg.addr, align 8
  store %struct._GimpGradientSegment** %newl, %struct._GimpGradientSegment*** %newl.addr, align 8
  store %struct._GimpGradientSegment** %newr, %struct._GimpGradientSegment*** %newr.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %1 = bitcast %struct._GimpGradient* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_gradient_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_gradient_segment_split_midpoint, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_context_get_type() #8
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_gradient_segment_split_midpoint, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %cmp40 = icmp ne %struct._GimpGradientSegment* %26, null
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.39
  br label %if.end.43

if.else.42:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_gradient_segment_split_midpoint, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0))
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %do.body.45

do.body.45:                                       ; preds = %do.end.44
  %27 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %newl.addr, align 8
  %cmp46 = icmp ne %struct._GimpGradientSegment** %27, null
  br i1 %cmp46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %do.body.45
  br label %if.end.49

if.else.48:                                       ; preds = %do.body.45
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_gradient_segment_split_midpoint, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0))
  br label %return

if.end.49:                                        ; preds = %if.then.47
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  br label %do.body.51

do.body.51:                                       ; preds = %do.end.50
  %28 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %newr.addr, align 8
  %cmp52 = icmp ne %struct._GimpGradientSegment** %28, null
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %do.body.51
  br label %if.end.55

if.else.54:                                       ; preds = %do.body.51
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_gradient_segment_split_midpoint, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0))
  br label %return

if.end.55:                                        ; preds = %if.then.53
  br label %do.end.56

do.end.56:                                        ; preds = %if.end.55
  %29 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %30 = bitcast %struct._GimpGradient* %29 to %struct._GTypeInstance*
  %call57 = call i64 @gimp_data_get_type() #8
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call57)
  %31 = bitcast %struct._GTypeInstance* %call58 to %struct._GimpData*
  call void @gimp_data_freeze(%struct._GimpData* %31)
  %32 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %33 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %34 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %35 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %middle = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %35, i32 0, i32 1
  %36 = load double, double* %middle, align 8
  %call59 = call %struct._GimpGradientSegment* @gimp_gradient_get_color_at(%struct._GimpGradient* %32, %struct._GimpContext* %33, %struct._GimpGradientSegment* %34, double %36, i32 0, %struct._GimpRGB* %color)
  %call60 = call %struct._GimpGradientSegment* @gimp_gradient_segment_new()
  store %struct._GimpGradientSegment* %call60, %struct._GimpGradientSegment** %newseg, align 8
  %37 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %38 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %newseg, align 8
  %prev = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %38, i32 0, i32 9
  store %struct._GimpGradientSegment* %37, %struct._GimpGradientSegment** %prev, align 8
  %39 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %next = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %39, i32 0, i32 10
  %40 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next, align 8
  %41 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %newseg, align 8
  %next61 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %41, i32 0, i32 10
  store %struct._GimpGradientSegment* %40, %struct._GimpGradientSegment** %next61, align 8
  %42 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %newseg, align 8
  %43 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %next62 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %43, i32 0, i32 10
  store %struct._GimpGradientSegment* %42, %struct._GimpGradientSegment** %next62, align 8
  %44 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %newseg, align 8
  %next63 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %44, i32 0, i32 10
  %45 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next63, align 8
  %tobool64 = icmp ne %struct._GimpGradientSegment* %45, null
  br i1 %tobool64, label %if.then.65, label %if.end.68

if.then.65:                                       ; preds = %do.end.56
  %46 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %newseg, align 8
  %47 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %newseg, align 8
  %next66 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %47, i32 0, i32 10
  %48 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next66, align 8
  %prev67 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %48, i32 0, i32 9
  store %struct._GimpGradientSegment* %46, %struct._GimpGradientSegment** %prev67, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.65, %do.end.56
  %49 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %middle69 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %49, i32 0, i32 1
  %50 = load double, double* %middle69, align 8
  %51 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %newseg, align 8
  %left = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %51, i32 0, i32 0
  store double %50, double* %left, align 8
  %52 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %right = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %52, i32 0, i32 2
  %53 = load double, double* %right, align 8
  %54 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %newseg, align 8
  %right70 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %54, i32 0, i32 2
  store double %53, double* %right70, align 8
  %55 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %newseg, align 8
  %left71 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %55, i32 0, i32 0
  %56 = load double, double* %left71, align 8
  %57 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %newseg, align 8
  %right72 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %57, i32 0, i32 2
  %58 = load double, double* %right72, align 8
  %add = fadd double %56, %58
  %div = fdiv double %add, 2.000000e+00
  %59 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %newseg, align 8
  %middle73 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %59, i32 0, i32 1
  store double %div, double* %middle73, align 8
  %60 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %newseg, align 8
  %left74 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %60, i32 0, i32 0
  %61 = load double, double* %left74, align 8
  %62 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %right75 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %62, i32 0, i32 2
  store double %61, double* %right75, align 8
  %63 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %left76 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %63, i32 0, i32 0
  %64 = load double, double* %left76, align 8
  %65 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %right77 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %65, i32 0, i32 2
  %66 = load double, double* %right77, align 8
  %add78 = fadd double %64, %66
  %div79 = fdiv double %add78, 2.000000e+00
  %67 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %middle80 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %67, i32 0, i32 1
  store double %div79, double* %middle80, align 8
  %68 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %right_color_type = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %68, i32 0, i32 5
  %69 = load i32, i32* %right_color_type, align 4
  %70 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %newseg, align 8
  %right_color_type81 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %70, i32 0, i32 5
  store i32 %69, i32* %right_color_type81, align 4
  %71 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %newseg, align 8
  %right_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %71, i32 0, i32 6
  %72 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %right_color82 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %72, i32 0, i32 6
  %73 = bitcast %struct._GimpRGB* %right_color to i8*
  %74 = bitcast %struct._GimpRGB* %right_color82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* %74, i64 32, i32 8, i1 false)
  %75 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %newseg, align 8
  %left_color_type = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %75, i32 0, i32 3
  store i32 0, i32* %left_color_type, align 4
  %76 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %right_color_type83 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %76, i32 0, i32 5
  store i32 0, i32* %right_color_type83, align 4
  %77 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %right_color84 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %77, i32 0, i32 6
  %78 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %newseg, align 8
  %left_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %78, i32 0, i32 4
  %79 = bitcast %struct._GimpRGB* %left_color to i8*
  %80 = bitcast %struct._GimpRGB* %color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %79, i8* %80, i64 32, i32 8, i1 false)
  %81 = bitcast %struct._GimpRGB* %right_color84 to i8*
  %82 = bitcast %struct._GimpRGB* %left_color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %81, i8* %82, i64 32, i32 8, i1 false)
  %83 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %type = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %83, i32 0, i32 7
  %84 = load i32, i32* %type, align 4
  %85 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %newseg, align 8
  %type85 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %85, i32 0, i32 7
  store i32 %84, i32* %type85, align 4
  %86 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %color86 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %86, i32 0, i32 8
  %87 = load i32, i32* %color86, align 4
  %88 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %newseg, align 8
  %color87 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %88, i32 0, i32 8
  store i32 %87, i32* %color87, align 4
  %89 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %90 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %newl.addr, align 8
  store %struct._GimpGradientSegment* %89, %struct._GimpGradientSegment** %90, align 8
  %91 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %newseg, align 8
  %92 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %newr.addr, align 8
  store %struct._GimpGradientSegment* %91, %struct._GimpGradientSegment** %92, align 8
  %93 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %94 = bitcast %struct._GimpGradient* %93 to %struct._GTypeInstance*
  %call88 = call i64 @gimp_data_get_type() #8
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 %call88)
  %95 = bitcast %struct._GTypeInstance* %call89 to %struct._GimpData*
  call void @gimp_data_thaw(%struct._GimpData* %95)
  br label %return

return:                                           ; preds = %if.end.68, %if.else.54, %if.else.48, %if.else.42, %if.else.36, %if.else.9
  ret void
}

declare void @gimp_data_freeze(%struct._GimpData*) #1

declare void @gimp_data_thaw(%struct._GimpData*) #1

; Function Attrs: nounwind uwtable
define void @gimp_gradient_segment_split_uniform(%struct._GimpGradient* %gradient, %struct._GimpContext* %context, %struct._GimpGradientSegment* %lseg, i32 %parts, %struct._GimpGradientSegment** %newl, %struct._GimpGradientSegment** %newr) #3 {
entry:
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %lseg.addr = alloca %struct._GimpGradientSegment*, align 8
  %parts.addr = alloca i32, align 4
  %newl.addr = alloca %struct._GimpGradientSegment**, align 8
  %newr.addr = alloca %struct._GimpGradientSegment**, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  %prev = alloca %struct._GimpGradientSegment*, align 8
  %tmp = alloca %struct._GimpGradientSegment*, align 8
  %seg_len = alloca double, align 8
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp12 = alloca i32, align 4
  %__inst19 = alloca %struct._GTypeInstance*, align 8
  %__t21 = alloca i64, align 8
  %__r24 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpGradientSegment* %lseg, %struct._GimpGradientSegment** %lseg.addr, align 8
  store i32 %parts, i32* %parts.addr, align 4
  store %struct._GimpGradientSegment** %newl, %struct._GimpGradientSegment*** %newl.addr, align 8
  store %struct._GimpGradientSegment** %newr, %struct._GimpGradientSegment*** %newr.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %1 = bitcast %struct._GimpGradient* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_gradient_get_type() #8
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.11

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool6 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool6, label %land.lhs.true, label %if.else.9

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class7 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class7, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.9:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call10 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
  store i32 %call10, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.9, %if.then.8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp12
  %12 = load i32, i32* %tmp12
  %tobool13 = icmp ne i32 %12, 0
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.end.11
  br label %if.end.16

if.else.15:                                       ; preds = %if.end.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_gradient_segment_split_uniform, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.16
  br label %do.body.17

do.body.17:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst19, align 8
  %call22 = call i64 @gimp_context_get_type() #8
  store i64 %call22, i64* %__t21, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %tobool25 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool25, label %if.else.27, label %if.then.26

if.then.26:                                       ; preds = %do.body.17
  store i32 0, i32* %__r24, align 4
  br label %if.end.38

if.else.27:                                       ; preds = %do.body.17
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %tobool29 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool29, label %land.lhs.true.30, label %if.else.35

land.lhs.true.30:                                 ; preds = %if.else.27
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class31 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class31, align 8
  %g_type32 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type32, align 8
  %21 = load i64, i64* %__t21, align 8
  %cmp33 = icmp eq i64 %20, %21
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %land.lhs.true.30
  store i32 1, i32* %__r24, align 4
  br label %if.end.37

if.else.35:                                       ; preds = %land.lhs.true.30, %if.else.27
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %23 = load i64, i64* %__t21, align 8
  %call36 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
  store i32 %call36, i32* %__r24, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.then.34
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.26
  %24 = load i32, i32* %__r24, align 4
  store i32 %24, i32* %tmp39
  %25 = load i32, i32* %tmp39
  %tobool40 = icmp ne i32 %25, 0
  br i1 %tobool40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %if.end.38
  br label %if.end.43

if.else.42:                                       ; preds = %if.end.38
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_gradient_segment_split_uniform, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %do.body.45

do.body.45:                                       ; preds = %do.end.44
  %26 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %cmp46 = icmp ne %struct._GimpGradientSegment* %26, null
  br i1 %cmp46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %do.body.45
  br label %if.end.49

if.else.48:                                       ; preds = %do.body.45
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_gradient_segment_split_uniform, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0))
  br label %return

if.end.49:                                        ; preds = %if.then.47
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  br label %do.body.51

do.body.51:                                       ; preds = %do.end.50
  %27 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %newl.addr, align 8
  %cmp52 = icmp ne %struct._GimpGradientSegment** %27, null
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %do.body.51
  br label %if.end.55

if.else.54:                                       ; preds = %do.body.51
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_gradient_segment_split_uniform, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0))
  br label %return

if.end.55:                                        ; preds = %if.then.53
  br label %do.end.56

do.end.56:                                        ; preds = %if.end.55
  br label %do.body.57

do.body.57:                                       ; preds = %do.end.56
  %28 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %newr.addr, align 8
  %cmp58 = icmp ne %struct._GimpGradientSegment** %28, null
  br i1 %cmp58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %do.body.57
  br label %if.end.61

if.else.60:                                       ; preds = %do.body.57
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_gradient_segment_split_uniform, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0))
  br label %return

if.end.61:                                        ; preds = %if.then.59
  br label %do.end.62

do.end.62:                                        ; preds = %if.end.61
  %29 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %30 = bitcast %struct._GimpGradient* %29 to %struct._GTypeInstance*
  %call63 = call i64 @gimp_data_get_type() #8
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call63)
  %31 = bitcast %struct._GTypeInstance* %call64 to %struct._GimpData*
  call void @gimp_data_freeze(%struct._GimpData* %31)
  %32 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %right = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %32, i32 0, i32 2
  %33 = load double, double* %right, align 8
  %34 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %left = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %34, i32 0, i32 0
  %35 = load double, double* %left, align 8
  %sub = fsub double %33, %35
  %36 = load i32, i32* %parts.addr, align 4
  %conv = sitofp i32 %36 to double
  %div = fdiv double %sub, %conv
  store double %div, double* %seg_len, align 8
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %seg, align 8
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %prev, align 8
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %tmp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.62
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %parts.addr, align 4
  %cmp65 = icmp slt i32 %37, %38
  br i1 %cmp65, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call67 = call %struct._GimpGradientSegment* @gimp_gradient_segment_new()
  store %struct._GimpGradientSegment* %call67, %struct._GimpGradientSegment** %seg, align 8
  %39 = load i32, i32* %i, align 4
  %cmp68 = icmp eq i32 %39, 0
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %for.body
  %40 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  store %struct._GimpGradientSegment* %40, %struct._GimpGradientSegment** %tmp, align 8
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %for.body
  %41 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %left72 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %41, i32 0, i32 0
  %42 = load double, double* %left72, align 8
  %43 = load i32, i32* %i, align 4
  %conv73 = sitofp i32 %43 to double
  %44 = load double, double* %seg_len, align 8
  %mul = fmul double %conv73, %44
  %add = fadd double %42, %mul
  %45 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left74 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %45, i32 0, i32 0
  store double %add, double* %left74, align 8
  %46 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %left75 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %46, i32 0, i32 0
  %47 = load double, double* %left75, align 8
  %48 = load i32, i32* %i, align 4
  %add76 = add nsw i32 %48, 1
  %conv77 = sitofp i32 %add76 to double
  %49 = load double, double* %seg_len, align 8
  %mul78 = fmul double %conv77, %49
  %add79 = fadd double %47, %mul78
  %50 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right80 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %50, i32 0, i32 2
  store double %add79, double* %right80, align 8
  %51 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left81 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %51, i32 0, i32 0
  %52 = load double, double* %left81, align 8
  %53 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right82 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %53, i32 0, i32 2
  %54 = load double, double* %right82, align 8
  %add83 = fadd double %52, %54
  %div84 = fdiv double %add83, 2.000000e+00
  %55 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %middle = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %55, i32 0, i32 1
  store double %div84, double* %middle, align 8
  %56 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left_color_type = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %56, i32 0, i32 3
  store i32 0, i32* %left_color_type, align 4
  %57 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right_color_type = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %57, i32 0, i32 5
  store i32 0, i32* %right_color_type, align 4
  %58 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %59 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %60 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %61 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left85 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %61, i32 0, i32 0
  %62 = load double, double* %left85, align 8
  %63 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %63, i32 0, i32 4
  %call86 = call %struct._GimpGradientSegment* @gimp_gradient_get_color_at(%struct._GimpGradient* %58, %struct._GimpContext* %59, %struct._GimpGradientSegment* %60, double %62, i32 0, %struct._GimpRGB* %left_color)
  %64 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %65 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %66 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %67 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right87 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %67, i32 0, i32 2
  %68 = load double, double* %right87, align 8
  %69 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %69, i32 0, i32 6
  %call88 = call %struct._GimpGradientSegment* @gimp_gradient_get_color_at(%struct._GimpGradient* %64, %struct._GimpContext* %65, %struct._GimpGradientSegment* %66, double %68, i32 0, %struct._GimpRGB* %right_color)
  %70 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %type = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %70, i32 0, i32 7
  %71 = load i32, i32* %type, align 4
  %72 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %type89 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %72, i32 0, i32 7
  store i32 %71, i32* %type89, align 4
  %73 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %73, i32 0, i32 8
  %74 = load i32, i32* %color, align 4
  %75 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %color90 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %75, i32 0, i32 8
  store i32 %74, i32* %color90, align 4
  %76 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev, align 8
  %77 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %prev91 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %77, i32 0, i32 9
  store %struct._GimpGradientSegment* %76, %struct._GimpGradientSegment** %prev91, align 8
  %78 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %next = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %78, i32 0, i32 10
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %next, align 8
  %79 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev, align 8
  %tobool92 = icmp ne %struct._GimpGradientSegment* %79, null
  br i1 %tobool92, label %if.then.93, label %if.end.95

if.then.93:                                       ; preds = %if.end.71
  %80 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %81 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev, align 8
  %next94 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %81, i32 0, i32 10
  store %struct._GimpGradientSegment* %80, %struct._GimpGradientSegment** %next94, align 8
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.93, %if.end.71
  %82 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  store %struct._GimpGradientSegment* %82, %struct._GimpGradientSegment** %prev, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.95
  %83 = load i32, i32* %i, align 4
  %inc = add nsw i32 %83, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %84 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %left_color_type96 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %84, i32 0, i32 3
  %85 = load i32, i32* %left_color_type96, align 4
  %86 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %tmp, align 8
  %left_color_type97 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %86, i32 0, i32 3
  store i32 %85, i32* %left_color_type97, align 4
  %87 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %tmp, align 8
  %left_color98 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %87, i32 0, i32 4
  %88 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %left_color99 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %88, i32 0, i32 4
  %89 = bitcast %struct._GimpRGB* %left_color98 to i8*
  %90 = bitcast %struct._GimpRGB* %left_color99 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %89, i8* %90, i64 32, i32 8, i1 false)
  %91 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %right_color_type100 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %91, i32 0, i32 5
  %92 = load i32, i32* %right_color_type100, align 4
  %93 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right_color_type101 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %93, i32 0, i32 5
  store i32 %92, i32* %right_color_type101, align 4
  %94 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right_color102 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %94, i32 0, i32 6
  %95 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %right_color103 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %95, i32 0, i32 6
  %96 = bitcast %struct._GimpRGB* %right_color102 to i8*
  %97 = bitcast %struct._GimpRGB* %right_color103 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %96, i8* %97, i64 32, i32 8, i1 false)
  %98 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %left104 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %98, i32 0, i32 0
  %99 = load double, double* %left104, align 8
  %100 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %tmp, align 8
  %left105 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %100, i32 0, i32 0
  store double %99, double* %left105, align 8
  %101 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %right106 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %101, i32 0, i32 2
  %102 = load double, double* %right106, align 8
  %103 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right107 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %103, i32 0, i32 2
  store double %102, double* %right107, align 8
  %104 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %prev108 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %104, i32 0, i32 9
  %105 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev108, align 8
  %106 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %tmp, align 8
  %prev109 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %106, i32 0, i32 9
  store %struct._GimpGradientSegment* %105, %struct._GimpGradientSegment** %prev109, align 8
  %107 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %next110 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %107, i32 0, i32 10
  %108 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next110, align 8
  %109 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %next111 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %109, i32 0, i32 10
  store %struct._GimpGradientSegment* %108, %struct._GimpGradientSegment** %next111, align 8
  %110 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %prev112 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %110, i32 0, i32 9
  %111 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev112, align 8
  %tobool113 = icmp ne %struct._GimpGradientSegment* %111, null
  br i1 %tobool113, label %if.then.114, label %if.else.117

if.then.114:                                      ; preds = %for.end
  %112 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %tmp, align 8
  %113 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %prev115 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %113, i32 0, i32 9
  %114 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev115, align 8
  %next116 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %114, i32 0, i32 10
  store %struct._GimpGradientSegment* %112, %struct._GimpGradientSegment** %next116, align 8
  br label %if.end.118

if.else.117:                                      ; preds = %for.end
  %115 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %tmp, align 8
  %116 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %segments = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %116, i32 0, i32 1
  store %struct._GimpGradientSegment* %115, %struct._GimpGradientSegment** %segments, align 8
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.117, %if.then.114
  %117 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %next119 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %117, i32 0, i32 10
  %118 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next119, align 8
  %tobool120 = icmp ne %struct._GimpGradientSegment* %118, null
  br i1 %tobool120, label %if.then.121, label %if.end.124

if.then.121:                                      ; preds = %if.end.118
  %119 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %120 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %next122 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %120, i32 0, i32 10
  %121 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next122, align 8
  %prev123 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %121, i32 0, i32 9
  store %struct._GimpGradientSegment* %119, %struct._GimpGradientSegment** %prev123, align 8
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.121, %if.end.118
  %122 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %tmp, align 8
  %123 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %newl.addr, align 8
  store %struct._GimpGradientSegment* %122, %struct._GimpGradientSegment** %123, align 8
  %124 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %125 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %newr.addr, align 8
  store %struct._GimpGradientSegment* %124, %struct._GimpGradientSegment** %125, align 8
  %126 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  call void @gimp_gradient_segment_free(%struct._GimpGradientSegment* %126)
  %127 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %128 = bitcast %struct._GimpGradient* %127 to %struct._GTypeInstance*
  %call125 = call i64 @gimp_data_get_type() #8
  %call126 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %128, i64 %call125)
  %129 = bitcast %struct._GTypeInstance* %call126 to %struct._GimpData*
  call void @gimp_data_thaw(%struct._GimpData* %129)
  br label %return

return:                                           ; preds = %if.end.124, %if.else.60, %if.else.54, %if.else.48, %if.else.42, %if.else.15
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_gradient_segment_get_left_color(%struct._GimpGradient* %gradient, %struct._GimpGradientSegment* %seg, %struct._GimpRGB* %color) #3 {
entry:
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %seg.addr = alloca %struct._GimpGradientSegment*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store %struct._GimpGradientSegment* %seg, %struct._GimpGradientSegment** %seg.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %1 = bitcast %struct._GimpGradient* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_gradient_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_gradient_segment_get_left_color, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %cmp12 = icmp ne %struct._GimpGradientSegment* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_gradient_segment_get_left_color, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp18 = icmp ne %struct._GimpRGB* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_gradient_segment_get_left_color, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %16 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %left_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %16, i32 0, i32 4
  %17 = bitcast %struct._GimpRGB* %15 to i8*
  %18 = bitcast %struct._GimpRGB* %left_color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 32, i32 8, i1 false)
  br label %return

return:                                           ; preds = %do.end.22, %if.else.20, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_gradient_segment_set_left_color(%struct._GimpGradient* %gradient, %struct._GimpGradientSegment* %seg, %struct._GimpRGB* %color) #3 {
entry:
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %seg.addr = alloca %struct._GimpGradientSegment*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store %struct._GimpGradientSegment* %seg, %struct._GimpGradientSegment** %seg.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %1 = bitcast %struct._GimpGradient* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_gradient_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_gradient_segment_set_left_color, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %cmp12 = icmp ne %struct._GimpGradientSegment* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_gradient_segment_set_left_color, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp18 = icmp ne %struct._GimpRGB* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_gradient_segment_set_left_color, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %16 = bitcast %struct._GimpGradient* %15 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_data_get_type() #8
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call23)
  %17 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpData*
  call void @gimp_data_freeze(%struct._GimpData* %17)
  %18 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %19 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %20 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %21 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %22 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %right_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %22, i32 0, i32 6
  call void @gimp_gradient_segment_range_blend(%struct._GimpGradient* %18, %struct._GimpGradientSegment* %19, %struct._GimpGradientSegment* %20, %struct._GimpRGB* %21, %struct._GimpRGB* %right_color, i32 1, i32 1)
  %23 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %24 = bitcast %struct._GimpGradient* %23 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_data_get_type() #8
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call25)
  %25 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpData*
  call void @gimp_data_thaw(%struct._GimpData* %25)
  br label %return

return:                                           ; preds = %do.end.22, %if.else.20, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_gradient_segment_range_blend(%struct._GimpGradient* %gradient, %struct._GimpGradientSegment* %lseg, %struct._GimpGradientSegment* %rseg, %struct._GimpRGB* %rgb1, %struct._GimpRGB* %rgb2, i32 %blend_colors, i32 %blend_opacity) #3 {
entry:
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %lseg.addr = alloca %struct._GimpGradientSegment*, align 8
  %rseg.addr = alloca %struct._GimpGradientSegment*, align 8
  %rgb1.addr = alloca %struct._GimpRGB*, align 8
  %rgb2.addr = alloca %struct._GimpRGB*, align 8
  %blend_colors.addr = alloca i32, align 4
  %blend_opacity.addr = alloca i32, align 4
  %d = alloca %struct._GimpRGB, align 8
  %left = alloca double, align 8
  %len = alloca double, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  %aseg = alloca %struct._GimpGradientSegment*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store %struct._GimpGradientSegment* %lseg, %struct._GimpGradientSegment** %lseg.addr, align 8
  store %struct._GimpGradientSegment* %rseg, %struct._GimpGradientSegment** %rseg.addr, align 8
  store %struct._GimpRGB* %rgb1, %struct._GimpRGB** %rgb1.addr, align 8
  store %struct._GimpRGB* %rgb2, %struct._GimpRGB** %rgb2.addr, align 8
  store i32 %blend_colors, i32* %blend_colors.addr, align 4
  store i32 %blend_opacity, i32* %blend_opacity.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %1 = bitcast %struct._GimpGradient* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_gradient_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_gradient_segment_range_blend, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %cmp12 = icmp ne %struct._GimpGradientSegment* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_gradient_segment_range_blend, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %15 = bitcast %struct._GimpGradient* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_data_get_type() #8
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpData*
  call void @gimp_data_freeze(%struct._GimpData* %16)
  %17 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %rseg.addr, align 8
  %tobool19 = icmp ne %struct._GimpGradientSegment* %17, null
  br i1 %tobool19, label %if.end.22, label %if.then.20

if.then.20:                                       ; preds = %do.end.16
  %18 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %call21 = call %struct._GimpGradientSegment* @gimp_gradient_segment_get_last(%struct._GimpGradientSegment* %18)
  store %struct._GimpGradientSegment* %call21, %struct._GimpGradientSegment** %rseg.addr, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %do.end.16
  %19 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb2.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %19, i32 0, i32 0
  %20 = load double, double* %r, align 8
  %21 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb1.addr, align 8
  %r23 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %21, i32 0, i32 0
  %22 = load double, double* %r23, align 8
  %sub = fsub double %20, %22
  %r24 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %d, i32 0, i32 0
  store double %sub, double* %r24, align 8
  %23 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb2.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %23, i32 0, i32 1
  %24 = load double, double* %g, align 8
  %25 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb1.addr, align 8
  %g25 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %25, i32 0, i32 1
  %26 = load double, double* %g25, align 8
  %sub26 = fsub double %24, %26
  %g27 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %d, i32 0, i32 1
  store double %sub26, double* %g27, align 8
  %27 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb2.addr, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %27, i32 0, i32 2
  %28 = load double, double* %b, align 8
  %29 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb1.addr, align 8
  %b28 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %29, i32 0, i32 2
  %30 = load double, double* %b28, align 8
  %sub29 = fsub double %28, %30
  %b30 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %d, i32 0, i32 2
  store double %sub29, double* %b30, align 8
  %31 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb2.addr, align 8
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %31, i32 0, i32 3
  %32 = load double, double* %a, align 8
  %33 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb1.addr, align 8
  %a31 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %33, i32 0, i32 3
  %34 = load double, double* %a31, align 8
  %sub32 = fsub double %32, %34
  %a33 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %d, i32 0, i32 3
  store double %sub32, double* %a33, align 8
  %35 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  %left34 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %35, i32 0, i32 0
  %36 = load double, double* %left34, align 8
  store double %36, double* %left, align 8
  %37 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %rseg.addr, align 8
  %right = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %37, i32 0, i32 2
  %38 = load double, double* %right, align 8
  %39 = load double, double* %left, align 8
  %sub35 = fsub double %38, %39
  store double %sub35, double* %len, align 8
  %40 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg.addr, align 8
  store %struct._GimpGradientSegment* %40, %struct._GimpGradientSegment** %seg, align 8
  br label %do.body.36

do.body.36:                                       ; preds = %do.cond, %if.end.22
  %41 = load i32, i32* %blend_colors.addr, align 4
  %tobool37 = icmp ne i32 %41, 0
  br i1 %tobool37, label %if.then.38, label %if.end.88

if.then.38:                                       ; preds = %do.body.36
  %42 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb1.addr, align 8
  %r39 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %42, i32 0, i32 0
  %43 = load double, double* %r39, align 8
  %44 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left40 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %44, i32 0, i32 0
  %45 = load double, double* %left40, align 8
  %46 = load double, double* %left, align 8
  %sub41 = fsub double %45, %46
  %47 = load double, double* %len, align 8
  %div = fdiv double %sub41, %47
  %r42 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %d, i32 0, i32 0
  %48 = load double, double* %r42, align 8
  %mul = fmul double %div, %48
  %add = fadd double %43, %mul
  %49 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %49, i32 0, i32 4
  %r43 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %left_color, i32 0, i32 0
  store double %add, double* %r43, align 8
  %50 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb1.addr, align 8
  %g44 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %50, i32 0, i32 1
  %51 = load double, double* %g44, align 8
  %52 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left45 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %52, i32 0, i32 0
  %53 = load double, double* %left45, align 8
  %54 = load double, double* %left, align 8
  %sub46 = fsub double %53, %54
  %55 = load double, double* %len, align 8
  %div47 = fdiv double %sub46, %55
  %g48 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %d, i32 0, i32 1
  %56 = load double, double* %g48, align 8
  %mul49 = fmul double %div47, %56
  %add50 = fadd double %51, %mul49
  %57 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left_color51 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %57, i32 0, i32 4
  %g52 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %left_color51, i32 0, i32 1
  store double %add50, double* %g52, align 8
  %58 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb1.addr, align 8
  %b53 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %58, i32 0, i32 2
  %59 = load double, double* %b53, align 8
  %60 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left54 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %60, i32 0, i32 0
  %61 = load double, double* %left54, align 8
  %62 = load double, double* %left, align 8
  %sub55 = fsub double %61, %62
  %63 = load double, double* %len, align 8
  %div56 = fdiv double %sub55, %63
  %b57 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %d, i32 0, i32 2
  %64 = load double, double* %b57, align 8
  %mul58 = fmul double %div56, %64
  %add59 = fadd double %59, %mul58
  %65 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left_color60 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %65, i32 0, i32 4
  %b61 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %left_color60, i32 0, i32 2
  store double %add59, double* %b61, align 8
  %66 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb1.addr, align 8
  %r62 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %66, i32 0, i32 0
  %67 = load double, double* %r62, align 8
  %68 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right63 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %68, i32 0, i32 2
  %69 = load double, double* %right63, align 8
  %70 = load double, double* %left, align 8
  %sub64 = fsub double %69, %70
  %71 = load double, double* %len, align 8
  %div65 = fdiv double %sub64, %71
  %r66 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %d, i32 0, i32 0
  %72 = load double, double* %r66, align 8
  %mul67 = fmul double %div65, %72
  %add68 = fadd double %67, %mul67
  %73 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %73, i32 0, i32 6
  %r69 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %right_color, i32 0, i32 0
  store double %add68, double* %r69, align 8
  %74 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb1.addr, align 8
  %g70 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %74, i32 0, i32 1
  %75 = load double, double* %g70, align 8
  %76 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right71 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %76, i32 0, i32 2
  %77 = load double, double* %right71, align 8
  %78 = load double, double* %left, align 8
  %sub72 = fsub double %77, %78
  %79 = load double, double* %len, align 8
  %div73 = fdiv double %sub72, %79
  %g74 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %d, i32 0, i32 1
  %80 = load double, double* %g74, align 8
  %mul75 = fmul double %div73, %80
  %add76 = fadd double %75, %mul75
  %81 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right_color77 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %81, i32 0, i32 6
  %g78 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %right_color77, i32 0, i32 1
  store double %add76, double* %g78, align 8
  %82 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb1.addr, align 8
  %b79 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %82, i32 0, i32 2
  %83 = load double, double* %b79, align 8
  %84 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right80 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %84, i32 0, i32 2
  %85 = load double, double* %right80, align 8
  %86 = load double, double* %left, align 8
  %sub81 = fsub double %85, %86
  %87 = load double, double* %len, align 8
  %div82 = fdiv double %sub81, %87
  %b83 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %d, i32 0, i32 2
  %88 = load double, double* %b83, align 8
  %mul84 = fmul double %div82, %88
  %add85 = fadd double %83, %mul84
  %89 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right_color86 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %89, i32 0, i32 6
  %b87 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %right_color86, i32 0, i32 2
  store double %add85, double* %b87, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.38, %do.body.36
  %90 = load i32, i32* %blend_opacity.addr, align 4
  %tobool89 = icmp ne i32 %90, 0
  br i1 %tobool89, label %if.then.90, label %if.end.109

if.then.90:                                       ; preds = %if.end.88
  %91 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb1.addr, align 8
  %a91 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %91, i32 0, i32 3
  %92 = load double, double* %a91, align 8
  %93 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left92 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %93, i32 0, i32 0
  %94 = load double, double* %left92, align 8
  %95 = load double, double* %left, align 8
  %sub93 = fsub double %94, %95
  %96 = load double, double* %len, align 8
  %div94 = fdiv double %sub93, %96
  %a95 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %d, i32 0, i32 3
  %97 = load double, double* %a95, align 8
  %mul96 = fmul double %div94, %97
  %add97 = fadd double %92, %mul96
  %98 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left_color98 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %98, i32 0, i32 4
  %a99 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %left_color98, i32 0, i32 3
  store double %add97, double* %a99, align 8
  %99 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb1.addr, align 8
  %a100 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %99, i32 0, i32 3
  %100 = load double, double* %a100, align 8
  %101 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right101 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %101, i32 0, i32 2
  %102 = load double, double* %right101, align 8
  %103 = load double, double* %left, align 8
  %sub102 = fsub double %102, %103
  %104 = load double, double* %len, align 8
  %div103 = fdiv double %sub102, %104
  %a104 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %d, i32 0, i32 3
  %105 = load double, double* %a104, align 8
  %mul105 = fmul double %div103, %105
  %add106 = fadd double %100, %mul105
  %106 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right_color107 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %106, i32 0, i32 6
  %a108 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %right_color107, i32 0, i32 3
  store double %add106, double* %a108, align 8
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.90, %if.end.88
  %107 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  store %struct._GimpGradientSegment* %107, %struct._GimpGradientSegment** %aseg, align 8
  %108 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %next = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %108, i32 0, i32 10
  %109 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next, align 8
  store %struct._GimpGradientSegment* %109, %struct._GimpGradientSegment** %seg, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.109
  %110 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %aseg, align 8
  %111 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %rseg.addr, align 8
  %cmp110 = icmp ne %struct._GimpGradientSegment* %110, %111
  br i1 %cmp110, label %do.body.36, label %do.end.111

do.end.111:                                       ; preds = %do.cond
  %112 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %113 = bitcast %struct._GimpGradient* %112 to %struct._GTypeInstance*
  %call112 = call i64 @gimp_data_get_type() #8
  %call113 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %113, i64 %call112)
  %114 = bitcast %struct._GTypeInstance* %call113 to %struct._GimpData*
  call void @gimp_data_thaw(%struct._GimpData* %114)
  br label %return

return:                                           ; preds = %do.end.111, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_gradient_segment_get_right_color(%struct._GimpGradient* %gradient, %struct._GimpGradientSegment* %seg, %struct._GimpRGB* %color) #3 {
entry:
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %seg.addr = alloca %struct._GimpGradientSegment*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store %struct._GimpGradientSegment* %seg, %struct._GimpGradientSegment** %seg.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %1 = bitcast %struct._GimpGradient* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_gradient_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_gradient_segment_get_right_color, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %cmp12 = icmp ne %struct._GimpGradientSegment* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_gradient_segment_get_right_color, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp18 = icmp ne %struct._GimpRGB* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_gradient_segment_get_right_color, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %16 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %right_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %16, i32 0, i32 6
  %17 = bitcast %struct._GimpRGB* %15 to i8*
  %18 = bitcast %struct._GimpRGB* %right_color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 32, i32 8, i1 false)
  br label %return

return:                                           ; preds = %do.end.22, %if.else.20, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_gradient_segment_set_right_color(%struct._GimpGradient* %gradient, %struct._GimpGradientSegment* %seg, %struct._GimpRGB* %color) #3 {
entry:
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %seg.addr = alloca %struct._GimpGradientSegment*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store %struct._GimpGradientSegment* %seg, %struct._GimpGradientSegment** %seg.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %1 = bitcast %struct._GimpGradient* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_gradient_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_gradient_segment_set_right_color, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %cmp12 = icmp ne %struct._GimpGradientSegment* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_gradient_segment_set_right_color, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp18 = icmp ne %struct._GimpRGB* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_gradient_segment_set_right_color, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %16 = bitcast %struct._GimpGradient* %15 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_data_get_type() #8
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call23)
  %17 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpData*
  call void @gimp_data_freeze(%struct._GimpData* %17)
  %18 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %19 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %20 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %21 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %left_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %21, i32 0, i32 4
  %22 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_gradient_segment_range_blend(%struct._GimpGradient* %18, %struct._GimpGradientSegment* %19, %struct._GimpGradientSegment* %20, %struct._GimpRGB* %left_color, %struct._GimpRGB* %22, i32 1, i32 1)
  %23 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %24 = bitcast %struct._GimpGradient* %23 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_data_get_type() #8
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call25)
  %25 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpData*
  call void @gimp_data_thaw(%struct._GimpData* %25)
  br label %return

return:                                           ; preds = %do.end.22, %if.else.20, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_gradient_segment_get_left_color_type(%struct._GimpGradient* %gradient, %struct._GimpGradientSegment* %seg) #3 {
entry:
  %retval = alloca i32, align 4
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %seg.addr = alloca %struct._GimpGradientSegment*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store %struct._GimpGradientSegment* %seg, %struct._GimpGradientSegment** %seg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %1 = bitcast %struct._GimpGradient* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_gradient_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__func__.gimp_gradient_segment_get_left_color_type, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %cmp12 = icmp ne %struct._GimpGradientSegment* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__func__.gimp_gradient_segment_get_left_color_type, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %left_color_type = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %14, i32 0, i32 3
  %15 = load i32, i32* %left_color_type, align 4
  store i32 %15, i32* %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define void @gimp_gradient_segment_set_left_color_type(%struct._GimpGradient* %gradient, %struct._GimpGradientSegment* %seg, i32 %color_type) #3 {
entry:
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %seg.addr = alloca %struct._GimpGradientSegment*, align 8
  %color_type.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store %struct._GimpGradientSegment* %seg, %struct._GimpGradientSegment** %seg.addr, align 8
  store i32 %color_type, i32* %color_type.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %1 = bitcast %struct._GimpGradient* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_gradient_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__func__.gimp_gradient_segment_set_left_color_type, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %cmp12 = icmp ne %struct._GimpGradientSegment* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__func__.gimp_gradient_segment_set_left_color_type, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %15 = bitcast %struct._GimpGradient* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_data_get_type() #8
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpData*
  call void @gimp_data_freeze(%struct._GimpData* %16)
  %17 = load i32, i32* %color_type.addr, align 4
  %18 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %left_color_type = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %18, i32 0, i32 3
  store i32 %17, i32* %left_color_type, align 4
  %19 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %20 = bitcast %struct._GimpGradient* %19 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_data_get_type() #8
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call19)
  %21 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpData*
  call void @gimp_data_thaw(%struct._GimpData* %21)
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_gradient_segment_get_right_color_type(%struct._GimpGradient* %gradient, %struct._GimpGradientSegment* %seg) #3 {
entry:
  %retval = alloca i32, align 4
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %seg.addr = alloca %struct._GimpGradientSegment*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store %struct._GimpGradientSegment* %seg, %struct._GimpGradientSegment** %seg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %1 = bitcast %struct._GimpGradient* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_gradient_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__func__.gimp_gradient_segment_get_right_color_type, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %cmp12 = icmp ne %struct._GimpGradientSegment* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__func__.gimp_gradient_segment_get_right_color_type, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %right_color_type = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %14, i32 0, i32 5
  %15 = load i32, i32* %right_color_type, align 4
  store i32 %15, i32* %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define void @gimp_gradient_segment_set_right_color_type(%struct._GimpGradient* %gradient, %struct._GimpGradientSegment* %seg, i32 %color_type) #3 {
entry:
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %seg.addr = alloca %struct._GimpGradientSegment*, align 8
  %color_type.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store %struct._GimpGradientSegment* %seg, %struct._GimpGradientSegment** %seg.addr, align 8
  store i32 %color_type, i32* %color_type.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %1 = bitcast %struct._GimpGradient* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_gradient_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__func__.gimp_gradient_segment_set_right_color_type, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %cmp12 = icmp ne %struct._GimpGradientSegment* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__func__.gimp_gradient_segment_set_right_color_type, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %15 = bitcast %struct._GimpGradient* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_data_get_type() #8
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpData*
  call void @gimp_data_freeze(%struct._GimpData* %16)
  %17 = load i32, i32* %color_type.addr, align 4
  %18 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %right_color_type = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %18, i32 0, i32 5
  store i32 %17, i32* %right_color_type, align 4
  %19 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %20 = bitcast %struct._GimpGradient* %19 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_data_get_type() #8
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call19)
  %21 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpData*
  call void @gimp_data_thaw(%struct._GimpData* %21)
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define double @gimp_gradient_segment_get_left_pos(%struct._GimpGradient* %gradient, %struct._GimpGradientSegment* %seg) #3 {
entry:
  %retval = alloca double, align 8
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %seg.addr = alloca %struct._GimpGradientSegment*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store %struct._GimpGradientSegment* %seg, %struct._GimpGradientSegment** %seg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %1 = bitcast %struct._GimpGradient* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_gradient_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_gradient_segment_get_left_pos, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %cmp12 = icmp ne %struct._GimpGradientSegment* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_gradient_segment_get_left_pos, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %left = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %14, i32 0, i32 0
  %15 = load double, double* %left, align 8
  store double %15, double* %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  %16 = load double, double* %retval
  ret double %16
}

; Function Attrs: nounwind uwtable
define double @gimp_gradient_segment_set_left_pos(%struct._GimpGradient* %gradient, %struct._GimpGradientSegment* %seg, double %pos) #3 {
entry:
  %retval = alloca double, align 8
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %seg.addr = alloca %struct._GimpGradientSegment*, align 8
  %pos.addr = alloca double, align 8
  %final_pos = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store %struct._GimpGradientSegment* %seg, %struct._GimpGradientSegment** %seg.addr, align 8
  store double %pos, double* %pos.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %1 = bitcast %struct._GimpGradient* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_gradient_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_gradient_segment_set_left_pos, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %cmp12 = icmp ne %struct._GimpGradientSegment* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_gradient_segment_set_left_pos, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %prev = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %14, i32 0, i32 9
  %15 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev, align 8
  %cmp17 = icmp eq %struct._GimpGradientSegment* %15, null
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %do.end.16
  store double 0.000000e+00, double* %final_pos, align 8
  br label %if.end.38

if.else.19:                                       ; preds = %do.end.16
  %16 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %17 = bitcast %struct._GimpGradient* %16 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_data_get_type() #8
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call20)
  %18 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpData*
  call void @gimp_data_freeze(%struct._GimpData* %18)
  %19 = load double, double* %pos.addr, align 8
  %20 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %middle = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %20, i32 0, i32 1
  %21 = load double, double* %middle, align 8
  %sub = fsub double %21, 1.000000e-10
  %cmp22 = fcmp ogt double %19, %sub
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.19
  %22 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %middle23 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %22, i32 0, i32 1
  %23 = load double, double* %middle23, align 8
  %sub24 = fsub double %23, 1.000000e-10
  br label %cond.end.33

cond.false:                                       ; preds = %if.else.19
  %24 = load double, double* %pos.addr, align 8
  %25 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %prev25 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %25, i32 0, i32 9
  %26 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev25, align 8
  %middle26 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %26, i32 0, i32 1
  %27 = load double, double* %middle26, align 8
  %add = fadd double %27, 1.000000e-10
  %cmp27 = fcmp olt double %24, %add
  br i1 %cmp27, label %cond.true.28, label %cond.false.32

cond.true.28:                                     ; preds = %cond.false
  %28 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %prev29 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %28, i32 0, i32 9
  %29 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev29, align 8
  %middle30 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %29, i32 0, i32 1
  %30 = load double, double* %middle30, align 8
  %add31 = fadd double %30, 1.000000e-10
  br label %cond.end

cond.false.32:                                    ; preds = %cond.false
  %31 = load double, double* %pos.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.32, %cond.true.28
  %cond = phi double [ %add31, %cond.true.28 ], [ %31, %cond.false.32 ]
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.end, %cond.true
  %cond34 = phi double [ %sub24, %cond.true ], [ %cond, %cond.end ]
  %32 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %left = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %32, i32 0, i32 0
  store double %cond34, double* %left, align 8
  %33 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %prev35 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %33, i32 0, i32 9
  %34 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev35, align 8
  %right = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %34, i32 0, i32 2
  store double %cond34, double* %right, align 8
  store double %cond34, double* %final_pos, align 8
  %35 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %36 = bitcast %struct._GimpGradient* %35 to %struct._GTypeInstance*
  %call36 = call i64 @gimp_data_get_type() #8
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call36)
  %37 = bitcast %struct._GTypeInstance* %call37 to %struct._GimpData*
  call void @gimp_data_thaw(%struct._GimpData* %37)
  br label %if.end.38

if.end.38:                                        ; preds = %cond.end.33, %if.then.18
  %38 = load double, double* %final_pos, align 8
  store double %38, double* %retval
  br label %return

return:                                           ; preds = %if.end.38, %if.else.14, %if.else.9
  %39 = load double, double* %retval
  ret double %39
}

; Function Attrs: nounwind uwtable
define double @gimp_gradient_segment_get_right_pos(%struct._GimpGradient* %gradient, %struct._GimpGradientSegment* %seg) #3 {
entry:
  %retval = alloca double, align 8
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %seg.addr = alloca %struct._GimpGradientSegment*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store %struct._GimpGradientSegment* %seg, %struct._GimpGradientSegment** %seg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %1 = bitcast %struct._GimpGradient* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_gradient_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_gradient_segment_get_right_pos, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %cmp12 = icmp ne %struct._GimpGradientSegment* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_gradient_segment_get_right_pos, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %right = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %14, i32 0, i32 2
  %15 = load double, double* %right, align 8
  store double %15, double* %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  %16 = load double, double* %retval
  ret double %16
}

; Function Attrs: nounwind uwtable
define double @gimp_gradient_segment_set_right_pos(%struct._GimpGradient* %gradient, %struct._GimpGradientSegment* %seg, double %pos) #3 {
entry:
  %retval = alloca double, align 8
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %seg.addr = alloca %struct._GimpGradientSegment*, align 8
  %pos.addr = alloca double, align 8
  %final_pos = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store %struct._GimpGradientSegment* %seg, %struct._GimpGradientSegment** %seg.addr, align 8
  store double %pos, double* %pos.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %1 = bitcast %struct._GimpGradient* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_gradient_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_gradient_segment_set_right_pos, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %cmp12 = icmp ne %struct._GimpGradientSegment* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_gradient_segment_set_right_pos, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %next = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %14, i32 0, i32 10
  %15 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next, align 8
  %cmp17 = icmp eq %struct._GimpGradientSegment* %15, null
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %do.end.16
  store double 1.000000e+00, double* %final_pos, align 8
  br label %if.end.38

if.else.19:                                       ; preds = %do.end.16
  %16 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %17 = bitcast %struct._GimpGradient* %16 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_data_get_type() #8
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call20)
  %18 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpData*
  call void @gimp_data_freeze(%struct._GimpData* %18)
  %19 = load double, double* %pos.addr, align 8
  %20 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %next22 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %20, i32 0, i32 10
  %21 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next22, align 8
  %middle = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %21, i32 0, i32 1
  %22 = load double, double* %middle, align 8
  %sub = fsub double %22, 1.000000e-10
  %cmp23 = fcmp ogt double %19, %sub
  br i1 %cmp23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.19
  %23 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %next24 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %23, i32 0, i32 10
  %24 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next24, align 8
  %middle25 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %24, i32 0, i32 1
  %25 = load double, double* %middle25, align 8
  %sub26 = fsub double %25, 1.000000e-10
  br label %cond.end.33

cond.false:                                       ; preds = %if.else.19
  %26 = load double, double* %pos.addr, align 8
  %27 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %middle27 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %27, i32 0, i32 1
  %28 = load double, double* %middle27, align 8
  %add = fadd double %28, 1.000000e-10
  %cmp28 = fcmp olt double %26, %add
  br i1 %cmp28, label %cond.true.29, label %cond.false.32

cond.true.29:                                     ; preds = %cond.false
  %29 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %middle30 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %29, i32 0, i32 1
  %30 = load double, double* %middle30, align 8
  %add31 = fadd double %30, 1.000000e-10
  br label %cond.end

cond.false.32:                                    ; preds = %cond.false
  %31 = load double, double* %pos.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.32, %cond.true.29
  %cond = phi double [ %add31, %cond.true.29 ], [ %31, %cond.false.32 ]
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.end, %cond.true
  %cond34 = phi double [ %sub26, %cond.true ], [ %cond, %cond.end ]
  %32 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %right = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %32, i32 0, i32 2
  store double %cond34, double* %right, align 8
  %33 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %next35 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %33, i32 0, i32 10
  %34 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next35, align 8
  %left = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %34, i32 0, i32 0
  store double %cond34, double* %left, align 8
  store double %cond34, double* %final_pos, align 8
  %35 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %36 = bitcast %struct._GimpGradient* %35 to %struct._GTypeInstance*
  %call36 = call i64 @gimp_data_get_type() #8
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call36)
  %37 = bitcast %struct._GTypeInstance* %call37 to %struct._GimpData*
  call void @gimp_data_thaw(%struct._GimpData* %37)
  br label %if.end.38

if.end.38:                                        ; preds = %cond.end.33, %if.then.18
  %38 = load double, double* %final_pos, align 8
  store double %38, double* %retval
  br label %return

return:                                           ; preds = %if.end.38, %if.else.14, %if.else.9
  %39 = load double, double* %retval
  ret double %39
}

; Function Attrs: nounwind uwtable
define double @gimp_gradient_segment_get_middle_pos(%struct._GimpGradient* %gradient, %struct._GimpGradientSegment* %seg) #3 {
entry:
  %retval = alloca double, align 8
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %seg.addr = alloca %struct._GimpGradientSegment*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store %struct._GimpGradientSegment* %seg, %struct._GimpGradientSegment** %seg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %1 = bitcast %struct._GimpGradient* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_gradient_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_gradient_segment_get_middle_pos, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %cmp12 = icmp ne %struct._GimpGradientSegment* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_gradient_segment_get_middle_pos, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %middle = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %14, i32 0, i32 1
  %15 = load double, double* %middle, align 8
  store double %15, double* %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  %16 = load double, double* %retval
  ret double %16
}

; Function Attrs: nounwind uwtable
define double @gimp_gradient_segment_set_middle_pos(%struct._GimpGradient* %gradient, %struct._GimpGradientSegment* %seg, double %pos) #3 {
entry:
  %retval = alloca double, align 8
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %seg.addr = alloca %struct._GimpGradientSegment*, align 8
  %pos.addr = alloca double, align 8
  %final_pos = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store %struct._GimpGradientSegment* %seg, %struct._GimpGradientSegment** %seg.addr, align 8
  store double %pos, double* %pos.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %1 = bitcast %struct._GimpGradient* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_gradient_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_gradient_segment_set_middle_pos, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %cmp12 = icmp ne %struct._GimpGradientSegment* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_gradient_segment_set_middle_pos, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %15 = bitcast %struct._GimpGradient* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_data_get_type() #8
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpData*
  call void @gimp_data_freeze(%struct._GimpData* %16)
  %17 = load double, double* %pos.addr, align 8
  %18 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %right = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %18, i32 0, i32 2
  %19 = load double, double* %right, align 8
  %sub = fsub double %19, 1.000000e-10
  %cmp19 = fcmp ogt double %17, %sub
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.16
  %20 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %right20 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %20, i32 0, i32 2
  %21 = load double, double* %right20, align 8
  %sub21 = fsub double %21, 1.000000e-10
  br label %cond.end.27

cond.false:                                       ; preds = %do.end.16
  %22 = load double, double* %pos.addr, align 8
  %23 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %left = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %23, i32 0, i32 0
  %24 = load double, double* %left, align 8
  %add = fadd double %24, 1.000000e-10
  %cmp22 = fcmp olt double %22, %add
  br i1 %cmp22, label %cond.true.23, label %cond.false.26

cond.true.23:                                     ; preds = %cond.false
  %25 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %left24 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %25, i32 0, i32 0
  %26 = load double, double* %left24, align 8
  %add25 = fadd double %26, 1.000000e-10
  br label %cond.end

cond.false.26:                                    ; preds = %cond.false
  %27 = load double, double* %pos.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.26, %cond.true.23
  %cond = phi double [ %add25, %cond.true.23 ], [ %27, %cond.false.26 ]
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.end, %cond.true
  %cond28 = phi double [ %sub21, %cond.true ], [ %cond, %cond.end ]
  %28 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %middle = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %28, i32 0, i32 1
  store double %cond28, double* %middle, align 8
  store double %cond28, double* %final_pos, align 8
  %29 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %30 = bitcast %struct._GimpGradient* %29 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_data_get_type() #8
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call29)
  %31 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpData*
  call void @gimp_data_thaw(%struct._GimpData* %31)
  %32 = load double, double* %final_pos, align 8
  store double %32, double* %retval
  br label %return

return:                                           ; preds = %cond.end.27, %if.else.14, %if.else.9
  %33 = load double, double* %retval
  ret double %33
}

; Function Attrs: nounwind uwtable
define i32 @gimp_gradient_segment_get_blending_function(%struct._GimpGradient* %gradient, %struct._GimpGradientSegment* %seg) #3 {
entry:
  %retval = alloca i32, align 4
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %seg.addr = alloca %struct._GimpGradientSegment*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store %struct._GimpGradientSegment* %seg, %struct._GimpGradientSegment** %seg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %1 = bitcast %struct._GimpGradient* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_gradient_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__func__.gimp_gradient_segment_get_blending_function, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %type = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %13, i32 0, i32 7
  %14 = load i32, i32* %type, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @gimp_gradient_segment_get_coloring_type(%struct._GimpGradient* %gradient, %struct._GimpGradientSegment* %seg) #3 {
entry:
  %retval = alloca i32, align 4
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %seg.addr = alloca %struct._GimpGradientSegment*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store %struct._GimpGradientSegment* %seg, %struct._GimpGradientSegment** %seg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %1 = bitcast %struct._GimpGradient* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_gradient_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_gradient_segment_get_coloring_type, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg.addr, align 8
  %color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %13, i32 0, i32 8
  %14 = load i32, i32* %color, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define void @gimp_gradient_segment_range_compress(%struct._GimpGradient* %gradient, %struct._GimpGradientSegment* %range_l, %struct._GimpGradientSegment* %range_r, double %new_l, double %new_r) #3 {
entry:
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %range_l.addr = alloca %struct._GimpGradientSegment*, align 8
  %range_r.addr = alloca %struct._GimpGradientSegment*, align 8
  %new_l.addr = alloca double, align 8
  %new_r.addr = alloca double, align 8
  %orig_l = alloca double, align 8
  %orig_r = alloca double, align 8
  %scale = alloca double, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  %aseg = alloca %struct._GimpGradientSegment*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store %struct._GimpGradientSegment* %range_l, %struct._GimpGradientSegment** %range_l.addr, align 8
  store %struct._GimpGradientSegment* %range_r, %struct._GimpGradientSegment** %range_r.addr, align 8
  store double %new_l, double* %new_l.addr, align 8
  store double %new_r, double* %new_r.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %1 = bitcast %struct._GimpGradient* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_gradient_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_gradient_segment_range_compress, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_l.addr, align 8
  %cmp12 = icmp ne %struct._GimpGradientSegment* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_gradient_segment_range_compress, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %15 = bitcast %struct._GimpGradient* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_data_get_type() #8
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpData*
  call void @gimp_data_freeze(%struct._GimpData* %16)
  %17 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_r.addr, align 8
  %tobool19 = icmp ne %struct._GimpGradientSegment* %17, null
  br i1 %tobool19, label %if.end.22, label %if.then.20

if.then.20:                                       ; preds = %do.end.16
  %18 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_l.addr, align 8
  %call21 = call %struct._GimpGradientSegment* @gimp_gradient_segment_get_last(%struct._GimpGradientSegment* %18)
  store %struct._GimpGradientSegment* %call21, %struct._GimpGradientSegment** %range_r.addr, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %do.end.16
  %19 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_l.addr, align 8
  %left = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %19, i32 0, i32 0
  %20 = load double, double* %left, align 8
  store double %20, double* %orig_l, align 8
  %21 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_r.addr, align 8
  %right = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %21, i32 0, i32 2
  %22 = load double, double* %right, align 8
  store double %22, double* %orig_r, align 8
  %23 = load double, double* %new_r.addr, align 8
  %24 = load double, double* %new_l.addr, align 8
  %sub = fsub double %23, %24
  %25 = load double, double* %orig_r, align 8
  %26 = load double, double* %orig_l, align 8
  %sub23 = fsub double %25, %26
  %div = fdiv double %sub, %sub23
  store double %div, double* %scale, align 8
  %27 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_l.addr, align 8
  store %struct._GimpGradientSegment* %27, %struct._GimpGradientSegment** %seg, align 8
  br label %do.body.24

do.body.24:                                       ; preds = %do.cond, %if.end.22
  %28 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %prev = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %28, i32 0, i32 9
  %29 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev, align 8
  %tobool25 = icmp ne %struct._GimpGradientSegment* %29, null
  br i1 %tobool25, label %if.then.26, label %if.end.30

if.then.26:                                       ; preds = %do.body.24
  %30 = load double, double* %new_l.addr, align 8
  %31 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left27 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %31, i32 0, i32 0
  %32 = load double, double* %left27, align 8
  %33 = load double, double* %orig_l, align 8
  %sub28 = fsub double %32, %33
  %34 = load double, double* %scale, align 8
  %mul = fmul double %sub28, %34
  %add = fadd double %30, %mul
  %35 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left29 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %35, i32 0, i32 0
  store double %add, double* %left29, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.26, %do.body.24
  %36 = load double, double* %new_l.addr, align 8
  %37 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %middle = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %37, i32 0, i32 1
  %38 = load double, double* %middle, align 8
  %39 = load double, double* %orig_l, align 8
  %sub31 = fsub double %38, %39
  %40 = load double, double* %scale, align 8
  %mul32 = fmul double %sub31, %40
  %add33 = fadd double %36, %mul32
  %41 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %middle34 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %41, i32 0, i32 1
  store double %add33, double* %middle34, align 8
  %42 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %next = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %42, i32 0, i32 10
  %43 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next, align 8
  %tobool35 = icmp ne %struct._GimpGradientSegment* %43, null
  br i1 %tobool35, label %if.then.36, label %if.end.42

if.then.36:                                       ; preds = %if.end.30
  %44 = load double, double* %new_l.addr, align 8
  %45 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right37 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %45, i32 0, i32 2
  %46 = load double, double* %right37, align 8
  %47 = load double, double* %orig_l, align 8
  %sub38 = fsub double %46, %47
  %48 = load double, double* %scale, align 8
  %mul39 = fmul double %sub38, %48
  %add40 = fadd double %44, %mul39
  %49 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right41 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %49, i32 0, i32 2
  store double %add40, double* %right41, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.36, %if.end.30
  %50 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  store %struct._GimpGradientSegment* %50, %struct._GimpGradientSegment** %aseg, align 8
  %51 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %next43 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %51, i32 0, i32 10
  %52 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next43, align 8
  store %struct._GimpGradientSegment* %52, %struct._GimpGradientSegment** %seg, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.42
  %53 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %aseg, align 8
  %54 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_r.addr, align 8
  %cmp44 = icmp ne %struct._GimpGradientSegment* %53, %54
  br i1 %cmp44, label %do.body.24, label %do.end.45

do.end.45:                                        ; preds = %do.cond
  %55 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %56 = bitcast %struct._GimpGradient* %55 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_data_get_type() #8
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call46)
  %57 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpData*
  call void @gimp_data_thaw(%struct._GimpData* %57)
  br label %return

return:                                           ; preds = %do.end.45, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_gradient_segment_range_set_blending_function(%struct._GimpGradient* %gradient, %struct._GimpGradientSegment* %start_seg, %struct._GimpGradientSegment* %end_seg, i32 %new_type) #3 {
entry:
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %start_seg.addr = alloca %struct._GimpGradientSegment*, align 8
  %end_seg.addr = alloca %struct._GimpGradientSegment*, align 8
  %new_type.addr = alloca i32, align 4
  %seg = alloca %struct._GimpGradientSegment*, align 8
  %reached_last_segment = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store %struct._GimpGradientSegment* %start_seg, %struct._GimpGradientSegment** %start_seg.addr, align 8
  store %struct._GimpGradientSegment* %end_seg, %struct._GimpGradientSegment** %end_seg.addr, align 8
  store i32 %new_type, i32* %new_type.addr, align 4
  store i32 0, i32* %reached_last_segment, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %1 = bitcast %struct._GimpGradient* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_gradient_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__func__.gimp_gradient_segment_range_set_blending_function, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %14 = bitcast %struct._GimpGradient* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_data_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpData*
  call void @gimp_data_freeze(%struct._GimpData* %15)
  %16 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg.addr, align 8
  store %struct._GimpGradientSegment* %16, %struct._GimpGradientSegment** %seg, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.17, %do.end
  %17 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %tobool13 = icmp ne %struct._GimpGradientSegment* %17, null
  br i1 %tobool13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %18 = load i32, i32* %reached_last_segment, align 4
  %tobool14 = icmp ne i32 %18, 0
  %lnot = xor i1 %tobool14, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %19 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %19, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %20 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %21 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %end_seg.addr, align 8
  %cmp15 = icmp eq %struct._GimpGradientSegment* %20, %21
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %while.body
  store i32 1, i32* %reached_last_segment, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %while.body
  %22 = load i32, i32* %new_type.addr, align 4
  %23 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %type = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %23, i32 0, i32 7
  store i32 %22, i32* %type, align 4
  %24 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %next = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %24, i32 0, i32 10
  %25 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next, align 8
  store %struct._GimpGradientSegment* %25, %struct._GimpGradientSegment** %seg, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %26 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %27 = bitcast %struct._GimpGradient* %26 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_data_get_type() #8
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call18)
  %28 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpData*
  call void @gimp_data_thaw(%struct._GimpData* %28)
  br label %return

return:                                           ; preds = %while.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_gradient_segment_range_set_coloring_type(%struct._GimpGradient* %gradient, %struct._GimpGradientSegment* %start_seg, %struct._GimpGradientSegment* %end_seg, i32 %new_color) #3 {
entry:
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %start_seg.addr = alloca %struct._GimpGradientSegment*, align 8
  %end_seg.addr = alloca %struct._GimpGradientSegment*, align 8
  %new_color.addr = alloca i32, align 4
  %seg = alloca %struct._GimpGradientSegment*, align 8
  %reached_last_segment = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store %struct._GimpGradientSegment* %start_seg, %struct._GimpGradientSegment** %start_seg.addr, align 8
  store %struct._GimpGradientSegment* %end_seg, %struct._GimpGradientSegment** %end_seg.addr, align 8
  store i32 %new_color, i32* %new_color.addr, align 4
  store i32 0, i32* %reached_last_segment, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %1 = bitcast %struct._GimpGradient* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_gradient_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__func__.gimp_gradient_segment_range_set_coloring_type, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %14 = bitcast %struct._GimpGradient* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_data_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpData*
  call void @gimp_data_freeze(%struct._GimpData* %15)
  %16 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg.addr, align 8
  store %struct._GimpGradientSegment* %16, %struct._GimpGradientSegment** %seg, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.17, %do.end
  %17 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %tobool13 = icmp ne %struct._GimpGradientSegment* %17, null
  br i1 %tobool13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %18 = load i32, i32* %reached_last_segment, align 4
  %tobool14 = icmp ne i32 %18, 0
  %lnot = xor i1 %tobool14, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %19 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %19, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %20 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %21 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %end_seg.addr, align 8
  %cmp15 = icmp eq %struct._GimpGradientSegment* %20, %21
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %while.body
  store i32 1, i32* %reached_last_segment, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %while.body
  %22 = load i32, i32* %new_color.addr, align 4
  %23 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %23, i32 0, i32 8
  store i32 %22, i32* %color, align 4
  %24 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %next = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %24, i32 0, i32 10
  %25 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next, align 8
  store %struct._GimpGradientSegment* %25, %struct._GimpGradientSegment** %seg, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %26 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %27 = bitcast %struct._GimpGradient* %26 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_data_get_type() #8
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call18)
  %28 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpData*
  call void @gimp_data_thaw(%struct._GimpData* %28)
  br label %return

return:                                           ; preds = %while.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_gradient_segment_range_flip(%struct._GimpGradient* %gradient, %struct._GimpGradientSegment* %start_seg, %struct._GimpGradientSegment* %end_seg, %struct._GimpGradientSegment** %final_start_seg, %struct._GimpGradientSegment** %final_end_seg) #3 {
entry:
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %start_seg.addr = alloca %struct._GimpGradientSegment*, align 8
  %end_seg.addr = alloca %struct._GimpGradientSegment*, align 8
  %final_start_seg.addr = alloca %struct._GimpGradientSegment**, align 8
  %final_end_seg.addr = alloca %struct._GimpGradientSegment**, align 8
  %oseg = alloca %struct._GimpGradientSegment*, align 8
  %oaseg = alloca %struct._GimpGradientSegment*, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  %prev = alloca %struct._GimpGradientSegment*, align 8
  %tmp = alloca %struct._GimpGradientSegment*, align 8
  %lseg = alloca %struct._GimpGradientSegment*, align 8
  %rseg = alloca %struct._GimpGradientSegment*, align 8
  %left = alloca double, align 8
  %right = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp14 = alloca i32, align 4
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store %struct._GimpGradientSegment* %start_seg, %struct._GimpGradientSegment** %start_seg.addr, align 8
  store %struct._GimpGradientSegment* %end_seg, %struct._GimpGradientSegment** %end_seg.addr, align 8
  store %struct._GimpGradientSegment** %final_start_seg, %struct._GimpGradientSegment*** %final_start_seg.addr, align 8
  store %struct._GimpGradientSegment** %final_end_seg, %struct._GimpGradientSegment*** %final_end_seg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %1 = bitcast %struct._GimpGradient* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_gradient_get_type() #8
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.13

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool8 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool8, label %land.lhs.true, label %if.else.11

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class9 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class9, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.11:                                       ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call12 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
  store i32 %call12, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.11, %if.then.10
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp14
  %12 = load i32, i32* %tmp14
  %tobool15 = icmp ne i32 %12, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.end.13
  br label %if.end.18

if.else.17:                                       ; preds = %if.end.13
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_gradient_segment_range_flip, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.18
  %13 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %14 = bitcast %struct._GimpGradient* %13 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_data_get_type() #8
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call19)
  %15 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpData*
  call void @gimp_data_freeze(%struct._GimpData* %15)
  %16 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %end_seg.addr, align 8
  %tobool21 = icmp ne %struct._GimpGradientSegment* %16, null
  br i1 %tobool21, label %if.end.24, label %if.then.22

if.then.22:                                       ; preds = %do.end
  %17 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg.addr, align 8
  %call23 = call %struct._GimpGradientSegment* @gimp_gradient_segment_get_last(%struct._GimpGradientSegment* %17)
  store %struct._GimpGradientSegment* %call23, %struct._GimpGradientSegment** %end_seg.addr, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %do.end
  %18 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg.addr, align 8
  %left25 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %18, i32 0, i32 0
  %19 = load double, double* %left25, align 8
  store double %19, double* %left, align 8
  %20 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %end_seg.addr, align 8
  %right26 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %20, i32 0, i32 2
  %21 = load double, double* %right26, align 8
  store double %21, double* %right, align 8
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %prev, align 8
  %22 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %end_seg.addr, align 8
  store %struct._GimpGradientSegment* %22, %struct._GimpGradientSegment** %oseg, align 8
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %tmp, align 8
  br label %do.body.27

do.body.27:                                       ; preds = %do.cond, %if.end.24
  %call28 = call %struct._GimpGradientSegment* @gimp_gradient_segment_new()
  store %struct._GimpGradientSegment* %call28, %struct._GimpGradientSegment** %seg, align 8
  %23 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev, align 8
  %cmp29 = icmp eq %struct._GimpGradientSegment* %23, null
  br i1 %cmp29, label %if.then.30, label %if.else.32

if.then.30:                                       ; preds = %do.body.27
  %24 = load double, double* %left, align 8
  %25 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left31 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %25, i32 0, i32 0
  store double %24, double* %left31, align 8
  %26 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  store %struct._GimpGradientSegment* %26, %struct._GimpGradientSegment** %tmp, align 8
  br label %if.end.35

if.else.32:                                       ; preds = %do.body.27
  %27 = load double, double* %left, align 8
  %28 = load double, double* %right, align 8
  %add = fadd double %27, %28
  %29 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %oseg, align 8
  %right33 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %29, i32 0, i32 2
  %30 = load double, double* %right33, align 8
  %sub = fsub double %add, %30
  %31 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left34 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %31, i32 0, i32 0
  store double %sub, double* %left34, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.32, %if.then.30
  %32 = load double, double* %left, align 8
  %33 = load double, double* %right, align 8
  %add36 = fadd double %32, %33
  %34 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %oseg, align 8
  %middle = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %34, i32 0, i32 1
  %35 = load double, double* %middle, align 8
  %sub37 = fsub double %add36, %35
  %36 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %middle38 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %36, i32 0, i32 1
  store double %sub37, double* %middle38, align 8
  %37 = load double, double* %left, align 8
  %38 = load double, double* %right, align 8
  %add39 = fadd double %37, %38
  %39 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %oseg, align 8
  %left40 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %39, i32 0, i32 0
  %40 = load double, double* %left40, align 8
  %sub41 = fsub double %add39, %40
  %41 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right42 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %41, i32 0, i32 2
  store double %sub41, double* %right42, align 8
  %42 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %oseg, align 8
  %right_color_type = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %42, i32 0, i32 5
  %43 = load i32, i32* %right_color_type, align 4
  %44 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left_color_type = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %44, i32 0, i32 3
  store i32 %43, i32* %left_color_type, align 4
  %45 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %45, i32 0, i32 4
  %46 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %oseg, align 8
  %right_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %46, i32 0, i32 6
  %47 = bitcast %struct._GimpRGB* %left_color to i8*
  %48 = bitcast %struct._GimpRGB* %right_color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 32, i32 8, i1 false)
  %49 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %oseg, align 8
  %left_color_type43 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %49, i32 0, i32 3
  %50 = load i32, i32* %left_color_type43, align 4
  %51 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right_color_type44 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %51, i32 0, i32 5
  store i32 %50, i32* %right_color_type44, align 4
  %52 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right_color45 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %52, i32 0, i32 6
  %53 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %oseg, align 8
  %left_color46 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %53, i32 0, i32 4
  %54 = bitcast %struct._GimpRGB* %right_color45 to i8*
  %55 = bitcast %struct._GimpRGB* %left_color46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 32, i32 8, i1 false)
  %56 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %oseg, align 8
  %type = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %56, i32 0, i32 7
  %57 = load i32, i32* %type, align 4
  switch i32 %57, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb.48
  ]

sw.bb:                                            ; preds = %if.end.35
  %58 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %type47 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %58, i32 0, i32 7
  store i32 4, i32* %type47, align 4
  br label %sw.epilog

sw.bb.48:                                         ; preds = %if.end.35
  %59 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %type49 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %59, i32 0, i32 7
  store i32 3, i32* %type49, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.35
  %60 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %oseg, align 8
  %type50 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %60, i32 0, i32 7
  %61 = load i32, i32* %type50, align 4
  %62 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %type51 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %62, i32 0, i32 7
  store i32 %61, i32* %type51, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.48, %sw.bb
  %63 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %oseg, align 8
  %color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %63, i32 0, i32 8
  %64 = load i32, i32* %color, align 4
  switch i32 %64, label %sw.default.56 [
    i32 1, label %sw.bb.52
    i32 2, label %sw.bb.54
  ]

sw.bb.52:                                         ; preds = %sw.epilog
  %65 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %color53 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %65, i32 0, i32 8
  store i32 2, i32* %color53, align 4
  br label %sw.epilog.59

sw.bb.54:                                         ; preds = %sw.epilog
  %66 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %color55 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %66, i32 0, i32 8
  store i32 1, i32* %color55, align 4
  br label %sw.epilog.59

sw.default.56:                                    ; preds = %sw.epilog
  %67 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %oseg, align 8
  %color57 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %67, i32 0, i32 8
  %68 = load i32, i32* %color57, align 4
  %69 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %color58 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %69, i32 0, i32 8
  store i32 %68, i32* %color58, align 4
  br label %sw.epilog.59

sw.epilog.59:                                     ; preds = %sw.default.56, %sw.bb.54, %sw.bb.52
  %70 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev, align 8
  %71 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %prev60 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %71, i32 0, i32 9
  store %struct._GimpGradientSegment* %70, %struct._GimpGradientSegment** %prev60, align 8
  %72 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %next = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %72, i32 0, i32 10
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %next, align 8
  %73 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev, align 8
  %tobool61 = icmp ne %struct._GimpGradientSegment* %73, null
  br i1 %tobool61, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %sw.epilog.59
  %74 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %75 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev, align 8
  %next63 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %75, i32 0, i32 10
  store %struct._GimpGradientSegment* %74, %struct._GimpGradientSegment** %next63, align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %sw.epilog.59
  %76 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  store %struct._GimpGradientSegment* %76, %struct._GimpGradientSegment** %prev, align 8
  %77 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %oseg, align 8
  store %struct._GimpGradientSegment* %77, %struct._GimpGradientSegment** %oaseg, align 8
  %78 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %oseg, align 8
  %prev65 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %78, i32 0, i32 9
  %79 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev65, align 8
  store %struct._GimpGradientSegment* %79, %struct._GimpGradientSegment** %oseg, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.64
  %80 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %oaseg, align 8
  %81 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg.addr, align 8
  %cmp66 = icmp ne %struct._GimpGradientSegment* %80, %81
  br i1 %cmp66, label %do.body.27, label %do.end.67

do.end.67:                                        ; preds = %do.cond
  %82 = load double, double* %right, align 8
  %83 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right68 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %83, i32 0, i32 2
  store double %82, double* %right68, align 8
  %84 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg.addr, align 8
  %prev69 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %84, i32 0, i32 9
  %85 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev69, align 8
  store %struct._GimpGradientSegment* %85, %struct._GimpGradientSegment** %lseg, align 8
  %86 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %end_seg.addr, align 8
  %next70 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %86, i32 0, i32 10
  %87 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next70, align 8
  store %struct._GimpGradientSegment* %87, %struct._GimpGradientSegment** %rseg, align 8
  %88 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg.addr, align 8
  store %struct._GimpGradientSegment* %88, %struct._GimpGradientSegment** %oseg, align 8
  br label %do.body.71

do.body.71:                                       ; preds = %do.cond.73, %do.end.67
  %89 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %oseg, align 8
  %next72 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %89, i32 0, i32 10
  %90 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next72, align 8
  store %struct._GimpGradientSegment* %90, %struct._GimpGradientSegment** %oaseg, align 8
  %91 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %oseg, align 8
  call void @gimp_gradient_segment_free(%struct._GimpGradientSegment* %91)
  %92 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %oaseg, align 8
  store %struct._GimpGradientSegment* %92, %struct._GimpGradientSegment** %oseg, align 8
  br label %do.cond.73

do.cond.73:                                       ; preds = %do.body.71
  %93 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %oaseg, align 8
  %94 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %rseg, align 8
  %cmp74 = icmp ne %struct._GimpGradientSegment* %93, %94
  br i1 %cmp74, label %do.body.71, label %do.end.75

do.end.75:                                        ; preds = %do.cond.73
  %95 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg, align 8
  %tobool76 = icmp ne %struct._GimpGradientSegment* %95, null
  br i1 %tobool76, label %if.then.77, label %if.else.79

if.then.77:                                       ; preds = %do.end.75
  %96 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %tmp, align 8
  %97 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg, align 8
  %next78 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %97, i32 0, i32 10
  store %struct._GimpGradientSegment* %96, %struct._GimpGradientSegment** %next78, align 8
  br label %if.end.80

if.else.79:                                       ; preds = %do.end.75
  %98 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %tmp, align 8
  %99 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %segments = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %99, i32 0, i32 1
  store %struct._GimpGradientSegment* %98, %struct._GimpGradientSegment** %segments, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.79, %if.then.77
  %100 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg, align 8
  %101 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %tmp, align 8
  %prev81 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %101, i32 0, i32 9
  store %struct._GimpGradientSegment* %100, %struct._GimpGradientSegment** %prev81, align 8
  %102 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %rseg, align 8
  %103 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %next82 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %103, i32 0, i32 10
  store %struct._GimpGradientSegment* %102, %struct._GimpGradientSegment** %next82, align 8
  %104 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %rseg, align 8
  %tobool83 = icmp ne %struct._GimpGradientSegment* %104, null
  br i1 %tobool83, label %if.then.84, label %if.end.86

if.then.84:                                       ; preds = %if.end.80
  %105 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %106 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %rseg, align 8
  %prev85 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %106, i32 0, i32 9
  store %struct._GimpGradientSegment* %105, %struct._GimpGradientSegment** %prev85, align 8
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.84, %if.end.80
  %107 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %final_start_seg.addr, align 8
  %tobool87 = icmp ne %struct._GimpGradientSegment** %107, null
  br i1 %tobool87, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %if.end.86
  %108 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %tmp, align 8
  %109 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %final_start_seg.addr, align 8
  store %struct._GimpGradientSegment* %108, %struct._GimpGradientSegment** %109, align 8
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.88, %if.end.86
  %110 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %final_end_seg.addr, align 8
  %tobool90 = icmp ne %struct._GimpGradientSegment** %110, null
  br i1 %tobool90, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.end.89
  %111 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %112 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %final_end_seg.addr, align 8
  store %struct._GimpGradientSegment* %111, %struct._GimpGradientSegment** %112, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %if.end.89
  %113 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %114 = bitcast %struct._GimpGradient* %113 to %struct._GTypeInstance*
  %call93 = call i64 @gimp_data_get_type() #8
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %114, i64 %call93)
  %115 = bitcast %struct._GTypeInstance* %call94 to %struct._GimpData*
  call void @gimp_data_thaw(%struct._GimpData* %115)
  br label %return

return:                                           ; preds = %if.end.92, %if.else.17
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_gradient_segment_range_replicate(%struct._GimpGradient* %gradient, %struct._GimpGradientSegment* %start_seg, %struct._GimpGradientSegment* %end_seg, i32 %replicate_times, %struct._GimpGradientSegment** %final_start_seg, %struct._GimpGradientSegment** %final_end_seg) #3 {
entry:
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %start_seg.addr = alloca %struct._GimpGradientSegment*, align 8
  %end_seg.addr = alloca %struct._GimpGradientSegment*, align 8
  %replicate_times.addr = alloca i32, align 4
  %final_start_seg.addr = alloca %struct._GimpGradientSegment**, align 8
  %final_end_seg.addr = alloca %struct._GimpGradientSegment**, align 8
  %sel_left = alloca double, align 8
  %sel_right = alloca double, align 8
  %sel_len = alloca double, align 8
  %new_left = alloca double, align 8
  %factor = alloca double, align 8
  %prev = alloca %struct._GimpGradientSegment*, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  %tmp = alloca %struct._GimpGradientSegment*, align 8
  %oseg = alloca %struct._GimpGradientSegment*, align 8
  %oaseg = alloca %struct._GimpGradientSegment*, align 8
  %lseg = alloca %struct._GimpGradientSegment*, align 8
  %rseg = alloca %struct._GimpGradientSegment*, align 8
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp15 = alloca i32, align 4
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store %struct._GimpGradientSegment* %start_seg, %struct._GimpGradientSegment** %start_seg.addr, align 8
  store %struct._GimpGradientSegment* %end_seg, %struct._GimpGradientSegment** %end_seg.addr, align 8
  store i32 %replicate_times, i32* %replicate_times.addr, align 4
  store %struct._GimpGradientSegment** %final_start_seg, %struct._GimpGradientSegment*** %final_start_seg.addr, align 8
  store %struct._GimpGradientSegment** %final_end_seg, %struct._GimpGradientSegment*** %final_end_seg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %1 = bitcast %struct._GimpGradient* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_gradient_get_type() #8
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.14

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool9 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool9, label %land.lhs.true, label %if.else.12

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class10 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class10, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.12:                                       ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call13 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
  store i32 %call13, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.12, %if.then.11
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp15
  %12 = load i32, i32* %tmp15
  %tobool16 = icmp ne i32 %12, 0
  br i1 %tobool16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.end.14
  br label %if.end.19

if.else.18:                                       ; preds = %if.end.14
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_gradient_segment_range_replicate, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.19:                                        ; preds = %if.then.17
  br label %do.end

do.end:                                           ; preds = %if.end.19
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %end_seg.addr, align 8
  %tobool20 = icmp ne %struct._GimpGradientSegment* %13, null
  br i1 %tobool20, label %if.end.23, label %if.then.21

if.then.21:                                       ; preds = %do.end
  %14 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg.addr, align 8
  %call22 = call %struct._GimpGradientSegment* @gimp_gradient_segment_get_last(%struct._GimpGradientSegment* %14)
  store %struct._GimpGradientSegment* %call22, %struct._GimpGradientSegment** %end_seg.addr, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %do.end
  %15 = load i32, i32* %replicate_times.addr, align 4
  %cmp24 = icmp slt i32 %15, 2
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.23
  %16 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg.addr, align 8
  %17 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %final_start_seg.addr, align 8
  store %struct._GimpGradientSegment* %16, %struct._GimpGradientSegment** %17, align 8
  %18 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %end_seg.addr, align 8
  %19 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %final_end_seg.addr, align 8
  store %struct._GimpGradientSegment* %18, %struct._GimpGradientSegment** %19, align 8
  br label %return

if.end.26:                                        ; preds = %if.end.23
  %20 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %21 = bitcast %struct._GimpGradient* %20 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_data_get_type() #8
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call27)
  %22 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpData*
  call void @gimp_data_freeze(%struct._GimpData* %22)
  %23 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg.addr, align 8
  %left = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %23, i32 0, i32 0
  %24 = load double, double* %left, align 8
  store double %24, double* %sel_left, align 8
  %25 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %end_seg.addr, align 8
  %right = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %25, i32 0, i32 2
  %26 = load double, double* %right, align 8
  store double %26, double* %sel_right, align 8
  %27 = load double, double* %sel_right, align 8
  %28 = load double, double* %sel_left, align 8
  %sub = fsub double %27, %28
  store double %sub, double* %sel_len, align 8
  %29 = load i32, i32* %replicate_times.addr, align 4
  %conv = sitofp i32 %29 to double
  %div = fdiv double 1.000000e+00, %conv
  store double %div, double* %factor, align 8
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %prev, align 8
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %seg, align 8
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %tmp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.26
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %replicate_times.addr, align 4
  %cmp29 = icmp slt i32 %30, %31
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load double, double* %sel_left, align 8
  %33 = load i32, i32* %i, align 4
  %conv31 = sitofp i32 %33 to double
  %34 = load double, double* %factor, align 8
  %mul = fmul double %conv31, %34
  %35 = load double, double* %sel_len, align 8
  %mul32 = fmul double %mul, %35
  %add = fadd double %32, %mul32
  store double %add, double* %new_left, align 8
  %36 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg.addr, align 8
  store %struct._GimpGradientSegment* %36, %struct._GimpGradientSegment** %oseg, align 8
  br label %do.body.33

do.body.33:                                       ; preds = %do.cond, %for.body
  %call34 = call %struct._GimpGradientSegment* @gimp_gradient_segment_new()
  store %struct._GimpGradientSegment* %call34, %struct._GimpGradientSegment** %seg, align 8
  %37 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev, align 8
  %cmp35 = icmp eq %struct._GimpGradientSegment* %37, null
  br i1 %cmp35, label %if.then.37, label %if.else.39

if.then.37:                                       ; preds = %do.body.33
  %38 = load double, double* %sel_left, align 8
  %39 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left38 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %39, i32 0, i32 0
  store double %38, double* %left38, align 8
  %40 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  store %struct._GimpGradientSegment* %40, %struct._GimpGradientSegment** %tmp, align 8
  br label %if.end.45

if.else.39:                                       ; preds = %do.body.33
  %41 = load double, double* %new_left, align 8
  %42 = load double, double* %factor, align 8
  %43 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %oseg, align 8
  %left40 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %43, i32 0, i32 0
  %44 = load double, double* %left40, align 8
  %45 = load double, double* %sel_left, align 8
  %sub41 = fsub double %44, %45
  %mul42 = fmul double %42, %sub41
  %add43 = fadd double %41, %mul42
  %46 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left44 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %46, i32 0, i32 0
  store double %add43, double* %left44, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.39, %if.then.37
  %47 = load double, double* %new_left, align 8
  %48 = load double, double* %factor, align 8
  %49 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %oseg, align 8
  %middle = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %49, i32 0, i32 1
  %50 = load double, double* %middle, align 8
  %51 = load double, double* %sel_left, align 8
  %sub46 = fsub double %50, %51
  %mul47 = fmul double %48, %sub46
  %add48 = fadd double %47, %mul47
  %52 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %middle49 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %52, i32 0, i32 1
  store double %add48, double* %middle49, align 8
  %53 = load double, double* %new_left, align 8
  %54 = load double, double* %factor, align 8
  %55 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %oseg, align 8
  %right50 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %55, i32 0, i32 2
  %56 = load double, double* %right50, align 8
  %57 = load double, double* %sel_left, align 8
  %sub51 = fsub double %56, %57
  %mul52 = fmul double %54, %sub51
  %add53 = fadd double %53, %mul52
  %58 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right54 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %58, i32 0, i32 2
  store double %add53, double* %right54, align 8
  %59 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %oseg, align 8
  %left_color_type = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %59, i32 0, i32 3
  %60 = load i32, i32* %left_color_type, align 4
  %61 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left_color_type55 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %61, i32 0, i32 3
  store i32 %60, i32* %left_color_type55, align 4
  %62 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %62, i32 0, i32 4
  %63 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %oseg, align 8
  %left_color56 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %63, i32 0, i32 4
  %64 = bitcast %struct._GimpRGB* %left_color to i8*
  %65 = bitcast %struct._GimpRGB* %left_color56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %65, i64 32, i32 8, i1 false)
  %66 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %oseg, align 8
  %right_color_type = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %66, i32 0, i32 5
  %67 = load i32, i32* %right_color_type, align 4
  %68 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right_color_type57 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %68, i32 0, i32 5
  store i32 %67, i32* %right_color_type57, align 4
  %69 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %69, i32 0, i32 6
  %70 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %oseg, align 8
  %right_color58 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %70, i32 0, i32 6
  %71 = bitcast %struct._GimpRGB* %right_color to i8*
  %72 = bitcast %struct._GimpRGB* %right_color58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* %72, i64 32, i32 8, i1 false)
  %73 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %oseg, align 8
  %type = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %73, i32 0, i32 7
  %74 = load i32, i32* %type, align 4
  %75 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %type59 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %75, i32 0, i32 7
  store i32 %74, i32* %type59, align 4
  %76 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %oseg, align 8
  %color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %76, i32 0, i32 8
  %77 = load i32, i32* %color, align 4
  %78 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %color60 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %78, i32 0, i32 8
  store i32 %77, i32* %color60, align 4
  %79 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev, align 8
  %80 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %prev61 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %80, i32 0, i32 9
  store %struct._GimpGradientSegment* %79, %struct._GimpGradientSegment** %prev61, align 8
  %81 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %next = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %81, i32 0, i32 10
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %next, align 8
  %82 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev, align 8
  %tobool62 = icmp ne %struct._GimpGradientSegment* %82, null
  br i1 %tobool62, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %if.end.45
  %83 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %84 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev, align 8
  %next64 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %84, i32 0, i32 10
  store %struct._GimpGradientSegment* %83, %struct._GimpGradientSegment** %next64, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %if.end.45
  %85 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  store %struct._GimpGradientSegment* %85, %struct._GimpGradientSegment** %prev, align 8
  %86 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %oseg, align 8
  store %struct._GimpGradientSegment* %86, %struct._GimpGradientSegment** %oaseg, align 8
  %87 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %oseg, align 8
  %next66 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %87, i32 0, i32 10
  %88 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next66, align 8
  store %struct._GimpGradientSegment* %88, %struct._GimpGradientSegment** %oseg, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.65
  %89 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %oaseg, align 8
  %90 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %end_seg.addr, align 8
  %cmp67 = icmp ne %struct._GimpGradientSegment* %89, %90
  br i1 %cmp67, label %do.body.33, label %do.end.69

do.end.69:                                        ; preds = %do.cond
  br label %for.inc

for.inc:                                          ; preds = %do.end.69
  %91 = load i32, i32* %i, align 4
  %inc = add nsw i32 %91, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %92 = load double, double* %sel_right, align 8
  %93 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right70 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %93, i32 0, i32 2
  store double %92, double* %right70, align 8
  %94 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg.addr, align 8
  %prev71 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %94, i32 0, i32 9
  %95 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev71, align 8
  store %struct._GimpGradientSegment* %95, %struct._GimpGradientSegment** %lseg, align 8
  %96 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %end_seg.addr, align 8
  %next72 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %96, i32 0, i32 10
  %97 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next72, align 8
  store %struct._GimpGradientSegment* %97, %struct._GimpGradientSegment** %rseg, align 8
  %98 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg.addr, align 8
  store %struct._GimpGradientSegment* %98, %struct._GimpGradientSegment** %oseg, align 8
  br label %do.body.73

do.body.73:                                       ; preds = %do.cond.75, %for.end
  %99 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %oseg, align 8
  %next74 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %99, i32 0, i32 10
  %100 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next74, align 8
  store %struct._GimpGradientSegment* %100, %struct._GimpGradientSegment** %oaseg, align 8
  %101 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %oseg, align 8
  call void @gimp_gradient_segment_free(%struct._GimpGradientSegment* %101)
  %102 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %oaseg, align 8
  store %struct._GimpGradientSegment* %102, %struct._GimpGradientSegment** %oseg, align 8
  br label %do.cond.75

do.cond.75:                                       ; preds = %do.body.73
  %103 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %oaseg, align 8
  %104 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %rseg, align 8
  %cmp76 = icmp ne %struct._GimpGradientSegment* %103, %104
  br i1 %cmp76, label %do.body.73, label %do.end.78

do.end.78:                                        ; preds = %do.cond.75
  %105 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg, align 8
  %tobool79 = icmp ne %struct._GimpGradientSegment* %105, null
  br i1 %tobool79, label %if.then.80, label %if.else.82

if.then.80:                                       ; preds = %do.end.78
  %106 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %tmp, align 8
  %107 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg, align 8
  %next81 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %107, i32 0, i32 10
  store %struct._GimpGradientSegment* %106, %struct._GimpGradientSegment** %next81, align 8
  br label %if.end.83

if.else.82:                                       ; preds = %do.end.78
  %108 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %tmp, align 8
  %109 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %segments = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %109, i32 0, i32 1
  store %struct._GimpGradientSegment* %108, %struct._GimpGradientSegment** %segments, align 8
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.82, %if.then.80
  %110 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg, align 8
  %111 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %tmp, align 8
  %prev84 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %111, i32 0, i32 9
  store %struct._GimpGradientSegment* %110, %struct._GimpGradientSegment** %prev84, align 8
  %112 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %rseg, align 8
  %113 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %next85 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %113, i32 0, i32 10
  store %struct._GimpGradientSegment* %112, %struct._GimpGradientSegment** %next85, align 8
  %114 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %rseg, align 8
  %tobool86 = icmp ne %struct._GimpGradientSegment* %114, null
  br i1 %tobool86, label %if.then.87, label %if.end.89

if.then.87:                                       ; preds = %if.end.83
  %115 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %116 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %rseg, align 8
  %prev88 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %116, i32 0, i32 9
  store %struct._GimpGradientSegment* %115, %struct._GimpGradientSegment** %prev88, align 8
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.87, %if.end.83
  %117 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %final_start_seg.addr, align 8
  %tobool90 = icmp ne %struct._GimpGradientSegment** %117, null
  br i1 %tobool90, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.end.89
  %118 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %tmp, align 8
  %119 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %final_start_seg.addr, align 8
  store %struct._GimpGradientSegment* %118, %struct._GimpGradientSegment** %119, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %if.end.89
  %120 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %final_end_seg.addr, align 8
  %tobool93 = icmp ne %struct._GimpGradientSegment** %120, null
  br i1 %tobool93, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.end.92
  %121 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %122 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %final_end_seg.addr, align 8
  store %struct._GimpGradientSegment* %121, %struct._GimpGradientSegment** %122, align 8
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.94, %if.end.92
  %123 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %124 = bitcast %struct._GimpGradient* %123 to %struct._GTypeInstance*
  %call96 = call i64 @gimp_data_get_type() #8
  %call97 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %124, i64 %call96)
  %125 = bitcast %struct._GTypeInstance* %call97 to %struct._GimpData*
  call void @gimp_data_thaw(%struct._GimpData* %125)
  br label %return

return:                                           ; preds = %if.end.95, %if.then.25, %if.else.18
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_gradient_segment_range_split_midpoint(%struct._GimpGradient* %gradient, %struct._GimpContext* %context, %struct._GimpGradientSegment* %start_seg, %struct._GimpGradientSegment* %end_seg, %struct._GimpGradientSegment** %final_start_seg, %struct._GimpGradientSegment** %final_end_seg) #3 {
entry:
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %start_seg.addr = alloca %struct._GimpGradientSegment*, align 8
  %end_seg.addr = alloca %struct._GimpGradientSegment*, align 8
  %final_start_seg.addr = alloca %struct._GimpGradientSegment**, align 8
  %final_end_seg.addr = alloca %struct._GimpGradientSegment**, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  %lseg = alloca %struct._GimpGradientSegment*, align 8
  %rseg = alloca %struct._GimpGradientSegment*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpGradientSegment* %start_seg, %struct._GimpGradientSegment** %start_seg.addr, align 8
  store %struct._GimpGradientSegment* %end_seg, %struct._GimpGradientSegment** %end_seg.addr, align 8
  store %struct._GimpGradientSegment** %final_start_seg, %struct._GimpGradientSegment*** %final_start_seg.addr, align 8
  store %struct._GimpGradientSegment** %final_end_seg, %struct._GimpGradientSegment*** %final_end_seg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %1 = bitcast %struct._GimpGradient* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_gradient_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__func__.gimp_gradient_segment_range_split_midpoint, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_context_get_type() #8
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__func__.gimp_gradient_segment_range_split_midpoint, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %27 = bitcast %struct._GimpGradient* %26 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_data_get_type() #8
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call39)
  %28 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpData*
  call void @gimp_data_freeze(%struct._GimpData* %28)
  %29 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %end_seg.addr, align 8
  %tobool41 = icmp ne %struct._GimpGradientSegment* %29, null
  br i1 %tobool41, label %if.end.44, label %if.then.42

if.then.42:                                       ; preds = %do.end.38
  %30 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg.addr, align 8
  %call43 = call %struct._GimpGradientSegment* @gimp_gradient_segment_get_last(%struct._GimpGradientSegment* %30)
  store %struct._GimpGradientSegment* %call43, %struct._GimpGradientSegment** %end_seg.addr, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %do.end.38
  %31 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg.addr, align 8
  store %struct._GimpGradientSegment* %31, %struct._GimpGradientSegment** %seg, align 8
  br label %do.body.45

do.body.45:                                       ; preds = %do.cond, %if.end.44
  %32 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %33 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %34 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  call void @gimp_gradient_segment_split_midpoint(%struct._GimpGradient* %32, %struct._GimpContext* %33, %struct._GimpGradientSegment* %34, %struct._GimpGradientSegment** %lseg, %struct._GimpGradientSegment** %rseg)
  %35 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %rseg, align 8
  %next = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %35, i32 0, i32 10
  %36 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next, align 8
  store %struct._GimpGradientSegment* %36, %struct._GimpGradientSegment** %seg, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body.45
  %37 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg, align 8
  %38 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %end_seg.addr, align 8
  %cmp46 = icmp ne %struct._GimpGradientSegment* %37, %38
  br i1 %cmp46, label %do.body.45, label %do.end.47

do.end.47:                                        ; preds = %do.cond
  %39 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %final_start_seg.addr, align 8
  %tobool48 = icmp ne %struct._GimpGradientSegment** %39, null
  br i1 %tobool48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %do.end.47
  %40 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg.addr, align 8
  %41 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %final_start_seg.addr, align 8
  store %struct._GimpGradientSegment* %40, %struct._GimpGradientSegment** %41, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %do.end.47
  %42 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %final_end_seg.addr, align 8
  %tobool51 = icmp ne %struct._GimpGradientSegment** %42, null
  br i1 %tobool51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.50
  %43 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %rseg, align 8
  %44 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %final_end_seg.addr, align 8
  store %struct._GimpGradientSegment* %43, %struct._GimpGradientSegment** %44, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.end.50
  %45 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %46 = bitcast %struct._GimpGradient* %45 to %struct._GTypeInstance*
  %call54 = call i64 @gimp_data_get_type() #8
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call54)
  %47 = bitcast %struct._GTypeInstance* %call55 to %struct._GimpData*
  call void @gimp_data_thaw(%struct._GimpData* %47)
  br label %return

return:                                           ; preds = %if.end.53, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_gradient_segment_range_split_uniform(%struct._GimpGradient* %gradient, %struct._GimpContext* %context, %struct._GimpGradientSegment* %start_seg, %struct._GimpGradientSegment* %end_seg, i32 %parts, %struct._GimpGradientSegment** %final_start_seg, %struct._GimpGradientSegment** %final_end_seg) #3 {
entry:
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %start_seg.addr = alloca %struct._GimpGradientSegment*, align 8
  %end_seg.addr = alloca %struct._GimpGradientSegment*, align 8
  %parts.addr = alloca i32, align 4
  %final_start_seg.addr = alloca %struct._GimpGradientSegment**, align 8
  %final_end_seg.addr = alloca %struct._GimpGradientSegment**, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  %aseg = alloca %struct._GimpGradientSegment*, align 8
  %lseg = alloca %struct._GimpGradientSegment*, align 8
  %rseg = alloca %struct._GimpGradientSegment*, align 8
  %lsel = alloca %struct._GimpGradientSegment*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpGradientSegment* %start_seg, %struct._GimpGradientSegment** %start_seg.addr, align 8
  store %struct._GimpGradientSegment* %end_seg, %struct._GimpGradientSegment** %end_seg.addr, align 8
  store i32 %parts, i32* %parts.addr, align 4
  store %struct._GimpGradientSegment** %final_start_seg, %struct._GimpGradientSegment*** %final_start_seg.addr, align 8
  store %struct._GimpGradientSegment** %final_end_seg, %struct._GimpGradientSegment*** %final_end_seg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %1 = bitcast %struct._GimpGradient* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_gradient_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__func__.gimp_gradient_segment_range_split_uniform, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_context_get_type() #8
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__func__.gimp_gradient_segment_range_split_uniform, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %end_seg.addr, align 8
  %tobool39 = icmp ne %struct._GimpGradientSegment* %26, null
  br i1 %tobool39, label %if.end.42, label %if.then.40

if.then.40:                                       ; preds = %do.end.38
  %27 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg.addr, align 8
  %call41 = call %struct._GimpGradientSegment* @gimp_gradient_segment_get_last(%struct._GimpGradientSegment* %27)
  store %struct._GimpGradientSegment* %call41, %struct._GimpGradientSegment** %end_seg.addr, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %do.end.38
  %28 = load i32, i32* %parts.addr, align 4
  %cmp43 = icmp slt i32 %28, 2
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.42
  %29 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg.addr, align 8
  %30 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %final_start_seg.addr, align 8
  store %struct._GimpGradientSegment* %29, %struct._GimpGradientSegment** %30, align 8
  %31 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %end_seg.addr, align 8
  %32 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %final_end_seg.addr, align 8
  store %struct._GimpGradientSegment* %31, %struct._GimpGradientSegment** %32, align 8
  br label %return

if.end.45:                                        ; preds = %if.end.42
  %33 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %34 = bitcast %struct._GimpGradient* %33 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_data_get_type() #8
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call46)
  %35 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpData*
  call void @gimp_data_freeze(%struct._GimpData* %35)
  %36 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg.addr, align 8
  store %struct._GimpGradientSegment* %36, %struct._GimpGradientSegment** %seg, align 8
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %lsel, align 8
  br label %do.body.48

do.body.48:                                       ; preds = %do.cond, %if.end.45
  %37 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  store %struct._GimpGradientSegment* %37, %struct._GimpGradientSegment** %aseg, align 8
  %38 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %39 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %40 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %41 = load i32, i32* %parts.addr, align 4
  call void @gimp_gradient_segment_split_uniform(%struct._GimpGradient* %38, %struct._GimpContext* %39, %struct._GimpGradientSegment* %40, i32 %41, %struct._GimpGradientSegment** %lseg, %struct._GimpGradientSegment** %rseg)
  %42 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %43 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg.addr, align 8
  %cmp49 = icmp eq %struct._GimpGradientSegment* %42, %43
  br i1 %cmp49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %do.body.48
  %44 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg, align 8
  store %struct._GimpGradientSegment* %44, %struct._GimpGradientSegment** %lsel, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %do.body.48
  %45 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %rseg, align 8
  %next = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %45, i32 0, i32 10
  %46 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next, align 8
  store %struct._GimpGradientSegment* %46, %struct._GimpGradientSegment** %seg, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.51
  %47 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %aseg, align 8
  %48 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %end_seg.addr, align 8
  %cmp52 = icmp ne %struct._GimpGradientSegment* %47, %48
  br i1 %cmp52, label %do.body.48, label %do.end.53

do.end.53:                                        ; preds = %do.cond
  %49 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %final_start_seg.addr, align 8
  %tobool54 = icmp ne %struct._GimpGradientSegment** %49, null
  br i1 %tobool54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %do.end.53
  %50 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lsel, align 8
  %51 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %final_start_seg.addr, align 8
  store %struct._GimpGradientSegment* %50, %struct._GimpGradientSegment** %51, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %do.end.53
  %52 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %final_end_seg.addr, align 8
  %tobool57 = icmp ne %struct._GimpGradientSegment** %52, null
  br i1 %tobool57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.56
  %53 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %rseg, align 8
  %54 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %final_end_seg.addr, align 8
  store %struct._GimpGradientSegment* %53, %struct._GimpGradientSegment** %54, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %if.end.56
  %55 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %56 = bitcast %struct._GimpGradient* %55 to %struct._GTypeInstance*
  %call60 = call i64 @gimp_data_get_type() #8
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call60)
  %57 = bitcast %struct._GTypeInstance* %call61 to %struct._GimpData*
  call void @gimp_data_thaw(%struct._GimpData* %57)
  br label %return

return:                                           ; preds = %if.end.59, %if.then.44, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_gradient_segment_range_delete(%struct._GimpGradient* %gradient, %struct._GimpGradientSegment* %start_seg, %struct._GimpGradientSegment* %end_seg, %struct._GimpGradientSegment** %final_start_seg, %struct._GimpGradientSegment** %final_end_seg) #3 {
entry:
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %start_seg.addr = alloca %struct._GimpGradientSegment*, align 8
  %end_seg.addr = alloca %struct._GimpGradientSegment*, align 8
  %final_start_seg.addr = alloca %struct._GimpGradientSegment**, align 8
  %final_end_seg.addr = alloca %struct._GimpGradientSegment**, align 8
  %lseg = alloca %struct._GimpGradientSegment*, align 8
  %rseg = alloca %struct._GimpGradientSegment*, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  %aseg = alloca %struct._GimpGradientSegment*, align 8
  %next = alloca %struct._GimpGradientSegment*, align 8
  %join = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store %struct._GimpGradientSegment* %start_seg, %struct._GimpGradientSegment** %start_seg.addr, align 8
  store %struct._GimpGradientSegment* %end_seg, %struct._GimpGradientSegment** %end_seg.addr, align 8
  store %struct._GimpGradientSegment** %final_start_seg, %struct._GimpGradientSegment*** %final_start_seg.addr, align 8
  store %struct._GimpGradientSegment** %final_end_seg, %struct._GimpGradientSegment*** %final_end_seg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %1 = bitcast %struct._GimpGradient* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_gradient_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_gradient_segment_range_delete, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.76

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %end_seg.addr, align 8
  %tobool11 = icmp ne %struct._GimpGradientSegment* %13, null
  br i1 %tobool11, label %if.end.14, label %if.then.12

if.then.12:                                       ; preds = %do.end
  %14 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg.addr, align 8
  %call13 = call %struct._GimpGradientSegment* @gimp_gradient_segment_get_last(%struct._GimpGradientSegment* %14)
  store %struct._GimpGradientSegment* %call13, %struct._GimpGradientSegment** %end_seg.addr, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %do.end
  %15 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg.addr, align 8
  %prev = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %15, i32 0, i32 9
  %16 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev, align 8
  store %struct._GimpGradientSegment* %16, %struct._GimpGradientSegment** %lseg, align 8
  %17 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %end_seg.addr, align 8
  %next15 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %17, i32 0, i32 10
  %18 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next15, align 8
  store %struct._GimpGradientSegment* %18, %struct._GimpGradientSegment** %rseg, align 8
  %19 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg, align 8
  %cmp16 = icmp eq %struct._GimpGradientSegment* %19, null
  br i1 %cmp16, label %land.lhs.true.17, label %if.end.20

land.lhs.true.17:                                 ; preds = %if.end.14
  %20 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %rseg, align 8
  %cmp18 = icmp eq %struct._GimpGradientSegment* %20, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %land.lhs.true.17
  br label %premature_return

if.end.20:                                        ; preds = %land.lhs.true.17, %if.end.14
  %21 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %22 = bitcast %struct._GimpGradient* %21 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_data_get_type() #8
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call21)
  %23 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpData*
  call void @gimp_data_freeze(%struct._GimpData* %23)
  %24 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg.addr, align 8
  %left = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %24, i32 0, i32 0
  %25 = load double, double* %left, align 8
  %26 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %end_seg.addr, align 8
  %right = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %26, i32 0, i32 2
  %27 = load double, double* %right, align 8
  %add = fadd double %25, %27
  %div = fdiv double %add, 2.000000e+00
  store double %div, double* %join, align 8
  %28 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg, align 8
  %cmp23 = icmp eq %struct._GimpGradientSegment* %28, null
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %if.end.20
  store double 0.000000e+00, double* %join, align 8
  br label %if.end.29

if.else.25:                                       ; preds = %if.end.20
  %29 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %rseg, align 8
  %cmp26 = icmp eq %struct._GimpGradientSegment* %29, null
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.else.25
  store double 1.000000e+00, double* %join, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.else.25
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.24
  %30 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg, align 8
  %cmp30 = icmp ne %struct._GimpGradientSegment* %30, null
  br i1 %cmp30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.end.29
  %31 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %32 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg, align 8
  %33 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg, align 8
  %34 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg, align 8
  %left32 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %34, i32 0, i32 0
  %35 = load double, double* %left32, align 8
  %36 = load double, double* %join, align 8
  call void @gimp_gradient_segment_range_compress(%struct._GimpGradient* %31, %struct._GimpGradientSegment* %32, %struct._GimpGradientSegment* %33, double %35, double %36)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.end.29
  %37 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %rseg, align 8
  %cmp34 = icmp ne %struct._GimpGradientSegment* %37, null
  br i1 %cmp34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.end.33
  %38 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %39 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %rseg, align 8
  %40 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %rseg, align 8
  %41 = load double, double* %join, align 8
  %42 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %rseg, align 8
  %right36 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %42, i32 0, i32 2
  %43 = load double, double* %right36, align 8
  call void @gimp_gradient_segment_range_compress(%struct._GimpGradient* %38, %struct._GimpGradientSegment* %39, %struct._GimpGradientSegment* %40, double %41, double %43)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.end.33
  %44 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg, align 8
  %tobool38 = icmp ne %struct._GimpGradientSegment* %44, null
  br i1 %tobool38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.end.37
  %45 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %rseg, align 8
  %46 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg, align 8
  %next40 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %46, i32 0, i32 10
  store %struct._GimpGradientSegment* %45, %struct._GimpGradientSegment** %next40, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.end.37
  %47 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %rseg, align 8
  %tobool42 = icmp ne %struct._GimpGradientSegment* %47, null
  br i1 %tobool42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.end.41
  %48 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg, align 8
  %49 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %rseg, align 8
  %prev44 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %49, i32 0, i32 9
  store %struct._GimpGradientSegment* %48, %struct._GimpGradientSegment** %prev44, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %if.end.41
  %50 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg.addr, align 8
  store %struct._GimpGradientSegment* %50, %struct._GimpGradientSegment** %seg, align 8
  br label %do.body.46

do.body.46:                                       ; preds = %do.cond, %if.end.45
  %51 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %next47 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %51, i32 0, i32 10
  %52 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next47, align 8
  store %struct._GimpGradientSegment* %52, %struct._GimpGradientSegment** %next, align 8
  %53 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  store %struct._GimpGradientSegment* %53, %struct._GimpGradientSegment** %aseg, align 8
  %54 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  call void @gimp_gradient_segment_free(%struct._GimpGradientSegment* %54)
  %55 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next, align 8
  store %struct._GimpGradientSegment* %55, %struct._GimpGradientSegment** %seg, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body.46
  %56 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %aseg, align 8
  %57 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %end_seg.addr, align 8
  %cmp48 = icmp ne %struct._GimpGradientSegment* %56, %57
  br i1 %cmp48, label %do.body.46, label %do.end.49

do.end.49:                                        ; preds = %do.cond
  %58 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %rseg, align 8
  %tobool50 = icmp ne %struct._GimpGradientSegment* %58, null
  br i1 %tobool50, label %if.then.51, label %if.else.58

if.then.51:                                       ; preds = %do.end.49
  %59 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %final_start_seg.addr, align 8
  %tobool52 = icmp ne %struct._GimpGradientSegment** %59, null
  br i1 %tobool52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.then.51
  %60 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %rseg, align 8
  %61 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %final_start_seg.addr, align 8
  store %struct._GimpGradientSegment* %60, %struct._GimpGradientSegment** %61, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.then.51
  %62 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %final_end_seg.addr, align 8
  %tobool55 = icmp ne %struct._GimpGradientSegment** %62, null
  br i1 %tobool55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.54
  %63 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %rseg, align 8
  %64 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %final_end_seg.addr, align 8
  store %struct._GimpGradientSegment* %63, %struct._GimpGradientSegment** %64, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %if.end.54
  br label %if.end.65

if.else.58:                                       ; preds = %do.end.49
  %65 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %final_start_seg.addr, align 8
  %tobool59 = icmp ne %struct._GimpGradientSegment** %65, null
  br i1 %tobool59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.else.58
  %66 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg, align 8
  %67 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %final_start_seg.addr, align 8
  store %struct._GimpGradientSegment* %66, %struct._GimpGradientSegment** %67, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %if.else.58
  %68 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %final_end_seg.addr, align 8
  %tobool62 = icmp ne %struct._GimpGradientSegment** %68, null
  br i1 %tobool62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.61
  %69 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg, align 8
  %70 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %final_end_seg.addr, align 8
  store %struct._GimpGradientSegment* %69, %struct._GimpGradientSegment** %70, align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %if.end.61
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.end.57
  %71 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %lseg, align 8
  %cmp66 = icmp eq %struct._GimpGradientSegment* %71, null
  br i1 %cmp66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.65
  %72 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %rseg, align 8
  %73 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %segments = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %73, i32 0, i32 1
  store %struct._GimpGradientSegment* %72, %struct._GimpGradientSegment** %segments, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %if.end.65
  %74 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %75 = bitcast %struct._GimpGradient* %74 to %struct._GTypeInstance*
  %call69 = call i64 @gimp_data_get_type() #8
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call69)
  %76 = bitcast %struct._GTypeInstance* %call70 to %struct._GimpData*
  call void @gimp_data_thaw(%struct._GimpData* %76)
  br label %if.end.76

premature_return:                                 ; preds = %if.then.19
  %77 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %final_start_seg.addr, align 8
  %tobool71 = icmp ne %struct._GimpGradientSegment** %77, null
  br i1 %tobool71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %premature_return
  %78 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg.addr, align 8
  %79 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %final_start_seg.addr, align 8
  store %struct._GimpGradientSegment* %78, %struct._GimpGradientSegment** %79, align 8
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %premature_return
  %80 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %final_end_seg.addr, align 8
  %tobool74 = icmp ne %struct._GimpGradientSegment** %80, null
  br i1 %tobool74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.end.73
  %81 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %end_seg.addr, align 8
  %82 = load %struct._GimpGradientSegment**, %struct._GimpGradientSegment*** %final_end_seg.addr, align 8
  store %struct._GimpGradientSegment* %81, %struct._GimpGradientSegment** %82, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.9, %if.end.68, %if.then.75, %if.end.73
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_gradient_segment_range_recenter_handles(%struct._GimpGradient* %gradient, %struct._GimpGradientSegment* %start_seg, %struct._GimpGradientSegment* %end_seg) #3 {
entry:
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %start_seg.addr = alloca %struct._GimpGradientSegment*, align 8
  %end_seg.addr = alloca %struct._GimpGradientSegment*, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  %aseg = alloca %struct._GimpGradientSegment*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store %struct._GimpGradientSegment* %start_seg, %struct._GimpGradientSegment** %start_seg.addr, align 8
  store %struct._GimpGradientSegment* %end_seg, %struct._GimpGradientSegment** %end_seg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %1 = bitcast %struct._GimpGradient* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_gradient_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__func__.gimp_gradient_segment_range_recenter_handles, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %14 = bitcast %struct._GimpGradient* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_data_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpData*
  call void @gimp_data_freeze(%struct._GimpData* %15)
  %16 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %end_seg.addr, align 8
  %tobool13 = icmp ne %struct._GimpGradientSegment* %16, null
  br i1 %tobool13, label %if.end.16, label %if.then.14

if.then.14:                                       ; preds = %do.end
  %17 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg.addr, align 8
  %call15 = call %struct._GimpGradientSegment* @gimp_gradient_segment_get_last(%struct._GimpGradientSegment* %17)
  store %struct._GimpGradientSegment* %call15, %struct._GimpGradientSegment** %end_seg.addr, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %do.end
  %18 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg.addr, align 8
  store %struct._GimpGradientSegment* %18, %struct._GimpGradientSegment** %seg, align 8
  br label %do.body.17

do.body.17:                                       ; preds = %do.cond, %if.end.16
  %19 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %19, i32 0, i32 0
  %20 = load double, double* %left, align 8
  %21 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %21, i32 0, i32 2
  %22 = load double, double* %right, align 8
  %add = fadd double %20, %22
  %div = fdiv double %add, 2.000000e+00
  %23 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %middle = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %23, i32 0, i32 1
  store double %div, double* %middle, align 8
  %24 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  store %struct._GimpGradientSegment* %24, %struct._GimpGradientSegment** %aseg, align 8
  %25 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %next = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %25, i32 0, i32 10
  %26 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next, align 8
  store %struct._GimpGradientSegment* %26, %struct._GimpGradientSegment** %seg, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body.17
  %27 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %aseg, align 8
  %28 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %end_seg.addr, align 8
  %cmp18 = icmp ne %struct._GimpGradientSegment* %27, %28
  br i1 %cmp18, label %do.body.17, label %do.end.19

do.end.19:                                        ; preds = %do.cond
  %29 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %30 = bitcast %struct._GimpGradient* %29 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_data_get_type() #8
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call20)
  %31 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpData*
  call void @gimp_data_thaw(%struct._GimpData* %31)
  br label %return

return:                                           ; preds = %do.end.19, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_gradient_segment_range_redistribute_handles(%struct._GimpGradient* %gradient, %struct._GimpGradientSegment* %start_seg, %struct._GimpGradientSegment* %end_seg) #3 {
entry:
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %start_seg.addr = alloca %struct._GimpGradientSegment*, align 8
  %end_seg.addr = alloca %struct._GimpGradientSegment*, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  %aseg = alloca %struct._GimpGradientSegment*, align 8
  %left = alloca double, align 8
  %right = alloca double, align 8
  %seg_len = alloca double, align 8
  %num_segs = alloca i32, align 4
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store %struct._GimpGradientSegment* %start_seg, %struct._GimpGradientSegment** %start_seg.addr, align 8
  store %struct._GimpGradientSegment* %end_seg, %struct._GimpGradientSegment** %end_seg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %1 = bitcast %struct._GimpGradient* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_gradient_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__func__.gimp_gradient_segment_range_redistribute_handles, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %14 = bitcast %struct._GimpGradient* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_data_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpData*
  call void @gimp_data_freeze(%struct._GimpData* %15)
  %16 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %end_seg.addr, align 8
  %tobool13 = icmp ne %struct._GimpGradientSegment* %16, null
  br i1 %tobool13, label %if.end.16, label %if.then.14

if.then.14:                                       ; preds = %do.end
  %17 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg.addr, align 8
  %call15 = call %struct._GimpGradientSegment* @gimp_gradient_segment_get_last(%struct._GimpGradientSegment* %17)
  store %struct._GimpGradientSegment* %call15, %struct._GimpGradientSegment** %end_seg.addr, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %do.end
  store i32 0, i32* %num_segs, align 4
  %18 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg.addr, align 8
  store %struct._GimpGradientSegment* %18, %struct._GimpGradientSegment** %seg, align 8
  br label %do.body.17

do.body.17:                                       ; preds = %do.cond, %if.end.16
  %19 = load i32, i32* %num_segs, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %num_segs, align 4
  %20 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  store %struct._GimpGradientSegment* %20, %struct._GimpGradientSegment** %aseg, align 8
  %21 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %next = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %21, i32 0, i32 10
  %22 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next, align 8
  store %struct._GimpGradientSegment* %22, %struct._GimpGradientSegment** %seg, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body.17
  %23 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %aseg, align 8
  %24 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %end_seg.addr, align 8
  %cmp18 = icmp ne %struct._GimpGradientSegment* %23, %24
  br i1 %cmp18, label %do.body.17, label %do.end.19

do.end.19:                                        ; preds = %do.cond
  %25 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg.addr, align 8
  %left20 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %25, i32 0, i32 0
  %26 = load double, double* %left20, align 8
  store double %26, double* %left, align 8
  %27 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %end_seg.addr, align 8
  %right21 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %27, i32 0, i32 2
  %28 = load double, double* %right21, align 8
  store double %28, double* %right, align 8
  %29 = load double, double* %right, align 8
  %30 = load double, double* %left, align 8
  %sub = fsub double %29, %30
  %31 = load i32, i32* %num_segs, align 4
  %conv = sitofp i32 %31 to double
  %div = fdiv double %sub, %conv
  store double %div, double* %seg_len, align 8
  %32 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg.addr, align 8
  store %struct._GimpGradientSegment* %32, %struct._GimpGradientSegment** %seg, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.19
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %num_segs, align 4
  %cmp22 = icmp slt i32 %33, %34
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load double, double* %left, align 8
  %36 = load i32, i32* %i, align 4
  %conv24 = sitofp i32 %36 to double
  %37 = load double, double* %seg_len, align 8
  %mul = fmul double %conv24, %37
  %add = fadd double %35, %mul
  %38 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left25 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %38, i32 0, i32 0
  store double %add, double* %left25, align 8
  %39 = load double, double* %left, align 8
  %40 = load i32, i32* %i, align 4
  %add26 = add nsw i32 %40, 1
  %conv27 = sitofp i32 %add26 to double
  %41 = load double, double* %seg_len, align 8
  %mul28 = fmul double %conv27, %41
  %add29 = fadd double %39, %mul28
  %42 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right30 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %42, i32 0, i32 2
  store double %add29, double* %right30, align 8
  %43 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left31 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %43, i32 0, i32 0
  %44 = load double, double* %left31, align 8
  %45 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right32 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %45, i32 0, i32 2
  %46 = load double, double* %right32, align 8
  %add33 = fadd double %44, %46
  %div34 = fdiv double %add33, 2.000000e+00
  %47 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %middle = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %47, i32 0, i32 1
  store double %div34, double* %middle, align 8
  %48 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %next35 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %48, i32 0, i32 10
  %49 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next35, align 8
  store %struct._GimpGradientSegment* %49, %struct._GimpGradientSegment** %seg, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %50 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %50, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %51 = load double, double* %left, align 8
  %52 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %start_seg.addr, align 8
  %left37 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %52, i32 0, i32 0
  store double %51, double* %left37, align 8
  %53 = load double, double* %right, align 8
  %54 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %end_seg.addr, align 8
  %right38 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %54, i32 0, i32 2
  store double %53, double* %right38, align 8
  %55 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %56 = bitcast %struct._GimpGradient* %55 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_data_get_type() #8
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call39)
  %57 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpData*
  call void @gimp_data_thaw(%struct._GimpData* %57)
  br label %return

return:                                           ; preds = %for.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define double @gimp_gradient_segment_range_move(%struct._GimpGradient* %gradient, %struct._GimpGradientSegment* %range_l, %struct._GimpGradientSegment* %range_r, double %delta, i32 %control_compress) #3 {
entry:
  %retval = alloca double, align 8
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %range_l.addr = alloca %struct._GimpGradientSegment*, align 8
  %range_r.addr = alloca %struct._GimpGradientSegment*, align 8
  %delta.addr = alloca double, align 8
  %control_compress.addr = alloca i32, align 4
  %lbound = alloca double, align 8
  %rbound = alloca double, align 8
  %is_first = alloca i32, align 4
  %is_last = alloca i32, align 4
  %seg = alloca %struct._GimpGradientSegment*, align 8
  %aseg = alloca %struct._GimpGradientSegment*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store %struct._GimpGradientSegment* %range_l, %struct._GimpGradientSegment** %range_l.addr, align 8
  store %struct._GimpGradientSegment* %range_r, %struct._GimpGradientSegment** %range_r.addr, align 8
  store double %delta, double* %delta.addr, align 8
  store i32 %control_compress, i32* %control_compress.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %1 = bitcast %struct._GimpGradient* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_gradient_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_gradient_segment_range_move, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %14 = bitcast %struct._GimpGradient* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_data_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpData*
  call void @gimp_data_freeze(%struct._GimpData* %15)
  %16 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_r.addr, align 8
  %tobool13 = icmp ne %struct._GimpGradientSegment* %16, null
  br i1 %tobool13, label %if.end.16, label %if.then.14

if.then.14:                                       ; preds = %do.end
  %17 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_l.addr, align 8
  %call15 = call %struct._GimpGradientSegment* @gimp_gradient_segment_get_last(%struct._GimpGradientSegment* %17)
  store %struct._GimpGradientSegment* %call15, %struct._GimpGradientSegment** %range_r.addr, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %do.end
  %18 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_l.addr, align 8
  %prev = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %18, i32 0, i32 9
  %19 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev, align 8
  %cmp17 = icmp eq %struct._GimpGradientSegment* %19, null
  %conv = zext i1 %cmp17 to i32
  store i32 %conv, i32* %is_first, align 4
  %20 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_r.addr, align 8
  %next = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %20, i32 0, i32 10
  %21 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next, align 8
  %cmp18 = icmp eq %struct._GimpGradientSegment* %21, null
  %conv19 = zext i1 %cmp18 to i32
  store i32 %conv19, i32* %is_last, align 4
  %22 = load i32, i32* %control_compress.addr, align 4
  %tobool20 = icmp ne i32 %22, 0
  br i1 %tobool20, label %if.else.35, label %if.then.21

if.then.21:                                       ; preds = %if.end.16
  %23 = load i32, i32* %is_first, align 4
  %tobool22 = icmp ne i32 %23, 0
  br i1 %tobool22, label %if.else.25, label %if.then.23

if.then.23:                                       ; preds = %if.then.21
  %24 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_l.addr, align 8
  %prev24 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %24, i32 0, i32 9
  %25 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev24, align 8
  %middle = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %25, i32 0, i32 1
  %26 = load double, double* %middle, align 8
  %add = fadd double %26, 1.000000e-10
  store double %add, double* %lbound, align 8
  br label %if.end.27

if.else.25:                                       ; preds = %if.then.21
  %27 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_l.addr, align 8
  %left = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %27, i32 0, i32 0
  %28 = load double, double* %left, align 8
  %add26 = fadd double %28, 1.000000e-10
  store double %add26, double* %lbound, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.25, %if.then.23
  %29 = load i32, i32* %is_last, align 4
  %tobool28 = icmp ne i32 %29, 0
  br i1 %tobool28, label %if.else.32, label %if.then.29

if.then.29:                                       ; preds = %if.end.27
  %30 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_r.addr, align 8
  %next30 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %30, i32 0, i32 10
  %31 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next30, align 8
  %middle31 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %31, i32 0, i32 1
  %32 = load double, double* %middle31, align 8
  %sub = fsub double %32, 1.000000e-10
  store double %sub, double* %rbound, align 8
  br label %if.end.34

if.else.32:                                       ; preds = %if.end.27
  %33 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_r.addr, align 8
  %right = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %33, i32 0, i32 2
  %34 = load double, double* %right, align 8
  %sub33 = fsub double %34, 1.000000e-10
  store double %sub33, double* %rbound, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.32, %if.then.29
  br label %if.end.54

if.else.35:                                       ; preds = %if.end.16
  %35 = load i32, i32* %is_first, align 4
  %tobool36 = icmp ne i32 %35, 0
  br i1 %tobool36, label %if.else.41, label %if.then.37

if.then.37:                                       ; preds = %if.else.35
  %36 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_l.addr, align 8
  %prev38 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %36, i32 0, i32 9
  %37 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev38, align 8
  %left39 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %37, i32 0, i32 0
  %38 = load double, double* %left39, align 8
  %add40 = fadd double %38, 2.000000e-10
  store double %add40, double* %lbound, align 8
  br label %if.end.44

if.else.41:                                       ; preds = %if.else.35
  %39 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_l.addr, align 8
  %left42 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %39, i32 0, i32 0
  %40 = load double, double* %left42, align 8
  %add43 = fadd double %40, 1.000000e-10
  store double %add43, double* %lbound, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.41, %if.then.37
  %41 = load i32, i32* %is_last, align 4
  %tobool45 = icmp ne i32 %41, 0
  br i1 %tobool45, label %if.else.50, label %if.then.46

if.then.46:                                       ; preds = %if.end.44
  %42 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_r.addr, align 8
  %next47 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %42, i32 0, i32 10
  %43 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next47, align 8
  %right48 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %43, i32 0, i32 2
  %44 = load double, double* %right48, align 8
  %sub49 = fsub double %44, 2.000000e-10
  store double %sub49, double* %rbound, align 8
  br label %if.end.53

if.else.50:                                       ; preds = %if.end.44
  %45 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_r.addr, align 8
  %right51 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %45, i32 0, i32 2
  %46 = load double, double* %right51, align 8
  %sub52 = fsub double %46, 1.000000e-10
  store double %sub52, double* %rbound, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.50, %if.then.46
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.end.34
  %47 = load double, double* %delta.addr, align 8
  %cmp55 = fcmp olt double %47, 0.000000e+00
  br i1 %cmp55, label %if.then.57, label %if.else.78

if.then.57:                                       ; preds = %if.end.54
  %48 = load i32, i32* %is_first, align 4
  %tobool58 = icmp ne i32 %48, 0
  br i1 %tobool58, label %if.else.68, label %if.then.59

if.then.59:                                       ; preds = %if.then.57
  %49 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_l.addr, align 8
  %left60 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %49, i32 0, i32 0
  %50 = load double, double* %left60, align 8
  %51 = load double, double* %delta.addr, align 8
  %add61 = fadd double %50, %51
  %52 = load double, double* %lbound, align 8
  %cmp62 = fcmp olt double %add61, %52
  br i1 %cmp62, label %if.then.64, label %if.end.67

if.then.64:                                       ; preds = %if.then.59
  %53 = load double, double* %lbound, align 8
  %54 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_l.addr, align 8
  %left65 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %54, i32 0, i32 0
  %55 = load double, double* %left65, align 8
  %sub66 = fsub double %53, %55
  store double %sub66, double* %delta.addr, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.64, %if.then.59
  br label %if.end.77

if.else.68:                                       ; preds = %if.then.57
  %56 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_l.addr, align 8
  %middle69 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %56, i32 0, i32 1
  %57 = load double, double* %middle69, align 8
  %58 = load double, double* %delta.addr, align 8
  %add70 = fadd double %57, %58
  %59 = load double, double* %lbound, align 8
  %cmp71 = fcmp olt double %add70, %59
  br i1 %cmp71, label %if.then.73, label %if.end.76

if.then.73:                                       ; preds = %if.else.68
  %60 = load double, double* %lbound, align 8
  %61 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_l.addr, align 8
  %middle74 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %61, i32 0, i32 1
  %62 = load double, double* %middle74, align 8
  %sub75 = fsub double %60, %62
  store double %sub75, double* %delta.addr, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.73, %if.else.68
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.end.67
  br label %if.end.99

if.else.78:                                       ; preds = %if.end.54
  %63 = load i32, i32* %is_last, align 4
  %tobool79 = icmp ne i32 %63, 0
  br i1 %tobool79, label %if.else.89, label %if.then.80

if.then.80:                                       ; preds = %if.else.78
  %64 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_r.addr, align 8
  %right81 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %64, i32 0, i32 2
  %65 = load double, double* %right81, align 8
  %66 = load double, double* %delta.addr, align 8
  %add82 = fadd double %65, %66
  %67 = load double, double* %rbound, align 8
  %cmp83 = fcmp ogt double %add82, %67
  br i1 %cmp83, label %if.then.85, label %if.end.88

if.then.85:                                       ; preds = %if.then.80
  %68 = load double, double* %rbound, align 8
  %69 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_r.addr, align 8
  %right86 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %69, i32 0, i32 2
  %70 = load double, double* %right86, align 8
  %sub87 = fsub double %68, %70
  store double %sub87, double* %delta.addr, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.85, %if.then.80
  br label %if.end.98

if.else.89:                                       ; preds = %if.else.78
  %71 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_r.addr, align 8
  %middle90 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %71, i32 0, i32 1
  %72 = load double, double* %middle90, align 8
  %73 = load double, double* %delta.addr, align 8
  %add91 = fadd double %72, %73
  %74 = load double, double* %rbound, align 8
  %cmp92 = fcmp ogt double %add91, %74
  br i1 %cmp92, label %if.then.94, label %if.end.97

if.then.94:                                       ; preds = %if.else.89
  %75 = load double, double* %rbound, align 8
  %76 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_r.addr, align 8
  %middle95 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %76, i32 0, i32 1
  %77 = load double, double* %middle95, align 8
  %sub96 = fsub double %75, %77
  store double %sub96, double* %delta.addr, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.94, %if.else.89
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.end.88
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.end.77
  %78 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_l.addr, align 8
  store %struct._GimpGradientSegment* %78, %struct._GimpGradientSegment** %seg, align 8
  br label %do.body.100

do.body.100:                                      ; preds = %do.cond, %if.end.99
  %79 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %80 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_l.addr, align 8
  %cmp101 = icmp eq %struct._GimpGradientSegment* %79, %80
  br i1 %cmp101, label %land.lhs.true.103, label %if.then.105

land.lhs.true.103:                                ; preds = %do.body.100
  %81 = load i32, i32* %is_first, align 4
  %tobool104 = icmp ne i32 %81, 0
  br i1 %tobool104, label %if.end.108, label %if.then.105

if.then.105:                                      ; preds = %land.lhs.true.103, %do.body.100
  %82 = load double, double* %delta.addr, align 8
  %83 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %left106 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %83, i32 0, i32 0
  %84 = load double, double* %left106, align 8
  %add107 = fadd double %84, %82
  store double %add107, double* %left106, align 8
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.105, %land.lhs.true.103
  %85 = load double, double* %delta.addr, align 8
  %86 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %middle109 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %86, i32 0, i32 1
  %87 = load double, double* %middle109, align 8
  %add110 = fadd double %87, %85
  store double %add110, double* %middle109, align 8
  %88 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %89 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_r.addr, align 8
  %cmp111 = icmp eq %struct._GimpGradientSegment* %88, %89
  br i1 %cmp111, label %land.lhs.true.113, label %if.then.115

land.lhs.true.113:                                ; preds = %if.end.108
  %90 = load i32, i32* %is_last, align 4
  %tobool114 = icmp ne i32 %90, 0
  br i1 %tobool114, label %if.end.118, label %if.then.115

if.then.115:                                      ; preds = %land.lhs.true.113, %if.end.108
  %91 = load double, double* %delta.addr, align 8
  %92 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %right116 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %92, i32 0, i32 2
  %93 = load double, double* %right116, align 8
  %add117 = fadd double %93, %91
  store double %add117, double* %right116, align 8
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.115, %land.lhs.true.113
  %94 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  store %struct._GimpGradientSegment* %94, %struct._GimpGradientSegment** %aseg, align 8
  %95 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %next119 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %95, i32 0, i32 10
  %96 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next119, align 8
  store %struct._GimpGradientSegment* %96, %struct._GimpGradientSegment** %seg, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.118
  %97 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %aseg, align 8
  %98 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_r.addr, align 8
  %cmp120 = icmp ne %struct._GimpGradientSegment* %97, %98
  br i1 %cmp120, label %do.body.100, label %do.end.122

do.end.122:                                       ; preds = %do.cond
  %99 = load i32, i32* %is_first, align 4
  %tobool123 = icmp ne i32 %99, 0
  br i1 %tobool123, label %if.end.137, label %if.then.124

if.then.124:                                      ; preds = %do.end.122
  %100 = load i32, i32* %control_compress.addr, align 4
  %tobool125 = icmp ne i32 %100, 0
  br i1 %tobool125, label %if.else.130, label %if.then.126

if.then.126:                                      ; preds = %if.then.124
  %101 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_l.addr, align 8
  %left127 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %101, i32 0, i32 0
  %102 = load double, double* %left127, align 8
  %103 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_l.addr, align 8
  %prev128 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %103, i32 0, i32 9
  %104 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev128, align 8
  %right129 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %104, i32 0, i32 2
  store double %102, double* %right129, align 8
  br label %if.end.136

if.else.130:                                      ; preds = %if.then.124
  %105 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %106 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_l.addr, align 8
  %prev131 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %106, i32 0, i32 9
  %107 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev131, align 8
  %108 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_l.addr, align 8
  %prev132 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %108, i32 0, i32 9
  %109 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev132, align 8
  %110 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_l.addr, align 8
  %prev133 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %110, i32 0, i32 9
  %111 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev133, align 8
  %left134 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %111, i32 0, i32 0
  %112 = load double, double* %left134, align 8
  %113 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_l.addr, align 8
  %left135 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %113, i32 0, i32 0
  %114 = load double, double* %left135, align 8
  call void @gimp_gradient_segment_range_compress(%struct._GimpGradient* %105, %struct._GimpGradientSegment* %107, %struct._GimpGradientSegment* %109, double %112, double %114)
  br label %if.end.136

if.end.136:                                       ; preds = %if.else.130, %if.then.126
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %do.end.122
  %115 = load i32, i32* %is_last, align 4
  %tobool138 = icmp ne i32 %115, 0
  br i1 %tobool138, label %if.end.152, label %if.then.139

if.then.139:                                      ; preds = %if.end.137
  %116 = load i32, i32* %control_compress.addr, align 4
  %tobool140 = icmp ne i32 %116, 0
  br i1 %tobool140, label %if.else.145, label %if.then.141

if.then.141:                                      ; preds = %if.then.139
  %117 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_r.addr, align 8
  %right142 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %117, i32 0, i32 2
  %118 = load double, double* %right142, align 8
  %119 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_r.addr, align 8
  %next143 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %119, i32 0, i32 10
  %120 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next143, align 8
  %left144 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %120, i32 0, i32 0
  store double %118, double* %left144, align 8
  br label %if.end.151

if.else.145:                                      ; preds = %if.then.139
  %121 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %122 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_r.addr, align 8
  %next146 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %122, i32 0, i32 10
  %123 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next146, align 8
  %124 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_r.addr, align 8
  %next147 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %124, i32 0, i32 10
  %125 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next147, align 8
  %126 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_r.addr, align 8
  %right148 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %126, i32 0, i32 2
  %127 = load double, double* %right148, align 8
  %128 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %range_r.addr, align 8
  %next149 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %128, i32 0, i32 10
  %129 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next149, align 8
  %right150 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %129, i32 0, i32 2
  %130 = load double, double* %right150, align 8
  call void @gimp_gradient_segment_range_compress(%struct._GimpGradient* %121, %struct._GimpGradientSegment* %123, %struct._GimpGradientSegment* %125, double %127, double %130)
  br label %if.end.151

if.end.151:                                       ; preds = %if.else.145, %if.then.141
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151, %if.end.137
  %131 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %132 = bitcast %struct._GimpGradient* %131 to %struct._GTypeInstance*
  %call153 = call i64 @gimp_data_get_type() #8
  %call154 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %132, i64 %call153)
  %133 = bitcast %struct._GTypeInstance* %call154 to %struct._GimpData*
  call void @gimp_data_thaw(%struct._GimpData* %133)
  %134 = load double, double* %delta.addr, align 8
  store double %134, double* %retval
  br label %return

return:                                           ; preds = %if.end.152, %if.else.9
  %135 = load double, double* %retval
  ret double %135
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_gradient_class_init(%struct._GimpGradientClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpGradientClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  %viewable_class = alloca %struct._GimpViewableClass*, align 8
  %data_class = alloca %struct._GimpDataClass*, align 8
  store %struct._GimpGradientClass* %klass, %struct._GimpGradientClass** %klass.addr, align 8
  %0 = load %struct._GimpGradientClass*, %struct._GimpGradientClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpGradientClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpGradientClass*, %struct._GimpGradientClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpGradientClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #8
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GimpGradientClass*, %struct._GimpGradientClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpGradientClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_viewable_get_type() #8
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpViewableClass*
  store %struct._GimpViewableClass* %8, %struct._GimpViewableClass** %viewable_class, align 8
  %9 = load %struct._GimpGradientClass*, %struct._GimpGradientClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpGradientClass* %9 to %struct._GTypeClass*
  %call5 = call i64 @gimp_data_get_type() #8
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 %call5)
  %11 = bitcast %struct._GTypeClass* %call6 to %struct._GimpDataClass*
  store %struct._GimpDataClass* %11, %struct._GimpDataClass** %data_class, align 8
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_gradient_finalize, void (%struct._GObject*)** %finalize, align 8
  %13 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %13, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_gradient_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %14 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %default_stock_id = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %14, i32 0, i32 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i8** %default_stock_id, align 8
  %15 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %get_preview_size = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %15, i32 0, i32 6
  store void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)* @gimp_gradient_get_preview_size, void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)** %get_preview_size, align 8
  %16 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %get_popup_size = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %16, i32 0, i32 7
  store i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)* @gimp_gradient_get_popup_size, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)** %get_popup_size, align 8
  %17 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %get_new_preview = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %17, i32 0, i32 9
  store %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)* @gimp_gradient_get_new_preview, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)** %get_new_preview, align 8
  %18 = load %struct._GimpDataClass*, %struct._GimpDataClass** %data_class, align 8
  %save = getelementptr inbounds %struct._GimpDataClass, %struct._GimpDataClass* %18, i32 0, i32 2
  store i32 (%struct._GimpData*, %struct._GError**)* @gimp_gradient_save, i32 (%struct._GimpData*, %struct._GError**)** %save, align 8
  %19 = load %struct._GimpDataClass*, %struct._GimpDataClass** %data_class, align 8
  %get_extension = getelementptr inbounds %struct._GimpDataClass, %struct._GimpDataClass* %19, i32 0, i32 3
  store i8* (%struct._GimpData*)* @gimp_gradient_get_extension, i8* (%struct._GimpData*)** %get_extension, align 8
  %20 = load %struct._GimpDataClass*, %struct._GimpDataClass** %data_class, align 8
  %duplicate = getelementptr inbounds %struct._GimpDataClass, %struct._GimpDataClass* %20, i32 0, i32 4
  store %struct._GimpData* (%struct._GimpData*)* @gimp_gradient_duplicate, %struct._GimpData* (%struct._GimpData*)** %duplicate, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_gradient_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gradient_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGradient*
  store %struct._GimpGradient* %2, %struct._GimpGradient** %gradient, align 8
  %3 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %segments = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %3, i32 0, i32 1
  %4 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments, align 8
  %tobool = icmp ne %struct._GimpGradientSegment* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %segments2 = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %5, i32 0, i32 1
  %6 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments2, align 8
  call void @gimp_gradient_segments_free(%struct._GimpGradientSegment* %6)
  %7 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %segments3 = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %7, i32 0, i32 1
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %segments3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_gradient_parent_class, align 8
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
define internal i64 @gimp_gradient_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  %segment = alloca %struct._GimpGradientSegment*, align 8
  %memsize = alloca i64, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gradient_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGradient*
  store %struct._GimpGradient* %2, %struct._GimpGradient** %gradient, align 8
  store i64 0, i64* %memsize, align 8
  %3 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %segments = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %3, i32 0, i32 1
  %4 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments, align 8
  store %struct._GimpGradientSegment* %4, %struct._GimpGradientSegment** %segment, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segment, align 8
  %tobool = icmp ne %struct._GimpGradientSegment* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %memsize, align 8
  %add = add i64 %6, 128
  store i64 %add, i64* %memsize, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segment, align 8
  %next = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %7, i32 0, i32 10
  %8 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next, align 8
  store %struct._GimpGradientSegment* %8, %struct._GimpGradientSegment** %segment, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i64, i64* %memsize, align 8
  %10 = load i8*, i8** @gimp_gradient_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call2 = call i64 @gimp_object_get_type() #8
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %11, i64 %call2)
  %12 = bitcast %struct._GTypeClass* %call3 to %struct._GimpObjectClass*
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %12, i32 0, i32 3
  %13 = load i64 (%struct._GimpObject*, i64*)*, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %14 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %15 = load i64*, i64** %gui_size.addr, align 8
  %call4 = call i64 %13(%struct._GimpObject* %14, i64* %15)
  %add5 = add nsw i64 %9, %call4
  ret i64 %add5
}

; Function Attrs: nounwind uwtable
define internal void @gimp_gradient_get_preview_size(%struct._GimpViewable* %viewable, i32 %size, i32 %popup, i32 %dot_for_dot, i32* %width, i32* %height) #3 {
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
  %div = sdiv i32 %2, 2
  %add = add nsw i32 1, %div
  %3 = load i32*, i32** %height.addr, align 8
  store i32 %add, i32* %3, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_gradient_get_popup_size(%struct._GimpViewable* %viewable, i32 %width, i32 %height, i32 %dot_for_dot, i32* %popup_width, i32* %popup_height) #3 {
entry:
  %retval = alloca i32, align 4
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
  %cmp = icmp slt i32 %0, 128
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %height.addr, align 4
  %cmp1 = icmp slt i32 %1, 32
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i32*, i32** %popup_width.addr, align 8
  store i32 128, i32* %2, align 4
  %3 = load i32*, i32** %popup_height.addr, align 8
  store i32 32, i32* %3, align 4
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal %struct._TempBuf* @gimp_gradient_get_new_preview(%struct._GimpViewable* %viewable, %struct._GimpContext* %context, i32 %width, i32 %height) #3 {
entry:
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %gradient = alloca %struct._GimpGradient*, align 8
  %seg = alloca %struct._GimpGradientSegment*, align 8
  %temp_buf = alloca %struct._TempBuf*, align 8
  %buf = alloca i8*, align 8
  %p = alloca i8*, align 8
  %row = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %dx = alloca double, align 8
  %cur_x = alloca double, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gradient_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGradient*
  store %struct._GimpGradient* %2, %struct._GimpGradient** %gradient, align 8
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %seg, align 8
  %3 = load i32, i32* %width.addr, align 4
  %sub = sub nsw i32 %3, 1
  %conv = sitofp i32 %sub to double
  %div = fdiv double 1.000000e+00, %conv
  store double %div, double* %dx, align 8
  store double 0.000000e+00, double* %cur_x, align 8
  %4 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %4, 4
  %conv2 = sext i32 %mul to i64
  %call3 = call noalias i8* @g_malloc(i64 %conv2)
  store i8* %call3, i8** %row, align 8
  store i8* %call3, i8** %p, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %x, align 4
  %6 = load i32, i32* %width.addr, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %9 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %seg, align 8
  %10 = load double, double* %cur_x, align 8
  %call5 = call %struct._GimpGradientSegment* @gimp_gradient_get_color_at(%struct._GimpGradient* %7, %struct._GimpContext* %8, %struct._GimpGradientSegment* %9, double %10, i32 0, %struct._GimpRGB* %color)
  store %struct._GimpGradientSegment* %call5, %struct._GimpGradientSegment** %seg, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  %11 = load double, double* %r, align 8
  %mul6 = fmul double %11, 2.550000e+02
  %add = fadd double %mul6, 5.000000e-01
  %conv7 = fptosi double %add to i32
  %conv8 = trunc i32 %conv7 to i8
  %12 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %conv8, i8* %12, align 1
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 1
  %13 = load double, double* %g, align 8
  %mul9 = fmul double %13, 2.550000e+02
  %add10 = fadd double %mul9, 5.000000e-01
  %conv11 = fptosi double %add10 to i32
  %conv12 = trunc i32 %conv11 to i8
  %14 = load i8*, i8** %p, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr13, i8** %p, align 8
  store i8 %conv12, i8* %14, align 1
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 2
  %15 = load double, double* %b, align 8
  %mul14 = fmul double %15, 2.550000e+02
  %add15 = fadd double %mul14, 5.000000e-01
  %conv16 = fptosi double %add15 to i32
  %conv17 = trunc i32 %conv16 to i8
  %16 = load i8*, i8** %p, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr18, i8** %p, align 8
  store i8 %conv17, i8* %16, align 1
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  %17 = load double, double* %a, align 8
  %mul19 = fmul double %17, 2.550000e+02
  %add20 = fadd double %mul19, 5.000000e-01
  %conv21 = fptosi double %add20 to i32
  %conv22 = trunc i32 %conv21 to i8
  %18 = load i8*, i8** %p, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr23, i8** %p, align 8
  store i8 %conv22, i8* %18, align 1
  %19 = load double, double* %dx, align 8
  %20 = load double, double* %cur_x, align 8
  %add24 = fadd double %20, %19
  store double %add24, double* %cur_x, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %x, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %width.addr, align 4
  %23 = load i32, i32* %height.addr, align 4
  %call25 = call %struct._TempBuf* @temp_buf_new(i32 %22, i32 %23, i32 4, i32 0, i32 0, i8* null)
  store %struct._TempBuf* %call25, %struct._TempBuf** %temp_buf, align 8
  %24 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf, align 8
  %call26 = call i8* @temp_buf_get_data(%struct._TempBuf* %24)
  store i8* %call26, i8** %buf, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.35, %for.end
  %25 = load i32, i32* %y, align 4
  %26 = load i32, i32* %height.addr, align 4
  %cmp28 = icmp slt i32 %25, %26
  br i1 %cmp28, label %for.body.30, label %for.end.37

for.body.30:                                      ; preds = %for.cond.27
  %27 = load i8*, i8** %buf, align 8
  %28 = load i32, i32* %width.addr, align 4
  %29 = load i32, i32* %y, align 4
  %mul31 = mul nsw i32 %28, %29
  %mul32 = mul nsw i32 %mul31, 4
  %idx.ext = sext i32 %mul32 to i64
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 %idx.ext
  %30 = load i8*, i8** %row, align 8
  %31 = load i32, i32* %width.addr, align 4
  %mul33 = mul nsw i32 %31, 4
  %conv34 = sext i32 %mul33 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %30, i64 %conv34, i32 1, i1 false)
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.body.30
  %32 = load i32, i32* %y, align 4
  %inc36 = add nsw i32 %32, 1
  store i32 %inc36, i32* %y, align 4
  br label %for.cond.27

for.end.37:                                       ; preds = %for.cond.27
  %33 = load i8*, i8** %row, align 8
  call void @g_free(i8* %33)
  %34 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf, align 8
  ret %struct._TempBuf* %34
}

declare i32 @gimp_gradient_save(%struct._GimpData*, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define internal i8* @gimp_gradient_get_extension(%struct._GimpData* %data) #3 {
entry:
  %data.addr = alloca %struct._GimpData*, align 8
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  ret i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpData* @gimp_gradient_duplicate(%struct._GimpData* %data) #3 {
entry:
  %data.addr = alloca %struct._GimpData*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  %head = alloca %struct._GimpGradientSegment*, align 8
  %prev = alloca %struct._GimpGradientSegment*, align 8
  %cur = alloca %struct._GimpGradientSegment*, align 8
  %orig = alloca %struct._GimpGradientSegment*, align 8
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  %call = call i64 @gimp_gradient_get_type() #8
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GimpGradient*
  store %struct._GimpGradient* %0, %struct._GimpGradient** %gradient, align 8
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %prev, align 8
  %1 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %2 = bitcast %struct._GimpData* %1 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_gradient_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call2)
  %3 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpGradient*
  %segments = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %3, i32 0, i32 1
  %4 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments, align 8
  store %struct._GimpGradientSegment* %4, %struct._GimpGradientSegment** %orig, align 8
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %head, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %5 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %orig, align 8
  %tobool = icmp ne %struct._GimpGradientSegment* %5, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call4 = call %struct._GimpGradientSegment* @gimp_gradient_segment_new()
  store %struct._GimpGradientSegment* %call4, %struct._GimpGradientSegment** %cur, align 8
  %6 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %cur, align 8
  %7 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %orig, align 8
  %8 = bitcast %struct._GimpGradientSegment* %6 to i8*
  %9 = bitcast %struct._GimpGradientSegment* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 128, i32 8, i1 false)
  %10 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev, align 8
  %11 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %cur, align 8
  %prev5 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %11, i32 0, i32 9
  store %struct._GimpGradientSegment* %10, %struct._GimpGradientSegment** %prev5, align 8
  %12 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %cur, align 8
  %next = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %12, i32 0, i32 10
  store %struct._GimpGradientSegment* null, %struct._GimpGradientSegment** %next, align 8
  %13 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev, align 8
  %tobool6 = icmp ne %struct._GimpGradientSegment* %13, null
  br i1 %tobool6, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %14 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %cur, align 8
  %15 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %prev, align 8
  %next7 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %15, i32 0, i32 10
  store %struct._GimpGradientSegment* %14, %struct._GimpGradientSegment** %next7, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %16 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %cur, align 8
  store %struct._GimpGradientSegment* %16, %struct._GimpGradientSegment** %head, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %cur, align 8
  store %struct._GimpGradientSegment* %17, %struct._GimpGradientSegment** %prev, align 8
  %18 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %orig, align 8
  %next8 = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %18, i32 0, i32 10
  %19 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next8, align 8
  store %struct._GimpGradientSegment* %19, %struct._GimpGradientSegment** %orig, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %20 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %head, align 8
  %21 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %segments9 = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %21, i32 0, i32 1
  store %struct._GimpGradientSegment* %20, %struct._GimpGradientSegment** %segments9, align 8
  %22 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %23 = bitcast %struct._GimpGradient* %22 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_data_get_type() #8
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call10)
  %24 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpData*
  ret %struct._GimpData* %24
}

declare noalias i8* @g_malloc(i64) #1

declare %struct._TempBuf* @temp_buf_new(i32, i32, i32, i32, i32, i8*) #1

declare i8* @temp_buf_get_data(%struct._TempBuf*) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @gimp_gradient_get_checksum(%struct._GimpTagged* %tagged) #3 {
entry:
  %tagged.addr = alloca %struct._GimpTagged*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  %checksum_string = alloca i8*, align 8
  %checksum = alloca %struct._GChecksum*, align 8
  %segment = alloca %struct._GimpGradientSegment*, align 8
  store %struct._GimpTagged* %tagged, %struct._GimpTagged** %tagged.addr, align 8
  %0 = load %struct._GimpTagged*, %struct._GimpTagged** %tagged.addr, align 8
  %1 = bitcast %struct._GimpTagged* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gradient_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGradient*
  store %struct._GimpGradient* %2, %struct._GimpGradient** %gradient, align 8
  store i8* null, i8** %checksum_string, align 8
  %3 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %segments = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %3, i32 0, i32 1
  %4 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments, align 8
  %tobool = icmp ne %struct._GimpGradientSegment* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call %struct._GChecksum* @g_checksum_new(i32 0)
  store %struct._GChecksum* %call2, %struct._GChecksum** %checksum, align 8
  %5 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %segments3 = getelementptr inbounds %struct._GimpGradient, %struct._GimpGradient* %5, i32 0, i32 1
  %6 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segments3, align 8
  store %struct._GimpGradientSegment* %6, %struct._GimpGradientSegment** %segment, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %7 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segment, align 8
  %tobool4 = icmp ne %struct._GimpGradientSegment* %7, null
  br i1 %tobool4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load %struct._GChecksum*, %struct._GChecksum** %checksum, align 8
  %9 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segment, align 8
  %left = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %9, i32 0, i32 0
  %10 = bitcast double* %left to i8*
  call void @g_checksum_update(%struct._GChecksum* %8, i8* %10, i64 8)
  %11 = load %struct._GChecksum*, %struct._GChecksum** %checksum, align 8
  %12 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segment, align 8
  %middle = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %12, i32 0, i32 1
  %13 = bitcast double* %middle to i8*
  call void @g_checksum_update(%struct._GChecksum* %11, i8* %13, i64 8)
  %14 = load %struct._GChecksum*, %struct._GChecksum** %checksum, align 8
  %15 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segment, align 8
  %right = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %15, i32 0, i32 2
  %16 = bitcast double* %right to i8*
  call void @g_checksum_update(%struct._GChecksum* %14, i8* %16, i64 8)
  %17 = load %struct._GChecksum*, %struct._GChecksum** %checksum, align 8
  %18 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segment, align 8
  %left_color_type = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %18, i32 0, i32 3
  %19 = bitcast i32* %left_color_type to i8*
  call void @g_checksum_update(%struct._GChecksum* %17, i8* %19, i64 4)
  %20 = load %struct._GChecksum*, %struct._GChecksum** %checksum, align 8
  %21 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segment, align 8
  %left_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %21, i32 0, i32 4
  %22 = bitcast %struct._GimpRGB* %left_color to i8*
  call void @g_checksum_update(%struct._GChecksum* %20, i8* %22, i64 32)
  %23 = load %struct._GChecksum*, %struct._GChecksum** %checksum, align 8
  %24 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segment, align 8
  %right_color_type = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %24, i32 0, i32 5
  %25 = bitcast i32* %right_color_type to i8*
  call void @g_checksum_update(%struct._GChecksum* %23, i8* %25, i64 4)
  %26 = load %struct._GChecksum*, %struct._GChecksum** %checksum, align 8
  %27 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segment, align 8
  %right_color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %27, i32 0, i32 6
  %28 = bitcast %struct._GimpRGB* %right_color to i8*
  call void @g_checksum_update(%struct._GChecksum* %26, i8* %28, i64 32)
  %29 = load %struct._GChecksum*, %struct._GChecksum** %checksum, align 8
  %30 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segment, align 8
  %type = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %30, i32 0, i32 7
  %31 = bitcast i32* %type to i8*
  call void @g_checksum_update(%struct._GChecksum* %29, i8* %31, i64 4)
  %32 = load %struct._GChecksum*, %struct._GChecksum** %checksum, align 8
  %33 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segment, align 8
  %color = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %33, i32 0, i32 8
  %34 = bitcast i32* %color to i8*
  call void @g_checksum_update(%struct._GChecksum* %32, i8* %34, i64 4)
  %35 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %segment, align 8
  %next = getelementptr inbounds %struct._GimpGradientSegment, %struct._GimpGradientSegment* %35, i32 0, i32 10
  %36 = load %struct._GimpGradientSegment*, %struct._GimpGradientSegment** %next, align 8
  store %struct._GimpGradientSegment* %36, %struct._GimpGradientSegment** %segment, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %37 = load %struct._GChecksum*, %struct._GChecksum** %checksum, align 8
  %call5 = call i8* @g_checksum_get_string(%struct._GChecksum* %37)
  %call6 = call noalias i8* @g_strdup(i8* %call5)
  store i8* %call6, i8** %checksum_string, align 8
  %38 = load %struct._GChecksum*, %struct._GChecksum** %checksum, align 8
  call void @g_checksum_free(%struct._GChecksum* %38)
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %39 = load i8*, i8** %checksum_string, align 8
  ret i8* %39
}

declare %struct._GChecksum* @g_checksum_new(i32) #1

declare void @g_checksum_update(%struct._GChecksum*, i8*, i64) #1

declare noalias i8* @g_strdup(i8*) #1

declare i8* @g_checksum_get_string(%struct._GChecksum*) #1

declare void @g_checksum_free(%struct._GChecksum*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: nounwind
declare double @pow(double, double) #7

; Function Attrs: nounwind
declare double @log(double) #7

; Function Attrs: nounwind
declare double @sin(double) #7

; Function Attrs: nounwind
declare double @sqrt(double) #7

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
