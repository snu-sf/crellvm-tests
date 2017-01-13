; ModuleID = './app/widgets/gimpcontainerview-utils.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpContainerView = type opaque
%struct._GimpDockable = type { %struct._GtkBin, %struct._GimpDockablePrivate* }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkStyle = type { %struct._GObject, [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], %struct._GdkColor, %struct._GdkColor, %struct._PangoFontDescription*, i32, i32, [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], %struct._GdkGC*, %struct._GdkGC*, [5 x %struct._GdkDrawable*], i32, i32, %struct._GdkColormap*, %struct._GdkFont*, %struct._PangoFontDescription*, %struct._GtkRcStyle*, %struct._GSList*, %struct._GArray*, %struct._GSList* }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkGC = type { %struct._GObject, i32, i32, i32, i32, %struct._GdkColormap* }
%struct._GdkColormap = type { %struct._GObject, i32, %struct._GdkColor*, %struct._GdkVisual*, i8* }
%struct._GdkVisual = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkFont = type opaque
%struct._PangoFontDescription = type opaque
%struct._GtkRcStyle = type { %struct._GObject, i8*, [5 x i8*], %struct._PangoFontDescription*, [5 x i32], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], i32, i32, %struct._GArray*, %struct._GSList*, %struct._GSList*, i8 }
%struct._GArray = type { i8*, i32 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpDockablePrivate = type opaque
%struct._GimpContainerEditor = type { %struct._GtkBox, %struct._GimpContainerView*, %struct._GimpContainerEditorPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContainerEditorPrivate = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type opaque
%struct._GimpImage = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_container_view_get_by_dockable = private unnamed_addr constant [36 x i8] c"gimp_container_view_get_by_dockable\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"GIMP_IS_DOCKABLE (dockable)\00", align 1
@__func__.gimp_container_view_remove_active = private unnamed_addr constant [34 x i8] c"gimp_container_view_remove_active\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"GIMP_IS_CONTAINER_VIEW (view)\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GimpContainerView* @gimp_container_view_get_by_dockable(%struct._GimpDockable* %dockable) #0 {
entry:
  %retval = alloca %struct._GimpContainerView*, align 8
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %child = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst17 = alloca %struct._GTypeInstance*, align 8
  %__t19 = alloca i64, align 8
  %__r22 = alloca i32, align 4
  %tmp37 = alloca i32, align 4
  %__inst44 = alloca %struct._GTypeInstance*, align 8
  %__t46 = alloca i64, align 8
  %__r49 = alloca i32, align 4
  %tmp64 = alloca i32, align 4
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %1 = bitcast %struct._GimpDockable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dockable_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_container_view_get_by_dockable, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpContainerView* null, %struct._GimpContainerView** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %14 = bitcast %struct._GimpDockable* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_bin_get_type() #4
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkBin*
  %call13 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %15)
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %child, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %tobool14 = icmp ne %struct._GtkWidget* %16, null
  br i1 %tobool14, label %if.then.15, label %if.end.71

if.then.15:                                       ; preds = %do.end
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %18, %struct._GTypeInstance** %__inst17, align 8
  %call20 = call i64 @gimp_container_editor_get_type() #4
  store i64 %call20, i64* %__t19, align 8
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst17, align 8
  %tobool23 = icmp ne %struct._GTypeInstance* %19, null
  br i1 %tobool23, label %if.else.25, label %if.then.24

if.then.24:                                       ; preds = %if.then.15
  store i32 0, i32* %__r22, align 4
  br label %if.end.36

if.else.25:                                       ; preds = %if.then.15
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst17, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %tobool27 = icmp ne %struct._GTypeClass* %21, null
  br i1 %tobool27, label %land.lhs.true.28, label %if.else.33

land.lhs.true.28:                                 ; preds = %if.else.25
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst17, align 8
  %g_class29 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class29, align 8
  %g_type30 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type30, align 8
  %25 = load i64, i64* %__t19, align 8
  %cmp31 = icmp eq i64 %24, %25
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %land.lhs.true.28
  store i32 1, i32* %__r22, align 4
  br label %if.end.35

if.else.33:                                       ; preds = %land.lhs.true.28, %if.else.25
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst17, align 8
  %27 = load i64, i64* %__t19, align 8
  %call34 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %26, i64 %27) #5
  store i32 %call34, i32* %__r22, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.33, %if.then.32
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.24
  %28 = load i32, i32* %__r22, align 4
  store i32 %28, i32* %tmp37
  %29 = load i32, i32* %tmp37
  %tobool38 = icmp ne i32 %29, 0
  br i1 %tobool38, label %if.then.39, label %if.else.42

if.then.39:                                       ; preds = %if.end.36
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_container_editor_get_type() #4
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call40)
  %32 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpContainerEditor*
  %view = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %32, i32 0, i32 1
  %33 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  store %struct._GimpContainerView* %33, %struct._GimpContainerView** %retval
  br label %return

if.else.42:                                       ; preds = %if.end.36
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %35, %struct._GTypeInstance** %__inst44, align 8
  %call47 = call i64 @gimp_container_view_interface_get_type() #4
  store i64 %call47, i64* %__t46, align 8
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %tobool50 = icmp ne %struct._GTypeInstance* %36, null
  br i1 %tobool50, label %if.else.52, label %if.then.51

if.then.51:                                       ; preds = %if.else.42
  store i32 0, i32* %__r49, align 4
  br label %if.end.63

