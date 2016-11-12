; ModuleID = './app/vectors/gimpstroke.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpStrokeClass = type { %struct._GimpObjectClass, void (%struct._GimpStroke*)*, void (%struct._GimpStroke*)*, %struct._GimpAnchor* (%struct._GimpStroke*, %struct._GimpCoords*)*, double (%struct._GimpStroke*, %struct._GimpCoords*, double, %struct._GimpCoords*, %struct._GimpAnchor**, %struct._GimpAnchor**, double*)*, double (%struct._GimpStroke*, %struct._GimpCoords*, %struct._GimpCoords*, double, %struct._GimpCoords*, %struct._GimpAnchor**, %struct._GimpAnchor**, double*)*, double (%struct._GimpStroke*, %struct._GimpCoords*, %struct._GimpCoords*, double, %struct._GimpCoords*, %struct._GimpAnchor**, %struct._GimpAnchor**, double*)*, %struct._GimpAnchor* (%struct._GimpStroke*, %struct._GimpAnchor*)*, void (%struct._GimpStroke*, %struct._GimpAnchor*, i32, i32)*, void (%struct._GimpStroke*, %struct._GimpAnchor*, %struct._GimpCoords*, i32)*, void (%struct._GimpStroke*, %struct._GimpAnchor*, %struct._GimpCoords*, i32)*, void (%struct._GimpStroke*, %struct._GimpAnchor*, i32)*, void (%struct._GimpStroke*, %struct._GimpAnchor*)*, i32 (%struct._GimpStroke*, %struct._GimpAnchor*, double)*, void (%struct._GimpStroke*, %struct._GimpAnchor*, double, %struct._GimpCoords*, i32)*, void (%struct._GimpStroke*, %struct._GimpAnchor*, double, %struct._GimpCoords*, i32)*, void (%struct._GimpStroke*)*, %struct._GimpStroke* (%struct._GimpStroke*, %struct._GimpAnchor*)*, i32 (%struct._GimpStroke*, %struct._GimpAnchor*, double)*, %struct._GimpAnchor* (%struct._GimpStroke*, %struct._GimpAnchor*, double)*, i32 (%struct._GimpStroke*, %struct._GimpAnchor*)*, %struct._GimpAnchor* (%struct._GimpStroke*, %struct._GimpCoords*, %struct._GimpAnchor*, i32)*, i32 (%struct._GimpStroke*, %struct._GimpAnchor*, %struct._GimpStroke*, %struct._GimpAnchor*)*, i32 (%struct._GimpStroke*)*, double (%struct._GimpStroke*, double)*, double (%struct._GimpStroke*, %struct._GimpCoords*)*, i32 (%struct._GimpStroke*, double, double, %struct._GimpCoords*, double*)*, %struct._GArray* (%struct._GimpStroke*, double, i32*)*, %struct._GimpStroke* (%struct._GimpStroke*)*, i8** (%struct._GimpStroke*)*, void (%struct._GimpStroke*, double, double)*, void (%struct._GimpStroke*, double, double)*, void (%struct._GimpStroke*, double, double, double)*, void (%struct._GimpStroke*, i32, double)*, void (%struct._GimpStroke*, double, double, double, double)*, void (%struct._GimpStroke*, %struct._GimpMatrix3*)*, %struct._GList* (%struct._GimpStroke*)*, %struct._GList* (%struct._GimpStroke*)*, %struct._GArray* (%struct._GimpStroke*)*, %struct._GArray* (%struct._GimpStroke*, i32*)* }
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
%struct._GimpAnchor = type { %struct._GimpCoords, i32, i32 }
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GimpStroke = type { %struct._GimpObject, i32, %struct._GList*, i32 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GArray = type { i8*, i32 }
%struct._GimpMatrix3 = type { [3 x [3 x double]] }
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_stroke_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"GimpStroke\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Vectors\00", align 1
@__func__.gimp_stroke_set_ID = private unnamed_addr constant [19 x i8] c"gimp_stroke_set_ID\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"GIMP_IS_STROKE (stroke)\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"stroke->ID == 0\00", align 1
@__func__.gimp_stroke_get_ID = private unnamed_addr constant [19 x i8] c"gimp_stroke_get_ID\00", align 1
@__func__.gimp_stroke_anchor_get = private unnamed_addr constant [23 x i8] c"gimp_stroke_anchor_get\00", align 1
@__func__.gimp_stroke_nearest_point_get = private unnamed_addr constant [30 x i8] c"gimp_stroke_nearest_point_get\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"coord != NULL\00", align 1
@__func__.gimp_stroke_nearest_tangent_get = private unnamed_addr constant [32 x i8] c"gimp_stroke_nearest_tangent_get\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"coords1 != NULL\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"coords2 != NULL\00", align 1
@__func__.gimp_stroke_nearest_intersection_get = private unnamed_addr constant [37 x i8] c"gimp_stroke_nearest_intersection_get\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"direction != NULL\00", align 1
@__func__.gimp_stroke_anchor_get_next = private unnamed_addr constant [28 x i8] c"gimp_stroke_anchor_get_next\00", align 1
@__func__.gimp_stroke_anchor_select = private unnamed_addr constant [26 x i8] c"gimp_stroke_anchor_select\00", align 1
@__func__.gimp_stroke_anchor_move_relative = private unnamed_addr constant [33 x i8] c"gimp_stroke_anchor_move_relative\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"anchor != NULL\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"g_list_find (stroke->anchors, anchor)\00", align 1
@__func__.gimp_stroke_anchor_move_absolute = private unnamed_addr constant [33 x i8] c"gimp_stroke_anchor_move_absolute\00", align 1
@__func__.gimp_stroke_point_is_movable = private unnamed_addr constant [29 x i8] c"gimp_stroke_point_is_movable\00", align 1
@__func__.gimp_stroke_point_move_relative = private unnamed_addr constant [32 x i8] c"gimp_stroke_point_move_relative\00", align 1
@__func__.gimp_stroke_point_move_absolute = private unnamed_addr constant [32 x i8] c"gimp_stroke_point_move_absolute\00", align 1
@__func__.gimp_stroke_close = private unnamed_addr constant [18 x i8] c"gimp_stroke_close\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"stroke->anchors != NULL\00", align 1
@__func__.gimp_stroke_anchor_convert = private unnamed_addr constant [27 x i8] c"gimp_stroke_anchor_convert\00", align 1
@__func__.gimp_stroke_anchor_delete = private unnamed_addr constant [26 x i8] c"gimp_stroke_anchor_delete\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"anchor && anchor->type == GIMP_ANCHOR_ANCHOR\00", align 1
@__func__.gimp_stroke_open = private unnamed_addr constant [17 x i8] c"gimp_stroke_open\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"end_anchor && end_anchor->type == GIMP_ANCHOR_ANCHOR\00", align 1
@__func__.gimp_stroke_anchor_is_insertable = private unnamed_addr constant [33 x i8] c"gimp_stroke_anchor_is_insertable\00", align 1
@__func__.gimp_stroke_anchor_insert = private unnamed_addr constant [26 x i8] c"gimp_stroke_anchor_insert\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"predec->type == GIMP_ANCHOR_ANCHOR\00", align 1
@__func__.gimp_stroke_is_extendable = private unnamed_addr constant [26 x i8] c"gimp_stroke_is_extendable\00", align 1
@__func__.gimp_stroke_extend = private unnamed_addr constant [19 x i8] c"gimp_stroke_extend\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"!stroke->closed\00", align 1
@__func__.gimp_stroke_connect_stroke = private unnamed_addr constant [27 x i8] c"gimp_stroke_connect_stroke\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"GIMP_IS_STROKE (extension)\00", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"stroke->closed == FALSE && extension->closed == FALSE\00", align 1
@.str.17 = private unnamed_addr constant [52 x i8] c"gimp_stroke_connect_stroke: default implementation\0A\00", align 1
@__func__.gimp_stroke_is_empty = private unnamed_addr constant [21 x i8] c"gimp_stroke_is_empty\00", align 1
@__func__.gimp_stroke_get_length = private unnamed_addr constant [23 x i8] c"gimp_stroke_get_length\00", align 1
@__func__.gimp_stroke_get_distance = private unnamed_addr constant [25 x i8] c"gimp_stroke_get_distance\00", align 1
@__func__.gimp_stroke_interpolate = private unnamed_addr constant [24 x i8] c"gimp_stroke_interpolate\00", align 1
@__func__.gimp_stroke_duplicate = private unnamed_addr constant [22 x i8] c"gimp_stroke_duplicate\00", align 1
@__func__.gimp_stroke_make_bezier = private unnamed_addr constant [24 x i8] c"gimp_stroke_make_bezier\00", align 1
@__func__.gimp_stroke_translate = private unnamed_addr constant [22 x i8] c"gimp_stroke_translate\00", align 1
@__func__.gimp_stroke_scale = private unnamed_addr constant [18 x i8] c"gimp_stroke_scale\00", align 1
@__func__.gimp_stroke_rotate = private unnamed_addr constant [19 x i8] c"gimp_stroke_rotate\00", align 1
@__func__.gimp_stroke_flip = private unnamed_addr constant [17 x i8] c"gimp_stroke_flip\00", align 1
@__func__.gimp_stroke_flip_free = private unnamed_addr constant [22 x i8] c"gimp_stroke_flip_free\00", align 1
@__func__.gimp_stroke_transform = private unnamed_addr constant [22 x i8] c"gimp_stroke_transform\00", align 1
@__func__.gimp_stroke_get_draw_anchors = private unnamed_addr constant [29 x i8] c"gimp_stroke_get_draw_anchors\00", align 1
@__func__.gimp_stroke_get_draw_controls = private unnamed_addr constant [30 x i8] c"gimp_stroke_get_draw_controls\00", align 1
@__func__.gimp_stroke_get_draw_lines = private unnamed_addr constant [27 x i8] c"gimp_stroke_get_draw_lines\00", align 1
@__func__.gimp_stroke_control_points_get = private unnamed_addr constant [31 x i8] c"gimp_stroke_control_points_get\00", align 1
@__func__.gimp_stroke_get_point_at_dist = private unnamed_addr constant [30 x i8] c"gimp_stroke_get_point_at_dist\00", align 1
@gimp_stroke_parent_class = internal global i8* null, align 8
@GimpStroke_private_offset = internal global i32 0, align 4
@.str.18 = private unnamed_addr constant [12 x i8] c"gimp-anchor\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"Gimp Anchor\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"The control points of a Stroke\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"control-points\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"Control Points\00", align 1
@.str.23 = private unnamed_addr constant [72 x i8] c"This is an ValueArray with the initial control points of the new Stroke\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"Close Flag\00", align 1
@.str.26 = private unnamed_addr constant [56 x i8] c"this flag indicates whether the stroke is closed or not\00", align 1
@.str.27 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"gimpstroke.c\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@__func__.gimp_stroke_set_property = private unnamed_addr constant [25 x i8] c"gimp_stroke_set_property\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"stroke->anchors == NULL\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"value != NULL\00", align 1
@.str.32 = private unnamed_addr constant [39 x i8] c"G_VALUE_HOLDS (item, GIMP_TYPE_ANCHOR)\00", align 1
@.str.33 = private unnamed_addr constant [52 x i8] c"gimp_stroke_anchor_convert: default implementation\0A\00", align 1
@.str.34 = private unnamed_addr constant [51 x i8] c"gimp_stroke_anchor_delete: default implementation\0A\00", align 1
@.str.35 = private unnamed_addr constant [57 x i8] c"gimp_stroke_point_move_relative: default implementation\0A\00", align 1
@.str.36 = private unnamed_addr constant [57 x i8] c"gimp_stroke_point_move_absolute: default implementation\0A\00", align 1
@.str.37 = private unnamed_addr constant [42 x i8] c"gimp_stroke_open: default implementation\0A\00", align 1
@__func__.gimp_stroke_real_anchor_is_insertable = private unnamed_addr constant [38 x i8] c"gimp_stroke_real_anchor_is_insertable\00", align 1
@__func__.gimp_stroke_real_anchor_insert = private unnamed_addr constant [31 x i8] c"gimp_stroke_real_anchor_insert\00", align 1
@.str.38 = private unnamed_addr constant [44 x i8] c"gimp_stroke_extend: default implementation\0A\00", align 1
@.str.39 = private unnamed_addr constant [50 x i8] c"gimp_stroke_get_distance: default implementation\0A\00", align 1
@.str.40 = private unnamed_addr constant [49 x i8] c"gimp_stroke_interpolate: default implementation\0A\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.42 = private unnamed_addr constant [49 x i8] c"gimp_stroke_make_bezier: default implementation\0A\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_stroke_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_stroke_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_stroke_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_object_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 472, void (i8*, i8*)* bitcast (void (i8*)* @gimp_stroke_class_intern_init to void (i8*, i8*)*), i32 56, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpStroke*)* @gimp_stroke_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_stroke_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_stroke_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_stroke_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_stroke_parent_class, align 8
  %1 = load i32, i32* @GimpStroke_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpStroke_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpStrokeClass*
  call void @gimp_stroke_class_init(%struct._GimpStrokeClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_stroke_init(%struct._GimpStroke* %stroke) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %ID = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %0, i32 0, i32 1
  store i32 0, i32* %ID, align 4
  %1 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %1, i32 0, i32 2
  store %struct._GList* null, %struct._GList** %anchors, align 8
  %2 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %closed = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %2, i32 0, i32 3
  store i32 0, i32* %closed, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_stroke_set_ID(%struct._GimpStroke* %stroke, i32 %id) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %id.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store i32 %id, i32* %id.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_stroke_set_ID, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %ID = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %13, i32 0, i32 1
  %14 = load i32, i32* %ID, align 4
  %cmp12 = icmp eq i32 %14, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_stroke_set_ID, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %15 = load i32, i32* %id.addr, align 4
  %16 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %ID17 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %16, i32 0, i32 1
  store i32 %15, i32* %ID17, align 4
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_stroke_get_ID(%struct._GimpStroke* %stroke) #3 {
entry:
  %retval = alloca i32, align 4
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_stroke_get_ID, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %ID = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %13, i32 0, i32 1
  %14 = load i32, i32* %ID, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define %struct._GimpAnchor* @gimp_stroke_anchor_get(%struct._GimpStroke* %stroke, %struct._GimpCoords* %coord) #3 {
entry:
  %retval = alloca %struct._GimpAnchor*, align 8
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %coord.addr = alloca %struct._GimpCoords*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpCoords* %coord, %struct._GimpCoords** %coord.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_stroke_anchor_get, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %14 = bitcast %struct._GimpStroke* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpStrokeClass*
  %anchor_get = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %16, i32 0, i32 3
  %17 = load %struct._GimpAnchor* (%struct._GimpStroke*, %struct._GimpCoords*)*, %struct._GimpAnchor* (%struct._GimpStroke*, %struct._GimpCoords*)** %anchor_get, align 8
  %18 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %19 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %call12 = call %struct._GimpAnchor* %17(%struct._GimpStroke* %18, %struct._GimpCoords* %19)
  store %struct._GimpAnchor* %call12, %struct._GimpAnchor** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %20 = load %struct._GimpAnchor*, %struct._GimpAnchor** %retval
  ret %struct._GimpAnchor* %20
}

; Function Attrs: nounwind uwtable
define double @gimp_stroke_nearest_point_get(%struct._GimpStroke* %stroke, %struct._GimpCoords* %coord, double %precision, %struct._GimpCoords* %ret_point, %struct._GimpAnchor** %ret_segment_start, %struct._GimpAnchor** %ret_segment_end, double* %ret_pos) #3 {
entry:
  %retval = alloca double, align 8
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %coord.addr = alloca %struct._GimpCoords*, align 8
  %precision.addr = alloca double, align 8
  %ret_point.addr = alloca %struct._GimpCoords*, align 8
  %ret_segment_start.addr = alloca %struct._GimpAnchor**, align 8
  %ret_segment_end.addr = alloca %struct._GimpAnchor**, align 8
  %ret_pos.addr = alloca double*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpCoords* %coord, %struct._GimpCoords** %coord.addr, align 8
  store double %precision, double* %precision.addr, align 8
  store %struct._GimpCoords* %ret_point, %struct._GimpCoords** %ret_point.addr, align 8
  store %struct._GimpAnchor** %ret_segment_start, %struct._GimpAnchor*** %ret_segment_start.addr, align 8
  store %struct._GimpAnchor** %ret_segment_end, %struct._GimpAnchor*** %ret_segment_end.addr, align 8
  store double* %ret_pos, double** %ret_pos.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_stroke_nearest_point_get, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %cmp12 = icmp ne %struct._GimpCoords* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_stroke_nearest_point_get, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %15 = bitcast %struct._GimpStroke* %14 to %struct._GTypeInstance*
  %g_class17 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class17, align 8
  %17 = bitcast %struct._GTypeClass* %16 to %struct._GimpStrokeClass*
  %nearest_point_get = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %17, i32 0, i32 4
  %18 = load double (%struct._GimpStroke*, %struct._GimpCoords*, double, %struct._GimpCoords*, %struct._GimpAnchor**, %struct._GimpAnchor**, double*)*, double (%struct._GimpStroke*, %struct._GimpCoords*, double, %struct._GimpCoords*, %struct._GimpAnchor**, %struct._GimpAnchor**, double*)** %nearest_point_get, align 8
  %tobool18 = icmp ne double (%struct._GimpStroke*, %struct._GimpCoords*, double, %struct._GimpCoords*, %struct._GimpAnchor**, %struct._GimpAnchor**, double*)* %18, null
  br i1 %tobool18, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %do.end.16
  %19 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %20 = bitcast %struct._GimpStroke* %19 to %struct._GTypeInstance*
  %g_class20 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class20, align 8
  %22 = bitcast %struct._GTypeClass* %21 to %struct._GimpStrokeClass*
  %nearest_point_get21 = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %22, i32 0, i32 4
  %23 = load double (%struct._GimpStroke*, %struct._GimpCoords*, double, %struct._GimpCoords*, %struct._GimpAnchor**, %struct._GimpAnchor**, double*)*, double (%struct._GimpStroke*, %struct._GimpCoords*, double, %struct._GimpCoords*, %struct._GimpAnchor**, %struct._GimpAnchor**, double*)** %nearest_point_get21, align 8
  %24 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %25 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %26 = load double, double* %precision.addr, align 8
  %27 = load %struct._GimpCoords*, %struct._GimpCoords** %ret_point.addr, align 8
  %28 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_segment_start.addr, align 8
  %29 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_segment_end.addr, align 8
  %30 = load double*, double** %ret_pos.addr, align 8
  %call22 = call double %23(%struct._GimpStroke* %24, %struct._GimpCoords* %25, double %26, %struct._GimpCoords* %27, %struct._GimpAnchor** %28, %struct._GimpAnchor** %29, double* %30)
  store double %call22, double* %retval
  br label %return

