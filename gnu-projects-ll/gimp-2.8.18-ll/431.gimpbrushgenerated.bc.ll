; ModuleID = './app/core/gimpbrushgenerated.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpBrushGeneratedClass = type { %struct._GimpBrushClass }
%struct._GimpBrushClass = type { %struct._GimpDataClass, void (%struct._GimpBrush*)*, void (%struct._GimpBrush*)*, %struct._GimpBrush* (%struct._GimpBrush*, %struct._GimpCoords*, %struct._GimpCoords*)*, i32 (%struct._GimpBrush*, %struct._GimpCoords*, %struct._GimpCoords*)*, void (%struct._GimpBrush*, double, double, double, i32*, i32*)*, %struct._TempBuf* (%struct._GimpBrush*, double, double, double, double)*, %struct._TempBuf* (%struct._GimpBrush*, double, double, double, double)*, i8** (%struct._GimpBrush*, double, double, double, double, i32*, i32*)*, void (%struct._GimpBrush*)* }
%struct._GimpDataClass = type { %struct._GimpViewableClass, void (%struct._GimpData*)*, i32 (%struct._GimpData*, %struct._GError**)*, i8* (%struct._GimpData*)*, %struct._GimpData* (%struct._GimpData*)* }
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
%struct._GimpData = type { %struct._GimpViewable }
%struct._GError = type { i32, i32, i8* }
%struct._GimpBrush = type { %struct._GimpData, %struct._TempBuf*, %struct._TempBuf*, i32, %struct._GimpVector2, %struct._GimpVector2, i32, %struct._GimpBrushCache*, %struct._GimpBrushCache*, %struct._GimpBrushCache* }
%struct._GimpVector2 = type { double, double }
%struct._GimpBrushCache = type opaque
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GimpBrushGenerated = type { %struct._GimpBrush, i32, float, i32, float, float, float }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_brush_generated_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"GimpBrushGenerated\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_brush_generated_new = private unnamed_addr constant [25 x i8] c"gimp_brush_generated_new\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"*name != '\5C0'\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"mime-type\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"application/x-gimp-brush-generated\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"spacing\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"shape\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"spikes\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"hardness\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"aspect-ratio\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"angle\00", align 1
@__func__.gimp_brush_generated_set_shape = private unnamed_addr constant [31 x i8] c"gimp_brush_generated_set_shape\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"GIMP_IS_BRUSH_GENERATED (brush)\00", align 1
@__func__.gimp_brush_generated_set_radius = private unnamed_addr constant [32 x i8] c"gimp_brush_generated_set_radius\00", align 1
@__func__.gimp_brush_generated_set_spikes = private unnamed_addr constant [32 x i8] c"gimp_brush_generated_set_spikes\00", align 1
@__func__.gimp_brush_generated_set_hardness = private unnamed_addr constant [34 x i8] c"gimp_brush_generated_set_hardness\00", align 1
@__func__.gimp_brush_generated_set_aspect_ratio = private unnamed_addr constant [38 x i8] c"gimp_brush_generated_set_aspect_ratio\00", align 1
@__func__.gimp_brush_generated_set_angle = private unnamed_addr constant [31 x i8] c"gimp_brush_generated_set_angle\00", align 1
@__func__.gimp_brush_generated_get_shape = private unnamed_addr constant [31 x i8] c"gimp_brush_generated_get_shape\00", align 1
@__func__.gimp_brush_generated_get_radius = private unnamed_addr constant [32 x i8] c"gimp_brush_generated_get_radius\00", align 1
@__func__.gimp_brush_generated_get_spikes = private unnamed_addr constant [32 x i8] c"gimp_brush_generated_get_spikes\00", align 1
@__func__.gimp_brush_generated_get_hardness = private unnamed_addr constant [34 x i8] c"gimp_brush_generated_get_hardness\00", align 1
@__func__.gimp_brush_generated_get_aspect_ratio = private unnamed_addr constant [38 x i8] c"gimp_brush_generated_get_aspect_ratio\00", align 1
@__func__.gimp_brush_generated_get_angle = private unnamed_addr constant [31 x i8] c"gimp_brush_generated_get_angle\00", align 1
@gimp_brush_generated_parent_class = internal global i8* null, align 8
@GimpBrushGenerated_private_offset = internal global i32 0, align 4
@.str.15 = private unnamed_addr constant [12 x i8] c"Brush Shape\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"Brush Radius\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"Brush Spikes\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"Brush Hardness\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"Brush Aspect Ratio\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"Brush Angle\00", align 1
@.str.21 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"gimpbrushgenerated.c\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c".vbr\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_brush_generated_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_brush_generated_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_brush_generated_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_brush_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 384, void (i8*, i8*)* bitcast (void (i8*)* @gimp_brush_generated_class_intern_init to void (i8*, i8*)*), i32 144, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpBrushGenerated*)* @gimp_brush_generated_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_brush_generated_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_brush_generated_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_generated_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_brush_generated_parent_class, align 8
  %1 = load i32, i32* @GimpBrushGenerated_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpBrushGenerated_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpBrushGeneratedClass*
  call void @gimp_brush_generated_class_init(%struct._GimpBrushGeneratedClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_generated_init(%struct._GimpBrushGenerated* %brush) #3 {
entry:
  %brush.addr = alloca %struct._GimpBrushGenerated*, align 8
  store %struct._GimpBrushGenerated* %brush, %struct._GimpBrushGenerated** %brush.addr, align 8
  %0 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %shape = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %0, i32 0, i32 1
  store i32 0, i32* %shape, align 4
  %1 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %radius = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %1, i32 0, i32 2
  store float 5.000000e+00, float* %radius, align 4
  %2 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %hardness = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %2, i32 0, i32 4
  store float 0.000000e+00, float* %hardness, align 4
  %3 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %aspect_ratio = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %3, i32 0, i32 5
  store float 1.000000e+00, float* %aspect_ratio, align 4
  %4 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %angle = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %4, i32 0, i32 6
  store float 0.000000e+00, float* %angle, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpData* @gimp_brush_generated_new(i8* %name, i32 %shape, float %radius, i32 %spikes, float %hardness, float %aspect_ratio, float %angle) #3 {
entry:
  %retval = alloca %struct._GimpData*, align 8
  %name.addr = alloca i8*, align 8
  %shape.addr = alloca i32, align 4
  %radius.addr = alloca float, align 4
  %spikes.addr = alloca i32, align 4
  %hardness.addr = alloca float, align 4
  %aspect_ratio.addr = alloca float, align 4
  %angle.addr = alloca float, align 4
  %brush = alloca %struct._GimpBrushGenerated*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %shape, i32* %shape.addr, align 4
  store float %radius, float* %radius.addr, align 4
  store i32 %spikes, i32* %spikes.addr, align 4
  store float %hardness, float* %hardness.addr, align 4
  store float %aspect_ratio, float* %aspect_ratio.addr, align 4
  store float %angle, float* %angle.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %name.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_brush_generated_new, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_brush_generated_new, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpData* null, %struct._GimpData** %retval
  br label %return

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  %call = call i64 @gimp_brush_generated_get_type() #7
  %3 = load i8*, i8** %name.addr, align 8
  %4 = load i32, i32* %shape.addr, align 4
  %5 = load float, float* %radius.addr, align 4
  %conv8 = fpext float %5 to double
  %6 = load i32, i32* %spikes.addr, align 4
  %7 = load float, float* %hardness.addr, align 4
  %conv9 = fpext float %7 to double
  %8 = load float, float* %aspect_ratio.addr, align 4
  %conv10 = fpext float %8 to double
  %9 = load float, float* %angle.addr, align 4
  %conv11 = fpext float %9 to double
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), double 2.000000e+01, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), double %conv8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), double %conv9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), double %conv10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), double %conv11, i8* null)
  %10 = bitcast i8* %call12 to %struct._GimpBrushGenerated*
  store %struct._GimpBrushGenerated* %10, %struct._GimpBrushGenerated** %brush, align 8
  %11 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %12 = bitcast %struct._GimpBrushGenerated* %11 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_data_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call13)
  %13 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpData*
  store %struct._GimpData* %13, %struct._GimpData** %retval
  br label %return

return:                                           ; preds = %do.end.7, %if.else.5, %if.else
  %14 = load %struct._GimpData*, %struct._GimpData** %retval
  ret %struct._GimpData* %14
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_data_get_type() #2

; Function Attrs: nounwind uwtable
define i32 @gimp_brush_generated_set_shape(%struct._GimpBrushGenerated* %brush, i32 %shape) #3 {
entry:
  %retval = alloca i32, align 4
  %brush.addr = alloca %struct._GimpBrushGenerated*, align 8
  %shape.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpBrushGenerated* %brush, %struct._GimpBrushGenerated** %brush.addr, align 8
  store i32 %shape, i32* %shape.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %1 = bitcast %struct._GimpBrushGenerated* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_brush_generated_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_brush_generated_set_shape, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %shape11 = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %13, i32 0, i32 1
  %14 = load i32, i32* %shape11, align 4
  %15 = load i32, i32* %shape.addr, align 4
  %cmp12 = icmp ne i32 %14, %15
  br i1 %cmp12, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %do.end
  %16 = load i32, i32* %shape.addr, align 4
  %17 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %shape14 = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %17, i32 0, i32 1
  store i32 %16, i32* %shape14, align 4
  %18 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %19 = bitcast %struct._GimpBrushGenerated* %18 to %struct._GTypeInstance*
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 80)
  %20 = bitcast %struct._GTypeInstance* %call15 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0))
  %21 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %22 = bitcast %struct._GimpBrushGenerated* %21 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_data_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call16)
  %23 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpData*
  call void @gimp_data_dirty(%struct._GimpData* %23)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.13, %do.end
  %24 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %shape19 = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %24, i32 0, i32 1
  %25 = load i32, i32* %shape19, align 4
  store i32 %25, i32* %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.else.9
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_object_notify(%struct._GObject*, i8*) #1

declare void @gimp_data_dirty(%struct._GimpData*) #1

; Function Attrs: nounwind uwtable
define float @gimp_brush_generated_set_radius(%struct._GimpBrushGenerated* %brush, float %radius) #3 {
entry:
  %retval = alloca float, align 4
  %brush.addr = alloca %struct._GimpBrushGenerated*, align 8
  %radius.addr = alloca float, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpBrushGenerated* %brush, %struct._GimpBrushGenerated** %brush.addr, align 8
  store float %radius, float* %radius.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %1 = bitcast %struct._GimpBrushGenerated* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_brush_generated_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_brush_generated_set_radius, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i32 0, i32 0))
  store float -1.000000e+00, float* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load float, float* %radius.addr, align 4
  %conv = fpext float %13 to double
  %cmp11 = fcmp ogt double %conv, 3.276700e+04
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  br label %cond.end.19

cond.false:                                       ; preds = %do.end
  %14 = load float, float* %radius.addr, align 4
  %conv13 = fpext float %14 to double
  %cmp14 = fcmp olt double %conv13, 0.000000e+00
  br i1 %cmp14, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %cond.false
  br label %cond.end