if.else.52:                                       ; preds = %if.else.42
  %37 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %g_class53 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %37, i32 0, i32 0
  %38 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class53, align 8
  %tobool54 = icmp ne %struct._GTypeClass* %38, null
  br i1 %tobool54, label %land.lhs.true.55, label %if.else.60

land.lhs.true.55:                                 ; preds = %if.else.52
  %39 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %g_class56 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %39, i32 0, i32 0
  %40 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class56, align 8
  %g_type57 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %40, i32 0, i32 0
  %41 = load i64, i64* %g_type57, align 8
  %42 = load i64, i64* %__t46, align 8
  %cmp58 = icmp eq i64 %41, %42
  br i1 %cmp58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %land.lhs.true.55
  store i32 1, i32* %__r49, align 4
  br label %if.end.62

if.else.60:                                       ; preds = %land.lhs.true.55, %if.else.52
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %44 = load i64, i64* %__t46, align 8
  %call61 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %43, i64 %44) #5
  store i32 %call61, i32* %__r49, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.60, %if.then.59
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.51
  %45 = load i32, i32* %__r49, align 4
  store i32 %45, i32* %tmp64
  %46 = load i32, i32* %tmp64
  %tobool65 = icmp ne i32 %46, 0
  br i1 %tobool65, label %if.then.66, label %if.end.69

if.then.66:                                       ; preds = %if.end.63
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call67 = call i64 @gimp_container_view_interface_get_type() #4
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call67)
  %49 = bitcast %struct._GTypeInstance* %call68 to %struct._GimpContainerView*
  store %struct._GimpContainerView* %49, %struct._GimpContainerView** %retval
  br label %return

if.end.69:                                        ; preds = %if.end.63
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %do.end
  store %struct._GimpContainerView* null, %struct._GimpContainerView** %retval
  br label %return

return:                                           ; preds = %if.end.71, %if.then.66, %if.then.39, %if.else.9
  %50 = load %struct._GimpContainerView*, %struct._GimpContainerView** %retval
  ret %struct._GimpContainerView* %50
}

; Function Attrs: nounwind readnone
declare i64 @gimp_dockable_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_editor_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_view_interface_get_type() #1

; Function Attrs: nounwind uwtable
define void @gimp_container_view_remove_active(%struct._GimpContainerView* %view) #0 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %children_type = alloca i64, align 8
  %active = alloca %struct._GimpObject*, align 8
  %new = alloca %struct._GimpObject*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_view_interface_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_container_view_remove_active, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.30

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call11 = call %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView* %13)
  store %struct._GimpContext* %call11, %struct._GimpContext** %context, align 8
  %14 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call12 = call %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView* %14)
  store %struct._GimpContainer* %call12, %struct._GimpContainer** %container, align 8
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool13 = icmp ne %struct._GimpContext* %15, null
  br i1 %tobool13, label %land.lhs.true.14, label %if.end.30

land.lhs.true.14:                                 ; preds = %do.end
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %tobool15 = icmp ne %struct._GimpContainer* %16, null
  br i1 %tobool15, label %if.then.16, label %if.end.30

if.then.16:                                       ; preds = %land.lhs.true.14
  %17 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %call19 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %17)
  store i64 %call19, i64* %children_type, align 8
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %19 = load i64, i64* %children_type, align 8
  %call20 = call %struct._GimpObject* @gimp_context_get_by_type(%struct._GimpContext* %18, i64 %19)
  store %struct._GimpObject* %call20, %struct._GimpObject** %active, align 8
  %20 = load %struct._GimpObject*, %struct._GimpObject** %active, align 8
  %tobool21 = icmp ne %struct._GimpObject* %20, null
  br i1 %tobool21, label %if.then.22, label %if.end.29

if.then.22:                                       ; preds = %if.then.16
  %21 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %22 = load %struct._GimpObject*, %struct._GimpObject** %active, align 8
  %call24 = call %struct._GimpObject* @gimp_container_get_neighbor_of(%struct._GimpContainer* %21, %struct._GimpObject* %22)
  store %struct._GimpObject* %call24, %struct._GimpObject** %new, align 8
  %23 = load %struct._GimpObject*, %struct._GimpObject** %new, align 8
  %tobool25 = icmp ne %struct._GimpObject* %23, null
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.22
  %24 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %25 = load i64, i64* %children_type, align 8
  %26 = load %struct._GimpObject*, %struct._GimpObject** %new, align 8
  call void @gimp_context_set_by_type(%struct._GimpContext* %24, i64 %25, %struct._GimpObject* %26)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.then.22
  %27 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %28 = load %struct._GimpObject*, %struct._GimpObject** %active, align 8
  %call28 = call i32 @gimp_container_remove(%struct._GimpContainer* %27, %struct._GimpObject* %28)
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.27, %if.then.16
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.9, %if.end.29, %land.lhs.true.14, %do.end
  ret void
}

declare %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView*) #3

declare %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView*) #3

declare i64 @gimp_container_get_children_type(%struct._GimpContainer*) #3

declare %struct._GimpObject* @gimp_context_get_by_type(%struct._GimpContext*, i64) #3

declare %struct._GimpObject* @gimp_container_get_neighbor_of(%struct._GimpContainer*, %struct._GimpObject*) #3

declare void @gimp_context_set_by_type(%struct._GimpContext*, i64, %struct._GimpObject*) #3

declare i32 @gimp_container_remove(%struct._GimpContainer*, %struct._GimpObject*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