if.end.23:                                        ; preds = %do.end.16
  store double -1.000000e+00, double* %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.19, %if.else.14, %if.else.9
  %31 = load double, double* %retval
  ret double %31
}

; Function Attrs: nounwind uwtable
define double @gimp_stroke_nearest_tangent_get(%struct._GimpStroke* %stroke, %struct._GimpCoords* %coords1, %struct._GimpCoords* %coords2, double %precision, %struct._GimpCoords* %nearest, %struct._GimpAnchor** %ret_segment_start, %struct._GimpAnchor** %ret_segment_end, double* %ret_pos) #3 {
entry:
  %retval = alloca double, align 8
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %coords1.addr = alloca %struct._GimpCoords*, align 8
  %coords2.addr = alloca %struct._GimpCoords*, align 8
  %precision.addr = alloca double, align 8
  %nearest.addr = alloca %struct._GimpCoords*, align 8
  %ret_segment_start.addr = alloca %struct._GimpAnchor**, align 8
  %ret_segment_end.addr = alloca %struct._GimpAnchor**, align 8
  %ret_pos.addr = alloca double*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpCoords* %coords1, %struct._GimpCoords** %coords1.addr, align 8
  store %struct._GimpCoords* %coords2, %struct._GimpCoords** %coords2.addr, align 8
  store double %precision, double* %precision.addr, align 8
  store %struct._GimpCoords* %nearest, %struct._GimpCoords** %nearest.addr, align 8
  store %struct._GimpAnchor** %ret_segment_start, %struct._GimpAnchor*** %ret_segment_start.addr, align 8
  store %struct._GimpAnchor** %ret_segment_end, %struct._GimpAnchor*** %ret_segment_end.addr, align 8
  store double* %ret_pos, double** %ret_pos.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_stroke_nearest_tangent_get, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpCoords*, %struct._GimpCoords** %coords1.addr, align 8
  %cmp12 = icmp ne %struct._GimpCoords* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_stroke_nearest_tangent_get, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpCoords*, %struct._GimpCoords** %coords2.addr, align 8
  %cmp18 = icmp ne %struct._GimpCoords* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_stroke_nearest_tangent_get, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %16 = bitcast %struct._GimpStroke* %15 to %struct._GTypeInstance*
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %18 = bitcast %struct._GTypeClass* %17 to %struct._GimpStrokeClass*
  %nearest_tangent_get = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %18, i32 0, i32 5
  %19 = load double (%struct._GimpStroke*, %struct._GimpCoords*, %struct._GimpCoords*, double, %struct._GimpCoords*, %struct._GimpAnchor**, %struct._GimpAnchor**, double*)*, double (%struct._GimpStroke*, %struct._GimpCoords*, %struct._GimpCoords*, double, %struct._GimpCoords*, %struct._GimpAnchor**, %struct._GimpAnchor**, double*)** %nearest_tangent_get, align 8
  %tobool24 = icmp ne double (%struct._GimpStroke*, %struct._GimpCoords*, %struct._GimpCoords*, double, %struct._GimpCoords*, %struct._GimpAnchor**, %struct._GimpAnchor**, double*)* %19, null
  br i1 %tobool24, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %do.end.22
  %20 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %21 = bitcast %struct._GimpStroke* %20 to %struct._GTypeInstance*
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %23 = bitcast %struct._GTypeClass* %22 to %struct._GimpStrokeClass*
  %nearest_tangent_get27 = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %23, i32 0, i32 5
  %24 = load double (%struct._GimpStroke*, %struct._GimpCoords*, %struct._GimpCoords*, double, %struct._GimpCoords*, %struct._GimpAnchor**, %struct._GimpAnchor**, double*)*, double (%struct._GimpStroke*, %struct._GimpCoords*, %struct._GimpCoords*, double, %struct._GimpCoords*, %struct._GimpAnchor**, %struct._GimpAnchor**, double*)** %nearest_tangent_get27, align 8
  %25 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %26 = load %struct._GimpCoords*, %struct._GimpCoords** %coords1.addr, align 8
  %27 = load %struct._GimpCoords*, %struct._GimpCoords** %coords2.addr, align 8
  %28 = load double, double* %precision.addr, align 8
  %29 = load %struct._GimpCoords*, %struct._GimpCoords** %nearest.addr, align 8
  %30 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_segment_start.addr, align 8
  %31 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_segment_end.addr, align 8
  %32 = load double*, double** %ret_pos.addr, align 8
  %call28 = call double %24(%struct._GimpStroke* %25, %struct._GimpCoords* %26, %struct._GimpCoords* %27, double %28, %struct._GimpCoords* %29, %struct._GimpAnchor** %30, %struct._GimpAnchor** %31, double* %32)
  store double %call28, double* %retval
  br label %return

if.end.29:                                        ; preds = %do.end.22
  store double -1.000000e+00, double* %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.then.25, %if.else.20, %if.else.14, %if.else.9
  %33 = load double, double* %retval
  ret double %33
}

; Function Attrs: nounwind uwtable
define double @gimp_stroke_nearest_intersection_get(%struct._GimpStroke* %stroke, %struct._GimpCoords* %coords1, %struct._GimpCoords* %direction, double %precision, %struct._GimpCoords* %nearest, %struct._GimpAnchor** %ret_segment_start, %struct._GimpAnchor** %ret_segment_end, double* %ret_pos) #3 {
entry:
  %retval = alloca double, align 8
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %coords1.addr = alloca %struct._GimpCoords*, align 8
  %direction.addr = alloca %struct._GimpCoords*, align 8
  %precision.addr = alloca double, align 8
  %nearest.addr = alloca %struct._GimpCoords*, align 8
  %ret_segment_start.addr = alloca %struct._GimpAnchor**, align 8
  %ret_segment_end.addr = alloca %struct._GimpAnchor**, align 8
  %ret_pos.addr = alloca double*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpCoords* %coords1, %struct._GimpCoords** %coords1.addr, align 8
  store %struct._GimpCoords* %direction, %struct._GimpCoords** %direction.addr, align 8
  store double %precision, double* %precision.addr, align 8
  store %struct._GimpCoords* %nearest, %struct._GimpCoords** %nearest.addr, align 8
  store %struct._GimpAnchor** %ret_segment_start, %struct._GimpAnchor*** %ret_segment_start.addr, align 8
  store %struct._GimpAnchor** %ret_segment_end, %struct._GimpAnchor*** %ret_segment_end.addr, align 8
  store double* %ret_pos, double** %ret_pos.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_stroke_nearest_intersection_get, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpCoords*, %struct._GimpCoords** %coords1.addr, align 8
  %cmp12 = icmp ne %struct._GimpCoords* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_stroke_nearest_intersection_get, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpCoords*, %struct._GimpCoords** %direction.addr, align 8
  %cmp18 = icmp ne %struct._GimpCoords* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_stroke_nearest_intersection_get, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %16 = bitcast %struct._GimpStroke* %15 to %struct._GTypeInstance*
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %18 = bitcast %struct._GTypeClass* %17 to %struct._GimpStrokeClass*
  %nearest_intersection_get = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %18, i32 0, i32 6
  %19 = load double (%struct._GimpStroke*, %struct._GimpCoords*, %struct._GimpCoords*, double, %struct._GimpCoords*, %struct._GimpAnchor**, %struct._GimpAnchor**, double*)*, double (%struct._GimpStroke*, %struct._GimpCoords*, %struct._GimpCoords*, double, %struct._GimpCoords*, %struct._GimpAnchor**, %struct._GimpAnchor**, double*)** %nearest_intersection_get, align 8
  %tobool24 = icmp ne double (%struct._GimpStroke*, %struct._GimpCoords*, %struct._GimpCoords*, double, %struct._GimpCoords*, %struct._GimpAnchor**, %struct._GimpAnchor**, double*)* %19, null
  br i1 %tobool24, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %do.end.22
  %20 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %21 = bitcast %struct._GimpStroke* %20 to %struct._GTypeInstance*
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %23 = bitcast %struct._GTypeClass* %22 to %struct._GimpStrokeClass*
  %nearest_intersection_get27 = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %23, i32 0, i32 6
  %24 = load double (%struct._GimpStroke*, %struct._GimpCoords*, %struct._GimpCoords*, double, %struct._GimpCoords*, %struct._GimpAnchor**, %struct._GimpAnchor**, double*)*, double (%struct._GimpStroke*, %struct._GimpCoords*, %struct._GimpCoords*, double, %struct._GimpCoords*, %struct._GimpAnchor**, %struct._GimpAnchor**, double*)** %nearest_intersection_get27, align 8
  %25 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %26 = load %struct._GimpCoords*, %struct._GimpCoords** %coords1.addr, align 8
  %27 = load %struct._GimpCoords*, %struct._GimpCoords** %direction.addr, align 8
  %28 = load double, double* %precision.addr, align 8
  %29 = load %struct._GimpCoords*, %struct._GimpCoords** %nearest.addr, align 8
  %30 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_segment_start.addr, align 8
  %31 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_segment_end.addr, align 8
  %32 = load double*, double** %ret_pos.addr, align 8
  %call28 = call double %24(%struct._GimpStroke* %25, %struct._GimpCoords* %26, %struct._GimpCoords* %27, double %28, %struct._GimpCoords* %29, %struct._GimpAnchor** %30, %struct._GimpAnchor** %31, double* %32)
  store double %call28, double* %retval
  br label %return

if.end.29:                                        ; preds = %do.end.22
  store double -1.000000e+00, double* %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.then.25, %if.else.20, %if.else.14, %if.else.9
  %33 = load double, double* %retval
  ret double %33
}

; Function Attrs: nounwind uwtable
define %struct._GimpAnchor* @gimp_stroke_anchor_get_next(%struct._GimpStroke* %stroke, %struct._GimpAnchor* %prev) #3 {
entry:
  %retval = alloca %struct._GimpAnchor*, align 8
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %prev.addr = alloca %struct._GimpAnchor*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpAnchor* %prev, %struct._GimpAnchor** %prev.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_stroke_anchor_get_next, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %14 = bitcast %struct._GimpStroke* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpStrokeClass*
  %anchor_get_next = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %16, i32 0, i32 7
  %17 = load %struct._GimpAnchor* (%struct._GimpStroke*, %struct._GimpAnchor*)*, %struct._GimpAnchor* (%struct._GimpStroke*, %struct._GimpAnchor*)** %anchor_get_next, align 8
  %18 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %19 = load %struct._GimpAnchor*, %struct._GimpAnchor** %prev.addr, align 8
  %call12 = call %struct._GimpAnchor* %17(%struct._GimpStroke* %18, %struct._GimpAnchor* %19)
  store %struct._GimpAnchor* %call12, %struct._GimpAnchor** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %20 = load %struct._GimpAnchor*, %struct._GimpAnchor** %retval
  ret %struct._GimpAnchor* %20
}

; Function Attrs: nounwind uwtable
define void @gimp_stroke_anchor_select(%struct._GimpStroke* %stroke, %struct._GimpAnchor* %anchor, i32 %selected, i32 %exclusive) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %anchor.addr = alloca %struct._GimpAnchor*, align 8
  %selected.addr = alloca i32, align 4
  %exclusive.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpAnchor* %anchor, %struct._GimpAnchor** %anchor.addr, align 8
  store i32 %selected, i32* %selected.addr, align 4
  store i32 %exclusive, i32* %exclusive.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_stroke_anchor_select, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %14 = bitcast %struct._GimpStroke* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpStrokeClass*
  %anchor_select = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %16, i32 0, i32 8
  %17 = load void (%struct._GimpStroke*, %struct._GimpAnchor*, i32, i32)*, void (%struct._GimpStroke*, %struct._GimpAnchor*, i32, i32)** %anchor_select, align 8
  %18 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %19 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor.addr, align 8
  %20 = load i32, i32* %selected.addr, align 4
  %21 = load i32, i32* %exclusive.addr, align 4
  call void %17(%struct._GimpStroke* %18, %struct._GimpAnchor* %19, i32 %20, i32 %21)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_stroke_anchor_move_relative(%struct._GimpStroke* %stroke, %struct._GimpAnchor* %anchor, %struct._GimpCoords* %delta, i32 %feature) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %anchor.addr = alloca %struct._GimpAnchor*, align 8
  %delta.addr = alloca %struct._GimpCoords*, align 8
  %feature.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpAnchor* %anchor, %struct._GimpAnchor** %anchor.addr, align 8
  store %struct._GimpCoords* %delta, %struct._GimpCoords** %delta.addr, align 8
  store i32 %feature, i32* %feature.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_stroke_anchor_move_relative, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor.addr, align 8
  %cmp12 = icmp ne %struct._GimpAnchor* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_stroke_anchor_move_relative, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %14, i32 0, i32 2
  %15 = load %struct._GList*, %struct._GList** %anchors, align 8
  %16 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor.addr, align 8
  %17 = bitcast %struct._GimpAnchor* %16 to i8*
  %call18 = call %struct._GList* @g_list_find(%struct._GList* %15, i8* %17)
  %tobool19 = icmp ne %struct._GList* %call18, null
  br i1 %tobool19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.17
  br label %if.end.22

if.else.21:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_stroke_anchor_move_relative, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %18 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %19 = bitcast %struct._GimpStroke* %18 to %struct._GTypeInstance*
  %g_class24 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class24, align 8
  %21 = bitcast %struct._GTypeClass* %20 to %struct._GimpStrokeClass*
  %anchor_move_relative = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %21, i32 0, i32 9
  %22 = load void (%struct._GimpStroke*, %struct._GimpAnchor*, %struct._GimpCoords*, i32)*, void (%struct._GimpStroke*, %struct._GimpAnchor*, %struct._GimpCoords*, i32)** %anchor_move_relative, align 8
  %23 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %24 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor.addr, align 8
  %25 = load %struct._GimpCoords*, %struct._GimpCoords** %delta.addr, align 8
  %26 = load i32, i32* %feature.addr, align 4
  call void %22(%struct._GimpStroke* %23, %struct._GimpAnchor* %24, %struct._GimpCoords* %25, i32 %26)
  br label %return

return:                                           ; preds = %do.end.23, %if.else.21, %if.else.14, %if.else.9
  ret void
}