cond.false.17:                                    ; preds = %cond.false
  %15 = load float, float* %radius.addr, align 4
  %conv18 = fpext float %15 to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false.17, %cond.true.16
  %cond = phi double [ 0.000000e+00, %cond.true.16 ], [ %conv18, %cond.false.17 ]
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.end, %cond.true
  %cond20 = phi double [ 3.276700e+04, %cond.true ], [ %cond, %cond.end ]
  %conv21 = fptrunc double %cond20 to float
  store float %conv21, float* %radius.addr, align 4
  %16 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %radius22 = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %16, i32 0, i32 2
  %17 = load float, float* %radius22, align 4
  %18 = load float, float* %radius.addr, align 4
  %cmp23 = fcmp une float %17, %18
  br i1 %cmp23, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %cond.end.19
  %19 = load float, float* %radius.addr, align 4
  %20 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %radius26 = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %20, i32 0, i32 2
  store float %19, float* %radius26, align 4
  %21 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %22 = bitcast %struct._GimpBrushGenerated* %21 to %struct._GTypeInstance*
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call27 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0))
  %24 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %25 = bitcast %struct._GimpBrushGenerated* %24 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_data_get_type() #7
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call28)
  %26 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpData*
  call void @gimp_data_dirty(%struct._GimpData* %26)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.25, %cond.end.19
  %27 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %radius31 = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %27, i32 0, i32 2
  %28 = load float, float* %radius31, align 4
  store float %28, float* %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.else.9
  %29 = load float, float* %retval
  ret float %29
}

; Function Attrs: nounwind uwtable
define i32 @gimp_brush_generated_set_spikes(%struct._GimpBrushGenerated* %brush, i32 %spikes) #3 {
entry:
  %retval = alloca i32, align 4
  %brush.addr = alloca %struct._GimpBrushGenerated*, align 8
  %spikes.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpBrushGenerated* %brush, %struct._GimpBrushGenerated** %brush.addr, align 8
  store i32 %spikes, i32* %spikes.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %1 = bitcast %struct._GimpBrushGenerated* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_brush_generated_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_brush_generated_set_spikes, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %spikes.addr, align 4
  %cmp11 = icmp sgt i32 %13, 20
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  br label %cond.end.15

cond.false:                                       ; preds = %do.end
  %14 = load i32, i32* %spikes.addr, align 4
  %cmp12 = icmp slt i32 %14, 2
  br i1 %cmp12, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %cond.false
  br label %cond.end

cond.false.14:                                    ; preds = %cond.false
  %15 = load i32, i32* %spikes.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.14, %cond.true.13
  %cond = phi i32 [ 2, %cond.true.13 ], [ %15, %cond.false.14 ]
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.end, %cond.true
  %cond16 = phi i32 [ 20, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond16, i32* %spikes.addr, align 4
  %16 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %spikes17 = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %16, i32 0, i32 3
  %17 = load i32, i32* %spikes17, align 4
  %18 = load i32, i32* %spikes.addr, align 4
  %cmp18 = icmp ne i32 %17, %18
  br i1 %cmp18, label %if.then.19, label %if.end.24

if.then.19:                                       ; preds = %cond.end.15
  %19 = load i32, i32* %spikes.addr, align 4
  %20 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %spikes20 = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %20, i32 0, i32 3
  store i32 %19, i32* %spikes20, align 4
  %21 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %22 = bitcast %struct._GimpBrushGenerated* %21 to %struct._GTypeInstance*
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call21 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0))
  %24 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %25 = bitcast %struct._GimpBrushGenerated* %24 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_data_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call22)
  %26 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpData*
  call void @gimp_data_dirty(%struct._GimpData* %26)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.19, %cond.end.15
  %27 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %spikes25 = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %27, i32 0, i32 3
  %28 = load i32, i32* %spikes25, align 4
  store i32 %28, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.else.9
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define float @gimp_brush_generated_set_hardness(%struct._GimpBrushGenerated* %brush, float %hardness) #3 {
entry:
  %retval = alloca float, align 4
  %brush.addr = alloca %struct._GimpBrushGenerated*, align 8
  %hardness.addr = alloca float, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpBrushGenerated* %brush, %struct._GimpBrushGenerated** %brush.addr, align 8
  store float %hardness, float* %hardness.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %1 = bitcast %struct._GimpBrushGenerated* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_brush_generated_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_brush_generated_set_hardness, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i32 0, i32 0))
  store float -1.000000e+00, float* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load float, float* %hardness.addr, align 4
  %conv = fpext float %13 to double
  %cmp11 = fcmp ogt double %conv, 1.000000e+00
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  br label %cond.end.19

cond.false:                                       ; preds = %do.end
  %14 = load float, float* %hardness.addr, align 4
  %conv13 = fpext float %14 to double
  %cmp14 = fcmp olt double %conv13, 0.000000e+00
  br i1 %cmp14, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %cond.false
  br label %cond.end

cond.false.17:                                    ; preds = %cond.false
  %15 = load float, float* %hardness.addr, align 4
  %conv18 = fpext float %15 to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false.17, %cond.true.16
  %cond = phi double [ 0.000000e+00, %cond.true.16 ], [ %conv18, %cond.false.17 ]
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.end, %cond.true
  %cond20 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  %conv21 = fptrunc double %cond20 to float
  store float %conv21, float* %hardness.addr, align 4
  %16 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %hardness22 = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %16, i32 0, i32 4
  %17 = load float, float* %hardness22, align 4
  %18 = load float, float* %hardness.addr, align 4
  %cmp23 = fcmp une float %17, %18
  br i1 %cmp23, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %cond.end.19
  %19 = load float, float* %hardness.addr, align 4
  %20 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %hardness26 = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %20, i32 0, i32 4
  store float %19, float* %hardness26, align 4
  %21 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %22 = bitcast %struct._GimpBrushGenerated* %21 to %struct._GTypeInstance*
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call27 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0))
  %24 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %25 = bitcast %struct._GimpBrushGenerated* %24 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_data_get_type() #7
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call28)
  %26 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpData*
  call void @gimp_data_dirty(%struct._GimpData* %26)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.25, %cond.end.19
  %27 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %hardness31 = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %27, i32 0, i32 4
  %28 = load float, float* %hardness31, align 4
  store float %28, float* %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.else.9
  %29 = load float, float* %retval
  ret float %29
}

; Function Attrs: nounwind uwtable
define float @gimp_brush_generated_set_aspect_ratio(%struct._GimpBrushGenerated* %brush, float %ratio) #3 {
entry:
  %retval = alloca float, align 4
  %brush.addr = alloca %struct._GimpBrushGenerated*, align 8
  %ratio.addr = alloca float, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpBrushGenerated* %brush, %struct._GimpBrushGenerated** %brush.addr, align 8
  store float %ratio, float* %ratio.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %1 = bitcast %struct._GimpBrushGenerated* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_brush_generated_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_brush_generated_set_aspect_ratio, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i32 0, i32 0))
  store float -1.000000e+00, float* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load float, float* %ratio.addr, align 4
  %conv = fpext float %13 to double
  %cmp11 = fcmp ogt double %conv, 1.000000e+03
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  br label %cond.end.19

cond.false:                                       ; preds = %do.end
  %14 = load float, float* %ratio.addr, align 4
  %conv13 = fpext float %14 to double
  %cmp14 = fcmp olt double %conv13, 1.000000e+00
  br i1 %cmp14, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %cond.false
  br label %cond.end

cond.false.17:                                    ; preds = %cond.false
  %15 = load float, float* %ratio.addr, align 4
  %conv18 = fpext float %15 to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false.17, %cond.true.16
  %cond = phi double [ 1.000000e+00, %cond.true.16 ], [ %conv18, %cond.false.17 ]
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.end, %cond.true
  %cond20 = phi double [ 1.000000e+03, %cond.true ], [ %cond, %cond.end ]
  %conv21 = fptrunc double %cond20 to float
  store float %conv21, float* %ratio.addr, align 4
  %16 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %aspect_ratio = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %16, i32 0, i32 5
  %17 = load float, float* %aspect_ratio, align 4
  %18 = load float, float* %ratio.addr, align 4
  %cmp22 = fcmp une float %17, %18
  br i1 %cmp22, label %if.then.24, label %if.end.29

if.then.24:                                       ; preds = %cond.end.19
  %19 = load float, float* %ratio.addr, align 4
  %20 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %aspect_ratio25 = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %20, i32 0, i32 5
  store float %19, float* %aspect_ratio25, align 4
  %21 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %22 = bitcast %struct._GimpBrushGenerated* %21 to %struct._GTypeInstance*
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call26 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0))
  %24 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %25 = bitcast %struct._GimpBrushGenerated* %24 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_data_get_type() #7
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call27)
  %26 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpData*
  call void @gimp_data_dirty(%struct._GimpData* %26)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.24, %cond.end.19
  %27 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %aspect_ratio30 = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %27, i32 0, i32 5
  %28 = load float, float* %aspect_ratio30, align 4
  store float %28, float* %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.else.9
  %29 = load float, float* %retval
  ret float %29
}

; Function Attrs: nounwind uwtable
define float @gimp_brush_generated_set_angle(%struct._GimpBrushGenerated* %brush, float %angle) #3 {
entry:
  %retval = alloca float, align 4
  %brush.addr = alloca %struct._GimpBrushGenerated*, align 8
  %angle.addr = alloca float, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpBrushGenerated* %brush, %struct._GimpBrushGenerated** %brush.addr, align 8
  store float %angle, float* %angle.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %1 = bitcast %struct._GimpBrushGenerated* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_brush_generated_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_brush_generated_set_angle, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i32 0, i32 0))
  store float -1.000000e+00, float* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load float, float* %angle.addr, align 4
  %conv = fpext float %13 to double
  %cmp11 = fcmp olt double %conv, 0.000000e+00
  br i1 %cmp11, label %if.then.13, label %if.else.17

if.then.13:                                       ; preds = %do.end
  %14 = load float, float* %angle.addr, align 4
  %conv14 = fpext float %14 to double
  %call15 = call double @fmod(double %conv14, double 1.800000e+02) #6
  %mul = fmul double -1.000000e+00, %call15
  %conv16 = fptrunc double %mul to float
  store float %conv16, float* %angle.addr, align 4
  br label %if.end.26

if.else.17:                                       ; preds = %do.end
  %15 = load float, float* %angle.addr, align 4
  %conv18 = fpext float %15 to double
  %cmp19 = fcmp ogt double %conv18, 1.800000e+02
  br i1 %cmp19, label %if.then.21, label %if.end.25

if.then.21:                                       ; preds = %if.else.17
  %16 = load float, float* %angle.addr, align 4
  %conv22 = fpext float %16 to double
  %call23 = call double @fmod(double %conv22, double 1.800000e+02) #6
  %conv24 = fptrunc double %call23 to float
  store float %conv24, float* %angle.addr, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.21, %if.else.17
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.13
  %17 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %angle27 = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %17, i32 0, i32 6
  %18 = load float, float* %angle27, align 4
  %19 = load float, float* %angle.addr, align 4
  %cmp28 = fcmp une float %18, %19
  br i1 %cmp28, label %if.then.30, label %if.end.35

