; ModuleID = './app/gegl/gimpcageconfig.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpCageConfigClass = type { %struct._GimpImageMapConfigClass }
%struct._GimpImageMapConfigClass = type { %struct._GimpViewableClass }
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
%struct._TempBuf = type opaque
%struct._GimpContext = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpContainer = type opaque
%struct._GimpCageConfig = type { %struct._GimpImageMapConfig, %struct._GArray*, double, double, i32 }
%struct._GimpImageMapConfig = type { %struct._GimpViewable, i32 }
%struct._GArray = type { i8*, i32 }
%struct._GimpCagePoint = type { %struct._GimpVector2, %struct._GimpVector2, %struct._GimpVector2, double, i32 }
%struct._GimpVector2 = type { double, double }
%struct._GeglRectangle = type { i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_cage_config_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpCageConfig\00", align 1
@gimp_cage_config_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-GEGL\00", align 1
@__func__.gimp_cage_config_insert_cage_point = private unnamed_addr constant [35 x i8] c"gimp_cage_config_insert_cage_point\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CAGE_CONFIG (gcc)\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"point_number <= gcc->cage_points->len\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"point_number >= 0\00", align 1
@__func__.gimp_cage_config_remove_cage_point = private unnamed_addr constant [35 x i8] c"gimp_cage_config_remove_cage_point\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"point_number < gcc->cage_points->len\00", align 1
@__func__.gimp_cage_config_remove_selected_points = private unnamed_addr constant [40 x i8] c"gimp_cage_config_remove_selected_points\00", align 1
@__func__.gimp_cage_config_get_point_coordinate = private unnamed_addr constant [38 x i8] c"gimp_cage_config_get_point_coordinate\00", align 1
@__func__.gimp_cage_config_add_displacement = private unnamed_addr constant [34 x i8] c"gimp_cage_config_add_displacement\00", align 1
@__func__.gimp_cage_config_commit_displacement = private unnamed_addr constant [37 x i8] c"gimp_cage_config_commit_displacement\00", align 1
@__func__.gimp_cage_config_reset_displacement = private unnamed_addr constant [36 x i8] c"gimp_cage_config_reset_displacement\00", align 1
@__func__.gimp_cage_config_get_bounding_box = private unnamed_addr constant [34 x i8] c"gimp_cage_config_get_bounding_box\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"gcc->cage_points->len >= 0\00", align 1
@__func__.gimp_cage_config_reverse_cage = private unnamed_addr constant [30 x i8] c"gimp_cage_config_reverse_cage\00", align 1
@__func__.gimp_cage_config_reverse_cage_if_needed = private unnamed_addr constant [40 x i8] c"gimp_cage_config_reverse_cage_if_needed\00", align 1
@__func__.gimp_cage_config_point_inside = private unnamed_addr constant [30 x i8] c"gimp_cage_config_point_inside\00", align 1
@__func__.gimp_cage_config_select_point = private unnamed_addr constant [30 x i8] c"gimp_cage_config_select_point\00", align 1
@__func__.gimp_cage_config_select_area = private unnamed_addr constant [29 x i8] c"gimp_cage_config_select_area\00", align 1
@__func__.gimp_cage_config_select_add_area = private unnamed_addr constant [33 x i8] c"gimp_cage_config_select_add_area\00", align 1
@__func__.gimp_cage_config_toggle_point_selection = private unnamed_addr constant [40 x i8] c"gimp_cage_config_toggle_point_selection\00", align 1
@__func__.gimp_cage_config_deselect_points = private unnamed_addr constant [33 x i8] c"gimp_cage_config_deselect_points\00", align 1
@__func__.gimp_cage_config_point_is_selected = private unnamed_addr constant [35 x i8] c"gimp_cage_config_point_is_selected\00", align 1
@gimp_cage_config_parent_class = internal global i8* null, align 8
@GimpCageConfig_private_offset = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"gimpcageconfig.c\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@__func__.gimp_cage_config_compute_scaling_factor = private unnamed_addr constant [40 x i8] c"gimp_cage_config_compute_scaling_factor\00", align 1
@__func__.gimp_cage_config_compute_edges_normal = private unnamed_addr constant [38 x i8] c"gimp_cage_config_compute_edges_normal\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_cage_config_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_cage_config_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_cage_config_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_image_map_config_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 280, void (i8*, i8*)* bitcast (void (i8*)* @gimp_cage_config_class_intern_init to void (i8*, i8*)*), i32 72, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpCageConfig*)* @gimp_cage_config_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_config_interface_get_type() #6
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_cage_config_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_cage_config_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_cage_config_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_map_config_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_cage_config_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_cage_config_parent_class, align 8
  %1 = load i32, i32* @GimpCageConfig_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpCageConfig_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpCageConfigClass*
  call void @gimp_cage_config_class_init(%struct._GimpCageConfigClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_cage_config_init(%struct._GimpCageConfig* %self) #3 {
entry:
  %self.addr = alloca %struct._GimpCageConfig*, align 8
  store %struct._GimpCageConfig* %self, %struct._GimpCageConfig** %self.addr, align 8
  %call = call %struct._GArray* @g_array_sized_new(i32 0, i32 0, i32 64, i32 50)
  %0 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %self.addr, align 8
  %cage_points = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %0, i32 0, i32 1
  store %struct._GArray* %call, %struct._GArray** %cage_points, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_cage_config_get_n_points(%struct._GimpCageConfig* %gcc) #3 {
entry:
  %gcc.addr = alloca %struct._GimpCageConfig*, align 8
  store %struct._GimpCageConfig* %gcc, %struct._GimpCageConfig** %gcc.addr, align 8
  %0 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %0, i32 0, i32 1
  %1 = load %struct._GArray*, %struct._GArray** %cage_points, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %1, i32 0, i32 1
  %2 = load i32, i32* %len, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define void @gimp_cage_config_add_cage_point(%struct._GimpCageConfig* %gcc, double %x, double %y) #3 {
entry:
  %gcc.addr = alloca %struct._GimpCageConfig*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  store %struct._GimpCageConfig* %gcc, %struct._GimpCageConfig** %gcc.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %1 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %1, i32 0, i32 1
  %2 = load %struct._GArray*, %struct._GArray** %cage_points, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %2, i32 0, i32 1
  %3 = load i32, i32* %len, align 4
  %4 = load double, double* %x.addr, align 8
  %5 = load double, double* %y.addr, align 8
  call void @gimp_cage_config_insert_cage_point(%struct._GimpCageConfig* %0, i32 %3, double %4, double %5)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_cage_config_insert_cage_point(%struct._GimpCageConfig* %gcc, i32 %point_number, double %x, double %y) #3 {
entry:
  %gcc.addr = alloca %struct._GimpCageConfig*, align 8
  %point_number.addr = alloca i32, align 4
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %point = alloca %struct._GimpCagePoint, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCageConfig* %gcc, %struct._GimpCageConfig** %gcc.addr, align 8
  store i32 %point_number, i32* %point_number.addr, align 4
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %1 = bitcast %struct._GimpCageConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_cage_config_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_cage_config_insert_cage_point, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %point_number.addr, align 4
  %14 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %14, i32 0, i32 1
  %15 = load %struct._GArray*, %struct._GArray** %cage_points, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %15, i32 0, i32 1
  %16 = load i32, i32* %len, align 4
  %cmp12 = icmp ule i32 %13, %16
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_cage_config_insert_cage_point, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %17 = load i32, i32* %point_number.addr, align 4
  %cmp18 = icmp sge i32 %17, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_cage_config_insert_cage_point, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %18 = load double, double* %x.addr, align 8
  %add = fadd double %18, 0x3F851D07EAE73B29
  %src_point = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %point, i32 0, i32 0
  %x23 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %src_point, i32 0, i32 0
  store double %add, double* %x23, align 8
  %19 = load double, double* %y.addr, align 8
  %add24 = fadd double %19, 0x3F851D07EAE73B29
  %src_point25 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %point, i32 0, i32 0
  %y26 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %src_point25, i32 0, i32 1
  store double %add24, double* %y26, align 8
  %20 = load double, double* %x.addr, align 8
  %add27 = fadd double %20, 0x3F851D07EAE73B29
  %dest_point = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %point, i32 0, i32 1
  %x28 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %dest_point, i32 0, i32 0
  store double %add27, double* %x28, align 8
  %21 = load double, double* %y.addr, align 8
  %add29 = fadd double %21, 0x3F851D07EAE73B29
  %dest_point30 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %point, i32 0, i32 1
  %y31 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %dest_point30, i32 0, i32 1
  store double %add29, double* %y31, align 8
  %22 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points32 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %22, i32 0, i32 1
  %23 = load %struct._GArray*, %struct._GArray** %cage_points32, align 8
  %24 = load i32, i32* %point_number.addr, align 4
  %25 = bitcast %struct._GimpCagePoint* %point to i8*
  %call33 = call %struct._GArray* @g_array_insert_vals(%struct._GArray* %23, i32 %24, i8* %25, i32 1)
  %26 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  call void @gimp_cage_config_compute_scaling_factor(%struct._GimpCageConfig* %26)
  %27 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  call void @gimp_cage_config_compute_edges_normal(%struct._GimpCageConfig* %27)
  br label %return

return:                                           ; preds = %do.end.22, %if.else.20, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._GArray* @g_array_insert_vals(%struct._GArray*, i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_cage_config_compute_scaling_factor(%struct._GimpCageConfig* %gcc) #3 {
entry:
  %gcc.addr = alloca %struct._GimpCageConfig*, align 8
  %edge = alloca %struct._GimpVector2, align 8
  %length = alloca double, align 8
  %length_d = alloca double, align 8
  %i = alloca i32, align 4
  %current = alloca %struct._GimpCagePoint*, align 8
  %last = alloca %struct._GimpCagePoint*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCageConfig* %gcc, %struct._GimpCageConfig** %gcc.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %1 = bitcast %struct._GimpCageConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_cage_config_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_cage_config_compute_scaling_factor, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %for.end

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %13, i32 0, i32 1
  %14 = load %struct._GArray*, %struct._GArray** %cage_points, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %14, i32 0, i32 1
  %15 = load i32, i32* %len, align 4
  %cmp11 = icmp ult i32 %15, 2
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %do.end
  br label %for.end

if.end.13:                                        ; preds = %do.end
  %16 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points14 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %16, i32 0, i32 1
  %17 = load %struct._GArray*, %struct._GArray** %cage_points14, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %17, i32 0, i32 0
  %18 = load i8*, i8** %data, align 8
  %19 = bitcast i8* %18 to %struct._GimpCagePoint*
  %arrayidx = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %19, i64 0
  store %struct._GimpCagePoint* %arrayidx, %struct._GimpCagePoint** %last, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.13
  %20 = load i32, i32* %i, align 4
  %21 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points15 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %21, i32 0, i32 1
  %22 = load %struct._GArray*, %struct._GArray** %cage_points15, align 8
  %len16 = getelementptr inbounds %struct._GArray, %struct._GArray* %22, i32 0, i32 1
  %23 = load i32, i32* %len16, align 4
  %cmp17 = icmp ule i32 %20, %23
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %i, align 4
  %25 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points18 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %25, i32 0, i32 1
  %26 = load %struct._GArray*, %struct._GArray** %cage_points18, align 8
  %len19 = getelementptr inbounds %struct._GArray, %struct._GArray* %26, i32 0, i32 1
  %27 = load i32, i32* %len19, align 4
  %rem = urem i32 %24, %27
  %idxprom = zext i32 %rem to i64
  %28 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points20 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %28, i32 0, i32 1
  %29 = load %struct._GArray*, %struct._GArray** %cage_points20, align 8
  %data21 = getelementptr inbounds %struct._GArray, %struct._GArray* %29, i32 0, i32 0
  %30 = load i8*, i8** %data21, align 8
  %31 = bitcast i8* %30 to %struct._GimpCagePoint*
  %arrayidx22 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %31, i64 %idxprom
  store %struct._GimpCagePoint* %arrayidx22, %struct._GimpCagePoint** %current, align 8
  %32 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %last, align 8
  %src_point = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %32, i32 0, i32 0
  %33 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %current, align 8
  %src_point23 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %33, i32 0, i32 0
  call void @gimp_vector2_sub(%struct._GimpVector2* %edge, %struct._GimpVector2* %src_point, %struct._GimpVector2* %src_point23)
  %call24 = call double @gimp_vector2_length(%struct._GimpVector2* %edge)
  store double %call24, double* %length, align 8
  %34 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %last, align 8
  %dest_point = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %34, i32 0, i32 1
  %35 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %current, align 8
  %dest_point25 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %35, i32 0, i32 1
  call void @gimp_vector2_sub(%struct._GimpVector2* %edge, %struct._GimpVector2* %dest_point, %struct._GimpVector2* %dest_point25)
  %call26 = call double @gimp_vector2_length(%struct._GimpVector2* %edge)
  store double %call26, double* %length_d, align 8
  %36 = load double, double* %length_d, align 8
  %37 = load double, double* %length, align 8
  %div = fdiv double %36, %37
  %38 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %last, align 8
  %edge_scaling_factor = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %38, i32 0, i32 3
  store double %div, double* %edge_scaling_factor, align 8
  %39 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %current, align 8
  store %struct._GimpCagePoint* %39, %struct._GimpCagePoint** %last, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i32, i32* %i, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else.9, %if.then.12, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_cage_config_compute_edges_normal(%struct._GimpCageConfig* %gcc) #3 {
entry:
  %gcc.addr = alloca %struct._GimpCageConfig*, align 8
  %normal = alloca %struct._GimpVector2, align 8
  %i = alloca i32, align 4
  %current = alloca %struct._GimpCagePoint*, align 8
  %last = alloca %struct._GimpCagePoint*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %coerce = alloca %struct._GimpVector2, align 8
  store %struct._GimpCageConfig* %gcc, %struct._GimpCageConfig** %gcc.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %1 = bitcast %struct._GimpCageConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_cage_config_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_cage_config_compute_edges_normal, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %for.end

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %13, i32 0, i32 1
  %14 = load %struct._GArray*, %struct._GArray** %cage_points, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %14, i32 0, i32 0
  %15 = load i8*, i8** %data, align 8
  %16 = bitcast i8* %15 to %struct._GimpCagePoint*
  %arrayidx = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %16, i64 0
  store %struct._GimpCagePoint* %arrayidx, %struct._GimpCagePoint** %last, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %17 = load i32, i32* %i, align 4
  %18 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points11 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %18, i32 0, i32 1
  %19 = load %struct._GArray*, %struct._GArray** %cage_points11, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %19, i32 0, i32 1
  %20 = load i32, i32* %len, align 4
  %cmp12 = icmp ule i32 %17, %20
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i, align 4
  %22 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points13 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %22, i32 0, i32 1
  %23 = load %struct._GArray*, %struct._GArray** %cage_points13, align 8
  %len14 = getelementptr inbounds %struct._GArray, %struct._GArray* %23, i32 0, i32 1
  %24 = load i32, i32* %len14, align 4
  %rem = urem i32 %21, %24
  %idxprom = zext i32 %rem to i64
  %25 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points15 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %25, i32 0, i32 1
  %26 = load %struct._GArray*, %struct._GArray** %cage_points15, align 8
  %data16 = getelementptr inbounds %struct._GArray, %struct._GArray* %26, i32 0, i32 0
  %27 = load i8*, i8** %data16, align 8
  %28 = bitcast i8* %27 to %struct._GimpCagePoint*
  %arrayidx17 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %28, i64 %idxprom
  store %struct._GimpCagePoint* %arrayidx17, %struct._GimpCagePoint** %current, align 8
  %29 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %current, align 8
  %dest_point = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %29, i32 0, i32 1
  %30 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %last, align 8
  %dest_point18 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %30, i32 0, i32 1
  call void @gimp_vector2_sub(%struct._GimpVector2* %normal, %struct._GimpVector2* %dest_point, %struct._GimpVector2* %dest_point18)
  %31 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %last, align 8
  %edge_normal = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %31, i32 0, i32 2
  %call19 = call { double, double } @gimp_vector2_normal(%struct._GimpVector2* %normal)
  %32 = bitcast %struct._GimpVector2* %coerce to { double, double }*
  %33 = getelementptr { double, double }, { double, double }* %32, i32 0, i32 0
  %34 = extractvalue { double, double } %call19, 0
  store double %34, double* %33, align 8
  %35 = getelementptr { double, double }, { double, double }* %32, i32 0, i32 1
  %36 = extractvalue { double, double } %call19, 1
  store double %36, double* %35, align 8
  %37 = bitcast %struct._GimpVector2* %edge_normal to i8*
  %38 = bitcast %struct._GimpVector2* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 16, i32 8, i1 false)
  %39 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %current, align 8
  store %struct._GimpCagePoint* %39, %struct._GimpCagePoint** %last, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i32, i32* %i, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else.9, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_cage_config_remove_last_cage_point(%struct._GimpCageConfig* %gcc) #3 {
entry:
  %gcc.addr = alloca %struct._GimpCageConfig*, align 8
  store %struct._GimpCageConfig* %gcc, %struct._GimpCageConfig** %gcc.addr, align 8
  %0 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %1 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %1, i32 0, i32 1
  %2 = load %struct._GArray*, %struct._GArray** %cage_points, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %2, i32 0, i32 1
  %3 = load i32, i32* %len, align 4
  %sub = sub i32 %3, 1
  call void @gimp_cage_config_remove_cage_point(%struct._GimpCageConfig* %0, i32 %sub)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_cage_config_remove_cage_point(%struct._GimpCageConfig* %gcc, i32 %point_number) #3 {
entry:
  %gcc.addr = alloca %struct._GimpCageConfig*, align 8
  %point_number.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCageConfig* %gcc, %struct._GimpCageConfig** %gcc.addr, align 8
  store i32 %point_number, i32* %point_number.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %1 = bitcast %struct._GimpCageConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_cage_config_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_cage_config_remove_cage_point, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %point_number.addr, align 4
  %14 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %14, i32 0, i32 1
  %15 = load %struct._GArray*, %struct._GArray** %cage_points, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %15, i32 0, i32 1
  %16 = load i32, i32* %len, align 4
  %cmp12 = icmp ult i32 %13, %16
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_cage_config_remove_cage_point, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %17 = load i32, i32* %point_number.addr, align 4
  %cmp18 = icmp sge i32 %17, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_cage_config_remove_cage_point, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %18 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points23 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %18, i32 0, i32 1
  %19 = load %struct._GArray*, %struct._GArray** %cage_points23, align 8
  %len24 = getelementptr inbounds %struct._GArray, %struct._GArray* %19, i32 0, i32 1
  %20 = load i32, i32* %len24, align 4
  %cmp25 = icmp ugt i32 %20, 0
  br i1 %cmp25, label %if.then.26, label %if.end.31

if.then.26:                                       ; preds = %do.end.22
  %21 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points27 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %21, i32 0, i32 1
  %22 = load %struct._GArray*, %struct._GArray** %cage_points27, align 8
  %23 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points28 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %23, i32 0, i32 1
  %24 = load %struct._GArray*, %struct._GArray** %cage_points28, align 8
  %len29 = getelementptr inbounds %struct._GArray, %struct._GArray* %24, i32 0, i32 1
  %25 = load i32, i32* %len29, align 4
  %sub = sub i32 %25, 1
  %call30 = call %struct._GArray* @g_array_remove_index(%struct._GArray* %22, i32 %sub)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.26, %do.end.22
  %26 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  call void @gimp_cage_config_compute_scaling_factor(%struct._GimpCageConfig* %26)
  %27 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  call void @gimp_cage_config_compute_edges_normal(%struct._GimpCageConfig* %27)
  br label %return

return:                                           ; preds = %if.end.31, %if.else.20, %if.else.14, %if.else.9
  ret void
}

declare %struct._GArray* @g_array_remove_index(%struct._GArray*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_cage_config_remove_selected_points(%struct._GimpCageConfig* %gcc) #3 {
entry:
  %gcc.addr = alloca %struct._GimpCageConfig*, align 8
  %i = alloca i32, align 4
  %point = alloca %struct._GimpCagePoint*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCageConfig* %gcc, %struct._GimpCageConfig** %gcc.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %1 = bitcast %struct._GimpCageConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_cage_config_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_cage_config_remove_selected_points, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %13 = load i32, i32* %i, align 4
  %14 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %14, i32 0, i32 1
  %15 = load %struct._GArray*, %struct._GArray** %cage_points, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %15, i32 0, i32 1
  %16 = load i32, i32* %len, align 4
  %cmp11 = icmp ult i32 %13, %16
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points12 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %18, i32 0, i32 1
  %19 = load %struct._GArray*, %struct._GArray** %cage_points12, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %19, i32 0, i32 0
  %20 = load i8*, i8** %data, align 8
  %21 = bitcast i8* %20 to %struct._GimpCagePoint*
  %arrayidx = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %21, i64 %idxprom
  store %struct._GimpCagePoint* %arrayidx, %struct._GimpCagePoint** %point, align 8
  %22 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %selected = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %22, i32 0, i32 4
  %23 = load i32, i32* %selected, align 4
  %tobool13 = icmp ne i32 %23, 0
  br i1 %tobool13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %for.body
  %24 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points15 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %24, i32 0, i32 1
  %25 = load %struct._GArray*, %struct._GArray** %cage_points15, align 8
  %26 = load i32, i32* %i, align 4
  %call16 = call %struct._GArray* @g_array_remove_index(%struct._GArray* %25, i32 %26)
  %27 = load i32, i32* %i, align 4
  %dec = add nsw i32 %27, -1
  store i32 %dec, i32* %i, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  call void @gimp_cage_config_compute_scaling_factor(%struct._GimpCageConfig* %29)
  %30 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  call void @gimp_cage_config_compute_edges_normal(%struct._GimpCageConfig* %30)
  br label %return

return:                                           ; preds = %for.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define { double, double } @gimp_cage_config_get_point_coordinate(%struct._GimpCageConfig* %gcc, i32 %mode, i32 %point_number) #3 {
entry:
  %retval = alloca %struct._GimpVector2, align 8
  %gcc.addr = alloca %struct._GimpCageConfig*, align 8
  %mode.addr = alloca i32, align 4
  %point_number.addr = alloca i32, align 4
  %result = alloca %struct._GimpVector2, align 8
  %point = alloca %struct._GimpCagePoint*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCageConfig* %gcc, %struct._GimpCageConfig** %gcc.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %point_number, i32* %point_number.addr, align 4
  %0 = bitcast %struct._GimpVector2* %result to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 16, i32 8, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %2 = bitcast %struct._GimpCageConfig* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_cage_config_get_type() #6
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %8, %9
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #7
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_cage_config_get_point_coordinate, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  %14 = bitcast %struct._GimpVector2* %retval to i8*
  %15 = bitcast %struct._GimpVector2* %result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 8, i1 false)
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %16 = load i32, i32* %point_number.addr, align 4
  %17 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %17, i32 0, i32 1
  %18 = load %struct._GArray*, %struct._GArray** %cage_points, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %18, i32 0, i32 1
  %19 = load i32, i32* %len, align 4
  %cmp12 = icmp ult i32 %16, %19
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_cage_config_get_point_coordinate, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i32 0, i32 0))
  %20 = bitcast %struct._GimpVector2* %retval to i8*
  %21 = bitcast %struct._GimpVector2* %result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 16, i32 8, i1 false)
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %22 = load i32, i32* %point_number.addr, align 4
  %cmp18 = icmp sge i32 %22, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_cage_config_get_point_coordinate, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0))
  %23 = bitcast %struct._GimpVector2* %retval to i8*
  %24 = bitcast %struct._GimpVector2* %result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 16, i32 8, i1 false)
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %25 = load i32, i32* %point_number.addr, align 4
  %idxprom = sext i32 %25 to i64
  %26 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points23 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %26, i32 0, i32 1
  %27 = load %struct._GArray*, %struct._GArray** %cage_points23, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %27, i32 0, i32 0
  %28 = load i8*, i8** %data, align 8
  %29 = bitcast i8* %28 to %struct._GimpCagePoint*
  %arrayidx = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %29, i64 %idxprom
  store %struct._GimpCagePoint* %arrayidx, %struct._GimpCagePoint** %point, align 8
  %30 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %selected = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %30, i32 0, i32 4
  %31 = load i32, i32* %selected, align 4
  %tobool24 = icmp ne i32 %31, 0
  br i1 %tobool24, label %if.then.25, label %if.else.43