declare %struct._GList* @g_list_find(%struct._GList*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_stroke_anchor_move_absolute(%struct._GimpStroke* %stroke, %struct._GimpAnchor* %anchor, %struct._GimpCoords* %coord, i32 %feature) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %anchor.addr = alloca %struct._GimpAnchor*, align 8
  %coord.addr = alloca %struct._GimpCoords*, align 8
  %feature.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpAnchor* %anchor, %struct._GimpAnchor** %anchor.addr, align 8
  store %struct._GimpCoords* %coord, %struct._GimpCoords** %coord.addr, align 8
  store i32 %feature, i32* %feature.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_stroke_anchor_move_absolute, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor.addr, align 8
  %cmp12 = icmp ne %struct._GimpAnchor* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_stroke_anchor_move_absolute, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %14, i32 0, i32 2
  %15 = load %struct._GList*, %struct._GList** %anchors, align 8
  %16 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor.addr, align 8
  %17 = bitcast %struct._GimpAnchor* %16 to i8*
  %call18 = call %struct._GList* @g_list_find(%struct._GList* %15, i8* %17)
  %tobool19 = icmp ne %struct._GList* %call18, null
  br i1 %tobool19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.17
  br label %if.end.22

if.else.21:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_stroke_anchor_move_absolute, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %18 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %19 = bitcast %struct._GimpStroke* %18 to %struct._GTypeInstance*
  %g_class24 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class24, align 8
  %21 = bitcast %struct._GTypeClass* %20 to %struct._GimpStrokeClass*
  %anchor_move_absolute = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %21, i32 0, i32 10
  %22 = load void (%struct._GimpStroke*, %struct._GimpAnchor*, %struct._GimpCoords*, i32)*, void (%struct._GimpStroke*, %struct._GimpAnchor*, %struct._GimpCoords*, i32)** %anchor_move_absolute, align 8
  %23 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %24 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor.addr, align 8
  %25 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %26 = load i32, i32* %feature.addr, align 4
  call void %22(%struct._GimpStroke* %23, %struct._GimpAnchor* %24, %struct._GimpCoords* %25, i32 %26)
  br label %return

return:                                           ; preds = %do.end.23, %if.else.21, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_stroke_point_is_movable(%struct._GimpStroke* %stroke, %struct._GimpAnchor* %predec, double %position) #3 {
entry:
  %retval = alloca i32, align 4
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %predec.addr = alloca %struct._GimpAnchor*, align 8
  %position.addr = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpAnchor* %predec, %struct._GimpAnchor** %predec.addr, align 8
  store double %position, double* %position.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_stroke_point_is_movable, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %14 = bitcast %struct._GimpStroke* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpStrokeClass*
  %point_is_movable = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %16, i32 0, i32 13
  %17 = load i32 (%struct._GimpStroke*, %struct._GimpAnchor*, double)*, i32 (%struct._GimpStroke*, %struct._GimpAnchor*, double)** %point_is_movable, align 8
  %18 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %19 = load %struct._GimpAnchor*, %struct._GimpAnchor** %predec.addr, align 8
  %20 = load double, double* %position.addr, align 8
  %call12 = call i32 %17(%struct._GimpStroke* %18, %struct._GimpAnchor* %19, double %20)
  store i32 %call12, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define void @gimp_stroke_point_move_relative(%struct._GimpStroke* %stroke, %struct._GimpAnchor* %predec, double %position, %struct._GimpCoords* %deltacoord, i32 %feature) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %predec.addr = alloca %struct._GimpAnchor*, align 8
  %position.addr = alloca double, align 8
  %deltacoord.addr = alloca %struct._GimpCoords*, align 8
  %feature.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpAnchor* %predec, %struct._GimpAnchor** %predec.addr, align 8
  store double %position, double* %position.addr, align 8
  store %struct._GimpCoords* %deltacoord, %struct._GimpCoords** %deltacoord.addr, align 8
  store i32 %feature, i32* %feature.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_stroke_point_move_relative, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %14 = bitcast %struct._GimpStroke* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpStrokeClass*
  %point_move_relative = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %16, i32 0, i32 14
  %17 = load void (%struct._GimpStroke*, %struct._GimpAnchor*, double, %struct._GimpCoords*, i32)*, void (%struct._GimpStroke*, %struct._GimpAnchor*, double, %struct._GimpCoords*, i32)** %point_move_relative, align 8
  %18 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %19 = load %struct._GimpAnchor*, %struct._GimpAnchor** %predec.addr, align 8
  %20 = load double, double* %position.addr, align 8
  %21 = load %struct._GimpCoords*, %struct._GimpCoords** %deltacoord.addr, align 8
  %22 = load i32, i32* %feature.addr, align 4
  call void %17(%struct._GimpStroke* %18, %struct._GimpAnchor* %19, double %20, %struct._GimpCoords* %21, i32 %22)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_stroke_point_move_absolute(%struct._GimpStroke* %stroke, %struct._GimpAnchor* %predec, double %position, %struct._GimpCoords* %coord, i32 %feature) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %predec.addr = alloca %struct._GimpAnchor*, align 8
  %position.addr = alloca double, align 8
  %coord.addr = alloca %struct._GimpCoords*, align 8
  %feature.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpAnchor* %predec, %struct._GimpAnchor** %predec.addr, align 8
  store double %position, double* %position.addr, align 8
  store %struct._GimpCoords* %coord, %struct._GimpCoords** %coord.addr, align 8
  store i32 %feature, i32* %feature.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_stroke_point_move_absolute, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %14 = bitcast %struct._GimpStroke* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpStrokeClass*
  %point_move_absolute = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %16, i32 0, i32 15
  %17 = load void (%struct._GimpStroke*, %struct._GimpAnchor*, double, %struct._GimpCoords*, i32)*, void (%struct._GimpStroke*, %struct._GimpAnchor*, double, %struct._GimpCoords*, i32)** %point_move_absolute, align 8
  %18 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %19 = load %struct._GimpAnchor*, %struct._GimpAnchor** %predec.addr, align 8
  %20 = load double, double* %position.addr, align 8
  %21 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %22 = load i32, i32* %feature.addr, align 4
  call void %17(%struct._GimpStroke* %18, %struct._GimpAnchor* %19, double %20, %struct._GimpCoords* %21, i32 %22)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_stroke_close(%struct._GimpStroke* %stroke) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_stroke_close, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %13, i32 0, i32 2
  %14 = load %struct._GList*, %struct._GList** %anchors, align 8
  %cmp12 = icmp ne %struct._GList* %14, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_stroke_close, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %15 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %16 = bitcast %struct._GimpStroke* %15 to %struct._GTypeInstance*
  %g_class17 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class17, align 8
  %18 = bitcast %struct._GTypeClass* %17 to %struct._GimpStrokeClass*
  %close = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %18, i32 0, i32 16
  %19 = load void (%struct._GimpStroke*)*, void (%struct._GimpStroke*)** %close, align 8
  %20 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  call void %19(%struct._GimpStroke* %20)
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_stroke_anchor_convert(%struct._GimpStroke* %stroke, %struct._GimpAnchor* %anchor, i32 %feature) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %anchor.addr = alloca %struct._GimpAnchor*, align 8
  %feature.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpAnchor* %anchor, %struct._GimpAnchor** %anchor.addr, align 8
  store i32 %feature, i32* %feature.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_stroke_anchor_convert, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %14 = bitcast %struct._GimpStroke* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpStrokeClass*
  %anchor_convert = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %16, i32 0, i32 11
  %17 = load void (%struct._GimpStroke*, %struct._GimpAnchor*, i32)*, void (%struct._GimpStroke*, %struct._GimpAnchor*, i32)** %anchor_convert, align 8
  %18 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %19 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor.addr, align 8
  %20 = load i32, i32* %feature.addr, align 4
  call void %17(%struct._GimpStroke* %18, %struct._GimpAnchor* %19, i32 %20)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_stroke_anchor_delete(%struct._GimpStroke* %stroke, %struct._GimpAnchor* %anchor) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %anchor.addr = alloca %struct._GimpAnchor*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpAnchor* %anchor, %struct._GimpAnchor** %anchor.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_stroke_anchor_delete, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor.addr, align 8
  %tobool12 = icmp ne %struct._GimpAnchor* %13, null
  br i1 %tobool12, label %land.lhs.true.13, label %if.else.16

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor.addr, align 8
  %type = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %14, i32 0, i32 1
  %15 = load i32, i32* %type, align 4
  %cmp14 = icmp eq i32 %15, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.13
  br label %if.end.17

if.else.16:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_stroke_anchor_delete, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %16 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %17 = bitcast %struct._GimpStroke* %16 to %struct._GTypeInstance*
  %g_class19 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class19, align 8
  %19 = bitcast %struct._GTypeClass* %18 to %struct._GimpStrokeClass*
  %anchor_delete = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %19, i32 0, i32 12
  %20 = load void (%struct._GimpStroke*, %struct._GimpAnchor*)*, void (%struct._GimpStroke*, %struct._GimpAnchor*)** %anchor_delete, align 8
  %21 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %22 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor.addr, align 8
  call void %20(%struct._GimpStroke* %21, %struct._GimpAnchor* %22)
  br label %return

return:                                           ; preds = %do.end.18, %if.else.16, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpStroke* @gimp_stroke_open(%struct._GimpStroke* %stroke, %struct._GimpAnchor* %end_anchor) #3 {
entry:
  %retval = alloca %struct._GimpStroke*, align 8
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %end_anchor.addr = alloca %struct._GimpAnchor*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpAnchor* %end_anchor, %struct._GimpAnchor** %end_anchor.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_stroke_open, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpStroke* null, %struct._GimpStroke** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpAnchor*, %struct._GimpAnchor** %end_anchor.addr, align 8
  %tobool12 = icmp ne %struct._GimpAnchor* %13, null
  br i1 %tobool12, label %land.lhs.true.13, label %if.else.16

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load %struct._GimpAnchor*, %struct._GimpAnchor** %end_anchor.addr, align 8
  %type = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %14, i32 0, i32 1
  %15 = load i32, i32* %type, align 4
  %cmp14 = icmp eq i32 %15, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.13
  br label %if.end.17

if.else.16:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_stroke_open, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i32 0, i32 0))
  store %struct._GimpStroke* null, %struct._GimpStroke** %retval
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %16 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %17 = bitcast %struct._GimpStroke* %16 to %struct._GTypeInstance*
  %g_class19 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class19, align 8
  %19 = bitcast %struct._GTypeClass* %18 to %struct._GimpStrokeClass*
  %open = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %19, i32 0, i32 17
  %20 = load %struct._GimpStroke* (%struct._GimpStroke*, %struct._GimpAnchor*)*, %struct._GimpStroke* (%struct._GimpStroke*, %struct._GimpAnchor*)** %open, align 8
  %21 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %22 = load %struct._GimpAnchor*, %struct._GimpAnchor** %end_anchor.addr, align 8
  %call20 = call %struct._GimpStroke* %20(%struct._GimpStroke* %21, %struct._GimpAnchor* %22)
  store %struct._GimpStroke* %call20, %struct._GimpStroke** %retval
  br label %return

return:                                           ; preds = %do.end.18, %if.else.16, %if.else.9
  %23 = load %struct._GimpStroke*, %struct._GimpStroke** %retval
  ret %struct._GimpStroke* %23
}

; Function Attrs: nounwind uwtable
define i32 @gimp_stroke_anchor_is_insertable(%struct._GimpStroke* %stroke, %struct._GimpAnchor* %predec, double %position) #3 {
entry:
  %retval = alloca i32, align 4
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %predec.addr = alloca %struct._GimpAnchor*, align 8
  %position.addr = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpAnchor* %predec, %struct._GimpAnchor** %predec.addr, align 8
  store double %position, double* %position.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_stroke_anchor_is_insertable, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %14 = bitcast %struct._GimpStroke* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpStrokeClass*
  %anchor_is_insertable = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %16, i32 0, i32 18
  %17 = load i32 (%struct._GimpStroke*, %struct._GimpAnchor*, double)*, i32 (%struct._GimpStroke*, %struct._GimpAnchor*, double)** %anchor_is_insertable, align 8
  %18 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %19 = load %struct._GimpAnchor*, %struct._GimpAnchor** %predec.addr, align 8
  %20 = load double, double* %position.addr, align 8
  %call12 = call i32 %17(%struct._GimpStroke* %18, %struct._GimpAnchor* %19, double %20)
  store i32 %call12, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define %struct._GimpAnchor* @gimp_stroke_anchor_insert(%struct._GimpStroke* %stroke, %struct._GimpAnchor* %predec, double %position) #3 {
entry:
  %retval = alloca %struct._GimpAnchor*, align 8
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %predec.addr = alloca %struct._GimpAnchor*, align 8
  %position.addr = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpAnchor* %predec, %struct._GimpAnchor** %predec.addr, align 8
  store double %position, double* %position.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_stroke_anchor_insert, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpAnchor*, %struct._GimpAnchor** %predec.addr, align 8
  %type = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %13, i32 0, i32 1
  %14 = load i32, i32* %type, align 4
  %cmp12 = icmp eq i32 %14, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_stroke_anchor_insert, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0))
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %15 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %16 = bitcast %struct._GimpStroke* %15 to %struct._GTypeInstance*
  %g_class17 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class17, align 8
  %18 = bitcast %struct._GTypeClass* %17 to %struct._GimpStrokeClass*
  %anchor_insert = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %18, i32 0, i32 19
  %19 = load %struct._GimpAnchor* (%struct._GimpStroke*, %struct._GimpAnchor*, double)*, %struct._GimpAnchor* (%struct._GimpStroke*, %struct._GimpAnchor*, double)** %anchor_insert, align 8
  %20 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %21 = load %struct._GimpAnchor*, %struct._GimpAnchor** %predec.addr, align 8
  %22 = load double, double* %position.addr, align 8
  %call18 = call %struct._GimpAnchor* %19(%struct._GimpStroke* %20, %struct._GimpAnchor* %21, double %22)
  store %struct._GimpAnchor* %call18, %struct._GimpAnchor** %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  %23 = load %struct._GimpAnchor*, %struct._GimpAnchor** %retval
  ret %struct._GimpAnchor* %23
}

; Function Attrs: nounwind uwtable
define i32 @gimp_stroke_is_extendable(%struct._GimpStroke* %stroke, %struct._GimpAnchor* %neighbor) #3 {
entry:
  %retval = alloca i32, align 4
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %neighbor.addr = alloca %struct._GimpAnchor*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpAnchor* %neighbor, %struct._GimpAnchor** %neighbor.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_stroke_is_extendable, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %14 = bitcast %struct._GimpStroke* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpStrokeClass*
  %is_extendable = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %16, i32 0, i32 20
  %17 = load i32 (%struct._GimpStroke*, %struct._GimpAnchor*)*, i32 (%struct._GimpStroke*, %struct._GimpAnchor*)** %is_extendable, align 8
  %18 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %19 = load %struct._GimpAnchor*, %struct._GimpAnchor** %neighbor.addr, align 8
  %call12 = call i32 %17(%struct._GimpStroke* %18, %struct._GimpAnchor* %19)
  store i32 %call12, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define %struct._GimpAnchor* @gimp_stroke_extend(%struct._GimpStroke* %stroke, %struct._GimpCoords* %coords, %struct._GimpAnchor* %neighbor, i32 %extend_mode) #3 {
entry:
  %retval = alloca %struct._GimpAnchor*, align 8
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %neighbor.addr = alloca %struct._GimpAnchor*, align 8
  %extend_mode.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store %struct._GimpAnchor* %neighbor, %struct._GimpAnchor** %neighbor.addr, align 8
  store i32 %extend_mode, i32* %extend_mode.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_stroke_extend, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %closed = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %13, i32 0, i32 3
  %14 = load i32, i32* %closed, align 4
  %tobool12 = icmp ne i32 %14, 0
  br i1 %tobool12, label %if.else.14, label %if.then.13

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_stroke_extend, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0))
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %15 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %16 = bitcast %struct._GimpStroke* %15 to %struct._GTypeInstance*
  %g_class17 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class17, align 8
  %18 = bitcast %struct._GTypeClass* %17 to %struct._GimpStrokeClass*
  %extend = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %18, i32 0, i32 21
  %19 = load %struct._GimpAnchor* (%struct._GimpStroke*, %struct._GimpCoords*, %struct._GimpAnchor*, i32)*, %struct._GimpAnchor* (%struct._GimpStroke*, %struct._GimpCoords*, %struct._GimpAnchor*, i32)** %extend, align 8
  %20 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %21 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %22 = load %struct._GimpAnchor*, %struct._GimpAnchor** %neighbor.addr, align 8
  %23 = load i32, i32* %extend_mode.addr, align 4
  %call18 = call %struct._GimpAnchor* %19(%struct._GimpStroke* %20, %struct._GimpCoords* %21, %struct._GimpAnchor* %22, i32 %23)
  store %struct._GimpAnchor* %call18, %struct._GimpAnchor** %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  %24 = load %struct._GimpAnchor*, %struct._GimpAnchor** %retval
  ret %struct._GimpAnchor* %24
}

; Function Attrs: nounwind uwtable
define i32 @gimp_stroke_connect_stroke(%struct._GimpStroke* %stroke, %struct._GimpAnchor* %anchor, %struct._GimpStroke* %extension, %struct._GimpAnchor* %neighbor) #3 {
entry:
  %retval = alloca i32, align 4
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %anchor.addr = alloca %struct._GimpAnchor*, align 8
  %extension.addr = alloca %struct._GimpStroke*, align 8
  %neighbor.addr = alloca %struct._GimpAnchor*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpAnchor* %anchor, %struct._GimpAnchor** %anchor.addr, align 8
  store %struct._GimpStroke* %extension, %struct._GimpStroke** %extension.addr, align 8
  store %struct._GimpAnchor* %neighbor, %struct._GimpAnchor** %neighbor.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_stroke_connect_stroke, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %extension.addr, align 8
  %14 = bitcast %struct._GimpStroke* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_stroke_get_type() #6
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_stroke_connect_stroke, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %closed = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %26, i32 0, i32 3
  %27 = load i32, i32* %closed, align 4
  %cmp40 = icmp eq i32 %27, 0
  br i1 %cmp40, label %land.lhs.true.41, label %if.else.45

land.lhs.true.41:                                 ; preds = %do.body.39
  %28 = load %struct._GimpStroke*, %struct._GimpStroke** %extension.addr, align 8
  %closed42 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %28, i32 0, i32 3
  %29 = load i32, i32* %closed42, align 4
  %cmp43 = icmp eq i32 %29, 0
  br i1 %cmp43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %land.lhs.true.41
  br label %if.end.46

if.else.45:                                       ; preds = %land.lhs.true.41, %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_stroke_connect_stroke, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.16, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  %30 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %31 = bitcast %struct._GimpStroke* %30 to %struct._GTypeInstance*
  %g_class48 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class48, align 8
  %33 = bitcast %struct._GTypeClass* %32 to %struct._GimpStrokeClass*
  %connect_stroke = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %33, i32 0, i32 22
  %34 = load i32 (%struct._GimpStroke*, %struct._GimpAnchor*, %struct._GimpStroke*, %struct._GimpAnchor*)*, i32 (%struct._GimpStroke*, %struct._GimpAnchor*, %struct._GimpStroke*, %struct._GimpAnchor*)** %connect_stroke, align 8
  %35 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %36 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor.addr, align 8
  %37 = load %struct._GimpStroke*, %struct._GimpStroke** %extension.addr, align 8
  %38 = load %struct._GimpAnchor*, %struct._GimpAnchor** %neighbor.addr, align 8
  %call49 = call i32 %34(%struct._GimpStroke* %35, %struct._GimpAnchor* %36, %struct._GimpStroke* %37, %struct._GimpAnchor* %38)
  store i32 %call49, i32* %retval
  br label %return

return:                                           ; preds = %do.end.47, %if.else.45, %if.else.36, %if.else.9
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define i32 @gimp_stroke_real_connect_stroke(%struct._GimpStroke* %stroke, %struct._GimpAnchor* %anchor, %struct._GimpStroke* %extension, %struct._GimpAnchor* %neighbor) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %anchor.addr = alloca %struct._GimpAnchor*, align 8
  %extension.addr = alloca %struct._GimpStroke*, align 8
  %neighbor.addr = alloca %struct._GimpAnchor*, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpAnchor* %anchor, %struct._GimpAnchor** %anchor.addr, align 8
  store %struct._GimpStroke* %extension, %struct._GimpStroke** %extension.addr, align 8
  store %struct._GimpAnchor* %neighbor, %struct._GimpAnchor** %neighbor.addr, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.17, i32 0, i32 0))
  ret i32 0
}

declare void @g_printerr(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_stroke_is_empty(%struct._GimpStroke* %stroke) #3 {
entry:
  %retval = alloca i32, align 4
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_stroke_is_empty, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %14 = bitcast %struct._GimpStroke* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpStrokeClass*
  %is_empty = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %16, i32 0, i32 23
  %17 = load i32 (%struct._GimpStroke*)*, i32 (%struct._GimpStroke*)** %is_empty, align 8
  %18 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %call12 = call i32 %17(%struct._GimpStroke* %18)
  store i32 %call12, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define double @gimp_stroke_get_length(%struct._GimpStroke* %stroke, double %precision) #3 {
entry:
  %retval = alloca double, align 8
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %precision.addr = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store double %precision, double* %precision.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_stroke_get_length, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %14 = bitcast %struct._GimpStroke* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpStrokeClass*
  %get_length = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %16, i32 0, i32 24
  %17 = load double (%struct._GimpStroke*, double)*, double (%struct._GimpStroke*, double)** %get_length, align 8
  %18 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %19 = load double, double* %precision.addr, align 8
  %call12 = call double %17(%struct._GimpStroke* %18, double %19)
  store double %call12, double* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %20 = load double, double* %retval
  ret double %20
}