if.then.30:                                       ; preds = %if.end.26
  %20 = load float, float* %angle.addr, align 4
  %21 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %angle31 = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %21, i32 0, i32 6
  store float %20, float* %angle31, align 4
  %22 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %23 = bitcast %struct._GimpBrushGenerated* %22 to %struct._GTypeInstance*
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 80)
  %24 = bitcast %struct._GTypeInstance* %call32 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0))
  %25 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %26 = bitcast %struct._GimpBrushGenerated* %25 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_data_get_type() #7
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call33)
  %27 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpData*
  call void @gimp_data_dirty(%struct._GimpData* %27)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.30, %if.end.26
  %28 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %angle36 = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %28, i32 0, i32 6
  %29 = load float, float* %angle36, align 4
  store float %29, float* %retval
  br label %return

return:                                           ; preds = %if.end.35, %if.else.9
  %30 = load float, float* %retval
  ret float %30
}

; Function Attrs: nounwind
declare double @fmod(double, double) #5

; Function Attrs: nounwind uwtable
define i32 @gimp_brush_generated_get_shape(%struct._GimpBrushGenerated* %brush) #3 {
entry:
  %retval = alloca i32, align 4
  %brush.addr = alloca %struct._GimpBrushGenerated*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpBrushGenerated* %brush, %struct._GimpBrushGenerated** %brush.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %1 = bitcast %struct._GimpBrushGenerated* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_brush_generated_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_brush_generated_get_shape, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %shape = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %13, i32 0, i32 1
  %14 = load i32, i32* %shape, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define float @gimp_brush_generated_get_radius(%struct._GimpBrushGenerated* %brush) #3 {
entry:
  %retval = alloca float, align 4
  %brush.addr = alloca %struct._GimpBrushGenerated*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpBrushGenerated* %brush, %struct._GimpBrushGenerated** %brush.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %1 = bitcast %struct._GimpBrushGenerated* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_brush_generated_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_brush_generated_get_radius, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i32 0, i32 0))
  store float -1.000000e+00, float* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %radius = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %13, i32 0, i32 2
  %14 = load float, float* %radius, align 4
  store float %14, float* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load float, float* %retval
  ret float %15
}

; Function Attrs: nounwind uwtable
define i32 @gimp_brush_generated_get_spikes(%struct._GimpBrushGenerated* %brush) #3 {
entry:
  %retval = alloca i32, align 4
  %brush.addr = alloca %struct._GimpBrushGenerated*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpBrushGenerated* %brush, %struct._GimpBrushGenerated** %brush.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %1 = bitcast %struct._GimpBrushGenerated* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_brush_generated_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_brush_generated_get_spikes, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %spikes = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %13, i32 0, i32 3
  %14 = load i32, i32* %spikes, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define float @gimp_brush_generated_get_hardness(%struct._GimpBrushGenerated* %brush) #3 {
entry:
  %retval = alloca float, align 4
  %brush.addr = alloca %struct._GimpBrushGenerated*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpBrushGenerated* %brush, %struct._GimpBrushGenerated** %brush.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %1 = bitcast %struct._GimpBrushGenerated* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_brush_generated_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_brush_generated_get_hardness, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i32 0, i32 0))
  store float -1.000000e+00, float* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %hardness = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %13, i32 0, i32 4
  %14 = load float, float* %hardness, align 4
  store float %14, float* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load float, float* %retval
  ret float %15
}

; Function Attrs: nounwind uwtable
define float @gimp_brush_generated_get_aspect_ratio(%struct._GimpBrushGenerated* %brush) #3 {
entry:
  %retval = alloca float, align 4
  %brush.addr = alloca %struct._GimpBrushGenerated*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpBrushGenerated* %brush, %struct._GimpBrushGenerated** %brush.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %1 = bitcast %struct._GimpBrushGenerated* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_brush_generated_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_brush_generated_get_aspect_ratio, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i32 0, i32 0))
  store float -1.000000e+00, float* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %aspect_ratio = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %13, i32 0, i32 5
  %14 = load float, float* %aspect_ratio, align 4
  store float %14, float* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load float, float* %retval
  ret float %15
}

; Function Attrs: nounwind uwtable
define float @gimp_brush_generated_get_angle(%struct._GimpBrushGenerated* %brush) #3 {
entry:
  %retval = alloca float, align 4
  %brush.addr = alloca %struct._GimpBrushGenerated*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpBrushGenerated* %brush, %struct._GimpBrushGenerated** %brush.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %1 = bitcast %struct._GimpBrushGenerated* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_brush_generated_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_brush_generated_get_angle, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i32 0, i32 0))
  store float -1.000000e+00, float* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %angle = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %13, i32 0, i32 6
  %14 = load float, float* %angle, align 4
  store float %14, float* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load float, float* %retval
  ret float %15
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_generated_class_init(%struct._GimpBrushGeneratedClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpBrushGeneratedClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %data_class = alloca %struct._GimpDataClass*, align 8
  %brush_class = alloca %struct._GimpBrushClass*, align 8
  store %struct._GimpBrushGeneratedClass* %klass, %struct._GimpBrushGeneratedClass** %klass.addr, align 8
  %0 = load %struct._GimpBrushGeneratedClass*, %struct._GimpBrushGeneratedClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpBrushGeneratedClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpBrushGeneratedClass*, %struct._GimpBrushGeneratedClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpBrushGeneratedClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_data_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpDataClass*
  store %struct._GimpDataClass* %5, %struct._GimpDataClass** %data_class, align 8
  %6 = load %struct._GimpBrushGeneratedClass*, %struct._GimpBrushGeneratedClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpBrushGeneratedClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_brush_get_type() #7
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpBrushClass*
  store %struct._GimpBrushClass* %8, %struct._GimpBrushClass** %brush_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_brush_generated_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_brush_generated_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %11 = load %struct._GimpDataClass*, %struct._GimpDataClass** %data_class, align 8
  %save = getelementptr inbounds %struct._GimpDataClass, %struct._GimpDataClass* %11, i32 0, i32 2
  store i32 (%struct._GimpData*, %struct._GError**)* @gimp_brush_generated_save, i32 (%struct._GimpData*, %struct._GError**)** %save, align 8
  %12 = load %struct._GimpDataClass*, %struct._GimpDataClass** %data_class, align 8
  %dirty = getelementptr inbounds %struct._GimpDataClass, %struct._GimpDataClass* %12, i32 0, i32 1
  store void (%struct._GimpData*)* @gimp_brush_generated_dirty, void (%struct._GimpData*)** %dirty, align 8
  %13 = load %struct._GimpDataClass*, %struct._GimpDataClass** %data_class, align 8
  %get_extension = getelementptr inbounds %struct._GimpDataClass, %struct._GimpDataClass* %13, i32 0, i32 3
  store i8* (%struct._GimpData*)* @gimp_brush_generated_get_extension, i8* (%struct._GimpData*)** %get_extension, align 8
  %14 = load %struct._GimpDataClass*, %struct._GimpDataClass** %data_class, align 8
  %duplicate = getelementptr inbounds %struct._GimpDataClass, %struct._GimpDataClass* %14, i32 0, i32 4
  store %struct._GimpData* (%struct._GimpData*)* @gimp_brush_generated_duplicate, %struct._GimpData* (%struct._GimpData*)** %duplicate, align 8
  %15 = load %struct._GimpBrushClass*, %struct._GimpBrushClass** %brush_class, align 8
  %transform_size = getelementptr inbounds %struct._GimpBrushClass, %struct._GimpBrushClass* %15, i32 0, i32 5
  store void (%struct._GimpBrush*, double, double, double, i32*, i32*)* @gimp_brush_generated_transform_size, void (%struct._GimpBrush*, double, double, double, i32*, i32*)** %transform_size, align 8
  %16 = load %struct._GimpBrushClass*, %struct._GimpBrushClass** %brush_class, align 8
  %transform_mask = getelementptr inbounds %struct._GimpBrushClass, %struct._GimpBrushClass* %16, i32 0, i32 6
  store %struct._TempBuf* (%struct._GimpBrush*, double, double, double, double)* @gimp_brush_generated_transform_mask, %struct._TempBuf* (%struct._GimpBrush*, double, double, double, double)** %transform_mask, align 8
  %17 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0)) #6
  %call6 = call i64 @gimp_brush_generated_shape_get_type() #7
  %call7 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* %call5, i64 %call6, i32 0, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %17, i32 1, %struct._GParamSpec* %call7)
  %18 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0)) #6
  %call9 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* %call8, double 1.000000e-01, double 4.000000e+03, double 5.000000e+00, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %18, i32 2, %struct._GParamSpec* %call9)
  %19 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0)) #6
  %call11 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* %call10, i32 2, i32 20, i32 2, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %19, i32 3, %struct._GParamSpec* %call11)
  %20 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0)) #6
  %call13 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* %call12, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %20, i32 4, %struct._GParamSpec* %call13)
  %21 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0)) #6
  %call15 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* %call14, double 1.000000e+00, double 2.000000e+01, double 1.000000e+00, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %21, i32 5, %struct._GParamSpec* %call15)
  %22 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0)) #6
  %call17 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* %call16, double 0.000000e+00, double 1.800000e+02, double 0.000000e+00, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %22, i32 6, %struct._GParamSpec* %call17)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_generated_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %brush = alloca %struct._GimpBrushGenerated*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_generated_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrushGenerated*
  store %struct._GimpBrushGenerated* %2, %struct._GimpBrushGenerated** %brush, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.4
    i32 3, label %sw.bb.7
    i32 4, label %sw.bb.10
    i32 5, label %sw.bb.14
    i32 6, label %sw.bb.18
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %5 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_enum(%struct._GValue* %5)
  %call3 = call i32 @gimp_brush_generated_set_shape(%struct._GimpBrushGenerated* %4, i32 %call2)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %6 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call5 = call double @g_value_get_double(%struct._GValue* %7)
  %conv = fptrunc double %call5 to float
  %call6 = call float @gimp_brush_generated_set_radius(%struct._GimpBrushGenerated* %6, float %conv)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %8 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call i32 @g_value_get_int(%struct._GValue* %9)
  %call9 = call i32 @gimp_brush_generated_set_spikes(%struct._GimpBrushGenerated* %8, i32 %call8)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %10 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call11 = call double @g_value_get_double(%struct._GValue* %11)
  %conv12 = fptrunc double %call11 to float
  %call13 = call float @gimp_brush_generated_set_hardness(%struct._GimpBrushGenerated* %10, float %conv12)
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %12 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call15 = call double @g_value_get_double(%struct._GValue* %13)
  %conv16 = fptrunc double %call15 to float
  %call17 = call float @gimp_brush_generated_set_aspect_ratio(%struct._GimpBrushGenerated* %12, float %conv16)
  br label %sw.epilog

