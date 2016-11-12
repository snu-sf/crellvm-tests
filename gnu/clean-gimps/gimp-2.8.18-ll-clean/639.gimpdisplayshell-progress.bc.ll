; ModuleID = './app/display/gimpdisplayshell-progress.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpProgressInterface = type { %struct._GTypeInterface, %struct._GimpProgress* (%struct._GimpProgress*, i8*, i32)*, void (%struct._GimpProgress*)*, i32 (%struct._GimpProgress*)*, void (%struct._GimpProgress*, i8*)*, void (%struct._GimpProgress*, double)*, double (%struct._GimpProgress*)*, void (%struct._GimpProgress*)*, i32 (%struct._GimpProgress*)*, i32 (%struct._GimpProgress*, %struct._Gimp*, i32, i8*, i8*)*, void (%struct._GimpProgress*)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpProgress = type opaque
%struct._Gimp = type opaque
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
%struct._GimpDisplay = type opaque
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
%struct._GimpStatusbar = type { %struct._GtkStatusbar, %struct._GimpDisplayShell*, %struct._GSList*, %struct._GHashTable*, i32, %struct._GdkPixbuf*, i32, i32, i32, [32 x i8], [32 x i8], [32 x i8], %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, double }
%struct._GtkStatusbar = type { %struct._GtkHBox, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GSList*, %struct._GSList*, i32, i32, %struct._GdkDrawable*, i8 }
%struct._GtkHBox = type { %struct._GtkBox }
%struct._GHashTable = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_progress_iface_init(%struct._GimpProgressInterface* %iface) #0 {
entry:
  %iface.addr = alloca %struct._GimpProgressInterface*, align 8
  store %struct._GimpProgressInterface* %iface, %struct._GimpProgressInterface** %iface.addr, align 8
  %0 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %start = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %0, i32 0, i32 1
  store %struct._GimpProgress* (%struct._GimpProgress*, i8*, i32)* @gimp_display_shell_progress_start, %struct._GimpProgress* (%struct._GimpProgress*, i8*, i32)** %start, align 8
  %1 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %end = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %1, i32 0, i32 2
  store void (%struct._GimpProgress*)* @gimp_display_shell_progress_end, void (%struct._GimpProgress*)** %end, align 8
  %2 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %is_active = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %2, i32 0, i32 3
  store i32 (%struct._GimpProgress*)* @gimp_display_shell_progress_is_active, i32 (%struct._GimpProgress*)** %is_active, align 8
  %3 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %set_text = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %3, i32 0, i32 4
  store void (%struct._GimpProgress*, i8*)* @gimp_display_shell_progress_set_text, void (%struct._GimpProgress*, i8*)** %set_text, align 8
  %4 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %set_value = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %4, i32 0, i32 5
  store void (%struct._GimpProgress*, double)* @gimp_display_shell_progress_set_value, void (%struct._GimpProgress*, double)** %set_value, align 8
  %5 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %get_value = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %5, i32 0, i32 6
  store double (%struct._GimpProgress*)* @gimp_display_shell_progress_get_value, double (%struct._GimpProgress*)** %get_value, align 8
  %6 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %pulse = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %6, i32 0, i32 7
  store void (%struct._GimpProgress*)* @gimp_display_shell_progress_pulse, void (%struct._GimpProgress*)** %pulse, align 8
  %7 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %get_window_id = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %7, i32 0, i32 8
  store i32 (%struct._GimpProgress*)* @gimp_display_shell_progress_get_window_id, i32 (%struct._GimpProgress*)** %get_window_id, align 8
  %8 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %message = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %8, i32 0, i32 9
  store i32 (%struct._GimpProgress*, %struct._Gimp*, i32, i8*, i8*)* @gimp_display_shell_progress_message, i32 (%struct._GimpProgress*, %struct._Gimp*, i32, i8*, i8*)** %message, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpProgress* @gimp_display_shell_progress_start(%struct._GimpProgress* %progress, i8* %message, i32 %cancelable) #0 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %message.addr = alloca i8*, align 8
  %cancelable.addr = alloca i32, align 4
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %statusbar = alloca %struct._GimpStatusbar*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  store i32 %cancelable, i32* %cancelable.addr, align 4
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_shell_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplayShell*
  store %struct._GimpDisplayShell* %2, %struct._GimpDisplayShell** %shell, align 8
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call2 = call %struct._GimpStatusbar* @gimp_display_shell_get_statusbar(%struct._GimpDisplayShell* %3)
  store %struct._GimpStatusbar* %call2, %struct._GimpStatusbar** %statusbar, align 8
  %4 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %5 = bitcast %struct._GimpStatusbar* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_progress_interface_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpProgress*
  %7 = load i8*, i8** %message.addr, align 8
  %8 = load i32, i32* %cancelable.addr, align 4
  %call5 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %6, i8* %7, i32 %8)
  ret %struct._GimpProgress* %call5
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_progress_end(%struct._GimpProgress* %progress) #0 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %statusbar = alloca %struct._GimpStatusbar*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_shell_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplayShell*
  store %struct._GimpDisplayShell* %2, %struct._GimpDisplayShell** %shell, align 8
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call2 = call %struct._GimpStatusbar* @gimp_display_shell_get_statusbar(%struct._GimpDisplayShell* %3)
  store %struct._GimpStatusbar* %call2, %struct._GimpStatusbar** %statusbar, align 8
  %4 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %5 = bitcast %struct._GimpStatusbar* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_progress_interface_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpProgress*
  call void @gimp_progress_end(%struct._GimpProgress* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_display_shell_progress_is_active(%struct._GimpProgress* %progress) #0 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %statusbar = alloca %struct._GimpStatusbar*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_shell_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplayShell*
  store %struct._GimpDisplayShell* %2, %struct._GimpDisplayShell** %shell, align 8
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call2 = call %struct._GimpStatusbar* @gimp_display_shell_get_statusbar(%struct._GimpDisplayShell* %3)
  store %struct._GimpStatusbar* %call2, %struct._GimpStatusbar** %statusbar, align 8
  %4 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %5 = bitcast %struct._GimpStatusbar* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_progress_interface_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpProgress*
  %call5 = call i32 @gimp_progress_is_active(%struct._GimpProgress* %6)
  ret i32 %call5
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_progress_set_text(%struct._GimpProgress* %progress, i8* %message) #0 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %message.addr = alloca i8*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %statusbar = alloca %struct._GimpStatusbar*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_shell_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplayShell*
  store %struct._GimpDisplayShell* %2, %struct._GimpDisplayShell** %shell, align 8
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call2 = call %struct._GimpStatusbar* @gimp_display_shell_get_statusbar(%struct._GimpDisplayShell* %3)
  store %struct._GimpStatusbar* %call2, %struct._GimpStatusbar** %statusbar, align 8
  %4 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %5 = bitcast %struct._GimpStatusbar* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_progress_interface_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpProgress*
  %7 = load i8*, i8** %message.addr, align 8
  call void @gimp_progress_set_text(%struct._GimpProgress* %6, i8* %7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_progress_set_value(%struct._GimpProgress* %progress, double %percentage) #0 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %percentage.addr = alloca double, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %statusbar = alloca %struct._GimpStatusbar*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store double %percentage, double* %percentage.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_shell_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplayShell*
  store %struct._GimpDisplayShell* %2, %struct._GimpDisplayShell** %shell, align 8
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call2 = call %struct._GimpStatusbar* @gimp_display_shell_get_statusbar(%struct._GimpDisplayShell* %3)
  store %struct._GimpStatusbar* %call2, %struct._GimpStatusbar** %statusbar, align 8
  %4 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %5 = bitcast %struct._GimpStatusbar* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_progress_interface_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpProgress*
  %7 = load double, double* %percentage.addr, align 8
  call void @gimp_progress_set_value(%struct._GimpProgress* %6, double %7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @gimp_display_shell_progress_get_value(%struct._GimpProgress* %progress) #0 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %statusbar = alloca %struct._GimpStatusbar*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_shell_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplayShell*
  store %struct._GimpDisplayShell* %2, %struct._GimpDisplayShell** %shell, align 8
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call2 = call %struct._GimpStatusbar* @gimp_display_shell_get_statusbar(%struct._GimpDisplayShell* %3)
  store %struct._GimpStatusbar* %call2, %struct._GimpStatusbar** %statusbar, align 8
  %4 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %5 = bitcast %struct._GimpStatusbar* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_progress_interface_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpProgress*
  %call5 = call double @gimp_progress_get_value(%struct._GimpProgress* %6)
  ret double %call5
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_progress_pulse(%struct._GimpProgress* %progress) #0 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %statusbar = alloca %struct._GimpStatusbar*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_shell_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplayShell*
  store %struct._GimpDisplayShell* %2, %struct._GimpDisplayShell** %shell, align 8
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call2 = call %struct._GimpStatusbar* @gimp_display_shell_get_statusbar(%struct._GimpDisplayShell* %3)
  store %struct._GimpStatusbar* %call2, %struct._GimpStatusbar** %statusbar, align 8
  %4 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %5 = bitcast %struct._GimpStatusbar* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_progress_interface_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpProgress*
  call void @gimp_progress_pulse(%struct._GimpProgress* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_display_shell_progress_get_window_id(%struct._GimpProgress* %progress) #0 {
entry:
  %retval = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %toplevel = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  %call2 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %2)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %toplevel, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %4, %struct._GTypeInstance** %__inst, align 8
  %call3 = call i64 @gtk_window_get_type() #4
  store i64 %call3, i64* %__t, align 8
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %5, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.9

if.else:                                          ; preds = %entry
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool4 = icmp ne %struct._GTypeClass* %7, null
  br i1 %tobool4, label %land.lhs.true, label %if.else.7

land.lhs.true:                                    ; preds = %if.else
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  %11 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %10, %11
  br i1 %cmp, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.7:                                        ; preds = %land.lhs.true, %if.else
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %13 = load i64, i64* %__t, align 8
  %call8 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %12, i64 %13) #5
  store i32 %call8, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.6
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %14 = load i32, i32* %__r, align 4
  store i32 %14, i32* %tmp
  %15 = load i32, i32* %tmp
  %tobool10 = icmp ne i32 %15, 0
  br i1 %tobool10, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %if.end.9
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_window_get_type() #4
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call12)
  %18 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkWindow*
  %call14 = call i32 @gimp_window_get_native_id(%struct._GtkWindow* %18)
  store i32 %call14, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.9
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.11
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_display_shell_progress_message(%struct._GimpProgress* %progress, %struct._Gimp* %gimp, i32 %severity, i8* %domain, i8* %message) #0 {
entry:
  %retval = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %severity.addr = alloca i32, align 4
  %domain.addr = alloca i8*, align 8
  %message.addr = alloca i8*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %statusbar = alloca %struct._GimpStatusbar*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %severity, i32* %severity.addr, align 4
  store i8* %domain, i8** %domain.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_shell_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplayShell*
  store %struct._GimpDisplayShell* %2, %struct._GimpDisplayShell** %shell, align 8
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call2 = call %struct._GimpStatusbar* @gimp_display_shell_get_statusbar(%struct._GimpDisplayShell* %3)
  store %struct._GimpStatusbar* %call2, %struct._GimpStatusbar** %statusbar, align 8
  %4 = load i32, i32* %severity.addr, align 4
  switch i32 %4, label %sw.epilog [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.3
    i32 0, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %5 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %call4 = call i32 @gimp_statusbar_get_visible(%struct._GimpStatusbar* %5)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb.3
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb.3
  %6 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %7 = bitcast %struct._GimpStatusbar* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_progress_interface_get_type() #4
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpProgress*
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %10 = load i32, i32* %severity.addr, align 4
  %11 = load i8*, i8** %domain.addr, align 8
  %12 = load i8*, i8** %message.addr, align 8
  %call7 = call i32 @gimp_progress_message(%struct._GimpProgress* %8, %struct._Gimp* %9, i32 %10, i8* %11, i8* %12)
  store i32 %call7, i32* %retval
  br label %return

sw.bb.8:                                          ; preds = %entry
  %13 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %14 = bitcast %struct._GimpStatusbar* %13 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_progress_interface_get_type() #4
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call9)
  %15 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpProgress*
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %17 = load i32, i32* %severity.addr, align 4
  %18 = load i8*, i8** %domain.addr, align 8
  %19 = load i8*, i8** %message.addr, align 8
  %call11 = call i32 @gimp_progress_message(%struct._GimpProgress* %15, %struct._Gimp* %16, i32 %17, i8* %18, i8* %19)
  store i32 1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry, %if.then, %sw.bb
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.8, %if.else
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_display_shell_get_type() #2

declare %struct._GimpStatusbar* @gimp_display_shell_get_statusbar(%struct._GimpDisplayShell*) #1

declare %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress*, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #2

declare void @gimp_progress_end(%struct._GimpProgress*) #1

declare i32 @gimp_progress_is_active(%struct._GimpProgress*) #1

declare void @gimp_progress_set_text(%struct._GimpProgress*, i8*) #1

declare void @gimp_progress_set_value(%struct._GimpProgress*, double) #1

declare double @gimp_progress_get_value(%struct._GimpProgress*) #1

declare void @gimp_progress_pulse(%struct._GimpProgress*) #1

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare i32 @gimp_window_get_native_id(%struct._GtkWindow*) #1

declare i32 @gimp_statusbar_get_visible(%struct._GimpStatusbar*) #1

declare i32 @gimp_progress_message(%struct._GimpProgress*, %struct._Gimp*, i32, i8*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