; Function Attrs: nounwind uwtable
define double @gimp_stroke_get_distance(%struct._GimpStroke* %stroke, %struct._GimpCoords* %coord) #3 {
entry:
  %retval = alloca double, align 8
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %coord.addr = alloca %struct._GimpCoords*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpCoords* %coord, %struct._GimpCoords** %coord.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_stroke_get_distance, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %14 = bitcast %struct._GimpStroke* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpStrokeClass*
  %get_distance = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %16, i32 0, i32 25
  %17 = load double (%struct._GimpStroke*, %struct._GimpCoords*)*, double (%struct._GimpStroke*, %struct._GimpCoords*)** %get_distance, align 8
  %18 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %19 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %call12 = call double %17(%struct._GimpStroke* %18, %struct._GimpCoords* %19)
  store double %call12, double* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %20 = load double, double* %retval
  ret double %20
}

; Function Attrs: nounwind uwtable
define %struct._GArray* @gimp_stroke_interpolate(%struct._GimpStroke* %stroke, double %precision, i32* %ret_closed) #3 {
entry:
  %retval = alloca %struct._GArray*, align 8
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %precision.addr = alloca double, align 8
  %ret_closed.addr = alloca i32*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store double %precision, double* %precision.addr, align 8
  store i32* %ret_closed, i32** %ret_closed.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_stroke_interpolate, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GArray* null, %struct._GArray** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %14 = bitcast %struct._GimpStroke* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpStrokeClass*
  %interpolate = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %16, i32 0, i32 27
  %17 = load %struct._GArray* (%struct._GimpStroke*, double, i32*)*, %struct._GArray* (%struct._GimpStroke*, double, i32*)** %interpolate, align 8
  %18 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %19 = load double, double* %precision.addr, align 8
  %20 = load i32*, i32** %ret_closed.addr, align 8
  %call12 = call %struct._GArray* %17(%struct._GimpStroke* %18, double %19, i32* %20)
  store %struct._GArray* %call12, %struct._GArray** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %21 = load %struct._GArray*, %struct._GArray** %retval
  ret %struct._GArray* %21
}

; Function Attrs: nounwind uwtable
define %struct._GimpStroke* @gimp_stroke_duplicate(%struct._GimpStroke* %stroke) #3 {
entry:
  %retval = alloca %struct._GimpStroke*, align 8
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_stroke_duplicate, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpStroke* null, %struct._GimpStroke** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %14 = bitcast %struct._GimpStroke* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpStrokeClass*
  %duplicate = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %16, i32 0, i32 28
  %17 = load %struct._GimpStroke* (%struct._GimpStroke*)*, %struct._GimpStroke* (%struct._GimpStroke*)** %duplicate, align 8
  %18 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %call12 = call %struct._GimpStroke* %17(%struct._GimpStroke* %18)
  store %struct._GimpStroke* %call12, %struct._GimpStroke** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %19 = load %struct._GimpStroke*, %struct._GimpStroke** %retval
  ret %struct._GimpStroke* %19
}

; Function Attrs: nounwind uwtable
define i8** @gimp_stroke_make_bezier(%struct._GimpStroke* %stroke) #3 {
entry:
  %retval = alloca i8**, align 8
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_stroke_make_bezier, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store i8** null, i8*** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %14 = bitcast %struct._GimpStroke* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpStrokeClass*
  %make_bezier = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %16, i32 0, i32 29
  %17 = load i8** (%struct._GimpStroke*)*, i8** (%struct._GimpStroke*)** %make_bezier, align 8
  %18 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %call12 = call i8** %17(%struct._GimpStroke* %18)
  store i8** %call12, i8*** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %19 = load i8**, i8*** %retval
  ret i8** %19
}

; Function Attrs: nounwind uwtable
define void @gimp_stroke_translate(%struct._GimpStroke* %stroke, double %offset_x, double %offset_y) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %offset_x.addr = alloca double, align 8
  %offset_y.addr = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store double %offset_x, double* %offset_x.addr, align 8
  store double %offset_y, double* %offset_y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_stroke_translate, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %14 = bitcast %struct._GimpStroke* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpStrokeClass*
  %translate = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %16, i32 0, i32 30
  %17 = load void (%struct._GimpStroke*, double, double)*, void (%struct._GimpStroke*, double, double)** %translate, align 8
  %18 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %19 = load double, double* %offset_x.addr, align 8
  %20 = load double, double* %offset_y.addr, align 8
  call void %17(%struct._GimpStroke* %18, double %19, double %20)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_stroke_scale(%struct._GimpStroke* %stroke, double %scale_x, double %scale_y) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %scale_x.addr = alloca double, align 8
  %scale_y.addr = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store double %scale_x, double* %scale_x.addr, align 8
  store double %scale_y, double* %scale_y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_stroke_scale, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %14 = bitcast %struct._GimpStroke* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpStrokeClass*
  %scale = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %16, i32 0, i32 31
  %17 = load void (%struct._GimpStroke*, double, double)*, void (%struct._GimpStroke*, double, double)** %scale, align 8
  %18 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %19 = load double, double* %scale_x.addr, align 8
  %20 = load double, double* %scale_y.addr, align 8
  call void %17(%struct._GimpStroke* %18, double %19, double %20)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_stroke_rotate(%struct._GimpStroke* %stroke, double %center_x, double %center_y, double %angle) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %center_x.addr = alloca double, align 8
  %center_y.addr = alloca double, align 8
  %angle.addr = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store double %center_x, double* %center_x.addr, align 8
  store double %center_y, double* %center_y.addr, align 8
  store double %angle, double* %angle.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_stroke_rotate, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %14 = bitcast %struct._GimpStroke* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpStrokeClass*
  %rotate = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %16, i32 0, i32 32
  %17 = load void (%struct._GimpStroke*, double, double, double)*, void (%struct._GimpStroke*, double, double, double)** %rotate, align 8
  %18 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %19 = load double, double* %center_x.addr, align 8
  %20 = load double, double* %center_y.addr, align 8
  %21 = load double, double* %angle.addr, align 8
  call void %17(%struct._GimpStroke* %18, double %19, double %20, double %21)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_stroke_flip(%struct._GimpStroke* %stroke, i32 %flip_type, double %axis) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %flip_type.addr = alloca i32, align 4
  %axis.addr = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store i32 %flip_type, i32* %flip_type.addr, align 4
  store double %axis, double* %axis.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_stroke_flip, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %14 = bitcast %struct._GimpStroke* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpStrokeClass*
  %flip = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %16, i32 0, i32 33
  %17 = load void (%struct._GimpStroke*, i32, double)*, void (%struct._GimpStroke*, i32, double)** %flip, align 8
  %18 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %19 = load i32, i32* %flip_type.addr, align 4
  %20 = load double, double* %axis.addr, align 8
  call void %17(%struct._GimpStroke* %18, i32 %19, double %20)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_stroke_flip_free(%struct._GimpStroke* %stroke, double %x1, double %y1, double %x2, double %y2) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store double %x1, double* %x1.addr, align 8
  store double %y1, double* %y1.addr, align 8
  store double %x2, double* %x2.addr, align 8
  store double %y2, double* %y2.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_stroke_flip_free, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %14 = bitcast %struct._GimpStroke* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpStrokeClass*
  %flip_free = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %16, i32 0, i32 34
  %17 = load void (%struct._GimpStroke*, double, double, double, double)*, void (%struct._GimpStroke*, double, double, double, double)** %flip_free, align 8
  %18 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %19 = load double, double* %x1.addr, align 8
  %20 = load double, double* %y1.addr, align 8
  %21 = load double, double* %x2.addr, align 8
  %22 = load double, double* %y2.addr, align 8
  call void %17(%struct._GimpStroke* %18, double %19, double %20, double %21, double %22)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_stroke_transform(%struct._GimpStroke* %stroke, %struct._GimpMatrix3* %matrix) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_stroke_transform, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %14 = bitcast %struct._GimpStroke* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpStrokeClass*
  %transform = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %16, i32 0, i32 35
  %17 = load void (%struct._GimpStroke*, %struct._GimpMatrix3*)*, void (%struct._GimpStroke*, %struct._GimpMatrix3*)** %transform, align 8
  %18 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %19 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  call void %17(%struct._GimpStroke* %18, %struct._GimpMatrix3* %19)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_stroke_get_draw_anchors(%struct._GimpStroke* %stroke) #3 {
entry:
  %retval = alloca %struct._GList*, align 8
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_stroke_get_draw_anchors, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %14 = bitcast %struct._GimpStroke* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpStrokeClass*
  %get_draw_anchors = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %16, i32 0, i32 36
  %17 = load %struct._GList* (%struct._GimpStroke*)*, %struct._GList* (%struct._GimpStroke*)** %get_draw_anchors, align 8
  %18 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %call12 = call %struct._GList* %17(%struct._GimpStroke* %18)
  store %struct._GList* %call12, %struct._GList** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %19 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %19
}

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_stroke_get_draw_controls(%struct._GimpStroke* %stroke) #3 {
entry:
  %retval = alloca %struct._GList*, align 8
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_stroke_get_draw_controls, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %14 = bitcast %struct._GimpStroke* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpStrokeClass*
  %get_draw_controls = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %16, i32 0, i32 37
  %17 = load %struct._GList* (%struct._GimpStroke*)*, %struct._GList* (%struct._GimpStroke*)** %get_draw_controls, align 8
  %18 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %call12 = call %struct._GList* %17(%struct._GimpStroke* %18)
  store %struct._GList* %call12, %struct._GList** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %19 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %19
}

; Function Attrs: nounwind uwtable
define %struct._GArray* @gimp_stroke_get_draw_lines(%struct._GimpStroke* %stroke) #3 {
entry:
  %retval = alloca %struct._GArray*, align 8
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_stroke_get_draw_lines, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GArray* null, %struct._GArray** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %14 = bitcast %struct._GimpStroke* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpStrokeClass*
  %get_draw_lines = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %16, i32 0, i32 38
  %17 = load %struct._GArray* (%struct._GimpStroke*)*, %struct._GArray* (%struct._GimpStroke*)** %get_draw_lines, align 8
  %18 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %call12 = call %struct._GArray* %17(%struct._GimpStroke* %18)
  store %struct._GArray* %call12, %struct._GArray** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %19 = load %struct._GArray*, %struct._GArray** %retval
  ret %struct._GArray* %19
}

; Function Attrs: nounwind uwtable
define %struct._GArray* @gimp_stroke_control_points_get(%struct._GimpStroke* %stroke, i32* %ret_closed) #3 {
entry:
  %retval = alloca %struct._GArray*, align 8
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %ret_closed.addr = alloca i32*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store i32* %ret_closed, i32** %ret_closed.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_stroke_control_points_get, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GArray* null, %struct._GArray** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %14 = bitcast %struct._GimpStroke* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpStrokeClass*
  %control_points_get = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %16, i32 0, i32 39
  %17 = load %struct._GArray* (%struct._GimpStroke*, i32*)*, %struct._GArray* (%struct._GimpStroke*, i32*)** %control_points_get, align 8
  %18 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %19 = load i32*, i32** %ret_closed.addr, align 8
  %call12 = call %struct._GArray* %17(%struct._GimpStroke* %18, i32* %19)
  store %struct._GArray* %call12, %struct._GArray** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %20 = load %struct._GArray*, %struct._GArray** %retval
  ret %struct._GArray* %20
}