if.then.25:                                       ; preds = %do.end.22
  %32 = load i32, i32* %mode.addr, align 4
  %cmp26 = icmp eq i32 %32, 0
  br i1 %cmp26, label %if.then.27, label %if.else.32

if.then.27:                                       ; preds = %if.then.25
  %33 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %src_point = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %33, i32 0, i32 0
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %src_point, i32 0, i32 0
  %34 = load double, double* %x, align 8
  %35 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %displacement_x = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %35, i32 0, i32 2
  %36 = load double, double* %displacement_x, align 8
  %add = fadd double %34, %36
  %x28 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %result, i32 0, i32 0
  store double %add, double* %x28, align 8
  %37 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %src_point29 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %37, i32 0, i32 0
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %src_point29, i32 0, i32 1
  %38 = load double, double* %y, align 8
  %39 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %displacement_y = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %39, i32 0, i32 3
  %40 = load double, double* %displacement_y, align 8
  %add30 = fadd double %38, %40
  %y31 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %result, i32 0, i32 1
  store double %add30, double* %y31, align 8
  br label %if.end.42

if.else.32:                                       ; preds = %if.then.25
  %41 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %dest_point = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %41, i32 0, i32 1
  %x33 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %dest_point, i32 0, i32 0
  %42 = load double, double* %x33, align 8
  %43 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %displacement_x34 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %43, i32 0, i32 2
  %44 = load double, double* %displacement_x34, align 8
  %add35 = fadd double %42, %44
  %x36 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %result, i32 0, i32 0
  store double %add35, double* %x36, align 8
  %45 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %dest_point37 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %45, i32 0, i32 1
  %y38 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %dest_point37, i32 0, i32 1
  %46 = load double, double* %y38, align 8
  %47 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %displacement_y39 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %47, i32 0, i32 3
  %48 = load double, double* %displacement_y39, align 8
  %add40 = fadd double %46, %48
  %y41 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %result, i32 0, i32 1
  store double %add40, double* %y41, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.32, %if.then.27
  br label %if.end.60