sw.bb.18:                                         ; preds = %entry
  %14 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %15 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call19 = call double @g_value_get_double(%struct._GValue* %15)
  %conv20 = fptrunc double %call19 to float
  %call21 = call float @gimp_brush_generated_set_angle(%struct._GimpBrushGenerated* %14, float %conv20)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %16 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %16, %struct._GObject** %_glib__object, align 8
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %17, %struct._GParamSpec** %_glib__pspec, align 8
  %18 = load i32, i32* %property_id.addr, align 4
  store i32 %18, i32* %_glib__property_id, align 4
  %19 = load i32, i32* %_glib__property_id, align 4
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %20, i32 0, i32 1
  %21 = load i8*, i8** %name, align 8
  %22 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %23 = bitcast %struct._GParamSpec* %22 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %24, i32 0, i32 0
  %25 = load i64, i64* %g_type, align 8
  %call22 = call i8* @g_type_name(i64 %25)
  %26 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %27 = bitcast %struct._GObject* %26 to %struct._GTypeInstance*
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %27, i32 0, i32 0
  %28 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %g_type24 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %28, i32 0, i32 0
  %29 = load i64, i64* %g_type24, align 8
  %call25 = call i8* @g_type_name(i64 %29)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0), i32 211, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 %19, i8* %21, i8* %call22, i8* %call25)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.18, %sw.bb.14, %sw.bb.10, %sw.bb.7, %sw.bb.4, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_generated_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %brush = alloca %struct._GimpBrushGenerated*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_generated_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrushGenerated*
  store %struct._GimpBrushGenerated* %2, %struct._GimpBrushGenerated** %brush, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
    i32 5, label %sw.bb.6
    i32 6, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %shape = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %5, i32 0, i32 1
  %6 = load i32, i32* %shape, align 4
  call void @g_value_set_enum(%struct._GValue* %4, i32 %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %radius = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %8, i32 0, i32 2
  %9 = load float, float* %radius, align 4
  %conv = fpext float %9 to double
  call void @g_value_set_double(%struct._GValue* %7, double %conv)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %spikes = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %11, i32 0, i32 3
  %12 = load i32, i32* %spikes, align 4
  call void @g_value_set_int(%struct._GValue* %10, i32 %12)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %14 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %hardness = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %14, i32 0, i32 4
  %15 = load float, float* %hardness, align 4
  %conv5 = fpext float %15 to double
  call void @g_value_set_double(%struct._GValue* %13, double %conv5)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %17 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %aspect_ratio = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %17, i32 0, i32 5
  %18 = load float, float* %aspect_ratio, align 4
  %conv7 = fpext float %18 to double
  call void @g_value_set_double(%struct._GValue* %16, double %conv7)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %20 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %angle = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %20, i32 0, i32 6
  %21 = load float, float* %angle, align 4
  %conv9 = fpext float %21 to double
  call void @g_value_set_double(%struct._GValue* %19, double %conv9)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %22 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %22, %struct._GObject** %_glib__object, align 8
  %23 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %23, %struct._GParamSpec** %_glib__pspec, align 8
  %24 = load i32, i32* %property_id.addr, align 4
  store i32 %24, i32* %_glib__property_id, align 4
  %25 = load i32, i32* %_glib__property_id, align 4
  %26 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %26, i32 0, i32 1
  %27 = load i8*, i8** %name, align 8
  %28 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %29 = bitcast %struct._GParamSpec* %28 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %30, i32 0, i32 0
  %31 = load i64, i64* %g_type, align 8
  %call10 = call i8* @g_type_name(i64 %31)
  %32 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %33 = bitcast %struct._GObject* %32 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %g_type12 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %34, i32 0, i32 0
  %35 = load i64, i64* %g_type12, align 8
  %call13 = call i8* @g_type_name(i64 %35)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0), i32 245, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 %25, i8* %27, i8* %call10, i8* %call13)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.8, %sw.bb.6, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

declare i32 @gimp_brush_generated_save(%struct._GimpData*, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_generated_dirty(%struct._GimpData* %data) #3 {
entry:
  %data.addr = alloca %struct._GimpData*, align 8
  %brush = alloca %struct._GimpBrushGenerated*, align 8
  %gbrush = alloca %struct._GimpBrush*, align 8
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  %0 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %1 = bitcast %struct._GimpData* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_generated_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrushGenerated*
  store %struct._GimpBrushGenerated* %2, %struct._GimpBrushGenerated** %brush, align 8
  %3 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %4 = bitcast %struct._GimpBrushGenerated* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_brush_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpBrush*
  store %struct._GimpBrush* %5, %struct._GimpBrush** %gbrush, align 8
  %6 = load %struct._GimpBrush*, %struct._GimpBrush** %gbrush, align 8
  %mask = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %6, i32 0, i32 1
  %7 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %tobool = icmp ne %struct._TempBuf* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpBrush*, %struct._GimpBrush** %gbrush, align 8
  %mask4 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %8, i32 0, i32 1
  %9 = load %struct._TempBuf*, %struct._TempBuf** %mask4, align 8
  call void @temp_buf_free(%struct._TempBuf* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %11 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %shape = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %11, i32 0, i32 1
  %12 = load i32, i32* %shape, align 4
  %13 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %radius = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %13, i32 0, i32 2
  %14 = load float, float* %radius, align 4
  %15 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %spikes = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %15, i32 0, i32 3
  %16 = load i32, i32* %spikes, align 4
  %17 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %hardness = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %17, i32 0, i32 4
  %18 = load float, float* %hardness, align 4
  %19 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %aspect_ratio = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %19, i32 0, i32 5
  %20 = load float, float* %aspect_ratio, align 4
  %21 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %angle = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %21, i32 0, i32 6
  %22 = load float, float* %angle, align 4
  %23 = load %struct._GimpBrush*, %struct._GimpBrush** %gbrush, align 8
  %x_axis = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %23, i32 0, i32 4
  %24 = load %struct._GimpBrush*, %struct._GimpBrush** %gbrush, align 8
  %y_axis = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %24, i32 0, i32 5
  %call5 = call %struct._TempBuf* @gimp_brush_generated_calc(%struct._GimpBrushGenerated* %10, i32 %12, float %14, i32 %16, float %18, float %20, float %22, %struct._GimpVector2* %x_axis, %struct._GimpVector2* %y_axis)
  %25 = load %struct._GimpBrush*, %struct._GimpBrush** %gbrush, align 8
  %mask6 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %25, i32 0, i32 1
  store %struct._TempBuf* %call5, %struct._TempBuf** %mask6, align 8
  %26 = load i8*, i8** @gimp_brush_generated_parent_class, align 8
  %27 = bitcast i8* %26 to %struct._GTypeClass*
  %call7 = call i64 @gimp_data_get_type() #7
  %call8 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %27, i64 %call7)
  %28 = bitcast %struct._GTypeClass* %call8 to %struct._GimpDataClass*
  %dirty = getelementptr inbounds %struct._GimpDataClass, %struct._GimpDataClass* %28, i32 0, i32 1
  %29 = load void (%struct._GimpData*)*, void (%struct._GimpData*)** %dirty, align 8
  %30 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  call void %29(%struct._GimpData* %30)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @gimp_brush_generated_get_extension(%struct._GimpData* %data) #3 {
entry:
  %data.addr = alloca %struct._GimpData*, align 8
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  ret i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpData* @gimp_brush_generated_duplicate(%struct._GimpData* %data) #3 {
entry:
  %data.addr = alloca %struct._GimpData*, align 8
  %brush = alloca %struct._GimpBrushGenerated*, align 8
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  %0 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %1 = bitcast %struct._GimpData* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_generated_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrushGenerated*
  store %struct._GimpBrushGenerated* %2, %struct._GimpBrushGenerated** %brush, align 8
  %3 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %4 = bitcast %struct._GimpBrushGenerated* %3 to i8*
  %call2 = call i8* @gimp_object_get_name(i8* %4)
  %5 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %shape = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %5, i32 0, i32 1
  %6 = load i32, i32* %shape, align 4
  %7 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %radius = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %7, i32 0, i32 2
  %8 = load float, float* %radius, align 4
  %9 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %spikes = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %9, i32 0, i32 3
  %10 = load i32, i32* %spikes, align 4
  %11 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %hardness = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %11, i32 0, i32 4
  %12 = load float, float* %hardness, align 4
  %13 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %aspect_ratio = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %13, i32 0, i32 5
  %14 = load float, float* %aspect_ratio, align 4
  %15 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %angle = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %15, i32 0, i32 6
  %16 = load float, float* %angle, align 4
  %call3 = call %struct._GimpData* @gimp_brush_generated_new(i8* %call2, i32 %6, float %8, i32 %10, float %12, float %14, float %16)
  ret %struct._GimpData* %call3
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_generated_transform_size(%struct._GimpBrush* %gbrush, double %scale, double %aspect_ratio, double %angle, i32* %width, i32* %height) #3 {
entry:
  %gbrush.addr = alloca %struct._GimpBrush*, align 8
  %scale.addr = alloca double, align 8
  %aspect_ratio.addr = alloca double, align 8
  %angle.addr = alloca double, align 8
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %brush = alloca %struct._GimpBrushGenerated*, align 8
  %half_width = alloca i32, align 4
  %half_height = alloca i32, align 4
  %ratio = alloca double, align 8
  store %struct._GimpBrush* %gbrush, %struct._GimpBrush** %gbrush.addr, align 8
  store double %scale, double* %scale.addr, align 8
  store double %aspect_ratio, double* %aspect_ratio.addr, align 8
  store double %angle, double* %angle.addr, align 8
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  %0 = load %struct._GimpBrush*, %struct._GimpBrush** %gbrush.addr, align 8
  %1 = bitcast %struct._GimpBrush* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_generated_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrushGenerated*
  store %struct._GimpBrushGenerated* %2, %struct._GimpBrushGenerated** %brush, align 8
  %3 = load double, double* %aspect_ratio.addr, align 8
  %cmp = fcmp oeq double %3, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %aspect_ratio2 = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %4, i32 0, i32 5
  %5 = load float, float* %aspect_ratio2, align 4
  %conv = fpext float %5 to double
  store double %conv, double* %ratio, align 8
  br label %if.end.12

if.else:                                          ; preds = %entry
  %6 = load double, double* %aspect_ratio.addr, align 8
  %call3 = call double @fabs(double %6) #7
  %add = fadd double %call3, 1.000000e+00
  %cmp4 = fcmp olt double %add, 2.000000e+01
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %7 = load double, double* %aspect_ratio.addr, align 8
  %call6 = call double @fabs(double %7) #7
  %add7 = fadd double %call6, 1.000000e+00
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %add7, %cond.true ], [ 2.000000e+01, %cond.false ]
  store double %cond, double* %ratio, align 8
  %8 = load double, double* %aspect_ratio.addr, align 8
  %cmp8 = fcmp olt double %8, 0.000000e+00
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %cond.end
  %9 = load double, double* %angle.addr, align 8
  %add11 = fadd double %9, 2.500000e-01
  store double %add11, double* %angle.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.10, %cond.end
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then
  %10 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %11 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %shape = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %11, i32 0, i32 1
  %12 = load i32, i32* %shape, align 4
  %13 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %radius = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %13, i32 0, i32 2
  %14 = load float, float* %radius, align 4
  %conv13 = fpext float %14 to double
  %15 = load double, double* %scale.addr, align 8
  %mul = fmul double %conv13, %15
  %conv14 = fptrunc double %mul to float
  %16 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %spikes = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %16, i32 0, i32 3
  %17 = load i32, i32* %spikes, align 4
  %18 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %hardness = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %18, i32 0, i32 4
  %19 = load float, float* %hardness, align 4
  %20 = load double, double* %ratio, align 8
  %conv15 = fptrunc double %20 to float
  %21 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %angle16 = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %21, i32 0, i32 6
  %22 = load float, float* %angle16, align 4
  %conv17 = fpext float %22 to double
  %23 = load double, double* %angle.addr, align 8
  %mul18 = fmul double 3.600000e+02, %23
  %add19 = fadd double %conv17, %mul18
  call void @gimp_brush_generated_get_half_size(%struct._GimpBrushGenerated* %10, i32 %12, float %conv14, i32 %17, float %19, float %conv15, double %add19, i32* %half_width, i32* %half_height, double* null, double* null, %struct._GimpVector2* null, %struct._GimpVector2* null)
  %24 = load i32, i32* %half_width, align 4
  %mul20 = mul nsw i32 %24, 2
  %add21 = add nsw i32 %mul20, 1
  %25 = load i32*, i32** %width.addr, align 8
  store i32 %add21, i32* %25, align 4
  %26 = load i32, i32* %half_height, align 4
  %mul22 = mul nsw i32 %26, 2
  %add23 = add nsw i32 %mul22, 1
  %27 = load i32*, i32** %height.addr, align 8
  store i32 %add23, i32* %27, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._TempBuf* @gimp_brush_generated_transform_mask(%struct._GimpBrush* %gbrush, double %scale, double %aspect_ratio, double %angle, double %hardness) #3 {
