; ModuleID = './app/vectors/gimpbezierstroke.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpBezierStrokeClass = type { %struct._GimpStrokeClass }
%struct._GimpStrokeClass = type { %struct._GimpObjectClass, void (%struct._GimpStroke*)*, void (%struct._GimpStroke*)*, %struct._GimpAnchor* (%struct._GimpStroke*, %struct._GimpCoords*)*, double (%struct._GimpStroke*, %struct._GimpCoords*, double, %struct._GimpCoords*, %struct._GimpAnchor**, %struct._GimpAnchor**, double*)*, double (%struct._GimpStroke*, %struct._GimpCoords*, %struct._GimpCoords*, double, %struct._GimpCoords*, %struct._GimpAnchor**, %struct._GimpAnchor**, double*)*, double (%struct._GimpStroke*, %struct._GimpCoords*, %struct._GimpCoords*, double, %struct._GimpCoords*, %struct._GimpAnchor**, %struct._GimpAnchor**, double*)*, %struct._GimpAnchor* (%struct._GimpStroke*, %struct._GimpAnchor*)*, void (%struct._GimpStroke*, %struct._GimpAnchor*, i32, i32)*, void (%struct._GimpStroke*, %struct._GimpAnchor*, %struct._GimpCoords*, i32)*, void (%struct._GimpStroke*, %struct._GimpAnchor*, %struct._GimpCoords*, i32)*, void (%struct._GimpStroke*, %struct._GimpAnchor*, i32)*, void (%struct._GimpStroke*, %struct._GimpAnchor*)*, i32 (%struct._GimpStroke*, %struct._GimpAnchor*, double)*, void (%struct._GimpStroke*, %struct._GimpAnchor*, double, %struct._GimpCoords*, i32)*, void (%struct._GimpStroke*, %struct._GimpAnchor*, double, %struct._GimpCoords*, i32)*, void (%struct._GimpStroke*)*, %struct._GimpStroke* (%struct._GimpStroke*, %struct._GimpAnchor*)*, i32 (%struct._GimpStroke*, %struct._GimpAnchor*, double)*, %struct._GimpAnchor* (%struct._GimpStroke*, %struct._GimpAnchor*, double)*, i32 (%struct._GimpStroke*, %struct._GimpAnchor*)*, %struct._GimpAnchor* (%struct._GimpStroke*, %struct._GimpCoords*, %struct._GimpAnchor*, i32)*, i32 (%struct._GimpStroke*, %struct._GimpAnchor*, %struct._GimpStroke*, %struct._GimpAnchor*)*, i32 (%struct._GimpStroke*)*, double (%struct._GimpStroke*, double)*, double (%struct._GimpStroke*, %struct._GimpCoords*)*, i32 (%struct._GimpStroke*, double, double, %struct._GimpCoords*, double*)*, %struct._GArray* (%struct._GimpStroke*, double, i32*)*, %struct._GimpStroke* (%struct._GimpStroke*)*, %struct.cairo_path* (%struct._GimpStroke*)*, void (%struct._GimpStroke*, double, double)*, void (%struct._GimpStroke*, double, double)*, void (%struct._GimpStroke*, double, double, double)*, void (%struct._GimpStroke*, i32, double)*, void (%struct._GimpStroke*, double, double, double, double)*, void (%struct._GimpStroke*, %struct._GimpMatrix3*)*, %struct._GList* (%struct._GimpStroke*)*, %struct._GList* (%struct._GimpStroke*)*, %struct._GArray* (%struct._GimpStroke*)*, %struct._GArray* (%struct._GimpStroke*, i32*)* }
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
%struct._GimpStroke = type { %struct._GimpObject, i32, %struct._GList*, i32 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GArray = type { i8*, i32 }
%struct.cairo_path = type { i32, %union._cairo_path_data_t*, i32 }
%union._cairo_path_data_t = type { %struct.anon.0 }
%struct.anon.0 = type { double, double }
%struct._GimpMatrix3 = type { [3 x [3 x double]] }
%struct._GimpBezierStroke = type { %struct._GimpStroke }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.anon = type { i32, i32 }

@gimp_bezier_stroke_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"GimpBezierStroke\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Vectors\00", align 1
@__func__.gimp_bezier_stroke_new_from_coords = private unnamed_addr constant [35 x i8] c"gimp_bezier_stroke_new_from_coords\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"coords != NULL\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"n_coords >= 3\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"(n_coords % 3) == 0\00", align 1
@__func__.gimp_bezier_stroke_extend = private unnamed_addr constant [26 x i8] c"gimp_bezier_stroke_extend\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"neighbor == NULL\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"neighbor != NULL\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"inconsistent bezier curve: %d successive control handles\00", align 1
@__func__.gimp_bezier_stroke_lineto = private unnamed_addr constant [26 x i8] c"gimp_bezier_stroke_lineto\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"GIMP_IS_BEZIER_STROKE (stroke)\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"stroke->closed == FALSE\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"stroke->anchors != NULL\00", align 1
@__func__.gimp_bezier_stroke_conicto = private unnamed_addr constant [27 x i8] c"gimp_bezier_stroke_conicto\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"stroke->anchors->next != NULL\00", align 1
@__func__.gimp_bezier_stroke_cubicto = private unnamed_addr constant [27 x i8] c"gimp_bezier_stroke_cubicto\00", align 1
@__func__.gimp_bezier_stroke_arcto = private unnamed_addr constant [25 x i8] c"gimp_bezier_stroke_arcto\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"GIMP_IS_BEZIER_STROKE (bez_stroke)\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"bez_stroke->closed == FALSE\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"bez_stroke->anchors != NULL\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"bez_stroke->anchors->next != NULL\00", align 1
@gimp_bezier_stroke_parent_class = internal global i8* null, align 8
@GimpBezierStroke_private_offset = internal global i32 0, align 4
@.str.16 = private unnamed_addr constant [27 x i8] c"(%.2f, %.2f)-(%.2f,%.2f): \00", align 1
@__func__.gimp_bezier_stroke_segment_nearest_tangent_get = private unnamed_addr constant [47 x i8] c"gimp_bezier_stroke_segment_nearest_tangent_get\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"ret_coords->len == ret_params->len\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"-\0A\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"%f: (%.2f, %.2f) /%.3f/\0A\00", align 1
@__func__.gimp_bezier_stroke_anchor_move_relative = private unnamed_addr constant [40 x i8] c"gimp_bezier_stroke_anchor_move_relative\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"anchor_list != NULL\00", align 1
@__func__.gimp_bezier_stroke_anchor_convert = private unnamed_addr constant [34 x i8] c"gimp_bezier_stroke_anchor_convert\00", align 1
@.str.21 = private unnamed_addr constant [71 x i8] c"gimp_bezier_stroke_anchor_convert: unimplemented anchor conversion %d\0A\00", align 1
@__func__.gimp_bezier_stroke_anchor_delete = private unnamed_addr constant [33 x i8] c"gimp_bezier_stroke_anchor_delete\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"list != NULL\00", align 1
@__func__.gimp_bezier_stroke_point_move_relative = private unnamed_addr constant [39 x i8] c"gimp_bezier_stroke_point_move_relative\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"segment_start != NULL\00", align 1
@__func__.gimp_bezier_stroke_point_move_absolute = private unnamed_addr constant [39 x i8] c"gimp_bezier_stroke_point_move_absolute\00", align 1
@__func__.gimp_bezier_stroke_close = private unnamed_addr constant [25 x i8] c"gimp_bezier_stroke_close\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"start->next != NULL && end->prev != NULL\00", align 1
@__func__.gimp_bezier_stroke_open = private unnamed_addr constant [24 x i8] c"gimp_bezier_stroke_open\00", align 1
@.str.25 = private unnamed_addr constant [35 x i8] c"list != NULL && list->next != NULL\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@__func__.gimp_bezier_stroke_is_extendable = private unnamed_addr constant [33 x i8] c"gimp_bezier_stroke_is_extendable\00", align 1
@__func__.gimp_bezier_stroke_connect_stroke = private unnamed_addr constant [34 x i8] c"gimp_bezier_stroke_connect_stroke\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"list1 != NULL && list2 != NULL\00", align 1
@.str.28 = private unnamed_addr constant [177 x i8] c"(list1->prev && list1->prev->prev == NULL && list2->next && list2->next->next == NULL) || (list1->next && list1->next->next == NULL && list2->prev && list2->prev->prev == NULL)\00", align 1
@.str.29 = private unnamed_addr constant [41 x i8] c"list1->next && list1->next->next == NULL\00", align 1
@.str.30 = private unnamed_addr constant [41 x i8] c"list2->prev && list2->prev->prev == NULL\00", align 1
@__func__.gimp_bezier_stroke_get_anchor_listitem = private unnamed_addr constant [39 x i8] c"gimp_bezier_stroke_get_anchor_listitem\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@__func__.gimp_bezier_stroke_make_bezier = private unnamed_addr constant [31 x i8] c"gimp_bezier_stroke_make_bezier\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"points && points->len % 3 == 0\00", align 1
@.str.33 = private unnamed_addr constant [44 x i8] c"miscalculated path cmd length! (%d vs. %d)\0A\00", align 1
@arcto_ellipsesegment.template = internal constant %struct._GimpCoords { double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 5.000000e-01, double 0.000000e+00, double 0.000000e+00 }, align 8
@__func__.arcto_ellipsesegment = private unnamed_addr constant [21 x i8] c"arcto_ellipsesegment\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"ellips != NULL\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_bezier_stroke_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_bezier_stroke_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_bezier_stroke_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_stroke_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 472, void (i8*, i8*)* bitcast (void (i8*)* @gimp_bezier_stroke_class_intern_init to void (i8*, i8*)*), i32 56, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpBezierStroke*)* @gimp_bezier_stroke_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_bezier_stroke_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_bezier_stroke_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_stroke_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_bezier_stroke_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_bezier_stroke_parent_class, align 8
  %1 = load i32, i32* @GimpBezierStroke_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpBezierStroke_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpBezierStrokeClass*
  call void @gimp_bezier_stroke_class_init(%struct._GimpBezierStrokeClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_bezier_stroke_init(%struct._GimpBezierStroke* %stroke) #3 {
entry:
  %stroke.addr = alloca %struct._GimpBezierStroke*, align 8
  store %struct._GimpBezierStroke* %stroke, %struct._GimpBezierStroke** %stroke.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpStroke* @gimp_bezier_stroke_new() #3 {
entry:
  %call = call i64 @gimp_bezier_stroke_get_type() #7
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GimpStroke*
  ret %struct._GimpStroke* %0
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct._GimpStroke* @gimp_bezier_stroke_new_from_coords(%struct._GimpCoords* %coords, i32 %n_coords, i32 %closed) #3 {
entry:
  %retval = alloca %struct._GimpStroke*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %n_coords.addr = alloca i32, align 4
  %closed.addr = alloca i32, align 4
  %stroke = alloca %struct._GimpStroke*, align 8
  %last_anchor = alloca %struct._GimpAnchor*, align 8
  %count = alloca i32, align 4
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %n_coords, i32* %n_coords.addr, align 4
  store i32 %closed, i32* %closed.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %cmp = icmp ne %struct._GimpCoords* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_bezier_stroke_new_from_coords, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpStroke* null, %struct._GimpStroke** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i32, i32* %n_coords.addr, align 4
  %cmp2 = icmp sge i32 %1, 3
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_bezier_stroke_new_from_coords, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpStroke* null, %struct._GimpStroke** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %2 = load i32, i32* %n_coords.addr, align 4
  %rem = srem i32 %2, 3
  %cmp8 = icmp eq i32 %rem, 0
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %do.body.7
  br label %if.end.11

if.else.10:                                       ; preds = %do.body.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_bezier_stroke_new_from_coords, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpStroke* null, %struct._GimpStroke** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  %call = call %struct._GimpStroke* @gimp_bezier_stroke_new()
  store %struct._GimpStroke* %call, %struct._GimpStroke** %stroke, align 8
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %last_anchor, align 8
  store i32 0, i32* %count, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.12
  %3 = load i32, i32* %count, align 4
  %4 = load i32, i32* %n_coords.addr, align 4
  %cmp13 = icmp slt i32 %3, %4
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %6 = load i32, i32* %count, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %7, i64 %idxprom
  %8 = load %struct._GimpAnchor*, %struct._GimpAnchor** %last_anchor, align 8
  %call14 = call %struct._GimpAnchor* @gimp_bezier_stroke_extend(%struct._GimpStroke* %5, %struct._GimpCoords* %arrayidx, %struct._GimpAnchor* %8, i32 0)
  store %struct._GimpAnchor* %call14, %struct._GimpAnchor** %last_anchor, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %count, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %count, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %closed.addr, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.end
  %11 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  call void @gimp_stroke_close(%struct._GimpStroke* %11)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %for.end
  %12 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  store %struct._GimpStroke* %12, %struct._GimpStroke** %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.else.10, %if.else.4, %if.else
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %retval
  ret %struct._GimpStroke* %13
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpAnchor* @gimp_bezier_stroke_extend(%struct._GimpStroke* %stroke, %struct._GimpCoords* %coords, %struct._GimpAnchor* %neighbor, i32 %extend_mode) #3 {
entry:
  %retval = alloca %struct._GimpAnchor*, align 8
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %neighbor.addr = alloca %struct._GimpAnchor*, align 8
  %extend_mode.addr = alloca i32, align 4
  %anchor = alloca %struct._GimpAnchor*, align 8
  %listneighbor = alloca %struct._GList*, align 8
  %loose_end = alloca i32, align 4
  %control_count = alloca i32, align 4
  %type78 = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store %struct._GimpAnchor* %neighbor, %struct._GimpAnchor** %neighbor.addr, align 8
  store i32 %extend_mode, i32* %extend_mode.addr, align 4
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %anchor, align 8
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %0, i32 0, i32 2
  %1 = load %struct._GList*, %struct._GList** %anchors, align 8
  %cmp = icmp eq %struct._GList* %1, null
  br i1 %cmp, label %if.then, label %if.else.9

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %2 = load %struct._GimpAnchor*, %struct._GimpAnchor** %neighbor.addr, align 8
  %cmp1 = icmp eq %struct._GimpAnchor* %2, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_bezier_stroke_extend, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %retval
  br label %return

if.end:                                           ; preds = %if.then.2
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %call = call %struct._GimpAnchor* @gimp_anchor_new(i32 1, %struct._GimpCoords* %3)
  store %struct._GimpAnchor* %call, %struct._GimpAnchor** %anchor, align 8
  %4 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors3 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %4, i32 0, i32 2
  %5 = load %struct._GList*, %struct._GList** %anchors3, align 8
  %6 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %7 = bitcast %struct._GimpAnchor* %6 to i8*
  %call4 = call %struct._GList* @g_list_append(%struct._GList* %5, i8* %7)
  %8 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors5 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %8, i32 0, i32 2
  store %struct._GList* %call4, %struct._GList** %anchors5, align 8
  %9 = load i32, i32* %extend_mode.addr, align 4
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %do.end
  br label %sw.epilog

sw.bb.6:                                          ; preds = %do.end
  %10 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %11 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %12 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %call7 = call %struct._GimpAnchor* @gimp_bezier_stroke_extend(%struct._GimpStroke* %10, %struct._GimpCoords* %11, %struct._GimpAnchor* %12, i32 0)
  store %struct._GimpAnchor* %call7, %struct._GimpAnchor** %anchor, align 8
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %14 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %15 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %call8 = call %struct._GimpAnchor* @gimp_bezier_stroke_extend(%struct._GimpStroke* %13, %struct._GimpCoords* %14, %struct._GimpAnchor* %15, i32 0)
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %anchor, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.6, %sw.bb
  %16 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  store %struct._GimpAnchor* %16, %struct._GimpAnchor** %retval
  br label %return

if.else.9:                                        ; preds = %entry
  br label %do.body.10

do.body.10:                                       ; preds = %if.else.9
  %17 = load %struct._GimpAnchor*, %struct._GimpAnchor** %neighbor.addr, align 8
  %cmp11 = icmp ne %struct._GimpAnchor* %17, null
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %do.body.10
  br label %if.end.14

if.else.13:                                       ; preds = %do.body.10
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_bezier_stroke_extend, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %retval
  br label %return

if.end.14:                                        ; preds = %if.then.12
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  store i32 0, i32* %loose_end, align 4
  %18 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors16 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %18, i32 0, i32 2
  %19 = load %struct._GList*, %struct._GList** %anchors16, align 8
  %call17 = call %struct._GList* @g_list_last(%struct._GList* %19)
  store %struct._GList* %call17, %struct._GList** %listneighbor, align 8
  %20 = load %struct._GList*, %struct._GList** %listneighbor, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %20, i32 0, i32 0
  %21 = load i8*, i8** %data, align 8
  %22 = load %struct._GimpAnchor*, %struct._GimpAnchor** %neighbor.addr, align 8
  %23 = bitcast %struct._GimpAnchor* %22 to i8*
  %cmp18 = icmp eq i8* %21, %23
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.end.15
  store i32 1, i32* %loose_end, align 4
  br label %if.end.75

if.else.20:                                       ; preds = %do.end.15
  %24 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors21 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %24, i32 0, i32 2
  %25 = load %struct._GList*, %struct._GList** %anchors21, align 8
  %call22 = call %struct._GList* @g_list_first(%struct._GList* %25)
  store %struct._GList* %call22, %struct._GList** %listneighbor, align 8
  %26 = load %struct._GList*, %struct._GList** %listneighbor, align 8
  %data23 = getelementptr inbounds %struct._GList, %struct._GList* %26, i32 0, i32 0
  %27 = load i8*, i8** %data23, align 8
  %28 = load %struct._GimpAnchor*, %struct._GimpAnchor** %neighbor.addr, align 8
  %29 = bitcast %struct._GimpAnchor* %28 to i8*
  %cmp24 = icmp eq i8* %27, %29
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %if.else.20
  store i32 -1, i32* %loose_end, align 4
  br label %if.end.74

if.else.26:                                       ; preds = %if.else.20
  %30 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors27 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %30, i32 0, i32 2
  %31 = load %struct._GList*, %struct._GList** %anchors27, align 8
  %32 = load %struct._GimpAnchor*, %struct._GimpAnchor** %neighbor.addr, align 8
  %33 = bitcast %struct._GimpAnchor* %32 to i8*
  %call28 = call %struct._GList* @g_list_find(%struct._GList* %31, i8* %33)
  store %struct._GList* %call28, %struct._GList** %listneighbor, align 8
  %34 = load %struct._GList*, %struct._GList** %listneighbor, align 8
  %tobool = icmp ne %struct._GList* %34, null
  br i1 %tobool, label %land.lhs.true, label %if.end.51

land.lhs.true:                                    ; preds = %if.else.26
  %35 = load %struct._GimpAnchor*, %struct._GimpAnchor** %neighbor.addr, align 8
  %type = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %35, i32 0, i32 1
  %36 = load i32, i32* %type, align 4
  %cmp29 = icmp eq i32 %36, 1
  br i1 %cmp29, label %if.then.30, label %if.end.51

if.then.30:                                       ; preds = %land.lhs.true
  %37 = load %struct._GList*, %struct._GList** %listneighbor, align 8
  %prev = getelementptr inbounds %struct._GList, %struct._GList* %37, i32 0, i32 2
  %38 = load %struct._GList*, %struct._GList** %prev, align 8
  %tobool31 = icmp ne %struct._GList* %38, null
  br i1 %tobool31, label %land.lhs.true.32, label %if.else.39

land.lhs.true.32:                                 ; preds = %if.then.30
  %39 = load %struct._GList*, %struct._GList** %listneighbor, align 8
  %prev33 = getelementptr inbounds %struct._GList, %struct._GList* %39, i32 0, i32 2
  %40 = load %struct._GList*, %struct._GList** %prev33, align 8
  %data34 = getelementptr inbounds %struct._GList, %struct._GList* %40, i32 0, i32 0
  %41 = load i8*, i8** %data34, align 8
  %42 = bitcast i8* %41 to %struct._GimpAnchor*
  %type35 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %42, i32 0, i32 1
  %43 = load i32, i32* %type35, align 4
  %cmp36 = icmp eq i32 %43, 0
  br i1 %cmp36, label %if.then.37, label %if.else.39

if.then.37:                                       ; preds = %land.lhs.true.32
  %44 = load %struct._GList*, %struct._GList** %listneighbor, align 8
  %prev38 = getelementptr inbounds %struct._GList, %struct._GList* %44, i32 0, i32 2
  %45 = load %struct._GList*, %struct._GList** %prev38, align 8
  store %struct._GList* %45, %struct._GList** %listneighbor, align 8
  br label %if.end.50

if.else.39:                                       ; preds = %land.lhs.true.32, %if.then.30
  %46 = load %struct._GList*, %struct._GList** %listneighbor, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %46, i32 0, i32 1
  %47 = load %struct._GList*, %struct._GList** %next, align 8
  %tobool40 = icmp ne %struct._GList* %47, null
  br i1 %tobool40, label %land.lhs.true.41, label %if.else.48

land.lhs.true.41:                                 ; preds = %if.else.39
  %48 = load %struct._GList*, %struct._GList** %listneighbor, align 8
  %next42 = getelementptr inbounds %struct._GList, %struct._GList* %48, i32 0, i32 1
  %49 = load %struct._GList*, %struct._GList** %next42, align 8
  %data43 = getelementptr inbounds %struct._GList, %struct._GList* %49, i32 0, i32 0
  %50 = load i8*, i8** %data43, align 8
  %51 = bitcast i8* %50 to %struct._GimpAnchor*
  %type44 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %51, i32 0, i32 1
  %52 = load i32, i32* %type44, align 4
  %cmp45 = icmp eq i32 %52, 0
  br i1 %cmp45, label %if.then.46, label %if.else.48

if.then.46:                                       ; preds = %land.lhs.true.41
  %53 = load %struct._GList*, %struct._GList** %listneighbor, align 8
  %next47 = getelementptr inbounds %struct._GList, %struct._GList* %53, i32 0, i32 1
  %54 = load %struct._GList*, %struct._GList** %next47, align 8
  store %struct._GList* %54, %struct._GList** %listneighbor, align 8
  br label %if.end.49

if.else.48:                                       ; preds = %land.lhs.true.41, %if.else.39
  store i32 0, i32* %loose_end, align 4
  store %struct._GList* null, %struct._GList** %listneighbor, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.48, %if.then.46
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.37
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %land.lhs.true, %if.else.26
  %55 = load %struct._GList*, %struct._GList** %listneighbor, align 8
  %tobool52 = icmp ne %struct._GList* %55, null
  br i1 %tobool52, label %if.then.53, label %if.end.73

if.then.53:                                       ; preds = %if.end.51
  %56 = load %struct._GList*, %struct._GList** %listneighbor, align 8
  %next54 = getelementptr inbounds %struct._GList, %struct._GList* %56, i32 0, i32 1
  %57 = load %struct._GList*, %struct._GList** %next54, align 8
  %tobool55 = icmp ne %struct._GList* %57, null
  br i1 %tobool55, label %land.lhs.true.56, label %if.else.62

land.lhs.true.56:                                 ; preds = %if.then.53
  %58 = load %struct._GList*, %struct._GList** %listneighbor, align 8
  %next57 = getelementptr inbounds %struct._GList, %struct._GList* %58, i32 0, i32 1
  %59 = load %struct._GList*, %struct._GList** %next57, align 8
  %next58 = getelementptr inbounds %struct._GList, %struct._GList* %59, i32 0, i32 1
  %60 = load %struct._GList*, %struct._GList** %next58, align 8
  %cmp59 = icmp eq %struct._GList* %60, null
  br i1 %cmp59, label %if.then.60, label %if.else.62

if.then.60:                                       ; preds = %land.lhs.true.56
  store i32 1, i32* %loose_end, align 4
  %61 = load %struct._GList*, %struct._GList** %listneighbor, align 8
  %next61 = getelementptr inbounds %struct._GList, %struct._GList* %61, i32 0, i32 1
  %62 = load %struct._GList*, %struct._GList** %next61, align 8
  store %struct._GList* %62, %struct._GList** %listneighbor, align 8
  br label %if.end.72

if.else.62:                                       ; preds = %land.lhs.true.56, %if.then.53
  %63 = load %struct._GList*, %struct._GList** %listneighbor, align 8
  %prev63 = getelementptr inbounds %struct._GList, %struct._GList* %63, i32 0, i32 2
  %64 = load %struct._GList*, %struct._GList** %prev63, align 8
  %tobool64 = icmp ne %struct._GList* %64, null
  br i1 %tobool64, label %land.lhs.true.65, label %if.end.71

land.lhs.true.65:                                 ; preds = %if.else.62
  %65 = load %struct._GList*, %struct._GList** %listneighbor, align 8
  %prev66 = getelementptr inbounds %struct._GList, %struct._GList* %65, i32 0, i32 2
  %66 = load %struct._GList*, %struct._GList** %prev66, align 8
  %prev67 = getelementptr inbounds %struct._GList, %struct._GList* %66, i32 0, i32 2
  %67 = load %struct._GList*, %struct._GList** %prev67, align 8
  %cmp68 = icmp eq %struct._GList* %67, null
  br i1 %cmp68, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %land.lhs.true.65
  store i32 -1, i32* %loose_end, align 4
  %68 = load %struct._GList*, %struct._GList** %listneighbor, align 8
  %prev70 = getelementptr inbounds %struct._GList, %struct._GList* %68, i32 0, i32 2
  %69 = load %struct._GList*, %struct._GList** %prev70, align 8
  store %struct._GList* %69, %struct._GList** %listneighbor, align 8
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.69, %land.lhs.true.65, %if.else.62
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.then.60
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.end.51
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.25
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.19
  %70 = load i32, i32* %loose_end, align 4
  %tobool76 = icmp ne i32 %70, 0
  br i1 %tobool76, label %if.then.77, label %if.end.133

if.then.77:                                       ; preds = %if.end.75
  store i32 0, i32* %control_count, align 4
  %71 = load i32, i32* %loose_end, align 4
  %cmp79 = icmp eq i32 %71, 1
  br i1 %cmp79, label %if.then.80, label %if.else.86

if.then.80:                                       ; preds = %if.then.77
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.80
  %72 = load %struct._GList*, %struct._GList** %listneighbor, align 8
  %tobool81 = icmp ne %struct._GList* %72, null
  br i1 %tobool81, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %73 = load %struct._GList*, %struct._GList** %listneighbor, align 8
  %data82 = getelementptr inbounds %struct._GList, %struct._GList* %73, i32 0, i32 0
  %74 = load i8*, i8** %data82, align 8
  %75 = bitcast i8* %74 to %struct._GimpAnchor*
  %type83 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %75, i32 0, i32 1
  %76 = load i32, i32* %type83, align 4
  %cmp84 = icmp eq i32 %76, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %77 = phi i1 [ false, %while.cond ], [ %cmp84, %land.rhs ]
  br i1 %77, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %78 = load i32, i32* %control_count, align 4
  %inc = add nsw i32 %78, 1
  store i32 %inc, i32* %control_count, align 4
  %79 = load %struct._GList*, %struct._GList** %listneighbor, align 8
  %prev85 = getelementptr inbounds %struct._GList, %struct._GList* %79, i32 0, i32 2
  %80 = load %struct._GList*, %struct._GList** %prev85, align 8
  store %struct._GList* %80, %struct._GList** %listneighbor, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end.98

if.else.86:                                       ; preds = %if.then.77
  br label %while.cond.87

while.cond.87:                                    ; preds = %while.body.94, %if.else.86
  %81 = load %struct._GList*, %struct._GList** %listneighbor, align 8
  %tobool88 = icmp ne %struct._GList* %81, null
  br i1 %tobool88, label %land.rhs.89, label %land.end.93

land.rhs.89:                                      ; preds = %while.cond.87
  %82 = load %struct._GList*, %struct._GList** %listneighbor, align 8
  %data90 = getelementptr inbounds %struct._GList, %struct._GList* %82, i32 0, i32 0
  %83 = load i8*, i8** %data90, align 8
  %84 = bitcast i8* %83 to %struct._GimpAnchor*
  %type91 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %84, i32 0, i32 1
  %85 = load i32, i32* %type91, align 4
  %cmp92 = icmp eq i32 %85, 1
  br label %land.end.93

land.end.93:                                      ; preds = %land.rhs.89, %while.cond.87
  %86 = phi i1 [ false, %while.cond.87 ], [ %cmp92, %land.rhs.89 ]
  br i1 %86, label %while.body.94, label %while.end.97

while.body.94:                                    ; preds = %land.end.93
  %87 = load i32, i32* %control_count, align 4
  %inc95 = add nsw i32 %87, 1
  store i32 %inc95, i32* %control_count, align 4
  %88 = load %struct._GList*, %struct._GList** %listneighbor, align 8
  %next96 = getelementptr inbounds %struct._GList, %struct._GList* %88, i32 0, i32 1
  %89 = load %struct._GList*, %struct._GList** %next96, align 8
  store %struct._GList* %89, %struct._GList** %listneighbor, align 8
  br label %while.cond.87

while.end.97:                                     ; preds = %land.end.93
  br label %if.end.98

if.end.98:                                        ; preds = %while.end.97, %while.end
  %90 = load i32, i32* %extend_mode.addr, align 4
  switch i32 %90, label %sw.epilog.132 [
    i32 0, label %sw.bb.99
    i32 1, label %sw.bb.122
  ]

sw.bb.99:                                         ; preds = %if.end.98
  %91 = load i32, i32* %control_count, align 4
  switch i32 %91, label %sw.default.107 [
    i32 0, label %sw.bb.100
    i32 1, label %sw.bb.101
    i32 2, label %sw.bb.106
  ]

sw.bb.100:                                        ; preds = %sw.bb.99
  store i32 1, i32* %type78, align 4
  br label %sw.epilog.108

sw.bb.101:                                        ; preds = %sw.bb.99
  %92 = load %struct._GList*, %struct._GList** %listneighbor, align 8
  %tobool102 = icmp ne %struct._GList* %92, null
  br i1 %tobool102, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %sw.bb.101
  store i32 1, i32* %type78, align 4
  br label %if.end.105

if.else.104:                                      ; preds = %sw.bb.101
  store i32 0, i32* %type78, align 4
  br label %if.end.105

if.end.105:                                       ; preds = %if.else.104, %if.then.103
  br label %sw.epilog.108

sw.bb.106:                                        ; preds = %sw.bb.99
  store i32 0, i32* %type78, align 4
  br label %sw.epilog.108

sw.default.107:                                   ; preds = %sw.bb.99
  %93 = load i32, i32* %control_count, align 4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i32 0, i32 0), i32 %93)
  store i32 0, i32* %type78, align 4
  br label %sw.epilog.108

sw.epilog.108:                                    ; preds = %sw.default.107, %sw.bb.106, %if.end.105, %sw.bb.100
  %94 = load i32, i32* %type78, align 4
  %95 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %call109 = call %struct._GimpAnchor* @gimp_anchor_new(i32 %94, %struct._GimpCoords* %95)
  store %struct._GimpAnchor* %call109, %struct._GimpAnchor** %anchor, align 8
  %96 = load i32, i32* %loose_end, align 4
  %cmp110 = icmp eq i32 %96, 1
  br i1 %cmp110, label %if.then.111, label %if.end.115

if.then.111:                                      ; preds = %sw.epilog.108
  %97 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors112 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %97, i32 0, i32 2
  %98 = load %struct._GList*, %struct._GList** %anchors112, align 8
  %99 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %100 = bitcast %struct._GimpAnchor* %99 to i8*
  %call113 = call %struct._GList* @g_list_append(%struct._GList* %98, i8* %100)
  %101 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors114 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %101, i32 0, i32 2
  store %struct._GList* %call113, %struct._GList** %anchors114, align 8
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.111, %sw.epilog.108
  %102 = load i32, i32* %loose_end, align 4
  %cmp116 = icmp eq i32 %102, -1
  br i1 %cmp116, label %if.then.117, label %if.end.121

if.then.117:                                      ; preds = %if.end.115
  %103 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors118 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %103, i32 0, i32 2
  %104 = load %struct._GList*, %struct._GList** %anchors118, align 8
  %105 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %106 = bitcast %struct._GimpAnchor* %105 to i8*
  %call119 = call %struct._GList* @g_list_prepend(%struct._GList* %104, i8* %106)
  %107 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors120 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %107, i32 0, i32 2
  store %struct._GList* %call119, %struct._GList** %anchors120, align 8
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.117, %if.end.115
  br label %sw.epilog.132

sw.bb.122:                                        ; preds = %if.end.98
  %108 = load i32, i32* %control_count, align 4
  switch i32 %108, label %sw.default.130 [
    i32 0, label %sw.bb.123
    i32 1, label %sw.bb.125
    i32 2, label %sw.bb.127
  ]

sw.bb.123:                                        ; preds = %sw.bb.122
  %109 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %110 = load %struct._GimpAnchor*, %struct._GimpAnchor** %neighbor.addr, align 8
  %position = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %110, i32 0, i32 0
  %111 = load %struct._GimpAnchor*, %struct._GimpAnchor** %neighbor.addr, align 8
  %call124 = call %struct._GimpAnchor* @gimp_bezier_stroke_extend(%struct._GimpStroke* %109, %struct._GimpCoords* %position, %struct._GimpAnchor* %111, i32 0)
  store %struct._GimpAnchor* %call124, %struct._GimpAnchor** %neighbor.addr, align 8
  br label %sw.bb.125

sw.bb.125:                                        ; preds = %sw.bb.122, %sw.bb.123
  %112 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %113 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %114 = load %struct._GimpAnchor*, %struct._GimpAnchor** %neighbor.addr, align 8
  %call126 = call %struct._GimpAnchor* @gimp_bezier_stroke_extend(%struct._GimpStroke* %112, %struct._GimpCoords* %113, %struct._GimpAnchor* %114, i32 0)
  store %struct._GimpAnchor* %call126, %struct._GimpAnchor** %neighbor.addr, align 8
  br label %sw.bb.127

sw.bb.127:                                        ; preds = %sw.bb.122, %sw.bb.125
  %115 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %116 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %117 = load %struct._GimpAnchor*, %struct._GimpAnchor** %neighbor.addr, align 8
  %call128 = call %struct._GimpAnchor* @gimp_bezier_stroke_extend(%struct._GimpStroke* %115, %struct._GimpCoords* %116, %struct._GimpAnchor* %117, i32 0)
  store %struct._GimpAnchor* %call128, %struct._GimpAnchor** %anchor, align 8
  %118 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %119 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %120 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %call129 = call %struct._GimpAnchor* @gimp_bezier_stroke_extend(%struct._GimpStroke* %118, %struct._GimpCoords* %119, %struct._GimpAnchor* %120, i32 0)
  store %struct._GimpAnchor* %call129, %struct._GimpAnchor** %neighbor.addr, align 8
  br label %sw.epilog.131

sw.default.130:                                   ; preds = %sw.bb.122
  %121 = load i32, i32* %control_count, align 4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i32 0, i32 0), i32 %121)
  br label %sw.epilog.131

sw.epilog.131:                                    ; preds = %sw.default.130, %sw.bb.127
  br label %sw.epilog.132

sw.epilog.132:                                    ; preds = %sw.epilog.131, %if.end.98, %if.end.121
  %122 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  store %struct._GimpAnchor* %122, %struct._GimpAnchor** %retval
  br label %return

if.end.133:                                       ; preds = %if.end.75
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %retval
  br label %return

return:                                           ; preds = %if.end.133, %sw.epilog.132, %if.else.13, %sw.epilog, %if.else
  %123 = load %struct._GimpAnchor*, %struct._GimpAnchor** %retval
  ret %struct._GimpAnchor* %123
}

declare void @gimp_stroke_close(%struct._GimpStroke*) #1

declare %struct._GimpAnchor* @gimp_anchor_new(i32, %struct._GimpCoords*) #1

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

declare %struct._GList* @g_list_last(%struct._GList*) #1

declare %struct._GList* @g_list_first(%struct._GList*) #1

declare %struct._GList* @g_list_find(%struct._GList*, i8*) #1

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

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpStroke* @gimp_bezier_stroke_new_moveto(%struct._GimpCoords* %start) #3 {
entry:
  %start.addr = alloca %struct._GimpCoords*, align 8
  %stroke = alloca %struct._GimpStroke*, align 8
  store %struct._GimpCoords* %start, %struct._GimpCoords** %start.addr, align 8
  %call = call %struct._GimpStroke* @gimp_bezier_stroke_new()
  store %struct._GimpStroke* %call, %struct._GimpStroke** %stroke, align 8
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %0, i32 0, i32 2
  %1 = load %struct._GList*, %struct._GList** %anchors, align 8
  %2 = load %struct._GimpCoords*, %struct._GimpCoords** %start.addr, align 8
  %call1 = call %struct._GimpAnchor* @gimp_anchor_new(i32 1, %struct._GimpCoords* %2)
  %3 = bitcast %struct._GimpAnchor* %call1 to i8*
  %call2 = call %struct._GList* @g_list_prepend(%struct._GList* %1, i8* %3)
  %4 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %anchors3 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %4, i32 0, i32 2
  store %struct._GList* %call2, %struct._GList** %anchors3, align 8
  %5 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %anchors4 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %5, i32 0, i32 2
  %6 = load %struct._GList*, %struct._GList** %anchors4, align 8
  %7 = load %struct._GimpCoords*, %struct._GimpCoords** %start.addr, align 8
  %call5 = call %struct._GimpAnchor* @gimp_anchor_new(i32 0, %struct._GimpCoords* %7)
  %8 = bitcast %struct._GimpAnchor* %call5 to i8*
  %call6 = call %struct._GList* @g_list_prepend(%struct._GList* %6, i8* %8)
  %9 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %anchors7 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %9, i32 0, i32 2
  store %struct._GList* %call6, %struct._GList** %anchors7, align 8
  %10 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %anchors8 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %10, i32 0, i32 2
  %11 = load %struct._GList*, %struct._GList** %anchors8, align 8
  %12 = load %struct._GimpCoords*, %struct._GimpCoords** %start.addr, align 8
  %call9 = call %struct._GimpAnchor* @gimp_anchor_new(i32 1, %struct._GimpCoords* %12)
  %13 = bitcast %struct._GimpAnchor* %call9 to i8*
  %call10 = call %struct._GList* @g_list_prepend(%struct._GList* %11, i8* %13)
  %14 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %anchors11 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %14, i32 0, i32 2
  store %struct._GList* %call10, %struct._GList** %anchors11, align 8
  %15 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  ret %struct._GimpStroke* %15
}

; Function Attrs: nounwind uwtable
define void @gimp_bezier_stroke_lineto(%struct._GimpStroke* %stroke, %struct._GimpCoords* %end) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %end.addr = alloca %struct._GimpCoords*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpCoords* %end, %struct._GimpCoords** %end.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_bezier_stroke_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_bezier_stroke_lineto, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %closed = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %13, i32 0, i32 3
  %14 = load i32, i32* %closed, align 4
  %cmp12 = icmp eq i32 %14, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_bezier_stroke_lineto, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %15 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %15, i32 0, i32 2
  %16 = load %struct._GList*, %struct._GList** %anchors, align 8
  %cmp18 = icmp ne %struct._GList* %16, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_bezier_stroke_lineto, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %17 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors23 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %17, i32 0, i32 2
  %18 = load %struct._GList*, %struct._GList** %anchors23, align 8
  %19 = load %struct._GimpCoords*, %struct._GimpCoords** %end.addr, align 8
  %call24 = call %struct._GimpAnchor* @gimp_anchor_new(i32 1, %struct._GimpCoords* %19)
  %20 = bitcast %struct._GimpAnchor* %call24 to i8*
  %call25 = call %struct._GList* @g_list_prepend(%struct._GList* %18, i8* %20)
  %21 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors26 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %21, i32 0, i32 2
  store %struct._GList* %call25, %struct._GList** %anchors26, align 8
  %22 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors27 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %22, i32 0, i32 2
  %23 = load %struct._GList*, %struct._GList** %anchors27, align 8
  %24 = load %struct._GimpCoords*, %struct._GimpCoords** %end.addr, align 8
  %call28 = call %struct._GimpAnchor* @gimp_anchor_new(i32 0, %struct._GimpCoords* %24)
  %25 = bitcast %struct._GimpAnchor* %call28 to i8*
  %call29 = call %struct._GList* @g_list_prepend(%struct._GList* %23, i8* %25)
  %26 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors30 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %26, i32 0, i32 2
  store %struct._GList* %call29, %struct._GList** %anchors30, align 8
  %27 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors31 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %27, i32 0, i32 2
  %28 = load %struct._GList*, %struct._GList** %anchors31, align 8
  %29 = load %struct._GimpCoords*, %struct._GimpCoords** %end.addr, align 8
  %call32 = call %struct._GimpAnchor* @gimp_anchor_new(i32 1, %struct._GimpCoords* %29)
  %30 = bitcast %struct._GimpAnchor* %call32 to i8*
  %call33 = call %struct._GList* @g_list_prepend(%struct._GList* %28, i8* %30)
  %31 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors34 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %31, i32 0, i32 2
  store %struct._GList* %call33, %struct._GList** %anchors34, align 8
  br label %return

return:                                           ; preds = %do.end.22, %if.else.20, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

; Function Attrs: nounwind uwtable
define void @gimp_bezier_stroke_conicto(%struct._GimpStroke* %stroke, %struct._GimpCoords* %control, %struct._GimpCoords* %end) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %control.addr = alloca %struct._GimpCoords*, align 8
  %end.addr = alloca %struct._GimpCoords*, align 8
  %start = alloca %struct._GimpCoords, align 8
  %coords = alloca %struct._GimpCoords, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpCoords* %control, %struct._GimpCoords** %control.addr, align 8
  store %struct._GimpCoords* %end, %struct._GimpCoords** %end.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_bezier_stroke_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_bezier_stroke_conicto, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %closed = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %13, i32 0, i32 3
  %14 = load i32, i32* %closed, align 4
  %cmp12 = icmp eq i32 %14, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_bezier_stroke_conicto, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %15 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %15, i32 0, i32 2
  %16 = load %struct._GList*, %struct._GList** %anchors, align 8
  %cmp18 = icmp ne %struct._GList* %16, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_bezier_stroke_conicto, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %17 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors24 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %17, i32 0, i32 2
  %18 = load %struct._GList*, %struct._GList** %anchors24, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 1
  %19 = load %struct._GList*, %struct._GList** %next, align 8
  %cmp25 = icmp ne %struct._GList* %19, null
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %do.body.23
  br label %if.end.28

if.else.27:                                       ; preds = %do.body.23
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_bezier_stroke_conicto, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end.28:                                        ; preds = %if.then.26
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  %20 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors30 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %20, i32 0, i32 2
  %21 = load %struct._GList*, %struct._GList** %anchors30, align 8
  %next31 = getelementptr inbounds %struct._GList, %struct._GList* %21, i32 0, i32 1
  %22 = load %struct._GList*, %struct._GList** %next31, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %22, i32 0, i32 0
  %23 = load i8*, i8** %data, align 8
  %24 = bitcast i8* %23 to %struct._GimpAnchor*
  %position = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %24, i32 0, i32 0
  %25 = bitcast %struct._GimpCoords* %start to i8*
  %26 = bitcast %struct._GimpCoords* %position to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 64, i32 8, i1 false)
  %27 = load %struct._GimpCoords*, %struct._GimpCoords** %control.addr, align 8
  call void @gimp_coords_mix(double 0x3FE5555555555555, %struct._GimpCoords* %27, double 0x3FD5555555555555, %struct._GimpCoords* %start, %struct._GimpCoords* %coords)
  %28 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors32 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %28, i32 0, i32 2
  %29 = load %struct._GList*, %struct._GList** %anchors32, align 8
  %data33 = getelementptr inbounds %struct._GList, %struct._GList* %29, i32 0, i32 0
  %30 = load i8*, i8** %data33, align 8
  %31 = bitcast i8* %30 to %struct._GimpAnchor*
  %position34 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %31, i32 0, i32 0
  %32 = bitcast %struct._GimpCoords* %position34 to i8*
  %33 = bitcast %struct._GimpCoords* %coords to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 64, i32 8, i1 false)
  %34 = load %struct._GimpCoords*, %struct._GimpCoords** %control.addr, align 8
  %35 = load %struct._GimpCoords*, %struct._GimpCoords** %end.addr, align 8
  call void @gimp_coords_mix(double 0x3FE5555555555555, %struct._GimpCoords* %34, double 0x3FD5555555555555, %struct._GimpCoords* %35, %struct._GimpCoords* %coords)
  %36 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors35 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %36, i32 0, i32 2
  %37 = load %struct._GList*, %struct._GList** %anchors35, align 8
  %call36 = call %struct._GimpAnchor* @gimp_anchor_new(i32 1, %struct._GimpCoords* %coords)
  %38 = bitcast %struct._GimpAnchor* %call36 to i8*
  %call37 = call %struct._GList* @g_list_prepend(%struct._GList* %37, i8* %38)
  %39 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors38 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %39, i32 0, i32 2
  store %struct._GList* %call37, %struct._GList** %anchors38, align 8
  %40 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors39 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %40, i32 0, i32 2
  %41 = load %struct._GList*, %struct._GList** %anchors39, align 8
  %42 = load %struct._GimpCoords*, %struct._GimpCoords** %end.addr, align 8
  %call40 = call %struct._GimpAnchor* @gimp_anchor_new(i32 0, %struct._GimpCoords* %42)
  %43 = bitcast %struct._GimpAnchor* %call40 to i8*
  %call41 = call %struct._GList* @g_list_prepend(%struct._GList* %41, i8* %43)
  %44 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors42 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %44, i32 0, i32 2
  store %struct._GList* %call41, %struct._GList** %anchors42, align 8
  %45 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors43 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %45, i32 0, i32 2
  %46 = load %struct._GList*, %struct._GList** %anchors43, align 8
  %47 = load %struct._GimpCoords*, %struct._GimpCoords** %end.addr, align 8
  %call44 = call %struct._GimpAnchor* @gimp_anchor_new(i32 1, %struct._GimpCoords* %47)
  %48 = bitcast %struct._GimpAnchor* %call44 to i8*
  %call45 = call %struct._GList* @g_list_prepend(%struct._GList* %46, i8* %48)
  %49 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors46 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %49, i32 0, i32 2
  store %struct._GList* %call45, %struct._GList** %anchors46, align 8
  br label %return

return:                                           ; preds = %do.end.29, %if.else.27, %if.else.20, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare void @gimp_coords_mix(double, %struct._GimpCoords*, double, %struct._GimpCoords*, %struct._GimpCoords*) #1

; Function Attrs: nounwind uwtable
define void @gimp_bezier_stroke_cubicto(%struct._GimpStroke* %stroke, %struct._GimpCoords* %control1, %struct._GimpCoords* %control2, %struct._GimpCoords* %end) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %control1.addr = alloca %struct._GimpCoords*, align 8
  %control2.addr = alloca %struct._GimpCoords*, align 8
  %end.addr = alloca %struct._GimpCoords*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpCoords* %control1, %struct._GimpCoords** %control1.addr, align 8
  store %struct._GimpCoords* %control2, %struct._GimpCoords** %control2.addr, align 8
  store %struct._GimpCoords* %end, %struct._GimpCoords** %end.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_bezier_stroke_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_bezier_stroke_cubicto, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %closed = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %13, i32 0, i32 3
  %14 = load i32, i32* %closed, align 4
  %cmp12 = icmp eq i32 %14, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_bezier_stroke_cubicto, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %15 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %15, i32 0, i32 2
  %16 = load %struct._GList*, %struct._GList** %anchors, align 8
  %cmp18 = icmp ne %struct._GList* %16, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_bezier_stroke_cubicto, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %17 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors23 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %17, i32 0, i32 2
  %18 = load %struct._GList*, %struct._GList** %anchors23, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 0
  %19 = load i8*, i8** %data, align 8
  %20 = bitcast i8* %19 to %struct._GimpAnchor*
  %position = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %20, i32 0, i32 0
  %21 = load %struct._GimpCoords*, %struct._GimpCoords** %control1.addr, align 8
  %22 = bitcast %struct._GimpCoords* %position to i8*
  %23 = bitcast %struct._GimpCoords* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 64, i32 8, i1 false)
  %24 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors24 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %24, i32 0, i32 2
  %25 = load %struct._GList*, %struct._GList** %anchors24, align 8
  %26 = load %struct._GimpCoords*, %struct._GimpCoords** %control2.addr, align 8
  %call25 = call %struct._GimpAnchor* @gimp_anchor_new(i32 1, %struct._GimpCoords* %26)
  %27 = bitcast %struct._GimpAnchor* %call25 to i8*
  %call26 = call %struct._GList* @g_list_prepend(%struct._GList* %25, i8* %27)
  %28 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors27 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %28, i32 0, i32 2
  store %struct._GList* %call26, %struct._GList** %anchors27, align 8
  %29 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors28 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %29, i32 0, i32 2
  %30 = load %struct._GList*, %struct._GList** %anchors28, align 8
  %31 = load %struct._GimpCoords*, %struct._GimpCoords** %end.addr, align 8
  %call29 = call %struct._GimpAnchor* @gimp_anchor_new(i32 0, %struct._GimpCoords* %31)
  %32 = bitcast %struct._GimpAnchor* %call29 to i8*
  %call30 = call %struct._GList* @g_list_prepend(%struct._GList* %30, i8* %32)
  %33 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors31 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %33, i32 0, i32 2
  store %struct._GList* %call30, %struct._GList** %anchors31, align 8
  %34 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors32 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %34, i32 0, i32 2
  %35 = load %struct._GList*, %struct._GList** %anchors32, align 8
  %36 = load %struct._GimpCoords*, %struct._GimpCoords** %end.addr, align 8
  %call33 = call %struct._GimpAnchor* @gimp_anchor_new(i32 1, %struct._GimpCoords* %36)
  %37 = bitcast %struct._GimpAnchor* %call33 to i8*
  %call34 = call %struct._GList* @g_list_prepend(%struct._GList* %35, i8* %37)
  %38 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors35 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %38, i32 0, i32 2
  store %struct._GList* %call34, %struct._GList** %anchors35, align 8
  br label %return

return:                                           ; preds = %do.end.22, %if.else.20, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_bezier_stroke_arcto(%struct._GimpStroke* %bez_stroke, double %radius_x, double %radius_y, double %angle_rad, i32 %large_arc, i32 %sweep, %struct._GimpCoords* %end) #3 {
entry:
  %bez_stroke.addr = alloca %struct._GimpStroke*, align 8
  %radius_x.addr = alloca double, align 8
  %radius_y.addr = alloca double, align 8
  %angle_rad.addr = alloca double, align 8
  %large_arc.addr = alloca i32, align 4
  %sweep.addr = alloca i32, align 4
  %end.addr = alloca %struct._GimpCoords*, align 8
  %start = alloca %struct._GimpCoords, align 8
  %middle = alloca %struct._GimpCoords, align 8
  %trans_delta = alloca %struct._GimpCoords, align 8
  %trans_center = alloca %struct._GimpCoords, align 8
  %tmp_center = alloca %struct._GimpCoords, align 8
  %center = alloca %struct._GimpCoords, align 8
  %ellips = alloca [4 x %struct._GimpCoords], align 16
  %ctrl = alloca [4 x %struct._GimpCoords], align 16
  %anglerot = alloca %struct._GimpMatrix3, align 8
  %lambda = alloca double, align 8
  %phi0 = alloca double, align 8
  %phi1 = alloca double, align 8
  %phi2 = alloca double, align 8
  %tmpx = alloca double, align 8
  %tmpy = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %factor = alloca double, align 8
  store %struct._GimpStroke* %bez_stroke, %struct._GimpStroke** %bez_stroke.addr, align 8
  store double %radius_x, double* %radius_x.addr, align 8
  store double %radius_y, double* %radius_y.addr, align 8
  store double %angle_rad, double* %angle_rad.addr, align 8
  store i32 %large_arc, i32* %large_arc.addr, align 4
  store i32 %sweep, i32* %sweep.addr, align 4
  store %struct._GimpCoords* %end, %struct._GimpCoords** %end.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %bez_stroke.addr, align 8
  %1 = bitcast %struct._GimpStroke* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_bezier_stroke_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_bezier_stroke_arcto, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.247

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %bez_stroke.addr, align 8
  %closed = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %13, i32 0, i32 3
  %14 = load i32, i32* %closed, align 4
  %cmp12 = icmp eq i32 %14, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_bezier_stroke_arcto, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.247

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %15 = load %struct._GimpStroke*, %struct._GimpStroke** %bez_stroke.addr, align 8
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %15, i32 0, i32 2
  %16 = load %struct._GList*, %struct._GList** %anchors, align 8
  %cmp18 = icmp ne %struct._GList* %16, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_bezier_stroke_arcto, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.247

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %17 = load %struct._GimpStroke*, %struct._GimpStroke** %bez_stroke.addr, align 8
  %anchors24 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %17, i32 0, i32 2
  %18 = load %struct._GList*, %struct._GList** %anchors24, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 1
  %19 = load %struct._GList*, %struct._GList** %next, align 8
  %cmp25 = icmp ne %struct._GList* %19, null
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %do.body.23
  br label %if.end.28

if.else.27:                                       ; preds = %do.body.23
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_bezier_stroke_arcto, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.247

if.end.28:                                        ; preds = %if.then.26
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  %20 = load double, double* %radius_x.addr, align 8
  %cmp30 = fcmp oeq double %20, 0.000000e+00
  br i1 %cmp30, label %if.then.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.29
  %21 = load double, double* %radius_y.addr, align 8
  %cmp31 = fcmp oeq double %21, 0.000000e+00
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %lor.lhs.false, %do.end.29
  %22 = load %struct._GimpStroke*, %struct._GimpStroke** %bez_stroke.addr, align 8
  %23 = load %struct._GimpCoords*, %struct._GimpCoords** %end.addr, align 8
  call void @gimp_bezier_stroke_lineto(%struct._GimpStroke* %22, %struct._GimpCoords* %23)
  br label %if.end.247

if.end.33:                                        ; preds = %lor.lhs.false
  %24 = load %struct._GimpStroke*, %struct._GimpStroke** %bez_stroke.addr, align 8
  %anchors34 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %24, i32 0, i32 2
  %25 = load %struct._GList*, %struct._GList** %anchors34, align 8
  %next35 = getelementptr inbounds %struct._GList, %struct._GList* %25, i32 0, i32 1
  %26 = load %struct._GList*, %struct._GList** %next35, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %26, i32 0, i32 0
  %27 = load i8*, i8** %data, align 8
  %28 = bitcast i8* %27 to %struct._GimpAnchor*
  %position = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %28, i32 0, i32 0
  %29 = bitcast %struct._GimpCoords* %start to i8*
  %30 = bitcast %struct._GimpCoords* %position to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 64, i32 8, i1 false)
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %anglerot)
  %31 = load double, double* %angle_rad.addr, align 8
  %sub = fsub double -0.000000e+00, %31
  call void @gimp_matrix3_rotate(%struct._GimpMatrix3* %anglerot, double %sub)
  %32 = load %struct._GimpCoords*, %struct._GimpCoords** %end.addr, align 8
  call void @gimp_coords_mix(double 5.000000e-01, %struct._GimpCoords* %start, double -5.000000e-01, %struct._GimpCoords* %32, %struct._GimpCoords* %trans_delta)
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %trans_delta, i32 0, i32 0
  %33 = load double, double* %x, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %trans_delta, i32 0, i32 1
  %34 = load double, double* %y, align 8
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %anglerot, double %33, double %34, double* %tmpx, double* %tmpy)
  %35 = load double, double* %tmpx, align 8
  %x36 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %trans_delta, i32 0, i32 0
  store double %35, double* %x36, align 8
  %36 = load double, double* %tmpy, align 8
  %y37 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %trans_delta, i32 0, i32 1
  store double %36, double* %y37, align 8
  %x38 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %trans_delta, i32 0, i32 0
  %37 = load double, double* %x38, align 8
  %x39 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %trans_delta, i32 0, i32 0
  %38 = load double, double* %x39, align 8
  %mul = fmul double %37, %38
  %39 = load double, double* %radius_x.addr, align 8
  %40 = load double, double* %radius_x.addr, align 8
  %mul40 = fmul double %39, %40
  %div = fdiv double %mul, %mul40
  %y41 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %trans_delta, i32 0, i32 1
  %41 = load double, double* %y41, align 8
  %y42 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %trans_delta, i32 0, i32 1
  %42 = load double, double* %y42, align 8
  %mul43 = fmul double %41, %42
  %43 = load double, double* %radius_y.addr, align 8
  %44 = load double, double* %radius_y.addr, align 8
  %mul44 = fmul double %43, %44
  %div45 = fdiv double %mul43, %mul44
  %add = fadd double %div, %div45
  store double %add, double* %lambda, align 8
  %45 = load double, double* %lambda, align 8
  %cmp46 = fcmp olt double %45, 1.000000e-05
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.33
  br label %if.end.247

if.end.48:                                        ; preds = %if.end.33
  %46 = bitcast %struct._GimpCoords* %trans_center to i8*
  %47 = bitcast %struct._GimpCoords* %trans_delta to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 64, i32 8, i1 false)
  %48 = load double, double* %lambda, align 8
  %cmp49 = fcmp ogt double %48, 1.000000e+00
  br i1 %cmp49, label %if.then.50, label %if.else.57

if.then.50:                                       ; preds = %if.end.48
  %49 = load double, double* %lambda, align 8
  %call51 = call double @sqrt(double %49) #5
  %50 = load double, double* %radius_x.addr, align 8
  %mul52 = fmul double %50, %call51
  store double %mul52, double* %radius_x.addr, align 8
  %51 = load double, double* %lambda, align 8
  %call53 = call double @sqrt(double %51) #5
  %52 = load double, double* %radius_y.addr, align 8
  %mul54 = fmul double %52, %call53
  store double %mul54, double* %radius_y.addr, align 8
  %x55 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %trans_center, i32 0, i32 0
  store double 0.000000e+00, double* %x55, align 8
  %y56 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %trans_center, i32 0, i32 1
  store double 0.000000e+00, double* %y56, align 8
  br label %if.end.73

if.else.57:                                       ; preds = %if.end.48
  %53 = load double, double* %lambda, align 8
  %sub59 = fsub double 1.000000e+00, %53
  %54 = load double, double* %lambda, align 8
  %div60 = fdiv double %sub59, %54
  %call61 = call double @sqrt(double %div60) #5
  store double %call61, double* %factor, align 8
  %y62 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %trans_delta, i32 0, i32 1
  %55 = load double, double* %y62, align 8
  %56 = load double, double* %radius_x.addr, align 8
  %mul63 = fmul double %55, %56
  %57 = load double, double* %radius_y.addr, align 8
  %div64 = fdiv double %mul63, %57
  %58 = load double, double* %factor, align 8
  %mul65 = fmul double %div64, %58
  %x66 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %trans_center, i32 0, i32 0
  store double %mul65, double* %x66, align 8
  %x67 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %trans_delta, i32 0, i32 0
  %59 = load double, double* %x67, align 8
  %sub68 = fsub double -0.000000e+00, %59
  %60 = load double, double* %radius_y.addr, align 8
  %mul69 = fmul double %sub68, %60
  %61 = load double, double* %radius_x.addr, align 8
  %div70 = fdiv double %mul69, %61
  %62 = load double, double* %factor, align 8
  %mul71 = fmul double %div70, %62
  %y72 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %trans_center, i32 0, i32 1
  store double %mul71, double* %y72, align 8
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.57, %if.then.50
  %63 = load i32, i32* %large_arc.addr, align 4
  %tobool74 = icmp ne i32 %63, 0
  br i1 %tobool74, label %land.lhs.true.75, label %lor.lhs.false.77

land.lhs.true.75:                                 ; preds = %if.end.73
  %64 = load i32, i32* %sweep.addr, align 4
  %tobool76 = icmp ne i32 %64, 0
  br i1 %tobool76, label %if.then.81, label %lor.lhs.false.77

lor.lhs.false.77:                                 ; preds = %land.lhs.true.75, %if.end.73
  %65 = load i32, i32* %large_arc.addr, align 4
  %tobool78 = icmp ne i32 %65, 0
  br i1 %tobool78, label %if.end.86, label %land.lhs.true.79

land.lhs.true.79:                                 ; preds = %lor.lhs.false.77
  %66 = load i32, i32* %sweep.addr, align 4
  %tobool80 = icmp ne i32 %66, 0
  br i1 %tobool80, label %if.end.86, label %if.then.81

if.then.81:                                       ; preds = %land.lhs.true.79, %land.lhs.true.75
  %x82 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %trans_center, i32 0, i32 0
  %67 = load double, double* %x82, align 8
  %mul83 = fmul double %67, -1.000000e+00
  store double %mul83, double* %x82, align 8
  %y84 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %trans_center, i32 0, i32 1
  %68 = load double, double* %y84, align 8
  %mul85 = fmul double %68, -1.000000e+00
  store double %mul85, double* %y84, align 8
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.81, %land.lhs.true.79, %lor.lhs.false.77
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %anglerot)
  %69 = load double, double* %angle_rad.addr, align 8
  call void @gimp_matrix3_rotate(%struct._GimpMatrix3* %anglerot, double %69)
  %70 = bitcast %struct._GimpCoords* %tmp_center to i8*
  %71 = bitcast %struct._GimpCoords* %trans_center to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* %71, i64 64, i32 8, i1 false)
  %x87 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %tmp_center, i32 0, i32 0
  %72 = load double, double* %x87, align 8
  %y88 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %tmp_center, i32 0, i32 1
  %73 = load double, double* %y88, align 8
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %anglerot, double %72, double %73, double* %tmpx, double* %tmpy)
  %74 = load double, double* %tmpx, align 8
  %x89 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %tmp_center, i32 0, i32 0
  store double %74, double* %x89, align 8
  %75 = load double, double* %tmpy, align 8
  %y90 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %tmp_center, i32 0, i32 1
  store double %75, double* %y90, align 8
  %76 = load %struct._GimpCoords*, %struct._GimpCoords** %end.addr, align 8
  call void @gimp_coords_mix(double 5.000000e-01, %struct._GimpCoords* %start, double 5.000000e-01, %struct._GimpCoords* %76, %struct._GimpCoords* %middle)
  call void @gimp_coords_add(%struct._GimpCoords* %tmp_center, %struct._GimpCoords* %middle, %struct._GimpCoords* %center)
  %y91 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %trans_delta, i32 0, i32 1
  %77 = load double, double* %y91, align 8
  %y92 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %trans_center, i32 0, i32 1
  %78 = load double, double* %y92, align 8
  %sub93 = fsub double %77, %78
  %79 = load double, double* %radius_y.addr, align 8
  %div94 = fdiv double %sub93, %79
  %x95 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %trans_delta, i32 0, i32 0
  %80 = load double, double* %x95, align 8
  %x96 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %trans_center, i32 0, i32 0
  %81 = load double, double* %x96, align 8
  %sub97 = fsub double %80, %81
  %82 = load double, double* %radius_x.addr, align 8
  %div98 = fdiv double %sub97, %82
  %call99 = call double @atan2(double %div94, double %div98) #5
  store double %call99, double* %phi1, align 8
  %y100 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %trans_delta, i32 0, i32 1
  %83 = load double, double* %y100, align 8
  %sub101 = fsub double -0.000000e+00, %83
  %y102 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %trans_center, i32 0, i32 1
  %84 = load double, double* %y102, align 8
  %sub103 = fsub double %sub101, %84
  %85 = load double, double* %radius_y.addr, align 8
  %div104 = fdiv double %sub103, %85
  %x105 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %trans_delta, i32 0, i32 0
  %86 = load double, double* %x105, align 8
  %sub106 = fsub double -0.000000e+00, %86
  %x107 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %trans_center, i32 0, i32 0
  %87 = load double, double* %x107, align 8
  %sub108 = fsub double %sub106, %87
  %88 = load double, double* %radius_x.addr, align 8
  %div109 = fdiv double %sub108, %88
  %call110 = call double @atan2(double %div104, double %div109) #5
  store double %call110, double* %phi2, align 8
  %89 = load double, double* %phi1, align 8
  %cmp111 = fcmp olt double %89, 0.000000e+00
  br i1 %cmp111, label %if.then.112, label %if.end.114

if.then.112:                                      ; preds = %if.end.86
  %90 = load double, double* %phi1, align 8
  %add113 = fadd double %90, 0x401921FB54442D18
  store double %add113, double* %phi1, align 8
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.112, %if.end.86
  %91 = load double, double* %phi2, align 8
  %cmp115 = fcmp olt double %91, 0.000000e+00
  br i1 %cmp115, label %if.then.116, label %if.end.118

if.then.116:                                      ; preds = %if.end.114
  %92 = load double, double* %phi2, align 8
  %add117 = fadd double %92, 0x401921FB54442D18
  store double %add117, double* %phi2, align 8
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.116, %if.end.114
  %93 = load i32, i32* %sweep.addr, align 4
  %tobool119 = icmp ne i32 %93, 0
  br i1 %tobool119, label %if.then.120, label %if.else.179

if.then.120:                                      ; preds = %if.end.118
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.120
  %94 = load double, double* %phi2, align 8
  %95 = load double, double* %phi1, align 8
  %cmp121 = fcmp olt double %94, %95
  br i1 %cmp121, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %96 = load double, double* %phi2, align 8
  %add122 = fadd double %96, 0x401921FB54442D18
  store double %add122, double* %phi2, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %97 = load double, double* %phi1, align 8
  %div123 = fdiv double %97, 0x3FF921FB54442D18
  %call124 = call double @floor(double %div123) #7
  %mul125 = fmul double %call124, 0x3FF921FB54442D18
  store double %mul125, double* %phi0, align 8
  br label %while.cond.126

while.cond.126:                                   ; preds = %cond.end.135, %while.end
  %98 = load double, double* %phi0, align 8
  %99 = load double, double* %phi2, align 8
  %cmp127 = fcmp olt double %98, %99
  br i1 %cmp127, label %while.body.128, label %while.end.178

while.body.128:                                   ; preds = %while.cond.126
  %100 = load double, double* %radius_x.addr, align 8
  %101 = load double, double* %radius_y.addr, align 8
  %102 = load double, double* %phi0, align 8
  %103 = load double, double* %phi1, align 8
  %cmp129 = fcmp ogt double %102, %103
  br i1 %cmp129, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body.128
  %104 = load double, double* %phi0, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.body.128
  %105 = load double, double* %phi1, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %104, %cond.true ], [ %105, %cond.false ]
  %106 = load double, double* %phi0, align 8
  %add130 = fadd double %106, 0x3FF921FB54442D18
  %107 = load double, double* %phi2, align 8
  %cmp131 = fcmp olt double %add130, %107
  br i1 %cmp131, label %cond.true.132, label %cond.false.134

cond.true.132:                                    ; preds = %cond.end
  %108 = load double, double* %phi0, align 8
  %add133 = fadd double %108, 0x3FF921FB54442D18
  br label %cond.end.135

cond.false.134:                                   ; preds = %cond.end
  %109 = load double, double* %phi2, align 8
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.false.134, %cond.true.132
  %cond136 = phi double [ %add133, %cond.true.132 ], [ %109, %cond.false.134 ]
  %arraydecay = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ellips, i32 0, i32 0
  call void @arcto_ellipsesegment(double %100, double %101, double %cond, double %cond136, %struct._GimpCoords* %arraydecay)
  %arrayidx = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ellips, i32 0, i64 0
  %x137 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx, i32 0, i32 0
  %110 = load double, double* %x137, align 8
  %arrayidx138 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ellips, i32 0, i64 0
  %y139 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx138, i32 0, i32 1
  %111 = load double, double* %y139, align 8
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %anglerot, double %110, double %111, double* %tmpx, double* %tmpy)
  %112 = load double, double* %tmpx, align 8
  %arrayidx140 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ellips, i32 0, i64 0
  %x141 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx140, i32 0, i32 0
  store double %112, double* %x141, align 8
  %113 = load double, double* %tmpy, align 8
  %arrayidx142 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ellips, i32 0, i64 0
  %y143 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx142, i32 0, i32 1
  store double %113, double* %y143, align 8
  %arrayidx144 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ellips, i32 0, i64 1
  %x145 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx144, i32 0, i32 0
  %114 = load double, double* %x145, align 8
  %arrayidx146 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ellips, i32 0, i64 1
  %y147 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx146, i32 0, i32 1
  %115 = load double, double* %y147, align 8
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %anglerot, double %114, double %115, double* %tmpx, double* %tmpy)
  %116 = load double, double* %tmpx, align 8
  %arrayidx148 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ellips, i32 0, i64 1
  %x149 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx148, i32 0, i32 0
  store double %116, double* %x149, align 8
  %117 = load double, double* %tmpy, align 8
  %arrayidx150 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ellips, i32 0, i64 1
  %y151 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx150, i32 0, i32 1
  store double %117, double* %y151, align 8
  %arrayidx152 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ellips, i32 0, i64 2
  %x153 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx152, i32 0, i32 0
  %118 = load double, double* %x153, align 8
  %arrayidx154 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ellips, i32 0, i64 2
  %y155 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx154, i32 0, i32 1
  %119 = load double, double* %y155, align 8
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %anglerot, double %118, double %119, double* %tmpx, double* %tmpy)
  %120 = load double, double* %tmpx, align 8
  %arrayidx156 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ellips, i32 0, i64 2
  %x157 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx156, i32 0, i32 0
  store double %120, double* %x157, align 8
  %121 = load double, double* %tmpy, align 8
  %arrayidx158 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ellips, i32 0, i64 2
  %y159 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx158, i32 0, i32 1
  store double %121, double* %y159, align 8
  %arrayidx160 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ellips, i32 0, i64 3
  %x161 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx160, i32 0, i32 0
  %122 = load double, double* %x161, align 8
  %arrayidx162 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ellips, i32 0, i64 3
  %y163 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx162, i32 0, i32 1
  %123 = load double, double* %y163, align 8
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %anglerot, double %122, double %123, double* %tmpx, double* %tmpy)
  %124 = load double, double* %tmpx, align 8
  %arrayidx164 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ellips, i32 0, i64 3
  %x165 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx164, i32 0, i32 0
  store double %124, double* %x165, align 8
  %125 = load double, double* %tmpy, align 8
  %arrayidx166 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ellips, i32 0, i64 3
  %y167 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx166, i32 0, i32 1
  store double %125, double* %y167, align 8
  %arrayidx168 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ellips, i32 0, i64 1
  %arrayidx169 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ctrl, i32 0, i64 1
  call void @gimp_coords_add(%struct._GimpCoords* %center, %struct._GimpCoords* %arrayidx168, %struct._GimpCoords* %arrayidx169)
  %arrayidx170 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ellips, i32 0, i64 2
  %arrayidx171 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ctrl, i32 0, i64 2
  call void @gimp_coords_add(%struct._GimpCoords* %center, %struct._GimpCoords* %arrayidx170, %struct._GimpCoords* %arrayidx171)
  %arrayidx172 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ellips, i32 0, i64 3
  %arrayidx173 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ctrl, i32 0, i64 3
  call void @gimp_coords_add(%struct._GimpCoords* %center, %struct._GimpCoords* %arrayidx172, %struct._GimpCoords* %arrayidx173)
  %126 = load %struct._GimpStroke*, %struct._GimpStroke** %bez_stroke.addr, align 8
  %arrayidx174 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ctrl, i32 0, i64 1
  %arrayidx175 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ctrl, i32 0, i64 2
  %arrayidx176 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ctrl, i32 0, i64 3
  call void @gimp_bezier_stroke_cubicto(%struct._GimpStroke* %126, %struct._GimpCoords* %arrayidx174, %struct._GimpCoords* %arrayidx175, %struct._GimpCoords* %arrayidx176)
  %127 = load double, double* %phi0, align 8
  %add177 = fadd double %127, 0x3FF921FB54442D18
  store double %add177, double* %phi0, align 8
  br label %while.cond.126

while.end.178:                                    ; preds = %while.cond.126
  br label %if.end.247

if.else.179:                                      ; preds = %if.end.118
  br label %while.cond.180

while.cond.180:                                   ; preds = %while.body.182, %if.else.179
  %128 = load double, double* %phi1, align 8
  %129 = load double, double* %phi2, align 8
  %cmp181 = fcmp olt double %128, %129
  br i1 %cmp181, label %while.body.182, label %while.end.184

while.body.182:                                   ; preds = %while.cond.180
  %130 = load double, double* %phi1, align 8
  %add183 = fadd double %130, 0x401921FB54442D18
  store double %add183, double* %phi1, align 8
  br label %while.cond.180

while.end.184:                                    ; preds = %while.cond.180
  %131 = load double, double* %phi1, align 8
  %div185 = fdiv double %131, 0x3FF921FB54442D18
  %call186 = call double @ceil(double %div185) #7
  %mul187 = fmul double %call186, 0x3FF921FB54442D18
  store double %mul187, double* %phi0, align 8
  br label %while.cond.188

while.cond.188:                                   ; preds = %cond.end.201, %while.end.184
  %132 = load double, double* %phi0, align 8
  %133 = load double, double* %phi2, align 8
  %cmp189 = fcmp ogt double %132, %133
  br i1 %cmp189, label %while.body.190, label %while.end.246

while.body.190:                                   ; preds = %while.cond.188
  %134 = load double, double* %radius_x.addr, align 8
  %135 = load double, double* %radius_y.addr, align 8
  %136 = load double, double* %phi0, align 8
  %137 = load double, double* %phi1, align 8
  %cmp191 = fcmp olt double %136, %137
  br i1 %cmp191, label %cond.true.192, label %cond.false.193

cond.true.192:                                    ; preds = %while.body.190
  %138 = load double, double* %phi0, align 8
  br label %cond.end.194

cond.false.193:                                   ; preds = %while.body.190
  %139 = load double, double* %phi1, align 8
  br label %cond.end.194

cond.end.194:                                     ; preds = %cond.false.193, %cond.true.192
  %cond195 = phi double [ %138, %cond.true.192 ], [ %139, %cond.false.193 ]
  %140 = load double, double* %phi0, align 8
  %sub196 = fsub double %140, 0x3FF921FB54442D18
  %141 = load double, double* %phi2, align 8
  %cmp197 = fcmp ogt double %sub196, %141
  br i1 %cmp197, label %cond.true.198, label %cond.false.200

cond.true.198:                                    ; preds = %cond.end.194
  %142 = load double, double* %phi0, align 8
  %sub199 = fsub double %142, 0x3FF921FB54442D18
  br label %cond.end.201

cond.false.200:                                   ; preds = %cond.end.194
  %143 = load double, double* %phi2, align 8
  br label %cond.end.201

cond.end.201:                                     ; preds = %cond.false.200, %cond.true.198
  %cond202 = phi double [ %sub199, %cond.true.198 ], [ %143, %cond.false.200 ]
  %arraydecay203 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ellips, i32 0, i32 0
  call void @arcto_ellipsesegment(double %134, double %135, double %cond195, double %cond202, %struct._GimpCoords* %arraydecay203)
  %arrayidx204 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ellips, i32 0, i64 0
  %x205 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx204, i32 0, i32 0
  %144 = load double, double* %x205, align 8
  %arrayidx206 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ellips, i32 0, i64 0
  %y207 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx206, i32 0, i32 1
  %145 = load double, double* %y207, align 8
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %anglerot, double %144, double %145, double* %tmpx, double* %tmpy)
  %146 = load double, double* %tmpx, align 8
  %arrayidx208 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ellips, i32 0, i64 0
  %x209 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx208, i32 0, i32 0
  store double %146, double* %x209, align 8
  %147 = load double, double* %tmpy, align 8
  %arrayidx210 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ellips, i32 0, i64 0
  %y211 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx210, i32 0, i32 1
  store double %147, double* %y211, align 8
  %arrayidx212 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ellips, i32 0, i64 1
  %x213 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx212, i32 0, i32 0
  %148 = load double, double* %x213, align 8
  %arrayidx214 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ellips, i32 0, i64 1
  %y215 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx214, i32 0, i32 1
  %149 = load double, double* %y215, align 8
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %anglerot, double %148, double %149, double* %tmpx, double* %tmpy)
  %150 = load double, double* %tmpx, align 8
  %arrayidx216 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ellips, i32 0, i64 1
  %x217 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx216, i32 0, i32 0
  store double %150, double* %x217, align 8
  %151 = load double, double* %tmpy, align 8
  %arrayidx218 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ellips, i32 0, i64 1
  %y219 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx218, i32 0, i32 1
  store double %151, double* %y219, align 8
  %arrayidx220 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ellips, i32 0, i64 2
  %x221 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx220, i32 0, i32 0
  %152 = load double, double* %x221, align 8
  %arrayidx222 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ellips, i32 0, i64 2
  %y223 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx222, i32 0, i32 1
  %153 = load double, double* %y223, align 8
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %anglerot, double %152, double %153, double* %tmpx, double* %tmpy)
  %154 = load double, double* %tmpx, align 8
  %arrayidx224 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ellips, i32 0, i64 2
  %x225 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx224, i32 0, i32 0
  store double %154, double* %x225, align 8
  %155 = load double, double* %tmpy, align 8
  %arrayidx226 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ellips, i32 0, i64 2
  %y227 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx226, i32 0, i32 1
  store double %155, double* %y227, align 8
  %arrayidx228 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ellips, i32 0, i64 3
  %x229 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx228, i32 0, i32 0
  %156 = load double, double* %x229, align 8
  %arrayidx230 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ellips, i32 0, i64 3
  %y231 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx230, i32 0, i32 1
  %157 = load double, double* %y231, align 8
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %anglerot, double %156, double %157, double* %tmpx, double* %tmpy)
  %158 = load double, double* %tmpx, align 8
  %arrayidx232 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ellips, i32 0, i64 3
  %x233 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx232, i32 0, i32 0
  store double %158, double* %x233, align 8
  %159 = load double, double* %tmpy, align 8
  %arrayidx234 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ellips, i32 0, i64 3
  %y235 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx234, i32 0, i32 1
  store double %159, double* %y235, align 8
  %arrayidx236 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ellips, i32 0, i64 1
  %arrayidx237 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ctrl, i32 0, i64 1
  call void @gimp_coords_add(%struct._GimpCoords* %center, %struct._GimpCoords* %arrayidx236, %struct._GimpCoords* %arrayidx237)
  %arrayidx238 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ellips, i32 0, i64 2
  %arrayidx239 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ctrl, i32 0, i64 2
  call void @gimp_coords_add(%struct._GimpCoords* %center, %struct._GimpCoords* %arrayidx238, %struct._GimpCoords* %arrayidx239)
  %arrayidx240 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ellips, i32 0, i64 3
  %arrayidx241 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ctrl, i32 0, i64 3
  call void @gimp_coords_add(%struct._GimpCoords* %center, %struct._GimpCoords* %arrayidx240, %struct._GimpCoords* %arrayidx241)
  %160 = load %struct._GimpStroke*, %struct._GimpStroke** %bez_stroke.addr, align 8
  %arrayidx242 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ctrl, i32 0, i64 1
  %arrayidx243 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ctrl, i32 0, i64 2
  %arrayidx244 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %ctrl, i32 0, i64 3
  call void @gimp_bezier_stroke_cubicto(%struct._GimpStroke* %160, %struct._GimpCoords* %arrayidx242, %struct._GimpCoords* %arrayidx243, %struct._GimpCoords* %arrayidx244)
  %161 = load double, double* %phi0, align 8
  %sub245 = fsub double %161, 0x3FF921FB54442D18
  store double %sub245, double* %phi0, align 8
  br label %while.cond.188

while.end.246:                                    ; preds = %while.cond.188
  br label %if.end.247

if.end.247:                                       ; preds = %if.else.9, %if.else.14, %if.else.20, %if.else.27, %if.then.32, %if.then.47, %while.end.246, %while.end.178
  ret void
}

declare void @gimp_matrix3_identity(%struct._GimpMatrix3*) #1

declare void @gimp_matrix3_rotate(%struct._GimpMatrix3*, double) #1

declare void @gimp_matrix3_transform_point(%struct._GimpMatrix3*, double, double, double*, double*) #1

; Function Attrs: nounwind
declare double @sqrt(double) #6

declare void @gimp_coords_add(%struct._GimpCoords*, %struct._GimpCoords*, %struct._GimpCoords*) #1

; Function Attrs: nounwind
declare double @atan2(double, double) #6

; Function Attrs: nounwind readnone
declare double @floor(double) #2

; Function Attrs: nounwind uwtable
define internal void @arcto_ellipsesegment(double %radius_x, double %radius_y, double %phi0, double %phi1, %struct._GimpCoords* %ellips) #3 {
entry:
  %radius_x.addr = alloca double, align 8
  %radius_y.addr = alloca double, align 8
  %phi0.addr = alloca double, align 8
  %phi1.addr = alloca double, align 8
  %ellips.addr = alloca %struct._GimpCoords*, align 8
  %circlemagic = alloca double, align 8
  %phi_s = alloca double, align 8
  %phi_e = alloca double, align 8
  %y = alloca [4 x double], align 16
  %h0 = alloca double, align 8
  %h1 = alloca double, align 8
  %t0 = alloca double, align 8
  %t1 = alloca double, align 8
  store double %radius_x, double* %radius_x.addr, align 8
  store double %radius_y, double* %radius_y.addr, align 8
  store double %phi0, double* %phi0.addr, align 8
  store double %phi1, double* %phi1.addr, align 8
  store %struct._GimpCoords* %ellips, %struct._GimpCoords** %ellips.addr, align 8
  store double 0x3FE1AC5111534A23, double* %circlemagic, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCoords*, %struct._GimpCoords** %ellips.addr, align 8
  %cmp = icmp ne %struct._GimpCoords* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.arcto_ellipsesegment, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %arrayidx = getelementptr inbounds [4 x double], [4 x double]* %y, i32 0, i64 0
  store double 0.000000e+00, double* %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds [4 x double], [4 x double]* %y, i32 0, i64 1
  store double 0x3FE1AC5111534A23, double* %arrayidx1, align 8
  %arrayidx2 = getelementptr inbounds [4 x double], [4 x double]* %y, i32 0, i64 2
  store double 1.000000e+00, double* %arrayidx2, align 8
  %arrayidx3 = getelementptr inbounds [4 x double], [4 x double]* %y, i32 0, i64 3
  store double 1.000000e+00, double* %arrayidx3, align 8
  %1 = load %struct._GimpCoords*, %struct._GimpCoords** %ellips.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %1, i64 0
  %2 = bitcast %struct._GimpCoords* %arrayidx4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast (%struct._GimpCoords* @arcto_ellipsesegment.template to i8*), i64 64, i32 8, i1 false)
  %3 = load %struct._GimpCoords*, %struct._GimpCoords** %ellips.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %3, i64 1
  %4 = bitcast %struct._GimpCoords* %arrayidx5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast (%struct._GimpCoords* @arcto_ellipsesegment.template to i8*), i64 64, i32 8, i1 false)
  %5 = load %struct._GimpCoords*, %struct._GimpCoords** %ellips.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %5, i64 2
  %6 = bitcast %struct._GimpCoords* %arrayidx6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* bitcast (%struct._GimpCoords* @arcto_ellipsesegment.template to i8*), i64 64, i32 8, i1 false)
  %7 = load %struct._GimpCoords*, %struct._GimpCoords** %ellips.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %7, i64 3
  %8 = bitcast %struct._GimpCoords* %arrayidx7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast (%struct._GimpCoords* @arcto_ellipsesegment.template to i8*), i64 64, i32 8, i1 false)
  %9 = load double, double* %phi0.addr, align 8
  %10 = load double, double* %phi1.addr, align 8
  %cmp8 = fcmp olt double %9, %10
  br i1 %cmp8, label %if.then.9, label %if.else.12

if.then.9:                                        ; preds = %do.end
  %11 = load double, double* %phi0.addr, align 8
  %div = fdiv double %11, 0x3FF921FB54442D18
  %call = call double @floor(double %div) #7
  %mul = fmul double %call, 0x3FF921FB54442D18
  store double %mul, double* %phi_s, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.9
  %12 = load double, double* %phi_s, align 8
  %cmp10 = fcmp olt double %12, 0.000000e+00
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load double, double* %phi_s, align 8
  %add = fadd double %13, 0x401921FB54442D18
  store double %add, double* %phi_s, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load double, double* %phi_s, align 8
  %add11 = fadd double %14, 0x3FF921FB54442D18
  store double %add11, double* %phi_e, align 8
  br label %if.end.22

if.else.12:                                       ; preds = %do.end
  %15 = load double, double* %phi1.addr, align 8
  %div13 = fdiv double %15, 0x3FF921FB54442D18
  %call14 = call double @floor(double %div13) #7
  %mul15 = fmul double %call14, 0x3FF921FB54442D18
  store double %mul15, double* %phi_e, align 8
  br label %while.cond.16

while.cond.16:                                    ; preds = %while.body.18, %if.else.12
  %16 = load double, double* %phi_e, align 8
  %cmp17 = fcmp olt double %16, 0.000000e+00
  br i1 %cmp17, label %while.body.18, label %while.end.20

while.body.18:                                    ; preds = %while.cond.16
  %17 = load double, double* %phi_e, align 8
  %add19 = fadd double %17, 0x401921FB54442D18
  store double %add19, double* %phi_e, align 8
  br label %while.cond.16

while.end.20:                                     ; preds = %while.cond.16
  %18 = load double, double* %phi_e, align 8
  %add21 = fadd double %18, 0x3FF921FB54442D18
  store double %add21, double* %phi_s, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %while.end.20, %while.end
  %19 = load double, double* %phi0.addr, align 8
  %20 = load double, double* %phi_s, align 8
  %sub = fsub double %19, %20
  %call23 = call double @fabs(double %sub) #7
  %call24 = call double @sin(double %call23) #5
  store double %call24, double* %h0, align 8
  %21 = load double, double* %phi1.addr, align 8
  %22 = load double, double* %phi_s, align 8
  %sub25 = fsub double %21, %22
  %call26 = call double @fabs(double %sub25) #7
  %call27 = call double @sin(double %call26) #5
  store double %call27, double* %h1, align 8
  %23 = load double, double* %phi_s, align 8
  %call28 = call double @cos(double %23) #5
  %24 = load %struct._GimpCoords*, %struct._GimpCoords** %ellips.addr, align 8
  %arrayidx29 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %24, i64 0
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx29, i32 0, i32 0
  store double %call28, double* %x, align 8
  %25 = load double, double* %phi_s, align 8
  %call30 = call double @sin(double %25) #5
  %26 = load %struct._GimpCoords*, %struct._GimpCoords** %ellips.addr, align 8
  %arrayidx31 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %26, i64 0
  %y32 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx31, i32 0, i32 1
  store double %call30, double* %y32, align 8
  %27 = load double, double* %phi_e, align 8
  %call33 = call double @cos(double %27) #5
  %28 = load %struct._GimpCoords*, %struct._GimpCoords** %ellips.addr, align 8
  %arrayidx34 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %28, i64 3
  %x35 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx34, i32 0, i32 0
  store double %call33, double* %x35, align 8
  %29 = load double, double* %phi_e, align 8
  %call36 = call double @sin(double %29) #5
  %30 = load %struct._GimpCoords*, %struct._GimpCoords** %ellips.addr, align 8
  %arrayidx37 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %30, i64 3
  %y38 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx37, i32 0, i32 1
  store double %call36, double* %y38, align 8
  %31 = load %struct._GimpCoords*, %struct._GimpCoords** %ellips.addr, align 8
  %arrayidx39 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %31, i64 0
  %32 = load %struct._GimpCoords*, %struct._GimpCoords** %ellips.addr, align 8
  %arrayidx40 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %32, i64 3
  %33 = load %struct._GimpCoords*, %struct._GimpCoords** %ellips.addr, align 8
  %arrayidx41 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %33, i64 1
  call void @gimp_coords_mix(double 1.000000e+00, %struct._GimpCoords* %arrayidx39, double 0x3FE1AC5111534A23, %struct._GimpCoords* %arrayidx40, %struct._GimpCoords* %arrayidx41)
  %34 = load %struct._GimpCoords*, %struct._GimpCoords** %ellips.addr, align 8
  %arrayidx42 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %34, i64 0
  %35 = load %struct._GimpCoords*, %struct._GimpCoords** %ellips.addr, align 8
  %arrayidx43 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %35, i64 3
  %36 = load %struct._GimpCoords*, %struct._GimpCoords** %ellips.addr, align 8
  %arrayidx44 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %36, i64 2
  call void @gimp_coords_mix(double 0x3FE1AC5111534A23, %struct._GimpCoords* %arrayidx42, double 1.000000e+00, %struct._GimpCoords* %arrayidx43, %struct._GimpCoords* %arrayidx44)
  %37 = load double, double* %h0, align 8
  %arrayidx45 = getelementptr inbounds [4 x double], [4 x double]* %y, i32 0, i64 0
  %38 = load double, double* %arrayidx45, align 8
  %cmp46 = fcmp ogt double %37, %38
  br i1 %cmp46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %if.end.22
  %39 = load double, double* %h0, align 8
  %arraydecay = getelementptr inbounds [4 x double], [4 x double]* %y, i32 0, i32 0
  %call48 = call double @arcto_circleparam(double %39, double* %arraydecay)
  store double %call48, double* %t0, align 8
  %40 = load double, double* %t0, align 8
  %41 = load %struct._GimpCoords*, %struct._GimpCoords** %ellips.addr, align 8
  call void @arcto_subdivide(double %40, i32 1, %struct._GimpCoords* %41)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %if.end.22
  %42 = load double, double* %h1, align 8
  %arrayidx50 = getelementptr inbounds [4 x double], [4 x double]* %y, i32 0, i64 3
  %43 = load double, double* %arrayidx50, align 8
  %cmp51 = fcmp olt double %42, %43
  br i1 %cmp51, label %if.then.52, label %if.end.55

if.then.52:                                       ; preds = %if.end.49
  %44 = load double, double* %h1, align 8
  %arraydecay53 = getelementptr inbounds [4 x double], [4 x double]* %y, i32 0, i32 0
  %call54 = call double @arcto_circleparam(double %44, double* %arraydecay53)
  store double %call54, double* %t1, align 8
  %45 = load double, double* %t1, align 8
  %46 = load %struct._GimpCoords*, %struct._GimpCoords** %ellips.addr, align 8
  call void @arcto_subdivide(double %45, i32 0, %struct._GimpCoords* %46)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.52, %if.end.49
  %47 = load double, double* %radius_x.addr, align 8
  %48 = load %struct._GimpCoords*, %struct._GimpCoords** %ellips.addr, align 8
  %arrayidx56 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %48, i64 0
  %x57 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx56, i32 0, i32 0
  %49 = load double, double* %x57, align 8
  %mul58 = fmul double %49, %47
  store double %mul58, double* %x57, align 8
  %50 = load double, double* %radius_y.addr, align 8
  %51 = load %struct._GimpCoords*, %struct._GimpCoords** %ellips.addr, align 8
  %arrayidx59 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %51, i64 0
  %y60 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx59, i32 0, i32 1
  %52 = load double, double* %y60, align 8
  %mul61 = fmul double %52, %50
  store double %mul61, double* %y60, align 8
  %53 = load double, double* %radius_x.addr, align 8
  %54 = load %struct._GimpCoords*, %struct._GimpCoords** %ellips.addr, align 8
  %arrayidx62 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %54, i64 1
  %x63 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx62, i32 0, i32 0
  %55 = load double, double* %x63, align 8
  %mul64 = fmul double %55, %53
  store double %mul64, double* %x63, align 8
  %56 = load double, double* %radius_y.addr, align 8
  %57 = load %struct._GimpCoords*, %struct._GimpCoords** %ellips.addr, align 8
  %arrayidx65 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %57, i64 1
  %y66 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx65, i32 0, i32 1
  %58 = load double, double* %y66, align 8
  %mul67 = fmul double %58, %56
  store double %mul67, double* %y66, align 8
  %59 = load double, double* %radius_x.addr, align 8
  %60 = load %struct._GimpCoords*, %struct._GimpCoords** %ellips.addr, align 8
  %arrayidx68 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %60, i64 2
  %x69 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx68, i32 0, i32 0
  %61 = load double, double* %x69, align 8
  %mul70 = fmul double %61, %59
  store double %mul70, double* %x69, align 8
  %62 = load double, double* %radius_y.addr, align 8
  %63 = load %struct._GimpCoords*, %struct._GimpCoords** %ellips.addr, align 8
  %arrayidx71 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %63, i64 2
  %y72 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx71, i32 0, i32 1
  %64 = load double, double* %y72, align 8
  %mul73 = fmul double %64, %62
  store double %mul73, double* %y72, align 8
  %65 = load double, double* %radius_x.addr, align 8
  %66 = load %struct._GimpCoords*, %struct._GimpCoords** %ellips.addr, align 8
  %arrayidx74 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %66, i64 3
  %x75 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx74, i32 0, i32 0
  %67 = load double, double* %x75, align 8
  %mul76 = fmul double %67, %65
  store double %mul76, double* %x75, align 8
  %68 = load double, double* %radius_y.addr, align 8
  %69 = load %struct._GimpCoords*, %struct._GimpCoords** %ellips.addr, align 8
  %arrayidx77 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %69, i64 3
  %y78 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %arrayidx77, i32 0, i32 1
  %70 = load double, double* %y78, align 8
  %mul79 = fmul double %70, %68
  store double %mul79, double* %y78, align 8
  br label %return

return:                                           ; preds = %if.end.55, %if.else
  ret void
}

; Function Attrs: nounwind readnone
declare double @ceil(double) #2

; Function Attrs: nounwind uwtable
define %struct._GimpStroke* @gimp_bezier_stroke_new_ellipse(%struct._GimpCoords* %center, double %radius_x, double %radius_y, double %angle) #3 {
entry:
  %center.addr = alloca %struct._GimpCoords*, align 8
  %radius_x.addr = alloca double, align 8
  %radius_y.addr = alloca double, align 8
  %angle.addr = alloca double, align 8
  %stroke = alloca %struct._GimpStroke*, align 8
  %p1 = alloca %struct._GimpCoords, align 8
  %p2 = alloca %struct._GimpCoords, align 8
  %p3 = alloca %struct._GimpCoords, align 8
  %dx = alloca %struct._GimpCoords, align 8
  %dy = alloca %struct._GimpCoords, align 8
  %circlemagic = alloca double, align 8
  %handle = alloca %struct._GimpAnchor*, align 8
  store %struct._GimpCoords* %center, %struct._GimpCoords** %center.addr, align 8
  store double %radius_x, double* %radius_x.addr, align 8
  store double %radius_y, double* %radius_y.addr, align 8
  store double %angle, double* %angle.addr, align 8
  %0 = load %struct._GimpCoords*, %struct._GimpCoords** %center.addr, align 8
  %1 = bitcast %struct._GimpCoords* %p1 to i8*
  %2 = bitcast %struct._GimpCoords* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 64, i32 8, i1 false)
  %3 = load %struct._GimpCoords*, %struct._GimpCoords** %center.addr, align 8
  %4 = bitcast %struct._GimpCoords* %p2 to i8*
  %5 = bitcast %struct._GimpCoords* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 64, i32 8, i1 false)
  %6 = load %struct._GimpCoords*, %struct._GimpCoords** %center.addr, align 8
  %7 = bitcast %struct._GimpCoords* %p3 to i8*
  %8 = bitcast %struct._GimpCoords* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 64, i32 8, i1 false)
  %9 = bitcast %struct._GimpCoords* %dx to i8*
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 64, i32 8, i1 false)
  %10 = bitcast %struct._GimpCoords* %dy to i8*
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 64, i32 8, i1 false)
  store double 0x3FE1AC5111534A23, double* %circlemagic, align 8
  %11 = load double, double* %radius_x.addr, align 8
  %12 = load double, double* %angle.addr, align 8
  %call = call double @cos(double %12) #5
  %mul = fmul double %11, %call
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %dx, i32 0, i32 0
  store double %mul, double* %x, align 8
  %13 = load double, double* %radius_x.addr, align 8
  %sub = fsub double -0.000000e+00, %13
  %14 = load double, double* %angle.addr, align 8
  %call1 = call double @sin(double %14) #5
  %mul2 = fmul double %sub, %call1
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %dx, i32 0, i32 1
  store double %mul2, double* %y, align 8
  %15 = load double, double* %radius_y.addr, align 8
  %16 = load double, double* %angle.addr, align 8
  %call3 = call double @sin(double %16) #5
  %mul4 = fmul double %15, %call3
  %x5 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %dy, i32 0, i32 0
  store double %mul4, double* %x5, align 8
  %17 = load double, double* %radius_y.addr, align 8
  %18 = load double, double* %angle.addr, align 8
  %call6 = call double @cos(double %18) #5
  %mul7 = fmul double %17, %call6
  %y8 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %dy, i32 0, i32 1
  store double %mul7, double* %y8, align 8
  %19 = load %struct._GimpCoords*, %struct._GimpCoords** %center.addr, align 8
  call void @gimp_coords_mix(double 1.000000e+00, %struct._GimpCoords* %19, double 1.000000e+00, %struct._GimpCoords* %dx, %struct._GimpCoords* %p1)
  %call9 = call %struct._GimpStroke* @gimp_bezier_stroke_new_moveto(%struct._GimpCoords* %p1)
  store %struct._GimpStroke* %call9, %struct._GimpStroke** %stroke, align 8
  %20 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %21 = bitcast %struct._GimpStroke* %20 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_stroke_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call10)
  %22 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpStroke*
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %22, i32 0, i32 2
  %23 = load %struct._GList*, %struct._GList** %anchors, align 8
  %call12 = call %struct._GList* @g_list_last(%struct._GList* %23)
  %data = getelementptr inbounds %struct._GList, %struct._GList* %call12, i32 0, i32 0
  %24 = load i8*, i8** %data, align 8
  %25 = bitcast i8* %24 to %struct._GimpAnchor*
  store %struct._GimpAnchor* %25, %struct._GimpAnchor** %handle, align 8
  %26 = load %struct._GimpAnchor*, %struct._GimpAnchor** %handle, align 8
  %position = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %26, i32 0, i32 0
  call void @gimp_coords_mix(double 1.000000e+00, %struct._GimpCoords* %p1, double 0xBFE1AC5111534A23, %struct._GimpCoords* %dy, %struct._GimpCoords* %position)
  call void @gimp_coords_mix(double 1.000000e+00, %struct._GimpCoords* %p1, double 0x3FE1AC5111534A23, %struct._GimpCoords* %dy, %struct._GimpCoords* %p1)
  %27 = load %struct._GimpCoords*, %struct._GimpCoords** %center.addr, align 8
  call void @gimp_coords_mix(double 1.000000e+00, %struct._GimpCoords* %27, double 1.000000e+00, %struct._GimpCoords* %dy, %struct._GimpCoords* %p3)
  call void @gimp_coords_mix(double 1.000000e+00, %struct._GimpCoords* %p3, double 0x3FE1AC5111534A23, %struct._GimpCoords* %dx, %struct._GimpCoords* %p2)
  %28 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  call void @gimp_bezier_stroke_cubicto(%struct._GimpStroke* %28, %struct._GimpCoords* %p1, %struct._GimpCoords* %p2, %struct._GimpCoords* %p3)
  call void @gimp_coords_mix(double 1.000000e+00, %struct._GimpCoords* %p3, double 0xBFE1AC5111534A23, %struct._GimpCoords* %dx, %struct._GimpCoords* %p1)
  %29 = load %struct._GimpCoords*, %struct._GimpCoords** %center.addr, align 8
  call void @gimp_coords_mix(double 1.000000e+00, %struct._GimpCoords* %29, double -1.000000e+00, %struct._GimpCoords* %dx, %struct._GimpCoords* %p3)
  call void @gimp_coords_mix(double 1.000000e+00, %struct._GimpCoords* %p3, double 0x3FE1AC5111534A23, %struct._GimpCoords* %dy, %struct._GimpCoords* %p2)
  %30 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  call void @gimp_bezier_stroke_cubicto(%struct._GimpStroke* %30, %struct._GimpCoords* %p1, %struct._GimpCoords* %p2, %struct._GimpCoords* %p3)
  call void @gimp_coords_mix(double 1.000000e+00, %struct._GimpCoords* %p3, double 0xBFE1AC5111534A23, %struct._GimpCoords* %dy, %struct._GimpCoords* %p1)
  %31 = load %struct._GimpCoords*, %struct._GimpCoords** %center.addr, align 8
  call void @gimp_coords_mix(double 1.000000e+00, %struct._GimpCoords* %31, double -1.000000e+00, %struct._GimpCoords* %dy, %struct._GimpCoords* %p3)
  call void @gimp_coords_mix(double 1.000000e+00, %struct._GimpCoords* %p3, double 0xBFE1AC5111534A23, %struct._GimpCoords* %dx, %struct._GimpCoords* %p2)
  %32 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  call void @gimp_bezier_stroke_cubicto(%struct._GimpStroke* %32, %struct._GimpCoords* %p1, %struct._GimpCoords* %p2, %struct._GimpCoords* %p3)
  %33 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %34 = bitcast %struct._GimpStroke* %33 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_stroke_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call13)
  %35 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpStroke*
  %anchors15 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %35, i32 0, i32 2
  %36 = load %struct._GList*, %struct._GList** %anchors15, align 8
  %call16 = call %struct._GList* @g_list_first(%struct._GList* %36)
  %data17 = getelementptr inbounds %struct._GList, %struct._GList* %call16, i32 0, i32 0
  %37 = load i8*, i8** %data17, align 8
  %38 = bitcast i8* %37 to %struct._GimpAnchor*
  store %struct._GimpAnchor* %38, %struct._GimpAnchor** %handle, align 8
  %39 = load %struct._GimpAnchor*, %struct._GimpAnchor** %handle, align 8
  %position18 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %39, i32 0, i32 0
  call void @gimp_coords_mix(double 1.000000e+00, %struct._GimpCoords* %p3, double 0x3FE1AC5111534A23, %struct._GimpCoords* %dx, %struct._GimpCoords* %position18)
  %40 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  call void @gimp_stroke_close(%struct._GimpStroke* %40)
  %41 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  ret %struct._GimpStroke* %41
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: nounwind
declare double @cos(double) #6

; Function Attrs: nounwind
declare double @sin(double) #6

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_bezier_stroke_class_init(%struct._GimpBezierStrokeClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpBezierStrokeClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %stroke_class = alloca %struct._GimpStrokeClass*, align 8
  store %struct._GimpBezierStrokeClass* %klass, %struct._GimpBezierStrokeClass** %klass.addr, align 8
  %0 = load %struct._GimpBezierStrokeClass*, %struct._GimpBezierStrokeClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpBezierStrokeClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpBezierStrokeClass*, %struct._GimpBezierStrokeClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpBezierStrokeClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_stroke_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpStrokeClass*
  store %struct._GimpStrokeClass* %5, %struct._GimpStrokeClass** %stroke_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_bezier_stroke_finalize, void (%struct._GObject*)** %finalize, align 8
  %7 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %stroke_class, align 8
  %nearest_point_get = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %7, i32 0, i32 4
  store double (%struct._GimpStroke*, %struct._GimpCoords*, double, %struct._GimpCoords*, %struct._GimpAnchor**, %struct._GimpAnchor**, double*)* @gimp_bezier_stroke_nearest_point_get, double (%struct._GimpStroke*, %struct._GimpCoords*, double, %struct._GimpCoords*, %struct._GimpAnchor**, %struct._GimpAnchor**, double*)** %nearest_point_get, align 8
  %8 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %stroke_class, align 8
  %nearest_tangent_get = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %8, i32 0, i32 5
  store double (%struct._GimpStroke*, %struct._GimpCoords*, %struct._GimpCoords*, double, %struct._GimpCoords*, %struct._GimpAnchor**, %struct._GimpAnchor**, double*)* @gimp_bezier_stroke_nearest_tangent_get, double (%struct._GimpStroke*, %struct._GimpCoords*, %struct._GimpCoords*, double, %struct._GimpCoords*, %struct._GimpAnchor**, %struct._GimpAnchor**, double*)** %nearest_tangent_get, align 8
  %9 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %stroke_class, align 8
  %nearest_intersection_get = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %9, i32 0, i32 6
  store double (%struct._GimpStroke*, %struct._GimpCoords*, %struct._GimpCoords*, double, %struct._GimpCoords*, %struct._GimpAnchor**, %struct._GimpAnchor**, double*)* null, double (%struct._GimpStroke*, %struct._GimpCoords*, %struct._GimpCoords*, double, %struct._GimpCoords*, %struct._GimpAnchor**, %struct._GimpAnchor**, double*)** %nearest_intersection_get, align 8
  %10 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %stroke_class, align 8
  %anchor_move_relative = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %10, i32 0, i32 9
  store void (%struct._GimpStroke*, %struct._GimpAnchor*, %struct._GimpCoords*, i32)* @gimp_bezier_stroke_anchor_move_relative, void (%struct._GimpStroke*, %struct._GimpAnchor*, %struct._GimpCoords*, i32)** %anchor_move_relative, align 8
  %11 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %stroke_class, align 8
  %anchor_move_absolute = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %11, i32 0, i32 10
  store void (%struct._GimpStroke*, %struct._GimpAnchor*, %struct._GimpCoords*, i32)* @gimp_bezier_stroke_anchor_move_absolute, void (%struct._GimpStroke*, %struct._GimpAnchor*, %struct._GimpCoords*, i32)** %anchor_move_absolute, align 8
  %12 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %stroke_class, align 8
  %anchor_convert = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %12, i32 0, i32 11
  store void (%struct._GimpStroke*, %struct._GimpAnchor*, i32)* @gimp_bezier_stroke_anchor_convert, void (%struct._GimpStroke*, %struct._GimpAnchor*, i32)** %anchor_convert, align 8
  %13 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %stroke_class, align 8
  %anchor_delete = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %13, i32 0, i32 12
  store void (%struct._GimpStroke*, %struct._GimpAnchor*)* @gimp_bezier_stroke_anchor_delete, void (%struct._GimpStroke*, %struct._GimpAnchor*)** %anchor_delete, align 8
  %14 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %stroke_class, align 8
  %point_is_movable = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %14, i32 0, i32 13
  store i32 (%struct._GimpStroke*, %struct._GimpAnchor*, double)* @gimp_bezier_stroke_point_is_movable, i32 (%struct._GimpStroke*, %struct._GimpAnchor*, double)** %point_is_movable, align 8
  %15 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %stroke_class, align 8
  %point_move_relative = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %15, i32 0, i32 14
  store void (%struct._GimpStroke*, %struct._GimpAnchor*, double, %struct._GimpCoords*, i32)* @gimp_bezier_stroke_point_move_relative, void (%struct._GimpStroke*, %struct._GimpAnchor*, double, %struct._GimpCoords*, i32)** %point_move_relative, align 8
  %16 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %stroke_class, align 8
  %point_move_absolute = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %16, i32 0, i32 15
  store void (%struct._GimpStroke*, %struct._GimpAnchor*, double, %struct._GimpCoords*, i32)* @gimp_bezier_stroke_point_move_absolute, void (%struct._GimpStroke*, %struct._GimpAnchor*, double, %struct._GimpCoords*, i32)** %point_move_absolute, align 8
  %17 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %stroke_class, align 8
  %close = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %17, i32 0, i32 16
  store void (%struct._GimpStroke*)* @gimp_bezier_stroke_close, void (%struct._GimpStroke*)** %close, align 8
  %18 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %stroke_class, align 8
  %open = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %18, i32 0, i32 17
  store %struct._GimpStroke* (%struct._GimpStroke*, %struct._GimpAnchor*)* @gimp_bezier_stroke_open, %struct._GimpStroke* (%struct._GimpStroke*, %struct._GimpAnchor*)** %open, align 8
  %19 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %stroke_class, align 8
  %anchor_is_insertable = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %19, i32 0, i32 18
  store i32 (%struct._GimpStroke*, %struct._GimpAnchor*, double)* @gimp_bezier_stroke_anchor_is_insertable, i32 (%struct._GimpStroke*, %struct._GimpAnchor*, double)** %anchor_is_insertable, align 8
  %20 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %stroke_class, align 8
  %anchor_insert = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %20, i32 0, i32 19
  store %struct._GimpAnchor* (%struct._GimpStroke*, %struct._GimpAnchor*, double)* @gimp_bezier_stroke_anchor_insert, %struct._GimpAnchor* (%struct._GimpStroke*, %struct._GimpAnchor*, double)** %anchor_insert, align 8
  %21 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %stroke_class, align 8
  %is_extendable = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %21, i32 0, i32 20
  store i32 (%struct._GimpStroke*, %struct._GimpAnchor*)* @gimp_bezier_stroke_is_extendable, i32 (%struct._GimpStroke*, %struct._GimpAnchor*)** %is_extendable, align 8
  %22 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %stroke_class, align 8
  %extend = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %22, i32 0, i32 21
  store %struct._GimpAnchor* (%struct._GimpStroke*, %struct._GimpCoords*, %struct._GimpAnchor*, i32)* @gimp_bezier_stroke_extend, %struct._GimpAnchor* (%struct._GimpStroke*, %struct._GimpCoords*, %struct._GimpAnchor*, i32)** %extend, align 8
  %23 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %stroke_class, align 8
  %connect_stroke = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %23, i32 0, i32 22
  store i32 (%struct._GimpStroke*, %struct._GimpAnchor*, %struct._GimpStroke*, %struct._GimpAnchor*)* @gimp_bezier_stroke_connect_stroke, i32 (%struct._GimpStroke*, %struct._GimpAnchor*, %struct._GimpStroke*, %struct._GimpAnchor*)** %connect_stroke, align 8
  %24 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %stroke_class, align 8
  %interpolate = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %24, i32 0, i32 27
  store %struct._GArray* (%struct._GimpStroke*, double, i32*)* @gimp_bezier_stroke_interpolate, %struct._GArray* (%struct._GimpStroke*, double, i32*)** %interpolate, align 8
  %25 = load %struct._GimpStrokeClass*, %struct._GimpStrokeClass** %stroke_class, align 8
  %make_bezier = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %25, i32 0, i32 29
  store %struct.cairo_path* (%struct._GimpStroke*)* @gimp_bezier_stroke_make_bezier, %struct.cairo_path* (%struct._GimpStroke*)** %make_bezier, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_bezier_stroke_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load i8*, i8** @gimp_bezier_stroke_parent_class, align 8
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
define internal double @gimp_bezier_stroke_nearest_point_get(%struct._GimpStroke* %stroke, %struct._GimpCoords* %coord, double %precision, %struct._GimpCoords* %ret_point, %struct._GimpAnchor** %ret_segment_start, %struct._GimpAnchor** %ret_segment_end, double* %ret_pos) #3 {
entry:
  %retval = alloca double, align 8
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %coord.addr = alloca %struct._GimpCoords*, align 8
  %precision.addr = alloca double, align 8
  %ret_point.addr = alloca %struct._GimpCoords*, align 8
  %ret_segment_start.addr = alloca %struct._GimpAnchor**, align 8
  %ret_segment_end.addr = alloca %struct._GimpAnchor**, align 8
  %ret_pos.addr = alloca double*, align 8
  %min_dist = alloca double, align 8
  %dist = alloca double, align 8
  %pos = alloca double, align 8
  %point = alloca %struct._GimpCoords, align 8
  %segmentcoords = alloca [4 x %struct._GimpCoords], align 16
  %anchorlist = alloca %struct._GList*, align 8
  %segment_start = alloca %struct._GimpAnchor*, align 8
  %segment_end = alloca %struct._GimpAnchor*, align 8
  %anchor = alloca %struct._GimpAnchor*, align 8
  %count = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpCoords* %coord, %struct._GimpCoords** %coord.addr, align 8
  store double %precision, double* %precision.addr, align 8
  store %struct._GimpCoords* %ret_point, %struct._GimpCoords** %ret_point.addr, align 8
  store %struct._GimpAnchor** %ret_segment_start, %struct._GimpAnchor*** %ret_segment_start.addr, align 8
  store %struct._GimpAnchor** %ret_segment_end, %struct._GimpAnchor*** %ret_segment_end.addr, align 8
  store double* %ret_pos, double** %ret_pos.addr, align 8
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %segment_end, align 8
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %0, i32 0, i32 2
  %1 = load %struct._GList*, %struct._GList** %anchors, align 8
  %tobool = icmp ne %struct._GList* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store double -1.000000e+00, double* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %count, align 4
  store double -1.000000e+00, double* %min_dist, align 8
  %2 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors1 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %2, i32 0, i32 2
  %3 = load %struct._GList*, %struct._GList** %anchors1, align 8
  store %struct._GList* %3, %struct._GList** %anchorlist, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end
  %4 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %tobool2 = icmp ne %struct._GList* %4, null
  br i1 %tobool2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %5 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8
  %7 = bitcast i8* %6 to %struct._GimpAnchor*
  %type = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %7, i32 0, i32 1
  %8 = load i32, i32* %type, align 4
  %cmp = icmp ne i32 %8, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %9 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %9, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %tobool3 = icmp ne %struct._GList* %10, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %11 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %11, i32 0, i32 1
  %12 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %12, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %anchorlist, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %13 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %data4 = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 0
  %14 = load i8*, i8** %data4, align 8
  %15 = bitcast i8* %14 to %struct._GimpAnchor*
  store %struct._GimpAnchor* %15, %struct._GimpAnchor** %segment_start, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %cond.end.37, %for.end
  %16 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %tobool6 = icmp ne %struct._GList* %16, null
  br i1 %tobool6, label %for.body.7, label %for.end.39

for.body.7:                                       ; preds = %for.cond.5
  %17 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %data8 = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 0
  %18 = load i8*, i8** %data8, align 8
  %19 = bitcast i8* %18 to %struct._GimpAnchor*
  store %struct._GimpAnchor* %19, %struct._GimpAnchor** %anchor, align 8
  %20 = load i32, i32* %count, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %segmentcoords, i32 0, i64 %idxprom
  %21 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %position = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %21, i32 0, i32 0
  %22 = bitcast %struct._GimpCoords* %arrayidx to i8*
  %23 = bitcast %struct._GimpCoords* %position to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 64, i32 8, i1 false)
  %24 = load i32, i32* %count, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %count, align 4
  %25 = load i32, i32* %count, align 4
  %cmp9 = icmp eq i32 %25, 4
  br i1 %cmp9, label %if.then.10, label %if.end.31

if.then.10:                                       ; preds = %for.body.7
  %26 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %data11 = getelementptr inbounds %struct._GList, %struct._GList* %26, i32 0, i32 0
  %27 = load i8*, i8** %data11, align 8
  %28 = bitcast i8* %27 to %struct._GimpAnchor*
  store %struct._GimpAnchor* %28, %struct._GimpAnchor** %segment_end, align 8
  %arraydecay = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %segmentcoords, i32 0, i32 0
  %29 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %30 = load double, double* %precision.addr, align 8
  %call = call double @gimp_bezier_stroke_segment_nearest_point_get(%struct._GimpCoords* %arraydecay, %struct._GimpCoords* %29, double %30, %struct._GimpCoords* %point, double* %pos, i32 10)
  store double %call, double* %dist, align 8
  %31 = load double, double* %dist, align 8
  %32 = load double, double* %min_dist, align 8
  %cmp12 = fcmp olt double %31, %32
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.10
  %33 = load double, double* %min_dist, align 8
  %cmp13 = fcmp olt double %33, 0.000000e+00
  br i1 %cmp13, label %if.then.14, label %if.end.27

if.then.14:                                       ; preds = %lor.lhs.false, %if.then.10
  %34 = load double, double* %dist, align 8
  store double %34, double* %min_dist, align 8
  %35 = load double*, double** %ret_pos.addr, align 8
  %tobool15 = icmp ne double* %35, null
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.14
  %36 = load double, double* %pos, align 8
  %37 = load double*, double** %ret_pos.addr, align 8
  store double %36, double* %37, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.then.14
  %38 = load %struct._GimpCoords*, %struct._GimpCoords** %ret_point.addr, align 8
  %tobool18 = icmp ne %struct._GimpCoords* %38, null
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.17
  %39 = load %struct._GimpCoords*, %struct._GimpCoords** %ret_point.addr, align 8
  %40 = bitcast %struct._GimpCoords* %39 to i8*
  %41 = bitcast %struct._GimpCoords* %point to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 64, i32 8, i1 false)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.17
  %42 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_segment_start.addr, align 8
  %tobool21 = icmp ne %struct._GimpAnchor** %42, null
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.20
  %43 = load %struct._GimpAnchor*, %struct._GimpAnchor** %segment_start, align 8
  %44 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_segment_start.addr, align 8
  store %struct._GimpAnchor* %43, %struct._GimpAnchor** %44, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.20
  %45 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_segment_end.addr, align 8
  %tobool24 = icmp ne %struct._GimpAnchor** %45, null
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.23
  %46 = load %struct._GimpAnchor*, %struct._GimpAnchor** %segment_end, align 8
  %47 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_segment_end.addr, align 8
  store %struct._GimpAnchor* %46, %struct._GimpAnchor** %47, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end.23
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %lor.lhs.false
  %48 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %data28 = getelementptr inbounds %struct._GList, %struct._GList* %48, i32 0, i32 0
  %49 = load i8*, i8** %data28, align 8
  %50 = bitcast i8* %49 to %struct._GimpAnchor*
  store %struct._GimpAnchor* %50, %struct._GimpAnchor** %segment_start, align 8
  %arrayidx29 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %segmentcoords, i32 0, i64 0
  %arrayidx30 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %segmentcoords, i32 0, i64 3
  %51 = bitcast %struct._GimpCoords* %arrayidx29 to i8*
  %52 = bitcast %struct._GimpCoords* %arrayidx30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* %52, i64 64, i32 8, i1 false)
  store i32 1, i32* %count, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.27, %for.body.7
  br label %for.inc.32

for.inc.32:                                       ; preds = %if.end.31
  %53 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %tobool33 = icmp ne %struct._GList* %53, null
  br i1 %tobool33, label %cond.true.34, label %cond.false.36

cond.true.34:                                     ; preds = %for.inc.32
  %54 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %next35 = getelementptr inbounds %struct._GList, %struct._GList* %54, i32 0, i32 1
  %55 = load %struct._GList*, %struct._GList** %next35, align 8
  br label %cond.end.37

cond.false.36:                                    ; preds = %for.inc.32
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.36, %cond.true.34
  %cond38 = phi %struct._GList* [ %55, %cond.true.34 ], [ null, %cond.false.36 ]
  store %struct._GList* %cond38, %struct._GList** %anchorlist, align 8
  br label %for.cond.5

for.end.39:                                       ; preds = %for.cond.5
  %56 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %closed = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %56, i32 0, i32 3
  %57 = load i32, i32* %closed, align 4
  %tobool40 = icmp ne i32 %57, 0
  br i1 %tobool40, label %land.lhs.true, label %if.end.82

land.lhs.true:                                    ; preds = %for.end.39
  %58 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors41 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %58, i32 0, i32 2
  %59 = load %struct._GList*, %struct._GList** %anchors41, align 8
  %tobool42 = icmp ne %struct._GList* %59, null
  br i1 %tobool42, label %if.then.43, label %if.end.82

if.then.43:                                       ; preds = %land.lhs.true
  %60 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors44 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %60, i32 0, i32 2
  %61 = load %struct._GList*, %struct._GList** %anchors44, align 8
  store %struct._GList* %61, %struct._GList** %anchorlist, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.43
  %62 = load i32, i32* %count, align 4
  %cmp45 = icmp slt i32 %62, 3
  br i1 %cmp45, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %63 = load i32, i32* %count, align 4
  %idxprom46 = sext i32 %63 to i64
  %arrayidx47 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %segmentcoords, i32 0, i64 %idxprom46
  %64 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %data48 = getelementptr inbounds %struct._GList, %struct._GList* %64, i32 0, i32 0
  %65 = load i8*, i8** %data48, align 8
  %66 = bitcast i8* %65 to %struct._GimpAnchor*
  %position49 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %66, i32 0, i32 0
  %67 = bitcast %struct._GimpCoords* %arrayidx47 to i8*
  %68 = bitcast %struct._GimpCoords* %position49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* %68, i64 64, i32 8, i1 false)
  %69 = load i32, i32* %count, align 4
  %inc50 = add nsw i32 %69, 1
  store i32 %inc50, i32* %count, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %70 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %tobool51 = icmp ne %struct._GList* %70, null
  br i1 %tobool51, label %cond.true.52, label %cond.false.54

cond.true.52:                                     ; preds = %while.end
  %71 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %next53 = getelementptr inbounds %struct._GList, %struct._GList* %71, i32 0, i32 1
  %72 = load %struct._GList*, %struct._GList** %next53, align 8
  br label %cond.end.55

cond.false.54:                                    ; preds = %while.end
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.54, %cond.true.52
  %cond56 = phi %struct._GList* [ %72, %cond.true.52 ], [ null, %cond.false.54 ]
  store %struct._GList* %cond56, %struct._GList** %anchorlist, align 8
  %73 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %tobool57 = icmp ne %struct._GList* %73, null
  br i1 %tobool57, label %if.then.58, label %if.end.62

if.then.58:                                       ; preds = %cond.end.55
  %74 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %data59 = getelementptr inbounds %struct._GList, %struct._GList* %74, i32 0, i32 0
  %75 = load i8*, i8** %data59, align 8
  %76 = bitcast i8* %75 to %struct._GimpAnchor*
  store %struct._GimpAnchor* %76, %struct._GimpAnchor** %segment_end, align 8
  %arrayidx60 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %segmentcoords, i32 0, i64 3
  %77 = load %struct._GimpAnchor*, %struct._GimpAnchor** %segment_end, align 8
  %position61 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %77, i32 0, i32 0
  %78 = bitcast %struct._GimpCoords* %arrayidx60 to i8*
  %79 = bitcast %struct._GimpCoords* %position61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* %79, i64 64, i32 8, i1 false)
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.58, %cond.end.55
  %arraydecay63 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %segmentcoords, i32 0, i32 0
  %80 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %81 = load double, double* %precision.addr, align 8
  %call64 = call double @gimp_bezier_stroke_segment_nearest_point_get(%struct._GimpCoords* %arraydecay63, %struct._GimpCoords* %80, double %81, %struct._GimpCoords* %point, double* %pos, i32 10)
  store double %call64, double* %dist, align 8
  %82 = load double, double* %dist, align 8
  %83 = load double, double* %min_dist, align 8
  %cmp65 = fcmp olt double %82, %83
  br i1 %cmp65, label %if.then.68, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %if.end.62
  %84 = load double, double* %min_dist, align 8
  %cmp67 = fcmp olt double %84, 0.000000e+00
  br i1 %cmp67, label %if.then.68, label %if.end.81

if.then.68:                                       ; preds = %lor.lhs.false.66, %if.end.62
  %85 = load double, double* %dist, align 8
  store double %85, double* %min_dist, align 8
  %86 = load double*, double** %ret_pos.addr, align 8
  %tobool69 = icmp ne double* %86, null
  br i1 %tobool69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.then.68
  %87 = load double, double* %pos, align 8
  %88 = load double*, double** %ret_pos.addr, align 8
  store double %87, double* %88, align 8
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %if.then.68
  %89 = load %struct._GimpCoords*, %struct._GimpCoords** %ret_point.addr, align 8
  %tobool72 = icmp ne %struct._GimpCoords* %89, null
  br i1 %tobool72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.end.71
  %90 = load %struct._GimpCoords*, %struct._GimpCoords** %ret_point.addr, align 8
  %91 = bitcast %struct._GimpCoords* %90 to i8*
  %92 = bitcast %struct._GimpCoords* %point to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %91, i8* %92, i64 64, i32 8, i1 false)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %if.end.71
  %93 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_segment_start.addr, align 8
  %tobool75 = icmp ne %struct._GimpAnchor** %93, null
  br i1 %tobool75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.end.74
  %94 = load %struct._GimpAnchor*, %struct._GimpAnchor** %segment_start, align 8
  %95 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_segment_start.addr, align 8
  store %struct._GimpAnchor* %94, %struct._GimpAnchor** %95, align 8
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %if.end.74
  %96 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_segment_end.addr, align 8
  %tobool78 = icmp ne %struct._GimpAnchor** %96, null
  br i1 %tobool78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.end.77
  %97 = load %struct._GimpAnchor*, %struct._GimpAnchor** %segment_end, align 8
  %98 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_segment_end.addr, align 8
  store %struct._GimpAnchor* %97, %struct._GimpAnchor** %98, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.79, %if.end.77
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %lor.lhs.false.66
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %land.lhs.true, %for.end.39
  %99 = load double, double* %min_dist, align 8
  store double %99, double* %retval
  br label %return

return:                                           ; preds = %if.end.82, %if.then
  %100 = load double, double* %retval
  ret double %100
}

; Function Attrs: nounwind uwtable
define internal double @gimp_bezier_stroke_nearest_tangent_get(%struct._GimpStroke* %stroke, %struct._GimpCoords* %coord1, %struct._GimpCoords* %coord2, double %precision, %struct._GimpCoords* %nearest, %struct._GimpAnchor** %ret_segment_start, %struct._GimpAnchor** %ret_segment_end, double* %ret_pos) #3 {
entry:
  %retval = alloca double, align 8
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %coord1.addr = alloca %struct._GimpCoords*, align 8
  %coord2.addr = alloca %struct._GimpCoords*, align 8
  %precision.addr = alloca double, align 8
  %nearest.addr = alloca %struct._GimpCoords*, align 8
  %ret_segment_start.addr = alloca %struct._GimpAnchor**, align 8
  %ret_segment_end.addr = alloca %struct._GimpAnchor**, align 8
  %ret_pos.addr = alloca double*, align 8
  %min_dist = alloca double, align 8
  %dist = alloca double, align 8
  %pos = alloca double, align 8
  %point = alloca %struct._GimpCoords, align 8
  %segmentcoords = alloca [4 x %struct._GimpCoords], align 16
  %anchorlist = alloca %struct._GList*, align 8
  %segment_start = alloca %struct._GimpAnchor*, align 8
  %segment_end = alloca %struct._GimpAnchor*, align 8
  %anchor = alloca %struct._GimpAnchor*, align 8
  %count = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpCoords* %coord1, %struct._GimpCoords** %coord1.addr, align 8
  store %struct._GimpCoords* %coord2, %struct._GimpCoords** %coord2.addr, align 8
  store double %precision, double* %precision.addr, align 8
  store %struct._GimpCoords* %nearest, %struct._GimpCoords** %nearest.addr, align 8
  store %struct._GimpAnchor** %ret_segment_start, %struct._GimpAnchor*** %ret_segment_start.addr, align 8
  store %struct._GimpAnchor** %ret_segment_end, %struct._GimpAnchor*** %ret_segment_end.addr, align 8
  store double* %ret_pos, double** %ret_pos.addr, align 8
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %segment_end, align 8
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %0, i32 0, i32 2
  %1 = load %struct._GList*, %struct._GList** %anchors, align 8
  %tobool = icmp ne %struct._GList* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store double -1.000000e+00, double* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %count, align 4
  store double -1.000000e+00, double* %min_dist, align 8
  %2 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors1 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %2, i32 0, i32 2
  %3 = load %struct._GList*, %struct._GList** %anchors1, align 8
  store %struct._GList* %3, %struct._GList** %anchorlist, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end
  %4 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %tobool2 = icmp ne %struct._GList* %4, null
  br i1 %tobool2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %5 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8
  %7 = bitcast i8* %6 to %struct._GimpAnchor*
  %type = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %7, i32 0, i32 1
  %8 = load i32, i32* %type, align 4
  %cmp = icmp ne i32 %8, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %9 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %9, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %tobool3 = icmp ne %struct._GList* %10, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %11 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %11, i32 0, i32 1
  %12 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %12, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %anchorlist, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %13 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %data4 = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 0
  %14 = load i8*, i8** %data4, align 8
  %15 = bitcast i8* %14 to %struct._GimpAnchor*
  store %struct._GimpAnchor* %15, %struct._GimpAnchor** %segment_start, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %cond.end.38, %for.end
  %16 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %tobool6 = icmp ne %struct._GList* %16, null
  br i1 %tobool6, label %for.body.7, label %for.end.40

for.body.7:                                       ; preds = %for.cond.5
  %17 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %data8 = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 0
  %18 = load i8*, i8** %data8, align 8
  %19 = bitcast i8* %18 to %struct._GimpAnchor*
  store %struct._GimpAnchor* %19, %struct._GimpAnchor** %anchor, align 8
  %20 = load i32, i32* %count, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %segmentcoords, i32 0, i64 %idxprom
  %21 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %position = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %21, i32 0, i32 0
  %22 = bitcast %struct._GimpCoords* %arrayidx to i8*
  %23 = bitcast %struct._GimpCoords* %position to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 64, i32 8, i1 false)
  %24 = load i32, i32* %count, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %count, align 4
  %25 = load i32, i32* %count, align 4
  %cmp9 = icmp eq i32 %25, 4
  br i1 %cmp9, label %if.then.10, label %if.end.32

if.then.10:                                       ; preds = %for.body.7
  %26 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %data11 = getelementptr inbounds %struct._GList, %struct._GList* %26, i32 0, i32 0
  %27 = load i8*, i8** %data11, align 8
  %28 = bitcast i8* %27 to %struct._GimpAnchor*
  store %struct._GimpAnchor* %28, %struct._GimpAnchor** %segment_end, align 8
  %arraydecay = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %segmentcoords, i32 0, i32 0
  %29 = load %struct._GimpCoords*, %struct._GimpCoords** %coord1.addr, align 8
  %30 = load %struct._GimpCoords*, %struct._GimpCoords** %coord2.addr, align 8
  %31 = load double, double* %precision.addr, align 8
  %call = call double @gimp_bezier_stroke_segment_nearest_tangent_get(%struct._GimpCoords* %arraydecay, %struct._GimpCoords* %29, %struct._GimpCoords* %30, double %31, %struct._GimpCoords* %point, double* %pos)
  store double %call, double* %dist, align 8
  %32 = load double, double* %dist, align 8
  %cmp12 = fcmp oge double %32, 0.000000e+00
  br i1 %cmp12, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %if.then.10
  %33 = load double, double* %dist, align 8
  %34 = load double, double* %min_dist, align 8
  %cmp13 = fcmp olt double %33, %34
  br i1 %cmp13, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %35 = load double, double* %min_dist, align 8
  %cmp14 = fcmp olt double %35, 0.000000e+00
  br i1 %cmp14, label %if.then.15, label %if.end.28

if.then.15:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %36 = load double, double* %dist, align 8
  store double %36, double* %min_dist, align 8
  %37 = load double*, double** %ret_pos.addr, align 8
  %tobool16 = icmp ne double* %37, null
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.15
  %38 = load double, double* %pos, align 8
  %39 = load double*, double** %ret_pos.addr, align 8
  store double %38, double* %39, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.then.15
  %40 = load %struct._GimpCoords*, %struct._GimpCoords** %nearest.addr, align 8
  %tobool19 = icmp ne %struct._GimpCoords* %40, null
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.18
  %41 = load %struct._GimpCoords*, %struct._GimpCoords** %nearest.addr, align 8
  %42 = bitcast %struct._GimpCoords* %41 to i8*
  %43 = bitcast %struct._GimpCoords* %point to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 64, i32 8, i1 false)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end.18
  %44 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_segment_start.addr, align 8
  %tobool22 = icmp ne %struct._GimpAnchor** %44, null
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.21
  %45 = load %struct._GimpAnchor*, %struct._GimpAnchor** %segment_start, align 8
  %46 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_segment_start.addr, align 8
  store %struct._GimpAnchor* %45, %struct._GimpAnchor** %46, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.end.21
  %47 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_segment_end.addr, align 8
  %tobool25 = icmp ne %struct._GimpAnchor** %47, null
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.24
  %48 = load %struct._GimpAnchor*, %struct._GimpAnchor** %segment_end, align 8
  %49 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_segment_end.addr, align 8
  store %struct._GimpAnchor* %48, %struct._GimpAnchor** %49, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end.24
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %lor.lhs.false, %if.then.10
  %50 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %data29 = getelementptr inbounds %struct._GList, %struct._GList* %50, i32 0, i32 0
  %51 = load i8*, i8** %data29, align 8
  %52 = bitcast i8* %51 to %struct._GimpAnchor*
  store %struct._GimpAnchor* %52, %struct._GimpAnchor** %segment_start, align 8
  %arrayidx30 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %segmentcoords, i32 0, i64 0
  %arrayidx31 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %segmentcoords, i32 0, i64 3
  %53 = bitcast %struct._GimpCoords* %arrayidx30 to i8*
  %54 = bitcast %struct._GimpCoords* %arrayidx31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 64, i32 8, i1 false)
  store i32 1, i32* %count, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.28, %for.body.7
  br label %for.inc.33

for.inc.33:                                       ; preds = %if.end.32
  %55 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %tobool34 = icmp ne %struct._GList* %55, null
  br i1 %tobool34, label %cond.true.35, label %cond.false.37

cond.true.35:                                     ; preds = %for.inc.33
  %56 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %next36 = getelementptr inbounds %struct._GList, %struct._GList* %56, i32 0, i32 1
  %57 = load %struct._GList*, %struct._GList** %next36, align 8
  br label %cond.end.38

cond.false.37:                                    ; preds = %for.inc.33
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.false.37, %cond.true.35
  %cond39 = phi %struct._GList* [ %57, %cond.true.35 ], [ null, %cond.false.37 ]
  store %struct._GList* %cond39, %struct._GList** %anchorlist, align 8
  br label %for.cond.5

for.end.40:                                       ; preds = %for.cond.5
  %58 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %closed = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %58, i32 0, i32 3
  %59 = load i32, i32* %closed, align 4
  %tobool41 = icmp ne i32 %59, 0
  br i1 %tobool41, label %land.lhs.true.42, label %if.end.86

land.lhs.true.42:                                 ; preds = %for.end.40
  %60 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors43 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %60, i32 0, i32 2
  %61 = load %struct._GList*, %struct._GList** %anchors43, align 8
  %tobool44 = icmp ne %struct._GList* %61, null
  br i1 %tobool44, label %if.then.45, label %if.end.86

if.then.45:                                       ; preds = %land.lhs.true.42
  %62 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors46 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %62, i32 0, i32 2
  %63 = load %struct._GList*, %struct._GList** %anchors46, align 8
  store %struct._GList* %63, %struct._GList** %anchorlist, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.45
  %64 = load i32, i32* %count, align 4
  %cmp47 = icmp slt i32 %64, 3
  br i1 %cmp47, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %65 = load i32, i32* %count, align 4
  %idxprom48 = sext i32 %65 to i64
  %arrayidx49 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %segmentcoords, i32 0, i64 %idxprom48
  %66 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %data50 = getelementptr inbounds %struct._GList, %struct._GList* %66, i32 0, i32 0
  %67 = load i8*, i8** %data50, align 8
  %68 = bitcast i8* %67 to %struct._GimpAnchor*
  %position51 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %68, i32 0, i32 0
  %69 = bitcast %struct._GimpCoords* %arrayidx49 to i8*
  %70 = bitcast %struct._GimpCoords* %position51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %70, i64 64, i32 8, i1 false)
  %71 = load i32, i32* %count, align 4
  %inc52 = add nsw i32 %71, 1
  store i32 %inc52, i32* %count, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %72 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %tobool53 = icmp ne %struct._GList* %72, null
  br i1 %tobool53, label %cond.true.54, label %cond.false.56

cond.true.54:                                     ; preds = %while.end
  %73 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %next55 = getelementptr inbounds %struct._GList, %struct._GList* %73, i32 0, i32 1
  %74 = load %struct._GList*, %struct._GList** %next55, align 8
  br label %cond.end.57

cond.false.56:                                    ; preds = %while.end
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.56, %cond.true.54
  %cond58 = phi %struct._GList* [ %74, %cond.true.54 ], [ null, %cond.false.56 ]
  store %struct._GList* %cond58, %struct._GList** %anchorlist, align 8
  %75 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %tobool59 = icmp ne %struct._GList* %75, null
  br i1 %tobool59, label %if.then.60, label %if.end.64

if.then.60:                                       ; preds = %cond.end.57
  %76 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %data61 = getelementptr inbounds %struct._GList, %struct._GList* %76, i32 0, i32 0
  %77 = load i8*, i8** %data61, align 8
  %78 = bitcast i8* %77 to %struct._GimpAnchor*
  store %struct._GimpAnchor* %78, %struct._GimpAnchor** %segment_end, align 8
  %arrayidx62 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %segmentcoords, i32 0, i64 3
  %79 = load %struct._GimpAnchor*, %struct._GimpAnchor** %segment_end, align 8
  %position63 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %79, i32 0, i32 0
  %80 = bitcast %struct._GimpCoords* %arrayidx62 to i8*
  %81 = bitcast %struct._GimpCoords* %position63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %80, i8* %81, i64 64, i32 8, i1 false)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.60, %cond.end.57
  %arraydecay65 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %segmentcoords, i32 0, i32 0
  %82 = load %struct._GimpCoords*, %struct._GimpCoords** %coord1.addr, align 8
  %83 = load %struct._GimpCoords*, %struct._GimpCoords** %coord2.addr, align 8
  %84 = load double, double* %precision.addr, align 8
  %call66 = call double @gimp_bezier_stroke_segment_nearest_tangent_get(%struct._GimpCoords* %arraydecay65, %struct._GimpCoords* %82, %struct._GimpCoords* %83, double %84, %struct._GimpCoords* %point, double* %pos)
  store double %call66, double* %dist, align 8
  %85 = load double, double* %dist, align 8
  %cmp67 = fcmp oge double %85, 0.000000e+00
  br i1 %cmp67, label %land.lhs.true.68, label %if.end.85

land.lhs.true.68:                                 ; preds = %if.end.64
  %86 = load double, double* %dist, align 8
  %87 = load double, double* %min_dist, align 8
  %cmp69 = fcmp olt double %86, %87
  br i1 %cmp69, label %if.then.72, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %land.lhs.true.68
  %88 = load double, double* %min_dist, align 8
  %cmp71 = fcmp olt double %88, 0.000000e+00
  br i1 %cmp71, label %if.then.72, label %if.end.85

if.then.72:                                       ; preds = %lor.lhs.false.70, %land.lhs.true.68
  %89 = load double, double* %dist, align 8
  store double %89, double* %min_dist, align 8
  %90 = load double*, double** %ret_pos.addr, align 8
  %tobool73 = icmp ne double* %90, null
  br i1 %tobool73, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.then.72
  %91 = load double, double* %pos, align 8
  %92 = load double*, double** %ret_pos.addr, align 8
  store double %91, double* %92, align 8
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.74, %if.then.72
  %93 = load %struct._GimpCoords*, %struct._GimpCoords** %nearest.addr, align 8
  %tobool76 = icmp ne %struct._GimpCoords* %93, null
  br i1 %tobool76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.end.75
  %94 = load %struct._GimpCoords*, %struct._GimpCoords** %nearest.addr, align 8
  %95 = bitcast %struct._GimpCoords* %94 to i8*
  %96 = bitcast %struct._GimpCoords* %point to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %95, i8* %96, i64 64, i32 8, i1 false)
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %if.end.75
  %97 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_segment_start.addr, align 8
  %tobool79 = icmp ne %struct._GimpAnchor** %97, null
  br i1 %tobool79, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.end.78
  %98 = load %struct._GimpAnchor*, %struct._GimpAnchor** %segment_start, align 8
  %99 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_segment_start.addr, align 8
  store %struct._GimpAnchor* %98, %struct._GimpAnchor** %99, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %if.end.78
  %100 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_segment_end.addr, align 8
  %tobool82 = icmp ne %struct._GimpAnchor** %100, null
  br i1 %tobool82, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.end.81
  %101 = load %struct._GimpAnchor*, %struct._GimpAnchor** %segment_end, align 8
  %102 = load %struct._GimpAnchor**, %struct._GimpAnchor*** %ret_segment_end.addr, align 8
  store %struct._GimpAnchor* %101, %struct._GimpAnchor** %102, align 8
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.83, %if.end.81
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %lor.lhs.false.70, %if.end.64
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %land.lhs.true.42, %for.end.40
  %103 = load double, double* %min_dist, align 8
  store double %103, double* %retval
  br label %return

return:                                           ; preds = %if.end.86, %if.then
  %104 = load double, double* %retval
  ret double %104
}

; Function Attrs: nounwind uwtable
define internal void @gimp_bezier_stroke_anchor_move_relative(%struct._GimpStroke* %stroke, %struct._GimpAnchor* %anchor, %struct._GimpCoords* %deltacoord, i32 %feature) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %anchor.addr = alloca %struct._GimpAnchor*, align 8
  %deltacoord.addr = alloca %struct._GimpCoords*, align 8
  %feature.addr = alloca i32, align 4
  %delta = alloca %struct._GimpCoords, align 8
  %coord1 = alloca %struct._GimpCoords, align 8
  %coord2 = alloca %struct._GimpCoords, align 8
  %anchor_list = alloca %struct._GList*, align 8
  %neighbour = alloca %struct._GList*, align 8
  %opposite = alloca %struct._GList*, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpAnchor* %anchor, %struct._GimpAnchor** %anchor.addr, align 8
  store %struct._GimpCoords* %deltacoord, %struct._GimpCoords** %deltacoord.addr, align 8
  store i32 %feature, i32* %feature.addr, align 4
  %0 = load %struct._GimpCoords*, %struct._GimpCoords** %deltacoord.addr, align 8
  %1 = bitcast %struct._GimpCoords* %delta to i8*
  %2 = bitcast %struct._GimpCoords* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 64, i32 8, i1 false)
  %pressure = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %delta, i32 0, i32 2
  store double 0.000000e+00, double* %pressure, align 8
  %xtilt = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %delta, i32 0, i32 3
  store double 0.000000e+00, double* %xtilt, align 8
  %ytilt = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %delta, i32 0, i32 4
  store double 0.000000e+00, double* %ytilt, align 8
  %wheel = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %delta, i32 0, i32 5
  store double 0.000000e+00, double* %wheel, align 8
  %3 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor.addr, align 8
  %position = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %3, i32 0, i32 0
  call void @gimp_coords_add(%struct._GimpCoords* %position, %struct._GimpCoords* %delta, %struct._GimpCoords* %coord1)
  %4 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor.addr, align 8
  %position1 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %4, i32 0, i32 0
  %5 = bitcast %struct._GimpCoords* %position1 to i8*
  %6 = bitcast %struct._GimpCoords* %coord1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 64, i32 8, i1 false)
  %7 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %7, i32 0, i32 2
  %8 = load %struct._GList*, %struct._GList** %anchors, align 8
  %9 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor.addr, align 8
  %10 = bitcast %struct._GimpAnchor* %9 to i8*
  %call = call %struct._GList* @g_list_find(%struct._GList* %8, i8* %10)
  store %struct._GList* %call, %struct._GList** %anchor_list, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %11 = load %struct._GList*, %struct._GList** %anchor_list, align 8
  %cmp = icmp ne %struct._GList* %11, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_bezier_stroke_anchor_move_relative, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.98

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %12 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor.addr, align 8
  %type = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %12, i32 0, i32 1
  %13 = load i32, i32* %type, align 4
  %cmp2 = icmp eq i32 %13, 0
  br i1 %cmp2, label %if.then.3, label %if.else.42

if.then.3:                                        ; preds = %do.end
  %14 = load %struct._GList*, %struct._GList** %anchor_list, align 8
  %tobool = icmp ne %struct._GList* %14, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.3
  %15 = load %struct._GList*, %struct._GList** %anchor_list, align 8
  %prev = getelementptr inbounds %struct._GList, %struct._GList* %15, i32 0, i32 2
  %16 = load %struct._GList*, %struct._GList** %prev, align 8
  %tobool4 = icmp ne %struct._GList* %16, null
  br i1 %tobool4, label %if.then.5, label %if.end.19

cond.false:                                       ; preds = %if.then.3
  br i1 false, label %if.then.5, label %if.end.19

if.then.5:                                        ; preds = %cond.false, %cond.true
  %17 = load %struct._GList*, %struct._GList** %anchor_list, align 8
  %tobool6 = icmp ne %struct._GList* %17, null
  br i1 %tobool6, label %cond.true.7, label %cond.false.9

cond.true.7:                                      ; preds = %if.then.5
  %18 = load %struct._GList*, %struct._GList** %anchor_list, align 8
  %prev8 = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 2
  %19 = load %struct._GList*, %struct._GList** %prev8, align 8
  br label %cond.end

cond.false.9:                                     ; preds = %if.then.5
  br label %cond.end

cond.end:                                         ; preds = %cond.false.9, %cond.true.7
  %cond = phi %struct._GList* [ %19, %cond.true.7 ], [ null, %cond.false.9 ]
  %data = getelementptr inbounds %struct._GList, %struct._GList* %cond, i32 0, i32 0
  %20 = load i8*, i8** %data, align 8
  %21 = bitcast i8* %20 to %struct._GimpAnchor*
  %position10 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %21, i32 0, i32 0
  %22 = bitcast %struct._GimpCoords* %coord2 to i8*
  %23 = bitcast %struct._GimpCoords* %position10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 64, i32 8, i1 false)
  call void @gimp_coords_add(%struct._GimpCoords* %coord2, %struct._GimpCoords* %delta, %struct._GimpCoords* %coord1)
  %24 = load %struct._GList*, %struct._GList** %anchor_list, align 8
  %tobool11 = icmp ne %struct._GList* %24, null
  br i1 %tobool11, label %cond.true.12, label %cond.false.14

cond.true.12:                                     ; preds = %cond.end
  %25 = load %struct._GList*, %struct._GList** %anchor_list, align 8
  %prev13 = getelementptr inbounds %struct._GList, %struct._GList* %25, i32 0, i32 2
  %26 = load %struct._GList*, %struct._GList** %prev13, align 8
  br label %cond.end.15

cond.false.14:                                    ; preds = %cond.end
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.14, %cond.true.12
  %cond16 = phi %struct._GList* [ %26, %cond.true.12 ], [ null, %cond.false.14 ]
  %data17 = getelementptr inbounds %struct._GList, %struct._GList* %cond16, i32 0, i32 0
  %27 = load i8*, i8** %data17, align 8
  %28 = bitcast i8* %27 to %struct._GimpAnchor*
  %position18 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %28, i32 0, i32 0
  %29 = bitcast %struct._GimpCoords* %position18 to i8*
  %30 = bitcast %struct._GimpCoords* %coord1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 64, i32 8, i1 false)
  br label %if.end.19

if.end.19:                                        ; preds = %cond.end.15, %cond.false, %cond.true
  %31 = load %struct._GList*, %struct._GList** %anchor_list, align 8
  %tobool20 = icmp ne %struct._GList* %31, null
  br i1 %tobool20, label %cond.true.21, label %cond.false.23

cond.true.21:                                     ; preds = %if.end.19
  %32 = load %struct._GList*, %struct._GList** %anchor_list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %32, i32 0, i32 1
  %33 = load %struct._GList*, %struct._GList** %next, align 8
  %tobool22 = icmp ne %struct._GList* %33, null
  br i1 %tobool22, label %if.then.24, label %if.end.41

cond.false.23:                                    ; preds = %if.end.19
  br i1 false, label %if.then.24, label %if.end.41

if.then.24:                                       ; preds = %cond.false.23, %cond.true.21
  %34 = load %struct._GList*, %struct._GList** %anchor_list, align 8
  %tobool25 = icmp ne %struct._GList* %34, null
  br i1 %tobool25, label %cond.true.26, label %cond.false.28

cond.true.26:                                     ; preds = %if.then.24
  %35 = load %struct._GList*, %struct._GList** %anchor_list, align 8
  %next27 = getelementptr inbounds %struct._GList, %struct._GList* %35, i32 0, i32 1
  %36 = load %struct._GList*, %struct._GList** %next27, align 8
  br label %cond.end.29

cond.false.28:                                    ; preds = %if.then.24
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.28, %cond.true.26
  %cond30 = phi %struct._GList* [ %36, %cond.true.26 ], [ null, %cond.false.28 ]
  %data31 = getelementptr inbounds %struct._GList, %struct._GList* %cond30, i32 0, i32 0
  %37 = load i8*, i8** %data31, align 8
  %38 = bitcast i8* %37 to %struct._GimpAnchor*
  %position32 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %38, i32 0, i32 0
  %39 = bitcast %struct._GimpCoords* %coord2 to i8*
  %40 = bitcast %struct._GimpCoords* %position32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 64, i32 8, i1 false)
  call void @gimp_coords_add(%struct._GimpCoords* %coord2, %struct._GimpCoords* %delta, %struct._GimpCoords* %coord1)
  %41 = load %struct._GList*, %struct._GList** %anchor_list, align 8
  %tobool33 = icmp ne %struct._GList* %41, null
  br i1 %tobool33, label %cond.true.34, label %cond.false.36

cond.true.34:                                     ; preds = %cond.end.29
  %42 = load %struct._GList*, %struct._GList** %anchor_list, align 8
  %next35 = getelementptr inbounds %struct._GList, %struct._GList* %42, i32 0, i32 1
  %43 = load %struct._GList*, %struct._GList** %next35, align 8
  br label %cond.end.37

cond.false.36:                                    ; preds = %cond.end.29
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.36, %cond.true.34
  %cond38 = phi %struct._GList* [ %43, %cond.true.34 ], [ null, %cond.false.36 ]
  %data39 = getelementptr inbounds %struct._GList, %struct._GList* %cond38, i32 0, i32 0
  %44 = load i8*, i8** %data39, align 8
  %45 = bitcast i8* %44 to %struct._GimpAnchor*
  %position40 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %45, i32 0, i32 0
  %46 = bitcast %struct._GimpCoords* %position40 to i8*
  %47 = bitcast %struct._GimpCoords* %coord1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 64, i32 8, i1 false)
  br label %if.end.41

if.end.41:                                        ; preds = %cond.end.37, %cond.false.23, %cond.true.21
  br label %if.end.98

if.else.42:                                       ; preds = %do.end
  %48 = load i32, i32* %feature.addr, align 4
  %cmp43 = icmp eq i32 %48, 3
  br i1 %cmp43, label %if.then.44, label %if.end.97

if.then.44:                                       ; preds = %if.else.42
  store %struct._GList* null, %struct._GList** %neighbour, align 8
  store %struct._GList* null, %struct._GList** %opposite, align 8
  %49 = load %struct._GList*, %struct._GList** %anchor_list, align 8
  %tobool45 = icmp ne %struct._GList* %49, null
  br i1 %tobool45, label %cond.true.46, label %cond.false.48

cond.true.46:                                     ; preds = %if.then.44
  %50 = load %struct._GList*, %struct._GList** %anchor_list, align 8
  %prev47 = getelementptr inbounds %struct._GList, %struct._GList* %50, i32 0, i32 2
  %51 = load %struct._GList*, %struct._GList** %prev47, align 8
  br label %cond.end.49

cond.false.48:                                    ; preds = %if.then.44
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.48, %cond.true.46
  %cond50 = phi %struct._GList* [ %51, %cond.true.46 ], [ null, %cond.false.48 ]
  store %struct._GList* %cond50, %struct._GList** %neighbour, align 8
  %52 = load %struct._GList*, %struct._GList** %neighbour, align 8
  %tobool51 = icmp ne %struct._GList* %52, null
  br i1 %tobool51, label %land.lhs.true, label %if.else.62

land.lhs.true:                                    ; preds = %cond.end.49
  %53 = load %struct._GList*, %struct._GList** %neighbour, align 8
  %data52 = getelementptr inbounds %struct._GList, %struct._GList* %53, i32 0, i32 0
  %54 = load i8*, i8** %data52, align 8
  %55 = bitcast i8* %54 to %struct._GimpAnchor*
  %type53 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %55, i32 0, i32 1
  %56 = load i32, i32* %type53, align 4
  %cmp54 = icmp eq i32 %56, 0
  br i1 %cmp54, label %if.then.55, label %if.else.62

if.then.55:                                       ; preds = %land.lhs.true
  %57 = load %struct._GList*, %struct._GList** %neighbour, align 8
  %tobool56 = icmp ne %struct._GList* %57, null
  br i1 %tobool56, label %cond.true.57, label %cond.false.59

cond.true.57:                                     ; preds = %if.then.55
  %58 = load %struct._GList*, %struct._GList** %neighbour, align 8
  %prev58 = getelementptr inbounds %struct._GList, %struct._GList* %58, i32 0, i32 2
  %59 = load %struct._GList*, %struct._GList** %prev58, align 8
  br label %cond.end.60

cond.false.59:                                    ; preds = %if.then.55
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.false.59, %cond.true.57
  %cond61 = phi %struct._GList* [ %59, %cond.true.57 ], [ null, %cond.false.59 ]
  store %struct._GList* %cond61, %struct._GList** %opposite, align 8
  br label %if.end.82

if.else.62:                                       ; preds = %land.lhs.true, %cond.end.49
  %60 = load %struct._GList*, %struct._GList** %anchor_list, align 8
  %tobool63 = icmp ne %struct._GList* %60, null
  br i1 %tobool63, label %cond.true.64, label %cond.false.66

cond.true.64:                                     ; preds = %if.else.62
  %61 = load %struct._GList*, %struct._GList** %anchor_list, align 8
  %next65 = getelementptr inbounds %struct._GList, %struct._GList* %61, i32 0, i32 1
  %62 = load %struct._GList*, %struct._GList** %next65, align 8
  br label %cond.end.67

cond.false.66:                                    ; preds = %if.else.62
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.66, %cond.true.64
  %cond68 = phi %struct._GList* [ %62, %cond.true.64 ], [ null, %cond.false.66 ]
  store %struct._GList* %cond68, %struct._GList** %neighbour, align 8
  %63 = load %struct._GList*, %struct._GList** %neighbour, align 8
  %tobool69 = icmp ne %struct._GList* %63, null
  br i1 %tobool69, label %land.lhs.true.70, label %if.end.81

land.lhs.true.70:                                 ; preds = %cond.end.67
  %64 = load %struct._GList*, %struct._GList** %neighbour, align 8
  %data71 = getelementptr inbounds %struct._GList, %struct._GList* %64, i32 0, i32 0
  %65 = load i8*, i8** %data71, align 8
  %66 = bitcast i8* %65 to %struct._GimpAnchor*
  %type72 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %66, i32 0, i32 1
  %67 = load i32, i32* %type72, align 4
  %cmp73 = icmp eq i32 %67, 0
  br i1 %cmp73, label %if.then.74, label %if.end.81

if.then.74:                                       ; preds = %land.lhs.true.70
  %68 = load %struct._GList*, %struct._GList** %neighbour, align 8
  %tobool75 = icmp ne %struct._GList* %68, null
  br i1 %tobool75, label %cond.true.76, label %cond.false.78

cond.true.76:                                     ; preds = %if.then.74
  %69 = load %struct._GList*, %struct._GList** %neighbour, align 8
  %next77 = getelementptr inbounds %struct._GList, %struct._GList* %69, i32 0, i32 1
  %70 = load %struct._GList*, %struct._GList** %next77, align 8
  br label %cond.end.79

cond.false.78:                                    ; preds = %if.then.74
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.false.78, %cond.true.76
  %cond80 = phi %struct._GList* [ %70, %cond.true.76 ], [ null, %cond.false.78 ]
  store %struct._GList* %cond80, %struct._GList** %opposite, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %cond.end.79, %land.lhs.true.70, %cond.end.67
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %cond.end.60
  %71 = load %struct._GList*, %struct._GList** %opposite, align 8
  %tobool83 = icmp ne %struct._GList* %71, null
  br i1 %tobool83, label %land.lhs.true.84, label %if.end.96

land.lhs.true.84:                                 ; preds = %if.end.82
  %72 = load %struct._GList*, %struct._GList** %opposite, align 8
  %data85 = getelementptr inbounds %struct._GList, %struct._GList* %72, i32 0, i32 0
  %73 = load i8*, i8** %data85, align 8
  %74 = bitcast i8* %73 to %struct._GimpAnchor*
  %type86 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %74, i32 0, i32 1
  %75 = load i32, i32* %type86, align 4
  %cmp87 = icmp eq i32 %75, 1
  br i1 %cmp87, label %if.then.88, label %if.end.96

if.then.88:                                       ; preds = %land.lhs.true.84
  %76 = load %struct._GList*, %struct._GList** %neighbour, align 8
  %data89 = getelementptr inbounds %struct._GList, %struct._GList* %76, i32 0, i32 0
  %77 = load i8*, i8** %data89, align 8
  %78 = bitcast i8* %77 to %struct._GimpAnchor*
  %position90 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %78, i32 0, i32 0
  %79 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor.addr, align 8
  %position91 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %79, i32 0, i32 0
  call void @gimp_coords_difference(%struct._GimpCoords* %position90, %struct._GimpCoords* %position91, %struct._GimpCoords* %delta)
  %80 = load %struct._GList*, %struct._GList** %neighbour, align 8
  %data92 = getelementptr inbounds %struct._GList, %struct._GList* %80, i32 0, i32 0
  %81 = load i8*, i8** %data92, align 8
  %82 = bitcast i8* %81 to %struct._GimpAnchor*
  %position93 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %82, i32 0, i32 0
  call void @gimp_coords_add(%struct._GimpCoords* %position93, %struct._GimpCoords* %delta, %struct._GimpCoords* %coord1)
  %83 = load %struct._GList*, %struct._GList** %opposite, align 8
  %data94 = getelementptr inbounds %struct._GList, %struct._GList* %83, i32 0, i32 0
  %84 = load i8*, i8** %data94, align 8
  %85 = bitcast i8* %84 to %struct._GimpAnchor*
  %position95 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %85, i32 0, i32 0
  %86 = bitcast %struct._GimpCoords* %position95 to i8*
  %87 = bitcast %struct._GimpCoords* %coord1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %86, i8* %87, i64 64, i32 8, i1 false)
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.88, %land.lhs.true.84, %if.end.82
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.else.42
  br label %if.end.98

if.end.98:                                        ; preds = %if.else, %if.end.97, %if.end.41
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_bezier_stroke_anchor_move_absolute(%struct._GimpStroke* %stroke, %struct._GimpAnchor* %anchor, %struct._GimpCoords* %coord, i32 %feature) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %anchor.addr = alloca %struct._GimpAnchor*, align 8
  %coord.addr = alloca %struct._GimpCoords*, align 8
  %feature.addr = alloca i32, align 4
  %deltacoord = alloca %struct._GimpCoords, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpAnchor* %anchor, %struct._GimpAnchor** %anchor.addr, align 8
  store %struct._GimpCoords* %coord, %struct._GimpCoords** %coord.addr, align 8
  store i32 %feature, i32* %feature.addr, align 4
  %0 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %1 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor.addr, align 8
  %position = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %1, i32 0, i32 0
  call void @gimp_coords_difference(%struct._GimpCoords* %0, %struct._GimpCoords* %position, %struct._GimpCoords* %deltacoord)
  %2 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %3 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor.addr, align 8
  %4 = load i32, i32* %feature.addr, align 4
  call void @gimp_bezier_stroke_anchor_move_relative(%struct._GimpStroke* %2, %struct._GimpAnchor* %3, %struct._GimpCoords* %deltacoord, i32 %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_bezier_stroke_anchor_convert(%struct._GimpStroke* %stroke, %struct._GimpAnchor* %anchor, i32 %feature) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %anchor.addr = alloca %struct._GimpAnchor*, align 8
  %feature.addr = alloca i32, align 4
  %anchor_list = alloca %struct._GList*, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpAnchor* %anchor, %struct._GimpAnchor** %anchor.addr, align 8
  store i32 %feature, i32* %feature.addr, align 4
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %0, i32 0, i32 2
  %1 = load %struct._GList*, %struct._GList** %anchors, align 8
  %2 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor.addr, align 8
  %3 = bitcast %struct._GimpAnchor* %2 to i8*
  %call = call %struct._GList* @g_list_find(%struct._GList* %1, i8* %3)
  store %struct._GList* %call, %struct._GList** %anchor_list, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct._GList*, %struct._GList** %anchor_list, align 8
  %cmp = icmp ne %struct._GList* %4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_bezier_stroke_anchor_convert, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0))
  br label %sw.epilog

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %5 = load i32, i32* %feature.addr, align 4
  switch i32 %5, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %do.end
  %6 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor.addr, align 8
  %type = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %6, i32 0, i32 1
  %7 = load i32, i32* %type, align 4
  %cmp1 = icmp eq i32 %7, 0
  br i1 %cmp1, label %if.then.2, label %if.else.26

if.then.2:                                        ; preds = %sw.bb
  %8 = load %struct._GList*, %struct._GList** %anchor_list, align 8
  %tobool = icmp ne %struct._GList* %8, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.2
  %9 = load %struct._GList*, %struct._GList** %anchor_list, align 8
  %prev = getelementptr inbounds %struct._GList, %struct._GList* %9, i32 0, i32 2
  %10 = load %struct._GList*, %struct._GList** %prev, align 8
  %tobool3 = icmp ne %struct._GList* %10, null
  br i1 %tobool3, label %if.then.4, label %if.end.10

cond.false:                                       ; preds = %if.then.2
  br i1 false, label %if.then.4, label %if.end.10

if.then.4:                                        ; preds = %cond.false, %cond.true
  %11 = load %struct._GList*, %struct._GList** %anchor_list, align 8
  %tobool5 = icmp ne %struct._GList* %11, null
  br i1 %tobool5, label %cond.true.6, label %cond.false.8

cond.true.6:                                      ; preds = %if.then.4
  %12 = load %struct._GList*, %struct._GList** %anchor_list, align 8
  %prev7 = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 2
  %13 = load %struct._GList*, %struct._GList** %prev7, align 8
  br label %cond.end

cond.false.8:                                     ; preds = %if.then.4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.8, %cond.true.6
  %cond = phi %struct._GList* [ %13, %cond.true.6 ], [ null, %cond.false.8 ]
  %data = getelementptr inbounds %struct._GList, %struct._GList* %cond, i32 0, i32 0
  %14 = load i8*, i8** %data, align 8
  %15 = bitcast i8* %14 to %struct._GimpAnchor*
  %position = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %15, i32 0, i32 0
  %16 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor.addr, align 8
  %position9 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %16, i32 0, i32 0
  %17 = bitcast %struct._GimpCoords* %position to i8*
  %18 = bitcast %struct._GimpCoords* %position9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 64, i32 8, i1 false)
  br label %if.end.10

if.end.10:                                        ; preds = %cond.end, %cond.false, %cond.true
  %19 = load %struct._GList*, %struct._GList** %anchor_list, align 8
  %tobool11 = icmp ne %struct._GList* %19, null
  br i1 %tobool11, label %cond.true.12, label %cond.false.14

cond.true.12:                                     ; preds = %if.end.10
  %20 = load %struct._GList*, %struct._GList** %anchor_list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %20, i32 0, i32 1
  %21 = load %struct._GList*, %struct._GList** %next, align 8
  %tobool13 = icmp ne %struct._GList* %21, null
  br i1 %tobool13, label %if.then.15, label %if.end.25

cond.false.14:                                    ; preds = %if.end.10
  br i1 false, label %if.then.15, label %if.end.25

if.then.15:                                       ; preds = %cond.false.14, %cond.true.12
  %22 = load %struct._GList*, %struct._GList** %anchor_list, align 8
  %tobool16 = icmp ne %struct._GList* %22, null
  br i1 %tobool16, label %cond.true.17, label %cond.false.19

cond.true.17:                                     ; preds = %if.then.15
  %23 = load %struct._GList*, %struct._GList** %anchor_list, align 8
  %next18 = getelementptr inbounds %struct._GList, %struct._GList* %23, i32 0, i32 1
  %24 = load %struct._GList*, %struct._GList** %next18, align 8
  br label %cond.end.20

cond.false.19:                                    ; preds = %if.then.15
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.19, %cond.true.17
  %cond21 = phi %struct._GList* [ %24, %cond.true.17 ], [ null, %cond.false.19 ]
  %data22 = getelementptr inbounds %struct._GList, %struct._GList* %cond21, i32 0, i32 0
  %25 = load i8*, i8** %data22, align 8
  %26 = bitcast i8* %25 to %struct._GimpAnchor*
  %position23 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %26, i32 0, i32 0
  %27 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor.addr, align 8
  %position24 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %27, i32 0, i32 0
  %28 = bitcast %struct._GimpCoords* %position23 to i8*
  %29 = bitcast %struct._GimpCoords* %position24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 64, i32 8, i1 false)
  br label %if.end.25

if.end.25:                                        ; preds = %cond.end.20, %cond.false.14, %cond.true.12
  br label %if.end.78

if.else.26:                                       ; preds = %sw.bb
  %30 = load %struct._GList*, %struct._GList** %anchor_list, align 8
  %tobool27 = icmp ne %struct._GList* %30, null
  br i1 %tobool27, label %cond.true.28, label %cond.false.31

cond.true.28:                                     ; preds = %if.else.26
  %31 = load %struct._GList*, %struct._GList** %anchor_list, align 8
  %prev29 = getelementptr inbounds %struct._GList, %struct._GList* %31, i32 0, i32 2
  %32 = load %struct._GList*, %struct._GList** %prev29, align 8
  %tobool30 = icmp ne %struct._GList* %32, null
  br i1 %tobool30, label %land.lhs.true, label %if.end.51

cond.false.31:                                    ; preds = %if.else.26
  br i1 false, label %land.lhs.true, label %if.end.51

land.lhs.true:                                    ; preds = %cond.false.31, %cond.true.28
  %33 = load %struct._GList*, %struct._GList** %anchor_list, align 8
  %tobool32 = icmp ne %struct._GList* %33, null
  br i1 %tobool32, label %cond.true.33, label %cond.false.35

cond.true.33:                                     ; preds = %land.lhs.true
  %34 = load %struct._GList*, %struct._GList** %anchor_list, align 8
  %prev34 = getelementptr inbounds %struct._GList, %struct._GList* %34, i32 0, i32 2
  %35 = load %struct._GList*, %struct._GList** %prev34, align 8
  br label %cond.end.36

cond.false.35:                                    ; preds = %land.lhs.true
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.35, %cond.true.33
  %cond37 = phi %struct._GList* [ %35, %cond.true.33 ], [ null, %cond.false.35 ]
  %data38 = getelementptr inbounds %struct._GList, %struct._GList* %cond37, i32 0, i32 0
  %36 = load i8*, i8** %data38, align 8
  %37 = bitcast i8* %36 to %struct._GimpAnchor*
  %type39 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %37, i32 0, i32 1
  %38 = load i32, i32* %type39, align 4
  %cmp40 = icmp eq i32 %38, 0
  br i1 %cmp40, label %if.then.41, label %if.end.51

if.then.41:                                       ; preds = %cond.end.36
  %39 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor.addr, align 8
  %position42 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %39, i32 0, i32 0
  %40 = load %struct._GList*, %struct._GList** %anchor_list, align 8
  %tobool43 = icmp ne %struct._GList* %40, null
  br i1 %tobool43, label %cond.true.44, label %cond.false.46

cond.true.44:                                     ; preds = %if.then.41
  %41 = load %struct._GList*, %struct._GList** %anchor_list, align 8
  %prev45 = getelementptr inbounds %struct._GList, %struct._GList* %41, i32 0, i32 2
  %42 = load %struct._GList*, %struct._GList** %prev45, align 8
  br label %cond.end.47

cond.false.46:                                    ; preds = %if.then.41
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.46, %cond.true.44
  %cond48 = phi %struct._GList* [ %42, %cond.true.44 ], [ null, %cond.false.46 ]
  %data49 = getelementptr inbounds %struct._GList, %struct._GList* %cond48, i32 0, i32 0
  %43 = load i8*, i8** %data49, align 8
  %44 = bitcast i8* %43 to %struct._GimpAnchor*
  %position50 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %44, i32 0, i32 0
  %45 = bitcast %struct._GimpCoords* %position42 to i8*
  %46 = bitcast %struct._GimpCoords* %position50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 64, i32 8, i1 false)
  br label %if.end.51

if.end.51:                                        ; preds = %cond.end.47, %cond.end.36, %cond.false.31, %cond.true.28
  %47 = load %struct._GList*, %struct._GList** %anchor_list, align 8
  %tobool52 = icmp ne %struct._GList* %47, null
  br i1 %tobool52, label %cond.true.53, label %cond.false.56

cond.true.53:                                     ; preds = %if.end.51
  %48 = load %struct._GList*, %struct._GList** %anchor_list, align 8
  %next54 = getelementptr inbounds %struct._GList, %struct._GList* %48, i32 0, i32 1
  %49 = load %struct._GList*, %struct._GList** %next54, align 8
  %tobool55 = icmp ne %struct._GList* %49, null
  br i1 %tobool55, label %land.lhs.true.57, label %if.end.77

cond.false.56:                                    ; preds = %if.end.51
  br i1 false, label %land.lhs.true.57, label %if.end.77

land.lhs.true.57:                                 ; preds = %cond.false.56, %cond.true.53
  %50 = load %struct._GList*, %struct._GList** %anchor_list, align 8
  %tobool58 = icmp ne %struct._GList* %50, null
  br i1 %tobool58, label %cond.true.59, label %cond.false.61

cond.true.59:                                     ; preds = %land.lhs.true.57
  %51 = load %struct._GList*, %struct._GList** %anchor_list, align 8
  %next60 = getelementptr inbounds %struct._GList, %struct._GList* %51, i32 0, i32 1
  %52 = load %struct._GList*, %struct._GList** %next60, align 8
  br label %cond.end.62

cond.false.61:                                    ; preds = %land.lhs.true.57
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.61, %cond.true.59
  %cond63 = phi %struct._GList* [ %52, %cond.true.59 ], [ null, %cond.false.61 ]
  %data64 = getelementptr inbounds %struct._GList, %struct._GList* %cond63, i32 0, i32 0
  %53 = load i8*, i8** %data64, align 8
  %54 = bitcast i8* %53 to %struct._GimpAnchor*
  %type65 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %54, i32 0, i32 1
  %55 = load i32, i32* %type65, align 4
  %cmp66 = icmp eq i32 %55, 0
  br i1 %cmp66, label %if.then.67, label %if.end.77

if.then.67:                                       ; preds = %cond.end.62
  %56 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor.addr, align 8
  %position68 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %56, i32 0, i32 0
  %57 = load %struct._GList*, %struct._GList** %anchor_list, align 8
  %tobool69 = icmp ne %struct._GList* %57, null
  br i1 %tobool69, label %cond.true.70, label %cond.false.72

cond.true.70:                                     ; preds = %if.then.67
  %58 = load %struct._GList*, %struct._GList** %anchor_list, align 8
  %next71 = getelementptr inbounds %struct._GList, %struct._GList* %58, i32 0, i32 1
  %59 = load %struct._GList*, %struct._GList** %next71, align 8
  br label %cond.end.73

cond.false.72:                                    ; preds = %if.then.67
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.72, %cond.true.70
  %cond74 = phi %struct._GList* [ %59, %cond.true.70 ], [ null, %cond.false.72 ]
  %data75 = getelementptr inbounds %struct._GList, %struct._GList* %cond74, i32 0, i32 0
  %60 = load i8*, i8** %data75, align 8
  %61 = bitcast i8* %60 to %struct._GimpAnchor*
  %position76 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %61, i32 0, i32 0
  %62 = bitcast %struct._GimpCoords* %position68 to i8*
  %63 = bitcast %struct._GimpCoords* %position76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %63, i64 64, i32 8, i1 false)
  br label %if.end.77

if.end.77:                                        ; preds = %cond.end.73, %cond.end.62, %cond.false.56, %cond.true.53
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.end.25
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  %64 = load i32, i32* %feature.addr, align 4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.21, i32 0, i32 0), i32 %64)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %sw.default, %if.end.78
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_bezier_stroke_anchor_delete(%struct._GimpStroke* %stroke, %struct._GimpAnchor* %anchor) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %anchor.addr = alloca %struct._GimpAnchor*, align 8
  %list = alloca %struct._GList*, align 8
  %list2 = alloca %struct._GList*, align 8
  %i = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpAnchor* %anchor, %struct._GimpAnchor** %anchor.addr, align 8
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %0, i32 0, i32 2
  %1 = load %struct._GList*, %struct._GList** %anchors, align 8
  %2 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor.addr, align 8
  %3 = bitcast %struct._GimpAnchor* %2 to i8*
  %call = call %struct._GList* @g_list_find(%struct._GList* %1, i8* %3)
  store %struct._GList* %call, %struct._GList** %list2, align 8
  %4 = load %struct._GList*, %struct._GList** %list2, align 8
  %tobool = icmp ne %struct._GList* %4, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %struct._GList*, %struct._GList** %list2, align 8
  %prev = getelementptr inbounds %struct._GList, %struct._GList* %5, i32 0, i32 2
  %6 = load %struct._GList*, %struct._GList** %prev, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %6, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %7 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %7, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %8 = load %struct._GList*, %struct._GList** %list, align 8
  %cmp1 = icmp ne %struct._GList* %8, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_bezier_stroke_anchor_delete, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0))
  br label %for.end

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %9 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool2 = icmp ne %struct._GList* %9, null
  br i1 %tobool2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %do.end
  %10 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %10, i32 0, i32 1
  %11 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end.5

cond.false.4:                                     ; preds = %do.end
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.false.4, %cond.true.3
  %cond6 = phi %struct._GList* [ %11, %cond.true.3 ], [ null, %cond.false.4 ]
  store %struct._GList* %cond6, %struct._GList** %list2, align 8
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 0
  %13 = load i8*, i8** %data, align 8
  %14 = bitcast i8* %13 to %struct._GimpAnchor*
  call void @gimp_anchor_free(%struct._GimpAnchor* %14)
  %15 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors7 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %15, i32 0, i32 2
  %16 = load %struct._GList*, %struct._GList** %anchors7, align 8
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %call8 = call %struct._GList* @g_list_delete_link(%struct._GList* %16, %struct._GList* %17)
  %18 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors9 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %18, i32 0, i32 2
  store %struct._GList* %call8, %struct._GList** %anchors9, align 8
  %19 = load %struct._GList*, %struct._GList** %list2, align 8
  store %struct._GList* %19, %struct._GList** %list, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end.5
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_bezier_stroke_point_is_movable(%struct._GimpStroke* %stroke, %struct._GimpAnchor* %predec, double %position) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %predec.addr = alloca %struct._GimpAnchor*, align 8
  %position.addr = alloca double, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpAnchor* %predec, %struct._GimpAnchor** %predec.addr, align 8
  store double %position, double* %position.addr, align 8
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %0, i32 0, i32 2
  %1 = load %struct._GList*, %struct._GList** %anchors, align 8
  %2 = load %struct._GimpAnchor*, %struct._GimpAnchor** %predec.addr, align 8
  %3 = bitcast %struct._GimpAnchor* %2 to i8*
  %call = call %struct._GList* @g_list_find(%struct._GList* %1, i8* %3)
  %cmp = icmp ne %struct._GList* %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal void @gimp_bezier_stroke_point_move_relative(%struct._GimpStroke* %stroke, %struct._GimpAnchor* %predec, double %position, %struct._GimpCoords* %deltacoord, i32 %feature) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %predec.addr = alloca %struct._GimpAnchor*, align 8
  %position.addr = alloca double, align 8
  %deltacoord.addr = alloca %struct._GimpCoords*, align 8
  %feature.addr = alloca i32, align 4
  %offsetcoords = alloca [2 x %struct._GimpCoords], align 16
  %segment_start = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %i = alloca i32, align 4
  %feel_good = alloca double, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpAnchor* %predec, %struct._GimpAnchor** %predec.addr, align 8
  store double %position, double* %position.addr, align 8
  store %struct._GimpCoords* %deltacoord, %struct._GimpCoords** %deltacoord.addr, align 8
  store i32 %feature, i32* %feature.addr, align 4
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %0, i32 0, i32 2
  %1 = load %struct._GList*, %struct._GList** %anchors, align 8
  %2 = load %struct._GimpAnchor*, %struct._GimpAnchor** %predec.addr, align 8
  %3 = bitcast %struct._GimpAnchor* %2 to i8*
  %call = call %struct._GList* @g_list_find(%struct._GList* %1, i8* %3)
  store %struct._GList* %call, %struct._GList** %segment_start, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct._GList*, %struct._GList** %segment_start, align 8
  %cmp = icmp ne %struct._GList* %4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_bezier_stroke_point_move_relative, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0))
  br label %for.end

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %5 = load double, double* %position.addr, align 8
  %cmp1 = fcmp ole double %5, 0x3FC5555555555555
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %do.end
  store double 0.000000e+00, double* %feel_good, align 8
  br label %if.end.21

if.else.3:                                        ; preds = %do.end
  %6 = load double, double* %position.addr, align 8
  %cmp4 = fcmp ole double %6, 5.000000e-01
  br i1 %cmp4, label %if.then.5, label %if.else.8

if.then.5:                                        ; preds = %if.else.3
  %7 = load double, double* %position.addr, align 8
  %mul = fmul double 6.000000e+00, %7
  %sub = fsub double %mul, 1.000000e+00
  %div = fdiv double %sub, 2.000000e+00
  %call6 = call double @pow(double %div, double 3.000000e+00) #5
  %div7 = fdiv double %call6, 2.000000e+00
  store double %div7, double* %feel_good, align 8
  br label %if.end.20

if.else.8:                                        ; preds = %if.else.3
  %8 = load double, double* %position.addr, align 8
  %cmp9 = fcmp ole double %8, 0x3FEAAAAAAAAAAAAB
  br i1 %cmp9, label %if.then.10, label %if.else.18

if.then.10:                                       ; preds = %if.else.8
  %9 = load double, double* %position.addr, align 8
  %sub11 = fsub double 1.000000e+00, %9
  %mul12 = fmul double 6.000000e+00, %sub11
  %sub13 = fsub double %mul12, 1.000000e+00
  %div14 = fdiv double %sub13, 2.000000e+00
  %call15 = call double @pow(double %div14, double 3.000000e+00) #5
  %sub16 = fsub double 1.000000e+00, %call15
  %div17 = fdiv double %sub16, 2.000000e+00
  %add = fadd double %div17, 5.000000e-01
  store double %add, double* %feel_good, align 8
  br label %if.end.19

if.else.18:                                       ; preds = %if.else.8
  store double 1.000000e+00, double* %feel_good, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.18, %if.then.10
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.5
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.2
  %10 = load double, double* %feel_good, align 8
  %sub22 = fsub double 1.000000e+00, %10
  %11 = load double, double* %position.addr, align 8
  %mul23 = fmul double 3.000000e+00, %11
  %12 = load double, double* %position.addr, align 8
  %sub24 = fsub double 1.000000e+00, %12
  %mul25 = fmul double %mul23, %sub24
  %13 = load double, double* %position.addr, align 8
  %sub26 = fsub double 1.000000e+00, %13
  %mul27 = fmul double %mul25, %sub26
  %div28 = fdiv double %sub22, %mul27
  %14 = load %struct._GimpCoords*, %struct._GimpCoords** %deltacoord.addr, align 8
  %arrayidx = getelementptr inbounds [2 x %struct._GimpCoords], [2 x %struct._GimpCoords]* %offsetcoords, i32 0, i64 0
  call void @gimp_coords_scale(double %div28, %struct._GimpCoords* %14, %struct._GimpCoords* %arrayidx)
  %15 = load double, double* %feel_good, align 8
  %16 = load double, double* %position.addr, align 8
  %mul29 = fmul double 3.000000e+00, %16
  %17 = load double, double* %position.addr, align 8
  %mul30 = fmul double %mul29, %17
  %18 = load double, double* %position.addr, align 8
  %sub31 = fsub double 1.000000e+00, %18
  %mul32 = fmul double %mul30, %sub31
  %div33 = fdiv double %15, %mul32
  %19 = load %struct._GimpCoords*, %struct._GimpCoords** %deltacoord.addr, align 8
  %arrayidx34 = getelementptr inbounds [2 x %struct._GimpCoords], [2 x %struct._GimpCoords]* %offsetcoords, i32 0, i64 1
  call void @gimp_coords_scale(double %div33, %struct._GimpCoords* %19, %struct._GimpCoords* %arrayidx34)
  %20 = load %struct._GList*, %struct._GList** %segment_start, align 8
  store %struct._GList* %20, %struct._GList** %list, align 8
  %21 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %21, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.21
  %22 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %22, i32 0, i32 1
  %23 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.21
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %23, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  %24 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool35 = icmp ne %struct._GList* %24, null
  br i1 %tobool35, label %if.end.38, label %if.then.36

if.then.36:                                       ; preds = %cond.end
  %25 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors37 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %25, i32 0, i32 2
  %26 = load %struct._GList*, %struct._GList** %anchors37, align 8
  store %struct._GList* %26, %struct._GList** %list, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %cond.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.38
  %27 = load i32, i32* %i, align 4
  %cmp39 = icmp sle i32 %27, 1
  br i1 %cmp39, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %29 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %29, i32 0, i32 0
  %30 = load i8*, i8** %data, align 8
  %31 = bitcast i8* %30 to %struct._GimpAnchor*
  %32 = load i32, i32* %i, align 4
  %idxprom = sext i32 %32 to i64
  %arrayidx40 = getelementptr inbounds [2 x %struct._GimpCoords], [2 x %struct._GimpCoords]* %offsetcoords, i32 0, i64 %idxprom
  %33 = load i32, i32* %feature.addr, align 4
  call void @gimp_stroke_anchor_move_relative(%struct._GimpStroke* %28, %struct._GimpAnchor* %31, %struct._GimpCoords* %arrayidx40, i32 %33)
  %34 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool41 = icmp ne %struct._GList* %34, null
  br i1 %tobool41, label %cond.true.42, label %cond.false.44

cond.true.42:                                     ; preds = %for.body
  %35 = load %struct._GList*, %struct._GList** %list, align 8
  %next43 = getelementptr inbounds %struct._GList, %struct._GList* %35, i32 0, i32 1
  %36 = load %struct._GList*, %struct._GList** %next43, align 8
  br label %cond.end.45

cond.false.44:                                    ; preds = %for.body
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.44, %cond.true.42
  %cond46 = phi %struct._GList* [ %36, %cond.true.42 ], [ null, %cond.false.44 ]
  store %struct._GList* %cond46, %struct._GList** %list, align 8
  %37 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool47 = icmp ne %struct._GList* %37, null
  br i1 %tobool47, label %if.end.50, label %if.then.48

if.then.48:                                       ; preds = %cond.end.45
  %38 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors49 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %38, i32 0, i32 2
  %39 = load %struct._GList*, %struct._GList** %anchors49, align 8
  store %struct._GList* %39, %struct._GList** %list, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %cond.end.45
  br label %for.inc

for.inc:                                          ; preds = %if.end.50
  %40 = load i32, i32* %i, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_bezier_stroke_point_move_absolute(%struct._GimpStroke* %stroke, %struct._GimpAnchor* %predec, double %position, %struct._GimpCoords* %coord, i32 %feature) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %predec.addr = alloca %struct._GimpAnchor*, align 8
  %position.addr = alloca double, align 8
  %coord.addr = alloca %struct._GimpCoords*, align 8
  %feature.addr = alloca i32, align 4
  %deltacoord = alloca %struct._GimpCoords, align 8
  %tmp1 = alloca %struct._GimpCoords, align 8
  %tmp2 = alloca %struct._GimpCoords, align 8
  %abs_pos = alloca %struct._GimpCoords, align 8
  %beziercoords = alloca [4 x %struct._GimpCoords], align 16
  %segment_start = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %i = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpAnchor* %predec, %struct._GimpAnchor** %predec.addr, align 8
  store double %position, double* %position.addr, align 8
  store %struct._GimpCoords* %coord, %struct._GimpCoords** %coord.addr, align 8
  store i32 %feature, i32* %feature.addr, align 4
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %0, i32 0, i32 2
  %1 = load %struct._GList*, %struct._GList** %anchors, align 8
  %2 = load %struct._GimpAnchor*, %struct._GimpAnchor** %predec.addr, align 8
  %3 = bitcast %struct._GimpAnchor* %2 to i8*
  %call = call %struct._GList* @g_list_find(%struct._GList* %1, i8* %3)
  store %struct._GList* %call, %struct._GList** %segment_start, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct._GList*, %struct._GList** %segment_start, align 8
  %cmp = icmp ne %struct._GList* %4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_bezier_stroke_point_move_absolute, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %5 = load %struct._GList*, %struct._GList** %segment_start, align 8
  store %struct._GList* %5, %struct._GList** %list, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %6 = load i32, i32* %i, align 4
  %cmp1 = icmp sle i32 %6, 3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %beziercoords, i32 0, i64 %idxprom
  %8 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 0
  %9 = load i8*, i8** %data, align 8
  %10 = bitcast i8* %9 to %struct._GimpAnchor*
  %position2 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %10, i32 0, i32 0
  %11 = bitcast %struct._GimpCoords* %arrayidx to i8*
  %12 = bitcast %struct._GimpCoords* %position2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 64, i32 8, i1 false)
  %13 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %13, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %14 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %14, i32 0, i32 1
  %15 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %15, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool3 = icmp ne %struct._GList* %16, null
  br i1 %tobool3, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %cond.end
  %17 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors5 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %17, i32 0, i32 2
  %18 = load %struct._GList*, %struct._GList** %anchors5, align 8
  store %struct._GList* %18, %struct._GList** %list, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load double, double* %position.addr, align 8
  %sub = fsub double 1.000000e+00, %20
  %21 = load double, double* %position.addr, align 8
  %sub7 = fsub double 1.000000e+00, %21
  %mul = fmul double %sub, %sub7
  %22 = load double, double* %position.addr, align 8
  %sub8 = fsub double 1.000000e+00, %22
  %mul9 = fmul double %mul, %sub8
  %arrayidx10 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %beziercoords, i32 0, i64 0
  %23 = load double, double* %position.addr, align 8
  %sub11 = fsub double 1.000000e+00, %23
  %mul12 = fmul double 3.000000e+00, %sub11
  %24 = load double, double* %position.addr, align 8
  %sub13 = fsub double 1.000000e+00, %24
  %mul14 = fmul double %mul12, %sub13
  %25 = load double, double* %position.addr, align 8
  %mul15 = fmul double %mul14, %25
  %arrayidx16 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %beziercoords, i32 0, i64 1
  call void @gimp_coords_mix(double %mul9, %struct._GimpCoords* %arrayidx10, double %mul15, %struct._GimpCoords* %arrayidx16, %struct._GimpCoords* %tmp1)
  %26 = load double, double* %position.addr, align 8
  %sub17 = fsub double 1.000000e+00, %26
  %mul18 = fmul double 3.000000e+00, %sub17
  %27 = load double, double* %position.addr, align 8
  %mul19 = fmul double %mul18, %27
  %28 = load double, double* %position.addr, align 8
  %mul20 = fmul double %mul19, %28
  %arrayidx21 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %beziercoords, i32 0, i64 2
  %29 = load double, double* %position.addr, align 8
  %30 = load double, double* %position.addr, align 8
  %mul22 = fmul double %29, %30
  %31 = load double, double* %position.addr, align 8
  %mul23 = fmul double %mul22, %31
  %arrayidx24 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %beziercoords, i32 0, i64 3
  call void @gimp_coords_mix(double %mul20, %struct._GimpCoords* %arrayidx21, double %mul23, %struct._GimpCoords* %arrayidx24, %struct._GimpCoords* %tmp2)
  call void @gimp_coords_add(%struct._GimpCoords* %tmp1, %struct._GimpCoords* %tmp2, %struct._GimpCoords* %abs_pos)
  %32 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  call void @gimp_coords_difference(%struct._GimpCoords* %32, %struct._GimpCoords* %abs_pos, %struct._GimpCoords* %deltacoord)
  %33 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %34 = load %struct._GimpAnchor*, %struct._GimpAnchor** %predec.addr, align 8
  %35 = load double, double* %position.addr, align 8
  %36 = load i32, i32* %feature.addr, align 4
  call void @gimp_bezier_stroke_point_move_relative(%struct._GimpStroke* %33, %struct._GimpAnchor* %34, double %35, %struct._GimpCoords* %deltacoord, i32 %36)
  br label %return

return:                                           ; preds = %for.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_bezier_stroke_close(%struct._GimpStroke* %stroke) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %start = alloca %struct._GList*, align 8
  %end = alloca %struct._GList*, align 8
  %anchor = alloca %struct._GimpAnchor*, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %0, i32 0, i32 2
  %1 = load %struct._GList*, %struct._GList** %anchors, align 8
  %call = call %struct._GList* @g_list_first(%struct._GList* %1)
  store %struct._GList* %call, %struct._GList** %start, align 8
  %2 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors1 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %2, i32 0, i32 2
  %3 = load %struct._GList*, %struct._GList** %anchors1, align 8
  %call2 = call %struct._GList* @g_list_last(%struct._GList* %3)
  store %struct._GList* %call2, %struct._GList** %end, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct._GList*, %struct._GList** %start, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %4, i32 0, i32 1
  %5 = load %struct._GList*, %struct._GList** %next, align 8
  %cmp = icmp ne %struct._GList* %5, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %6 = load %struct._GList*, %struct._GList** %end, align 8
  %prev = getelementptr inbounds %struct._GList, %struct._GList* %6, i32 0, i32 2
  %7 = load %struct._GList*, %struct._GList** %prev, align 8
  %cmp3 = icmp ne %struct._GList* %7, null
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_bezier_stroke_close, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %8 = load %struct._GList*, %struct._GList** %start, align 8
  %next4 = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 1
  %9 = load %struct._GList*, %struct._GList** %next4, align 8
  %10 = load %struct._GList*, %struct._GList** %end, align 8
  %prev5 = getelementptr inbounds %struct._GList, %struct._GList* %10, i32 0, i32 2
  %11 = load %struct._GList*, %struct._GList** %prev5, align 8
  %cmp6 = icmp ne %struct._GList* %9, %11
  br i1 %cmp6, label %if.then.7, label %if.end.51

if.then.7:                                        ; preds = %do.end
  %12 = load %struct._GList*, %struct._GList** %start, align 8
  %next8 = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 1
  %13 = load %struct._GList*, %struct._GList** %next8, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 0
  %14 = load i8*, i8** %data, align 8
  %15 = bitcast i8* %14 to %struct._GimpAnchor*
  %position = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %15, i32 0, i32 0
  %16 = load %struct._GList*, %struct._GList** %start, align 8
  %data9 = getelementptr inbounds %struct._GList, %struct._GList* %16, i32 0, i32 0
  %17 = load i8*, i8** %data9, align 8
  %18 = bitcast i8* %17 to %struct._GimpAnchor*
  %position10 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %18, i32 0, i32 0
  %call11 = call i32 @gimp_coords_equal(%struct._GimpCoords* %position, %struct._GimpCoords* %position10)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %land.lhs.true.12, label %if.end.50

land.lhs.true.12:                                 ; preds = %if.then.7
  %19 = load %struct._GList*, %struct._GList** %start, align 8
  %data13 = getelementptr inbounds %struct._GList, %struct._GList* %19, i32 0, i32 0
  %20 = load i8*, i8** %data13, align 8
  %21 = bitcast i8* %20 to %struct._GimpAnchor*
  %position14 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %21, i32 0, i32 0
  %22 = load %struct._GList*, %struct._GList** %end, align 8
  %data15 = getelementptr inbounds %struct._GList, %struct._GList* %22, i32 0, i32 0
  %23 = load i8*, i8** %data15, align 8
  %24 = bitcast i8* %23 to %struct._GimpAnchor*
  %position16 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %24, i32 0, i32 0
  %call17 = call i32 @gimp_coords_equal(%struct._GimpCoords* %position14, %struct._GimpCoords* %position16)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %land.lhs.true.19, label %if.end.50

land.lhs.true.19:                                 ; preds = %land.lhs.true.12
  %25 = load %struct._GList*, %struct._GList** %end, align 8
  %data20 = getelementptr inbounds %struct._GList, %struct._GList* %25, i32 0, i32 0
  %26 = load i8*, i8** %data20, align 8
  %27 = bitcast i8* %26 to %struct._GimpAnchor*
  %position21 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %27, i32 0, i32 0
  %28 = load %struct._GList*, %struct._GList** %end, align 8
  %prev22 = getelementptr inbounds %struct._GList, %struct._GList* %28, i32 0, i32 2
  %29 = load %struct._GList*, %struct._GList** %prev22, align 8
  %data23 = getelementptr inbounds %struct._GList, %struct._GList* %29, i32 0, i32 0
  %30 = load i8*, i8** %data23, align 8
  %31 = bitcast i8* %30 to %struct._GimpAnchor*
  %position24 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %31, i32 0, i32 0
  %call25 = call i32 @gimp_coords_equal(%struct._GimpCoords* %position21, %struct._GimpCoords* %position24)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.50

if.then.27:                                       ; preds = %land.lhs.true.19
  %32 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors28 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %32, i32 0, i32 2
  %33 = load %struct._GList*, %struct._GList** %anchors28, align 8
  %data29 = getelementptr inbounds %struct._GList, %struct._GList* %33, i32 0, i32 0
  %34 = load i8*, i8** %data29, align 8
  %35 = bitcast i8* %34 to %struct._GimpAnchor*
  store %struct._GimpAnchor* %35, %struct._GimpAnchor** %anchor, align 8
  %36 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors30 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %36, i32 0, i32 2
  %37 = load %struct._GList*, %struct._GList** %anchors30, align 8
  %38 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors31 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %38, i32 0, i32 2
  %39 = load %struct._GList*, %struct._GList** %anchors31, align 8
  %call32 = call %struct._GList* @g_list_delete_link(%struct._GList* %37, %struct._GList* %39)
  %40 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors33 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %40, i32 0, i32 2
  store %struct._GList* %call32, %struct._GList** %anchors33, align 8
  %41 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  call void @gimp_anchor_free(%struct._GimpAnchor* %41)
  %42 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors34 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %42, i32 0, i32 2
  %43 = load %struct._GList*, %struct._GList** %anchors34, align 8
  %data35 = getelementptr inbounds %struct._GList, %struct._GList* %43, i32 0, i32 0
  %44 = load i8*, i8** %data35, align 8
  %45 = bitcast i8* %44 to %struct._GimpAnchor*
  store %struct._GimpAnchor* %45, %struct._GimpAnchor** %anchor, align 8
  %46 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors36 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %46, i32 0, i32 2
  %47 = load %struct._GList*, %struct._GList** %anchors36, align 8
  %48 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors37 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %48, i32 0, i32 2
  %49 = load %struct._GList*, %struct._GList** %anchors37, align 8
  %call38 = call %struct._GList* @g_list_delete_link(%struct._GList* %47, %struct._GList* %49)
  %50 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors39 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %50, i32 0, i32 2
  store %struct._GList* %call38, %struct._GList** %anchors39, align 8
  %51 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  call void @gimp_anchor_free(%struct._GimpAnchor* %51)
  %52 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors40 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %52, i32 0, i32 2
  %53 = load %struct._GList*, %struct._GList** %anchors40, align 8
  %data41 = getelementptr inbounds %struct._GList, %struct._GList* %53, i32 0, i32 0
  %54 = load i8*, i8** %data41, align 8
  %55 = bitcast i8* %54 to %struct._GimpAnchor*
  store %struct._GimpAnchor* %55, %struct._GimpAnchor** %anchor, align 8
  %56 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors42 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %56, i32 0, i32 2
  %57 = load %struct._GList*, %struct._GList** %anchors42, align 8
  %58 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors43 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %58, i32 0, i32 2
  %59 = load %struct._GList*, %struct._GList** %anchors43, align 8
  %call44 = call %struct._GList* @g_list_delete_link(%struct._GList* %57, %struct._GList* %59)
  %60 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors45 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %60, i32 0, i32 2
  store %struct._GList* %call44, %struct._GList** %anchors45, align 8
  %61 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors46 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %61, i32 0, i32 2
  %62 = load %struct._GList*, %struct._GList** %anchors46, align 8
  %call47 = call %struct._GList* @g_list_last(%struct._GList* %62)
  store %struct._GList* %call47, %struct._GList** %end, align 8
  %63 = load %struct._GList*, %struct._GList** %end, align 8
  %data48 = getelementptr inbounds %struct._GList, %struct._GList* %63, i32 0, i32 0
  %64 = load i8*, i8** %data48, align 8
  %65 = bitcast i8* %64 to %struct._GimpAnchor*
  call void @gimp_anchor_free(%struct._GimpAnchor* %65)
  %66 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %67 = bitcast %struct._GimpAnchor* %66 to i8*
  %68 = load %struct._GList*, %struct._GList** %end, align 8
  %data49 = getelementptr inbounds %struct._GList, %struct._GList* %68, i32 0, i32 0
  store i8* %67, i8** %data49, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.27, %land.lhs.true.19, %land.lhs.true.12, %if.then.7
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %do.end
  %69 = load i8*, i8** @gimp_bezier_stroke_parent_class, align 8
  %70 = bitcast i8* %69 to %struct._GTypeClass*
  %call52 = call i64 @gimp_stroke_get_type() #7
  %call53 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %70, i64 %call52)
  %71 = bitcast %struct._GTypeClass* %call53 to %struct._GimpStrokeClass*
  %close = getelementptr inbounds %struct._GimpStrokeClass, %struct._GimpStrokeClass* %71, i32 0, i32 16
  %72 = load void (%struct._GimpStroke*)*, void (%struct._GimpStroke*)** %close, align 8
  %73 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  call void %72(%struct._GimpStroke* %73)
  br label %return

return:                                           ; preds = %if.end.51, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpStroke* @gimp_bezier_stroke_open(%struct._GimpStroke* %stroke, %struct._GimpAnchor* %end_anchor) #3 {
entry:
  %retval = alloca %struct._GimpStroke*, align 8
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %end_anchor.addr = alloca %struct._GimpAnchor*, align 8
  %list = alloca %struct._GList*, align 8
  %list2 = alloca %struct._GList*, align 8
  %new_stroke = alloca %struct._GimpStroke*, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpAnchor* %end_anchor, %struct._GimpAnchor** %end_anchor.addr, align 8
  store %struct._GimpStroke* null, %struct._GimpStroke** %new_stroke, align 8
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %0, i32 0, i32 2
  %1 = load %struct._GList*, %struct._GList** %anchors, align 8
  %2 = load %struct._GimpAnchor*, %struct._GimpAnchor** %end_anchor.addr, align 8
  %3 = bitcast %struct._GimpAnchor* %2 to i8*
  %call = call %struct._GList* @g_list_find(%struct._GList* %1, i8* %3)
  store %struct._GList* %call, %struct._GList** %list, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct._GList*, %struct._GList** %list, align 8
  %cmp = icmp ne %struct._GList* %4, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %5, i32 0, i32 1
  %6 = load %struct._GList*, %struct._GList** %next, align 8
  %cmp1 = icmp ne %struct._GList* %6, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_bezier_stroke_open, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.25, i32 0, i32 0))
  store %struct._GimpStroke* null, %struct._GimpStroke** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %7 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %7, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %8 = load %struct._GList*, %struct._GList** %list, align 8
  %next2 = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 1
  %9 = load %struct._GList*, %struct._GList** %next2, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %9, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  %10 = load %struct._GList*, %struct._GList** %list, align 8
  %next3 = getelementptr inbounds %struct._GList, %struct._GList* %10, i32 0, i32 1
  %11 = load %struct._GList*, %struct._GList** %next3, align 8
  store %struct._GList* %11, %struct._GList** %list2, align 8
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %next4 = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 1
  store %struct._GList* null, %struct._GList** %next4, align 8
  %13 = load %struct._GList*, %struct._GList** %list2, align 8
  %cmp5 = icmp ne %struct._GList* %13, null
  br i1 %cmp5, label %if.then.6, label %if.end.16

if.then.6:                                        ; preds = %cond.end
  %14 = load %struct._GList*, %struct._GList** %list2, align 8
  %prev = getelementptr inbounds %struct._GList, %struct._GList* %14, i32 0, i32 2
  store %struct._GList* null, %struct._GList** %prev, align 8
  %15 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %closed = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %15, i32 0, i32 3
  %16 = load i32, i32* %closed, align 4
  %tobool7 = icmp ne i32 %16, 0
  br i1 %tobool7, label %if.then.8, label %if.else.12

if.then.8:                                        ; preds = %if.then.6
  %17 = load %struct._GList*, %struct._GList** %list2, align 8
  %18 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors9 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %18, i32 0, i32 2
  %19 = load %struct._GList*, %struct._GList** %anchors9, align 8
  %call10 = call %struct._GList* @g_list_concat(%struct._GList* %17, %struct._GList* %19)
  %20 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors11 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %20, i32 0, i32 2
  store %struct._GList* %call10, %struct._GList** %anchors11, align 8
  br label %if.end.15

if.else.12:                                       ; preds = %if.then.6
  %call13 = call %struct._GimpStroke* @gimp_bezier_stroke_new()
  store %struct._GimpStroke* %call13, %struct._GimpStroke** %new_stroke, align 8
  %21 = load %struct._GList*, %struct._GList** %list2, align 8
  %22 = load %struct._GimpStroke*, %struct._GimpStroke** %new_stroke, align 8
  %anchors14 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %22, i32 0, i32 2
  store %struct._GList* %21, %struct._GList** %anchors14, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.12, %if.then.8
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %cond.end
  %23 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %closed17 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %23, i32 0, i32 3
  store i32 0, i32* %closed17, align 4
  %24 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %25 = bitcast %struct._GimpStroke* %24 to %struct._GTypeInstance*
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 80)
  %26 = bitcast %struct._GTypeInstance* %call18 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0))
  %27 = load %struct._GimpStroke*, %struct._GimpStroke** %new_stroke, align 8
  store %struct._GimpStroke* %27, %struct._GimpStroke** %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.else
  %28 = load %struct._GimpStroke*, %struct._GimpStroke** %retval
  ret %struct._GimpStroke* %28
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_bezier_stroke_anchor_is_insertable(%struct._GimpStroke* %stroke, %struct._GimpAnchor* %predec, double %position) #3 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %predec.addr = alloca %struct._GimpAnchor*, align 8
  %position.addr = alloca double, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpAnchor* %predec, %struct._GimpAnchor** %predec.addr, align 8
  store double %position, double* %position.addr, align 8
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %0, i32 0, i32 2
  %1 = load %struct._GList*, %struct._GList** %anchors, align 8
  %2 = load %struct._GimpAnchor*, %struct._GimpAnchor** %predec.addr, align 8
  %3 = bitcast %struct._GimpAnchor* %2 to i8*
  %call = call %struct._GList* @g_list_find(%struct._GList* %1, i8* %3)
  %cmp = icmp ne %struct._GList* %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpAnchor* @gimp_bezier_stroke_anchor_insert(%struct._GimpStroke* %stroke, %struct._GimpAnchor* %predec, double %position) #3 {
entry:
  %retval = alloca %struct._GimpAnchor*, align 8
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %predec.addr = alloca %struct._GimpAnchor*, align 8
  %position.addr = alloca double, align 8
  %segment_start = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %list2 = alloca %struct._GList*, align 8
  %subdivided = alloca [8 x %struct._GimpCoords], align 16
  %beziercoords = alloca [4 x %struct._GimpCoords], align 16
  %i = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpAnchor* %predec, %struct._GimpAnchor** %predec.addr, align 8
  store double %position, double* %position.addr, align 8
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %0, i32 0, i32 2
  %1 = load %struct._GList*, %struct._GList** %anchors, align 8
  %2 = load %struct._GimpAnchor*, %struct._GimpAnchor** %predec.addr, align 8
  %3 = bitcast %struct._GimpAnchor* %2 to i8*
  %call = call %struct._GList* @g_list_find(%struct._GList* %1, i8* %3)
  store %struct._GList* %call, %struct._GList** %segment_start, align 8
  %4 = load %struct._GList*, %struct._GList** %segment_start, align 8
  %tobool = icmp ne %struct._GList* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GList*, %struct._GList** %segment_start, align 8
  store %struct._GList* %5, %struct._GList** %list, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %6, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %beziercoords, i32 0, i64 %idxprom
  %8 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 0
  %9 = load i8*, i8** %data, align 8
  %10 = bitcast i8* %9 to %struct._GimpAnchor*
  %position1 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %10, i32 0, i32 0
  %11 = bitcast %struct._GimpCoords* %arrayidx to i8*
  %12 = bitcast %struct._GimpCoords* %position1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 64, i32 8, i1 false)
  %13 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool2 = icmp ne %struct._GList* %13, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %14 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %14, i32 0, i32 1
  %15 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %15, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool3 = icmp ne %struct._GList* %16, null
  br i1 %tobool3, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %cond.end
  %17 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors5 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %17, i32 0, i32 2
  %18 = load %struct._GList*, %struct._GList** %anchors5, align 8
  store %struct._GList* %18, %struct._GList** %list, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arrayidx7 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 0
  %arrayidx8 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %beziercoords, i32 0, i64 0
  %20 = bitcast %struct._GimpCoords* %arrayidx7 to i8*
  %21 = bitcast %struct._GimpCoords* %arrayidx8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 64, i32 8, i1 false)
  %arrayidx9 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 6
  %arrayidx10 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %beziercoords, i32 0, i64 3
  %22 = bitcast %struct._GimpCoords* %arrayidx9 to i8*
  %23 = bitcast %struct._GimpCoords* %arrayidx10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 64, i32 8, i1 false)
  %24 = load double, double* %position.addr, align 8
  %sub = fsub double 1.000000e+00, %24
  %arrayidx11 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %beziercoords, i32 0, i64 0
  %25 = load double, double* %position.addr, align 8
  %arrayidx12 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %beziercoords, i32 0, i64 1
  %arrayidx13 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 1
  call void @gimp_coords_mix(double %sub, %struct._GimpCoords* %arrayidx11, double %25, %struct._GimpCoords* %arrayidx12, %struct._GimpCoords* %arrayidx13)
  %26 = load double, double* %position.addr, align 8
  %sub14 = fsub double 1.000000e+00, %26
  %arrayidx15 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %beziercoords, i32 0, i64 1
  %27 = load double, double* %position.addr, align 8
  %arrayidx16 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %beziercoords, i32 0, i64 2
  %arrayidx17 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 7
  call void @gimp_coords_mix(double %sub14, %struct._GimpCoords* %arrayidx15, double %27, %struct._GimpCoords* %arrayidx16, %struct._GimpCoords* %arrayidx17)
  %28 = load double, double* %position.addr, align 8
  %sub18 = fsub double 1.000000e+00, %28
  %arrayidx19 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %beziercoords, i32 0, i64 2
  %29 = load double, double* %position.addr, align 8
  %arrayidx20 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %beziercoords, i32 0, i64 3
  %arrayidx21 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 5
  call void @gimp_coords_mix(double %sub18, %struct._GimpCoords* %arrayidx19, double %29, %struct._GimpCoords* %arrayidx20, %struct._GimpCoords* %arrayidx21)
  %30 = load double, double* %position.addr, align 8
  %sub22 = fsub double 1.000000e+00, %30
  %arrayidx23 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 1
  %31 = load double, double* %position.addr, align 8
  %arrayidx24 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 7
  %arrayidx25 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 2
  call void @gimp_coords_mix(double %sub22, %struct._GimpCoords* %arrayidx23, double %31, %struct._GimpCoords* %arrayidx24, %struct._GimpCoords* %arrayidx25)
  %32 = load double, double* %position.addr, align 8
  %sub26 = fsub double 1.000000e+00, %32
  %arrayidx27 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 7
  %33 = load double, double* %position.addr, align 8
  %arrayidx28 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 5
  %arrayidx29 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 4
  call void @gimp_coords_mix(double %sub26, %struct._GimpCoords* %arrayidx27, double %33, %struct._GimpCoords* %arrayidx28, %struct._GimpCoords* %arrayidx29)
  %34 = load double, double* %position.addr, align 8
  %sub30 = fsub double 1.000000e+00, %34
  %arrayidx31 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 2
  %35 = load double, double* %position.addr, align 8
  %arrayidx32 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 4
  %arrayidx33 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 3
  call void @gimp_coords_mix(double %sub30, %struct._GimpCoords* %arrayidx31, double %35, %struct._GimpCoords* %arrayidx32, %struct._GimpCoords* %arrayidx33)
  %36 = load %struct._GList*, %struct._GList** %segment_start, align 8
  store %struct._GList* %36, %struct._GList** %list, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.73, %for.end
  %37 = load i32, i32* %i, align 4
  %cmp35 = icmp sle i32 %37, 6
  br i1 %cmp35, label %for.body.36, label %for.end.75

for.body.36:                                      ; preds = %for.cond.34
  %38 = load i32, i32* %i, align 4
  %cmp37 = icmp sge i32 %38, 2
  br i1 %cmp37, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body.36
  %39 = load i32, i32* %i, align 4
  %cmp38 = icmp sle i32 %39, 4
  br i1 %cmp38, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %land.lhs.true
  %40 = load i32, i32* %i, align 4
  %cmp40 = icmp eq i32 %40, 3
  %cond41 = select i1 %cmp40, i32 0, i32 1
  %41 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %41 to i64
  %arrayidx43 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 %idxprom42
  %call44 = call %struct._GimpAnchor* @gimp_anchor_new(i32 %cond41, %struct._GimpCoords* %arrayidx43)
  %42 = bitcast %struct._GimpAnchor* %call44 to i8*
  %call45 = call %struct._GList* @g_list_append(%struct._GList* null, i8* %42)
  store %struct._GList* %call45, %struct._GList** %list2, align 8
  %43 = load %struct._GList*, %struct._GList** %list, align 8
  %44 = load %struct._GList*, %struct._GList** %list2, align 8
  %next46 = getelementptr inbounds %struct._GList, %struct._GList* %44, i32 0, i32 1
  store %struct._GList* %43, %struct._GList** %next46, align 8
  %45 = load %struct._GList*, %struct._GList** %list, align 8
  %prev = getelementptr inbounds %struct._GList, %struct._GList* %45, i32 0, i32 2
  %46 = load %struct._GList*, %struct._GList** %prev, align 8
  %47 = load %struct._GList*, %struct._GList** %list2, align 8
  %prev47 = getelementptr inbounds %struct._GList, %struct._GList* %47, i32 0, i32 2
  store %struct._GList* %46, %struct._GList** %prev47, align 8
  %48 = load %struct._GList*, %struct._GList** %list, align 8
  %prev48 = getelementptr inbounds %struct._GList, %struct._GList* %48, i32 0, i32 2
  %49 = load %struct._GList*, %struct._GList** %prev48, align 8
  %tobool49 = icmp ne %struct._GList* %49, null
  br i1 %tobool49, label %if.then.50, label %if.end.53

if.then.50:                                       ; preds = %if.then.39
  %50 = load %struct._GList*, %struct._GList** %list2, align 8
  %51 = load %struct._GList*, %struct._GList** %list, align 8
  %prev51 = getelementptr inbounds %struct._GList, %struct._GList* %51, i32 0, i32 2
  %52 = load %struct._GList*, %struct._GList** %prev51, align 8
  %next52 = getelementptr inbounds %struct._GList, %struct._GList* %52, i32 0, i32 1
  store %struct._GList* %50, %struct._GList** %next52, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.50, %if.then.39
  %53 = load %struct._GList*, %struct._GList** %list2, align 8
  %54 = load %struct._GList*, %struct._GList** %list, align 8
  %prev54 = getelementptr inbounds %struct._GList, %struct._GList* %54, i32 0, i32 2
  store %struct._GList* %53, %struct._GList** %prev54, align 8
  %55 = load %struct._GList*, %struct._GList** %list2, align 8
  store %struct._GList* %55, %struct._GList** %list, align 8
  %56 = load i32, i32* %i, align 4
  %cmp55 = icmp eq i32 %56, 3
  br i1 %cmp55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.53
  %57 = load %struct._GList*, %struct._GList** %list, align 8
  store %struct._GList* %57, %struct._GList** %segment_start, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %if.end.53
  br label %if.end.62

if.else:                                          ; preds = %land.lhs.true, %for.body.36
  %58 = load %struct._GList*, %struct._GList** %list, align 8
  %data58 = getelementptr inbounds %struct._GList, %struct._GList* %58, i32 0, i32 0
  %59 = load i8*, i8** %data58, align 8
  %60 = bitcast i8* %59 to %struct._GimpAnchor*
  %position59 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %60, i32 0, i32 0
  %61 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %61 to i64
  %arrayidx61 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 %idxprom60
  %62 = bitcast %struct._GimpCoords* %position59 to i8*
  %63 = bitcast %struct._GimpCoords* %arrayidx61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %63, i64 64, i32 8, i1 false)
  br label %if.end.62

if.end.62:                                        ; preds = %if.else, %if.end.57
  %64 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool63 = icmp ne %struct._GList* %64, null
  br i1 %tobool63, label %cond.true.64, label %cond.false.66

cond.true.64:                                     ; preds = %if.end.62
  %65 = load %struct._GList*, %struct._GList** %list, align 8
  %next65 = getelementptr inbounds %struct._GList, %struct._GList* %65, i32 0, i32 1
  %66 = load %struct._GList*, %struct._GList** %next65, align 8
  br label %cond.end.67

cond.false.66:                                    ; preds = %if.end.62
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.66, %cond.true.64
  %cond68 = phi %struct._GList* [ %66, %cond.true.64 ], [ null, %cond.false.66 ]
  store %struct._GList* %cond68, %struct._GList** %list, align 8
  %67 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool69 = icmp ne %struct._GList* %67, null
  br i1 %tobool69, label %if.end.72, label %if.then.70

if.then.70:                                       ; preds = %cond.end.67
  %68 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors71 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %68, i32 0, i32 2
  %69 = load %struct._GList*, %struct._GList** %anchors71, align 8
  store %struct._GList* %69, %struct._GList** %list, align 8
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.70, %cond.end.67
  br label %for.inc.73

for.inc.73:                                       ; preds = %if.end.72
  %70 = load i32, i32* %i, align 4
  %inc74 = add nsw i32 %70, 1
  store i32 %inc74, i32* %i, align 4
  br label %for.cond.34

for.end.75:                                       ; preds = %for.cond.34
  %71 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors76 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %71, i32 0, i32 2
  %72 = load %struct._GList*, %struct._GList** %anchors76, align 8
  %call77 = call %struct._GList* @g_list_first(%struct._GList* %72)
  %73 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors78 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %73, i32 0, i32 2
  store %struct._GList* %call77, %struct._GList** %anchors78, align 8
  %74 = load %struct._GList*, %struct._GList** %segment_start, align 8
  %data79 = getelementptr inbounds %struct._GList, %struct._GList* %74, i32 0, i32 0
  %75 = load i8*, i8** %data79, align 8
  %76 = bitcast i8* %75 to %struct._GimpAnchor*
  store %struct._GimpAnchor* %76, %struct._GimpAnchor** %retval
  br label %return

return:                                           ; preds = %for.end.75, %if.then
  %77 = load %struct._GimpAnchor*, %struct._GimpAnchor** %retval
  ret %struct._GimpAnchor* %77
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_bezier_stroke_is_extendable(%struct._GimpStroke* %stroke, %struct._GimpAnchor* %neighbor) #3 {
entry:
  %retval = alloca i32, align 4
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %neighbor.addr = alloca %struct._GimpAnchor*, align 8
  %listneighbor = alloca %struct._GList*, align 8
  %loose_end = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpAnchor* %neighbor, %struct._GimpAnchor** %neighbor.addr, align 8
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %closed = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %0, i32 0, i32 3
  %1 = load i32, i32* %closed, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %2, i32 0, i32 2
  %3 = load %struct._GList*, %struct._GList** %anchors, align 8
  %cmp = icmp eq %struct._GList* %3, null
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.2
  %4 = load %struct._GimpAnchor*, %struct._GimpAnchor** %neighbor.addr, align 8
  %cmp3 = icmp ne %struct._GimpAnchor* %4, null
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body
  br label %if.end.5

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_bezier_stroke_is_extendable, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end.5
  store i32 0, i32* %loose_end, align 4
  %5 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors6 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %5, i32 0, i32 2
  %6 = load %struct._GList*, %struct._GList** %anchors6, align 8
  %call = call %struct._GList* @g_list_last(%struct._GList* %6)
  store %struct._GList* %call, %struct._GList** %listneighbor, align 8
  %7 = load %struct._GList*, %struct._GList** %listneighbor, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %7, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8
  %9 = load %struct._GimpAnchor*, %struct._GimpAnchor** %neighbor.addr, align 8
  %10 = bitcast %struct._GimpAnchor* %9 to i8*
  %cmp7 = icmp eq i8* %8, %10
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %do.end
  store i32 1, i32* %loose_end, align 4
  br label %if.end.63

if.else.9:                                        ; preds = %do.end
  %11 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors10 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %11, i32 0, i32 2
  %12 = load %struct._GList*, %struct._GList** %anchors10, align 8
  %call11 = call %struct._GList* @g_list_first(%struct._GList* %12)
  store %struct._GList* %call11, %struct._GList** %listneighbor, align 8
  %13 = load %struct._GList*, %struct._GList** %listneighbor, align 8
  %data12 = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 0
  %14 = load i8*, i8** %data12, align 8
  %15 = load %struct._GimpAnchor*, %struct._GimpAnchor** %neighbor.addr, align 8
  %16 = bitcast %struct._GimpAnchor* %15 to i8*
  %cmp13 = icmp eq i8* %14, %16
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.else.9
  store i32 -1, i32* %loose_end, align 4
  br label %if.end.62

if.else.15:                                       ; preds = %if.else.9
  %17 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors16 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %17, i32 0, i32 2
  %18 = load %struct._GList*, %struct._GList** %anchors16, align 8
  %19 = load %struct._GimpAnchor*, %struct._GimpAnchor** %neighbor.addr, align 8
  %20 = bitcast %struct._GimpAnchor* %19 to i8*
  %call17 = call %struct._GList* @g_list_find(%struct._GList* %18, i8* %20)
  store %struct._GList* %call17, %struct._GList** %listneighbor, align 8
  %21 = load %struct._GList*, %struct._GList** %listneighbor, align 8
  %tobool18 = icmp ne %struct._GList* %21, null
  br i1 %tobool18, label %land.lhs.true, label %if.end.41

land.lhs.true:                                    ; preds = %if.else.15
  %22 = load %struct._GimpAnchor*, %struct._GimpAnchor** %neighbor.addr, align 8
  %type = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %22, i32 0, i32 1
  %23 = load i32, i32* %type, align 4
  %cmp19 = icmp eq i32 %23, 1
  br i1 %cmp19, label %if.then.20, label %if.end.41

if.then.20:                                       ; preds = %land.lhs.true
  %24 = load %struct._GList*, %struct._GList** %listneighbor, align 8
  %prev = getelementptr inbounds %struct._GList, %struct._GList* %24, i32 0, i32 2
  %25 = load %struct._GList*, %struct._GList** %prev, align 8
  %tobool21 = icmp ne %struct._GList* %25, null
  br i1 %tobool21, label %land.lhs.true.22, label %if.else.29

land.lhs.true.22:                                 ; preds = %if.then.20
  %26 = load %struct._GList*, %struct._GList** %listneighbor, align 8
  %prev23 = getelementptr inbounds %struct._GList, %struct._GList* %26, i32 0, i32 2
  %27 = load %struct._GList*, %struct._GList** %prev23, align 8
  %data24 = getelementptr inbounds %struct._GList, %struct._GList* %27, i32 0, i32 0
  %28 = load i8*, i8** %data24, align 8
  %29 = bitcast i8* %28 to %struct._GimpAnchor*
  %type25 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %29, i32 0, i32 1
  %30 = load i32, i32* %type25, align 4
  %cmp26 = icmp eq i32 %30, 0
  br i1 %cmp26, label %if.then.27, label %if.else.29

if.then.27:                                       ; preds = %land.lhs.true.22
  %31 = load %struct._GList*, %struct._GList** %listneighbor, align 8
  %prev28 = getelementptr inbounds %struct._GList, %struct._GList* %31, i32 0, i32 2
  %32 = load %struct._GList*, %struct._GList** %prev28, align 8
  store %struct._GList* %32, %struct._GList** %listneighbor, align 8
  br label %if.end.40

if.else.29:                                       ; preds = %land.lhs.true.22, %if.then.20
  %33 = load %struct._GList*, %struct._GList** %listneighbor, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %33, i32 0, i32 1
  %34 = load %struct._GList*, %struct._GList** %next, align 8
  %tobool30 = icmp ne %struct._GList* %34, null
  br i1 %tobool30, label %land.lhs.true.31, label %if.else.38

land.lhs.true.31:                                 ; preds = %if.else.29
  %35 = load %struct._GList*, %struct._GList** %listneighbor, align 8
  %next32 = getelementptr inbounds %struct._GList, %struct._GList* %35, i32 0, i32 1
  %36 = load %struct._GList*, %struct._GList** %next32, align 8
  %data33 = getelementptr inbounds %struct._GList, %struct._GList* %36, i32 0, i32 0
  %37 = load i8*, i8** %data33, align 8
  %38 = bitcast i8* %37 to %struct._GimpAnchor*
  %type34 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %38, i32 0, i32 1
  %39 = load i32, i32* %type34, align 4
  %cmp35 = icmp eq i32 %39, 0
  br i1 %cmp35, label %if.then.36, label %if.else.38

if.then.36:                                       ; preds = %land.lhs.true.31
  %40 = load %struct._GList*, %struct._GList** %listneighbor, align 8
  %next37 = getelementptr inbounds %struct._GList, %struct._GList* %40, i32 0, i32 1
  %41 = load %struct._GList*, %struct._GList** %next37, align 8
  store %struct._GList* %41, %struct._GList** %listneighbor, align 8
  br label %if.end.39

if.else.38:                                       ; preds = %land.lhs.true.31, %if.else.29
  store i32 0, i32* %loose_end, align 4
  store %struct._GList* null, %struct._GList** %listneighbor, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.38, %if.then.36
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.27
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %land.lhs.true, %if.else.15
  %42 = load %struct._GList*, %struct._GList** %listneighbor, align 8
  %tobool42 = icmp ne %struct._GList* %42, null
  br i1 %tobool42, label %if.then.43, label %if.end.61

if.then.43:                                       ; preds = %if.end.41
  %43 = load %struct._GList*, %struct._GList** %listneighbor, align 8
  %prev44 = getelementptr inbounds %struct._GList, %struct._GList* %43, i32 0, i32 2
  %44 = load %struct._GList*, %struct._GList** %prev44, align 8
  %tobool45 = icmp ne %struct._GList* %44, null
  br i1 %tobool45, label %land.lhs.true.46, label %if.else.51

land.lhs.true.46:                                 ; preds = %if.then.43
  %45 = load %struct._GList*, %struct._GList** %listneighbor, align 8
  %prev47 = getelementptr inbounds %struct._GList, %struct._GList* %45, i32 0, i32 2
  %46 = load %struct._GList*, %struct._GList** %prev47, align 8
  %prev48 = getelementptr inbounds %struct._GList, %struct._GList* %46, i32 0, i32 2
  %47 = load %struct._GList*, %struct._GList** %prev48, align 8
  %cmp49 = icmp eq %struct._GList* %47, null
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %land.lhs.true.46
  store i32 -1, i32* %loose_end, align 4
  br label %if.end.60

if.else.51:                                       ; preds = %land.lhs.true.46, %if.then.43
  %48 = load %struct._GList*, %struct._GList** %listneighbor, align 8
  %next52 = getelementptr inbounds %struct._GList, %struct._GList* %48, i32 0, i32 1
  %49 = load %struct._GList*, %struct._GList** %next52, align 8
  %tobool53 = icmp ne %struct._GList* %49, null
  br i1 %tobool53, label %land.lhs.true.54, label %if.end.59

land.lhs.true.54:                                 ; preds = %if.else.51
  %50 = load %struct._GList*, %struct._GList** %listneighbor, align 8
  %next55 = getelementptr inbounds %struct._GList, %struct._GList* %50, i32 0, i32 1
  %51 = load %struct._GList*, %struct._GList** %next55, align 8
  %next56 = getelementptr inbounds %struct._GList, %struct._GList* %51, i32 0, i32 1
  %52 = load %struct._GList*, %struct._GList** %next56, align 8
  %cmp57 = icmp eq %struct._GList* %52, null
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %land.lhs.true.54
  store i32 1, i32* %loose_end, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %land.lhs.true.54, %if.else.51
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.50
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.end.41
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.14
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.8
  %53 = load i32, i32* %loose_end, align 4
  %cmp64 = icmp ne i32 %53, 0
  %conv = zext i1 %cmp64 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %if.end.63, %if.else, %if.then.1, %if.then
  %54 = load i32, i32* %retval
  ret i32 %54
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_bezier_stroke_connect_stroke(%struct._GimpStroke* %stroke, %struct._GimpAnchor* %anchor, %struct._GimpStroke* %extension, %struct._GimpAnchor* %neighbor) #3 {
entry:
  %retval = alloca i32, align 4
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %anchor.addr = alloca %struct._GimpAnchor*, align 8
  %extension.addr = alloca %struct._GimpStroke*, align 8
  %neighbor.addr = alloca %struct._GimpAnchor*, align 8
  %list1 = alloca %struct._GList*, align 8
  %list2 = alloca %struct._GList*, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store %struct._GimpAnchor* %anchor, %struct._GimpAnchor** %anchor.addr, align 8
  store %struct._GimpStroke* %extension, %struct._GimpStroke** %extension.addr, align 8
  store %struct._GimpAnchor* %neighbor, %struct._GimpAnchor** %neighbor.addr, align 8
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %0, i32 0, i32 2
  %1 = load %struct._GList*, %struct._GList** %anchors, align 8
  %2 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor.addr, align 8
  %3 = bitcast %struct._GimpAnchor* %2 to i8*
  %call = call %struct._GList* @g_list_find(%struct._GList* %1, i8* %3)
  store %struct._GList* %call, %struct._GList** %list1, align 8
  %4 = load %struct._GList*, %struct._GList** %list1, align 8
  %call1 = call %struct._GList* @gimp_bezier_stroke_get_anchor_listitem(%struct._GList* %4)
  store %struct._GList* %call1, %struct._GList** %list1, align 8
  %5 = load %struct._GimpStroke*, %struct._GimpStroke** %extension.addr, align 8
  %anchors2 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %5, i32 0, i32 2
  %6 = load %struct._GList*, %struct._GList** %anchors2, align 8
  %7 = load %struct._GimpAnchor*, %struct._GimpAnchor** %neighbor.addr, align 8
  %8 = bitcast %struct._GimpAnchor* %7 to i8*
  %call3 = call %struct._GList* @g_list_find(%struct._GList* %6, i8* %8)
  store %struct._GList* %call3, %struct._GList** %list2, align 8
  %9 = load %struct._GList*, %struct._GList** %list2, align 8
  %call4 = call %struct._GList* @gimp_bezier_stroke_get_anchor_listitem(%struct._GList* %9)
  store %struct._GList* %call4, %struct._GList** %list2, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %10 = load %struct._GList*, %struct._GList** %list1, align 8
  %cmp = icmp ne %struct._GList* %10, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %11 = load %struct._GList*, %struct._GList** %list2, align 8
  %cmp5 = icmp ne %struct._GList* %11, null
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_bezier_stroke_connect_stroke, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %12 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %extension.addr, align 8
  %cmp6 = icmp eq %struct._GimpStroke* %12, %13
  br i1 %cmp6, label %if.then.7, label %if.end.36

if.then.7:                                        ; preds = %do.end
  br label %do.body.8

do.body.8:                                        ; preds = %if.then.7
  %14 = load %struct._GList*, %struct._GList** %list1, align 8
  %prev = getelementptr inbounds %struct._GList, %struct._GList* %14, i32 0, i32 2
  %15 = load %struct._GList*, %struct._GList** %prev, align 8
  %tobool = icmp ne %struct._GList* %15, null
  br i1 %tobool, label %land.lhs.true.9, label %lor.lhs.false

land.lhs.true.9:                                  ; preds = %do.body.8
  %16 = load %struct._GList*, %struct._GList** %list1, align 8
  %prev10 = getelementptr inbounds %struct._GList, %struct._GList* %16, i32 0, i32 2
  %17 = load %struct._GList*, %struct._GList** %prev10, align 8
  %prev11 = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 2
  %18 = load %struct._GList*, %struct._GList** %prev11, align 8
  %cmp12 = icmp eq %struct._GList* %18, null
  br i1 %cmp12, label %land.lhs.true.13, label %lor.lhs.false

land.lhs.true.13:                                 ; preds = %land.lhs.true.9
  %19 = load %struct._GList*, %struct._GList** %list2, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %19, i32 0, i32 1
  %20 = load %struct._GList*, %struct._GList** %next, align 8
  %tobool14 = icmp ne %struct._GList* %20, null
  br i1 %tobool14, label %land.lhs.true.15, label %lor.lhs.false

land.lhs.true.15:                                 ; preds = %land.lhs.true.13
  %21 = load %struct._GList*, %struct._GList** %list2, align 8
  %next16 = getelementptr inbounds %struct._GList, %struct._GList* %21, i32 0, i32 1
  %22 = load %struct._GList*, %struct._GList** %next16, align 8
  %next17 = getelementptr inbounds %struct._GList, %struct._GList* %22, i32 0, i32 1
  %23 = load %struct._GList*, %struct._GList** %next17, align 8
  %cmp18 = icmp eq %struct._GList* %23, null
  br i1 %cmp18, label %if.then.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.15, %land.lhs.true.13, %land.lhs.true.9, %do.body.8
  %24 = load %struct._GList*, %struct._GList** %list1, align 8
  %next19 = getelementptr inbounds %struct._GList, %struct._GList* %24, i32 0, i32 1
  %25 = load %struct._GList*, %struct._GList** %next19, align 8
  %tobool20 = icmp ne %struct._GList* %25, null
  br i1 %tobool20, label %land.lhs.true.21, label %if.else.33

land.lhs.true.21:                                 ; preds = %lor.lhs.false
  %26 = load %struct._GList*, %struct._GList** %list1, align 8
  %next22 = getelementptr inbounds %struct._GList, %struct._GList* %26, i32 0, i32 1
  %27 = load %struct._GList*, %struct._GList** %next22, align 8
  %next23 = getelementptr inbounds %struct._GList, %struct._GList* %27, i32 0, i32 1
  %28 = load %struct._GList*, %struct._GList** %next23, align 8
  %cmp24 = icmp eq %struct._GList* %28, null
  br i1 %cmp24, label %land.lhs.true.25, label %if.else.33

land.lhs.true.25:                                 ; preds = %land.lhs.true.21
  %29 = load %struct._GList*, %struct._GList** %list2, align 8
  %prev26 = getelementptr inbounds %struct._GList, %struct._GList* %29, i32 0, i32 2
  %30 = load %struct._GList*, %struct._GList** %prev26, align 8
  %tobool27 = icmp ne %struct._GList* %30, null
  br i1 %tobool27, label %land.lhs.true.28, label %if.else.33

land.lhs.true.28:                                 ; preds = %land.lhs.true.25
  %31 = load %struct._GList*, %struct._GList** %list2, align 8
  %prev29 = getelementptr inbounds %struct._GList, %struct._GList* %31, i32 0, i32 2
  %32 = load %struct._GList*, %struct._GList** %prev29, align 8
  %prev30 = getelementptr inbounds %struct._GList, %struct._GList* %32, i32 0, i32 2
  %33 = load %struct._GList*, %struct._GList** %prev30, align 8
  %cmp31 = icmp eq %struct._GList* %33, null
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %land.lhs.true.28, %land.lhs.true.15
  br label %if.end.34

if.else.33:                                       ; preds = %land.lhs.true.28, %land.lhs.true.25, %land.lhs.true.21, %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_bezier_stroke_connect_stroke, i32 0, i32 0), i8* getelementptr inbounds ([177 x i8], [177 x i8]* @.str.28, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.34:                                        ; preds = %if.then.32
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  %34 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  call void @gimp_stroke_close(%struct._GimpStroke* %34)
  store i32 1, i32* %retval
  br label %return

if.end.36:                                        ; preds = %do.end
  %35 = load %struct._GList*, %struct._GList** %list1, align 8
  %prev37 = getelementptr inbounds %struct._GList, %struct._GList* %35, i32 0, i32 2
  %36 = load %struct._GList*, %struct._GList** %prev37, align 8
  %tobool38 = icmp ne %struct._GList* %36, null
  br i1 %tobool38, label %land.lhs.true.39, label %if.end.47

land.lhs.true.39:                                 ; preds = %if.end.36
  %37 = load %struct._GList*, %struct._GList** %list1, align 8
  %prev40 = getelementptr inbounds %struct._GList, %struct._GList* %37, i32 0, i32 2
  %38 = load %struct._GList*, %struct._GList** %prev40, align 8
  %prev41 = getelementptr inbounds %struct._GList, %struct._GList* %38, i32 0, i32 2
  %39 = load %struct._GList*, %struct._GList** %prev41, align 8
  %cmp42 = icmp eq %struct._GList* %39, null
  br i1 %cmp42, label %if.then.43, label %if.end.47

if.then.43:                                       ; preds = %land.lhs.true.39
  %40 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors44 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %40, i32 0, i32 2
  %41 = load %struct._GList*, %struct._GList** %anchors44, align 8
  %call45 = call %struct._GList* @g_list_reverse(%struct._GList* %41)
  %42 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors46 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %42, i32 0, i32 2
  store %struct._GList* %call45, %struct._GList** %anchors46, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.43, %land.lhs.true.39, %if.end.36
  br label %do.body.48

do.body.48:                                       ; preds = %if.end.47
  %43 = load %struct._GList*, %struct._GList** %list1, align 8
  %next49 = getelementptr inbounds %struct._GList, %struct._GList* %43, i32 0, i32 1
  %44 = load %struct._GList*, %struct._GList** %next49, align 8
  %tobool50 = icmp ne %struct._GList* %44, null
  br i1 %tobool50, label %land.lhs.true.51, label %if.else.56

land.lhs.true.51:                                 ; preds = %do.body.48
  %45 = load %struct._GList*, %struct._GList** %list1, align 8
  %next52 = getelementptr inbounds %struct._GList, %struct._GList* %45, i32 0, i32 1
  %46 = load %struct._GList*, %struct._GList** %next52, align 8
  %next53 = getelementptr inbounds %struct._GList, %struct._GList* %46, i32 0, i32 1
  %47 = load %struct._GList*, %struct._GList** %next53, align 8
  %cmp54 = icmp eq %struct._GList* %47, null
  br i1 %cmp54, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %land.lhs.true.51
  br label %if.end.57

if.else.56:                                       ; preds = %land.lhs.true.51, %do.body.48
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_bezier_stroke_connect_stroke, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.29, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.57:                                        ; preds = %if.then.55
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  %48 = load %struct._GList*, %struct._GList** %list2, align 8
  %next59 = getelementptr inbounds %struct._GList, %struct._GList* %48, i32 0, i32 1
  %49 = load %struct._GList*, %struct._GList** %next59, align 8
  %tobool60 = icmp ne %struct._GList* %49, null
  br i1 %tobool60, label %land.lhs.true.61, label %if.end.69

land.lhs.true.61:                                 ; preds = %do.end.58
  %50 = load %struct._GList*, %struct._GList** %list2, align 8
  %next62 = getelementptr inbounds %struct._GList, %struct._GList* %50, i32 0, i32 1
  %51 = load %struct._GList*, %struct._GList** %next62, align 8
  %next63 = getelementptr inbounds %struct._GList, %struct._GList* %51, i32 0, i32 1
  %52 = load %struct._GList*, %struct._GList** %next63, align 8
  %cmp64 = icmp eq %struct._GList* %52, null
  br i1 %cmp64, label %if.then.65, label %if.end.69

if.then.65:                                       ; preds = %land.lhs.true.61
  %53 = load %struct._GimpStroke*, %struct._GimpStroke** %extension.addr, align 8
  %anchors66 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %53, i32 0, i32 2
  %54 = load %struct._GList*, %struct._GList** %anchors66, align 8
  %call67 = call %struct._GList* @g_list_reverse(%struct._GList* %54)
  %55 = load %struct._GimpStroke*, %struct._GimpStroke** %extension.addr, align 8
  %anchors68 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %55, i32 0, i32 2
  store %struct._GList* %call67, %struct._GList** %anchors68, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.65, %land.lhs.true.61, %do.end.58
  br label %do.body.70

do.body.70:                                       ; preds = %if.end.69
  %56 = load %struct._GList*, %struct._GList** %list2, align 8
  %prev71 = getelementptr inbounds %struct._GList, %struct._GList* %56, i32 0, i32 2
  %57 = load %struct._GList*, %struct._GList** %prev71, align 8
  %tobool72 = icmp ne %struct._GList* %57, null
  br i1 %tobool72, label %land.lhs.true.73, label %if.else.78

land.lhs.true.73:                                 ; preds = %do.body.70
  %58 = load %struct._GList*, %struct._GList** %list2, align 8
  %prev74 = getelementptr inbounds %struct._GList, %struct._GList* %58, i32 0, i32 2
  %59 = load %struct._GList*, %struct._GList** %prev74, align 8
  %prev75 = getelementptr inbounds %struct._GList, %struct._GList* %59, i32 0, i32 2
  %60 = load %struct._GList*, %struct._GList** %prev75, align 8
  %cmp76 = icmp eq %struct._GList* %60, null
  br i1 %cmp76, label %if.then.77, label %if.else.78

if.then.77:                                       ; preds = %land.lhs.true.73
  br label %if.end.79

if.else.78:                                       ; preds = %land.lhs.true.73, %do.body.70
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_bezier_stroke_connect_stroke, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.30, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.79:                                        ; preds = %if.then.77
  br label %do.end.80

do.end.80:                                        ; preds = %if.end.79
  %61 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors81 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %61, i32 0, i32 2
  %62 = load %struct._GList*, %struct._GList** %anchors81, align 8
  %63 = load %struct._GimpStroke*, %struct._GimpStroke** %extension.addr, align 8
  %anchors82 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %63, i32 0, i32 2
  %64 = load %struct._GList*, %struct._GList** %anchors82, align 8
  %call83 = call %struct._GList* @g_list_concat(%struct._GList* %62, %struct._GList* %64)
  %65 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors84 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %65, i32 0, i32 2
  store %struct._GList* %call83, %struct._GList** %anchors84, align 8
  %66 = load %struct._GimpStroke*, %struct._GimpStroke** %extension.addr, align 8
  %anchors85 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %66, i32 0, i32 2
  store %struct._GList* null, %struct._GList** %anchors85, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.80, %if.else.78, %if.else.56, %do.end.35, %if.else.33, %if.else
  %67 = load i32, i32* %retval
  ret i32 %67
}

; Function Attrs: nounwind uwtable
define internal %struct._GArray* @gimp_bezier_stroke_interpolate(%struct._GimpStroke* %stroke, double %precision, i32* %ret_closed) #3 {
entry:
  %retval = alloca %struct._GArray*, align 8
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %precision.addr = alloca double, align 8
  %ret_closed.addr = alloca i32*, align 8
  %ret_coords = alloca %struct._GArray*, align 8
  %anchor = alloca %struct._GimpAnchor*, align 8
  %anchorlist = alloca %struct._GList*, align 8
  %segmentcoords = alloca [4 x %struct._GimpCoords], align 16
  %count = alloca i32, align 4
  %need_endpoint = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store double %precision, double* %precision.addr, align 8
  store i32* %ret_closed, i32** %ret_closed.addr, align 8
  store i32 0, i32* %need_endpoint, align 4
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %0, i32 0, i32 2
  %1 = load %struct._GList*, %struct._GList** %anchors, align 8
  %tobool = icmp ne %struct._GList* %1, null
  br i1 %tobool, label %if.end.3, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %ret_closed.addr, align 8
  %tobool1 = icmp ne i32* %2, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %3 = load i32*, i32** %ret_closed.addr, align 8
  store i32 0, i32* %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  store %struct._GArray* null, %struct._GArray** %retval
  br label %return

if.end.3:                                         ; preds = %entry
  %call = call %struct._GArray* @g_array_new(i32 0, i32 0, i32 64)
  store %struct._GArray* %call, %struct._GArray** %ret_coords, align 8
  store i32 0, i32* %count, align 4
  %4 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors4 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %4, i32 0, i32 2
  %5 = load %struct._GList*, %struct._GList** %anchors4, align 8
  store %struct._GList* %5, %struct._GList** %anchorlist, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.3
  %6 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %tobool5 = icmp ne %struct._GList* %6, null
  br i1 %tobool5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %7 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %7, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8
  %9 = bitcast i8* %8 to %struct._GimpAnchor*
  %type = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %9, i32 0, i32 1
  %10 = load i32, i32* %type, align 4
  %cmp = icmp ne i32 %10, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %11 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %11, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %tobool6 = icmp ne %struct._GList* %12, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %13 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 1
  %14 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %14, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %anchorlist, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %for.cond.7

for.cond.7:                                       ; preds = %cond.end.25, %for.end
  %15 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %tobool8 = icmp ne %struct._GList* %15, null
  br i1 %tobool8, label %for.body.9, label %for.end.27

for.body.9:                                       ; preds = %for.cond.7
  %16 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %data10 = getelementptr inbounds %struct._GList, %struct._GList* %16, i32 0, i32 0
  %17 = load i8*, i8** %data10, align 8
  %18 = bitcast i8* %17 to %struct._GimpAnchor*
  store %struct._GimpAnchor* %18, %struct._GimpAnchor** %anchor, align 8
  %19 = load i32, i32* %count, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %segmentcoords, i32 0, i64 %idxprom
  %20 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %position = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %20, i32 0, i32 0
  %21 = bitcast %struct._GimpCoords* %arrayidx to i8*
  %22 = bitcast %struct._GimpCoords* %position to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 64, i32 8, i1 false)
  %23 = load i32, i32* %count, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %count, align 4
  %24 = load i32, i32* %count, align 4
  %cmp11 = icmp eq i32 %24, 4
  br i1 %cmp11, label %if.then.12, label %if.end.19

if.then.12:                                       ; preds = %for.body.9
  %arrayidx13 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %segmentcoords, i32 0, i64 0
  %arrayidx14 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %segmentcoords, i32 0, i64 1
  %arrayidx15 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %segmentcoords, i32 0, i64 2
  %arrayidx16 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %segmentcoords, i32 0, i64 3
  %25 = load double, double* %precision.addr, align 8
  call void @gimp_coords_interpolate_bezier(%struct._GimpCoords* byval align 8 %arrayidx13, %struct._GimpCoords* byval align 8 %arrayidx14, %struct._GimpCoords* byval align 8 %arrayidx15, %struct._GimpCoords* byval align 8 %arrayidx16, double %25, %struct._GArray** %ret_coords, %struct._GArray** null)
  %arrayidx17 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %segmentcoords, i32 0, i64 0
  %arrayidx18 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %segmentcoords, i32 0, i64 3
  %26 = bitcast %struct._GimpCoords* %arrayidx17 to i8*
  %27 = bitcast %struct._GimpCoords* %arrayidx18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 64, i32 8, i1 false)
  store i32 1, i32* %count, align 4
  store i32 1, i32* %need_endpoint, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.12, %for.body.9
  br label %for.inc.20

for.inc.20:                                       ; preds = %if.end.19
  %28 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %tobool21 = icmp ne %struct._GList* %28, null
  br i1 %tobool21, label %cond.true.22, label %cond.false.24

cond.true.22:                                     ; preds = %for.inc.20
  %29 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %next23 = getelementptr inbounds %struct._GList, %struct._GList* %29, i32 0, i32 1
  %30 = load %struct._GList*, %struct._GList** %next23, align 8
  br label %cond.end.25

cond.false.24:                                    ; preds = %for.inc.20
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.24, %cond.true.22
  %cond26 = phi %struct._GList* [ %30, %cond.true.22 ], [ null, %cond.false.24 ]
  store %struct._GList* %cond26, %struct._GList** %anchorlist, align 8
  br label %for.cond.7

for.end.27:                                       ; preds = %for.cond.7
  %31 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %closed = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %31, i32 0, i32 3
  %32 = load i32, i32* %closed, align 4
  %tobool28 = icmp ne i32 %32, 0
  br i1 %tobool28, label %land.lhs.true, label %if.end.55

land.lhs.true:                                    ; preds = %for.end.27
  %33 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors29 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %33, i32 0, i32 2
  %34 = load %struct._GList*, %struct._GList** %anchors29, align 8
  %tobool30 = icmp ne %struct._GList* %34, null
  br i1 %tobool30, label %if.then.31, label %if.end.55

if.then.31:                                       ; preds = %land.lhs.true
  %35 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors32 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %35, i32 0, i32 2
  %36 = load %struct._GList*, %struct._GList** %anchors32, align 8
  store %struct._GList* %36, %struct._GList** %anchorlist, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.31
  %37 = load i32, i32* %count, align 4
  %cmp33 = icmp slt i32 %37, 3
  br i1 %cmp33, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %38 = load i32, i32* %count, align 4
  %idxprom34 = sext i32 %38 to i64
  %arrayidx35 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %segmentcoords, i32 0, i64 %idxprom34
  %39 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %data36 = getelementptr inbounds %struct._GList, %struct._GList* %39, i32 0, i32 0
  %40 = load i8*, i8** %data36, align 8
  %41 = bitcast i8* %40 to %struct._GimpAnchor*
  %position37 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %41, i32 0, i32 0
  %42 = bitcast %struct._GimpCoords* %arrayidx35 to i8*
  %43 = bitcast %struct._GimpCoords* %position37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 64, i32 8, i1 false)
  %44 = load i32, i32* %count, align 4
  %inc38 = add nsw i32 %44, 1
  store i32 %inc38, i32* %count, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %45 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %tobool39 = icmp ne %struct._GList* %45, null
  br i1 %tobool39, label %cond.true.40, label %cond.false.42

cond.true.40:                                     ; preds = %while.end
  %46 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %next41 = getelementptr inbounds %struct._GList, %struct._GList* %46, i32 0, i32 1
  %47 = load %struct._GList*, %struct._GList** %next41, align 8
  br label %cond.end.43

cond.false.42:                                    ; preds = %while.end
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.42, %cond.true.40
  %cond44 = phi %struct._GList* [ %47, %cond.true.40 ], [ null, %cond.false.42 ]
  store %struct._GList* %cond44, %struct._GList** %anchorlist, align 8
  %48 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %tobool45 = icmp ne %struct._GList* %48, null
  br i1 %tobool45, label %if.then.46, label %if.end.50

if.then.46:                                       ; preds = %cond.end.43
  %arrayidx47 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %segmentcoords, i32 0, i64 3
  %49 = load %struct._GList*, %struct._GList** %anchorlist, align 8
  %data48 = getelementptr inbounds %struct._GList, %struct._GList* %49, i32 0, i32 0
  %50 = load i8*, i8** %data48, align 8
  %51 = bitcast i8* %50 to %struct._GimpAnchor*
  %position49 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %51, i32 0, i32 0
  %52 = bitcast %struct._GimpCoords* %arrayidx47 to i8*
  %53 = bitcast %struct._GimpCoords* %position49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* %53, i64 64, i32 8, i1 false)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.46, %cond.end.43
  %arrayidx51 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %segmentcoords, i32 0, i64 0
  %arrayidx52 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %segmentcoords, i32 0, i64 1
  %arrayidx53 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %segmentcoords, i32 0, i64 2
  %arrayidx54 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %segmentcoords, i32 0, i64 3
  %54 = load double, double* %precision.addr, align 8
  call void @gimp_coords_interpolate_bezier(%struct._GimpCoords* byval align 8 %arrayidx51, %struct._GimpCoords* byval align 8 %arrayidx52, %struct._GimpCoords* byval align 8 %arrayidx53, %struct._GimpCoords* byval align 8 %arrayidx54, double %54, %struct._GArray** %ret_coords, %struct._GArray** null)
  store i32 1, i32* %need_endpoint, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.50, %land.lhs.true, %for.end.27
  %55 = load i32, i32* %need_endpoint, align 4
  %tobool56 = icmp ne i32 %55, 0
  br i1 %tobool56, label %if.then.57, label %if.end.60

if.then.57:                                       ; preds = %if.end.55
  %56 = load %struct._GArray*, %struct._GArray** %ret_coords, align 8
  %arrayidx58 = getelementptr inbounds [4 x %struct._GimpCoords], [4 x %struct._GimpCoords]* %segmentcoords, i32 0, i64 3
  %57 = bitcast %struct._GimpCoords* %arrayidx58 to i8*
  %call59 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %56, i8* %57, i32 1)
  store %struct._GArray* %call59, %struct._GArray** %ret_coords, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.57, %if.end.55
  %58 = load i32*, i32** %ret_closed.addr, align 8
  %tobool61 = icmp ne i32* %58, null
  br i1 %tobool61, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %if.end.60
  %59 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %closed63 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %59, i32 0, i32 3
  %60 = load i32, i32* %closed63, align 4
  %61 = load i32*, i32** %ret_closed.addr, align 8
  store i32 %60, i32* %61, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %if.end.60
  %62 = load %struct._GArray*, %struct._GArray** %ret_coords, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %62, i32 0, i32 1
  %63 = load i32, i32* %len, align 4
  %cmp65 = icmp eq i32 %63, 0
  br i1 %cmp65, label %if.then.66, label %if.end.68

if.then.66:                                       ; preds = %if.end.64
  %64 = load %struct._GArray*, %struct._GArray** %ret_coords, align 8
  %call67 = call i8* @g_array_free(%struct._GArray* %64, i32 1)
  store %struct._GArray* null, %struct._GArray** %ret_coords, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.66, %if.end.64
  %65 = load %struct._GArray*, %struct._GArray** %ret_coords, align 8
  store %struct._GArray* %65, %struct._GArray** %retval
  br label %return

return:                                           ; preds = %if.end.68, %if.end
  %66 = load %struct._GArray*, %struct._GArray** %retval
  ret %struct._GArray* %66
}

; Function Attrs: nounwind uwtable
define internal %struct.cairo_path* @gimp_bezier_stroke_make_bezier(%struct._GimpStroke* %stroke) #3 {
entry:
  %retval = alloca %struct.cairo_path*, align 8
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %points = alloca %struct._GArray*, align 8
  %cmd_array = alloca %struct._GArray*, align 8
  %bezdesc = alloca %struct.cairo_path*, align 8
  %pathdata = alloca %union._cairo_path_data_t, align 8
  %num_cmds = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %call = call %struct._GArray* @gimp_stroke_control_points_get(%struct._GimpStroke* %0, i32* null)
  store %struct._GArray* %call, %struct._GArray** %points, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct._GArray*, %struct._GArray** %points, align 8
  %tobool = icmp ne %struct._GArray* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %2 = load %struct._GArray*, %struct._GArray** %points, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %2, i32 0, i32 1
  %3 = load i32, i32* %len, align 4
  %rem = urem i32 %3, 3
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_bezier_stroke_make_bezier, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i32 0, i32 0))
  store %struct.cairo_path* null, %struct.cairo_path** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load %struct._GArray*, %struct._GArray** %points, align 8
  %len1 = getelementptr inbounds %struct._GArray, %struct._GArray* %4, i32 0, i32 1
  %5 = load i32, i32* %len1, align 4
  %cmp2 = icmp ult i32 %5, 3
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %do.end
  store %struct.cairo_path* null, %struct.cairo_path** %retval
  br label %return

if.end.4:                                         ; preds = %do.end
  %6 = load %struct._GArray*, %struct._GArray** %points, align 8
  %len5 = getelementptr inbounds %struct._GArray, %struct._GArray* %6, i32 0, i32 1
  %7 = load i32, i32* %len5, align 4
  %div = udiv i32 %7, 3
  %sub = sub i32 %div, 1
  %mul = mul i32 %sub, 4
  %add = add i32 2, %mul
  store i32 %add, i32* %num_cmds, align 4
  %8 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %closed = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %8, i32 0, i32 3
  %9 = load i32, i32* %closed, align 4
  %tobool6 = icmp ne i32 %9, 0
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.4
  %10 = load i32, i32* %num_cmds, align 4
  %add8 = add nsw i32 %10, 5
  store i32 %add8, i32* %num_cmds, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end.4
  %11 = load i32, i32* %num_cmds, align 4
  %call10 = call %struct._GArray* @g_array_sized_new(i32 0, i32 0, i32 16, i32 %11)
  store %struct._GArray* %call10, %struct._GArray** %cmd_array, align 8
  %header = bitcast %union._cairo_path_data_t* %pathdata to %struct.anon*
  %type = getelementptr inbounds %struct.anon, %struct.anon* %header, i32 0, i32 0
  store i32 0, i32* %type, align 4
  %header11 = bitcast %union._cairo_path_data_t* %pathdata to %struct.anon*
  %length = getelementptr inbounds %struct.anon, %struct.anon* %header11, i32 0, i32 1
  store i32 2, i32* %length, align 4
  %12 = load %struct._GArray*, %struct._GArray** %cmd_array, align 8
  %13 = bitcast %union._cairo_path_data_t* %pathdata to i8*
  %call12 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %12, i8* %13, i32 1)
  %14 = load %struct._GArray*, %struct._GArray** %points, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %14, i32 0, i32 0
  %15 = load i8*, i8** %data, align 8
  %16 = bitcast i8* %15 to %struct._GimpAnchor*
  %arrayidx = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %16, i64 1
  %position = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %arrayidx, i32 0, i32 0
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position, i32 0, i32 0
  %17 = load double, double* %x, align 8
  %point = bitcast %union._cairo_path_data_t* %pathdata to %struct.anon.0*
  %x13 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %point, i32 0, i32 0
  store double %17, double* %x13, align 8
  %18 = load %struct._GArray*, %struct._GArray** %points, align 8
  %data14 = getelementptr inbounds %struct._GArray, %struct._GArray* %18, i32 0, i32 0
  %19 = load i8*, i8** %data14, align 8
  %20 = bitcast i8* %19 to %struct._GimpAnchor*
  %arrayidx15 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %20, i64 1
  %position16 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %arrayidx15, i32 0, i32 0
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position16, i32 0, i32 1
  %21 = load double, double* %y, align 8
  %point17 = bitcast %union._cairo_path_data_t* %pathdata to %struct.anon.0*
  %y18 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %point17, i32 0, i32 1
  store double %21, double* %y18, align 8
  %22 = load %struct._GArray*, %struct._GArray** %cmd_array, align 8
  %23 = bitcast %union._cairo_path_data_t* %pathdata to i8*
  %call19 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %22, i8* %23, i32 1)
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %24 = load i32, i32* %i, align 4
  %add20 = add nsw i32 %24, 2
  %25 = load %struct._GArray*, %struct._GArray** %points, align 8
  %len21 = getelementptr inbounds %struct._GArray, %struct._GArray* %25, i32 0, i32 1
  %26 = load i32, i32* %len21, align 4
  %cmp22 = icmp ult i32 %add20, %26
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %header23 = bitcast %union._cairo_path_data_t* %pathdata to %struct.anon*
  %type24 = getelementptr inbounds %struct.anon, %struct.anon* %header23, i32 0, i32 0
  store i32 2, i32* %type24, align 4
  %header25 = bitcast %union._cairo_path_data_t* %pathdata to %struct.anon*
  %length26 = getelementptr inbounds %struct.anon, %struct.anon* %header25, i32 0, i32 1
  store i32 4, i32* %length26, align 4
  %27 = load %struct._GArray*, %struct._GArray** %cmd_array, align 8
  %28 = bitcast %union._cairo_path_data_t* %pathdata to i8*
  %call27 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %27, i8* %28, i32 1)
  %29 = load i32, i32* %i, align 4
  %idxprom = sext i32 %29 to i64
  %30 = load %struct._GArray*, %struct._GArray** %points, align 8
  %data28 = getelementptr inbounds %struct._GArray, %struct._GArray* %30, i32 0, i32 0
  %31 = load i8*, i8** %data28, align 8
  %32 = bitcast i8* %31 to %struct._GimpAnchor*
  %arrayidx29 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %32, i64 %idxprom
  %position30 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %arrayidx29, i32 0, i32 0
  %x31 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position30, i32 0, i32 0
  %33 = load double, double* %x31, align 8
  %point32 = bitcast %union._cairo_path_data_t* %pathdata to %struct.anon.0*
  %x33 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %point32, i32 0, i32 0
  store double %33, double* %x33, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %34 to i64
  %35 = load %struct._GArray*, %struct._GArray** %points, align 8
  %data35 = getelementptr inbounds %struct._GArray, %struct._GArray* %35, i32 0, i32 0
  %36 = load i8*, i8** %data35, align 8
  %37 = bitcast i8* %36 to %struct._GimpAnchor*
  %arrayidx36 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %37, i64 %idxprom34
  %position37 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %arrayidx36, i32 0, i32 0
  %y38 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position37, i32 0, i32 1
  %38 = load double, double* %y38, align 8
  %point39 = bitcast %union._cairo_path_data_t* %pathdata to %struct.anon.0*
  %y40 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %point39, i32 0, i32 1
  store double %38, double* %y40, align 8
  %39 = load %struct._GArray*, %struct._GArray** %cmd_array, align 8
  %40 = bitcast %union._cairo_path_data_t* %pathdata to i8*
  %call41 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %39, i8* %40, i32 1)
  %41 = load i32, i32* %i, align 4
  %add42 = add nsw i32 %41, 1
  %idxprom43 = sext i32 %add42 to i64
  %42 = load %struct._GArray*, %struct._GArray** %points, align 8
  %data44 = getelementptr inbounds %struct._GArray, %struct._GArray* %42, i32 0, i32 0
  %43 = load i8*, i8** %data44, align 8
  %44 = bitcast i8* %43 to %struct._GimpAnchor*
  %arrayidx45 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %44, i64 %idxprom43
  %position46 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %arrayidx45, i32 0, i32 0
  %x47 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position46, i32 0, i32 0
  %45 = load double, double* %x47, align 8
  %point48 = bitcast %union._cairo_path_data_t* %pathdata to %struct.anon.0*
  %x49 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %point48, i32 0, i32 0
  store double %45, double* %x49, align 8
  %46 = load i32, i32* %i, align 4
  %add50 = add nsw i32 %46, 1
  %idxprom51 = sext i32 %add50 to i64
  %47 = load %struct._GArray*, %struct._GArray** %points, align 8
  %data52 = getelementptr inbounds %struct._GArray, %struct._GArray* %47, i32 0, i32 0
  %48 = load i8*, i8** %data52, align 8
  %49 = bitcast i8* %48 to %struct._GimpAnchor*
  %arrayidx53 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %49, i64 %idxprom51
  %position54 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %arrayidx53, i32 0, i32 0
  %y55 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position54, i32 0, i32 1
  %50 = load double, double* %y55, align 8
  %point56 = bitcast %union._cairo_path_data_t* %pathdata to %struct.anon.0*
  %y57 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %point56, i32 0, i32 1
  store double %50, double* %y57, align 8
  %51 = load %struct._GArray*, %struct._GArray** %cmd_array, align 8
  %52 = bitcast %union._cairo_path_data_t* %pathdata to i8*
  %call58 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %51, i8* %52, i32 1)
  %53 = load i32, i32* %i, align 4
  %add59 = add nsw i32 %53, 2
  %idxprom60 = sext i32 %add59 to i64
  %54 = load %struct._GArray*, %struct._GArray** %points, align 8
  %data61 = getelementptr inbounds %struct._GArray, %struct._GArray* %54, i32 0, i32 0
  %55 = load i8*, i8** %data61, align 8
  %56 = bitcast i8* %55 to %struct._GimpAnchor*
  %arrayidx62 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %56, i64 %idxprom60
  %position63 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %arrayidx62, i32 0, i32 0
  %x64 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position63, i32 0, i32 0
  %57 = load double, double* %x64, align 8
  %point65 = bitcast %union._cairo_path_data_t* %pathdata to %struct.anon.0*
  %x66 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %point65, i32 0, i32 0
  store double %57, double* %x66, align 8
  %58 = load i32, i32* %i, align 4
  %add67 = add nsw i32 %58, 2
  %idxprom68 = sext i32 %add67 to i64
  %59 = load %struct._GArray*, %struct._GArray** %points, align 8
  %data69 = getelementptr inbounds %struct._GArray, %struct._GArray* %59, i32 0, i32 0
  %60 = load i8*, i8** %data69, align 8
  %61 = bitcast i8* %60 to %struct._GimpAnchor*
  %arrayidx70 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %61, i64 %idxprom68
  %position71 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %arrayidx70, i32 0, i32 0
  %y72 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position71, i32 0, i32 1
  %62 = load double, double* %y72, align 8
  %point73 = bitcast %union._cairo_path_data_t* %pathdata to %struct.anon.0*
  %y74 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %point73, i32 0, i32 1
  store double %62, double* %y74, align 8
  %63 = load %struct._GArray*, %struct._GArray** %cmd_array, align 8
  %64 = bitcast %union._cairo_path_data_t* %pathdata to i8*
  %call75 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %63, i8* %64, i32 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %65 = load i32, i32* %i, align 4
  %add76 = add nsw i32 %65, 3
  store i32 %add76, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %66 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %closed77 = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %66, i32 0, i32 3
  %67 = load i32, i32* %closed77, align 4
  %tobool78 = icmp ne i32 %67, 0
  br i1 %tobool78, label %if.then.79, label %if.end.131

if.then.79:                                       ; preds = %for.end
  %header80 = bitcast %union._cairo_path_data_t* %pathdata to %struct.anon*
  %type81 = getelementptr inbounds %struct.anon, %struct.anon* %header80, i32 0, i32 0
  store i32 2, i32* %type81, align 4
  %header82 = bitcast %union._cairo_path_data_t* %pathdata to %struct.anon*
  %length83 = getelementptr inbounds %struct.anon, %struct.anon* %header82, i32 0, i32 1
  store i32 4, i32* %length83, align 4
  %68 = load %struct._GArray*, %struct._GArray** %cmd_array, align 8
  %69 = bitcast %union._cairo_path_data_t* %pathdata to i8*
  %call84 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %68, i8* %69, i32 1)
  %70 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %70 to i64
  %71 = load %struct._GArray*, %struct._GArray** %points, align 8
  %data86 = getelementptr inbounds %struct._GArray, %struct._GArray* %71, i32 0, i32 0
  %72 = load i8*, i8** %data86, align 8
  %73 = bitcast i8* %72 to %struct._GimpAnchor*
  %arrayidx87 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %73, i64 %idxprom85
  %position88 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %arrayidx87, i32 0, i32 0
  %x89 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position88, i32 0, i32 0
  %74 = load double, double* %x89, align 8
  %point90 = bitcast %union._cairo_path_data_t* %pathdata to %struct.anon.0*
  %x91 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %point90, i32 0, i32 0
  store double %74, double* %x91, align 8
  %75 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %75 to i64
  %76 = load %struct._GArray*, %struct._GArray** %points, align 8
  %data93 = getelementptr inbounds %struct._GArray, %struct._GArray* %76, i32 0, i32 0
  %77 = load i8*, i8** %data93, align 8
  %78 = bitcast i8* %77 to %struct._GimpAnchor*
  %arrayidx94 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %78, i64 %idxprom92
  %position95 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %arrayidx94, i32 0, i32 0
  %y96 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position95, i32 0, i32 1
  %79 = load double, double* %y96, align 8
  %point97 = bitcast %union._cairo_path_data_t* %pathdata to %struct.anon.0*
  %y98 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %point97, i32 0, i32 1
  store double %79, double* %y98, align 8
  %80 = load %struct._GArray*, %struct._GArray** %cmd_array, align 8
  %81 = bitcast %union._cairo_path_data_t* %pathdata to i8*
  %call99 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %80, i8* %81, i32 1)
  %82 = load %struct._GArray*, %struct._GArray** %points, align 8
  %data100 = getelementptr inbounds %struct._GArray, %struct._GArray* %82, i32 0, i32 0
  %83 = load i8*, i8** %data100, align 8
  %84 = bitcast i8* %83 to %struct._GimpAnchor*
  %arrayidx101 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %84, i64 0
  %position102 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %arrayidx101, i32 0, i32 0
  %x103 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position102, i32 0, i32 0
  %85 = load double, double* %x103, align 8
  %point104 = bitcast %union._cairo_path_data_t* %pathdata to %struct.anon.0*
  %x105 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %point104, i32 0, i32 0
  store double %85, double* %x105, align 8
  %86 = load %struct._GArray*, %struct._GArray** %points, align 8
  %data106 = getelementptr inbounds %struct._GArray, %struct._GArray* %86, i32 0, i32 0
  %87 = load i8*, i8** %data106, align 8
  %88 = bitcast i8* %87 to %struct._GimpAnchor*
  %arrayidx107 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %88, i64 0
  %position108 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %arrayidx107, i32 0, i32 0
  %y109 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position108, i32 0, i32 1
  %89 = load double, double* %y109, align 8
  %point110 = bitcast %union._cairo_path_data_t* %pathdata to %struct.anon.0*
  %y111 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %point110, i32 0, i32 1
  store double %89, double* %y111, align 8
  %90 = load %struct._GArray*, %struct._GArray** %cmd_array, align 8
  %91 = bitcast %union._cairo_path_data_t* %pathdata to i8*
  %call112 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %90, i8* %91, i32 1)
  %92 = load %struct._GArray*, %struct._GArray** %points, align 8
  %data113 = getelementptr inbounds %struct._GArray, %struct._GArray* %92, i32 0, i32 0
  %93 = load i8*, i8** %data113, align 8
  %94 = bitcast i8* %93 to %struct._GimpAnchor*
  %arrayidx114 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %94, i64 1
  %position115 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %arrayidx114, i32 0, i32 0
  %x116 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position115, i32 0, i32 0
  %95 = load double, double* %x116, align 8
  %point117 = bitcast %union._cairo_path_data_t* %pathdata to %struct.anon.0*
  %x118 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %point117, i32 0, i32 0
  store double %95, double* %x118, align 8
  %96 = load %struct._GArray*, %struct._GArray** %points, align 8
  %data119 = getelementptr inbounds %struct._GArray, %struct._GArray* %96, i32 0, i32 0
  %97 = load i8*, i8** %data119, align 8
  %98 = bitcast i8* %97 to %struct._GimpAnchor*
  %arrayidx120 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %98, i64 1
  %position121 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %arrayidx120, i32 0, i32 0
  %y122 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %position121, i32 0, i32 1
  %99 = load double, double* %y122, align 8
  %point123 = bitcast %union._cairo_path_data_t* %pathdata to %struct.anon.0*
  %y124 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %point123, i32 0, i32 1
  store double %99, double* %y124, align 8
  %100 = load %struct._GArray*, %struct._GArray** %cmd_array, align 8
  %101 = bitcast %union._cairo_path_data_t* %pathdata to i8*
  %call125 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %100, i8* %101, i32 1)
  %header126 = bitcast %union._cairo_path_data_t* %pathdata to %struct.anon*
  %type127 = getelementptr inbounds %struct.anon, %struct.anon* %header126, i32 0, i32 0
  store i32 3, i32* %type127, align 4
  %header128 = bitcast %union._cairo_path_data_t* %pathdata to %struct.anon*
  %length129 = getelementptr inbounds %struct.anon, %struct.anon* %header128, i32 0, i32 1
  store i32 1, i32* %length129, align 4
  %102 = load %struct._GArray*, %struct._GArray** %cmd_array, align 8
  %103 = bitcast %union._cairo_path_data_t* %pathdata to i8*
  %call130 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %102, i8* %103, i32 1)
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.79, %for.end
  %104 = load %struct._GArray*, %struct._GArray** %cmd_array, align 8
  %len132 = getelementptr inbounds %struct._GArray, %struct._GArray* %104, i32 0, i32 1
  %105 = load i32, i32* %len132, align 4
  %106 = load i32, i32* %num_cmds, align 4
  %cmp133 = icmp ne i32 %105, %106
  br i1 %cmp133, label %if.then.134, label %if.end.136

if.then.134:                                      ; preds = %if.end.131
  %107 = load %struct._GArray*, %struct._GArray** %cmd_array, align 8
  %len135 = getelementptr inbounds %struct._GArray, %struct._GArray* %107, i32 0, i32 1
  %108 = load i32, i32* %len135, align 4
  %109 = load i32, i32* %num_cmds, align 4
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.33, i32 0, i32 0), i32 %108, i32 %109)
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.134, %if.end.131
  %110 = load %struct._GArray*, %struct._GArray** %cmd_array, align 8
  %data137 = getelementptr inbounds %struct._GArray, %struct._GArray* %110, i32 0, i32 0
  %111 = load i8*, i8** %data137, align 8
  %112 = bitcast i8* %111 to %union._cairo_path_data_t*
  %113 = load %struct._GArray*, %struct._GArray** %cmd_array, align 8
  %len138 = getelementptr inbounds %struct._GArray, %struct._GArray* %113, i32 0, i32 1
  %114 = load i32, i32* %len138, align 4
  %call139 = call %struct.cairo_path* @gimp_bezier_desc_new(%union._cairo_path_data_t* %112, i32 %114)
  store %struct.cairo_path* %call139, %struct.cairo_path** %bezdesc, align 8
  %115 = load %struct._GArray*, %struct._GArray** %points, align 8
  %call140 = call i8* @g_array_free(%struct._GArray* %115, i32 1)
  %116 = load %struct._GArray*, %struct._GArray** %cmd_array, align 8
  %call141 = call i8* @g_array_free(%struct._GArray* %116, i32 0)
  %117 = load %struct.cairo_path*, %struct.cairo_path** %bezdesc, align 8
  store %struct.cairo_path* %117, %struct.cairo_path** %retval
  br label %return

return:                                           ; preds = %if.end.136, %if.then.3, %if.else
  %118 = load %struct.cairo_path*, %struct.cairo_path** %retval
  ret %struct.cairo_path* %118
}

; Function Attrs: nounwind uwtable
define internal double @gimp_bezier_stroke_segment_nearest_point_get(%struct._GimpCoords* %beziercoords, %struct._GimpCoords* %coord, double %precision, %struct._GimpCoords* %ret_point, double* %ret_pos, i32 %depth) #3 {
entry:
  %retval = alloca double, align 8
  %beziercoords.addr = alloca %struct._GimpCoords*, align 8
  %coord.addr = alloca %struct._GimpCoords*, align 8
  %precision.addr = alloca double, align 8
  %ret_point.addr = alloca %struct._GimpCoords*, align 8
  %ret_pos.addr = alloca double*, align 8
  %depth.addr = alloca i32, align 4
  %subdivided = alloca [8 x %struct._GimpCoords], align 16
  %dist1 = alloca double, align 8
  %dist2 = alloca double, align 8
  %point1 = alloca %struct._GimpCoords, align 8
  %point2 = alloca %struct._GimpCoords, align 8
  %pos1 = alloca double, align 8
  %pos2 = alloca double, align 8
  %line = alloca %struct._GimpCoords, align 8
  %dcoord = alloca %struct._GimpCoords, align 8
  %length2 = alloca double, align 8
  %scalar = alloca double, align 8
  %i = alloca i32, align 4
  store %struct._GimpCoords* %beziercoords, %struct._GimpCoords** %beziercoords.addr, align 8
  store %struct._GimpCoords* %coord, %struct._GimpCoords** %coord.addr, align 8
  store double %precision, double* %precision.addr, align 8
  store %struct._GimpCoords* %ret_point, %struct._GimpCoords** %ret_point.addr, align 8
  store double* %ret_pos, double** %ret_pos.addr, align 8
  store i32 %depth, i32* %depth.addr, align 4
  %0 = load %struct._GimpCoords*, %struct._GimpCoords** %beziercoords.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %0, i64 1
  %1 = load %struct._GimpCoords*, %struct._GimpCoords** %beziercoords.addr, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %1, i64 0
  call void @gimp_coords_difference(%struct._GimpCoords* %arrayidx, %struct._GimpCoords* %arrayidx1, %struct._GimpCoords* %point1)
  %2 = load %struct._GimpCoords*, %struct._GimpCoords** %beziercoords.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %2, i64 3
  %3 = load %struct._GimpCoords*, %struct._GimpCoords** %beziercoords.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %3, i64 2
  call void @gimp_coords_difference(%struct._GimpCoords* %arrayidx2, %struct._GimpCoords* %arrayidx3, %struct._GimpCoords* %point2)
  %4 = load i32, i32* %depth.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct._GimpCoords*, %struct._GimpCoords** %beziercoords.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %5, i64 0
  %6 = load %struct._GimpCoords*, %struct._GimpCoords** %beziercoords.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %6, i64 1
  %7 = load %struct._GimpCoords*, %struct._GimpCoords** %beziercoords.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %7, i64 2
  %8 = load %struct._GimpCoords*, %struct._GimpCoords** %beziercoords.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %8, i64 3
  %9 = load double, double* %precision.addr, align 8
  %call = call i32 @gimp_coords_bezier_is_straight(%struct._GimpCoords* byval align 8 %arrayidx4, %struct._GimpCoords* byval align 8 %arrayidx5, %struct._GimpCoords* byval align 8 %arrayidx6, %struct._GimpCoords* byval align 8 %arrayidx7, double %9)
  %tobool8 = icmp ne i32 %call, 0
  br i1 %tobool8, label %land.lhs.true, label %if.end.36

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call9 = call double @gimp_coords_length_squared(%struct._GimpCoords* %point1)
  %10 = load double, double* %precision.addr, align 8
  %cmp = fcmp olt double %call9, %10
  br i1 %cmp, label %land.lhs.true.10, label %if.end.36

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %call11 = call double @gimp_coords_length_squared(%struct._GimpCoords* %point2)
  %11 = load double, double* %precision.addr, align 8
  %cmp12 = fcmp olt double %call11, %11
  br i1 %cmp12, label %if.then, label %if.end.36

if.then:                                          ; preds = %land.lhs.true.10, %entry
  %12 = load %struct._GimpCoords*, %struct._GimpCoords** %beziercoords.addr, align 8
  %arrayidx13 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %12, i64 3
  %13 = load %struct._GimpCoords*, %struct._GimpCoords** %beziercoords.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %13, i64 0
  call void @gimp_coords_difference(%struct._GimpCoords* %arrayidx13, %struct._GimpCoords* %arrayidx14, %struct._GimpCoords* %line)
  %14 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %15 = load %struct._GimpCoords*, %struct._GimpCoords** %beziercoords.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %15, i64 0
  call void @gimp_coords_difference(%struct._GimpCoords* %14, %struct._GimpCoords* %arrayidx15, %struct._GimpCoords* %dcoord)
  %call16 = call double @gimp_coords_scalarprod(%struct._GimpCoords* %line, %struct._GimpCoords* %line)
  store double %call16, double* %length2, align 8
  %call17 = call double @gimp_coords_scalarprod(%struct._GimpCoords* %line, %struct._GimpCoords* %dcoord)
  %16 = load double, double* %length2, align 8
  %div = fdiv double %call17, %16
  store double %div, double* %scalar, align 8
  %17 = load double, double* %scalar, align 8
  %cmp18 = fcmp ogt double %17, 1.000000e+00
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end.22

cond.false:                                       ; preds = %if.then
  %18 = load double, double* %scalar, align 8
  %cmp19 = fcmp olt double %18, 0.000000e+00
  br i1 %cmp19, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %cond.false
  br label %cond.end

cond.false.21:                                    ; preds = %cond.false
  %19 = load double, double* %scalar, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.21, %cond.true.20
  %cond = phi double [ 0.000000e+00, %cond.true.20 ], [ %19, %cond.false.21 ]
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.end, %cond.true
  %cond23 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  store double %cond23, double* %scalar, align 8
  store double 5.000000e-01, double* %pos2, align 8
  store double 5.000000e-01, double* %pos1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.22
  %20 = load i32, i32* %i, align 4
  %cmp24 = icmp sle i32 %20, 15
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load double, double* %pos2, align 8
  %mul = fmul double %21, 5.000000e-01
  store double %mul, double* %pos2, align 8
  %22 = load double, double* %pos1, align 8
  %mul25 = fmul double 3.000000e+00, %22
  %23 = load double, double* %pos1, align 8
  %mul26 = fmul double %mul25, %23
  %24 = load double, double* %pos1, align 8
  %sub = fsub double 1.000000e+00, %24
  %mul27 = fmul double %mul26, %sub
  %25 = load double, double* %pos1, align 8
  %26 = load double, double* %pos1, align 8
  %mul28 = fmul double %25, %26
  %27 = load double, double* %pos1, align 8
  %mul29 = fmul double %mul28, %27
  %add = fadd double %mul27, %mul29
  %28 = load double, double* %scalar, align 8
  %cmp30 = fcmp olt double %add, %28
  br i1 %cmp30, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %for.body
  %29 = load double, double* %pos2, align 8
  %30 = load double, double* %pos1, align 8
  %add32 = fadd double %30, %29
  store double %add32, double* %pos1, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %31 = load double, double* %pos2, align 8
  %32 = load double, double* %pos1, align 8
  %sub33 = fsub double %32, %31
  store double %sub33, double* %pos1, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.31
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %33 = load i32, i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load double, double* %pos1, align 8
  %35 = load double*, double** %ret_pos.addr, align 8
  store double %34, double* %35, align 8
  %36 = load %struct._GimpCoords*, %struct._GimpCoords** %beziercoords.addr, align 8
  %arrayidx34 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %36, i64 0
  %37 = load double, double* %scalar, align 8
  %38 = load %struct._GimpCoords*, %struct._GimpCoords** %ret_point.addr, align 8
  call void @gimp_coords_mix(double 1.000000e+00, %struct._GimpCoords* %arrayidx34, double %37, %struct._GimpCoords* %line, %struct._GimpCoords* %38)
  %39 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %40 = load %struct._GimpCoords*, %struct._GimpCoords** %ret_point.addr, align 8
  call void @gimp_coords_difference(%struct._GimpCoords* %39, %struct._GimpCoords* %40, %struct._GimpCoords* %dcoord)
  %call35 = call double @gimp_coords_length(%struct._GimpCoords* %dcoord)
  store double %call35, double* %retval
  br label %return

if.end.36:                                        ; preds = %land.lhs.true.10, %land.lhs.true, %lor.lhs.false
  %arrayidx37 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 0
  %41 = load %struct._GimpCoords*, %struct._GimpCoords** %beziercoords.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %41, i64 0
  %42 = bitcast %struct._GimpCoords* %arrayidx37 to i8*
  %43 = bitcast %struct._GimpCoords* %arrayidx38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 64, i32 8, i1 false)
  %arrayidx39 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 6
  %44 = load %struct._GimpCoords*, %struct._GimpCoords** %beziercoords.addr, align 8
  %arrayidx40 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %44, i64 3
  %45 = bitcast %struct._GimpCoords* %arrayidx39 to i8*
  %46 = bitcast %struct._GimpCoords* %arrayidx40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 64, i32 8, i1 false)
  %47 = load %struct._GimpCoords*, %struct._GimpCoords** %beziercoords.addr, align 8
  %arrayidx41 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %47, i64 0
  %48 = load %struct._GimpCoords*, %struct._GimpCoords** %beziercoords.addr, align 8
  %arrayidx42 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %48, i64 1
  %arrayidx43 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 1
  call void @gimp_coords_average(%struct._GimpCoords* %arrayidx41, %struct._GimpCoords* %arrayidx42, %struct._GimpCoords* %arrayidx43)
  %49 = load %struct._GimpCoords*, %struct._GimpCoords** %beziercoords.addr, align 8
  %arrayidx44 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %49, i64 1
  %50 = load %struct._GimpCoords*, %struct._GimpCoords** %beziercoords.addr, align 8
  %arrayidx45 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %50, i64 2
  %arrayidx46 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 7
  call void @gimp_coords_average(%struct._GimpCoords* %arrayidx44, %struct._GimpCoords* %arrayidx45, %struct._GimpCoords* %arrayidx46)
  %51 = load %struct._GimpCoords*, %struct._GimpCoords** %beziercoords.addr, align 8
  %arrayidx47 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %51, i64 2
  %52 = load %struct._GimpCoords*, %struct._GimpCoords** %beziercoords.addr, align 8
  %arrayidx48 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %52, i64 3
  %arrayidx49 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 5
  call void @gimp_coords_average(%struct._GimpCoords* %arrayidx47, %struct._GimpCoords* %arrayidx48, %struct._GimpCoords* %arrayidx49)
  %arrayidx50 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 1
  %arrayidx51 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 7
  %arrayidx52 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 2
  call void @gimp_coords_average(%struct._GimpCoords* %arrayidx50, %struct._GimpCoords* %arrayidx51, %struct._GimpCoords* %arrayidx52)
  %arrayidx53 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 7
  %arrayidx54 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 5
  %arrayidx55 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 4
  call void @gimp_coords_average(%struct._GimpCoords* %arrayidx53, %struct._GimpCoords* %arrayidx54, %struct._GimpCoords* %arrayidx55)
  %arrayidx56 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 2
  %arrayidx57 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 4
  %arrayidx58 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 3
  call void @gimp_coords_average(%struct._GimpCoords* %arrayidx56, %struct._GimpCoords* %arrayidx57, %struct._GimpCoords* %arrayidx58)
  %arrayidx59 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 0
  %53 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %54 = load double, double* %precision.addr, align 8
  %55 = load i32, i32* %depth.addr, align 4
  %sub60 = sub nsw i32 %55, 1
  %call61 = call double @gimp_bezier_stroke_segment_nearest_point_get(%struct._GimpCoords* %arrayidx59, %struct._GimpCoords* %53, double %54, %struct._GimpCoords* %point1, double* %pos1, i32 %sub60)
  store double %call61, double* %dist1, align 8
  %arrayidx62 = getelementptr inbounds [8 x %struct._GimpCoords], [8 x %struct._GimpCoords]* %subdivided, i32 0, i64 3
  %56 = load %struct._GimpCoords*, %struct._GimpCoords** %coord.addr, align 8
  %57 = load double, double* %precision.addr, align 8
  %58 = load i32, i32* %depth.addr, align 4
  %sub63 = sub nsw i32 %58, 1
  %call64 = call double @gimp_bezier_stroke_segment_nearest_point_get(%struct._GimpCoords* %arrayidx62, %struct._GimpCoords* %56, double %57, %struct._GimpCoords* %point2, double* %pos2, i32 %sub63)
  store double %call64, double* %dist2, align 8
  %59 = load double, double* %dist1, align 8
  %60 = load double, double* %dist2, align 8
  %cmp65 = fcmp ole double %59, %60
  br i1 %cmp65, label %if.then.66, label %if.else.68

if.then.66:                                       ; preds = %if.end.36
  %61 = load %struct._GimpCoords*, %struct._GimpCoords** %ret_point.addr, align 8
  %62 = bitcast %struct._GimpCoords* %61 to i8*
  %63 = bitcast %struct._GimpCoords* %point1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %63, i64 64, i32 8, i1 false)
  %64 = load double, double* %pos1, align 8
  %mul67 = fmul double 5.000000e-01, %64
  %65 = load double*, double** %ret_pos.addr, align 8
  store double %mul67, double* %65, align 8
  %66 = load double, double* %dist1, align 8
  store double %66, double* %retval
  br label %return

if.else.68:                                       ; preds = %if.end.36
  %67 = load %struct._GimpCoords*, %struct._GimpCoords** %ret_point.addr, align 8
  %68 = bitcast %struct._GimpCoords* %67 to i8*
  %69 = bitcast %struct._GimpCoords* %point2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 64, i32 8, i1 false)
  %70 = load double, double* %pos2, align 8
  %mul69 = fmul double 5.000000e-01, %70
  %add70 = fadd double 5.000000e-01, %mul69
  %71 = load double*, double** %ret_pos.addr, align 8
  store double %add70, double* %71, align 8
  %72 = load double, double* %dist2, align 8
  store double %72, double* %retval
  br label %return

return:                                           ; preds = %if.else.68, %if.then.66, %for.end
  %73 = load double, double* %retval
  ret double %73
}

declare void @gimp_coords_difference(%struct._GimpCoords*, %struct._GimpCoords*, %struct._GimpCoords*) #1

declare i32 @gimp_coords_bezier_is_straight(%struct._GimpCoords* byval align 8, %struct._GimpCoords* byval align 8, %struct._GimpCoords* byval align 8, %struct._GimpCoords* byval align 8, double) #1

declare double @gimp_coords_length_squared(%struct._GimpCoords*) #1

declare double @gimp_coords_scalarprod(%struct._GimpCoords*, %struct._GimpCoords*) #1

declare double @gimp_coords_length(%struct._GimpCoords*) #1

declare void @gimp_coords_average(%struct._GimpCoords*, %struct._GimpCoords*, %struct._GimpCoords*) #1

; Function Attrs: nounwind uwtable
define internal double @gimp_bezier_stroke_segment_nearest_tangent_get(%struct._GimpCoords* %beziercoords, %struct._GimpCoords* %coord1, %struct._GimpCoords* %coord2, double %precision, %struct._GimpCoords* %ret_point, double* %ret_pos) #3 {
entry:
  %retval = alloca double, align 8
  %beziercoords.addr = alloca %struct._GimpCoords*, align 8
  %coord1.addr = alloca %struct._GimpCoords*, align 8
  %coord2.addr = alloca %struct._GimpCoords*, align 8
  %precision.addr = alloca double, align 8
  %ret_point.addr = alloca %struct._GimpCoords*, align 8
  %ret_pos.addr = alloca double*, align 8
  %ret_coords = alloca %struct._GArray*, align 8
  %ret_params = alloca %struct._GArray*, align 8
  %dir = alloca %struct._GimpCoords, align 8
  %line = alloca %struct._GimpCoords, align 8
  %dcoord = alloca %struct._GimpCoords, align 8
  %min_point = alloca %struct._GimpCoords, align 8
  %min_dist = alloca double, align 8
  %dist = alloca double, align 8
  %length2 = alloca double, align 8
  %scalar = alloca double, align 8
  %ori = alloca double, align 8
  %ori2 = alloca double, align 8
  %i = alloca i32, align 4
  store %struct._GimpCoords* %beziercoords, %struct._GimpCoords** %beziercoords.addr, align 8
  store %struct._GimpCoords* %coord1, %struct._GimpCoords** %coord1.addr, align 8
  store %struct._GimpCoords* %coord2, %struct._GimpCoords** %coord2.addr, align 8
  store double %precision, double* %precision.addr, align 8
  store %struct._GimpCoords* %ret_point, %struct._GimpCoords** %ret_point.addr, align 8
  store double* %ret_pos, double** %ret_pos.addr, align 8
  store double -1.000000e+00, double* %min_dist, align 8
  %0 = load %struct._GimpCoords*, %struct._GimpCoords** %coord2.addr, align 8
  %1 = load %struct._GimpCoords*, %struct._GimpCoords** %coord1.addr, align 8
  call void @gimp_coords_difference(%struct._GimpCoords* %0, %struct._GimpCoords* %1, %struct._GimpCoords* %line)
  %call = call %struct._GArray* @g_array_new(i32 0, i32 0, i32 64)
  store %struct._GArray* %call, %struct._GArray** %ret_coords, align 8
  %call1 = call %struct._GArray* @g_array_new(i32 0, i32 0, i32 8)
  store %struct._GArray* %call1, %struct._GArray** %ret_params, align 8
  %2 = load %struct._GimpCoords*, %struct._GimpCoords** %coord1.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %2, i32 0, i32 0
  %3 = load double, double* %x, align 8
  %4 = load %struct._GimpCoords*, %struct._GimpCoords** %coord1.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %4, i32 0, i32 1
  %5 = load double, double* %y, align 8
  %6 = load %struct._GimpCoords*, %struct._GimpCoords** %coord2.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %6, i32 0, i32 0
  %7 = load double, double* %x2, align 8
  %8 = load %struct._GimpCoords*, %struct._GimpCoords** %coord2.addr, align 8
  %y3 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %8, i32 0, i32 1
  %9 = load double, double* %y3, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), double %3, double %5, double %7, double %9)
  %10 = load %struct._GimpCoords*, %struct._GimpCoords** %beziercoords.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %10, i64 0
  %11 = load %struct._GimpCoords*, %struct._GimpCoords** %beziercoords.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %11, i64 1
  %12 = load %struct._GimpCoords*, %struct._GimpCoords** %beziercoords.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %12, i64 2
  %13 = load %struct._GimpCoords*, %struct._GimpCoords** %beziercoords.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %13, i64 3
  %14 = load double, double* %precision.addr, align 8
  call void @gimp_coords_interpolate_bezier(%struct._GimpCoords* byval align 8 %arrayidx, %struct._GimpCoords* byval align 8 %arrayidx4, %struct._GimpCoords* byval align 8 %arrayidx5, %struct._GimpCoords* byval align 8 %arrayidx6, double %14, %struct._GArray** %ret_coords, %struct._GArray** %ret_params)
  br label %do.body

do.body:                                          ; preds = %entry
  %15 = load %struct._GArray*, %struct._GArray** %ret_coords, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %15, i32 0, i32 1
  %16 = load i32, i32* %len, align 4
  %17 = load %struct._GArray*, %struct._GArray** %ret_params, align 8
  %len7 = getelementptr inbounds %struct._GArray, %struct._GArray* %17, i32 0, i32 1
  %18 = load i32, i32* %len7, align 4
  %cmp = icmp eq i32 %16, %18
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__func__.gimp_bezier_stroke_segment_nearest_tangent_get, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i32 0, i32 0))
  store double -1.000000e+00, double* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %19 = load %struct._GArray*, %struct._GArray** %ret_coords, align 8
  %len8 = getelementptr inbounds %struct._GArray, %struct._GArray* %19, i32 0, i32 1
  %20 = load i32, i32* %len8, align 4
  %cmp9 = icmp ult i32 %20, 2
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %do.end
  store double -1.000000e+00, double* %retval
  br label %return

if.end.11:                                        ; preds = %do.end
  %21 = load %struct._GArray*, %struct._GArray** %ret_coords, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %21, i32 0, i32 0
  %22 = load i8*, i8** %data, align 8
  %23 = bitcast i8* %22 to %struct._GimpCoords*
  %arrayidx12 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %23, i64 1
  %24 = load %struct._GArray*, %struct._GArray** %ret_coords, align 8
  %data13 = getelementptr inbounds %struct._GArray, %struct._GArray* %24, i32 0, i32 0
  %25 = load i8*, i8** %data13, align 8
  %26 = bitcast i8* %25 to %struct._GimpCoords*
  %arrayidx14 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %26, i64 0
  call void @gimp_coords_difference(%struct._GimpCoords* %arrayidx12, %struct._GimpCoords* %arrayidx14, %struct._GimpCoords* %dir)
  %x15 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %dir, i32 0, i32 0
  %27 = load double, double* %x15, align 8
  %y16 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %line, i32 0, i32 1
  %28 = load double, double* %y16, align 8
  %mul = fmul double %27, %28
  %y17 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %dir, i32 0, i32 1
  %29 = load double, double* %y17, align 8
  %x18 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %line, i32 0, i32 0
  %30 = load double, double* %x18, align 8
  %mul19 = fmul double %29, %30
  %sub = fsub double %mul, %mul19
  store double %sub, double* %ori, align 8
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.11
  %31 = load i32, i32* %i, align 4
  %32 = load %struct._GArray*, %struct._GArray** %ret_coords, align 8
  %len20 = getelementptr inbounds %struct._GArray, %struct._GArray* %32, i32 0, i32 1
  %33 = load i32, i32* %len20, align 4
  %cmp21 = icmp ult i32 %31, %33
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load i32, i32* %i, align 4
  %idxprom = sext i32 %34 to i64
  %35 = load %struct._GArray*, %struct._GArray** %ret_coords, align 8
  %data22 = getelementptr inbounds %struct._GArray, %struct._GArray* %35, i32 0, i32 0
  %36 = load i8*, i8** %data22, align 8
  %37 = bitcast i8* %36 to %struct._GimpCoords*
  %arrayidx23 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %37, i64 %idxprom
  %38 = load i32, i32* %i, align 4
  %sub24 = sub nsw i32 %38, 1
  %idxprom25 = sext i32 %sub24 to i64
  %39 = load %struct._GArray*, %struct._GArray** %ret_coords, align 8
  %data26 = getelementptr inbounds %struct._GArray, %struct._GArray* %39, i32 0, i32 0
  %40 = load i8*, i8** %data26, align 8
  %41 = bitcast i8* %40 to %struct._GimpCoords*
  %arrayidx27 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %41, i64 %idxprom25
  call void @gimp_coords_difference(%struct._GimpCoords* %arrayidx23, %struct._GimpCoords* %arrayidx27, %struct._GimpCoords* %dir)
  %x28 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %dir, i32 0, i32 0
  %42 = load double, double* %x28, align 8
  %y29 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %line, i32 0, i32 1
  %43 = load double, double* %y29, align 8
  %mul30 = fmul double %42, %43
  %y31 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %dir, i32 0, i32 1
  %44 = load double, double* %y31, align 8
  %x32 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %line, i32 0, i32 0
  %45 = load double, double* %x32, align 8
  %mul33 = fmul double %44, %45
  %sub34 = fsub double %mul30, %mul33
  store double %sub34, double* %ori2, align 8
  %46 = load double, double* %ori, align 8
  %47 = load double, double* %ori2, align 8
  %mul35 = fmul double %46, %47
  %cmp36 = fcmp ole double %mul35, 0.000000e+00
  br i1 %cmp36, label %if.then.37, label %if.end.61

if.then.37:                                       ; preds = %for.body
  %48 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %48 to i64
  %49 = load %struct._GArray*, %struct._GArray** %ret_coords, align 8
  %data39 = getelementptr inbounds %struct._GArray, %struct._GArray* %49, i32 0, i32 0
  %50 = load i8*, i8** %data39, align 8
  %51 = bitcast i8* %50 to %struct._GimpCoords*
  %arrayidx40 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %51, i64 %idxprom38
  %52 = load %struct._GimpCoords*, %struct._GimpCoords** %coord1.addr, align 8
  call void @gimp_coords_difference(%struct._GimpCoords* %arrayidx40, %struct._GimpCoords* %52, %struct._GimpCoords* %dcoord)
  %call41 = call double @gimp_coords_scalarprod(%struct._GimpCoords* %line, %struct._GimpCoords* %line)
  store double %call41, double* %length2, align 8
  %call42 = call double @gimp_coords_scalarprod(%struct._GimpCoords* %line, %struct._GimpCoords* %dcoord)
  %53 = load double, double* %length2, align 8
  %div = fdiv double %call42, %53
  store double %div, double* %scalar, align 8
  %54 = load double, double* %scalar, align 8
  %cmp43 = fcmp oge double %54, 0.000000e+00
  br i1 %cmp43, label %land.lhs.true, label %if.end.60

land.lhs.true:                                    ; preds = %if.then.37
  %55 = load double, double* %scalar, align 8
  %cmp44 = fcmp ole double %55, 1.000000e+00
  br i1 %cmp44, label %if.then.45, label %if.end.60

if.then.45:                                       ; preds = %land.lhs.true
  %56 = load %struct._GimpCoords*, %struct._GimpCoords** %coord1.addr, align 8
  %57 = load double, double* %scalar, align 8
  call void @gimp_coords_mix(double 1.000000e+00, %struct._GimpCoords* %56, double %57, %struct._GimpCoords* %line, %struct._GimpCoords* %min_point)
  %58 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %58 to i64
  %59 = load %struct._GArray*, %struct._GArray** %ret_coords, align 8
  %data47 = getelementptr inbounds %struct._GArray, %struct._GArray* %59, i32 0, i32 0
  %60 = load i8*, i8** %data47, align 8
  %61 = bitcast i8* %60 to %struct._GimpCoords*
  %arrayidx48 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %61, i64 %idxprom46
  call void @gimp_coords_difference(%struct._GimpCoords* %min_point, %struct._GimpCoords* %arrayidx48, %struct._GimpCoords* %dcoord)
  %call49 = call double @gimp_coords_length(%struct._GimpCoords* %dcoord)
  store double %call49, double* %dist, align 8
  %62 = load double, double* %dist, align 8
  %63 = load double, double* %min_dist, align 8
  %cmp50 = fcmp olt double %62, %63
  br i1 %cmp50, label %if.then.52, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.45
  %64 = load double, double* %min_dist, align 8
  %cmp51 = fcmp olt double %64, 0.000000e+00
  br i1 %cmp51, label %if.then.52, label %if.end.59

if.then.52:                                       ; preds = %lor.lhs.false, %if.then.45
  %65 = load double, double* %dist, align 8
  store double %65, double* %min_dist, align 8
  %66 = load %struct._GimpCoords*, %struct._GimpCoords** %ret_point.addr, align 8
  %67 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %67 to i64
  %68 = load %struct._GArray*, %struct._GArray** %ret_coords, align 8
  %data54 = getelementptr inbounds %struct._GArray, %struct._GArray* %68, i32 0, i32 0
  %69 = load i8*, i8** %data54, align 8
  %70 = bitcast i8* %69 to %struct._GimpCoords*
  %arrayidx55 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %70, i64 %idxprom53
  %71 = bitcast %struct._GimpCoords* %66 to i8*
  %72 = bitcast %struct._GimpCoords* %arrayidx55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* %72, i64 64, i32 8, i1 false)
  %73 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %73 to i64
  %74 = load %struct._GArray*, %struct._GArray** %ret_params, align 8
  %data57 = getelementptr inbounds %struct._GArray, %struct._GArray* %74, i32 0, i32 0
  %75 = load i8*, i8** %data57, align 8
  %76 = bitcast i8* %75 to double*
  %arrayidx58 = getelementptr inbounds double, double* %76, i64 %idxprom56
  %77 = load double, double* %arrayidx58, align 8
  %78 = load double*, double** %ret_pos.addr, align 8
  store double %77, double* %78, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.52, %lor.lhs.false
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %land.lhs.true, %if.then.37
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %for.body
  %79 = load double, double* %ori2, align 8
  store double %79, double* %ori, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.61
  %80 = load i32, i32* %i, align 4
  %inc = add nsw i32 %80, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %81 = load double, double* %min_dist, align 8
  %cmp62 = fcmp olt double %81, 0.000000e+00
  br i1 %cmp62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %for.end
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.67

if.else.64:                                       ; preds = %for.end
  %82 = load double, double* %min_dist, align 8
  %83 = load %struct._GimpCoords*, %struct._GimpCoords** %ret_point.addr, align 8
  %x65 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %83, i32 0, i32 0
  %84 = load double, double* %x65, align 8
  %85 = load %struct._GimpCoords*, %struct._GimpCoords** %ret_point.addr, align 8
  %y66 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %85, i32 0, i32 1
  %86 = load double, double* %y66, align 8
  %87 = load double*, double** %ret_pos.addr, align 8
  %88 = load double, double* %87, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0), double %82, double %84, double %86, double %88)
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.64, %if.then.63
  %89 = load %struct._GArray*, %struct._GArray** %ret_coords, align 8
  %call68 = call i8* @g_array_free(%struct._GArray* %89, i32 1)
  %90 = load %struct._GArray*, %struct._GArray** %ret_params, align 8
  %call69 = call i8* @g_array_free(%struct._GArray* %90, i32 1)
  %91 = load double, double* %min_dist, align 8
  store double %91, double* %retval
  br label %return

return:                                           ; preds = %if.end.67, %if.then.10, %if.else
  %92 = load double, double* %retval
  ret double %92
}

declare %struct._GArray* @g_array_new(i32, i32, i32) #1

declare void @g_printerr(i8*, ...) #1

declare void @gimp_coords_interpolate_bezier(%struct._GimpCoords* byval align 8, %struct._GimpCoords* byval align 8, %struct._GimpCoords* byval align 8, %struct._GimpCoords* byval align 8, double, %struct._GArray**, %struct._GArray**) #1

declare i8* @g_array_free(%struct._GArray*, i32) #1

declare void @gimp_anchor_free(%struct._GimpAnchor*) #1

declare %struct._GList* @g_list_delete_link(%struct._GList*, %struct._GList*) #1

; Function Attrs: nounwind
declare double @pow(double, double) #6

declare void @gimp_coords_scale(double, %struct._GimpCoords*, %struct._GimpCoords*) #1

declare void @gimp_stroke_anchor_move_relative(%struct._GimpStroke*, %struct._GimpAnchor*, %struct._GimpCoords*, i32) #1

declare i32 @gimp_coords_equal(%struct._GimpCoords*, %struct._GimpCoords*) #1

declare %struct._GList* @g_list_concat(%struct._GList*, %struct._GList*) #1

declare void @g_object_notify(%struct._GObject*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GList* @gimp_bezier_stroke_get_anchor_listitem(%struct._GList* %list) #3 {
entry:
  %retval = alloca %struct._GList*, align 8
  %list.addr = alloca %struct._GList*, align 8
  store %struct._GList* %list, %struct._GList** %list.addr, align 8
  %0 = load %struct._GList*, %struct._GList** %list.addr, align 8
  %tobool = icmp ne %struct._GList* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._GList*, %struct._GList** %list.addr, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %1, i32 0, i32 0
  %2 = load i8*, i8** %data, align 8
  %3 = bitcast i8* %2 to %struct._GimpAnchor*
  %type = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %3, i32 0, i32 1
  %4 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %5 = load %struct._GList*, %struct._GList** %list.addr, align 8
  store %struct._GList* %5, %struct._GList** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %6 = load %struct._GList*, %struct._GList** %list.addr, align 8
  %prev = getelementptr inbounds %struct._GList, %struct._GList* %6, i32 0, i32 2
  %7 = load %struct._GList*, %struct._GList** %prev, align 8
  %tobool3 = icmp ne %struct._GList* %7, null
  br i1 %tobool3, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %if.end.2
  %8 = load %struct._GList*, %struct._GList** %list.addr, align 8
  %prev4 = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 2
  %9 = load %struct._GList*, %struct._GList** %prev4, align 8
  %data5 = getelementptr inbounds %struct._GList, %struct._GList* %9, i32 0, i32 0
  %10 = load i8*, i8** %data5, align 8
  %11 = bitcast i8* %10 to %struct._GimpAnchor*
  %type6 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %11, i32 0, i32 1
  %12 = load i32, i32* %type6, align 4
  %cmp7 = icmp eq i32 %12, 0
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %land.lhs.true
  %13 = load %struct._GList*, %struct._GList** %list.addr, align 8
  %prev9 = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 2
  %14 = load %struct._GList*, %struct._GList** %prev9, align 8
  store %struct._GList* %14, %struct._GList** %retval
  br label %return

if.end.10:                                        ; preds = %land.lhs.true, %if.end.2
  %15 = load %struct._GList*, %struct._GList** %list.addr, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %15, i32 0, i32 1
  %16 = load %struct._GList*, %struct._GList** %next, align 8
  %tobool11 = icmp ne %struct._GList* %16, null
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.19

land.lhs.true.12:                                 ; preds = %if.end.10
  %17 = load %struct._GList*, %struct._GList** %list.addr, align 8
  %next13 = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 1
  %18 = load %struct._GList*, %struct._GList** %next13, align 8
  %data14 = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 0
  %19 = load i8*, i8** %data14, align 8
  %20 = bitcast i8* %19 to %struct._GimpAnchor*
  %type15 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %20, i32 0, i32 1
  %21 = load i32, i32* %type15, align 4
  %cmp16 = icmp eq i32 %21, 0
  br i1 %cmp16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %land.lhs.true.12
  %22 = load %struct._GList*, %struct._GList** %list.addr, align 8
  %next18 = getelementptr inbounds %struct._GList, %struct._GList* %22, i32 0, i32 1
  %23 = load %struct._GList*, %struct._GList** %next18, align 8
  store %struct._GList* %23, %struct._GList** %retval
  br label %return

if.end.19:                                        ; preds = %land.lhs.true.12, %if.end.10
  br label %do.body

do.body:                                          ; preds = %if.end.19
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_bezier_stroke_get_anchor_listitem, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

do.end:                                           ; No predecessors!
  store %struct._GList* null, %struct._GList** %retval
  br label %return

return:                                           ; preds = %do.end, %do.body, %if.then.17, %if.then.8, %if.then.1, %if.then
  %24 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %24
}

declare %struct._GList* @g_list_reverse(%struct._GList*) #1

declare %struct._GArray* @g_array_append_vals(%struct._GArray*, i8*, i32) #1

declare %struct._GArray* @gimp_stroke_control_points_get(%struct._GimpStroke*, i32*) #1

declare %struct._GArray* @g_array_sized_new(i32, i32, i32, i32) #1

declare %struct.cairo_path* @gimp_bezier_desc_new(%union._cairo_path_data_t*, i32) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: nounwind uwtable
define internal double @arcto_circleparam(double %h, double* %y) #3 {
entry:
  %h.addr = alloca double, align 8
  %y.addr = alloca double*, align 8
  %t0 = alloca double, align 8
  %dt = alloca double, align 8
  %pt0 = alloca double, align 8
  %y01 = alloca double, align 8
  %y12 = alloca double, align 8
  %y23 = alloca double, align 8
  %y012 = alloca double, align 8
  %y123 = alloca double, align 8
  %y0123 = alloca double, align 8
  store double %h, double* %h.addr, align 8
  store double* %y, double** %y.addr, align 8
  store double 5.000000e-01, double* %t0, align 8
  store double 2.500000e-01, double* %dt, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.30, %entry
  %0 = load double, double* %dt, align 8
  %cmp = fcmp oge double %0, 1.000000e-05
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load double*, double** %y.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %1, i64 0
  %2 = load double, double* %arrayidx, align 8
  %3 = load double, double* %t0, align 8
  %sub = fsub double 1.000000e+00, %3
  %mul = fmul double %2, %sub
  %4 = load double, double* %t0, align 8
  %sub1 = fsub double 1.000000e+00, %4
  %mul2 = fmul double %mul, %sub1
  %5 = load double, double* %t0, align 8
  %sub3 = fsub double 1.000000e+00, %5
  %mul4 = fmul double %mul2, %sub3
  %6 = load double*, double** %y.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %6, i64 1
  %7 = load double, double* %arrayidx5, align 8
  %mul6 = fmul double 3.000000e+00, %7
  %8 = load double, double* %t0, align 8
  %sub7 = fsub double 1.000000e+00, %8
  %mul8 = fmul double %mul6, %sub7
  %9 = load double, double* %t0, align 8
  %sub9 = fsub double 1.000000e+00, %9
  %mul10 = fmul double %mul8, %sub9
  %10 = load double, double* %t0, align 8
  %mul11 = fmul double %mul10, %10
  %add = fadd double %mul4, %mul11
  %11 = load double*, double** %y.addr, align 8
  %arrayidx12 = getelementptr inbounds double, double* %11, i64 2
  %12 = load double, double* %arrayidx12, align 8
  %mul13 = fmul double 3.000000e+00, %12
  %13 = load double, double* %t0, align 8
  %sub14 = fsub double 1.000000e+00, %13
  %mul15 = fmul double %mul13, %sub14
  %14 = load double, double* %t0, align 8
  %mul16 = fmul double %mul15, %14
  %15 = load double, double* %t0, align 8
  %mul17 = fmul double %mul16, %15
  %add18 = fadd double %add, %mul17
  %16 = load double*, double** %y.addr, align 8
  %arrayidx19 = getelementptr inbounds double, double* %16, i64 3
  %17 = load double, double* %arrayidx19, align 8
  %18 = load double, double* %t0, align 8
  %mul20 = fmul double %17, %18
  %19 = load double, double* %t0, align 8
  %mul21 = fmul double %mul20, %19
  %20 = load double, double* %t0, align 8
  %mul22 = fmul double %mul21, %20
  %add23 = fadd double %add18, %mul22
  store double %add23, double* %pt0, align 8
  %21 = load double, double* %pt0, align 8
  %22 = load double, double* %h.addr, align 8
  %cmp24 = fcmp ogt double %21, %22
  br i1 %cmp24, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %23 = load double, double* %t0, align 8
  %24 = load double, double* %dt, align 8
  %sub25 = fsub double %23, %24
  store double %sub25, double* %t0, align 8
  br label %if.end.30

if.else:                                          ; preds = %while.body
  %25 = load double, double* %pt0, align 8
  %26 = load double, double* %h.addr, align 8
  %cmp26 = fcmp olt double %25, %26
  br i1 %cmp26, label %if.then.27, label %if.else.29

if.then.27:                                       ; preds = %if.else
  %27 = load double, double* %t0, align 8
  %28 = load double, double* %dt, align 8
  %add28 = fadd double %27, %28
  store double %add28, double* %t0, align 8
  br label %if.end

if.else.29:                                       ; preds = %if.else
  br label %while.end

if.end:                                           ; preds = %if.then.27
  br label %if.end.30

if.end.30:                                        ; preds = %if.end, %if.then
  %29 = load double, double* %dt, align 8
  %div = fdiv double %29, 2.000000e+00
  store double %div, double* %dt, align 8
  br label %while.cond

while.end:                                        ; preds = %if.else.29, %while.cond
  %30 = load double*, double** %y.addr, align 8
  %arrayidx31 = getelementptr inbounds double, double* %30, i64 0
  %31 = load double, double* %arrayidx31, align 8
  %32 = load double, double* %t0, align 8
  %sub32 = fsub double 1.000000e+00, %32
  %mul33 = fmul double %31, %sub32
  %33 = load double*, double** %y.addr, align 8
  %arrayidx34 = getelementptr inbounds double, double* %33, i64 1
  %34 = load double, double* %arrayidx34, align 8
  %35 = load double, double* %t0, align 8
  %mul35 = fmul double %34, %35
  %add36 = fadd double %mul33, %mul35
  store double %add36, double* %y01, align 8
  %36 = load double*, double** %y.addr, align 8
  %arrayidx37 = getelementptr inbounds double, double* %36, i64 1
  %37 = load double, double* %arrayidx37, align 8
  %38 = load double, double* %t0, align 8
  %sub38 = fsub double 1.000000e+00, %38
  %mul39 = fmul double %37, %sub38
  %39 = load double*, double** %y.addr, align 8
  %arrayidx40 = getelementptr inbounds double, double* %39, i64 2
  %40 = load double, double* %arrayidx40, align 8
  %41 = load double, double* %t0, align 8
  %mul41 = fmul double %40, %41
  %add42 = fadd double %mul39, %mul41
  store double %add42, double* %y12, align 8
  %42 = load double*, double** %y.addr, align 8
  %arrayidx43 = getelementptr inbounds double, double* %42, i64 2
  %43 = load double, double* %arrayidx43, align 8
  %44 = load double, double* %t0, align 8
  %sub44 = fsub double 1.000000e+00, %44
  %mul45 = fmul double %43, %sub44
  %45 = load double*, double** %y.addr, align 8
  %arrayidx46 = getelementptr inbounds double, double* %45, i64 3
  %46 = load double, double* %arrayidx46, align 8
  %47 = load double, double* %t0, align 8
  %mul47 = fmul double %46, %47
  %add48 = fadd double %mul45, %mul47
  store double %add48, double* %y23, align 8
  %48 = load double, double* %y01, align 8
  %49 = load double, double* %t0, align 8
  %sub49 = fsub double 1.000000e+00, %49
  %mul50 = fmul double %48, %sub49
  %50 = load double, double* %y12, align 8
  %51 = load double, double* %t0, align 8
  %mul51 = fmul double %50, %51
  %add52 = fadd double %mul50, %mul51
  store double %add52, double* %y012, align 8
  %52 = load double, double* %y12, align 8
  %53 = load double, double* %t0, align 8
  %sub53 = fsub double 1.000000e+00, %53
  %mul54 = fmul double %52, %sub53
  %54 = load double, double* %y23, align 8
  %55 = load double, double* %t0, align 8
  %mul55 = fmul double %54, %55
  %add56 = fadd double %mul54, %mul55
  store double %add56, double* %y123, align 8
  %56 = load double, double* %y012, align 8
  %57 = load double, double* %t0, align 8
  %sub57 = fsub double 1.000000e+00, %57
  %mul58 = fmul double %56, %sub57
  %58 = load double, double* %y123, align 8
  %59 = load double, double* %t0, align 8
  %mul59 = fmul double %58, %59
  %add60 = fadd double %mul58, %mul59
  store double %add60, double* %y0123, align 8
  %60 = load double, double* %y0123, align 8
  %61 = load double*, double** %y.addr, align 8
  %arrayidx61 = getelementptr inbounds double, double* %61, i64 0
  store double %60, double* %arrayidx61, align 8
  %62 = load double, double* %y123, align 8
  %63 = load double*, double** %y.addr, align 8
  %arrayidx62 = getelementptr inbounds double, double* %63, i64 1
  store double %62, double* %arrayidx62, align 8
  %64 = load double, double* %y23, align 8
  %65 = load double*, double** %y.addr, align 8
  %arrayidx63 = getelementptr inbounds double, double* %65, i64 2
  store double %64, double* %arrayidx63, align 8
  %66 = load double, double* %t0, align 8
  ret double %66
}

; Function Attrs: nounwind uwtable
define internal void @arcto_subdivide(double %t, i32 %part, %struct._GimpCoords* %p) #3 {
entry:
  %t.addr = alloca double, align 8
  %part.addr = alloca i32, align 4
  %p.addr = alloca %struct._GimpCoords*, align 8
  %p01 = alloca %struct._GimpCoords, align 8
  %p12 = alloca %struct._GimpCoords, align 8
  %p23 = alloca %struct._GimpCoords, align 8
  %p012 = alloca %struct._GimpCoords, align 8
  %p123 = alloca %struct._GimpCoords, align 8
  %p0123 = alloca %struct._GimpCoords, align 8
  store double %t, double* %t.addr, align 8
  store i32 %part, i32* %part.addr, align 4
  store %struct._GimpCoords* %p, %struct._GimpCoords** %p.addr, align 8
  %0 = load double, double* %t.addr, align 8
  %sub = fsub double 1.000000e+00, %0
  %1 = load %struct._GimpCoords*, %struct._GimpCoords** %p.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %1, i64 0
  %2 = load double, double* %t.addr, align 8
  %3 = load %struct._GimpCoords*, %struct._GimpCoords** %p.addr, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %3, i64 1
  call void @gimp_coords_mix(double %sub, %struct._GimpCoords* %arrayidx, double %2, %struct._GimpCoords* %arrayidx1, %struct._GimpCoords* %p01)
  %4 = load double, double* %t.addr, align 8
  %sub2 = fsub double 1.000000e+00, %4
  %5 = load %struct._GimpCoords*, %struct._GimpCoords** %p.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %5, i64 1
  %6 = load double, double* %t.addr, align 8
  %7 = load %struct._GimpCoords*, %struct._GimpCoords** %p.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %7, i64 2
  call void @gimp_coords_mix(double %sub2, %struct._GimpCoords* %arrayidx3, double %6, %struct._GimpCoords* %arrayidx4, %struct._GimpCoords* %p12)
  %8 = load double, double* %t.addr, align 8
  %sub5 = fsub double 1.000000e+00, %8
  %9 = load %struct._GimpCoords*, %struct._GimpCoords** %p.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %9, i64 2
  %10 = load double, double* %t.addr, align 8
  %11 = load %struct._GimpCoords*, %struct._GimpCoords** %p.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %11, i64 3
  call void @gimp_coords_mix(double %sub5, %struct._GimpCoords* %arrayidx6, double %10, %struct._GimpCoords* %arrayidx7, %struct._GimpCoords* %p23)
  %12 = load double, double* %t.addr, align 8
  %sub8 = fsub double 1.000000e+00, %12
  %13 = load double, double* %t.addr, align 8
  call void @gimp_coords_mix(double %sub8, %struct._GimpCoords* %p01, double %13, %struct._GimpCoords* %p12, %struct._GimpCoords* %p012)
  %14 = load double, double* %t.addr, align 8
  %sub9 = fsub double 1.000000e+00, %14
  %15 = load double, double* %t.addr, align 8
  call void @gimp_coords_mix(double %sub9, %struct._GimpCoords* %p12, double %15, %struct._GimpCoords* %p23, %struct._GimpCoords* %p123)
  %16 = load double, double* %t.addr, align 8
  %sub10 = fsub double 1.000000e+00, %16
  %17 = load double, double* %t.addr, align 8
  call void @gimp_coords_mix(double %sub10, %struct._GimpCoords* %p012, double %17, %struct._GimpCoords* %p123, %struct._GimpCoords* %p0123)
  %18 = load i32, i32* %part.addr, align 4
  %cmp = icmp eq i32 %18, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %19 = load %struct._GimpCoords*, %struct._GimpCoords** %p.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %19, i64 1
  %20 = bitcast %struct._GimpCoords* %arrayidx11 to i8*
  %21 = bitcast %struct._GimpCoords* %p01 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 64, i32 8, i1 false)
  %22 = load %struct._GimpCoords*, %struct._GimpCoords** %p.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %22, i64 2
  %23 = bitcast %struct._GimpCoords* %arrayidx12 to i8*
  %24 = bitcast %struct._GimpCoords* %p012 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 64, i32 8, i1 false)
  %25 = load %struct._GimpCoords*, %struct._GimpCoords** %p.addr, align 8
  %arrayidx13 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %25, i64 3
  %26 = bitcast %struct._GimpCoords* %arrayidx13 to i8*
  %27 = bitcast %struct._GimpCoords* %p0123 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 64, i32 8, i1 false)
  br label %if.end

if.else:                                          ; preds = %entry
  %28 = load %struct._GimpCoords*, %struct._GimpCoords** %p.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %28, i64 0
  %29 = bitcast %struct._GimpCoords* %arrayidx14 to i8*
  %30 = bitcast %struct._GimpCoords* %p0123 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 64, i32 8, i1 false)
  %31 = load %struct._GimpCoords*, %struct._GimpCoords** %p.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %31, i64 1
  %32 = bitcast %struct._GimpCoords* %arrayidx15 to i8*
  %33 = bitcast %struct._GimpCoords* %p123 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 64, i32 8, i1 false)
  %34 = load %struct._GimpCoords*, %struct._GimpCoords** %p.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %34, i64 2
  %35 = bitcast %struct._GimpCoords* %arrayidx16 to i8*
  %36 = bitcast %struct._GimpCoords* %p23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 64, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