if.else.43:                                       ; preds = %do.end.22
  %49 = load i32, i32* %mode.addr, align 4
  %cmp44 = icmp eq i32 %49, 0
  br i1 %cmp44, label %if.then.45, label %if.else.52

if.then.45:                                       ; preds = %if.else.43
  %50 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %src_point46 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %50, i32 0, i32 0
  %x47 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %src_point46, i32 0, i32 0
  %51 = load double, double* %x47, align 8
  %x48 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %result, i32 0, i32 0
  store double %51, double* %x48, align 8
  %52 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %src_point49 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %52, i32 0, i32 0
  %y50 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %src_point49, i32 0, i32 1
  %53 = load double, double* %y50, align 8
  %y51 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %result, i32 0, i32 1
  store double %53, double* %y51, align 8
  br label %if.end.59

if.else.52:                                       ; preds = %if.else.43
  %54 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %dest_point53 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %54, i32 0, i32 1
  %x54 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %dest_point53, i32 0, i32 0
  %55 = load double, double* %x54, align 8
  %x55 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %result, i32 0, i32 0
  store double %55, double* %x55, align 8
  %56 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %dest_point56 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %56, i32 0, i32 1
  %y57 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %dest_point56, i32 0, i32 1
  %57 = load double, double* %y57, align 8
  %y58 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %result, i32 0, i32 1
  store double %57, double* %y58, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.52, %if.then.45
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.end.42
  %58 = bitcast %struct._GimpVector2* %retval to i8*
  %59 = bitcast %struct._GimpVector2* %result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 16, i32 8, i1 false)
  br label %return

return:                                           ; preds = %if.end.60, %if.else.20, %if.else.14, %if.else.9
  %60 = bitcast %struct._GimpVector2* %retval to { double, double }*
  %61 = load { double, double }, { double, double }* %60, align 8
  ret { double, double } %61
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define void @gimp_cage_config_add_displacement(%struct._GimpCageConfig* %gcc, i32 %mode, double %x, double %y) #3 {
entry:
  %gcc.addr = alloca %struct._GimpCageConfig*, align 8
  %mode.addr = alloca i32, align 4
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCageConfig* %gcc, %struct._GimpCageConfig** %gcc.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %1 = bitcast %struct._GimpCageConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_cage_config_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_cage_config_add_displacement, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %mode.addr, align 4
  %14 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_mode = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %14, i32 0, i32 4
  store i32 %13, i32* %cage_mode, align 4
  %15 = load double, double* %x.addr, align 8
  %16 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %displacement_x = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %16, i32 0, i32 2
  store double %15, double* %displacement_x, align 8
  %17 = load double, double* %y.addr, align 8
  %18 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %displacement_y = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %18, i32 0, i32 3
  store double %17, double* %displacement_y, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_cage_config_commit_displacement(%struct._GimpCageConfig* %gcc) #3 {
entry:
  %gcc.addr = alloca %struct._GimpCageConfig*, align 8
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %point = alloca %struct._GimpCagePoint*, align 8
  store %struct._GimpCageConfig* %gcc, %struct._GimpCageConfig** %gcc.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %1 = bitcast %struct._GimpCageConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_cage_config_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_cage_config_commit_displacement, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %13 = load i32, i32* %i, align 4
  %14 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %14, i32 0, i32 1
  %15 = load %struct._GArray*, %struct._GArray** %cage_points, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %15, i32 0, i32 1
  %16 = load i32, i32* %len, align 4
  %cmp11 = icmp ult i32 %13, %16
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points13 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %18, i32 0, i32 1
  %19 = load %struct._GArray*, %struct._GArray** %cage_points13, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %19, i32 0, i32 0
  %20 = load i8*, i8** %data, align 8
  %21 = bitcast i8* %20 to %struct._GimpCagePoint*
  %arrayidx = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %21, i64 %idxprom
  store %struct._GimpCagePoint* %arrayidx, %struct._GimpCagePoint** %point, align 8
  %22 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %selected = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %22, i32 0, i32 4
  %23 = load i32, i32* %selected, align 4
  %tobool14 = icmp ne i32 %23, 0
  br i1 %tobool14, label %if.then.15, label %if.end.37