; Function Attrs: nounwind uwtable
define i32 @gimp_stroke_get_point_at_dist(%struct._GimpStroke* %stroke, double %dist, double %precision, %struct._GimpCoords* %position, double* %slope) #3 {
entry:
  %retval = alloca i32, align 4
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %dist.addr = alloca double, align 8
  %precision.addr = alloca double, align 8
  %position.addr = alloca %struct._GimpCoords*, align 8
  %slope.addr = alloca double*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store double %dist, double* %dist.addr, align 8
  store double %precision, double* %precision.addr, align 8
  store %struct._GimpCoords* %position, %struct._GimpCoords** %position.addr, align 8
  store double* %slope, double** %slope.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_stroke_get_point_at_dist, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %14 = bitcast %struct._GimpStroke* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpStrokeClass*
  %get_point_at_dist = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %16, i32 0, i32 26
  %17 = load i32 (%struct._GimpStroke*, double, double, %struct._GimpCoords*, double*)*, i32 (%struct._GimpStroke*, double, double, %struct._GimpCoords*, double*)** %get_point_at_dist, align 8
  %18 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %19 = load double, double* %dist.addr, align 8
  %20 = load double, double* %precision.addr, align 8
  %21 = load %struct._GimpCoords*, %struct._GimpCoords** %position.addr, align 8
  %22 = load double*, double** %slope.addr, align 8
  %call12 = call i32 %17(%struct._GimpStroke* %18, double %19, double %20, %struct._GimpCoords* %21, double* %22)
  store i32 %call12, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_stroke_class_init(%struct._GimpStrokeClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpStrokeClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  %param_spec = alloca %struct._GParamSpec*, align 8
  store %struct._GimpStrokeClass* %klass, %struct._GimpStrokeClass** %klass.addr, align 8
  %0 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpStrokeClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpStrokeClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_stroke_finalize, void (%struct._GObject*)** %finalize, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_stroke_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_stroke_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %9 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %9, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_stroke_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %10 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %klass.addr, align 8
  %changed = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %10, i32 0, i32 1
  store void (%struct._GimpStroke*)* null, void (%struct._GimpStroke*)** %changed, align 8
  %11 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %klass.addr, align 8
  %removed = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %11, i32 0, i32 2
  store void (%struct._GimpStroke*)* null, void (%struct._GimpStroke*)** %removed, align 8
  %12 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %klass.addr, align 8
  %anchor_get = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %12, i32 0, i32 3
  store %struct._GimpAnchor* (%struct._GimpStroke*, %struct._GimpCoords*)* @gimp_stroke_real_anchor_get, %struct._GimpAnchor* (%struct._GimpStroke*, %struct._GimpCoords*)** %anchor_get, align 8
  %13 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %klass.addr, align 8
  %anchor_get_next = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %13, i32 0, i32 7
  store %struct._GimpAnchor* (%struct._GimpStroke*, %struct._GimpAnchor*)* @gimp_stroke_real_anchor_get_next, %struct._GimpAnchor* (%struct._GimpStroke*, %struct._GimpAnchor*)** %anchor_get_next, align 8
  %14 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %klass.addr, align 8
  %anchor_select = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %14, i32 0, i32 8
  store void (%struct._GimpStroke*, %struct._GimpAnchor*, i32, i32)* @gimp_stroke_real_anchor_select, void (%struct._GimpStroke*, %struct._GimpAnchor*, i32, i32)** %anchor_select, align 8
  %15 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %klass.addr, align 8
  %anchor_move_relative = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %15, i32 0, i32 9
  store void (%struct._GimpStroke*, %struct._GimpAnchor*, %struct._GimpCoords*, i32)* @gimp_stroke_real_anchor_move_relative, void (%struct._GimpStroke*, %struct._GimpAnchor*, %struct._GimpCoords*, i32)** %anchor_move_relative, align 8
  %16 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %klass.addr, align 8
  %anchor_move_absolute = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %16, i32 0, i32 10
  store void (%struct._GimpStroke*, %struct._GimpAnchor*, %struct._GimpCoords*, i32)* @gimp_stroke_real_anchor_move_absolute, void (%struct._GimpStroke*, %struct._GimpAnchor*, %struct._GimpCoords*, i32)** %anchor_move_absolute, align 8
  %17 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %klass.addr, align 8
  %anchor_convert = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %17, i32 0, i32 11
  store void (%struct._GimpStroke*, %struct._GimpAnchor*, i32)* @gimp_stroke_real_anchor_convert, void (%struct._GimpStroke*, %struct._GimpAnchor*, i32)** %anchor_convert, align 8
  %18 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %klass.addr, align 8
  %anchor_delete = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %18, i32 0, i32 12
  store void (%struct._GimpStroke*, %struct._GimpAnchor*)* @gimp_stroke_real_anchor_delete, void (%struct._GimpStroke*, %struct._GimpAnchor*)** %anchor_delete, align 8
  %19 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %klass.addr, align 8
  %point_is_movable = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %19, i32 0, i32 13
  store i32 (%struct._GimpStroke*, %struct._GimpAnchor*, double)* @gimp_stroke_real_point_is_movable, i32 (%struct._GimpStroke*, %struct._GimpAnchor*, double)** %point_is_movable, align 8
  %20 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %klass.addr, align 8
  %point_move_relative = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %20, i32 0, i32 14
  store void (%struct._GimpStroke*, %struct._GimpAnchor*, double, %struct._GimpCoords*, i32)* @gimp_stroke_real_point_move_relative, void (%struct._GimpStroke*, %struct._GimpAnchor*, double, %struct._GimpCoords*, i32)** %point_move_relative, align 8
  %21 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %klass.addr, align 8
  %point_move_absolute = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %21, i32 0, i32 15
  store void (%struct._GimpStroke*, %struct._GimpAnchor*, double, %struct._GimpCoords*, i32)* @gimp_stroke_real_point_move_absolute, void (%struct._GimpStroke*, %struct._GimpAnchor*, double, %struct._GimpCoords*, i32)** %point_move_absolute, align 8
  %22 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %klass.addr, align 8
  %nearest_point_get = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %22, i32 0, i32 4
  store double (%struct._GimpStroke*, %struct._GimpCoords*, double, %struct._GimpCoords*, %struct._GimpAnchor**, %struct._GimpAnchor**, double*)* null, double (%struct._GimpStroke*, %struct._GimpCoords*, double, %struct._GimpCoords*, %struct._GimpAnchor**, %struct._GimpAnchor**, double*)** %nearest_point_get, align 8
  %23 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %klass.addr, align 8
  %nearest_tangent_get = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %23, i32 0, i32 5
  store double (%struct._GimpStroke*, %struct._GimpCoords*, %struct._GimpCoords*, double, %struct._GimpCoords*, %struct._GimpAnchor**, %struct._GimpAnchor**, double*)* null, double (%struct._GimpStroke*, %struct._GimpCoords*, %struct._GimpCoords*, double, %struct._GimpCoords*, %struct._GimpAnchor**, %struct._GimpAnchor**, double*)** %nearest_tangent_get, align 8
  %24 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %klass.addr, align 8
  %nearest_intersection_get = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %24, i32 0, i32 6
  store double (%struct._GimpStroke*, %struct._GimpCoords*, %struct._GimpCoords*, double, %struct._GimpCoords*, %struct._GimpAnchor**, %struct._GimpAnchor**, double*)* null, double (%struct._GimpStroke*, %struct._GimpCoords*, %struct._GimpCoords*, double, %struct._GimpCoords*, %struct._GimpAnchor**, %struct._GimpAnchor**, double*)** %nearest_intersection_get, align 8
  %25 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %klass.addr, align 8
  %close = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %25, i32 0, i32 16
  store void (%struct._GimpStroke*)* @gimp_stroke_real_close, void (%struct._GimpStroke*)** %close, align 8
  %26 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %klass.addr, align 8
  %open = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %26, i32 0, i32 17
  store %struct._GimpStroke* (%struct._GimpStroke*, %struct._GimpAnchor*)* @gimp_stroke_real_open, %struct._GimpStroke* (%struct._GimpStroke*, %struct._GimpAnchor*)** %open, align 8
  %27 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %klass.addr, align 8
  %anchor_is_insertable = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %27, i32 0, i32 18
  store i32 (%struct._GimpStroke*, %struct._GimpAnchor*, double)* @gimp_stroke_real_anchor_is_insertable, i32 (%struct._GimpStroke*, %struct._GimpAnchor*, double)** %anchor_is_insertable, align 8
  %28 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %klass.addr, align 8
  %anchor_insert = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %28, i32 0, i32 19
  store %struct._GimpAnchor* (%struct._GimpStroke*, %struct._GimpAnchor*, double)* @gimp_stroke_real_anchor_insert, %struct._GimpAnchor* (%struct._GimpStroke*, %struct._GimpAnchor*, double)** %anchor_insert, align 8
  %29 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %klass.addr, align 8
  %is_extendable = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %29, i32 0, i32 20
  store i32 (%struct._GimpStroke*, %struct._GimpAnchor*)* @gimp_stroke_real_is_extendable, i32 (%struct._GimpStroke*, %struct._GimpAnchor*)** %is_extendable, align 8
  %30 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %klass.addr, align 8
  %extend = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %30, i32 0, i32 21
  store %struct._GimpAnchor* (%struct._GimpStroke*, %struct._GimpCoords*, %struct._GimpAnchor*, i32)* @gimp_stroke_real_extend, %struct._GimpAnchor* (%struct._GimpStroke*, %struct._GimpCoords*, %struct._GimpAnchor*, i32)** %extend, align 8
  %31 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %klass.addr, align 8
  %connect_stroke = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %31, i32 0, i32 22
  store i32 (%struct._GimpStroke*, %struct._GimpAnchor*, %struct._GimpStroke*, %struct._GimpAnchor*)* @gimp_stroke_real_connect_stroke, i32 (%struct._GimpStroke*, %struct._GimpAnchor*, %struct._GimpStroke*, %struct._GimpAnchor*)** %connect_stroke, align 8
  %32 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %klass.addr, align 8
  %is_empty = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %32, i32 0, i32 23
  store i32 (%struct._GimpStroke*)* @gimp_stroke_real_is_empty, i32 (%struct._GimpStroke*)** %is_empty, align 8
  %33 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %klass.addr, align 8
  %get_length = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %33, i32 0, i32 24
  store double (%struct._GimpStroke*, double)* @gimp_stroke_real_get_length, double (%struct._GimpStroke*, double)** %get_length, align 8
  %34 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %klass.addr, align 8
  %get_distance = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %34, i32 0, i32 25
  store double (%struct._GimpStroke*, %struct._GimpCoords*)* @gimp_stroke_real_get_distance, double (%struct._GimpStroke*, %struct._GimpCoords*)** %get_distance, align 8
  %35 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %klass.addr, align 8
  %get_point_at_dist = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %35, i32 0, i32 26
  store i32 (%struct._GimpStroke*, double, double, %struct._GimpCoords*, double*)* @gimp_stroke_real_get_point_at_dist, i32 (%struct._GimpStroke*, double, double, %struct._GimpCoords*, double*)** %get_point_at_dist, align 8
  %36 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %klass.addr, align 8
  %interpolate = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %36, i32 0, i32 27
  store %struct._GArray* (%struct._GimpStroke*, double, i32*)* @gimp_stroke_real_interpolate, %struct._GArray* (%struct._GimpStroke*, double, i32*)** %interpolate, align 8
  %37 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %klass.addr, align 8
  %duplicate = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %37, i32 0, i32 28
  store %struct._GimpStroke* (%struct._GimpStroke*)* @gimp_stroke_real_duplicate, %struct._GimpStroke* (%struct._GimpStroke*)** %duplicate, align 8
  %38 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %klass.addr, align 8
  %make_bezier = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %38, i32 0, i32 29
  store i8** (%struct._GimpStroke*)* @gimp_stroke_real_make_bezier, i8** (%struct._GimpStroke*)** %make_bezier, align 8
  %39 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %klass.addr, align 8
  %translate = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %39, i32 0, i32 30
  store void (%struct._GimpStroke*, double, double)* @gimp_stroke_real_translate, void (%struct._GimpStroke*, double, double)** %translate, align 8
  %40 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %klass.addr, align 8
  %scale = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %40, i32 0, i32 31
  store void (%struct._GimpStroke*, double, double)* @gimp_stroke_real_scale, void (%struct._GimpStroke*, double, double)** %scale, align 8
  %41 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %klass.addr, align 8
  %rotate = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %41, i32 0, i32 32
  store void (%struct._GimpStroke*, double, double, double)* @gimp_stroke_real_rotate, void (%struct._GimpStroke*, double, double, double)** %rotate, align 8
  %42 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %klass.addr, align 8
  %flip = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %42, i32 0, i32 33
  store void (%struct._GimpStroke*, i32, double)* @gimp_stroke_real_flip, void (%struct._GimpStroke*, i32, double)** %flip, align 8
  %43 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %klass.addr, align 8
  %flip_free = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %43, i32 0, i32 34
  store void (%struct._GimpStroke*, double, double, double, double)* @gimp_stroke_real_flip_free, void (%struct._GimpStroke*, double, double, double, double)** %flip_free, align 8
  %44 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %klass.addr, align 8
  %transform = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %44, i32 0, i32 35
  store void (%struct._GimpStroke*, %struct._GimpMatrix3*)* @gimp_stroke_real_transform, void (%struct._GimpStroke*, %struct._GimpMatrix3*)** %transform, align 8
  %45 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %klass.addr, align 8
  %get_draw_anchors = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %45, i32 0, i32 36
  store %struct._GList* (%struct._GimpStroke*)* @gimp_stroke_real_get_draw_anchors, %struct._GList* (%struct._GimpStroke*)** %get_draw_anchors, align 8
  %46 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %klass.addr, align 8
  %get_draw_controls = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %46, i32 0, i32 37
  store %struct._GList* (%struct._GimpStroke*)* @gimp_stroke_real_get_draw_controls, %struct._GList* (%struct._GimpStroke*)** %get_draw_controls, align 8
  %47 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %klass.addr, align 8
  %get_draw_lines = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %47, i32 0, i32 38
  store %struct._GArray* (%struct._GimpStroke*)* @gimp_stroke_real_get_draw_lines, %struct._GArray* (%struct._GimpStroke*)** %get_draw_lines, align 8
  %48 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %klass.addr, align 8
  %control_points_get = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %48, i32 0, i32 39
  store %struct._GArray* (%struct._GimpStroke*, i32*)* @gimp_stroke_real_control_points_get, %struct._GArray* (%struct._GimpStroke*, i32*)** %control_points_get, align 8
  %call3 = call i64 @gimp_anchor_get_type() #6
  %call4 = call %struct._GParamSpec* @g_param_spec_boxed(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i32 0, i32 0), i64 %call3, i32 234)
  store %struct._GParamSpec* %call4, %struct._GParamSpec** %param_spec, align 8
  %49 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %50 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_value_array(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.23, i32 0, i32 0), %struct._GParamSpec* %50, i32 234)
  call void @g_object_class_install_property(%struct._GObjectClass* %49, i32 1, %struct._GParamSpec* %call5)
  %51 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.26, i32 0, i32 0), i32 0, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %51, i32 2, %struct._GParamSpec* %call6)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_stroke_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %stroke = alloca %struct._GimpStroke*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_stroke_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpStroke*
  store %struct._GimpStroke* %2, %struct._GimpStroke** %stroke, align 8
  %3 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %3, i32 0, i32 2
  %4 = load %struct._GList*, %struct._GList** %anchors, align 8
  %tobool = icmp ne %struct._GList* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %anchors2 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %5, i32 0, i32 2
  %6 = load %struct._GList*, %struct._GList** %anchors2, align 8
  call void @g_list_free_full(%struct._GList* %6, void (i8*)* bitcast (void (%struct._GimpAnchor*)* @gimp_anchor_free to void (i8*)*))
  %7 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %anchors3 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %7, i32 0, i32 2
  store %struct._GList* null, %struct._GList** %anchors3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_stroke_parent_class, align 8
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
define internal void @gimp_stroke_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %stroke = alloca %struct._GimpStroke*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_stroke_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpStroke*
  store %struct._GimpStroke* %2, %struct._GimpStroke** %stroke, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 2, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %closed = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %5, i32 0, i32 3
  %6 = load i32, i32* %closed, align 4
  call void @g_value_set_boolean(%struct._GValue* %4, i32 %6)
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
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), i32 323, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i32 %10, i8* %12, i8* %call2, i8* %call5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_stroke_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %stroke = alloca %struct._GimpStroke*, align 8
  %val_array = alloca %struct._GValueArray*, align 8
  %item = alloca %struct._GValue*, align 8
  %i = alloca i32, align 4
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_stroke_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpStroke*
  store %struct._GimpStroke* %2, %struct._GimpStroke** %stroke, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_boolean(%struct._GValue* %4)
  %5 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %closed = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %5, i32 0, i32 3
  store i32 %call2, i32* %closed, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.bb.3
  %6 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %6, i32 0, i32 2
  %7 = load %struct._GList*, %struct._GList** %anchors, align 8
  %cmp = icmp eq %struct._GList* %7, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_stroke_set_property, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i32 0, i32 0))
  br label %sw.epilog

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.4

do.body.4:                                        ; preds = %do.end
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %cmp5 = icmp ne %struct._GValue* %8, null
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %do.body.4
  br label %if.end.8

if.else.7:                                        ; preds = %do.body.4
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_stroke_set_property, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0))
  br label %sw.epilog

if.end.8:                                         ; preds = %if.then.6
  br label %do.end.9

do.end.9:                                         ; preds = %if.end.8
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call i8* @g_value_get_boxed(%struct._GValue* %9)
  %10 = bitcast i8* %call10 to %struct._GValueArray*
  store %struct._GValueArray* %10, %struct._GValueArray** %val_array, align 8
  %11 = load %struct._GValueArray*, %struct._GValueArray** %val_array, align 8
  %cmp11 = icmp eq %struct._GValueArray* %11, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %do.end.9
  br label %sw.epilog

if.end.13:                                        ; preds = %do.end.9
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.13
  %12 = load i32, i32* %i, align 4
  %13 = load %struct._GValueArray*, %struct._GValueArray** %val_array, align 8
  %n_values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %13, i32 0, i32 0
  %14 = load i32, i32* %n_values, align 4
  %cmp14 = icmp ult i32 %12, %14
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct._GValueArray*, %struct._GValueArray** %val_array, align 8
  %16 = load i32, i32* %i, align 4
  %call15 = call %struct._GValue* @g_value_array_get_nth(%struct._GValueArray* %15, i32 %16)
  store %struct._GValue* %call15, %struct._GValue** %item, align 8
  br label %do.body.16

do.body.16:                                       ; preds = %for.body
  %17 = load %struct._GValue*, %struct._GValue** %item, align 8
  store %struct._GValue* %17, %struct._GValue** %__val, align 8
  %call17 = call i64 @gimp_anchor_get_type() #6
  store i64 %call17, i64* %__t, align 8
  %18 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %18, null
  br i1 %tobool, label %if.else.19, label %if.then.18

if.then.18:                                       ; preds = %do.body.16
  store i32 0, i32* %__r, align 4
  br label %if.end.25

if.else.19:                                       ; preds = %do.body.16
  %19 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type, align 8
  %21 = load i64, i64* %__t, align 8
  %cmp20 = icmp eq i64 %20, %21
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %if.else.19
  store i32 1, i32* %__r, align 4
  br label %if.end.24

if.else.22:                                       ; preds = %if.else.19
  %22 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %23 = load i64, i64* %__t, align 8
  %call23 = call i32 @g_type_check_value_holds(%struct._GValue* %22, i64 %23) #7
  store i32 %call23, i32* %__r, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.22, %if.then.21
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.18
  %24 = load i32, i32* %__r, align 4
  store i32 %24, i32* %tmp
  %25 = load i32, i32* %tmp
  %tobool26 = icmp ne i32 %25, 0
  br i1 %tobool26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %if.end.25
  br label %if.end.29

if.else.28:                                       ; preds = %if.end.25
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_stroke_set_property, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.32, i32 0, i32 0))
  br label %sw.epilog

if.end.29:                                        ; preds = %if.then.27
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  %26 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %anchors31 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %26, i32 0, i32 2
  %27 = load %struct._GList*, %struct._GList** %anchors31, align 8
  %28 = load %struct._GValue*, %struct._GValue** %item, align 8
  %call32 = call i8* @g_value_dup_boxed(%struct._GValue* %28)
  %call33 = call %struct._GList* @g_list_append(%struct._GList* %27, i8* %call32)
  %29 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %anchors34 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %29, i32 0, i32 2
  store %struct._GList* %call33, %struct._GList** %anchors34, align 8
  br label %for.inc

for.inc:                                          ; preds = %do.end.30
  %30 = load i32, i32* %i, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body.35

do.body.35:                                       ; preds = %sw.default
  %31 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %31, %struct._GObject** %_glib__object, align 8
  %32 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %32, %struct._GParamSpec** %_glib__pspec, align 8
  %33 = load i32, i32* %property_id.addr, align 4
  store i32 %33, i32* %_glib__property_id, align 4
  %34 = load i32, i32* %_glib__property_id, align 4
  %35 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %35, i32 0, i32 1
  %36 = load i8*, i8** %name, align 8
  %37 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %38 = bitcast %struct._GParamSpec* %37 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %38, i32 0, i32 0
  %39 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type39 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %39, i32 0, i32 0
  %40 = load i64, i64* %g_type39, align 8
  %call40 = call i8* @g_type_name(i64 %40)
  %41 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %42 = bitcast %struct._GObject* %41 to %struct._GTypeInstance*
  %g_class41 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %42, i32 0, i32 0
  %43 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class41, align 8
  %g_type42 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %43, i32 0, i32 0
  %44 = load i64, i64* %g_type42, align 8
  %call43 = call i8* @g_type_name(i64 %44)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), i32 304, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i32 %34, i8* %36, i8* %call40, i8* %call43)
  br label %do.end.44

do.end.44:                                        ; preds = %do.body.35
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.else.7, %if.then.12, %if.else.28, %do.end.44, %for.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_stroke_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %stroke = alloca %struct._GimpStroke*, align 8
  %memsize = alloca i64, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_stroke_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpStroke*
  store %struct._GimpStroke* %2, %struct._GimpStroke** %stroke, align 8
  store i64 0, i64* %memsize, align 8
  %3 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %3, i32 0, i32 2
  %4 = load %struct._GList*, %struct._GList** %anchors, align 8
  %call2 = call i64 @gimp_g_list_get_memsize(%struct._GList* %4, i64 72)
  %5 = load i64, i64* %memsize, align 8
  %add = add nsw i64 %5, %call2
  store i64 %add, i64* %memsize, align 8
  %6 = load i64, i64* %memsize, align 8
  %7 = load i8*, i8** @gimp_stroke_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call i64 @gimp_object_get_type() #6
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
define internal %struct._GimpAnchor* @gimp_stroke_real_anchor_get(%struct._GimpStroke* %stroke, %struct._GimpCoords* %coord) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %coord.addr = alloca %struct._GimpCoords*, align 8
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %mindist = alloca double, align 8
  %anchors = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %anchor = alloca %struct._GimpAnchor*, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpCoords* %coord, %struct._GimpCoords** %coord.addr, align 8
  store double -1.000000e+00, double* %mindist, align 8
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %anchor, align 8
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %call = call %struct._GList* @gimp_stroke_get_draw_controls(%struct._GimpStroke* %0)
  store %struct._GList* %call, %struct._GList** %anchors, align 8
  %1 = load %struct._GList*, %struct._GList** %anchors, align 8
  store %struct._GList* %1, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %3, i32 0, i32 0
  %4 = load double, double* %x, align 8
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8
  %7 = bitcast i8* %6 to %struct._GimpAnchor*
  %position = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %7, i32 0, i32 0
  %x1 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position, i32 0, i32 0
  %8 = load double, double* %x1, align 8
  %sub = fsub double %4, %8
  store double %sub, double* %dx, align 8
  %9 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %9, i32 0, i32 1
  %10 = load double, double* %y, align 8
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %data2 = getelementptr inbounds %struct._GList, %struct._GList* %11, i32 0, i32 0
  %12 = load i8*, i8** %data2, align 8
  %13 = bitcast i8* %12 to %struct._GimpAnchor*
  %position3 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %13, i32 0, i32 0
  %y4 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position3, i32 0, i32 1
  %14 = load double, double* %y4, align 8
  %sub5 = fsub double %10, %14
  store double %sub5, double* %dy, align 8
  %15 = load double, double* %mindist, align 8
  %cmp = fcmp olt double %15, 0.000000e+00
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %16 = load double, double* %mindist, align 8
  %17 = load double, double* %dx, align 8
  %18 = load double, double* %dx, align 8
  %mul = fmul double %17, %18
  %19 = load double, double* %dy, align 8
  %20 = load double, double* %dy, align 8
  %mul6 = fmul double %19, %20
  %add = fadd double %mul, %mul6
  %cmp7 = fcmp ogt double %16, %add
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %21 = load double, double* %dx, align 8
  %22 = load double, double* %dx, align 8
  %mul8 = fmul double %21, %22
  %23 = load double, double* %dy, align 8
  %24 = load double, double* %dy, align 8
  %mul9 = fmul double %23, %24
  %add10 = fadd double %mul8, %mul9
  store double %add10, double* %mindist, align 8
  %25 = load %struct._GList*, %struct._GList** %list, align 8
  %data11 = getelementptr inbounds %struct._GList, %struct._GList* %25, i32 0, i32 0
  %26 = load i8*, i8** %data11, align 8
  %27 = bitcast i8* %26 to %struct._GimpAnchor*
  store %struct._GimpAnchor* %27, %struct._GimpAnchor** %anchor, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool12 = icmp ne %struct._GList* %28, null
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %29 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %29, i32 0, i32 1
  %30 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %30, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load %struct._GList*, %struct._GList** %anchors, align 8
  call void @g_list_free(%struct._GList* %31)
  %32 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %call13 = call %struct._GList* @gimp_stroke_get_draw_anchors(%struct._GimpStroke* %32)
  store %struct._GList* %call13, %struct._GList** %anchors, align 8
  %33 = load %struct._GList*, %struct._GList** %anchors, align 8
  store %struct._GList* %33, %struct._GList** %list, align 8
  br label %for.cond.14