entry:
  %gbrush.addr = alloca %struct._GimpBrush*, align 8
  %scale.addr = alloca double, align 8
  %aspect_ratio.addr = alloca double, align 8
  %angle.addr = alloca double, align 8
  %hardness.addr = alloca double, align 8
  %brush = alloca %struct._GimpBrushGenerated*, align 8
  %ratio = alloca double, align 8
  store %struct._GimpBrush* %gbrush, %struct._GimpBrush** %gbrush.addr, align 8
  store double %scale, double* %scale.addr, align 8
  store double %aspect_ratio, double* %aspect_ratio.addr, align 8
  store double %angle, double* %angle.addr, align 8
  store double %hardness, double* %hardness.addr, align 8
  %0 = load %struct._GimpBrush*, %struct._GimpBrush** %gbrush.addr, align 8
  %1 = bitcast %struct._GimpBrush* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_generated_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrushGenerated*
  store %struct._GimpBrushGenerated* %2, %struct._GimpBrushGenerated** %brush, align 8
  %3 = load double, double* %aspect_ratio.addr, align 8
  %cmp = fcmp oeq double %3, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %aspect_ratio2 = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %4, i32 0, i32 5
  %5 = load float, float* %aspect_ratio2, align 4
  %conv = fpext float %5 to double
  store double %conv, double* %ratio, align 8
  br label %if.end.12

if.else:                                          ; preds = %entry
  %6 = load double, double* %aspect_ratio.addr, align 8
  %call3 = call double @fabs(double %6) #7
  %add = fadd double %call3, 1.000000e+00
  %cmp4 = fcmp olt double %add, 2.000000e+01
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %7 = load double, double* %aspect_ratio.addr, align 8
  %call6 = call double @fabs(double %7) #7
  %add7 = fadd double %call6, 1.000000e+00
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %add7, %cond.true ], [ 2.000000e+01, %cond.false ]
  store double %cond, double* %ratio, align 8
  %8 = load double, double* %aspect_ratio.addr, align 8
  %cmp8 = fcmp olt double %8, 0.000000e+00
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %cond.end
  %9 = load double, double* %angle.addr, align 8
  %add11 = fadd double %9, 2.500000e-01
  store double %add11, double* %angle.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.10, %cond.end
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then
  %10 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %11 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %shape = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %11, i32 0, i32 1
  %12 = load i32, i32* %shape, align 4
  %13 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %radius = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %13, i32 0, i32 2
  %14 = load float, float* %radius, align 4
  %conv13 = fpext float %14 to double
  %15 = load double, double* %scale.addr, align 8
  %mul = fmul double %conv13, %15
  %conv14 = fptrunc double %mul to float
  %16 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %spikes = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %16, i32 0, i32 3
  %17 = load i32, i32* %spikes, align 4
  %18 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %hardness15 = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %18, i32 0, i32 4
  %19 = load float, float* %hardness15, align 4
  %conv16 = fpext float %19 to double
  %20 = load double, double* %hardness.addr, align 8
  %mul17 = fmul double %conv16, %20
  %conv18 = fptrunc double %mul17 to float
  %21 = load double, double* %ratio, align 8
  %conv19 = fptrunc double %21 to float
  %22 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush, align 8
  %angle20 = getelementptr inbounds %struct._GimpBrushGenerated, %struct._GimpBrushGenerated* %22, i32 0, i32 6
  %23 = load float, float* %angle20, align 4
  %conv21 = fpext float %23 to double
  %24 = load double, double* %angle.addr, align 8
  %mul22 = fmul double 3.600000e+02, %24
  %add23 = fadd double %conv21, %mul22
  %conv24 = fptrunc double %add23 to float
  %call25 = call %struct._TempBuf* @gimp_brush_generated_calc(%struct._GimpBrushGenerated* %10, i32 %12, float %conv14, i32 %17, float %conv18, float %conv19, float %conv24, %struct._GimpVector2* null, %struct._GimpVector2* null)
  ret %struct._TempBuf* %call25
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_generated_shape_get_type() #2

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare double @g_value_get_double(%struct._GValue*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

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

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare void @temp_buf_free(%struct._TempBuf*) #1

; Function Attrs: nounwind uwtable
define internal %struct._TempBuf* @gimp_brush_generated_calc(%struct._GimpBrushGenerated* %brush, i32 %shape, float %radius, i32 %spikes, float %hardness, float %aspect_ratio, float %angle, %struct._GimpVector2* %xaxis, %struct._GimpVector2* %yaxis) #3 {
entry:
  %brush.addr = alloca %struct._GimpBrushGenerated*, align 8
  %shape.addr = alloca i32, align 4
  %radius.addr = alloca float, align 4
  %spikes.addr = alloca i32, align 4
  %hardness.addr = alloca float, align 4
  %aspect_ratio.addr = alloca float, align 4
  %angle.addr = alloca float, align 4
  %xaxis.addr = alloca %struct._GimpVector2*, align 8
  %yaxis.addr = alloca %struct._GimpVector2*, align 8
  %centerp = alloca i8*, align 8
  %lookup = alloca i8*, align 8
  %a = alloca i8, align 1
  %half_width = alloca i32, align 4
  %half_height = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %c = alloca double, align 8
  %s = alloca double, align 8
  %cs = alloca double, align 8
  %ss = alloca double, align 8
  %x_axis = alloca %struct._GimpVector2, align 8
  %y_axis = alloca %struct._GimpVector2, align 8
  %mask = alloca %struct._TempBuf*, align 8
  %d = alloca double, align 8
  %tx = alloca double, align 8
  %ty = alloca double, align 8
  %angle34 = alloca double, align 8
  %sx = alloca double, align 8
  %sy = alloca double, align 8
  store %struct._GimpBrushGenerated* %brush, %struct._GimpBrushGenerated** %brush.addr, align 8
  store i32 %shape, i32* %shape.addr, align 4
  store float %radius, float* %radius.addr, align 4
  store i32 %spikes, i32* %spikes.addr, align 4
  store float %hardness, float* %hardness.addr, align 4
  store float %aspect_ratio, float* %aspect_ratio.addr, align 4
  store float %angle, float* %angle.addr, align 4
  store %struct._GimpVector2* %xaxis, %struct._GimpVector2** %xaxis.addr, align 8
  store %struct._GimpVector2* %yaxis, %struct._GimpVector2** %yaxis.addr, align 8
  store i32 0, i32* %half_width, align 4
  store i32 0, i32* %half_height, align 4
  %0 = load %struct._GimpBrushGenerated*, %struct._GimpBrushGenerated** %brush.addr, align 8
  %1 = load i32, i32* %shape.addr, align 4
  %2 = load float, float* %radius.addr, align 4
  %3 = load i32, i32* %spikes.addr, align 4
  %4 = load float, float* %hardness.addr, align 4
  %5 = load float, float* %aspect_ratio.addr, align 4
  %6 = load float, float* %angle.addr, align 4
  %conv = fpext float %6 to double
  call void @gimp_brush_generated_get_half_size(%struct._GimpBrushGenerated* %0, i32 %1, float %2, i32 %3, float %4, float %5, double %conv, i32* %half_width, i32* %half_height, double* %s, double* %c, %struct._GimpVector2* %x_axis, %struct._GimpVector2* %y_axis)
  %7 = load i32, i32* %half_width, align 4
  %mul = mul nsw i32 %7, 2
  %add = add nsw i32 %mul, 1
  %8 = load i32, i32* %half_height, align 4
  %mul1 = mul nsw i32 %8, 2
  %add2 = add nsw i32 %mul1, 1
  %9 = load i32, i32* %half_width, align 4
  %10 = load i32, i32* %half_height, align 4
  %call = call %struct._TempBuf* @temp_buf_new(i32 %add, i32 %add2, i32 1, i32 %9, i32 %10, i8* null)
  store %struct._TempBuf* %call, %struct._TempBuf** %mask, align 8
  %11 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %call3 = call i8* @temp_buf_get_data(%struct._TempBuf* %11)
  %12 = load i32, i32* %half_height, align 4
  %13 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %13, i32 0, i32 1
  %14 = load i32, i32* %width, align 4
  %mul4 = mul nsw i32 %12, %14
  %idx.ext = sext i32 %mul4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %call3, i64 %idx.ext
  %15 = load i32, i32* %half_width, align 4
  %idx.ext5 = sext i32 %15 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext5
  store i8* %add.ptr6, i8** %centerp, align 8
  %16 = load float, float* %radius.addr, align 4
  %conv7 = fpext float %16 to double
  %17 = load float, float* %hardness.addr, align 4
  %conv8 = fpext float %17 to double
  %call9 = call i8* @gimp_brush_generated_calc_lut(double %conv7, double %conv8)
  store i8* %call9, i8** %lookup, align 8
  %18 = load i32, i32* %spikes.addr, align 4
  %conv10 = sitofp i32 %18 to double
  %div = fdiv double 0xC01921FB54442D18, %conv10
  %call11 = call double @cos(double %div) #6
  store double %call11, double* %cs, align 8
  %19 = load i32, i32* %spikes.addr, align 4
  %conv12 = sitofp i32 %19 to double
  %div13 = fdiv double 0xC01921FB54442D18, %conv12
  %call14 = call double @sin(double %div13) #6
  store double %call14, double* %ss, align 8
  %20 = load i32, i32* %spikes.addr, align 4
  %rem = srem i32 %20, 2
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %21 = load i32, i32* %half_height, align 4
  %sub = sub nsw i32 0, %21
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.95, %cond.end
  %22 = load i32, i32* %y, align 4
  %23 = load i32, i32* %half_height, align 4
  %cmp = icmp sle i32 %22, %23
  br i1 %cmp, label %for.body, label %for.end.97

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %half_width, align 4
  %sub16 = sub nsw i32 0, %24
  store i32 %sub16, i32* %x, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc, %for.body
  %25 = load i32, i32* %x, align 4
  %26 = load i32, i32* %half_width, align 4
  %cmp18 = icmp sle i32 %25, %26
  br i1 %cmp18, label %for.body.20, label %for.end

for.body.20:                                      ; preds = %for.cond.17
  store double 0.000000e+00, double* %d, align 8
  %27 = load double, double* %c, align 8
  %28 = load i32, i32* %x, align 4
  %conv21 = sitofp i32 %28 to double
  %mul22 = fmul double %27, %conv21
  %29 = load double, double* %s, align 8
  %30 = load i32, i32* %y, align 4
  %conv23 = sitofp i32 %30 to double
  %mul24 = fmul double %29, %conv23
  %sub25 = fsub double %mul22, %mul24
  store double %sub25, double* %tx, align 8
  %31 = load double, double* %s, align 8
  %32 = load i32, i32* %x, align 4
  %conv26 = sitofp i32 %32 to double
  %mul27 = fmul double %31, %conv26
  %33 = load double, double* %c, align 8
  %34 = load i32, i32* %y, align 4
  %conv28 = sitofp i32 %34 to double
  %mul29 = fmul double %33, %conv28
  %add30 = fadd double %mul27, %mul29
  %call31 = call double @fabs(double %add30) #7
  store double %call31, double* %ty, align 8
  %35 = load i32, i32* %spikes.addr, align 4
  %cmp32 = icmp sgt i32 %35, 2
  br i1 %cmp32, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.20
  %36 = load double, double* %ty, align 8
  %37 = load double, double* %tx, align 8
  %call35 = call double @atan2(double %36, double %37) #6
  store double %call35, double* %angle34, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %38 = load double, double* %angle34, align 8
  %39 = load i32, i32* %spikes.addr, align 4
  %conv36 = sitofp i32 %39 to double
  %div37 = fdiv double 0x400921FB54442D18, %conv36
  %cmp38 = fcmp ogt double %38, %div37
  br i1 %cmp38, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %40 = load double, double* %tx, align 8
  store double %40, double* %sx, align 8
  %41 = load double, double* %ty, align 8
  store double %41, double* %sy, align 8
  %42 = load double, double* %cs, align 8
  %43 = load double, double* %sx, align 8
  %mul40 = fmul double %42, %43
  %44 = load double, double* %ss, align 8
  %45 = load double, double* %sy, align 8
  %mul41 = fmul double %44, %45
  %sub42 = fsub double %mul40, %mul41
  store double %sub42, double* %tx, align 8
  %46 = load double, double* %ss, align 8
  %47 = load double, double* %sx, align 8
  %mul43 = fmul double %46, %47
  %48 = load double, double* %cs, align 8
  %49 = load double, double* %sy, align 8
  %mul44 = fmul double %48, %49
  %add45 = fadd double %mul43, %mul44
  store double %add45, double* %ty, align 8
  %50 = load i32, i32* %spikes.addr, align 4
  %conv46 = sitofp i32 %50 to double
  %div47 = fdiv double 0x401921FB54442D18, %conv46
  %51 = load double, double* %angle34, align 8
  %sub48 = fsub double %51, %div47
  store double %sub48, double* %angle34, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %for.body.20
  %52 = load float, float* %aspect_ratio.addr, align 4
  %conv49 = fpext float %52 to double
  %53 = load double, double* %ty, align 8
  %mul50 = fmul double %53, %conv49
  store double %mul50, double* %ty, align 8
  %54 = load i32, i32* %shape.addr, align 4
  switch i32 %54, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.55
    i32 2, label %sw.bb.66
  ]