if.then.15:                                       ; preds = %for.body
  %24 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_mode = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %24, i32 0, i32 4
  %25 = load i32, i32* %cage_mode, align 4
  %cmp16 = icmp eq i32 %25, 0
  br i1 %cmp16, label %if.then.17, label %if.else.27

if.then.17:                                       ; preds = %if.then.15
  %26 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %displacement_x = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %26, i32 0, i32 2
  %27 = load double, double* %displacement_x, align 8
  %28 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %src_point = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %28, i32 0, i32 0
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %src_point, i32 0, i32 0
  %29 = load double, double* %x, align 8
  %add = fadd double %29, %27
  store double %add, double* %x, align 8
  %30 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %displacement_y = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %30, i32 0, i32 3
  %31 = load double, double* %displacement_y, align 8
  %32 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %src_point18 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %32, i32 0, i32 0
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %src_point18, i32 0, i32 1
  %33 = load double, double* %y, align 8
  %add19 = fadd double %33, %31
  store double %add19, double* %y, align 8
  %34 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %displacement_x20 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %34, i32 0, i32 2
  %35 = load double, double* %displacement_x20, align 8
  %36 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %dest_point = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %36, i32 0, i32 1
  %x21 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %dest_point, i32 0, i32 0
  %37 = load double, double* %x21, align 8
  %add22 = fadd double %37, %35
  store double %add22, double* %x21, align 8
  %38 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %displacement_y23 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %38, i32 0, i32 3
  %39 = load double, double* %displacement_y23, align 8
  %40 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %dest_point24 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %40, i32 0, i32 1
  %y25 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %dest_point24, i32 0, i32 1
  %41 = load double, double* %y25, align 8
  %add26 = fadd double %41, %39
  store double %add26, double* %y25, align 8
  br label %if.end.36

if.else.27:                                       ; preds = %if.then.15
  %42 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %displacement_x28 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %42, i32 0, i32 2
  %43 = load double, double* %displacement_x28, align 8
  %44 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %dest_point29 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %44, i32 0, i32 1
  %x30 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %dest_point29, i32 0, i32 0
  %45 = load double, double* %x30, align 8
  %add31 = fadd double %45, %43
  store double %add31, double* %x30, align 8
  %46 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %displacement_y32 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %46, i32 0, i32 3
  %47 = load double, double* %displacement_y32, align 8
  %48 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %dest_point33 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %48, i32 0, i32 1
  %y34 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %dest_point33, i32 0, i32 1
  %49 = load double, double* %y34, align 8
  %add35 = fadd double %49, %47
  store double %add35, double* %y34, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.27, %if.then.17
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.37
  %50 = load i32, i32* %i, align 4
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %51 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  call void @gimp_cage_config_compute_scaling_factor(%struct._GimpCageConfig* %51)
  %52 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  call void @gimp_cage_config_compute_edges_normal(%struct._GimpCageConfig* %52)
  %53 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  call void @gimp_cage_config_reset_displacement(%struct._GimpCageConfig* %53)
  br label %return

return:                                           ; preds = %for.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_cage_config_reset_displacement(%struct._GimpCageConfig* %gcc) #3 {
entry:
  %gcc.addr = alloca %struct._GimpCageConfig*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCageConfig* %gcc, %struct._GimpCageConfig** %gcc.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %1 = bitcast %struct._GimpCageConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_cage_config_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_cage_config_reset_displacement, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %displacement_x = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %13, i32 0, i32 2
  store double 0.000000e+00, double* %displacement_x, align 8
  %14 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %displacement_y = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %14, i32 0, i32 3
  store double 0.000000e+00, double* %displacement_y, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define { i64, i64 } @gimp_cage_config_get_bounding_box(%struct._GimpCageConfig* %gcc) #3 {
entry:
  %retval = alloca %struct._GeglRectangle, align 4
  %gcc.addr = alloca %struct._GimpCageConfig*, align 8
  %bounding_box = alloca %struct._GeglRectangle, align 4
  %i = alloca i32, align 4
  %point = alloca %struct._GimpCagePoint*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %x45 = alloca double, align 8
  %y47 = alloca double, align 8
  store %struct._GimpCageConfig* %gcc, %struct._GimpCageConfig** %gcc.addr, align 8
  %0 = bitcast %struct._GeglRectangle* %bounding_box to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 16, i32 4, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %2 = bitcast %struct._GimpCageConfig* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_cage_config_get_type() #6
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %8, %9
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #7
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_cage_config_get_bounding_box, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  %14 = bitcast %struct._GeglRectangle* %retval to i8*
  %15 = bitcast %struct._GeglRectangle* %bounding_box to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 4, i1 false)
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %16 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %16, i32 0, i32 1
  %17 = load %struct._GArray*, %struct._GArray** %cage_points, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %17, i32 0, i32 1
  %18 = load i32, i32* %len, align 4
  %cmp12 = icmp uge i32 %18, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_cage_config_get_bounding_box, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0))
  %19 = bitcast %struct._GeglRectangle* %retval to i8*
  %20 = bitcast %struct._GeglRectangle* %bounding_box to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 16, i32 4, i1 false)
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %21 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points17 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %21, i32 0, i32 1
  %22 = load %struct._GArray*, %struct._GArray** %cage_points17, align 8
  %len18 = getelementptr inbounds %struct._GArray, %struct._GArray* %22, i32 0, i32 1
  %23 = load i32, i32* %len18, align 4
  %cmp19 = icmp eq i32 %23, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %do.end.16
  %24 = bitcast %struct._GeglRectangle* %retval to i8*
  %25 = bitcast %struct._GeglRectangle* %bounding_box to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 16, i32 4, i1 false)
  br label %return

if.end.21:                                        ; preds = %do.end.16
  %26 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points22 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %26, i32 0, i32 1
  %27 = load %struct._GArray*, %struct._GArray** %cage_points22, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %27, i32 0, i32 0
  %28 = load i8*, i8** %data, align 8
  %29 = bitcast i8* %28 to %struct._GimpCagePoint*
  %arrayidx = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %29, i64 0
  store %struct._GimpCagePoint* %arrayidx, %struct._GimpCagePoint** %point, align 8
  %30 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %selected = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %30, i32 0, i32 4
  %31 = load i32, i32* %selected, align 4
  %tobool23 = icmp ne i32 %31, 0
  br i1 %tobool23, label %if.then.24, label %if.else.30

if.then.24:                                       ; preds = %if.end.21
  %32 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %src_point = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %32, i32 0, i32 0
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %src_point, i32 0, i32 0
  %33 = load double, double* %x, align 8
  %34 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %displacement_x = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %34, i32 0, i32 2
  %35 = load double, double* %displacement_x, align 8
  %add = fadd double %33, %35
  %conv = fptosi double %add to i32
  %x25 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %bounding_box, i32 0, i32 0
  store i32 %conv, i32* %x25, align 4
  %36 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %src_point26 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %36, i32 0, i32 0
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %src_point26, i32 0, i32 1
  %37 = load double, double* %y, align 8
  %38 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %displacement_y = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %38, i32 0, i32 3
  %39 = load double, double* %displacement_y, align 8
  %add27 = fadd double %37, %39
  %conv28 = fptosi double %add27 to i32
  %y29 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %bounding_box, i32 0, i32 1
  store i32 %conv28, i32* %y29, align 4
  br label %if.end.39

if.else.30:                                       ; preds = %if.end.21
  %40 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %src_point31 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %40, i32 0, i32 0
  %x32 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %src_point31, i32 0, i32 0
  %41 = load double, double* %x32, align 8
  %conv33 = fptosi double %41 to i32
  %x34 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %bounding_box, i32 0, i32 0
  store i32 %conv33, i32* %x34, align 4
  %42 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %src_point35 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %42, i32 0, i32 0
  %y36 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %src_point35, i32 0, i32 1
  %43 = load double, double* %y36, align 8
  %conv37 = fptosi double %43 to i32
  %y38 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %bounding_box, i32 0, i32 1
  store i32 %conv37, i32* %y38, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.30, %if.then.24
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.39
  %44 = load i32, i32* %i, align 4
  %45 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points40 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %45, i32 0, i32 1
  %46 = load %struct._GArray*, %struct._GArray** %cage_points40, align 8
  %len41 = getelementptr inbounds %struct._GArray, %struct._GArray* %46, i32 0, i32 1
  %47 = load i32, i32* %len41, align 4
  %cmp42 = icmp ult i32 %44, %47
  br i1 %cmp42, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %48 = load i32, i32* %i, align 4
  %idxprom = sext i32 %48 to i64
  %49 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points48 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %49, i32 0, i32 1
  %50 = load %struct._GArray*, %struct._GArray** %cage_points48, align 8
  %data49 = getelementptr inbounds %struct._GArray, %struct._GArray* %50, i32 0, i32 0
  %51 = load i8*, i8** %data49, align 8
  %52 = bitcast i8* %51 to %struct._GimpCagePoint*
  %arrayidx50 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %52, i64 %idxprom
  store %struct._GimpCagePoint* %arrayidx50, %struct._GimpCagePoint** %point, align 8
  %53 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %selected51 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %53, i32 0, i32 4
  %54 = load i32, i32* %selected51, align 4
  %tobool52 = icmp ne i32 %54, 0
  br i1 %tobool52, label %if.then.53, label %if.else.62

if.then.53:                                       ; preds = %for.body
  %55 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %src_point54 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %55, i32 0, i32 0
  %x55 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %src_point54, i32 0, i32 0
  %56 = load double, double* %x55, align 8
  %57 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %displacement_x56 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %57, i32 0, i32 2
  %58 = load double, double* %displacement_x56, align 8
  %add57 = fadd double %56, %58
  store double %add57, double* %x45, align 8
  %59 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %src_point58 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %59, i32 0, i32 0
  %y59 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %src_point58, i32 0, i32 1
  %60 = load double, double* %y59, align 8
  %61 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %displacement_y60 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %61, i32 0, i32 3
  %62 = load double, double* %displacement_y60, align 8
  %add61 = fadd double %60, %62
  store double %add61, double* %y47, align 8
  br label %if.end.67

