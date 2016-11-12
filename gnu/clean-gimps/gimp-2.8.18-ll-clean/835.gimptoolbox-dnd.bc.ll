; ModuleID = './app/widgets/gimptoolbox-dnd.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpToolbox = type { %struct._GimpDock, %struct._GimpToolboxPrivate* }
%struct._GimpDock = type { %struct._GtkBox, %struct._GimpDockPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
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
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpDockPrivate = type opaque
%struct._GimpToolboxPrivate = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpContainer = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpToolInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GimpToolOptions*, %struct._GimpPaintInfo*, %struct._GimpContainer* }
%struct._GimpToolOptions = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type { %struct._GimpViewable, %struct._TileManager*, i32, i32 }
%struct._TileManager = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
%struct._GtkTargetEntry = type { i8*, i32, i32 }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GdkPixbuf = type opaque

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_toolbox_dnd_init = private unnamed_addr constant [22 x i8] c"gimp_toolbox_dnd_init\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"GIMP_IS_TOOLBOX (toolbox)\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"GTK_IS_BOX (vbox)\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Opening '%s' failed:\0A\0A%s\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Dropped Buffer\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_toolbox_dnd_init(%struct._GimpToolbox* %toolbox, %struct._GtkWidget* %vbox) #0 {
entry:
  %toolbox.addr = alloca %struct._GimpToolbox*, align 8
  %vbox.addr = alloca %struct._GtkWidget*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpToolbox* %toolbox, %struct._GimpToolbox** %toolbox.addr, align 8
  store %struct._GtkWidget* %vbox, %struct._GtkWidget** %vbox.addr, align 8
  store %struct._GimpContext* null, %struct._GimpContext** %context, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox.addr, align 8
  %1 = bitcast %struct._GimpToolbox* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_toolbox_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_toolbox_dnd_init, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gtk_box_get_type() #5
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_toolbox_dnd_init, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpToolbox*, %struct._GimpToolbox** %toolbox.addr, align 8
  %call39 = call %struct._GimpContext* @gimp_toolbox_get_context(%struct._GimpToolbox* %26)
  store %struct._GimpContext* %call39, %struct._GimpContext** %context, align 8
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox.addr, align 8
  call void @gtk_drag_dest_set(%struct._GtkWidget* %27, i32 0, %struct._GtkTargetEntry* null, i32 0, i32 6)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox.addr, align 8
  %call40 = call i64 @gimp_layer_get_type() #5
  %29 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %30 = bitcast %struct._GimpContext* %29 to i8*
  %call41 = call i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget* %28, i64 %call40, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)* @gimp_toolbox_drop_drawable, i8* %30)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox.addr, align 8
  %call42 = call i64 @gimp_layer_mask_get_type() #5
  %32 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %33 = bitcast %struct._GimpContext* %32 to i8*
  %call43 = call i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget* %31, i64 %call42, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)* @gimp_toolbox_drop_drawable, i8* %33)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox.addr, align 8
  %call44 = call i64 @gimp_channel_get_type() #5
  %35 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %36 = bitcast %struct._GimpContext* %35 to i8*
  %call45 = call i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget* %34, i64 %call44, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)* @gimp_toolbox_drop_drawable, i8* %36)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox.addr, align 8
  %call46 = call i64 @gimp_tool_info_get_type() #5
  %38 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %39 = bitcast %struct._GimpContext* %38 to i8*
  %call47 = call i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget* %37, i64 %call46, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)* @gimp_toolbox_drop_tool, i8* %39)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox.addr, align 8
  %call48 = call i64 @gimp_buffer_get_type() #5
  %41 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %42 = bitcast %struct._GimpContext* %41 to i8*
  %call49 = call i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget* %40, i64 %call48, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)* @gimp_toolbox_drop_buffer, i8* %42)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox.addr, align 8
  %44 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %45 = bitcast %struct._GimpContext* %44 to i8*
  call void @gimp_dnd_component_dest_add(%struct._GtkWidget* %43, void (%struct._GtkWidget*, i32, i32, %struct._GimpImage*, i32, i8*)* @gimp_toolbox_drop_component, i8* %45)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox.addr, align 8
  %47 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %48 = bitcast %struct._GimpContext* %47 to i8*
  call void @gimp_dnd_uri_list_dest_add(%struct._GtkWidget* %46, void (%struct._GtkWidget*, i32, i32, %struct._GList*, i8*)* @gimp_toolbox_drop_uri_list, i8* %48)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox.addr, align 8
  %50 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %51 = bitcast %struct._GimpContext* %50 to i8*
  call void @gimp_dnd_pixbuf_dest_add(%struct._GtkWidget* %49, void (%struct._GtkWidget*, i32, i32, %struct._GdkPixbuf*, i8*)* @gimp_toolbox_drop_pixbuf, i8* %51)
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_toolbox_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #1

