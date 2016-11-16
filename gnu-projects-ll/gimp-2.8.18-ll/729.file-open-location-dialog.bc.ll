; ModuleID = './app/dialogs/file-open-location-dialog.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type opaque
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
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GtkEntryCompletion = type { %struct._GObject, %struct._GtkEntryCompletionPrivate* }
%struct._GtkEntryCompletionPrivate = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpProgressBox = type { %struct._GtkBox, i32, i32, double, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkEditable = type opaque
%struct._GimpPlugInProcedure = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GtkTreeModel = type opaque

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Dialogs\00", align 1
@__func__.file_open_location_dialog_new = private unnamed_addr constant [30 x i8] c"file_open_location_dialog_new\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Open Location\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"gimp-file-open-location\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"gtk-open\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"gimp-web\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Enter location (URI):\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"file-open-location-dialog\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"location-entry\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"progress-box\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Opening '%s' failed:\0A\0A%s\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @file_open_location_dialog_new(%struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %entry1 = alloca %struct._GtkWidget*, align 8
  %completion = alloca %struct._GtkEntryCompletion*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.file_open_location_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0)) #7
  %call13 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %dialog, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %14 = bitcast %struct._GtkWidget* %13 to i8*
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %16 = bitcast %struct._Gimp* %15 to i8*
  %call14 = call i64 @g_signal_connect_data(i8* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GtkDialog*, i32, %struct._Gimp*)* @file_open_location_response to void ()*), i8* %16, void (i8*, %struct._GClosure*)* null, i32 0)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_dialog_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call15)
  %19 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %19, i32 -5, i32 -6, i32 -1)
  %call17 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 12)
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %hbox, align 8
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_container_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call18)
  %22 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %22, i32 12)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_dialog_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call20)
  %25 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkDialog*
  %call22 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %25)
  %26 = bitcast %struct._GtkWidget* %call22 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call23)
  %27 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %27, %struct._GtkWidget* %28, i32 0, i32 0, i32 0)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %29)
  %call25 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %vbox, align 8
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_box_get_type() #5
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call26)
  %32 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkBox*
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %32, %struct._GtkWidget* %33, i32 0, i32 0, i32 0)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %34)
  %call28 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 4)
  store %struct._GtkWidget* %call28, %struct._GtkWidget** %image, align 8
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_box_get_type() #5
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call29)
  %37 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkBox*
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %37, %struct._GtkWidget* %38, i32 0, i32 0, i32 0)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %39)
  %call31 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call31, %struct._GtkWidget** %vbox, align 8
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_box_get_type() #5
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call32)
  %42 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkBox*
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %42, %struct._GtkWidget* %43, i32 1, i32 1, i32 0)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %44)
  %call34 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0)) #7
  %call35 = call %struct._GtkWidget* @gtk_label_new(i8* %call34)
  store %struct._GtkWidget* %call35, %struct._GtkWidget** %label, align 8
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_misc_get_type() #5
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call36)
  %47 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %47, float 0.000000e+00, float 1.000000e+00)
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_box_get_type() #5
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call38)
  %50 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkBox*
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %50, %struct._GtkWidget* %51, i32 0, i32 0, i32 0)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %52)
  %53 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call40 = call %struct._GimpContext* @gimp_context_new(%struct._Gimp* %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0), %struct._GimpContext* null)
  store %struct._GimpContext* %call40, %struct._GimpContext** %context, align 8
  %54 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %documents = getelementptr inbounds %struct._Gimp, %struct._Gimp* %54, i32 0, i32 47
  %55 = load %struct._GimpContainer*, %struct._GimpContainer** %documents, align 8
  %56 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call41 = call %struct._GtkWidget* @gimp_container_entry_new(%struct._GimpContainer* %55, %struct._GimpContext* %56, i32 24, i32 0)
  store %struct._GtkWidget* %call41, %struct._GtkWidget** %entry1, align 8
  %57 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %58 = bitcast %struct._GimpContext* %57 to i8*
  call void @g_object_unref(i8* %58)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_entry_get_type() #5
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call42)
  %61 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkEntry*
  %call44 = call %struct._GtkEntryCompletion* @gtk_entry_get_completion(%struct._GtkEntry* %61)
  store %struct._GtkEntryCompletion* %call44, %struct._GtkEntryCompletion** %completion, align 8
  %62 = load %struct._GtkEntryCompletion*, %struct._GtkEntryCompletion** %completion, align 8
  call void @gtk_entry_completion_set_match_func(%struct._GtkEntryCompletion* %62, i32 (%struct._GtkEntryCompletion*, i8*, %struct._GtkTreeIter*, i8*)* @file_open_location_completion, i8* null, void (i8*)* null)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_entry_get_type() #5
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call45)
  %65 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkEntry*
  call void @gtk_entry_set_activates_default(%struct._GtkEntry* %65, i32 1)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %66, i32 400, i32 -1)
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %68 = bitcast %struct._GtkWidget* %67 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_box_get_type() #5
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call47)
  %69 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkBox*
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %69, %struct._GtkWidget* %70, i32 0, i32 0, i32 0)
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %71)
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 80)
  %74 = bitcast %struct._GTypeInstance* %call49 to %struct._GObject*
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %76 = bitcast %struct._GtkWidget* %75 to i8*
  call void @g_object_set_data(%struct._GObject* %74, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* %76)
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  store %struct._GtkWidget* %77, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.10
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %78
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @gimp_standard_help_func(i8*, i8*) #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @file_open_location_response(%struct._GtkDialog* %dialog, i32 %response_id, %struct._Gimp* %gimp) #0 {
entry:
  %dialog.addr = alloca %struct._GtkDialog*, align 8
  %response_id.addr = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %entry1 = alloca %struct._GtkWidget*, align 8
  %box = alloca %struct._GtkWidget*, align 8
  %text = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %uri = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %hostname = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  %status = alloca i32, align 4
  %filename50 = alloca i8*, align 8
  store %struct._GtkDialog* %dialog, %struct._GtkDialog** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* null, i8** %text, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp ne i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkDialog*, %struct._GtkDialog** %dialog.addr, align 8
  %2 = bitcast %struct._GtkDialog* %1 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 80)
  %3 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call2 = call i8* @g_object_get_data(%struct._GObject* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0))
  %4 = bitcast i8* %call2 to %struct._GtkWidget*
  store %struct._GtkWidget* %4, %struct._GtkWidget** %box, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %tobool = icmp ne %struct._GtkWidget* %5, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_progress_box_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpProgressBox*
  %active = getelementptr inbounds %struct._GimpProgressBox, %struct._GimpProgressBox* %8, i32 0, i32 1
  %9 = load i32, i32* %active, align 4
  %tobool5 = icmp ne i32 %9, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %land.lhs.true
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_progress_interface_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call7)
  %12 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpProgress*
  call void @gimp_progress_cancel(%struct._GimpProgress* %12)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  %13 = load %struct._GtkDialog*, %struct._GtkDialog** %dialog.addr, align 8
  %14 = bitcast %struct._GtkDialog* %13 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_widget_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call9)
  %15 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkWidget*
  call void @gtk_widget_destroy(%struct._GtkWidget* %15)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %return