if.else.62:                                       ; preds = %for.body
  %63 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %src_point63 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %63, i32 0, i32 0
  %x64 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %src_point63, i32 0, i32 0
  %64 = load double, double* %x64, align 8
  store double %64, double* %x45, align 8
  %65 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %src_point65 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %65, i32 0, i32 0
  %y66 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %src_point65, i32 0, i32 1
  %66 = load double, double* %y66, align 8
  store double %66, double* %y47, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.62, %if.then.53
  %67 = load double, double* %x45, align 8
  %x68 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %bounding_box, i32 0, i32 0
  %68 = load i32, i32* %x68, align 4
  %conv69 = sitofp i32 %68 to double
  %cmp70 = fcmp olt double %67, %conv69
  br i1 %cmp70, label %if.then.72, label %if.end.80

if.then.72:                                       ; preds = %if.end.67
  %x73 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %bounding_box, i32 0, i32 0
  %69 = load i32, i32* %x73, align 4
  %conv74 = sitofp i32 %69 to double
  %70 = load double, double* %x45, align 8
  %sub = fsub double %conv74, %70
  %width = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %bounding_box, i32 0, i32 2
  %71 = load i32, i32* %width, align 4
  %conv75 = sitofp i32 %71 to double
  %add76 = fadd double %conv75, %sub
  %conv77 = fptosi double %add76 to i32
  store i32 %conv77, i32* %width, align 4
  %72 = load double, double* %x45, align 8
  %conv78 = fptosi double %72 to i32
  %x79 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %bounding_box, i32 0, i32 0
  store i32 %conv78, i32* %x79, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.72, %if.end.67
  %73 = load double, double* %y47, align 8
  %y81 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %bounding_box, i32 0, i32 1
  %74 = load i32, i32* %y81, align 4
  %conv82 = sitofp i32 %74 to double
  %cmp83 = fcmp olt double %73, %conv82
  br i1 %cmp83, label %if.then.85, label %if.end.94

if.then.85:                                       ; preds = %if.end.80
  %y86 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %bounding_box, i32 0, i32 1
  %75 = load i32, i32* %y86, align 4
  %conv87 = sitofp i32 %75 to double
  %76 = load double, double* %y47, align 8
  %sub88 = fsub double %conv87, %76
  %height = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %bounding_box, i32 0, i32 3
  %77 = load i32, i32* %height, align 4
  %conv89 = sitofp i32 %77 to double
  %add90 = fadd double %conv89, %sub88
  %conv91 = fptosi double %add90 to i32
  store i32 %conv91, i32* %height, align 4
  %78 = load double, double* %y47, align 8
  %conv92 = fptosi double %78 to i32
  %y93 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %bounding_box, i32 0, i32 1
  store i32 %conv92, i32* %y93, align 4
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.85, %if.end.80
  %79 = load double, double* %x45, align 8
  %x95 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %bounding_box, i32 0, i32 0
  %80 = load i32, i32* %x95, align 4
  %width96 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %bounding_box, i32 0, i32 2
  %81 = load i32, i32* %width96, align 4
  %add97 = add nsw i32 %80, %81
  %conv98 = sitofp i32 %add97 to double
  %cmp99 = fcmp ogt double %79, %conv98
  br i1 %cmp99, label %if.then.101, label %if.end.107

if.then.101:                                      ; preds = %if.end.94
  %82 = load double, double* %x45, align 8
  %x102 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %bounding_box, i32 0, i32 0
  %83 = load i32, i32* %x102, align 4
  %conv103 = sitofp i32 %83 to double
  %sub104 = fsub double %82, %conv103
  %conv105 = fptosi double %sub104 to i32
  %width106 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %bounding_box, i32 0, i32 2
  store i32 %conv105, i32* %width106, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.101, %if.end.94
  %84 = load double, double* %y47, align 8
  %y108 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %bounding_box, i32 0, i32 1
  %85 = load i32, i32* %y108, align 4
  %height109 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %bounding_box, i32 0, i32 3
  %86 = load i32, i32* %height109, align 4
  %add110 = add nsw i32 %85, %86
  %conv111 = sitofp i32 %add110 to double
  %cmp112 = fcmp ogt double %84, %conv111
  br i1 %cmp112, label %if.then.114, label %if.end.120

if.then.114:                                      ; preds = %if.end.107
  %87 = load double, double* %y47, align 8
  %y115 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %bounding_box, i32 0, i32 1
  %88 = load i32, i32* %y115, align 4
  %conv116 = sitofp i32 %88 to double
  %sub117 = fsub double %87, %conv116
  %conv118 = fptosi double %sub117 to i32
  %height119 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %bounding_box, i32 0, i32 3
  store i32 %conv118, i32* %height119, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.114, %if.end.107
  br label %for.inc

for.inc:                                          ; preds = %if.end.120
  %89 = load i32, i32* %i, align 4
  %inc = add nsw i32 %89, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %90 = bitcast %struct._GeglRectangle* %retval to i8*
  %91 = bitcast %struct._GeglRectangle* %bounding_box to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %90, i8* %91, i64 16, i32 4, i1 false)
  br label %return

return:                                           ; preds = %for.end, %if.then.20, %if.else.14, %if.else.9
  %92 = bitcast %struct._GeglRectangle* %retval to { i64, i64 }*
  %93 = load { i64, i64 }, { i64, i64 }* %92, align 4
  ret { i64, i64 } %93
}

; Function Attrs: nounwind uwtable
define void @gimp_cage_config_reverse_cage(%struct._GimpCageConfig* %gcc) #3 {
entry:
  %gcc.addr = alloca %struct._GimpCageConfig*, align 8
  %temp = alloca %struct._GimpCagePoint, align 8
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCageConfig* %gcc, %struct._GimpCageConfig** %gcc.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %1 = bitcast %struct._GimpCageConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_cage_config_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_cage_config_reverse_cage, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %13 = load i32, i32* %i, align 4
  %14 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %14, i32 0, i32 1
  %15 = load %struct._GArray*, %struct._GArray** %cage_points, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %15, i32 0, i32 1
  %16 = load i32, i32* %len, align 4
  %div = udiv i32 %16, 2
  %cmp11 = icmp ult i32 %13, %div
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points12 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %18, i32 0, i32 1
  %19 = load %struct._GArray*, %struct._GArray** %cage_points12, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %19, i32 0, i32 0
  %20 = load i8*, i8** %data, align 8
  %21 = bitcast i8* %20 to %struct._GimpCagePoint*
  %arrayidx = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %21, i64 %idxprom
  %22 = bitcast %struct._GimpCagePoint* %temp to i8*
  %23 = bitcast %struct._GimpCagePoint* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 64, i32 8, i1 false)
  %24 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %24 to i64
  %25 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points14 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %25, i32 0, i32 1
  %26 = load %struct._GArray*, %struct._GArray** %cage_points14, align 8
  %data15 = getelementptr inbounds %struct._GArray, %struct._GArray* %26, i32 0, i32 0
  %27 = load i8*, i8** %data15, align 8
  %28 = bitcast i8* %27 to %struct._GimpCagePoint*
  %arrayidx16 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %28, i64 %idxprom13
  %29 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points17 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %29, i32 0, i32 1
  %30 = load %struct._GArray*, %struct._GArray** %cage_points17, align 8
  %len18 = getelementptr inbounds %struct._GArray, %struct._GArray* %30, i32 0, i32 1
  %31 = load i32, i32* %len18, align 4
  %32 = load i32, i32* %i, align 4
  %sub = sub i32 %31, %32
  %sub19 = sub i32 %sub, 1
  %idxprom20 = zext i32 %sub19 to i64
  %33 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points21 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %33, i32 0, i32 1
  %34 = load %struct._GArray*, %struct._GArray** %cage_points21, align 8
  %data22 = getelementptr inbounds %struct._GArray, %struct._GArray* %34, i32 0, i32 0
  %35 = load i8*, i8** %data22, align 8
  %36 = bitcast i8* %35 to %struct._GimpCagePoint*
  %arrayidx23 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %36, i64 %idxprom20
  %37 = bitcast %struct._GimpCagePoint* %arrayidx16 to i8*
  %38 = bitcast %struct._GimpCagePoint* %arrayidx23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 64, i32 8, i1 false)
  %39 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points24 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %39, i32 0, i32 1
  %40 = load %struct._GArray*, %struct._GArray** %cage_points24, align 8
  %len25 = getelementptr inbounds %struct._GArray, %struct._GArray* %40, i32 0, i32 1
  %41 = load i32, i32* %len25, align 4
  %42 = load i32, i32* %i, align 4
  %sub26 = sub i32 %41, %42
  %sub27 = sub i32 %sub26, 1
  %idxprom28 = zext i32 %sub27 to i64
  %43 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points29 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %43, i32 0, i32 1
  %44 = load %struct._GArray*, %struct._GArray** %cage_points29, align 8
  %data30 = getelementptr inbounds %struct._GArray, %struct._GArray* %44, i32 0, i32 0
  %45 = load i8*, i8** %data30, align 8
  %46 = bitcast i8* %45 to %struct._GimpCagePoint*
  %arrayidx31 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %46, i64 %idxprom28
  %47 = bitcast %struct._GimpCagePoint* %arrayidx31 to i8*
  %48 = bitcast %struct._GimpCagePoint* %temp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 64, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %49 = load i32, i32* %i, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %50 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  call void @gimp_cage_config_compute_scaling_factor(%struct._GimpCageConfig* %50)
  %51 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  call void @gimp_cage_config_compute_edges_normal(%struct._GimpCageConfig* %51)
  br label %return