for.cond.14:                                      ; preds = %cond.end.44, %for.end
  %34 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool15 = icmp ne %struct._GList* %34, null
  br i1 %tobool15, label %for.body.16, label %for.end.46

for.body.16:                                      ; preds = %for.cond.14
  %35 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %x17 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %35, i32 0, i32 0
  %36 = load double, double* %x17, align 8
  %37 = load %struct._GList*, %struct._GList** %list, align 8
  %data18 = getelementptr inbounds %struct._GList, %struct._GList* %37, i32 0, i32 0
  %38 = load i8*, i8** %data18, align 8
  %39 = bitcast i8* %38 to %struct._GimpAnchor*
  %position19 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %39, i32 0, i32 0
  %x20 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position19, i32 0, i32 0
  %40 = load double, double* %x20, align 8
  %sub21 = fsub double %36, %40
  store double %sub21, double* %dx, align 8
  %41 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %y22 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %41, i32 0, i32 1
  %42 = load double, double* %y22, align 8
  %43 = load %struct._GList*, %struct._GList** %list, align 8
  %data23 = getelementptr inbounds %struct._GList, %struct._GList* %43, i32 0, i32 0
  %44 = load i8*, i8** %data23, align 8
  %45 = bitcast i8* %44 to %struct._GimpAnchor*
  %position24 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %45, i32 0, i32 0
  %y25 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position24, i32 0, i32 1
  %46 = load double, double* %y25, align 8
  %sub26 = fsub double %42, %46
  store double %sub26, double* %dy, align 8
  %47 = load double, double* %mindist, align 8
  %cmp27 = fcmp olt double %47, 0.000000e+00
  br i1 %cmp27, label %if.then.33, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %for.body.16
  %48 = load double, double* %mindist, align 8
  %49 = load double, double* %dx, align 8
  %50 = load double, double* %dx, align 8
  %mul29 = fmul double %49, %50
  %51 = load double, double* %dy, align 8
  %52 = load double, double* %dy, align 8
  %mul30 = fmul double %51, %52
  %add31 = fadd double %mul29, %mul30
  %cmp32 = fcmp ogt double %48, %add31
  br i1 %cmp32, label %if.then.33, label %if.end.38

if.then.33:                                       ; preds = %lor.lhs.false.28, %for.body.16
  %53 = load double, double* %dx, align 8
  %54 = load double, double* %dx, align 8
  %mul34 = fmul double %53, %54
  %55 = load double, double* %dy, align 8
  %56 = load double, double* %dy, align 8
  %mul35 = fmul double %55, %56
  %add36 = fadd double %mul34, %mul35
  store double %add36, double* %mindist, align 8
  %57 = load %struct._GList*, %struct._GList** %list, align 8
  %data37 = getelementptr inbounds %struct._GList, %struct._GList* %57, i32 0, i32 0
  %58 = load i8*, i8** %data37, align 8
  %59 = bitcast i8* %58 to %struct._GimpAnchor*
  store %struct._GimpAnchor* %59, %struct._GimpAnchor** %anchor, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.33, %lor.lhs.false.28
  br label %for.inc.39

for.inc.39:                                       ; preds = %if.end.38
  %60 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool40 = icmp ne %struct._GList* %60, null
  br i1 %tobool40, label %cond.true.41, label %cond.false.43

cond.true.41:                                     ; preds = %for.inc.39
  %61 = load %struct._GList*, %struct._GList** %list, align 8
  %next42 = getelementptr inbounds %struct._GList, %struct._GList* %61, i32 0, i32 1
  %62 = load %struct._GList*, %struct._GList** %next42, align 8
  br label %cond.end.44

cond.false.43:                                    ; preds = %for.inc.39
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.43, %cond.true.41
  %cond45 = phi %struct._GList* [ %62, %cond.true.41 ], [ null, %cond.false.43 ]
  store %struct._GList* %cond45, %struct._GList** %list, align 8
  br label %for.cond.14

for.end.46:                                       ; preds = %for.cond.14
  %63 = load %struct._GList*, %struct._GList** %anchors, align 8
  call void @g_list_free(%struct._GList* %63)
  %64 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  ret %struct._GimpAnchor* %64
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpAnchor* @gimp_stroke_real_anchor_get_next(%struct._GimpStroke* %stroke, %struct._GimpAnchor* %prev) #3 {
entry:
  %retval = alloca %struct._GimpAnchor*, align 8
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %prev.addr = alloca %struct._GimpAnchor*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpAnchor* %prev, %struct._GimpAnchor** %prev.addr, align 8
  %0 = load %struct._GimpAnchor*, %struct._GimpAnchor** %prev.addr, align 8
  %tobool = icmp ne %struct._GimpAnchor* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %1, i32 0, i32 2
  %2 = load %struct._GList*, %struct._GList** %anchors, align 8
  %3 = load %struct._GimpAnchor*, %struct._GimpAnchor** %prev.addr, align 8
  %4 = bitcast %struct._GimpAnchor* %3 to i8*
  %call = call %struct._GList* @g_list_find(%struct._GList* %2, i8* %4)
  store %struct._GList* %call, %struct._GList** %list, align 8
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool1 = icmp ne %struct._GList* %5, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %6 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool3 = icmp ne %struct._GList* %6, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.2
  %7 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %7, i32 0, i32 1
  %8 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %8, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  br label %if.end.5

if.else:                                          ; preds = %entry
  %9 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors4 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %9, i32 0, i32 2
  %10 = load %struct._GList*, %struct._GList** %anchors4, align 8
  store %struct._GList* %10, %struct._GList** %list, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.end
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool6 = icmp ne %struct._GList* %11, null
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 0
  %13 = load i8*, i8** %data, align 8
  %14 = bitcast i8* %13 to %struct._GimpAnchor*
  store %struct._GimpAnchor* %14, %struct._GimpAnchor** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.5
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7
  %15 = load %struct._GimpAnchor*, %struct._GimpAnchor** %retval
  ret %struct._GimpAnchor* %15
}

; Function Attrs: nounwind uwtable
define internal void @gimp_stroke_real_anchor_select(%struct._GimpStroke* %stroke, %struct._GimpAnchor* %anchor, i32 %selected, i32 %exclusive) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %anchor.addr = alloca %struct._GimpAnchor*, align 8
  %selected.addr = alloca i32, align 4
  %exclusive.addr = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpAnchor* %anchor, %struct._GimpAnchor** %anchor.addr, align 8
  store i32 %selected, i32* %selected.addr, align 4
  store i32 %exclusive, i32* %exclusive.addr, align 4
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %0, i32 0, i32 2
  %1 = load %struct._GList*, %struct._GList** %anchors, align 8
  store %struct._GList* %1, %struct._GList** %list, align 8
  %2 = load i32, i32* %exclusive.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %if.then
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool1 = icmp ne %struct._GList* %3, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  %6 = bitcast i8* %5 to %struct._GimpAnchor*
  %selected2 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %6, i32 0, i32 2
  store i32 0, i32* %selected2, align 4
  %7 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool3 = icmp ne %struct._GList* %7, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %8 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 1
  %9 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %9, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %10 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors4 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %10, i32 0, i32 2
  %11 = load %struct._GList*, %struct._GList** %anchors4, align 8
  %12 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor.addr, align 8
  %13 = bitcast %struct._GimpAnchor* %12 to i8*
  %call = call %struct._GList* @g_list_find(%struct._GList* %11, i8* %13)
  store %struct._GList* %call, %struct._GList** %list, align 8
  %14 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool5 = icmp ne %struct._GList* %14, null
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end
  %15 = load i32, i32* %selected.addr, align 4
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %data7 = getelementptr inbounds %struct._GList, %struct._GList* %16, i32 0, i32 0
  %17 = load i8*, i8** %data7, align 8
  %18 = bitcast i8* %17 to %struct._GimpAnchor*
  %selected8 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %18, i32 0, i32 2
  store i32 %15, i32* %selected8, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_stroke_real_anchor_move_relative(%struct._GimpStroke* %stroke, %struct._GimpAnchor* %anchor, %struct._GimpCoords* %delta, i32 %feature) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %anchor.addr = alloca %struct._GimpAnchor*, align 8
  %delta.addr = alloca %struct._GimpCoords*, align 8
  %feature.addr = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpAnchor* %anchor, %struct._GimpAnchor** %anchor.addr, align 8
  store %struct._GimpCoords* %delta, %struct._GimpCoords** %delta.addr, align 8
  store i32 %feature, i32* %feature.addr, align 4
  %0 = load %struct._GimpCoords*, %struct._GimpCoords** %delta.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %0, i32 0, i32 0
  %1 = load double, double* %x, align 8
  %2 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor.addr, align 8
  %position = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %2, i32 0, i32 0
  %x1 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position, i32 0, i32 0
  %3 = load double, double* %x1, align 8
  %add = fadd double %3, %1
  store double %add, double* %x1, align 8
  %4 = load %struct._GimpCoords*, %struct._GimpCoords** %delta.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %4, i32 0, i32 1
  %5 = load double, double* %y, align 8
  %6 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor.addr, align 8
  %position2 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %6, i32 0, i32 0
  %y3 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position2, i32 0, i32 1
  %7 = load double, double* %y3, align 8
  %add4 = fadd double %7, %5
  store double %add4, double* %y3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_stroke_real_anchor_move_absolute(%struct._GimpStroke* %stroke, %struct._GimpAnchor* %anchor, %struct._GimpCoords* %coord, i32 %feature) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %anchor.addr = alloca %struct._GimpAnchor*, align 8
  %coord.addr = alloca %struct._GimpCoords*, align 8
  %feature.addr = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpAnchor* %anchor, %struct._GimpAnchor** %anchor.addr, align 8
  store %struct._GimpCoords* %coord, %struct._GimpCoords** %coord.addr, align 8
  store i32 %feature, i32* %feature.addr, align 4
  %0 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %0, i32 0, i32 0
  %1 = load double, double* %x, align 8
  %2 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor.addr, align 8
  %position = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %2, i32 0, i32 0
  %x1 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position, i32 0, i32 0
  store double %1, double* %x1, align 8
  %3 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %3, i32 0, i32 1
  %4 = load double, double* %y, align 8
  %5 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor.addr, align 8
  %position2 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %5, i32 0, i32 0
  %y3 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position2, i32 0, i32 1
  store double %4, double* %y3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_stroke_real_anchor_convert(%struct._GimpStroke* %stroke, %struct._GimpAnchor* %anchor, i32 %feature) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %anchor.addr = alloca %struct._GimpAnchor*, align 8
  %feature.addr = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpAnchor* %anchor, %struct._GimpAnchor** %anchor.addr, align 8
  store i32 %feature, i32* %feature.addr, align 4
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.33, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_stroke_real_anchor_delete(%struct._GimpStroke* %stroke, %struct._GimpAnchor* %anchor) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %anchor.addr = alloca %struct._GimpAnchor*, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpAnchor* %anchor, %struct._GimpAnchor** %anchor.addr, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.34, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_stroke_real_point_is_movable(%struct._GimpStroke* %stroke, %struct._GimpAnchor* %predec, double %position) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %predec.addr = alloca %struct._GimpAnchor*, align 8
  %position.addr = alloca double, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpAnchor* %predec, %struct._GimpAnchor** %predec.addr, align 8
  store double %position, double* %position.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @gimp_stroke_real_point_move_relative(%struct._GimpStroke* %stroke, %struct._GimpAnchor* %predec, double %position, %struct._GimpCoords* %deltacoord, i32 %feature) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %predec.addr = alloca %struct._GimpAnchor*, align 8
  %position.addr = alloca double, align 8
  %deltacoord.addr = alloca %struct._GimpCoords*, align 8
  %feature.addr = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpAnchor* %predec, %struct._GimpAnchor** %predec.addr, align 8
  store double %position, double* %position.addr, align 8
  store %struct._GimpCoords* %deltacoord, %struct._GimpCoords** %deltacoord.addr, align 8
  store i32 %feature, i32* %feature.addr, align 4
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.35, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_stroke_real_point_move_absolute(%struct._GimpStroke* %stroke, %struct._GimpAnchor* %predec, double %position, %struct._GimpCoords* %coord, i32 %feature) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %predec.addr = alloca %struct._GimpAnchor*, align 8
  %position.addr = alloca double, align 8
  %coord.addr = alloca %struct._GimpCoords*, align 8
  %feature.addr = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpAnchor* %predec, %struct._GimpAnchor** %predec.addr, align 8
  store double %position, double* %position.addr, align 8
  store %struct._GimpCoords* %coord, %struct._GimpCoords** %coord.addr, align 8
  store i32 %feature, i32* %feature.addr, align 4
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.36, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_stroke_real_close(%struct._GimpStroke* %stroke) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %closed = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %0, i32 0, i32 3
  store i32 1, i32* %closed, align 4
  %1 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %2 = bitcast %struct._GimpStroke* %1 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 80)
  %3 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpStroke* @gimp_stroke_real_open(%struct._GimpStroke* %stroke, %struct._GimpAnchor* %end_anchor) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %end_anchor.addr = alloca %struct._GimpAnchor*, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpAnchor* %end_anchor, %struct._GimpAnchor** %end_anchor.addr, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.37, i32 0, i32 0))
  ret %struct._GimpStroke* null
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_stroke_real_anchor_is_insertable(%struct._GimpStroke* %stroke, %struct._GimpAnchor* %predec, double %position) #3 {
entry:
  %retval = alloca i32, align 4
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %predec.addr = alloca %struct._GimpAnchor*, align 8
  %position.addr = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpAnchor* %predec, %struct._GimpAnchor** %predec.addr, align 8
  store double %position, double* %position.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_stroke_real_anchor_is_insertable, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpAnchor* @gimp_stroke_real_anchor_insert(%struct._GimpStroke* %stroke, %struct._GimpAnchor* %predec, double %position) #3 {
entry:
  %retval = alloca %struct._GimpAnchor*, align 8
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %predec.addr = alloca %struct._GimpAnchor*, align 8
  %position.addr = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpAnchor* %predec, %struct._GimpAnchor** %predec.addr, align 8
  store double %position, double* %position.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_stroke_real_anchor_insert, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %13 = load %struct._GimpAnchor*, %struct._GimpAnchor** %retval
  ret %struct._GimpAnchor* %13
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_stroke_real_is_extendable(%struct._GimpStroke* %stroke, %struct._GimpAnchor* %neighbor) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %neighbor.addr = alloca %struct._GimpAnchor*, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpAnchor* %neighbor, %struct._GimpAnchor** %neighbor.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpAnchor* @gimp_stroke_real_extend(%struct._GimpStroke* %stroke, %struct._GimpCoords* %coords, %struct._GimpAnchor* %neighbor, i32 %extend_mode) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %neighbor.addr = alloca %struct._GimpAnchor*, align 8
  %extend_mode.addr = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store %struct._GimpAnchor* %neighbor, %struct._GimpAnchor** %neighbor.addr, align 8
  store i32 %extend_mode, i32* %extend_mode.addr, align 4
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.38, i32 0, i32 0))
  ret %struct._GimpAnchor* null
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_stroke_real_is_empty(%struct._GimpStroke* %stroke) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %0, i32 0, i32 2
  %1 = load %struct._GList*, %struct._GList** %anchors, align 8
  %cmp = icmp eq %struct._GList* %1, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal double @gimp_stroke_real_get_length(%struct._GimpStroke* %stroke, double %precision) #3 {
