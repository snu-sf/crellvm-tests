; ModuleID = './app/display/gimpdisplayshell-icon.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpDisplayShell = type { %struct._GtkBox, %struct._GimpDisplay*, %struct._GimpUIManager*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct._GimpZoomModel*, double, i32, i32, i32, double, i32, i32, i32, %struct._Selection*, %struct._GList*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._cairo_surface*, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, i32, i8*, i8*, i32, i32, %struct._GdkPixbuf*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpColorDisplayStack*, i32, %struct._GtkWidget*, i32, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, %struct._GimpDrawable*, %struct._GimpRGB, %struct._GimpMotionBuffer*, %struct._GQueue* }
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
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpContext = type opaque
%struct._GimpDisplayConfig = type opaque
%struct._GimpUIManager = type opaque
%struct._GimpDisplayOptions = type opaque
%struct._GimpZoomModel = type opaque
%struct._Selection = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GimpCanvasItem = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpColorDisplayStack = type opaque
%struct._GimpTreeHandler = type opaque
%struct._GimpDrawable = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_display_shell_icon_update = private unnamed_addr constant [31 x i8] c"gimp_display_shell_icon_update\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"GIMP_IS_DISPLAY_SHELL (shell)\00", align 1
@__func__.gimp_display_shell_icon_update_stop = private unnamed_addr constant [36 x i8] c"gimp_display_shell_icon_update_stop\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"icon\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_icon_update(%struct._GimpDisplayShell* %shell) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_display_shell_icon_update, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.17

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_icon_update_stop(%struct._GimpDisplayShell* %13)
  %14 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %14, i32 0, i32 1
  %15 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call11 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %15)
  %tobool12 = icmp ne %struct._GimpImage* %call11, null
  br i1 %tobool12, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %do.end
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %17 = bitcast %struct._GimpDisplayShell* %16 to i8*
  %call14 = call i32 @g_timeout_add_full(i32 300, i32 1000, i32 (i8*)* @gimp_display_shell_icon_update_idle, i8* %17, void (i8*)* null)
  %18 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %icon_idle_id = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %18, i32 0, i32 62
  store i32 %call14, i32* %icon_idle_id, align 4
  br label %if.end.17

if.else.15:                                       ; preds = %do.end
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %20 = bitcast %struct._GimpDisplayShell* %19 to i8*
  %call16 = call i32 @gimp_display_shell_icon_update_idle(i8* %20)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.9, %if.else.15, %if.then.13
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_display_shell_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_icon_update_stop(%struct._GimpDisplayShell* %shell) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_display_shell_icon_update_stop, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.16

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %icon_idle_id = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 62
  %14 = load i32, i32* %icon_idle_id, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %icon_idle_id13 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %15, i32 0, i32 62
  %16 = load i32, i32* %icon_idle_id13, align 4
  %call14 = call i32 @g_source_remove(i32 %16)
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %icon_idle_id15 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %17, i32 0, i32 62
  store i32 0, i32* %icon_idle_id15, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.9, %if.then.12, %do.end
  ret void
}

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #3

declare i32 @g_timeout_add_full(i32, i32, i32 (i8*)*, i8*, void (i8*)*) #3

; Function Attrs: nounwind uwtable
define internal i32 @gimp_display_shell_icon_update_idle(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %factor = alloca double, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_shell_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplayShell*
  store %struct._GimpDisplayShell* %2, %struct._GimpDisplayShell** %shell, align 8
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %3, i32 0, i32 1
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call2 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %4)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %pixbuf, align 8
  %5 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %icon_idle_id = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %5, i32 0, i32 62
  store i32 0, i32* %icon_idle_id, align 4
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %6, null
  br i1 %tobool, label %if.then, label %if.end.50

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display3 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %7, i32 0, i32 1
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display3, align 8
  %call4 = call %struct._Gimp* @gimp_display_get_gimp(%struct._GimpDisplay* %8)
  store %struct._Gimp* %call4, %struct._Gimp** %gimp, align 8
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call5 = call i32 @gimp_image_get_height(%struct._GimpImage* %9)
  %conv = sitofp i32 %call5 to double
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call6 = call i32 @gimp_image_get_width(%struct._GimpImage* %10)
  %conv7 = sitofp i32 %call6 to double
  %div = fdiv double %conv, %conv7
  store double %div, double* %factor, align 8
  %11 = load double, double* %factor, align 8
  %cmp = fcmp oge double %11, 1.000000e+00
  br i1 %cmp, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %12 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %icon_size = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %12, i32 0, i32 61
  %13 = load i32, i32* %icon_size, align 4
  %cmp10 = icmp sgt i32 %13, 1
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.9
  %14 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %icon_size12 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %14, i32 0, i32 61
  %15 = load i32, i32* %icon_size12, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %15, %cond.true ], [ 1, %cond.false ]
  store i32 %cond, i32* %height, align 4
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %icon_size13 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %16, i32 0, i32 61
  %17 = load i32, i32* %icon_size13, align 4
  %conv14 = sitofp i32 %17 to double
  %18 = load double, double* %factor, align 8
  %div15 = fdiv double %conv14, %18
  %cmp16 = fcmp ogt double %div15, 1.000000e+00
  br i1 %cmp16, label %cond.true.18, label %cond.false.22