if.end.11:                                        ; preds = %entry
  %16 = load %struct._GtkDialog*, %struct._GtkDialog** %dialog.addr, align 8
  %17 = bitcast %struct._GtkDialog* %16 to %struct._GTypeInstance*
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 80)
  %18 = bitcast %struct._GTypeInstance* %call12 to %struct._GObject*
  %call13 = call i8* @g_object_get_data(%struct._GObject* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0))
  %19 = bitcast i8* %call13 to %struct._GtkWidget*
  store %struct._GtkWidget* %19, %struct._GtkWidget** %entry1, align 8
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_editable_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call14)
  %22 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkEditable*
  call void @gtk_editable_set_editable(%struct._GtkEditable* %22, i32 0)
  %23 = load %struct._GtkDialog*, %struct._GtkDialog** %dialog.addr, align 8
  call void @gtk_dialog_set_response_sensitive(%struct._GtkDialog* %23, i32 -5, i32 0)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_entry_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call16)
  %26 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkEntry*
  %call18 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %26)
  store i8* %call18, i8** %text, align 8
  %27 = load i8*, i8** %text, align 8
  %tobool19 = icmp ne i8* %27, null
  br i1 %tobool19, label %land.lhs.true.20, label %if.end.62

land.lhs.true.20:                                 ; preds = %if.end.11
  %28 = load i8*, i8** %text, align 8
  %call21 = call i64 @strlen(i8* %28) #6
  %tobool22 = icmp ne i64 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.62