entry:
  %retval = alloca double, align 8
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %precision.addr = alloca double, align 8
  %points = alloca %struct._GArray*, align 8
  %i = alloca i32, align 4
  %length = alloca double, align 8
  %difference = alloca %struct._GimpCoords, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store double %precision, double* %precision.addr, align 8
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %0, i32 0, i32 2
  %1 = load %struct._GList*, %struct._GList** %anchors, align 8
  %tobool = icmp ne %struct._GList* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store double -1.000000e+00, double* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %3 = load double, double* %precision.addr, align 8
  %call = call %struct._GArray* @gimp_stroke_interpolate(%struct._GimpStroke* %2, double %3, i32* null)
  store %struct._GArray* %call, %struct._GArray** %points, align 8
  %4 = load %struct._GArray*, %struct._GArray** %points, align 8
  %cmp = icmp eq %struct._GArray* %4, null
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store double -1.000000e+00, double* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  store double 0.000000e+00, double* %length, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.2
  %5 = load i32, i32* %i, align 4
  %6 = load %struct._GArray*, %struct._GArray** %points, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %6, i32 0, i32 1
  %7 = load i32, i32* %len, align 4
  %sub = sub i32 %7, 1
  %cmp3 = icmp ult i32 %5, %sub
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct._GArray*, %struct._GArray** %points, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %9, i32 0, i32 0
  %10 = load i8*, i8** %data, align 8
  %11 = bitcast i8* %10 to %struct._GimpCoords*
  %arrayidx = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %11, i64 %idxprom
  %12 = load i32, i32* %i, align 4
  %add = add nsw i32 %12, 1
  %idxprom4 = sext i32 %add to i64
  %13 = load %struct._GArray*, %struct._GArray** %points, align 8
  %data5 = getelementptr inbounds %struct._GArray, %struct._GArray* %13, i32 0, i32 0
  %14 = load i8*, i8** %data5, align 8
  %15 = bitcast i8* %14 to %struct._GimpCoords*
  %arrayidx6 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %15, i64 %idxprom4
  call void @gimp_coords_difference(%struct._GimpCoords* %arrayidx, %struct._GimpCoords* %arrayidx6, %struct._GimpCoords* %difference)
  %call7 = call double @gimp_coords_length(%struct._GimpCoords* %difference)
  %16 = load double, double* %length, align 8
  %add8 = fadd double %16, %call7
  store double %add8, double* %length, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct._GArray*, %struct._GArray** %points, align 8
  %call9 = call i8* @g_array_free(%struct._GArray* %18, i32 1)
  %19 = load double, double* %length, align 8
  store double %19, double* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.1, %if.then
  %20 = load double, double* %retval
  ret double %20
}

; Function Attrs: nounwind uwtable
define internal double @gimp_stroke_real_get_distance(%struct._GimpStroke* %stroke, %struct._GimpCoords* %coord) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %coord.addr = alloca %struct._GimpCoords*, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpCoords* %coord, %struct._GimpCoords** %coord.addr, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.39, i32 0, i32 0))
  ret double 0.000000e+00
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_stroke_real_get_point_at_dist(%struct._GimpStroke* %stroke, double %dist, double %precision, %struct._GimpCoords* %position, double* %slope) #3 {
entry:
  %retval = alloca i32, align 4
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %dist.addr = alloca double, align 8
  %precision.addr = alloca double, align 8
  %position.addr = alloca %struct._GimpCoords*, align 8
  %slope.addr = alloca double*, align 8
  %points = alloca %struct._GArray*, align 8
  %i = alloca i32, align 4
  %length = alloca double, align 8
  %segment_length = alloca double, align 8
  %ret = alloca i32, align 4
  %difference = alloca %struct._GimpCoords, align 8
  %u = alloca double, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store double %dist, double* %dist.addr, align 8
  store double %precision, double* %precision.addr, align 8
  store %struct._GimpCoords* %position, %struct._GimpCoords** %position.addr, align 8
  store double* %slope, double** %slope.addr, align 8
  store i32 0, i32* %ret, align 4
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = load double, double* %precision.addr, align 8
  %call = call %struct._GArray* @gimp_stroke_interpolate(%struct._GimpStroke* %0, double %1, i32* null)
  store %struct._GArray* %call, %struct._GArray** %points, align 8
  %2 = load %struct._GArray*, %struct._GArray** %points, align 8
  %cmp = icmp eq %struct._GArray* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4
  store i32 %3, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store double 0.000000e+00, double* %length, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load %struct._GArray*, %struct._GArray** %points, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %5, i32 0, i32 1
  %6 = load i32, i32* %len, align 4
  %sub = sub i32 %6, 1
  %cmp1 = icmp ult i32 %4, %sub
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct._GArray*, %struct._GArray** %points, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %8, i32 0, i32 0
  %9 = load i8*, i8** %data, align 8
  %10 = bitcast i8* %9 to %struct._GimpCoords*
  %arrayidx = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %10, i64 %idxprom
  %11 = load i32, i32* %i, align 4
  %add = add nsw i32 %11, 1
  %idxprom2 = sext i32 %add to i64
  %12 = load %struct._GArray*, %struct._GArray** %points, align 8
  %data3 = getelementptr inbounds %struct._GArray, %struct._GArray* %12, i32 0, i32 0
  %13 = load i8*, i8** %data3, align 8
  %14 = bitcast i8* %13 to %struct._GimpCoords*
  %arrayidx4 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %14, i64 %idxprom2
  call void @gimp_coords_difference(%struct._GimpCoords* %arrayidx, %struct._GimpCoords* %arrayidx4, %struct._GimpCoords* %difference)
  %call5 = call double @gimp_coords_length(%struct._GimpCoords* %difference)
  store double %call5, double* %segment_length, align 8
  %15 = load double, double* %segment_length, align 8
  %cmp6 = fcmp oeq double %15, 0.000000e+00
  br i1 %cmp6, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %16 = load double, double* %length, align 8
  %17 = load double, double* %segment_length, align 8
  %add7 = fadd double %16, %17
  %18 = load double, double* %dist.addr, align 8
  %cmp8 = fcmp olt double %add7, %18
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %lor.lhs.false, %for.body
  %19 = load double, double* %segment_length, align 8
  %20 = load double, double* %length, align 8
  %add10 = fadd double %20, %19
  store double %add10, double* %length, align 8
  br label %if.end.26

if.else:                                          ; preds = %lor.lhs.false
  %21 = load double, double* %dist.addr, align 8
  %22 = load double, double* %length, align 8
  %sub11 = fsub double %21, %22
  %23 = load double, double* %segment_length, align 8
  %div = fdiv double %sub11, %23
  store double %div, double* %u, align 8
  %24 = load double, double* %u, align 8
  %sub12 = fsub double 1.000000e+00, %24
  %25 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %25 to i64
  %26 = load %struct._GArray*, %struct._GArray** %points, align 8
  %data14 = getelementptr inbounds %struct._GArray, %struct._GArray* %26, i32 0, i32 0
  %27 = load i8*, i8** %data14, align 8
  %28 = bitcast i8* %27 to %struct._GimpCoords*
  %arrayidx15 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %28, i64 %idxprom13
  %29 = load double, double* %u, align 8
  %30 = load i32, i32* %i, align 4
  %add16 = add nsw i32 %30, 1
  %idxprom17 = sext i32 %add16 to i64
  %31 = load %struct._GArray*, %struct._GArray** %points, align 8
  %data18 = getelementptr inbounds %struct._GArray, %struct._GArray* %31, i32 0, i32 0
  %32 = load i8*, i8** %data18, align 8
  %33 = bitcast i8* %32 to %struct._GimpCoords*
  %arrayidx19 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %33, i64 %idxprom17
  %34 = load %struct._GimpCoords*, %struct._GimpCoords** %position.addr, align 8
  call void @gimp_coords_mix(double %sub12, %struct._GimpCoords* %arrayidx15, double %29, %struct._GimpCoords* %arrayidx19, %struct._GimpCoords* %34)
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %difference, i32 0, i32 0
  %35 = load double, double* %x, align 8
  %cmp20 = fcmp oeq double %35, 0.000000e+00
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %if.else
  %36 = load double*, double** %slope.addr, align 8
  store double 0x7FEFFFFFFFFFFFFF, double* %36, align 8
  br label %if.end.25

if.else.22:                                       ; preds = %if.else
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %difference, i32 0, i32 1
  %37 = load double, double* %y, align 8
  %x23 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %difference, i32 0, i32 0
  %38 = load double, double* %x23, align 8
  %div24 = fdiv double %37, %38
  %39 = load double*, double** %slope.addr, align 8
  store double %div24, double* %39, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.22, %if.then.21
  store i32 1, i32* %ret, align 4
  br label %for.end

if.end.26:                                        ; preds = %if.then.9
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %40 = load i32, i32* %i, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.end.25, %for.cond
  %41 = load %struct._GArray*, %struct._GArray** %points, align 8
  %call27 = call i8* @g_array_free(%struct._GArray* %41, i32 1)
  %42 = load i32, i32* %ret, align 4
  store i32 %42, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %43 = load i32, i32* %retval
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define internal %struct._GArray* @gimp_stroke_real_interpolate(%struct._GimpStroke* %stroke, double %precision, i32* %ret_closed) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %precision.addr = alloca double, align 8
  %ret_closed.addr = alloca i32*, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store double %precision, double* %precision.addr, align 8
  store i32* %ret_closed, i32** %ret_closed.addr, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.40, i32 0, i32 0))
  ret %struct._GArray* null
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpStroke* @gimp_stroke_real_duplicate(%struct._GimpStroke* %stroke) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %new_stroke = alloca %struct._GimpStroke*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %1, i32 0, i32 0
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %5 = bitcast %struct._GimpStroke* %4 to i8*
  %call = call i8* @gimp_object_get_name(i8* %5)
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i8* %call, i8* null)
  %6 = bitcast i8* %call1 to %struct._GimpStroke*
  store %struct._GimpStroke* %6, %struct._GimpStroke** %new_stroke, align 8
  %7 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %7, i32 0, i32 2
  %8 = load %struct._GList*, %struct._GList** %anchors, align 8
  %call2 = call %struct._GList* @g_list_copy(%struct._GList* %8)
  %9 = load %struct._GimpStroke*, %struct._GimpStroke** %new_stroke, align 8
  %anchors3 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %9, i32 0, i32 2
  store %struct._GList* %call2, %struct._GList** %anchors3, align 8
  %10 = load %struct._GimpStroke*, %struct._GimpStroke** %new_stroke, align 8
  %anchors4 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %10, i32 0, i32 2
  %11 = load %struct._GList*, %struct._GList** %anchors4, align 8
  store %struct._GList* %11, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %12, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 0
  %14 = load i8*, i8** %data, align 8
  %15 = bitcast i8* %14 to %struct._GimpAnchor*
  %call5 = call %struct._GimpAnchor* @gimp_anchor_copy(%struct._GimpAnchor* %15)
  %16 = bitcast %struct._GimpAnchor* %call5 to i8*
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %data6 = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 0
  store i8* %16, i8** %data6, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool7 = icmp ne %struct._GList* %18, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %19 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %19, i32 0, i32 1
  %20 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %20, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %closed = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %21, i32 0, i32 3
  %22 = load i32, i32* %closed, align 4
  %23 = load %struct._GimpStroke*, %struct._GimpStroke** %new_stroke, align 8
  %closed8 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %23, i32 0, i32 3
  store i32 %22, i32* %closed8, align 4
  %24 = load %struct._GimpStroke*, %struct._GimpStroke** %new_stroke, align 8
  ret %struct._GimpStroke* %24
}

; Function Attrs: nounwind uwtable
define internal i8** @gimp_stroke_real_make_bezier(%struct._GimpStroke* %stroke) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.42, i32 0, i32 0))
  ret i8** null
}

; Function Attrs: nounwind uwtable
define internal void @gimp_stroke_real_translate(%struct._GimpStroke* %stroke, double %offset_x, double %offset_y) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %offset_x.addr = alloca double, align 8
  %offset_y.addr = alloca double, align 8
  %list = alloca %struct._GList*, align 8
  %anchor = alloca %struct._GimpAnchor*, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store double %offset_x, double* %offset_x.addr, align 8
  store double %offset_y, double* %offset_y.addr, align 8
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %0, i32 0, i32 2
  %1 = load %struct._GList*, %struct._GList** %anchors, align 8
  store %struct._GList* %1, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GimpAnchor*
  store %struct._GimpAnchor* %5, %struct._GimpAnchor** %anchor, align 8
  %6 = load double, double* %offset_x.addr, align 8
  %7 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %position = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %7, i32 0, i32 0
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position, i32 0, i32 0
  %8 = load double, double* %x, align 8
  %add = fadd double %8, %6
  store double %add, double* %x, align 8
  %9 = load double, double* %offset_y.addr, align 8
  %10 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %position1 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %10, i32 0, i32 0
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position1, i32 0, i32 1
  %11 = load double, double* %y, align 8
  %add2 = fadd double %11, %9
  store double %add2, double* %y, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool3 = icmp ne %struct._GList* %12, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %13 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 1
  %14 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %14, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_stroke_real_scale(%struct._GimpStroke* %stroke, double %scale_x, double %scale_y) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %scale_x.addr = alloca double, align 8
  %scale_y.addr = alloca double, align 8
  %list = alloca %struct._GList*, align 8
  %anchor = alloca %struct._GimpAnchor*, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store double %scale_x, double* %scale_x.addr, align 8
  store double %scale_y, double* %scale_y.addr, align 8
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %0, i32 0, i32 2
  %1 = load %struct._GList*, %struct._GList** %anchors, align 8
  store %struct._GList* %1, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GimpAnchor*
  store %struct._GimpAnchor* %5, %struct._GimpAnchor** %anchor, align 8
  %6 = load double, double* %scale_x.addr, align 8
  %7 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %position = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %7, i32 0, i32 0
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position, i32 0, i32 0
  %8 = load double, double* %x, align 8
  %mul = fmul double %8, %6
  store double %mul, double* %x, align 8
  %9 = load double, double* %scale_y.addr, align 8
  %10 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %position1 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %10, i32 0, i32 0
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position1, i32 0, i32 1
  %11 = load double, double* %y, align 8
  %mul2 = fmul double %11, %9
  store double %mul2, double* %y, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool3 = icmp ne %struct._GList* %12, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %13 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 1
  %14 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %14, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_stroke_real_rotate(%struct._GimpStroke* %stroke, double %center_x, double %center_y, double %angle) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %center_x.addr = alloca double, align 8
  %center_y.addr = alloca double, align 8
  %angle.addr = alloca double, align 8
  %matrix = alloca %struct._GimpMatrix3, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store double %center_x, double* %center_x.addr, align 8
  store double %center_y, double* %center_y.addr, align 8
  store double %angle, double* %angle.addr, align 8
  %0 = load double, double* %angle.addr, align 8
  %div = fdiv double %0, 1.800000e+02
  %mul = fmul double %div, 0x400921FB54442D18
  store double %mul, double* %angle.addr, align 8
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %matrix)
  %1 = load double, double* %center_x.addr, align 8
  %2 = load double, double* %center_y.addr, align 8
  %3 = load double, double* %angle.addr, align 8
  call void @gimp_transform_matrix_rotate_center(%struct._GimpMatrix3* %matrix, double %1, double %2, double %3)
  %4 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  call void @gimp_stroke_transform(%struct._GimpStroke* %4, %struct._GimpMatrix3* %matrix)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_stroke_real_flip(%struct._GimpStroke* %stroke, i32 %flip_type, double %axis) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %flip_type.addr = alloca i32, align 4
  %axis.addr = alloca double, align 8
  %matrix = alloca %struct._GimpMatrix3, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store i32 %flip_type, i32* %flip_type.addr, align 4
  store double %axis, double* %axis.addr, align 8
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %matrix)
  %0 = load i32, i32* %flip_type.addr, align 4
  %1 = load double, double* %axis.addr, align 8
  call void @gimp_transform_matrix_flip(%struct._GimpMatrix3* %matrix, i32 %0, double %1)
  %2 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  call void @gimp_stroke_transform(%struct._GimpStroke* %2, %struct._GimpMatrix3* %matrix)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_stroke_real_flip_free(%struct._GimpStroke* %stroke, double %x1, double %y1, double %x2, double %y2) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %matrix = alloca %struct._GimpMatrix3, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store double %x1, double* %x1.addr, align 8
  store double %y1, double* %y1.addr, align 8
  store double %x2, double* %x2.addr, align 8
  store double %y2, double* %y2.addr, align 8
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %matrix)
  %0 = load double, double* %x1.addr, align 8
  %1 = load double, double* %y1.addr, align 8
  %2 = load double, double* %x2.addr, align 8
  %3 = load double, double* %y2.addr, align 8
  call void @gimp_transform_matrix_flip_free(%struct._GimpMatrix3* %matrix, double %0, double %1, double %2, double %3)
  %4 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  call void @gimp_stroke_transform(%struct._GimpStroke* %4, %struct._GimpMatrix3* %matrix)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_stroke_real_transform(%struct._GimpStroke* %stroke, %struct._GimpMatrix3* %matrix) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  %list = alloca %struct._GList*, align 8
  %anchor = alloca %struct._GimpAnchor*, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %0, i32 0, i32 2
  %1 = load %struct._GList*, %struct._GList** %anchors, align 8
  store %struct._GList* %1, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GimpAnchor*
  store %struct._GimpAnchor* %5, %struct._GimpAnchor** %anchor, align 8
  %6 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %7 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %position = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %7, i32 0, i32 0
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position, i32 0, i32 0
  %8 = load double, double* %x, align 8
  %9 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %position1 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %9, i32 0, i32 0
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position1, i32 0, i32 1
  %10 = load double, double* %y, align 8
  %11 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %position2 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %11, i32 0, i32 0
  %x3 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position2, i32 0, i32 0
  %12 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %position4 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %12, i32 0, i32 0
  %y5 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position4, i32 0, i32 1
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %6, double %8, double %10, double* %x3, double* %y5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool6 = icmp ne %struct._GList* %13, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %14 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %14, i32 0, i32 1
  %15 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %15, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GList* @gimp_stroke_real_get_draw_anchors(%struct._GimpStroke* %stroke) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %list = alloca %struct._GList*, align 8
  %ret_list = alloca %struct._GList*, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GList* null, %struct._GList** %ret_list, align 8
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %0, i32 0, i32 2
  %1 = load %struct._GList*, %struct._GList** %anchors, align 8
  store %struct._GList* %1, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GimpAnchor*
  %type = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %5, i32 0, i32 1
  %6 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load %struct._GList*, %struct._GList** %ret_list, align 8
  %8 = load %struct._GList*, %struct._GList** %list, align 8
  %data1 = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 0
  %9 = load i8*, i8** %data1, align 8
  %call = call %struct._GList* @g_list_prepend(%struct._GList* %7, i8* %9)
  store %struct._GList* %call, %struct._GList** %ret_list, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool2 = icmp ne %struct._GList* %10, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %11, i32 0, i32 1
  %12 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %12, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct._GList*, %struct._GList** %ret_list, align 8
  %call3 = call %struct._GList* @g_list_reverse(%struct._GList* %13)
  ret %struct._GList* %call3
}