return:                                           ; preds = %for.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_cage_config_reverse_cage_if_needed(%struct._GimpCageConfig* %gcc) #3 {
entry:
  %gcc.addr = alloca %struct._GimpCageConfig*, align 8
  %i = alloca i32, align 4
  %sum = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %P1 = alloca %struct._GimpVector2, align 8
  %P2 = alloca %struct._GimpVector2, align 8
  %P3 = alloca %struct._GimpVector2, align 8
  %z = alloca double, align 8
  store %struct._GimpCageConfig* %gcc, %struct._GimpCageConfig** %gcc.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %1 = bitcast %struct._GimpCageConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_cage_config_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_cage_config_reverse_cage_if_needed, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.49

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  store double 0.000000e+00, double* %sum, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %13 = load i32, i32* %i, align 4
  %14 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %14, i32 0, i32 1
  %15 = load %struct._GArray*, %struct._GArray** %cage_points, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %15, i32 0, i32 1
  %16 = load i32, i32* %len, align 4
  %cmp11 = icmp ult i32 %13, %16
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points16 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %18, i32 0, i32 1
  %19 = load %struct._GArray*, %struct._GArray** %cage_points16, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %19, i32 0, i32 0
  %20 = load i8*, i8** %data, align 8
  %21 = bitcast i8* %20 to %struct._GimpCagePoint*
  %arrayidx = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %21, i64 %idxprom
  %src_point = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %arrayidx, i32 0, i32 0
  %22 = bitcast %struct._GimpVector2* %P1 to i8*
  %23 = bitcast %struct._GimpVector2* %src_point to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 16, i32 8, i1 false)
  %24 = load i32, i32* %i, align 4
  %add = add nsw i32 %24, 1
  %25 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points17 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %25, i32 0, i32 1
  %26 = load %struct._GArray*, %struct._GArray** %cage_points17, align 8
  %len18 = getelementptr inbounds %struct._GArray, %struct._GArray* %26, i32 0, i32 1
  %27 = load i32, i32* %len18, align 4
  %rem = urem i32 %add, %27
  %idxprom19 = zext i32 %rem to i64
  %28 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points20 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %28, i32 0, i32 1
  %29 = load %struct._GArray*, %struct._GArray** %cage_points20, align 8
  %data21 = getelementptr inbounds %struct._GArray, %struct._GArray* %29, i32 0, i32 0
  %30 = load i8*, i8** %data21, align 8
  %31 = bitcast i8* %30 to %struct._GimpCagePoint*
  %arrayidx22 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %31, i64 %idxprom19
  %src_point23 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %arrayidx22, i32 0, i32 0
  %32 = bitcast %struct._GimpVector2* %P2 to i8*
  %33 = bitcast %struct._GimpVector2* %src_point23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 16, i32 8, i1 false)
  %34 = load i32, i32* %i, align 4
  %add24 = add nsw i32 %34, 2
  %35 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points25 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %35, i32 0, i32 1
  %36 = load %struct._GArray*, %struct._GArray** %cage_points25, align 8
  %len26 = getelementptr inbounds %struct._GArray, %struct._GArray* %36, i32 0, i32 1
  %37 = load i32, i32* %len26, align 4
  %rem27 = urem i32 %add24, %37
  %idxprom28 = zext i32 %rem27 to i64
  %38 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points29 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %38, i32 0, i32 1
  %39 = load %struct._GArray*, %struct._GArray** %cage_points29, align 8
  %data30 = getelementptr inbounds %struct._GArray, %struct._GArray* %39, i32 0, i32 0
  %40 = load i8*, i8** %data30, align 8
  %41 = bitcast i8* %40 to %struct._GimpCagePoint*
  %arrayidx31 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %41, i64 %idxprom28
  %src_point32 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %arrayidx31, i32 0, i32 0
  %42 = bitcast %struct._GimpVector2* %P3 to i8*
  %43 = bitcast %struct._GimpVector2* %src_point32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 16, i32 8, i1 false)
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %P1, i32 0, i32 0
  %44 = load double, double* %x, align 8
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %P2, i32 0, i32 1
  %45 = load double, double* %y, align 8
  %y33 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %P3, i32 0, i32 1
  %46 = load double, double* %y33, align 8
  %sub = fsub double %45, %46
  %mul = fmul double %44, %sub
  %x34 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %P2, i32 0, i32 0
  %47 = load double, double* %x34, align 8
  %y35 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %P3, i32 0, i32 1
  %48 = load double, double* %y35, align 8
  %y36 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %P1, i32 0, i32 1
  %49 = load double, double* %y36, align 8
  %sub37 = fsub double %48, %49
  %mul38 = fmul double %47, %sub37
  %add39 = fadd double %mul, %mul38
  %x40 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %P3, i32 0, i32 0
  %50 = load double, double* %x40, align 8
  %y41 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %P1, i32 0, i32 1
  %51 = load double, double* %y41, align 8
  %y42 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %P2, i32 0, i32 1
  %52 = load double, double* %y42, align 8
  %sub43 = fsub double %51, %52
  %mul44 = fmul double %50, %sub43
  %add45 = fadd double %add39, %mul44
  store double %add45, double* %z, align 8
  %53 = load double, double* %z, align 8
  %54 = load double, double* %sum, align 8
  %add46 = fadd double %54, %53
  store double %add46, double* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %55 = load i32, i32* %i, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %56 = load double, double* %sum, align 8
  %cmp47 = fcmp ogt double %56, 0.000000e+00
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %for.end
  %57 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  call void @gimp_cage_config_reverse_cage(%struct._GimpCageConfig* %57)
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.9, %if.then.48, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_cage_config_point_inside(%struct._GimpCageConfig* %gcc, float %x, float %y) #3 {
entry:
  %retval = alloca i32, align 4
  %gcc.addr = alloca %struct._GimpCageConfig*, align 8
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4
  %last = alloca %struct._GimpVector2*, align 8
  %current = alloca %struct._GimpVector2*, align 8
  %inside = alloca i32, align 4
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCageConfig* %gcc, %struct._GimpCageConfig** %gcc.addr, align 8
  store float %x, float* %x.addr, align 4
  store float %y, float* %y.addr, align 4
  store i32 0, i32* %inside, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %1 = bitcast %struct._GimpCageConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_cage_config_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_cage_config_point_inside, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %13, i32 0, i32 1
  %14 = load %struct._GArray*, %struct._GArray** %cage_points, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %14, i32 0, i32 1
  %15 = load i32, i32* %len, align 4
  %sub = sub i32 %15, 1
  %idxprom = zext i32 %sub to i64
  %16 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points11 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %16, i32 0, i32 1
  %17 = load %struct._GArray*, %struct._GArray** %cage_points11, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %17, i32 0, i32 0
  %18 = load i8*, i8** %data, align 8
  %19 = bitcast i8* %18 to %struct._GimpCagePoint*
  %arrayidx = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %19, i64 %idxprom
  %src_point = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %arrayidx, i32 0, i32 0
  store %struct._GimpVector2* %src_point, %struct._GimpVector2** %last, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %20 = load i32, i32* %i, align 4
  %21 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points12 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %21, i32 0, i32 1
  %22 = load %struct._GArray*, %struct._GArray** %cage_points12, align 8
  %len13 = getelementptr inbounds %struct._GArray, %struct._GArray* %22, i32 0, i32 1
  %23 = load i32, i32* %len13, align 4
  %cmp14 = icmp ult i32 %20, %23
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %24 to i64
  %25 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points16 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %25, i32 0, i32 1
  %26 = load %struct._GArray*, %struct._GArray** %cage_points16, align 8
  %data17 = getelementptr inbounds %struct._GArray, %struct._GArray* %26, i32 0, i32 0
  %27 = load i8*, i8** %data17, align 8
  %28 = bitcast i8* %27 to %struct._GimpCagePoint*
  %arrayidx18 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %28, i64 %idxprom15
  %src_point19 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %arrayidx18, i32 0, i32 0
  store %struct._GimpVector2* %src_point19, %struct._GimpVector2** %current, align 8
  %29 = load %struct._GimpVector2*, %struct._GimpVector2** %current, align 8
  %y20 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %29, i32 0, i32 1
  %30 = load double, double* %y20, align 8
  %31 = load float, float* %y.addr, align 4
  %conv = fpext float %31 to double
  %cmp21 = fcmp ole double %30, %conv
  br i1 %cmp21, label %land.lhs.true.23, label %lor.lhs.false

land.lhs.true.23:                                 ; preds = %for.body
  %32 = load float, float* %y.addr, align 4
  %conv24 = fpext float %32 to double
  %33 = load %struct._GimpVector2*, %struct._GimpVector2** %last, align 8
  %y25 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %33, i32 0, i32 1
  %34 = load double, double* %y25, align 8
  %cmp26 = fcmp olt double %conv24, %34
  br i1 %cmp26, label %land.lhs.true.37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.23, %for.body
  %35 = load %struct._GimpVector2*, %struct._GimpVector2** %last, align 8
  %y28 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %35, i32 0, i32 1
  %36 = load double, double* %y28, align 8
  %37 = load float, float* %y.addr, align 4
  %conv29 = fpext float %37 to double
  %cmp30 = fcmp ole double %36, %conv29
  br i1 %cmp30, label %land.lhs.true.32, label %if.end.53

land.lhs.true.32:                                 ; preds = %lor.lhs.false
  %38 = load float, float* %y.addr, align 4
  %conv33 = fpext float %38 to double
  %39 = load %struct._GimpVector2*, %struct._GimpVector2** %current, align 8
  %y34 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %39, i32 0, i32 1
  %40 = load double, double* %y34, align 8
  %cmp35 = fcmp olt double %conv33, %40
  br i1 %cmp35, label %land.lhs.true.37, label %if.end.53