if.then.23:                                       ; preds = %land.lhs.true.20
  store %struct._GError* null, %struct._GError** %error, align 8
  %29 = load i8*, i8** %text, align 8
  %call24 = call noalias i8* @g_filename_from_uri(i8* %29, i8** %hostname, %struct._GError** null)
  store i8* %call24, i8** %filename, align 8
  %30 = load i8*, i8** %filename, align 8
  %tobool25 = icmp ne i8* %30, null
  br i1 %tobool25, label %if.then.26, label %if.else.28

if.then.26:                                       ; preds = %if.then.23
  %31 = load i8*, i8** %filename, align 8
  %32 = load i8*, i8** %hostname, align 8
  %call27 = call noalias i8* @g_filename_to_uri(i8* %31, i8* %32, %struct._GError** %error)
  store i8* %call27, i8** %uri, align 8
  %33 = load i8*, i8** %hostname, align 8
  call void @g_free(i8* %33)
  %34 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %34)
  br label %if.end.30

if.else.28:                                       ; preds = %if.then.23
  %35 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %36 = load i8*, i8** %text, align 8
  %call29 = call i8* @file_utils_filename_to_uri(%struct._Gimp* %35, i8* %36, %struct._GError** %error)
  store i8* %call29, i8** %uri, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.28, %if.then.26
  %call31 = call %struct._GtkWidget* @gimp_progress_box_new()
  store %struct._GtkWidget* %call31, %struct._GtkWidget** %box, align 8
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_container_get_type() #5
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call32)
  %39 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %39, i32 12)
  %40 = load %struct._GtkDialog*, %struct._GtkDialog** %dialog.addr, align 8
  %41 = bitcast %struct._GtkDialog* %40 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_dialog_get_type() #5
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call34)
  %42 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkDialog*
  %call36 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %42)
  %43 = bitcast %struct._GtkWidget* %call36 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_box_get_type() #5
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call37)
  %44 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkBox*
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %44, %struct._GtkWidget* %45, i32 0, i32 0, i32 0)
  %46 = load %struct._GtkDialog*, %struct._GtkDialog** %dialog.addr, align 8
  %47 = bitcast %struct._GtkDialog* %46 to %struct._GTypeInstance*
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 80)
  %48 = bitcast %struct._GTypeInstance* %call39 to %struct._GObject*
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %50 = bitcast %struct._GtkWidget* %49 to i8*
  call void @g_object_set_data(%struct._GObject* %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* %50)
  %51 = load i8*, i8** %uri, align 8
  %tobool40 = icmp ne i8* %51, null
  br i1 %tobool40, label %if.then.41, label %if.else.55

if.then.41:                                       ; preds = %if.end.30
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %52)
  %53 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %54 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call42 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %54)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call43 = call i64 @gimp_progress_interface_get_type() #5
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call43)
  %57 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpProgress*
  %58 = load i8*, i8** %uri, align 8
  %59 = load i8*, i8** %text, align 8
  %call45 = call %struct._GimpImage* @file_open_with_proc_and_display(%struct._Gimp* %53, %struct._GimpContext* %call42, %struct._GimpProgress* %57, i8* %58, i8* %59, i32 0, %struct._GimpPlugInProcedure* null, i32* %status, %struct._GError** %error)
  store %struct._GimpImage* %call45, %struct._GimpImage** %image, align 8
  %60 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp46 = icmp eq %struct._GimpImage* %60, null
  br i1 %cmp46, label %land.lhs.true.47, label %if.end.54

land.lhs.true.47:                                 ; preds = %if.then.41
  %61 = load i32, i32* %status, align 4
  %cmp48 = icmp ne i32 %61, 4
  br i1 %cmp48, label %if.then.49, label %if.end.54

if.then.49:                                       ; preds = %land.lhs.true.47
  %62 = load i8*, i8** %uri, align 8
  %call51 = call i8* @file_utils_uri_display_name(i8* %62)
  store i8* %call51, i8** %filename50, align 8
  %63 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %65 = bitcast %struct._GtkWidget* %64 to %struct._GTypeInstance*
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 80)
  %66 = bitcast %struct._GTypeInstance* %call52 to %struct._GObject*
  %call53 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0)) #7
  %67 = load i8*, i8** %filename50, align 8
  %68 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %68, i32 0, i32 2
  %69 = load i8*, i8** %message, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %63, %struct._GObject* %66, i32 2, i8* %call53, i8* %67, i8* %69)
  call void @g_clear_error(%struct._GError** %error)
  %70 = load i8*, i8** %filename50, align 8
  call void @g_free(i8* %70)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.49, %land.lhs.true.47, %if.then.41
  %71 = load i8*, i8** %uri, align 8
  call void @g_free(i8* %71)
  br label %if.end.61