declare %struct._GimpContext* @gimp_toolbox_get_context(%struct._GimpToolbox*) #3

declare void @gtk_drag_dest_set(%struct._GtkWidget*, i32, %struct._GtkTargetEntry*, i32, i32) #3

declare i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget*, i64, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_get_type() #1

; Function Attrs: nounwind uwtable
define internal void @gimp_toolbox_drop_drawable(%struct._GtkWidget* %widget, i32 %x, i32 %y, %struct._GimpViewable* %viewable, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %new_image = alloca %struct._GimpImage*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_context_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContext*
  store %struct._GimpContext* %2, %struct._GimpContext** %context, align 8
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %3, i32 0, i32 1
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %busy = getelementptr inbounds %struct._Gimp, %struct._Gimp* %4, i32 0, i32 16
  %5 = load i32, i32* %busy, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %6, i32 0, i32 1
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp2, align 8
  %8 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %9 = bitcast %struct._GimpViewable* %8 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_drawable_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call3)
  %10 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpDrawable*
  %call5 = call %struct._GimpImage* @gimp_image_new_from_drawable(%struct._Gimp* %7, %struct._GimpDrawable* %10)
  store %struct._GimpImage* %call5, %struct._GimpImage** %new_image, align 8
  %11 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp6 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %11, i32 0, i32 1
  %12 = load %struct._Gimp*, %struct._Gimp** %gimp6, align 8
  %13 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %call7 = call %struct._GimpObject* @gimp_create_display(%struct._Gimp* %12, %struct._GimpImage* %13, i32 0, double 1.000000e+00)
  %14 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %15 = bitcast %struct._GimpImage* %14 to i8*
  call void @g_object_unref(i8* %15)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_mask_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_info_get_type() #1

; Function Attrs: nounwind uwtable
define internal void @gimp_toolbox_drop_tool(%struct._GtkWidget* %widget, i32 %x, i32 %y, %struct._GimpViewable* %viewable, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_context_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContext*
  store %struct._GimpContext* %2, %struct._GimpContext** %context, align 8
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %3, i32 0, i32 1
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %busy = getelementptr inbounds %struct._Gimp, %struct._Gimp* %4, i32 0, i32 16
  %5 = load i32, i32* %busy, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %7 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %8 = bitcast %struct._GimpViewable* %7 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_info_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call2)
  %9 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpToolInfo*
  call void @gimp_context_set_tool(%struct._GimpContext* %6, %struct._GimpToolInfo* %9)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_buffer_get_type() #1

