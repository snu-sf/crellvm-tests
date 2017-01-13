; ModuleID = './app/core/gimpgrid.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpGridClass = type { %struct._GimpObjectClass }
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
%struct._GimpGrid = type { %struct._GimpObject, i32, %struct._GimpRGB, %struct._GimpRGB, double, double, i32, double, double, i32 }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpParasite = type { i8*, i32, i32, i8* }
%struct._GimpConfig = type opaque
%struct._GError = type { i32, i32, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_grid_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"GimpGrid\00", align 1
@gimp_grid_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_grid_get_spacing = private unnamed_addr constant [22 x i8] c"gimp_grid_get_spacing\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GRID (grid)\00", align 1
@__func__.gimp_grid_get_offset = private unnamed_addr constant [21 x i8] c"gimp_grid_get_offset\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"gimp-image-grid\00", align 1
@__func__.gimp_grid_to_parasite = private unnamed_addr constant [22 x i8] c"gimp_grid_to_parasite\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"str != NULL\00", align 1
@__func__.gimp_grid_from_parasite = private unnamed_addr constant [24 x i8] c"gimp_grid_from_parasite\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"parasite != NULL\00", align 1
@.str.6 = private unnamed_addr constant [72 x i8] c"strcmp (gimp_parasite_name (parasite), gimp_grid_parasite_name ()) == 0\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Failed to deserialize grid parasite: %s\00", align 1
@gimp_grid_parent_class = internal global i8* null, align 8
@GimpGrid_private_offset = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"style\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Line style used for the grid.\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"fgcolor\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"The foreground color of the grid.\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"bgcolor\00", align 1
@.str.13 = private unnamed_addr constant [73 x i8] c"The background color of the grid; only used in double dashed line style.\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"xspacing\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"Horizontal spacing of grid lines.\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"yspacing\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"Vertical spacing of grid lines.\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"spacing-unit\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"xoffset\00", align 1
@.str.20 = private unnamed_addr constant [73 x i8] c"Horizontal offset of the first grid line; this may be a negative number.\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"yoffset\00", align 1
@.str.22 = private unnamed_addr constant [71 x i8] c"Vertical offset of the first grid line; this may be a negative number.\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"offset-unit\00", align 1
@.str.24 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"gimpgrid.c\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_grid_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_grid_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_grid_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 160, void (i8*, i8*)* bitcast (void (i8*)* @gimp_grid_class_intern_init to void (i8*, i8*)*), i32 152, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpGrid*)* @gimp_grid_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_config_interface_get_type() #6
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_grid_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_grid_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_grid_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_grid_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_grid_parent_class, align 8
  %1 = load i32, i32* @GimpGrid_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpGrid_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpGridClass*
  call void @gimp_grid_class_init(%struct._GimpGridClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_grid_init(%struct._GimpGrid* %grid) #3 {
entry:
  %grid.addr = alloca %struct._GimpGrid*, align 8
  store %struct._GimpGrid* %grid, %struct._GimpGrid** %grid.addr, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_grid_get_spacing(%struct._GimpGrid* %grid, double* %xspacing, double* %yspacing) #3 {
entry:
  %grid.addr = alloca %struct._GimpGrid*, align 8
  %xspacing.addr = alloca double*, align 8
  %yspacing.addr = alloca double*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpGrid* %grid, %struct._GimpGrid** %grid.addr, align 8
  store double* %xspacing, double** %xspacing.addr, align 8
  store double* %yspacing, double** %yspacing.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGrid*, %struct._GimpGrid** %grid.addr, align 8
  %1 = bitcast %struct._GimpGrid* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_grid_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_grid_get_spacing, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.20

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load double*, double** %xspacing.addr, align 8
  %tobool11 = icmp ne double* %13, null
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %do.end
  %14 = load %struct._GimpGrid*, %struct._GimpGrid** %grid.addr, align 8
  %xspacing13 = getelementptr inbounds %struct._GimpGrid, %struct._GimpGrid* %14, i32 0, i32 4
  %15 = load double, double* %xspacing13, align 8
  %call14 = call double @rint(double %15) #6
  %16 = load double*, double** %xspacing.addr, align 8
  store double %call14, double* %16, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %do.end
  %17 = load double*, double** %yspacing.addr, align 8
  %tobool16 = icmp ne double* %17, null
  br i1 %tobool16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end.15
  %18 = load %struct._GimpGrid*, %struct._GimpGrid** %grid.addr, align 8
  %yspacing18 = getelementptr inbounds %struct._GimpGrid, %struct._GimpGrid* %18, i32 0, i32 5
  %19 = load double, double* %yspacing18, align 8
  %call19 = call double @rint(double %19) #6
  %20 = load double*, double** %yspacing.addr, align 8
  store double %call19, double* %20, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.9, %if.then.17, %if.end.15
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare double @rint(double) #2

; Function Attrs: nounwind uwtable
define void @gimp_grid_get_offset(%struct._GimpGrid* %grid, double* %xoffset, double* %yoffset) #3 {
entry:
  %grid.addr = alloca %struct._GimpGrid*, align 8
  %xoffset.addr = alloca double*, align 8
  %yoffset.addr = alloca double*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpGrid* %grid, %struct._GimpGrid** %grid.addr, align 8
  store double* %xoffset, double** %xoffset.addr, align 8
  store double* %yoffset, double** %yoffset.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGrid*, %struct._GimpGrid** %grid.addr, align 8
  %1 = bitcast %struct._GimpGrid* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_grid_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_grid_get_offset, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.20

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load double*, double** %xoffset.addr, align 8
  %tobool11 = icmp ne double* %13, null
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %do.end
  %14 = load %struct._GimpGrid*, %struct._GimpGrid** %grid.addr, align 8
  %xoffset13 = getelementptr inbounds %struct._GimpGrid, %struct._GimpGrid* %14, i32 0, i32 7
  %15 = load double, double* %xoffset13, align 8
  %call14 = call double @rint(double %15) #6
  %16 = load double*, double** %xoffset.addr, align 8
  store double %call14, double* %16, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %do.end
  %17 = load double*, double** %yoffset.addr, align 8
  %tobool16 = icmp ne double* %17, null
  br i1 %tobool16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end.15
  %18 = load %struct._GimpGrid*, %struct._GimpGrid** %grid.addr, align 8
  %yoffset18 = getelementptr inbounds %struct._GimpGrid, %struct._GimpGrid* %18, i32 0, i32 8
  %19 = load double, double* %yoffset18, align 8
  %call19 = call double @rint(double %19) #6
  %20 = load double*, double** %yoffset.addr, align 8
  store double %call19, double* %20, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.9, %if.then.17, %if.end.15
  ret void
}

; Function Attrs: nounwind readnone uwtable
define i8* @gimp_grid_parasite_name() #0 {
entry:
  ret i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define %struct._GimpParasite* @gimp_grid_to_parasite(%struct._GimpGrid* %grid) #3 {
entry:
  %retval = alloca %struct._GimpParasite*, align 8
  %grid.addr = alloca %struct._GimpGrid*, align 8
  %parasite = alloca %struct._GimpParasite*, align 8
  %str = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpGrid* %grid, %struct._GimpGrid** %grid.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpGrid*, %struct._GimpGrid** %grid.addr, align 8
  %1 = bitcast %struct._GimpGrid* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_grid_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_grid_to_parasite, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpParasite* null, %struct._GimpParasite** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpGrid*, %struct._GimpGrid** %grid.addr, align 8
  %14 = bitcast %struct._GimpGrid* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_config_interface_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpConfig*
  %call13 = call i8* @gimp_config_serialize_to_string(%struct._GimpConfig* %15, i8* null)
  store i8* %call13, i8** %str, align 8
  br label %do.body.14

do.body.14:                                       ; preds = %do.end
  %16 = load i8*, i8** %str, align 8
  %cmp15 = icmp ne i8* %16, null
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.14
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.14
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_grid_to_parasite, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpParasite* null, %struct._GimpParasite** %retval
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  %call20 = call i8* @gimp_grid_parasite_name() #6
  %17 = load i8*, i8** %str, align 8
  %call21 = call i64 @strlen(i8* %17) #7
  %add = add i64 %call21, 1
  %conv = trunc i64 %add to i32
  %18 = load i8*, i8** %str, align 8
  %call22 = call %struct._GimpParasite* @gimp_parasite_new(i8* %call20, i32 1, i32 %conv, i8* %18)
  store %struct._GimpParasite* %call22, %struct._GimpParasite** %parasite, align 8
  %19 = load i8*, i8** %str, align 8
  call void @g_free(i8* %19)
  %20 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  store %struct._GimpParasite* %20, %struct._GimpParasite** %retval
  br label %return

return:                                           ; preds = %do.end.19, %if.else.17, %if.else.9
  %21 = load %struct._GimpParasite*, %struct._GimpParasite** %retval
  ret %struct._GimpParasite* %21
}