; Function Attrs: nounwind uwtable
define internal %struct._GList* @gimp_stroke_real_get_draw_controls(%struct._GimpStroke* %stroke) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %list = alloca %struct._GList*, align 8
  %ret_list = alloca %struct._GList*, align 8
  %anchor = alloca %struct._GimpAnchor*, align 8
  %next = alloca %struct._GimpAnchor*, align 8
  %prev = alloca %struct._GimpAnchor*, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GList* null, %struct._GList** %ret_list, align 8
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %0, i32 0, i32 2
  %1 = load %struct._GList*, %struct._GList** %anchors, align 8
  store %struct._GList* %1, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.44, %entry
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GimpAnchor*
  store %struct._GimpAnchor* %5, %struct._GimpAnchor** %anchor, align 8
  %6 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %type = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %6, i32 0, i32 1
  %7 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then, label %if.end.39

if.then:                                          ; preds = %for.body
  %8 = load %struct._GList*, %struct._GList** %list, align 8
  %next1 = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 1
  %9 = load %struct._GList*, %struct._GList** %next1, align 8
  %tobool2 = icmp ne %struct._GList* %9, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %10 = load %struct._GList*, %struct._GList** %list, align 8
  %next3 = getelementptr inbounds %struct._GList, %struct._GList* %10, i32 0, i32 1
  %11 = load %struct._GList*, %struct._GList** %next3, align 8
  %data4 = getelementptr inbounds %struct._GList, %struct._GList* %11, i32 0, i32 0
  %12 = load i8*, i8** %data4, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ null, %cond.false ]
  %13 = bitcast i8* %cond to %struct._GimpAnchor*
  store %struct._GimpAnchor* %13, %struct._GimpAnchor** %next, align 8
  %14 = load %struct._GList*, %struct._GList** %list, align 8
  %prev5 = getelementptr inbounds %struct._GList, %struct._GList* %14, i32 0, i32 2
  %15 = load %struct._GList*, %struct._GList** %prev5, align 8
  %tobool6 = icmp ne %struct._GList* %15, null
  br i1 %tobool6, label %cond.true.7, label %cond.false.10

cond.true.7:                                      ; preds = %cond.end
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %prev8 = getelementptr inbounds %struct._GList, %struct._GList* %16, i32 0, i32 2
  %17 = load %struct._GList*, %struct._GList** %prev8, align 8
  %data9 = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 0
  %18 = load i8*, i8** %data9, align 8
  br label %cond.end.11

cond.false.10:                                    ; preds = %cond.end
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.10, %cond.true.7
  %cond12 = phi i8* [ %18, %cond.true.7 ], [ null, %cond.false.10 ]
  %19 = bitcast i8* %cond12 to %struct._GimpAnchor*
  store %struct._GimpAnchor* %19, %struct._GimpAnchor** %prev, align 8
  %20 = load %struct._GimpAnchor*, %struct._GimpAnchor** %next, align 8
  %tobool13 = icmp ne %struct._GimpAnchor* %20, null
  br i1 %tobool13, label %land.lhs.true, label %if.else.22

land.lhs.true:                                    ; preds = %cond.end.11
  %21 = load %struct._GimpAnchor*, %struct._GimpAnchor** %next, align 8
  %type14 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %21, i32 0, i32 1
  %22 = load i32, i32* %type14, align 4
  %cmp15 = icmp eq i32 %22, 0
  br i1 %cmp15, label %land.lhs.true.16, label %if.else.22

land.lhs.true.16:                                 ; preds = %land.lhs.true
  %23 = load %struct._GimpAnchor*, %struct._GimpAnchor** %next, align 8
  %selected = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %23, i32 0, i32 2
  %24 = load i32, i32* %selected, align 4
  %tobool17 = icmp ne i32 %24, 0
  br i1 %tobool17, label %if.then.18, label %if.else.22

if.then.18:                                       ; preds = %land.lhs.true.16
  %25 = load %struct._GimpAnchor*, %struct._GimpAnchor** %prev, align 8
  %tobool19 = icmp ne %struct._GimpAnchor* %25, null
  br i1 %tobool19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.then.18
  %26 = load %struct._GList*, %struct._GList** %ret_list, align 8
  %27 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %28 = bitcast %struct._GimpAnchor* %27 to i8*
  %call = call %struct._GList* @g_list_prepend(%struct._GList* %26, i8* %28)
  store %struct._GList* %call, %struct._GList** %ret_list, align 8
  br label %if.end

if.else:                                          ; preds = %if.then.18
  %29 = load %struct._GList*, %struct._GList** %ret_list, align 8
  %30 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %31 = bitcast %struct._GimpAnchor* %30 to i8*
  %call21 = call %struct._GList* @g_list_append(%struct._GList* %29, i8* %31)
  store %struct._GList* %call21, %struct._GList** %ret_list, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.20
  br label %if.end.38

if.else.22:                                       ; preds = %land.lhs.true.16, %land.lhs.true, %cond.end.11
  %32 = load %struct._GimpAnchor*, %struct._GimpAnchor** %prev, align 8
  %tobool23 = icmp ne %struct._GimpAnchor* %32, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.end.37

land.lhs.true.24:                                 ; preds = %if.else.22
  %33 = load %struct._GimpAnchor*, %struct._GimpAnchor** %prev, align 8
  %type25 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %33, i32 0, i32 1
  %34 = load i32, i32* %type25, align 4
  %cmp26 = icmp eq i32 %34, 0
  br i1 %cmp26, label %land.lhs.true.27, label %if.end.37

land.lhs.true.27:                                 ; preds = %land.lhs.true.24
  %35 = load %struct._GimpAnchor*, %struct._GimpAnchor** %prev, align 8
  %selected28 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %35, i32 0, i32 2
  %36 = load i32, i32* %selected28, align 4
  %tobool29 = icmp ne i32 %36, 0
  br i1 %tobool29, label %if.then.30, label %if.end.37

if.then.30:                                       ; preds = %land.lhs.true.27
  %37 = load %struct._GimpAnchor*, %struct._GimpAnchor** %next, align 8
  %tobool31 = icmp ne %struct._GimpAnchor* %37, null
  br i1 %tobool31, label %if.then.32, label %if.else.34

if.then.32:                                       ; preds = %if.then.30
  %38 = load %struct._GList*, %struct._GList** %ret_list, align 8
  %39 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %40 = bitcast %struct._GimpAnchor* %39 to i8*
  %call33 = call %struct._GList* @g_list_prepend(%struct._GList* %38, i8* %40)
  store %struct._GList* %call33, %struct._GList** %ret_list, align 8
  br label %if.end.36

if.else.34:                                       ; preds = %if.then.30
  %41 = load %struct._GList*, %struct._GList** %ret_list, align 8
  %42 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %43 = bitcast %struct._GimpAnchor* %42 to i8*
  %call35 = call %struct._GList* @g_list_append(%struct._GList* %41, i8* %43)
  store %struct._GList* %call35, %struct._GList** %ret_list, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.34, %if.then.32
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %land.lhs.true.27, %land.lhs.true.24, %if.else.22
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.39
  %44 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool40 = icmp ne %struct._GList* %44, null
  br i1 %tobool40, label %cond.true.41, label %cond.false.43

cond.true.41:                                     ; preds = %for.inc
  %45 = load %struct._GList*, %struct._GList** %list, align 8
  %next42 = getelementptr inbounds %struct._GList, %struct._GList* %45, i32 0, i32 1
  %46 = load %struct._GList*, %struct._GList** %next42, align 8
  br label %cond.end.44

cond.false.43:                                    ; preds = %for.inc
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.43, %cond.true.41
  %cond45 = phi %struct._GList* [ %46, %cond.true.41 ], [ null, %cond.false.43 ]
  store %struct._GList* %cond45, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %47 = load %struct._GList*, %struct._GList** %ret_list, align 8
  %call46 = call %struct._GList* @g_list_reverse(%struct._GList* %47)
  ret %struct._GList* %call46
}

; Function Attrs: nounwind uwtable
define internal %struct._GArray* @gimp_stroke_real_get_draw_lines(%struct._GimpStroke* %stroke) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %list = alloca %struct._GList*, align 8
  %ret_lines = alloca %struct._GArray*, align 8
  %count = alloca i32, align 4
  %anchor = alloca %struct._GimpAnchor*, align 8
  %next4 = alloca %struct._GimpAnchor*, align 8
  %prev15 = alloca %struct._GimpAnchor*, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GArray* null, %struct._GArray** %ret_lines, align 8
  store i32 0, i32* %count, align 4
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %0, i32 0, i32 2
  %1 = load %struct._GList*, %struct._GList** %anchors, align 8
  store %struct._GList* %1, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GimpAnchor*
  store %struct._GimpAnchor* %5, %struct._GimpAnchor** %anchor, align 8
  %6 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %type = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %6, i32 0, i32 1
  %7 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %for.body
  %8 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %selected = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %8, i32 0, i32 2
  %9 = load i32, i32* %selected, align 4
  %tobool1 = icmp ne i32 %9, 0
  br i1 %tobool1, label %if.then, label %if.end.28

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %10, i32 0, i32 1
  %11 = load %struct._GList*, %struct._GList** %next, align 8
  %tobool2 = icmp ne %struct._GList* %11, null
  br i1 %tobool2, label %if.then.3, label %if.end.12

if.then.3:                                        ; preds = %if.then
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %next5 = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 1
  %13 = load %struct._GList*, %struct._GList** %next5, align 8
  %data6 = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 0
  %14 = load i8*, i8** %data6, align 8
  %15 = bitcast i8* %14 to %struct._GimpAnchor*
  store %struct._GimpAnchor* %15, %struct._GimpAnchor** %next4, align 8
  %16 = load i32, i32* %count, align 4
  %cmp7 = icmp eq i32 %16, 0
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then.3
  %call = call %struct._GArray* @g_array_new(i32 0, i32 0, i32 64)
  store %struct._GArray* %call, %struct._GArray** %ret_lines, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then.3
  %17 = load %struct._GArray*, %struct._GArray** %ret_lines, align 8
  %18 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %position = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %18, i32 0, i32 0
  %19 = bitcast %struct._GimpCoords* %position to i8*
  %call9 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %17, i8* %19, i32 1)
  store %struct._GArray* %call9, %struct._GArray** %ret_lines, align 8
  %20 = load %struct._GArray*, %struct._GArray** %ret_lines, align 8
  %21 = load %struct._GimpAnchor*, %struct._GimpAnchor** %next4, align 8
  %position10 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %21, i32 0, i32 0
  %22 = bitcast %struct._GimpCoords* %position10 to i8*
  %call11 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %20, i8* %22, i32 1)
  store %struct._GArray* %call11, %struct._GArray** %ret_lines, align 8
  %23 = load i32, i32* %count, align 4
  %add = add nsw i32 %23, 1
  store i32 %add, i32* %count, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then
  %24 = load %struct._GList*, %struct._GList** %list, align 8
  %prev = getelementptr inbounds %struct._GList, %struct._GList* %24, i32 0, i32 2
  %25 = load %struct._GList*, %struct._GList** %prev, align 8
  %tobool13 = icmp ne %struct._GList* %25, null
  br i1 %tobool13, label %if.then.14, label %if.end.27

if.then.14:                                       ; preds = %if.end.12
  %26 = load %struct._GList*, %struct._GList** %list, align 8
  %prev16 = getelementptr inbounds %struct._GList, %struct._GList* %26, i32 0, i32 2
  %27 = load %struct._GList*, %struct._GList** %prev16, align 8
  %data17 = getelementptr inbounds %struct._GList, %struct._GList* %27, i32 0, i32 0
  %28 = load i8*, i8** %data17, align 8
  %29 = bitcast i8* %28 to %struct._GimpAnchor*
  store %struct._GimpAnchor* %29, %struct._GimpAnchor** %prev15, align 8
  %30 = load i32, i32* %count, align 4
  %cmp18 = icmp eq i32 %30, 0
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.then.14
  %call20 = call %struct._GArray* @g_array_new(i32 0, i32 0, i32 64)
  store %struct._GArray* %call20, %struct._GArray** %ret_lines, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.then.14
  %31 = load %struct._GArray*, %struct._GArray** %ret_lines, align 8
  %32 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %position22 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %32, i32 0, i32 0
  %33 = bitcast %struct._GimpCoords* %position22 to i8*
  %call23 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %31, i8* %33, i32 1)
  store %struct._GArray* %call23, %struct._GArray** %ret_lines, align 8
  %34 = load %struct._GArray*, %struct._GArray** %ret_lines, align 8
  %35 = load %struct._GimpAnchor*, %struct._GimpAnchor** %prev15, align 8
  %position24 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %35, i32 0, i32 0
  %36 = bitcast %struct._GimpCoords* %position24 to i8*
  %call25 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %34, i8* %36, i32 1)
  store %struct._GArray* %call25, %struct._GArray** %ret_lines, align 8
  %37 = load i32, i32* %count, align 4
  %add26 = add nsw i32 %37, 1
  store i32 %add26, i32* %count, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.21, %if.end.12
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %38 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool29 = icmp ne %struct._GList* %38, null
  br i1 %tobool29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %39 = load %struct._GList*, %struct._GList** %list, align 8
  %next30 = getelementptr inbounds %struct._GList, %struct._GList* %39, i32 0, i32 1
  %40 = load %struct._GList*, %struct._GList** %next30, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %40, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load %struct._GArray*, %struct._GArray** %ret_lines, align 8
  ret %struct._GArray* %41
}

; Function Attrs: nounwind uwtable
define internal %struct._GArray* @gimp_stroke_real_control_points_get(%struct._GimpStroke* %stroke, i32* %ret_closed) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %ret_closed.addr = alloca i32*, align 8
  %num_anchors = alloca i32, align 4
  %ret_array = alloca %struct._GArray*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store i32* %ret_closed, i32** %ret_closed.addr, align 8
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %0, i32 0, i32 2
  %1 = load %struct._GList*, %struct._GList** %anchors, align 8
  %call = call i32 @g_list_length(%struct._GList* %1)
  store i32 %call, i32* %num_anchors, align 4
  %2 = load i32, i32* %num_anchors, align 4
  %call1 = call %struct._GArray* @g_array_sized_new(i32 0, i32 0, i32 72, i32 %2)
  store %struct._GArray* %call1, %struct._GArray** %ret_array, align 8
  %3 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors2 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %3, i32 0, i32 2
  %4 = load %struct._GList*, %struct._GList** %anchors2, align 8
  %call3 = call %struct._GList* @g_list_first(%struct._GList* %4)
  store %struct._GList* %call3, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._GArray*, %struct._GArray** %ret_array, align 8
  %7 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %7, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8
  %call4 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %6, i8* %8, i32 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool5 = icmp ne %struct._GList* %9, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %10 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %10, i32 0, i32 1
  %11 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %11, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32*, i32** %ret_closed.addr, align 8
  %tobool6 = icmp ne i32* %12, null
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %closed = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %13, i32 0, i32 3
  %14 = load i32, i32* %closed, align 4
  %15 = load i32*, i32** %ret_closed.addr, align 8
  store i32 %14, i32* %15, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %16 = load %struct._GArray*, %struct._GArray** %ret_array, align 8
  ret %struct._GArray* %16
}

declare %struct._GParamSpec* @g_param_spec_boxed(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_anchor_get_type() #2

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_value_array(i8*, i8*, i8*, %struct._GParamSpec*, i32) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #1

declare void @gimp_anchor_free(%struct._GimpAnchor*) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

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
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
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

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare i8* @g_value_get_boxed(%struct._GValue*) #1

declare %struct._GValue* @g_value_array_get_nth(%struct._GValueArray*, i32) #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_value_holds(%struct._GValue*, i64) #4

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

declare i8* @g_value_dup_boxed(%struct._GValue*) #1

declare i64 @gimp_g_list_get_memsize(%struct._GList*, i64) #1

declare void @g_list_free(%struct._GList*) #1

declare void @g_object_notify(%struct._GObject*, i8*) #1

declare void @gimp_coords_difference(%struct._GimpCoords*, %struct._GimpCoords*, %struct._GimpCoords*) #1

declare double @gimp_coords_length(%struct._GimpCoords*) #1

declare i8* @g_array_free(%struct._GArray*, i32) #1

declare void @gimp_coords_mix(double, %struct._GimpCoords*, double, %struct._GimpCoords*, %struct._GimpCoords*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @gimp_object_get_name(i8*) #1

declare %struct._GList* @g_list_copy(%struct._GList*) #1

declare %struct._GimpAnchor* @gimp_anchor_copy(%struct._GimpAnchor*) #1

declare void @gimp_matrix3_identity(%struct._GimpMatrix3*) #1

declare void @gimp_transform_matrix_rotate_center(%struct._GimpMatrix3*, double, double, double) #1

declare void @gimp_transform_matrix_flip(%struct._GimpMatrix3*, i32, double) #1

declare void @gimp_transform_matrix_flip_free(%struct._GimpMatrix3*, double, double, double, double) #1

declare void @gimp_matrix3_transform_point(%struct._GimpMatrix3*, double, double, double*, double*) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare %struct._GList* @g_list_reverse(%struct._GList*) #1

declare %struct._GArray* @g_array_new(i32, i32, i32) #1

declare %struct._GArray* @g_array_append_vals(%struct._GArray*, i8*, i32) #1

declare i32 @g_list_length(%struct._GList*) #1

declare %struct._GArray* @g_array_sized_new(i32, i32, i32, i32) #1

declare %struct._GList* @g_list_first(%struct._GList*) #1

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