; Function Attrs: nounwind uwtable
define internal void @gimp_toolbox_drop_buffer(%struct._GtkWidget* %widget, i32 %x, i32 %y, %struct._GimpViewable* %viewable, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_context_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContext*
  store %struct._GimpContext* %2, %struct._GimpContext** %context, align 8
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %3, i32 0, i32 1
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %busy = getelementptr inbounds %struct._Gimp, %struct._Gimp* %4, i32 0, i32 16
  %5 = load i32, i32* %busy, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %6, i32 0, i32 1
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp2, align 8
  %8 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %9 = bitcast %struct._GimpViewable* %8 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_buffer_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call3)
  %10 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpBuffer*
  %call5 = call %struct._GimpImage* @gimp_image_new_from_buffer(%struct._Gimp* %7, %struct._GimpImage* null, %struct._GimpBuffer* %10)
  store %struct._GimpImage* %call5, %struct._GimpImage** %image, align 8
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp6 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %11, i32 0, i32 1
  %12 = load %struct._Gimp*, %struct._Gimp** %gimp6, align 8
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call7 = call %struct._GimpObject* @gimp_create_display(%struct._Gimp* %12, %struct._GimpImage* %13, i32 0, double 1.000000e+00)
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %15 = bitcast %struct._GimpImage* %14 to i8*
  call void @g_object_unref(i8* %15)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @gimp_dnd_component_dest_add(%struct._GtkWidget*, void (%struct._GtkWidget*, i32, i32, %struct._GimpImage*, i32, i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_toolbox_drop_component(%struct._GtkWidget* %widget, i32 %x, i32 %y, %struct._GimpImage* %image, i32 %component, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %image.addr = alloca %struct._GimpImage*, align 8
  %component.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %new_image = alloca %struct._GimpImage*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %component, i32* %component.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_context_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContext*
  store %struct._GimpContext* %2, %struct._GimpContext** %context, align 8
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %3, i32 0, i32 1
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %busy = getelementptr inbounds %struct._Gimp, %struct._Gimp* %4, i32 0, i32 16
  %5 = load i32, i32* %busy, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %6, i32 0, i32 1
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp2, align 8
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %9 = load i32, i32* %component.addr, align 4
  %call3 = call %struct._GimpImage* @gimp_image_new_from_component(%struct._Gimp* %7, %struct._GimpImage* %8, i32 %9)
  store %struct._GimpImage* %call3, %struct._GimpImage** %new_image, align 8
  %10 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %gimp4 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %10, i32 0, i32 1
  %11 = load %struct._Gimp*, %struct._Gimp** %gimp4, align 8
  %12 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %call5 = call %struct._GimpObject* @gimp_create_display(%struct._Gimp* %11, %struct._GimpImage* %12, i32 0, double 1.000000e+00)
  %13 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %14 = bitcast %struct._GimpImage* %13 to i8*
  call void @g_object_unref(i8* %14)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @gimp_dnd_uri_list_dest_add(%struct._GtkWidget*, void (%struct._GtkWidget*, i32, i32, %struct._GList*, i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_toolbox_drop_uri_list(%struct._GtkWidget* %widget, i32 %x, i32 %y, %struct._GList* %uri_list, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %uri_list.addr = alloca %struct._GList*, align 8
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %list = alloca %struct._GList*, align 8
  %uri = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %status = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  %filename = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GList* %uri_list, %struct._GList** %uri_list.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_context_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContext*
  store %struct._GimpContext* %2, %struct._GimpContext** %context, align 8
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %3, i32 0, i32 1
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %busy = getelementptr inbounds %struct._Gimp, %struct._Gimp* %4, i32 0, i32 16
  %5 = load i32, i32* %busy, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  %6 = load %struct._GList*, %struct._GList** %uri_list.addr, align 8
  store %struct._GList* %6, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end
  %7 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool2 = icmp ne %struct._GList* %7, null
  br i1 %tobool2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._GList*, %struct._GList** %list, align 8
  %data3 = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 0
  %9 = load i8*, i8** %data3, align 8
  store i8* %9, i8** %uri, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %10 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp4 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %10, i32 0, i32 1
  %11 = load %struct._Gimp*, %struct._Gimp** %gimp4, align 8
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %13 = load i8*, i8** %uri, align 8
  %call5 = call %struct._GimpImage* @file_open_with_display(%struct._Gimp* %11, %struct._GimpContext* %12, %struct._GimpProgress* null, i8* %13, i32 0, i32* %status, %struct._GError** %error)
  store %struct._GimpImage* %call5, %struct._GimpImage** %image, align 8
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool6 = icmp ne %struct._GimpImage* %14, null
  br i1 %tobool6, label %if.end.12, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %15 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %15, 4
  br i1 %cmp, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %land.lhs.true
  %16 = load i8*, i8** %uri, align 8
  %call8 = call i8* @file_utils_uri_display_name(i8* %16)
  store i8* %call8, i8** %filename, align 8
  %17 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp9 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %17, i32 0, i32 1
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp9, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 80)
  %21 = bitcast %struct._GTypeInstance* %call10 to %struct._GObject*
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0)) #7
  %22 = load i8*, i8** %filename, align 8
  %23 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %23, i32 0, i32 2
  %24 = load i8*, i8** %message, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %18, %struct._GObject* %21, i32 2, i8* %call11, i8* %22, i8* %24)
  call void @g_clear_error(%struct._GError** %error)
  %25 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %25)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.7, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %26 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool13 = icmp ne %struct._GList* %26, null
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %27 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %27, i32 0, i32 1
  %28 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %28, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

declare void @gimp_dnd_pixbuf_dest_add(%struct._GtkWidget*, void (%struct._GtkWidget*, i32, i32, %struct._GdkPixbuf*, i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_toolbox_drop_pixbuf(%struct._GtkWidget* %widget, i32 %x, i32 %y, %struct._GdkPixbuf* %pixbuf, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %pixbuf.addr = alloca %struct._GdkPixbuf*, align 8
  %data.addr = alloca i8*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %new_image = alloca %struct._GimpImage*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GdkPixbuf* %pixbuf, %struct._GdkPixbuf** %pixbuf.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_context_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContext*
  store %struct._GimpContext* %2, %struct._GimpContext** %context, align 8
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %3, i32 0, i32 1
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %busy = getelementptr inbounds %struct._Gimp, %struct._Gimp* %4, i32 0, i32 16
  %5 = load i32, i32* %busy, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %6, i32 0, i32 1
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp2, align 8
  %8 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0)) #7
  %call4 = call %struct._GimpImage* @gimp_image_new_from_pixbuf(%struct._Gimp* %7, %struct._GdkPixbuf* %8, i8* %call3)
  store %struct._GimpImage* %call4, %struct._GimpImage** %new_image, align 8
  %9 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %gimp5 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %9, i32 0, i32 1
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp5, align 8
  %11 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %call6 = call %struct._GimpObject* @gimp_create_display(%struct._Gimp* %10, %struct._GimpImage* %11, i32 0, double 1.000000e+00)
  %12 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %13 = bitcast %struct._GimpImage* %12 to i8*
  call void @g_object_unref(i8* %13)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #1

declare %struct._GimpImage* @file_open_with_display(%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, i8*, i32, i32*, %struct._GError**) #3

declare i8* @file_utils_uri_display_name(i8*) #3

declare void @gimp_message(%struct._Gimp*, %struct._GObject*, i32, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @g_clear_error(%struct._GError**) #3

declare void @g_free(i8*) #3

declare %struct._GimpImage* @gimp_image_new_from_drawable(%struct._Gimp*, %struct._GimpDrawable*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #1

declare %struct._GimpObject* @gimp_create_display(%struct._Gimp*, %struct._GimpImage*, i32, double) #3

declare void @g_object_unref(i8*) #3

declare void @gimp_context_set_tool(%struct._GimpContext*, %struct._GimpToolInfo*) #3

declare %struct._GimpImage* @gimp_image_new_from_buffer(%struct._Gimp*, %struct._GimpImage*, %struct._GimpBuffer*) #3

declare %struct._GimpImage* @gimp_image_new_from_component(%struct._Gimp*, %struct._GimpImage*, i32) #3

declare %struct._GimpImage* @gimp_image_new_from_pixbuf(%struct._Gimp*, %struct._GdkPixbuf*, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