sw.bb:                                            ; preds = %if.end
  %55 = load double, double* %tx, align 8
  %56 = load double, double* %tx, align 8
  %mul51 = fmul double %55, %56
  %57 = load double, double* %ty, align 8
  %58 = load double, double* %ty, align 8
  %mul52 = fmul double %57, %58
  %add53 = fadd double %mul51, %mul52
  %call54 = call double @sqrt(double %add53) #6
  store double %call54, double* %d, align 8
  br label %sw.epilog

sw.bb.55:                                         ; preds = %if.end
  %59 = load double, double* %tx, align 8
  %call56 = call double @fabs(double %59) #7
  %60 = load double, double* %ty, align 8
  %call57 = call double @fabs(double %60) #7
  %cmp58 = fcmp ogt double %call56, %call57
  br i1 %cmp58, label %cond.true.60, label %cond.false.62

cond.true.60:                                     ; preds = %sw.bb.55
  %61 = load double, double* %tx, align 8
  %call61 = call double @fabs(double %61) #7
  br label %cond.end.64

cond.false.62:                                    ; preds = %sw.bb.55
  %62 = load double, double* %ty, align 8
  %call63 = call double @fabs(double %62) #7
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.62, %cond.true.60
  %cond65 = phi double [ %call61, %cond.true.60 ], [ %call63, %cond.false.62 ]
  store double %cond65, double* %d, align 8
  br label %sw.epilog

sw.bb.66:                                         ; preds = %if.end
  %63 = load double, double* %tx, align 8
  %call67 = call double @fabs(double %63) #7
  %64 = load double, double* %ty, align 8
  %call68 = call double @fabs(double %64) #7
  %add69 = fadd double %call67, %call68
  store double %add69, double* %d, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.66, %cond.end.64, %sw.bb
  %65 = load double, double* %d, align 8
  %66 = load float, float* %radius.addr, align 4
  %add70 = fadd float %66, 1.000000e+00
  %conv71 = fpext float %add70 to double
  %cmp72 = fcmp olt double %65, %conv71
  br i1 %cmp72, label %if.then.74, label %if.else

if.then.74:                                       ; preds = %sw.epilog
  %67 = load double, double* %d, align 8
  %mul75 = fmul double %67, 4.000000e+00
  %call76 = call double @rint(double %mul75) #7
  %conv77 = fptosi double %call76 to i32
  %idxprom = sext i32 %conv77 to i64
  %68 = load i8*, i8** %lookup, align 8
  %arrayidx = getelementptr inbounds i8, i8* %68, i64 %idxprom
  %69 = load i8, i8* %arrayidx, align 1
  store i8 %69, i8* %a, align 1
  br label %if.end.78

if.else:                                          ; preds = %sw.epilog
  store i8 0, i8* %a, align 1
  br label %if.end.78

if.end.78:                                        ; preds = %if.else, %if.then.74
  %70 = load i8, i8* %a, align 1
  %71 = load i32, i32* %y, align 4
  %72 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %width79 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %72, i32 0, i32 1
  %73 = load i32, i32* %width79, align 4
  %mul80 = mul nsw i32 %71, %73
  %74 = load i32, i32* %x, align 4
  %add81 = add nsw i32 %mul80, %74
  %idxprom82 = sext i32 %add81 to i64
  %75 = load i8*, i8** %centerp, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %75, i64 %idxprom82
  store i8 %70, i8* %arrayidx83, align 1
  %76 = load i32, i32* %spikes.addr, align 4
  %rem84 = srem i32 %76, 2
  %cmp85 = icmp eq i32 %rem84, 0
  br i1 %cmp85, label %if.then.87, label %if.end.94

if.then.87:                                       ; preds = %if.end.78
  %77 = load i8, i8* %a, align 1
  %78 = load i32, i32* %y, align 4
  %mul88 = mul nsw i32 -1, %78
  %79 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %width89 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %79, i32 0, i32 1
  %80 = load i32, i32* %width89, align 4
  %mul90 = mul nsw i32 %mul88, %80
  %81 = load i32, i32* %x, align 4
  %sub91 = sub nsw i32 %mul90, %81
  %idxprom92 = sext i32 %sub91 to i64
  %82 = load i8*, i8** %centerp, align 8
  %arrayidx93 = getelementptr inbounds i8, i8* %82, i64 %idxprom92
  store i8 %77, i8* %arrayidx93, align 1
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.87, %if.end.78
  br label %for.inc

for.inc:                                          ; preds = %if.end.94
  %83 = load i32, i32* %x, align 4
  %inc = add nsw i32 %83, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.17

for.end:                                          ; preds = %for.cond.17
  br label %for.inc.95

for.inc.95:                                       ; preds = %for.end
  %84 = load i32, i32* %y, align 4
  %inc96 = add nsw i32 %84, 1
  store i32 %inc96, i32* %y, align 4
  br label %for.cond