declare i8* @gimp_config_serialize_to_string(%struct._GimpConfig*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GimpParasite* @gimp_parasite_new(i8*, i32, i32, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpGrid* @gimp_grid_from_parasite(%struct._GimpParasite* %parasite) #3 {
entry:
  %retval = alloca %struct._GimpGrid*, align 8
  %parasite.addr = alloca %struct._GimpParasite*, align 8
  %grid = alloca %struct._GimpGrid*, align 8
  %str = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GimpParasite* %parasite, %struct._GimpParasite** %parasite.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %cmp = icmp ne %struct._GimpParasite* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_grid_from_parasite, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpGrid* null, %struct._GimpGrid** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %call = call i8* @gimp_parasite_name(%struct._GimpParasite* %1)
  %call2 = call i8* @gimp_grid_parasite_name() #6
  %call3 = call i32 @strcmp(i8* %call, i8* %call2) #7
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %do.body.1
  br label %if.end.7

if.else.6:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_grid_from_parasite, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpGrid* null, %struct._GimpGrid** %retval
  br label %return

if.end.7:                                         ; preds = %if.then.5
  br label %do.end.8

do.end.8:                                         ; preds = %if.end.7
  %2 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %call9 = call i8* @gimp_parasite_data(%struct._GimpParasite* %2)
  store i8* %call9, i8** %str, align 8
  br label %do.body.10

do.body.10:                                       ; preds = %do.end.8
  %3 = load i8*, i8** %str, align 8
  %cmp11 = icmp ne i8* %3, null
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %do.body.10
  br label %if.end.14

if.else.13:                                       ; preds = %do.body.10
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_grid_from_parasite, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpGrid* null, %struct._GimpGrid** %retval
  br label %return

if.end.14:                                        ; preds = %if.then.12
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  %call16 = call i64 @gimp_grid_get_type() #6
  %call17 = call i8* (i64, i8*, ...) @g_object_new(i64 %call16, i8* null)
  %4 = bitcast i8* %call17 to %struct._GimpGrid*
  store %struct._GimpGrid* %4, %struct._GimpGrid** %grid, align 8
  %5 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %6 = bitcast %struct._GimpGrid* %5 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_config_interface_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call18)
  %7 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpConfig*
  %8 = load i8*, i8** %str, align 8
  %9 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %call20 = call i64 @gimp_parasite_data_size(%struct._GimpParasite* %9)
  %conv = trunc i64 %call20 to i32
  %call21 = call i32 @gimp_config_deserialize_string(%struct._GimpConfig* %7, i8* %8, i32 %conv, i8* null, %struct._GError** %error)
  %tobool = icmp ne i32 %call21, 0
  br i1 %tobool, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %do.end.15
  %10 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %10, i32 0, i32 2
  %11 = load i8*, i8** %message, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0), i8* %11)
  %12 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %12)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %do.end.15
  %13 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  store %struct._GimpGrid* %13, %struct._GimpGrid** %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.else.13, %if.else.6, %if.else
  %14 = load %struct._GimpGrid*, %struct._GimpGrid** %retval
  ret %struct._GimpGrid* %14
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i8* @gimp_parasite_name(%struct._GimpParasite*) #1