if.else.55:                                       ; preds = %if.end.30
  %72 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %box, align 8
  %74 = bitcast %struct._GtkWidget* %73 to %struct._GTypeInstance*
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 80)
  %75 = bitcast %struct._GTypeInstance* %call56 to %struct._GObject*
  %call57 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0)) #7
  %76 = load i8*, i8** %text, align 8
  %77 = load %struct._GError*, %struct._GError** %error, align 8
  %message58 = getelementptr inbounds %struct._GError, %struct._GError* %77, i32 0, i32 2
  %78 = load i8*, i8** %message58, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %72, %struct._GObject* %75, i32 2, i8* %call57, i8* %76, i8* %78)
  call void @g_clear_error(%struct._GError** %error)
  %79 = load %struct._GtkDialog*, %struct._GtkDialog** %dialog.addr, align 8
  call void @gtk_dialog_set_response_sensitive(%struct._GtkDialog* %79, i32 -5, i32 1)
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %entry1, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call59 = call i64 @gtk_editable_get_type() #5
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call59)
  %82 = bitcast %struct._GTypeInstance* %call60 to %struct._GtkEditable*
  call void @gtk_editable_set_editable(%struct._GtkEditable* %82, i32 1)
  br label %return

if.end.61:                                        ; preds = %if.end.54
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %land.lhs.true.20, %if.end.11
  %83 = load %struct._GtkDialog*, %struct._GtkDialog** %dialog.addr, align 8
  %84 = bitcast %struct._GtkDialog* %83 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_widget_get_type() #5
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call63)
  %85 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkWidget*
  call void @gtk_widget_destroy(%struct._GtkWidget* %85)
  br label %return

return:                                           ; preds = %if.end.62, %if.else.55, %if.end
  ret void
}

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #3

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #3

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #1

declare void @gtk_widget_show(%struct._GtkWidget*) #3

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #3

declare %struct._GtkWidget* @gtk_label_new(i8*) #3

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #1

declare %struct._GimpContext* @gimp_context_new(%struct._Gimp*, i8*, %struct._GimpContext*) #3

declare %struct._GtkWidget* @gimp_container_entry_new(%struct._GimpContainer*, %struct._GimpContext*, i32, i32) #3

declare void @g_object_unref(i8*) #3