for.end.97:                                       ; preds = %for.cond
  %85 = load i8*, i8** %lookup, align 8
  call void @g_free(i8* %85)
  %86 = load %struct._GimpVector2*, %struct._GimpVector2** %xaxis.addr, align 8
  %tobool98 = icmp ne %struct._GimpVector2* %86, null
  br i1 %tobool98, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %for.end.97
  %87 = load %struct._GimpVector2*, %struct._GimpVector2** %xaxis.addr, align 8
  %88 = bitcast %struct._GimpVector2* %87 to i8*
  %89 = bitcast %struct._GimpVector2* %x_axis to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %88, i8* %89, i64 16, i32 8, i1 false)
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.99, %for.end.97
  %90 = load %struct._GimpVector2*, %struct._GimpVector2** %yaxis.addr, align 8
  %tobool101 = icmp ne %struct._GimpVector2* %90, null
  br i1 %tobool101, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.end.100
  %91 = load %struct._GimpVector2*, %struct._GimpVector2** %yaxis.addr, align 8
  %92 = bitcast %struct._GimpVector2* %91 to i8*
  %93 = bitcast %struct._GimpVector2* %y_axis to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %92, i8* %93, i64 16, i32 8, i1 false)
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.102, %if.end.100
  %94 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  ret %struct._TempBuf* %94
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_generated_get_half_size(%struct._GimpBrushGenerated* %gbrush, i32 %shape, float %radius, i32 %spikes, float %hardness, float %aspect_ratio, double %angle_in_degrees, i32* %half_width, i32* %half_height, double* %_s, double* %_c, %struct._GimpVector2* %_x_axis, %struct._GimpVector2* %_y_axis) #3 {
entry:
  %gbrush.addr = alloca %struct._GimpBrushGenerated*, align 8
  %shape.addr = alloca i32, align 4
  %radius.addr = alloca float, align 4
  %spikes.addr = alloca i32, align 4
  %hardness.addr = alloca float, align 4
  %aspect_ratio.addr = alloca float, align 4
  %angle_in_degrees.addr = alloca double, align 8
  %half_width.addr = alloca i32*, align 8
  %half_height.addr = alloca i32*, align 8
  %_s.addr = alloca double*, align 8
  %_c.addr = alloca double*, align 8
  %_x_axis.addr = alloca %struct._GimpVector2*, align 8
  %_y_axis.addr = alloca %struct._GimpVector2*, align 8
  %c = alloca double, align 8
  %s = alloca double, align 8
  %short_radius = alloca double, align 8
  %x_axis = alloca %struct._GimpVector2, align 8
  %y_axis = alloca %struct._GimpVector2, align 8
  store %struct._GimpBrushGenerated* %gbrush, %struct._GimpBrushGenerated** %gbrush.addr, align 8
  store i32 %shape, i32* %shape.addr, align 4
  store float %radius, float* %radius.addr, align 4
  store i32 %spikes, i32* %spikes.addr, align 4
  store float %hardness, float* %hardness.addr, align 4
  store float %aspect_ratio, float* %aspect_ratio.addr, align 4
  store double %angle_in_degrees, double* %angle_in_degrees.addr, align 8
  store i32* %half_width, i32** %half_width.addr, align 8
  store i32* %half_height, i32** %half_height.addr, align 8
  store double* %_s, double** %_s.addr, align 8
  store double* %_c, double** %_c.addr, align 8
  store %struct._GimpVector2* %_x_axis, %struct._GimpVector2** %_x_axis.addr, align 8
  store %struct._GimpVector2* %_y_axis, %struct._GimpVector2** %_y_axis.addr, align 8
  %0 = load double, double* %angle_in_degrees.addr, align 8
  %mul = fmul double %0, 1.000000e+03
  %add = fadd double %mul, 5.000000e-01
  %conv = fptosi double %add to i32
  %conv1 = sitofp i32 %conv to double
  %div = fdiv double %conv1, 1.000000e+03
  store double %div, double* %angle_in_degrees.addr, align 8
  %1 = load double, double* %angle_in_degrees.addr, align 8
  %mul2 = fmul double %1, 0x401921FB54442D18
  %div3 = fdiv double %mul2, 3.600000e+02
  %call = call double @sin(double %div3) #6
  store double %call, double* %s, align 8
  %2 = load double, double* %angle_in_degrees.addr, align 8
  %mul4 = fmul double %2, 0x401921FB54442D18
  %div5 = fdiv double %mul4, 3.600000e+02
  %call6 = call double @cos(double %div5) #6
  store double %call6, double* %c, align 8
  %3 = load float, float* %radius.addr, align 4
  %4 = load float, float* %aspect_ratio.addr, align 4
  %div7 = fdiv float %3, %4
  %conv8 = fpext float %div7 to double
  store double %conv8, double* %short_radius, align 8
  %5 = load double, double* %c, align 8
  %6 = load float, float* %radius.addr, align 4
  %conv9 = fpext float %6 to double
  %mul10 = fmul double %5, %conv9
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %x_axis, i32 0, i32 0
  store double %mul10, double* %x, align 8
  %7 = load double, double* %s, align 8
  %mul11 = fmul double -1.000000e+00, %7
  %8 = load float, float* %radius.addr, align 4
  %conv12 = fpext float %8 to double
  %mul13 = fmul double %mul11, %conv12
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %x_axis, i32 0, i32 1
  store double %mul13, double* %y, align 8
  %9 = load double, double* %s, align 8
  %10 = load double, double* %short_radius, align 8
  %mul14 = fmul double %9, %10
  %x15 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %y_axis, i32 0, i32 0
  store double %mul14, double* %x15, align 8
  %11 = load double, double* %c, align 8
  %12 = load double, double* %short_radius, align 8
  %mul16 = fmul double %11, %12
  %y17 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %y_axis, i32 0, i32 1
  store double %mul16, double* %y17, align 8
  %13 = load i32, i32* %shape.addr, align 4
  switch i32 %13, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.38
    i32 2, label %sw.bb.53
  ]

sw.bb:                                            ; preds = %entry
  %x18 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %x_axis, i32 0, i32 0
  %14 = load double, double* %x18, align 8
  %x19 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %x_axis, i32 0, i32 0
  %15 = load double, double* %x19, align 8
  %mul20 = fmul double %14, %15
  %x21 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %y_axis, i32 0, i32 0
  %16 = load double, double* %x21, align 8
  %x22 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %y_axis, i32 0, i32 0
  %17 = load double, double* %x22, align 8
  %mul23 = fmul double %16, %17
  %add24 = fadd double %mul20, %mul23
  %call25 = call double @sqrt(double %add24) #6
  %call26 = call double @ceil(double %call25) #7
  %conv27 = fptosi double %call26 to i32
  %18 = load i32*, i32** %half_width.addr, align 8
  store i32 %conv27, i32* %18, align 4
  %y28 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %x_axis, i32 0, i32 1
  %19 = load double, double* %y28, align 8
  %y29 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %x_axis, i32 0, i32 1
  %20 = load double, double* %y29, align 8
  %mul30 = fmul double %19, %20
  %y31 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %y_axis, i32 0, i32 1
  %21 = load double, double* %y31, align 8
  %y32 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %y_axis, i32 0, i32 1
  %22 = load double, double* %y32, align 8
  %mul33 = fmul double %21, %22
  %add34 = fadd double %mul30, %mul33
  %call35 = call double @sqrt(double %add34) #6
  %call36 = call double @ceil(double %call35) #7
  %conv37 = fptosi double %call36 to i32
  %23 = load i32*, i32** %half_height.addr, align 8
  store i32 %conv37, i32* %23, align 4
  br label %sw.epilog

sw.bb.38:                                         ; preds = %entry
  %x39 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %x_axis, i32 0, i32 0
  %24 = load double, double* %x39, align 8
  %call40 = call double @fabs(double %24) #7
  %x41 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %y_axis, i32 0, i32 0
  %25 = load double, double* %x41, align 8
  %call42 = call double @fabs(double %25) #7
  %add43 = fadd double %call40, %call42
  %call44 = call double @ceil(double %add43) #7
  %conv45 = fptosi double %call44 to i32
  %26 = load i32*, i32** %half_width.addr, align 8
  store i32 %conv45, i32* %26, align 4
  %y46 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %x_axis, i32 0, i32 1
  %27 = load double, double* %y46, align 8
  %call47 = call double @fabs(double %27) #7
  %y48 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %y_axis, i32 0, i32 1
  %28 = load double, double* %y48, align 8
  %call49 = call double @fabs(double %28) #7
  %add50 = fadd double %call47, %call49
  %call51 = call double @ceil(double %add50) #7
  %conv52 = fptosi double %call51 to i32
  %29 = load i32*, i32** %half_height.addr, align 8
  store i32 %conv52, i32* %29, align 4
  br label %sw.epilog

sw.bb.53:                                         ; preds = %entry
  %x54 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %x_axis, i32 0, i32 0
  %30 = load double, double* %x54, align 8
  %call55 = call double @fabs(double %30) #7
  %x56 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %y_axis, i32 0, i32 0
  %31 = load double, double* %x56, align 8
  %call57 = call double @fabs(double %31) #7
  %cmp = fcmp ogt double %call55, %call57
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.53
  %x59 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %x_axis, i32 0, i32 0
  %32 = load double, double* %x59, align 8
  %call60 = call double @fabs(double %32) #7
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.53
  %x61 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %y_axis, i32 0, i32 0
  %33 = load double, double* %x61, align 8
  %call62 = call double @fabs(double %33) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %call60, %cond.true ], [ %call62, %cond.false ]
  %call63 = call double @ceil(double %cond) #7
  %conv64 = fptosi double %call63 to i32
  %34 = load i32*, i32** %half_width.addr, align 8
  store i32 %conv64, i32* %34, align 4
  %y65 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %x_axis, i32 0, i32 1
  %35 = load double, double* %y65, align 8
  %call66 = call double @fabs(double %35) #7
  %y67 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %y_axis, i32 0, i32 1
  %36 = load double, double* %y67, align 8
  %call68 = call double @fabs(double %36) #7
  %cmp69 = fcmp ogt double %call66, %call68
  br i1 %cmp69, label %cond.true.71, label %cond.false.74

cond.true.71:                                     ; preds = %cond.end
  %y72 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %x_axis, i32 0, i32 1
  %37 = load double, double* %y72, align 8
  %call73 = call double @fabs(double %37) #7
  br label %cond.end.77

cond.false.74:                                    ; preds = %cond.end
  %y75 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %y_axis, i32 0, i32 1
  %38 = load double, double* %y75, align 8
  %call76 = call double @fabs(double %38) #7
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.false.74, %cond.true.71
  %cond78 = phi double [ %call73, %cond.true.71 ], [ %call76, %cond.false.74 ]
  %call79 = call double @ceil(double %cond78) #7
  %conv80 = fptosi double %call79 to i32
  %39 = load i32*, i32** %half_height.addr, align 8
  store i32 %conv80, i32* %39, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %cond.end.77, %sw.bb.38, %sw.bb
  %40 = load i32, i32* %spikes.addr, align 4
  %cmp81 = icmp sgt i32 %40, 2
  br i1 %cmp81, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %41 = load float, float* %radius.addr, align 4
  %42 = load float, float* %radius.addr, align 4
  %mul83 = fmul float %41, %42
  %conv84 = fpext float %mul83 to double
  %43 = load double, double* %short_radius, align 8
  %44 = load double, double* %short_radius, align 8
  %mul85 = fmul double %43, %44
  %add86 = fadd double %conv84, %mul85
  %call87 = call double @sqrt(double %add86) #6
  %call88 = call double @ceil(double %call87) #7
  %conv89 = fptosi double %call88 to i32
  %45 = load i32*, i32** %half_height.addr, align 8
  store i32 %conv89, i32* %45, align 4
  %46 = load i32*, i32** %half_width.addr, align 8
  store i32 %conv89, i32* %46, align 4
  %47 = load double, double* %s, align 8
  %48 = load float, float* %radius.addr, align 4
  %conv90 = fpext float %48 to double
  %mul91 = fmul double %47, %conv90
  %x92 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %y_axis, i32 0, i32 0
  store double %mul91, double* %x92, align 8
  %49 = load double, double* %c, align 8
  %50 = load float, float* %radius.addr, align 4
  %conv93 = fpext float %50 to double
  %mul94 = fmul double %49, %conv93
  %y95 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %y_axis, i32 0, i32 1
  store double %mul94, double* %y95, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  %51 = load double*, double** %_s.addr, align 8
  %cmp96 = icmp ne double* %51, null
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.end
  %52 = load double, double* %s, align 8
  %53 = load double*, double** %_s.addr, align 8
  store double %52, double* %53, align 8
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.98, %if.end
  %54 = load double*, double** %_c.addr, align 8
  %cmp100 = icmp ne double* %54, null
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.end.99
  %55 = load double, double* %c, align 8
  %56 = load double*, double** %_c.addr, align 8
  store double %55, double* %56, align 8
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.102, %if.end.99
  %57 = load %struct._GimpVector2*, %struct._GimpVector2** %_x_axis.addr, align 8
  %cmp104 = icmp ne %struct._GimpVector2* %57, null
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.end.103
  %58 = load %struct._GimpVector2*, %struct._GimpVector2** %_x_axis.addr, align 8
  %59 = bitcast %struct._GimpVector2* %58 to i8*
  %60 = bitcast %struct._GimpVector2* %x_axis to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 16, i32 8, i1 false)
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.106, %if.end.103
  %61 = load %struct._GimpVector2*, %struct._GimpVector2** %_y_axis.addr, align 8
  %cmp108 = icmp ne %struct._GimpVector2* %61, null
  br i1 %cmp108, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %if.end.107
  %62 = load %struct._GimpVector2*, %struct._GimpVector2** %_y_axis.addr, align 8
  %63 = bitcast %struct._GimpVector2* %62 to i8*
  %64 = bitcast %struct._GimpVector2* %y_axis to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %64, i64 16, i32 8, i1 false)
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.110, %if.end.107
  ret void
}