land.lhs.true.37:                                 ; preds = %land.lhs.true.32, %land.lhs.true.23
  %41 = load float, float* %x.addr, align 4
  %conv38 = fpext float %41 to double
  %42 = load %struct._GimpVector2*, %struct._GimpVector2** %last, align 8
  %x39 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %42, i32 0, i32 0
  %43 = load double, double* %x39, align 8
  %44 = load %struct._GimpVector2*, %struct._GimpVector2** %current, align 8
  %x40 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %44, i32 0, i32 0
  %45 = load double, double* %x40, align 8
  %sub41 = fsub double %43, %45
  %46 = load float, float* %y.addr, align 4
  %conv42 = fpext float %46 to double
  %47 = load %struct._GimpVector2*, %struct._GimpVector2** %current, align 8
  %y43 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %47, i32 0, i32 1
  %48 = load double, double* %y43, align 8
  %sub44 = fsub double %conv42, %48
  %mul = fmul double %sub41, %sub44
  %49 = load %struct._GimpVector2*, %struct._GimpVector2** %last, align 8
  %y45 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %49, i32 0, i32 1
  %50 = load double, double* %y45, align 8
  %51 = load %struct._GimpVector2*, %struct._GimpVector2** %current, align 8
  %y46 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %51, i32 0, i32 1
  %52 = load double, double* %y46, align 8
  %sub47 = fsub double %50, %52
  %div = fdiv double %mul, %sub47
  %53 = load %struct._GimpVector2*, %struct._GimpVector2** %current, align 8
  %x48 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %53, i32 0, i32 0
  %54 = load double, double* %x48, align 8
  %add = fadd double %div, %54
  %cmp49 = fcmp olt double %conv38, %add
  br i1 %cmp49, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %land.lhs.true.37
  %55 = load i32, i32* %inside, align 4
  %tobool52 = icmp ne i32 %55, 0
  %lnot = xor i1 %tobool52, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %inside, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %land.lhs.true.37, %land.lhs.true.32, %lor.lhs.false
  %56 = load %struct._GimpVector2*, %struct._GimpVector2** %current, align 8
  store %struct._GimpVector2* %56, %struct._GimpVector2** %last, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.53
  %57 = load i32, i32* %i, align 4
  %inc = add nsw i32 %57, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %58 = load i32, i32* %inside, align 4
  store i32 %58, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.9
  %59 = load i32, i32* %retval
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define void @gimp_cage_config_select_point(%struct._GimpCageConfig* %gcc, i32 %point_number) #3 {
entry:
  %gcc.addr = alloca %struct._GimpCageConfig*, align 8
  %point_number.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %point = alloca %struct._GimpCagePoint*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCageConfig* %gcc, %struct._GimpCageConfig** %gcc.addr, align 8
  store i32 %point_number, i32* %point_number.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %1 = bitcast %struct._GimpCageConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_cage_config_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_cage_config_select_point, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %for.end

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %point_number.addr, align 4
  %14 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %14, i32 0, i32 1
  %15 = load %struct._GArray*, %struct._GArray** %cage_points, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %15, i32 0, i32 1
  %16 = load i32, i32* %len, align 4
  %cmp12 = icmp ult i32 %13, %16
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_cage_config_select_point, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i32 0, i32 0))
  br label %for.end

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %17 = load i32, i32* %point_number.addr, align 4
  %cmp18 = icmp sge i32 %17, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_cage_config_select_point, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0))
  br label %for.end

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.22
  %18 = load i32, i32* %i, align 4
  %19 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points23 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %19, i32 0, i32 1
  %20 = load %struct._GArray*, %struct._GArray** %cage_points23, align 8
  %len24 = getelementptr inbounds %struct._GArray, %struct._GArray* %20, i32 0, i32 1
  %21 = load i32, i32* %len24, align 4
  %cmp25 = icmp ult i32 %18, %21
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %i, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points26 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %23, i32 0, i32 1
  %24 = load %struct._GArray*, %struct._GArray** %cage_points26, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %24, i32 0, i32 0
  %25 = load i8*, i8** %data, align 8
  %26 = bitcast i8* %25 to %struct._GimpCagePoint*
  %arrayidx = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %26, i64 %idxprom
  store %struct._GimpCagePoint* %arrayidx, %struct._GimpCagePoint** %point, align 8
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %point_number.addr, align 4
  %cmp27 = icmp eq i32 %27, %28
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %for.body
  %29 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %selected = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %29, i32 0, i32 4
  store i32 1, i32* %selected, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %for.body
  %30 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %selected30 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %30, i32 0, i32 4
  store i32 0, i32* %selected30, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %31 = load i32, i32* %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else.9, %if.else.14, %if.else.20, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_cage_config_select_area(%struct._GimpCageConfig* %gcc, i32 %mode, i64 %area.coerce0, i64 %area.coerce1) #3 {
entry:
  %area = alloca %struct._GeglRectangle, align 8
  %gcc.addr = alloca %struct._GimpCageConfig*, align 8
  %mode.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %0 = bitcast %struct._GeglRectangle* %area to { i64, i64 }*
  %1 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %area.coerce0, i64* %1
  %2 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %area.coerce1, i64* %2
  store %struct._GimpCageConfig* %gcc, %struct._GimpCageConfig** %gcc.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %4 = bitcast %struct._GimpCageConfig* %3 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %4, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_cage_config_get_type() #6
  store i64 %call, i64* %__t, align 8
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %5, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %7, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  %11 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %10, %11
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %13 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %12, i64 %13) #7
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %14 = load i32, i32* %__r, align 4
  store i32 %14, i32* %tmp
  %15 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %15, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_cage_config_select_area, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %16 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  call void @gimp_cage_config_deselect_points(%struct._GimpCageConfig* %16)
  %17 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %18 = load i32, i32* %mode.addr, align 4
  %19 = bitcast %struct._GeglRectangle* %area to { i64, i64 }*
  %20 = getelementptr { i64, i64 }, { i64, i64 }* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 1
  %22 = getelementptr { i64, i64 }, { i64, i64 }* %19, i32 0, i32 1
  %23 = load i64, i64* %22, align 1
  call void @gimp_cage_config_select_add_area(%struct._GimpCageConfig* %17, i32 %18, i64 %21, i64 %23)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_cage_config_deselect_points(%struct._GimpCageConfig* %gcc) #3 {
entry:
  %gcc.addr = alloca %struct._GimpCageConfig*, align 8
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCageConfig* %gcc, %struct._GimpCageConfig** %gcc.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %1 = bitcast %struct._GimpCageConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_cage_config_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_cage_config_deselect_points, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %for.end

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %13 = load i32, i32* %i, align 4
  %14 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %14, i32 0, i32 1
  %15 = load %struct._GArray*, %struct._GArray** %cage_points, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %15, i32 0, i32 1
  %16 = load i32, i32* %len, align 4
  %cmp11 = icmp ult i32 %13, %16
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points12 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %18, i32 0, i32 1
  %19 = load %struct._GArray*, %struct._GArray** %cage_points12, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %19, i32 0, i32 0
  %20 = load i8*, i8** %data, align 8
  %21 = bitcast i8* %20 to %struct._GimpCagePoint*
  %arrayidx = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %21, i64 %idxprom
  %selected = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %arrayidx, i32 0, i32 4
  store i32 0, i32* %selected, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else.9, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_cage_config_select_add_area(%struct._GimpCageConfig* %gcc, i32 %mode, i64 %area.coerce0, i64 %area.coerce1) #3 {
entry:
  %area = alloca %struct._GeglRectangle, align 8
  %gcc.addr = alloca %struct._GimpCageConfig*, align 8
  %mode.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %point = alloca %struct._GimpCagePoint*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %0 = bitcast %struct._GeglRectangle* %area to { i64, i64 }*
  %1 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %area.coerce0, i64* %1
  %2 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %area.coerce1, i64* %2
  store %struct._GimpCageConfig* %gcc, %struct._GimpCageConfig** %gcc.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %4 = bitcast %struct._GimpCageConfig* %3 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %4, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_cage_config_get_type() #6
  store i64 %call, i64* %__t, align 8
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %5, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %7, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  %11 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %10, %11
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %13 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %12, i64 %13) #7
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %14 = load i32, i32* %__r, align 4
  store i32 %14, i32* %tmp
  %15 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %15, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_cage_config_select_add_area, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %for.end

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %16 = load i32, i32* %i, align 4
  %17 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %17, i32 0, i32 1
  %18 = load %struct._GArray*, %struct._GArray** %cage_points, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %18, i32 0, i32 1
  %19 = load i32, i32* %len, align 4
  %cmp11 = icmp ult i32 %16, %19
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %i, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points12 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %21, i32 0, i32 1
  %22 = load %struct._GArray*, %struct._GArray** %cage_points12, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %22, i32 0, i32 0
  %23 = load i8*, i8** %data, align 8
  %24 = bitcast i8* %23 to %struct._GimpCagePoint*
  %arrayidx = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %24, i64 %idxprom
  store %struct._GimpCagePoint* %arrayidx, %struct._GimpCagePoint** %point, align 8
  %25 = load i32, i32* %mode.addr, align 4
  %cmp13 = icmp eq i32 %25, 0
  br i1 %cmp13, label %if.then.14, label %if.else.41

if.then.14:                                       ; preds = %for.body
  %26 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %src_point = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %26, i32 0, i32 0
  %x = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %src_point, i32 0, i32 0
  %27 = load double, double* %x, align 8
  %x15 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %area, i32 0, i32 0
  %28 = load i32, i32* %x15, align 4
  %conv = sitofp i32 %28 to double
  %cmp16 = fcmp oge double %27, %conv
  br i1 %cmp16, label %land.lhs.true.18, label %if.end.40

land.lhs.true.18:                                 ; preds = %if.then.14
  %29 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %src_point19 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %29, i32 0, i32 0
  %x20 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %src_point19, i32 0, i32 0
  %30 = load double, double* %x20, align 8
  %x21 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %area, i32 0, i32 0
  %31 = load i32, i32* %x21, align 4
  %width = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %area, i32 0, i32 2
  %32 = load i32, i32* %width, align 4
  %add = add nsw i32 %31, %32
  %conv22 = sitofp i32 %add to double
  %cmp23 = fcmp ole double %30, %conv22
  br i1 %cmp23, label %land.lhs.true.25, label %if.end.40

land.lhs.true.25:                                 ; preds = %land.lhs.true.18
  %33 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %src_point26 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %33, i32 0, i32 0
  %y = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %src_point26, i32 0, i32 1
  %34 = load double, double* %y, align 8
  %y27 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %area, i32 0, i32 1
  %35 = load i32, i32* %y27, align 4
  %conv28 = sitofp i32 %35 to double
  %cmp29 = fcmp oge double %34, %conv28
  br i1 %cmp29, label %land.lhs.true.31, label %if.end.40

land.lhs.true.31:                                 ; preds = %land.lhs.true.25
  %36 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %src_point32 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %36, i32 0, i32 0
  %y33 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %src_point32, i32 0, i32 1
  %37 = load double, double* %y33, align 8
  %y34 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %area, i32 0, i32 1
  %38 = load i32, i32* %y34, align 4
  %height = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %area, i32 0, i32 3
  %39 = load i32, i32* %height, align 4
  %add35 = add nsw i32 %38, %39
  %conv36 = sitofp i32 %add35 to double
  %cmp37 = fcmp ole double %37, %conv36
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %land.lhs.true.31
  %40 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %selected = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %40, i32 0, i32 4
  store i32 1, i32* %selected, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %land.lhs.true.31, %land.lhs.true.25, %land.lhs.true.18, %if.then.14
  br label %if.end.75