cond.true.18:                                     ; preds = %cond.end
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %icon_size19 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %19, i32 0, i32 61
  %20 = load i32, i32* %icon_size19, align 4
  %conv20 = sitofp i32 %20 to double
  %21 = load double, double* %factor, align 8
  %div21 = fdiv double %conv20, %21
  br label %cond.end.23

cond.false.22:                                    ; preds = %cond.end
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.18
  %cond24 = phi double [ %div21, %cond.true.18 ], [ 1.000000e+00, %cond.false.22 ]
  %conv25 = fptosi double %cond24 to i32
  store i32 %conv25, i32* %width, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %22 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %icon_size26 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %22, i32 0, i32 61
  %23 = load i32, i32* %icon_size26, align 4
  %conv27 = sitofp i32 %23 to double
  %24 = load double, double* %factor, align 8
  %mul = fmul double %conv27, %24
  %cmp28 = fcmp ogt double %mul, 1.000000e+00
  br i1 %cmp28, label %cond.true.30, label %cond.false.34

cond.true.30:                                     ; preds = %if.else
  %25 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %icon_size31 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %25, i32 0, i32 61
  %26 = load i32, i32* %icon_size31, align 4
  %conv32 = sitofp i32 %26 to double
  %27 = load double, double* %factor, align 8
  %mul33 = fmul double %conv32, %27
  br label %cond.end.35

cond.false.34:                                    ; preds = %if.else
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.34, %cond.true.30
  %cond36 = phi double [ %mul33, %cond.true.30 ], [ 1.000000e+00, %cond.false.34 ]
  %conv37 = fptosi double %cond36 to i32
  store i32 %conv37, i32* %height, align 4
  %28 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %icon_size38 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %28, i32 0, i32 61
  %29 = load i32, i32* %icon_size38, align 4
  %cmp39 = icmp sgt i32 %29, 1
  br i1 %cmp39, label %cond.true.41, label %cond.false.43

cond.true.41:                                     ; preds = %cond.end.35
  %30 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %icon_size42 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %30, i32 0, i32 61
  %31 = load i32, i32* %icon_size42, align 4
  br label %cond.end.44

cond.false.43:                                    ; preds = %cond.end.35
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.43, %cond.true.41
  %cond45 = phi i32 [ %31, %cond.true.41 ], [ 1, %cond.false.43 ]
  store i32 %cond45, i32* %width, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.44, %cond.end.23
  %32 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %33 = bitcast %struct._GimpImage* %32 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_viewable_get_type() #4
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call46)
  %34 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpViewable*
  %35 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call48 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %35)
  %36 = load i32, i32* %width, align 4
  %37 = load i32, i32* %height, align 4
  %call49 = call %struct._GdkPixbuf* @gimp_viewable_get_pixbuf(%struct._GimpViewable* %34, %struct._GimpContext* %call48, i32 %36, i32 %37)
  store %struct._GdkPixbuf* %call49, %struct._GdkPixbuf** %pixbuf, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.end, %entry
  %38 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %39 = bitcast %struct._GimpDisplayShell* %38 to i8*
  %40 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), %struct._GdkPixbuf* %40, i8* null)
  ret i32 0
}

declare i32 @g_source_remove(i32) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare %struct._Gimp* @gimp_display_get_gimp(%struct._GimpDisplay*) #3

declare i32 @gimp_image_get_height(%struct._GimpImage*) #3

declare i32 @gimp_image_get_width(%struct._GimpImage*) #3

declare %struct._GdkPixbuf* @gimp_viewable_get_pixbuf(%struct._GimpViewable*, %struct._GimpContext*, i32, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #1

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #3

declare void @g_object_set(i8*, i8*, ...) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