declare %struct._TempBuf* @temp_buf_new(i32, i32, i32, i32, i32, i8*) #1

declare i8* @temp_buf_get_data(%struct._TempBuf*) #1

; Function Attrs: nounwind uwtable
define internal i8* @gimp_brush_generated_calc_lut(double %radius, double %hardness) #3 {
entry:
  %radius.addr = alloca double, align 8
  %hardness.addr = alloca double, align 8
  %lookup = alloca i8*, align 8
  %length = alloca i32, align 4
  %x = alloca i32, align 4
  %d = alloca double, align 8
  %sum = alloca double, align 8
  %exponent = alloca double, align 8
  %buffer = alloca [4 x double], align 16
  store double %radius, double* %radius.addr, align 8
  store double %hardness, double* %hardness.addr, align 8
  %0 = load double, double* %radius.addr, align 8
  %add = fadd double %0, 1.000000e+00
  %call = call double @ceil(double %add) #7
  %1 = load double, double* %radius.addr, align 8
  %add1 = fadd double %1, 1.000000e+00
  %call2 = call double @ceil(double %add1) #7
  %mul = fmul double %call, %call2
  %mul3 = fmul double 2.000000e+00, %mul
  %call4 = call double @sqrt(double %mul3) #6
  %add5 = fadd double 1.000000e+00, %call4
  %call6 = call double @ceil(double %add5) #7
  %mul7 = fmul double 4.000000e+00, %call6
  %conv = fptosi double %mul7 to i32
  store i32 %conv, i32* %length, align 4
  %2 = load i32, i32* %length, align 4
  %conv8 = sext i32 %2 to i64
  %call9 = call noalias i8* @g_malloc(i64 %conv8)
  store i8* %call9, i8** %lookup, align 8
  store double 0.000000e+00, double* %sum, align 8
  %3 = load double, double* %hardness.addr, align 8
  %sub = fsub double 1.000000e+00, %3
  %cmp = fcmp olt double %sub, 4.000000e-07
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store double 1.000000e+06, double* %exponent, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load double, double* %hardness.addr, align 8
  %sub11 = fsub double 1.000000e+00, %4
  %div = fdiv double 4.000000e-01, %sub11
  store double %div, double* %exponent, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %x, align 4
  %cmp12 = icmp slt i32 %5, 4
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %x, align 4
  %conv14 = sitofp i32 %6 to double
  %add15 = fadd double %conv14, 5.000000e-01
  %div16 = fdiv double %add15, 4.000000e+00
  %sub17 = fsub double %div16, 5.000000e-01
  %call18 = call double @fabs(double %sub17) #7
  store double %call18, double* %d, align 8
  %7 = load double, double* %d, align 8
  %8 = load double, double* %radius.addr, align 8
  %cmp19 = fcmp ogt double %7, %8
  br i1 %cmp19, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %for.body
  %9 = load i32, i32* %x, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [4 x double], [4 x double]* %buffer, i32 0, i64 %idxprom
  store double 0.000000e+00, double* %arrayidx, align 8
  br label %if.end.28

if.else.22:                                       ; preds = %for.body
  %10 = load double, double* %d, align 8
  %11 = load double, double* %radius.addr, align 8
  %div23 = fdiv double %10, %11
  %12 = load double, double* %exponent, align 8
  %call24 = call double @pow(double %div23, double %12) #6
  %call25 = call double @gauss(double %call24)
  %13 = load i32, i32* %x, align 4
  %idxprom26 = sext i32 %13 to i64
  %arrayidx27 = getelementptr inbounds [4 x double], [4 x double]* %buffer, i32 0, i64 %idxprom26
  store double %call25, double* %arrayidx27, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.22, %if.then.21
  %14 = load i32, i32* %x, align 4
  %idxprom29 = sext i32 %14 to i64
  %arrayidx30 = getelementptr inbounds [4 x double], [4 x double]* %buffer, i32 0, i64 %idxprom29
  %15 = load double, double* %arrayidx30, align 8
  %16 = load double, double* %sum, align 8
  %add31 = fadd double %16, %15
  store double %add31, double* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %17 = load i32, i32* %x, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.65, %for.end
  %18 = load double, double* %d, align 8
  %19 = load double, double* %radius.addr, align 8
  %cmp33 = fcmp olt double %18, %19
  br i1 %cmp33, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.cond.32
  %20 = load double, double* %sum, align 8
  %cmp35 = fcmp ogt double %20, 1.000000e-05
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.cond.32
  %21 = phi i1 [ true, %for.cond.32 ], [ %cmp35, %lor.rhs ]
  br i1 %21, label %for.body.37, label %for.end.67

for.body.37:                                      ; preds = %lor.end
  %22 = load i32, i32* %x, align 4
  %rem = srem i32 %22, 4
  %idxprom38 = sext i32 %rem to i64
  %arrayidx39 = getelementptr inbounds [4 x double], [4 x double]* %buffer, i32 0, i64 %idxprom38
  %23 = load double, double* %arrayidx39, align 8
  %24 = load double, double* %sum, align 8
  %sub40 = fsub double %24, %23
  store double %sub40, double* %sum, align 8
  %25 = load double, double* %d, align 8
  %26 = load double, double* %radius.addr, align 8
  %cmp41 = fcmp ogt double %25, %26
  br i1 %cmp41, label %if.then.43, label %if.else.47

if.then.43:                                       ; preds = %for.body.37
  %27 = load i32, i32* %x, align 4
  %rem44 = srem i32 %27, 4
  %idxprom45 = sext i32 %rem44 to i64
  %arrayidx46 = getelementptr inbounds [4 x double], [4 x double]* %buffer, i32 0, i64 %idxprom45
  store double 0.000000e+00, double* %arrayidx46, align 8
  br label %if.end.54

if.else.47:                                       ; preds = %for.body.37
  %28 = load double, double* %d, align 8
  %29 = load double, double* %radius.addr, align 8
  %div48 = fdiv double %28, %29
  %30 = load double, double* %exponent, align 8
  %call49 = call double @pow(double %div48, double %30) #6
  %call50 = call double @gauss(double %call49)
  %31 = load i32, i32* %x, align 4
  %rem51 = srem i32 %31, 4
  %idxprom52 = sext i32 %rem51 to i64
  %arrayidx53 = getelementptr inbounds [4 x double], [4 x double]* %buffer, i32 0, i64 %idxprom52
  store double %call50, double* %arrayidx53, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.47, %if.then.43
  %32 = load i32, i32* %x, align 4
  %rem55 = srem i32 %32, 4
  %idxprom56 = sext i32 %rem55 to i64
  %arrayidx57 = getelementptr inbounds [4 x double], [4 x double]* %buffer, i32 0, i64 %idxprom56
  %33 = load double, double* %arrayidx57, align 8
  %34 = load double, double* %sum, align 8
  %add58 = fadd double %34, %33
  store double %add58, double* %sum, align 8
  %35 = load double, double* %sum, align 8
  %mul59 = fmul double %35, 6.375000e+01
  %call60 = call double @rint(double %mul59) #7
  %conv61 = fptoui double %call60 to i8
  %36 = load i32, i32* %x, align 4
  %inc62 = add nsw i32 %36, 1
  store i32 %inc62, i32* %x, align 4
  %idxprom63 = sext i32 %36 to i64
  %37 = load i8*, i8** %lookup, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %37, i64 %idxprom63
  store i8 %conv61, i8* %arrayidx64, align 1
  br label %for.inc.65

for.inc.65:                                       ; preds = %if.end.54
  %38 = load double, double* %d, align 8
  %add66 = fadd double %38, 2.500000e-01
  store double %add66, double* %d, align 8
  br label %for.cond.32

for.end.67:                                       ; preds = %lor.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end.67
  %39 = load i32, i32* %x, align 4
  %40 = load i32, i32* %length, align 4
  %cmp68 = icmp slt i32 %39, %40
  br i1 %cmp68, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %41 = load i32, i32* %x, align 4
  %inc70 = add nsw i32 %41, 1
  store i32 %inc70, i32* %x, align 4
  %idxprom71 = sext i32 %41 to i64
  %42 = load i8*, i8** %lookup, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %42, i64 %idxprom71
  store i8 0, i8* %arrayidx72, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %43 = load i8*, i8** %lookup, align 8
  ret i8* %43
}

; Function Attrs: nounwind
declare double @cos(double) #5

; Function Attrs: nounwind
declare double @sin(double) #5

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: nounwind
declare double @atan2(double, double) #5

; Function Attrs: nounwind
declare double @sqrt(double) #5

; Function Attrs: nounwind readnone
declare double @rint(double) #2

declare void @g_free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: nounwind readnone
declare double @ceil(double) #2

declare noalias i8* @g_malloc(i64) #1

; Function Attrs: nounwind uwtable
define internal double @gauss(double %f) #3 {
entry:
  %retval = alloca double, align 8
  %f.addr = alloca double, align 8
  store double %f, double* %f.addr, align 8
  %0 = load double, double* %f.addr, align 8
  %cmp = fcmp olt double %0, -5.000000e-01
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load double, double* %f.addr, align 8
  %sub = fsub double -1.000000e+00, %1
  store double %sub, double* %f.addr, align 8
  %2 = load double, double* %f.addr, align 8
  %mul = fmul double 2.000000e+00, %2
  %3 = load double, double* %f.addr, align 8
  %mul1 = fmul double %mul, %3
  store double %mul1, double* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load double, double* %f.addr, align 8
  %cmp2 = fcmp olt double %4, 5.000000e-01
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  %5 = load double, double* %f.addr, align 8
  %mul4 = fmul double 2.000000e+00, %5
  %6 = load double, double* %f.addr, align 8
  %mul5 = fmul double %mul4, %6
  %sub6 = fsub double 1.000000e+00, %mul5
  store double %sub6, double* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %7 = load double, double* %f.addr, align 8
  %sub8 = fsub double 1.000000e+00, %7
  store double %sub8, double* %f.addr, align 8
  %8 = load double, double* %f.addr, align 8
  %mul9 = fmul double 2.000000e+00, %8
  %9 = load double, double* %f.addr, align 8
  %mul10 = fmul double %mul9, %9
  store double %mul10, double* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.3, %if.then
  %10 = load double, double* %retval
  ret double %10
}

; Function Attrs: nounwind
declare double @pow(double, double) #5

declare i8* @gimp_object_get_name(i8*) #1

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