declare i8* @gimp_parasite_data(%struct._GimpParasite*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare i32 @gimp_config_deserialize_string(%struct._GimpConfig*, i8*, i32, i8*, %struct._GError**) #1

declare i64 @gimp_parasite_data_size(%struct._GimpParasite*) #1

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

declare void @g_error_free(%struct._GError*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_grid_class_init(%struct._GimpGridClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpGridClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %black = alloca %struct._GimpRGB, align 8
  %white = alloca %struct._GimpRGB, align 8
  store %struct._GimpGridClass* %klass, %struct._GimpGridClass** %klass.addr, align 8
  %0 = load %struct._GimpGridClass*, %struct._GimpGridClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpGridClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_grid_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_grid_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  call void @gimp_rgba_set(%struct._GimpRGB* %black, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  call void @gimp_rgba_set(%struct._GimpRGB* %white, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call i64 @gimp_grid_style_get_type() #6
  %call2 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0), i64 %call1, i32 4, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %5, i32 1, %struct._GParamSpec* %call2)
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call %struct._GParamSpec* @gimp_param_spec_rgb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i32 0, i32 0), i32 1, %struct._GimpRGB* %black, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %6, i32 2, %struct._GParamSpec* %call3)
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call4 = call %struct._GParamSpec* @gimp_param_spec_rgb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.13, i32 0, i32 0), i32 1, %struct._GimpRGB* %white, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %7, i32 3, %struct._GParamSpec* %call4)
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i32 0, i32 0), double 1.000000e+00, double 2.621440e+05, double 1.000000e+01, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %8, i32 4, %struct._GParamSpec* %call5)
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0), double 1.000000e+00, double 2.621440e+05, double 1.000000e+01, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %9, i32 5, %struct._GParamSpec* %call6)
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call %struct._GParamSpec* @gimp_param_spec_unit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i8* null, i8* null, i32 0, i32 0, i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 6, %struct._GParamSpec* %call7)
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.20, i32 0, i32 0), double -2.621440e+05, double 2.621440e+05, double 0.000000e+00, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 7, %struct._GParamSpec* %call8)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call9 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.22, i32 0, i32 0), double -2.621440e+05, double 2.621440e+05, double 0.000000e+00, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 8, %struct._GParamSpec* %call9)
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call10 = call %struct._GParamSpec* @gimp_param_spec_unit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i8* null, i8* null, i32 0, i32 0, i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 9, %struct._GParamSpec* %call10)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_grid_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %grid = alloca %struct._GimpGrid*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_grid_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGrid*
  store %struct._GimpGrid* %2, %struct._GimpGrid** %grid, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
    i32 5, label %sw.bb.5
    i32 6, label %sw.bb.6
    i32 7, label %sw.bb.7
    i32 8, label %sw.bb.8
    i32 9, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %style = getelementptr inbounds %struct._GimpGrid, %struct._GimpGrid* %5, i32 0, i32 1
  %6 = load i32, i32* %style, align 4
  call void @g_value_set_enum(%struct._GValue* %4, i32 %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %fgcolor = getelementptr inbounds %struct._GimpGrid, %struct._GimpGrid* %8, i32 0, i32 2
  %9 = bitcast %struct._GimpRGB* %fgcolor to i8*
  call void @g_value_set_boxed(%struct._GValue* %7, i8* %9)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %bgcolor = getelementptr inbounds %struct._GimpGrid, %struct._GimpGrid* %11, i32 0, i32 3
  %12 = bitcast %struct._GimpRGB* %bgcolor to i8*
  call void @g_value_set_boxed(%struct._GValue* %10, i8* %12)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %14 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %xspacing = getelementptr inbounds %struct._GimpGrid, %struct._GimpGrid* %14, i32 0, i32 4
  %15 = load double, double* %xspacing, align 8
  call void @g_value_set_double(%struct._GValue* %13, double %15)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %17 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %yspacing = getelementptr inbounds %struct._GimpGrid, %struct._GimpGrid* %17, i32 0, i32 5
  %18 = load double, double* %yspacing, align 8
  call void @g_value_set_double(%struct._GValue* %16, double %18)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %20 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %spacing_unit = getelementptr inbounds %struct._GimpGrid, %struct._GimpGrid* %20, i32 0, i32 6
  %21 = load i32, i32* %spacing_unit, align 4
  call void @g_value_set_int(%struct._GValue* %19, i32 %21)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %23 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %xoffset = getelementptr inbounds %struct._GimpGrid, %struct._GimpGrid* %23, i32 0, i32 7
  %24 = load double, double* %xoffset, align 8
  call void @g_value_set_double(%struct._GValue* %22, double %24)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %25 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %26 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %yoffset = getelementptr inbounds %struct._GimpGrid, %struct._GimpGrid* %26, i32 0, i32 8
  %27 = load double, double* %yoffset, align 8
  call void @g_value_set_double(%struct._GValue* %25, double %27)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %28 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %29 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %offset_unit = getelementptr inbounds %struct._GimpGrid, %struct._GimpGrid* %29, i32 0, i32 9
  %30 = load i32, i32* %offset_unit, align 4
  call void @g_value_set_int(%struct._GValue* %28, i32 %30)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
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
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %39, i32 0, i32 0
  %40 = load i64, i64* %g_type, align 8
  %call10 = call i8* @g_type_name(i64 %40)
  %41 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %42 = bitcast %struct._GObject* %41 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %42, i32 0, i32 0
  %43 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %g_type12 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %43, i32 0, i32 0
  %44 = load i64, i64* %g_type12, align 8
  %call13 = call i8* @g_type_name(i64 %44)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i32 177, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 %34, i8* %36, i8* %call10, i8* %call13)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_grid_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %grid = alloca %struct._GimpGrid*, align 8
  %color = alloca %struct._GimpRGB*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_grid_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGrid*
  store %struct._GimpGrid* %2, %struct._GimpGrid** %grid, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.7
    i32 5, label %sw.bb.9
    i32 6, label %sw.bb.11
    i32 7, label %sw.bb.13
    i32 8, label %sw.bb.15
    i32 9, label %sw.bb.17
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_enum(%struct._GValue* %4)
  %5 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %style = getelementptr inbounds %struct._GimpGrid, %struct._GimpGrid* %5, i32 0, i32 1
  store i32 %call2, i32* %style, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i8* @g_value_get_boxed(%struct._GValue* %6)
  %7 = bitcast i8* %call4 to %struct._GimpRGB*
  store %struct._GimpRGB* %7, %struct._GimpRGB** %color, align 8
  %8 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %fgcolor = getelementptr inbounds %struct._GimpGrid, %struct._GimpGrid* %8, i32 0, i32 2
  %9 = load %struct._GimpRGB*, %struct._GimpRGB** %color, align 8
  %10 = bitcast %struct._GimpRGB* %fgcolor to i8*
  %11 = bitcast %struct._GimpRGB* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 32, i32 8, i1 false)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i8* @g_value_get_boxed(%struct._GValue* %12)
  %13 = bitcast i8* %call6 to %struct._GimpRGB*
  store %struct._GimpRGB* %13, %struct._GimpRGB** %color, align 8
  %14 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %bgcolor = getelementptr inbounds %struct._GimpGrid, %struct._GimpGrid* %14, i32 0, i32 3
  %15 = load %struct._GimpRGB*, %struct._GimpRGB** %color, align 8
  %16 = bitcast %struct._GimpRGB* %bgcolor to i8*
  %17 = bitcast %struct._GimpRGB* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 32, i32 8, i1 false)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %18 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call double @g_value_get_double(%struct._GValue* %18)
  %19 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %xspacing = getelementptr inbounds %struct._GimpGrid, %struct._GimpGrid* %19, i32 0, i32 4
  store double %call8, double* %xspacing, align 8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %20 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call double @g_value_get_double(%struct._GValue* %20)
  %21 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %yspacing = getelementptr inbounds %struct._GimpGrid, %struct._GimpGrid* %21, i32 0, i32 5
  store double %call10, double* %yspacing, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call12 = call i32 @g_value_get_int(%struct._GValue* %22)
  %23 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %spacing_unit = getelementptr inbounds %struct._GimpGrid, %struct._GimpGrid* %23, i32 0, i32 6
  store i32 %call12, i32* %spacing_unit, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %24 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call14 = call double @g_value_get_double(%struct._GValue* %24)
  %25 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %xoffset = getelementptr inbounds %struct._GimpGrid, %struct._GimpGrid* %25, i32 0, i32 7
  store double %call14, double* %xoffset, align 8
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %26 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call16 = call double @g_value_get_double(%struct._GValue* %26)
  %27 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %yoffset = getelementptr inbounds %struct._GimpGrid, %struct._GimpGrid* %27, i32 0, i32 8
  store double %call16, double* %yoffset, align 8
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry
  %28 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call18 = call i32 @g_value_get_int(%struct._GValue* %28)
  %29 = load %struct._GimpGrid*, %struct._GimpGrid** %grid, align 8
  %offset_unit = getelementptr inbounds %struct._GimpGrid, %struct._GimpGrid* %29, i32 0, i32 9
  store i32 %call18, i32* %offset_unit, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %30 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %30, %struct._GObject** %_glib__object, align 8
  %31 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %31, %struct._GParamSpec** %_glib__pspec, align 8
  %32 = load i32, i32* %property_id.addr, align 4
  store i32 %32, i32* %_glib__property_id, align 4
  %33 = load i32, i32* %_glib__property_id, align 4
  %34 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %34, i32 0, i32 1
  %35 = load i8*, i8** %name, align 8
  %36 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %37 = bitcast %struct._GParamSpec* %36 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %37, i32 0, i32 0
  %38 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %38, i32 0, i32 0
  %39 = load i64, i64* %g_type, align 8
  %call19 = call i8* @g_type_name(i64 %39)
  %40 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %41 = bitcast %struct._GObject* %40 to %struct._GTypeInstance*
  %g_class20 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %41, i32 0, i32 0
  %42 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class20, align 8
  %g_type21 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %42, i32 0, i32 0
  %43 = load i64, i64* %g_type21, align 8
  %call22 = call i8* @g_type_name(i64 %43)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i32 223, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 %33, i8* %35, i8* %call19, i8* %call22)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.17, %sw.bb.15, %sw.bb.13, %sw.bb.11, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

declare void @gimp_rgba_set(%struct._GimpRGB*, double, double, double, double) #1

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_grid_style_get_type() #2

declare %struct._GParamSpec* @gimp_param_spec_rgb(i8*, i8*, i8*, i32, %struct._GimpRGB*, i32) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_unit(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @g_value_set_boxed(%struct._GValue*, i8*) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare i8* @g_type_name(i64) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare i8* @g_value_get_boxed(%struct._GValue*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare double @g_value_get_double(%struct._GValue*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

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