declare %struct._GtkEntryCompletion* @gtk_entry_get_completion(%struct._GtkEntry*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #1

declare void @gtk_entry_completion_set_match_func(%struct._GtkEntryCompletion*, i32 (%struct._GtkEntryCompletion*, i8*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*) #3

; Function Attrs: nounwind uwtable
define internal i32 @file_open_location_completion(%struct._GtkEntryCompletion* %completion, i8* %key, %struct._GtkTreeIter* %iter, i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %completion.addr = alloca %struct._GtkEntryCompletion*, align 8
  %key.addr = alloca i8*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %data.addr = alloca i8*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %name = alloca i8*, align 8
  %normalized = alloca i8*, align 8
  %case_normalized = alloca i8*, align 8
  %match = alloca i32, align 4
  %colon = alloca i8*, align 8
  store %struct._GtkEntryCompletion* %completion, %struct._GtkEntryCompletion** %completion.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkEntryCompletion*, %struct._GtkEntryCompletion** %completion.addr, align 8
  %call = call %struct._GtkTreeModel* @gtk_entry_completion_get_model(%struct._GtkEntryCompletion* %0)
  store %struct._GtkTreeModel* %call, %struct._GtkTreeModel** %model, align 8
  %1 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %2 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %1, %struct._GtkTreeIter* %2, i32 1, i8** %name, i32 -1)
  %3 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %name, align 8
  %call1 = call noalias i8* @g_utf8_normalize(i8* %4, i64 -1, i32 2)
  store i8* %call1, i8** %normalized, align 8
  %5 = load i8*, i8** %normalized, align 8
  %call2 = call noalias i8* @g_utf8_casefold(i8* %5, i64 -1)
  store i8* %call2, i8** %case_normalized, align 8
  %6 = load i8*, i8** %key.addr, align 8
  %7 = load i8*, i8** %case_normalized, align 8
  %8 = load i8*, i8** %key.addr, align 8
  %call3 = call i64 @strlen(i8* %8) #6
  %call4 = call i32 @strncmp(i8* %6, i8* %7, i64 %call3) #6
  %cmp = icmp eq i32 %call4, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %match, align 4
  %9 = load i32, i32* %match, align 4
  %tobool5 = icmp ne i32 %9, 0
  br i1 %tobool5, label %if.end.27, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %10 = load i8*, i8** %case_normalized, align 8
  %call7 = call i8* @strchr(i8* %10, i32 58) #6
  store i8* %call7, i8** %colon, align 8
  %11 = load i8*, i8** %colon, align 8
  %tobool8 = icmp ne i8* %11, null
  br i1 %tobool8, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %if.then.6
  %12 = load i8*, i8** %colon, align 8
  %call9 = call i64 @strlen(i8* %12) #6
  %cmp10 = icmp ugt i64 %call9, 2
  br i1 %cmp10, label %land.lhs.true.12, label %if.end.26

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %13 = load i8*, i8** %colon, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %arrayidx, align 1
  %conv13 = sext i8 %14 to i32
  %cmp14 = icmp eq i32 %conv13, 47
  br i1 %cmp14, label %land.lhs.true.16, label %if.end.26

land.lhs.true.16:                                 ; preds = %land.lhs.true.12
  %15 = load i8*, i8** %colon, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 2
  %16 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %16 to i32
  %cmp19 = icmp eq i32 %conv18, 47
  br i1 %cmp19, label %if.then.21, label %if.end.26

if.then.21:                                       ; preds = %land.lhs.true.16
  %17 = load i8*, i8** %key.addr, align 8
  %18 = load i8*, i8** %colon, align 8
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 3
  %19 = load i8*, i8** %key.addr, align 8
  %call22 = call i64 @strlen(i8* %19) #6
  %call23 = call i32 @strncmp(i8* %17, i8* %add.ptr, i64 %call22) #6
  %cmp24 = icmp eq i32 %call23, 0
  %conv25 = zext i1 %cmp24 to i32
  store i32 %conv25, i32* %match, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.21, %land.lhs.true.16, %land.lhs.true.12, %land.lhs.true, %if.then.6
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end
  %20 = load i8*, i8** %normalized, align 8
  call void @g_free(i8* %20)
  %21 = load i8*, i8** %case_normalized, align 8
  call void @g_free(i8* %21)
  %22 = load i8*, i8** %name, align 8
  call void @g_free(i8* %22)
  %23 = load i32, i32* %match, align 4
  store i32 %23, i32* %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare void @gtk_entry_set_activates_default(%struct._GtkEntry*, i32) #3

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #3

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #3

declare i8* @g_object_get_data(%struct._GObject*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_box_get_type() #1

declare void @gimp_progress_cancel(%struct._GimpProgress*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #1

declare void @gtk_editable_set_editable(%struct._GtkEditable*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_editable_get_type() #1

declare void @gtk_dialog_set_response_sensitive(%struct._GtkDialog*, i32, i32) #3

declare i8* @gtk_entry_get_text(%struct._GtkEntry*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare noalias i8* @g_filename_from_uri(i8*, i8**, %struct._GError**) #3

declare noalias i8* @g_filename_to_uri(i8*, i8*, %struct._GError**) #3

declare void @g_free(i8*) #3

declare i8* @file_utils_filename_to_uri(%struct._Gimp*, i8*, %struct._GError**) #3

declare %struct._GtkWidget* @gimp_progress_box_new() #3

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #3

declare %struct._GimpImage* @file_open_with_proc_and_display(%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, i8*, i8*, i32, %struct._GimpPlugInProcedure*, i32*, %struct._GError**) #3

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #3

declare i8* @file_utils_uri_display_name(i8*) #3

declare void @gimp_message(%struct._Gimp*, %struct._GObject*, i32, i8*, ...) #3

declare void @g_clear_error(%struct._GError**) #3

declare %struct._GtkTreeModel* @gtk_entry_completion_get_model(%struct._GtkEntryCompletion*) #3

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #3

declare noalias i8* @g_utf8_normalize(i8*, i64, i32) #3

declare noalias i8* @g_utf8_casefold(i8*, i64) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

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