if.else.41:                                       ; preds = %for.body
  %41 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %dest_point = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %41, i32 0, i32 1
  %x42 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %dest_point, i32 0, i32 0
  %42 = load double, double* %x42, align 8
  %x43 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %area, i32 0, i32 0
  %43 = load i32, i32* %x43, align 4
  %conv44 = sitofp i32 %43 to double
  %cmp45 = fcmp oge double %42, %conv44
  br i1 %cmp45, label %land.lhs.true.47, label %if.end.74

land.lhs.true.47:                                 ; preds = %if.else.41
  %44 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %dest_point48 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %44, i32 0, i32 1
  %x49 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %dest_point48, i32 0, i32 0
  %45 = load double, double* %x49, align 8
  %x50 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %area, i32 0, i32 0
  %46 = load i32, i32* %x50, align 4
  %width51 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %area, i32 0, i32 2
  %47 = load i32, i32* %width51, align 4
  %add52 = add nsw i32 %46, %47
  %conv53 = sitofp i32 %add52 to double
  %cmp54 = fcmp ole double %45, %conv53
  br i1 %cmp54, label %land.lhs.true.56, label %if.end.74

land.lhs.true.56:                                 ; preds = %land.lhs.true.47
  %48 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %dest_point57 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %48, i32 0, i32 1
  %y58 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %dest_point57, i32 0, i32 1
  %49 = load double, double* %y58, align 8
  %y59 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %area, i32 0, i32 1
  %50 = load i32, i32* %y59, align 4
  %conv60 = sitofp i32 %50 to double
  %cmp61 = fcmp oge double %49, %conv60
  br i1 %cmp61, label %land.lhs.true.63, label %if.end.74

land.lhs.true.63:                                 ; preds = %land.lhs.true.56
  %51 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %dest_point64 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %51, i32 0, i32 1
  %y65 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %dest_point64, i32 0, i32 1
  %52 = load double, double* %y65, align 8
  %y66 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %area, i32 0, i32 1
  %53 = load i32, i32* %y66, align 4
  %height67 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %area, i32 0, i32 3
  %54 = load i32, i32* %height67, align 4
  %add68 = add nsw i32 %53, %54
  %conv69 = sitofp i32 %add68 to double
  %cmp70 = fcmp ole double %52, %conv69
  br i1 %cmp70, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %land.lhs.true.63
  %55 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %selected73 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %55, i32 0, i32 4
  store i32 1, i32* %selected73, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %land.lhs.true.63, %land.lhs.true.56, %land.lhs.true.47, %if.else.41
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.end.40
  br label %for.inc

for.inc:                                          ; preds = %if.end.75
  %56 = load i32, i32* %i, align 4
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else.9, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_cage_config_toggle_point_selection(%struct._GimpCageConfig* %gcc, i32 %point_number) #3 {
entry:
  %gcc.addr = alloca %struct._GimpCageConfig*, align 8
  %point_number.addr = alloca i32, align 4
  %point = alloca %struct._GimpCagePoint*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCageConfig* %gcc, %struct._GimpCageConfig** %gcc.addr, align 8
  store i32 %point_number, i32* %point_number.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %1 = bitcast %struct._GimpCageConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_cage_config_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_cage_config_toggle_point_selection, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %point_number.addr, align 4
  %14 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %14, i32 0, i32 1
  %15 = load %struct._GArray*, %struct._GArray** %cage_points, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %15, i32 0, i32 1
  %16 = load i32, i32* %len, align 4
  %cmp12 = icmp ult i32 %13, %16
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_cage_config_toggle_point_selection, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %17 = load i32, i32* %point_number.addr, align 4
  %cmp18 = icmp sge i32 %17, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_cage_config_toggle_point_selection, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %18 = load i32, i32* %point_number.addr, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points23 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %19, i32 0, i32 1
  %20 = load %struct._GArray*, %struct._GArray** %cage_points23, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %20, i32 0, i32 0
  %21 = load i8*, i8** %data, align 8
  %22 = bitcast i8* %21 to %struct._GimpCagePoint*
  %arrayidx = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %22, i64 %idxprom
  store %struct._GimpCagePoint* %arrayidx, %struct._GimpCagePoint** %point, align 8
  %23 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %selected = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %23, i32 0, i32 4
  %24 = load i32, i32* %selected, align 4
  %tobool24 = icmp ne i32 %24, 0
  %lnot = xor i1 %tobool24, true
  %lnot.ext = zext i1 %lnot to i32
  %25 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %selected25 = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %25, i32 0, i32 4
  store i32 %lnot.ext, i32* %selected25, align 4
  br label %return

return:                                           ; preds = %do.end.22, %if.else.20, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_cage_config_point_is_selected(%struct._GimpCageConfig* %gcc, i32 %point_number) #3 {
entry:
  %retval = alloca i32, align 4
  %gcc.addr = alloca %struct._GimpCageConfig*, align 8
  %point_number.addr = alloca i32, align 4
  %point = alloca %struct._GimpCagePoint*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpCageConfig* %gcc, %struct._GimpCageConfig** %gcc.addr, align 8
  store i32 %point_number, i32* %point_number.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %1 = bitcast %struct._GimpCageConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_cage_config_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_cage_config_point_is_selected, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %point_number.addr, align 4
  %14 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %14, i32 0, i32 1
  %15 = load %struct._GArray*, %struct._GArray** %cage_points, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %15, i32 0, i32 1
  %16 = load i32, i32* %len, align 4
  %cmp12 = icmp ult i32 %13, %16
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_cage_config_point_is_selected, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %17 = load i32, i32* %point_number.addr, align 4
  %cmp18 = icmp sge i32 %17, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_cage_config_point_is_selected, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %18 = load i32, i32* %point_number.addr, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc.addr, align 8
  %cage_points23 = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %19, i32 0, i32 1
  %20 = load %struct._GArray*, %struct._GArray** %cage_points23, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %20, i32 0, i32 0
  %21 = load i8*, i8** %data, align 8
  %22 = bitcast i8* %21 to %struct._GimpCagePoint*
  %arrayidx = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %22, i64 %idxprom
  store %struct._GimpCagePoint* %arrayidx, %struct._GimpCagePoint** %point, align 8
  %23 = load %struct._GimpCagePoint*, %struct._GimpCagePoint** %point, align 8
  %selected = getelementptr inbounds %struct._GimpCagePoint, %struct._GimpCagePoint* %23, i32 0, i32 4
  %24 = load i32, i32* %selected, align 4
  store i32 %24, i32* %retval
  br label %return

return:                                           ; preds = %do.end.22, %if.else.20, %if.else.14, %if.else.9
  %25 = load i32, i32* %retval
  ret i32 %25
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_cage_config_class_init(%struct._GimpCageConfigClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpCageConfigClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpCageConfigClass* %klass, %struct._GimpCageConfigClass** %klass.addr, align 8
  %0 = load %struct._GimpCageConfigClass*, %struct._GimpCageConfigClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpCageConfigClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_cage_config_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_cage_config_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_cage_config_finalize, void (%struct._GObject*)** %finalize, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_cage_config_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load i32, i32* %property_id.addr, align 4
  switch i32 %0, label %sw.default [
  ]

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %1 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %1, %struct._GObject** %_glib__object, align 8
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %2, %struct._GParamSpec** %_glib__pspec, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  store i32 %3, i32* %_glib__property_id, align 4
  %4 = load i32, i32* %_glib__property_id, align 4
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %5, i32 0, i32 1
  %6 = load i8*, i8** %name, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %8 = bitcast %struct._GParamSpec* %7 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  %call = call i8* @g_type_name(i64 %10)
  %11 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %12 = bitcast %struct._GObject* %11 to %struct._GTypeInstance*
  %g_class1 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class1, align 8
  %g_type2 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type2, align 8
  %call3 = call i8* @g_type_name(i64 %14)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i32 145, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 %4, i8* %6, i8* %call, i8* %call3)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_cage_config_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load i32, i32* %property_id.addr, align 4
  switch i32 %0, label %sw.default [
  ]

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %1 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %1, %struct._GObject** %_glib__object, align 8
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %2, %struct._GParamSpec** %_glib__pspec, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  store i32 %3, i32* %_glib__property_id, align 4
  %4 = load i32, i32* %_glib__property_id, align 4
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %5, i32 0, i32 1
  %6 = load i8*, i8** %name, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %8 = bitcast %struct._GParamSpec* %7 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  %call = call i8* @g_type_name(i64 %10)
  %11 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %12 = bitcast %struct._GObject* %11 to %struct._GTypeInstance*
  %g_class1 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class1, align 8
  %g_type2 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type2, align 8
  %call3 = call i8* @g_type_name(i64 %14)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i32 131, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 %4, i8* %6, i8* %call, i8* %call3)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_cage_config_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %gcc = alloca %struct._GimpCageConfig*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_cage_config_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCageConfig*
  store %struct._GimpCageConfig* %2, %struct._GimpCageConfig** %gcc, align 8
  %3 = load %struct._GimpCageConfig*, %struct._GimpCageConfig** %gcc, align 8
  %cage_points = getelementptr inbounds %struct._GimpCageConfig, %struct._GimpCageConfig* %3, i32 0, i32 1
  %4 = load %struct._GArray*, %struct._GArray** %cage_points, align 8
  %call2 = call i8* @g_array_free(%struct._GArray* %4, i32 1)
  %5 = load i8*, i8** @gimp_cage_config_parent_class, align 8
  %6 = bitcast i8* %5 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %6, i64 80)
  %7 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 6
  %8 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %9 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %8(%struct._GObject* %9)
  ret void
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

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i8* @g_array_free(%struct._GArray*, i32) #1

declare %struct._GArray* @g_array_sized_new(i32, i32, i32, i32) #1

declare void @gimp_vector2_sub(%struct._GimpVector2*, %struct._GimpVector2*, %struct._GimpVector2*) #1

declare double @gimp_vector2_length(%struct._GimpVector2*) #1

declare { double, double } @gimp_vector2_normal(%struct._GimpVector2*) #1

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
