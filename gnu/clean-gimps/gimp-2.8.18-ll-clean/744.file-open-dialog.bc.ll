; ModuleID = './app/dialogs/file-open-dialog.bc'
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
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GimpFileDialogState = type opaque
%struct._GtkFileChooser = type opaque
%struct._GimpFileDialog = type { %struct._GtkFileChooserDialog, %struct._GimpPlugInProcedure*, %struct._GimpImage*, i32, i32, i32, i32, %struct._GimpObject*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32 }
%struct._GtkFileChooserDialog = type { %struct._GtkDialog, %struct._GtkFileChooserDialogPrivate* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkFileChooserDialogPrivate = type opaque
%struct._GimpPlugInProcedure = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GError = type { i32, i32, i8* }
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpLayerMask = type opaque
%struct._GeglNode = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._BoundSeg = type opaque

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Dialogs\00", align 1
@__func__.file_open_dialog_new = private unnamed_addr constant [21 x i8] c"file_open_dialog_new\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Open Image\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"gimp-file-open\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"gtk-open\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"gimp-file-open-dialog-state\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"gimp-file-open-last-uri\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Opening '%s' failed:\0A\0A%s\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"Open layers\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @file_open_dialog_new(%struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %state = alloca %struct._GimpFileDialogState*, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.file_open_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0)) #7
  %call12 = call %struct._GtkWidget* @gimp_file_dialog_new(%struct._Gimp* %13, i32 0, i8* %call11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %dialog, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_file_chooser_get_type() #5
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call13)
  %16 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkFileChooser*
  call void @gtk_file_chooser_set_select_multiple(%struct._GtkFileChooser* %16, i32 1)
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %18 = bitcast %struct._Gimp* %17 to %struct._GTypeInstance*
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 80)
  %19 = bitcast %struct._GTypeInstance* %call15 to %struct._GObject*
  %call16 = call i8* @g_object_get_data(%struct._GObject* %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  %20 = bitcast i8* %call16 to %struct._GimpFileDialogState*
  store %struct._GimpFileDialogState* %20, %struct._GimpFileDialogState** %state, align 8
  %21 = load %struct._GimpFileDialogState*, %struct._GimpFileDialogState** %state, align 8
  %tobool17 = icmp ne %struct._GimpFileDialogState* %21, null
  br i1 %tobool17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %do.end
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_file_dialog_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call19)
  %24 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpFileDialog*
  %25 = load %struct._GimpFileDialogState*, %struct._GimpFileDialogState** %state, align 8
  call void @gimp_file_dialog_set_state(%struct._GimpFileDialog* %24, %struct._GimpFileDialogState* %25)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %do.end
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %27 = bitcast %struct._GtkWidget* %26 to i8*
  %28 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %29 = bitcast %struct._Gimp* %28 to i8*
  %call22 = call i64 @g_signal_connect_data(i8* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._Gimp*)* @file_open_dialog_response to void ()*), i8* %29, void (i8*, %struct._GClosure*)* null, i32 0)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  store %struct._GtkWidget* %30, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.else.9
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %31
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare %struct._GtkWidget* @gimp_file_dialog_new(%struct._Gimp*, i32, i8*, i8*, i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @gtk_file_chooser_set_select_multiple(%struct._GtkFileChooser*, i32) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_file_chooser_get_type() #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #3

declare void @gimp_file_dialog_set_state(%struct._GimpFileDialog*, %struct._GimpFileDialogState*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_file_dialog_get_type() #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @file_open_dialog_response(%struct._GtkWidget* %open_dialog, i32 %response_id, %struct._Gimp* %gimp) #0 {
entry:
  %open_dialog.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %dialog = alloca %struct._GimpFileDialog*, align 8
  %uris = alloca %struct._GSList*, align 8
  %list = alloca %struct._GSList*, align 8
  %success = alloca i32, align 4
  store %struct._GtkWidget* %open_dialog, %struct._GtkWidget** %open_dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %open_dialog.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_file_dialog_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFileDialog*
  store %struct._GimpFileDialog* %2, %struct._GimpFileDialog** %dialog, align 8
  store i32 0, i32* %success, align 4
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %4 = bitcast %struct._Gimp* %3 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 80)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %6 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %call3 = call %struct._GimpFileDialogState* @gimp_file_dialog_get_state(%struct._GimpFileDialog* %6)
  %7 = bitcast %struct._GimpFileDialogState* %call3 to i8*
  call void @g_object_set_data_full(%struct._GObject* %5, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0), i8* %7, void (i8*)* bitcast (void (%struct._GimpFileDialogState*)* @gimp_file_dialog_state_destroy to void (i8*)*))
  %8 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp ne i32 %8, -5
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %busy = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %9, i32 0, i32 12
  %10 = load i32, i32* %busy, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %open_dialog.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %11)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %return

if.end.5:                                         ; preds = %entry
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %open_dialog.addr, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_file_chooser_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call6)
  %14 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkFileChooser*
  %call8 = call %struct._GSList* @gtk_file_chooser_get_uris(%struct._GtkFileChooser* %14)
  store %struct._GSList* %call8, %struct._GSList** %uris, align 8
  %15 = load %struct._GSList*, %struct._GSList** %uris, align 8
  %tobool9 = icmp ne %struct._GSList* %15, null
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.5
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %17 = bitcast %struct._Gimp* %16 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 80)
  %18 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  %19 = load %struct._GSList*, %struct._GSList** %uris, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %19, i32 0, i32 0
  %20 = load i8*, i8** %data, align 8
  %call12 = call noalias i8* @g_strdup(i8* %20)
  call void @g_object_set_data_full(%struct._GObject* %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0), i8* %call12, void (i8*)* @g_free)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end.5
  %21 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  call void @gimp_file_dialog_set_sensitive(%struct._GimpFileDialog* %21, i32 0)
  %22 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %open_as_layers = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %22, i32 0, i32 3
  %23 = load i32, i32* %open_as_layers, align 4
  %tobool14 = icmp ne i32 %23, 0
  br i1 %tobool14, label %if.end.18, label %if.then.15

if.then.15:                                       ; preds = %if.end.13
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %open_dialog.addr, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_window_get_type() #5
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call16)
  %26 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkWindow*
  call void @gtk_window_set_transient_for(%struct._GtkWindow* %26, %struct._GtkWindow* null)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end.13
  %27 = load %struct._GSList*, %struct._GSList** %uris, align 8
  store %struct._GSList* %27, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.18
  %28 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool19 = icmp ne %struct._GSList* %28, null
  br i1 %tobool19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %open_as_layers20 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %29, i32 0, i32 3
  %30 = load i32, i32* %open_as_layers20, align 4
  %tobool21 = icmp ne i32 %30, 0
  br i1 %tobool21, label %if.then.22, label %if.else.42

if.then.22:                                       ; preds = %for.body
  %31 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %image = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %31, i32 0, i32 2
  %32 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool23 = icmp ne %struct._GimpImage* %32, null
  br i1 %tobool23, label %if.else, label %if.then.24

if.then.24:                                       ; preds = %if.then.22
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %open_dialog.addr, align 8
  %34 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %35 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data25 = getelementptr inbounds %struct._GSList, %struct._GSList* %35, i32 0, i32 0
  %36 = load i8*, i8** %data25, align 8
  %37 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data26 = getelementptr inbounds %struct._GSList, %struct._GSList* %37, i32 0, i32 0
  %38 = load i8*, i8** %data26, align 8
  %39 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %file_proc = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %39, i32 0, i32 1
  %40 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc, align 8
  %call27 = call %struct._GimpImage* @file_open_dialog_open_image(%struct._GtkWidget* %33, %struct._Gimp* %34, i8* %36, i8* %38, %struct._GimpPlugInProcedure* %40)
  %41 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %image28 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %41, i32 0, i32 2
  store %struct._GimpImage* %call27, %struct._GimpImage** %image28, align 8
  %42 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %image29 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %42, i32 0, i32 2
  %43 = load %struct._GimpImage*, %struct._GimpImage** %image29, align 8
  %tobool30 = icmp ne %struct._GimpImage* %43, null
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.24
  store i32 1, i32* %success, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.then.24
  br label %if.end.41

if.else:                                          ; preds = %if.then.22
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %open_dialog.addr, align 8
  %45 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %image33 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %45, i32 0, i32 2
  %46 = load %struct._GimpImage*, %struct._GimpImage** %image33, align 8
  %47 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data34 = getelementptr inbounds %struct._GSList, %struct._GSList* %47, i32 0, i32 0
  %48 = load i8*, i8** %data34, align 8
  %49 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data35 = getelementptr inbounds %struct._GSList, %struct._GSList* %49, i32 0, i32 0
  %50 = load i8*, i8** %data35, align 8
  %51 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %file_proc36 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %51, i32 0, i32 1
  %52 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc36, align 8
  %call37 = call i32 @file_open_dialog_open_layers(%struct._GtkWidget* %44, %struct._GimpImage* %46, i8* %48, i8* %50, %struct._GimpPlugInProcedure* %52)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.else
  store i32 1, i32* %success, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.else
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end.32
  br label %if.end.51

if.else.42:                                       ; preds = %for.body
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %open_dialog.addr, align 8
  %54 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %55 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data43 = getelementptr inbounds %struct._GSList, %struct._GSList* %55, i32 0, i32 0
  %56 = load i8*, i8** %data43, align 8
  %57 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data44 = getelementptr inbounds %struct._GSList, %struct._GSList* %57, i32 0, i32 0
  %58 = load i8*, i8** %data44, align 8
  %59 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %file_proc45 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %59, i32 0, i32 1
  %60 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %file_proc45, align 8
  %call46 = call %struct._GimpImage* @file_open_dialog_open_image(%struct._GtkWidget* %53, %struct._Gimp* %54, i8* %56, i8* %58, %struct._GimpPlugInProcedure* %60)
  %tobool47 = icmp ne %struct._GimpImage* %call46, null
  br i1 %tobool47, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %if.else.42
  store i32 1, i32* %success, align 4
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %open_dialog.addr, align 8
  %call49 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %61)
  call void @gdk_window_raise(%struct._GdkDrawable* %call49)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %if.else.42
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end.41
  %62 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %canceled = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %62, i32 0, i32 13
  %63 = load i32, i32* %canceled, align 4
  %tobool52 = icmp ne i32 %63, 0
  br i1 %tobool52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.51
  br label %for.end

if.end.54:                                        ; preds = %if.end.51
  br label %for.inc

for.inc:                                          ; preds = %if.end.54
  %64 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool55 = icmp ne %struct._GSList* %64, null
  br i1 %tobool55, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %65 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %65, i32 0, i32 1
  %66 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %66, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.53, %for.cond
  %67 = load i32, i32* %success, align 4
  %tobool56 = icmp ne i32 %67, 0
  br i1 %tobool56, label %if.then.57, label %if.else.65

if.then.57:                                       ; preds = %for.end
  %68 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %open_as_layers58 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %68, i32 0, i32 3
  %69 = load i32, i32* %open_as_layers58, align 4
  %tobool59 = icmp ne i32 %69, 0
  br i1 %tobool59, label %land.lhs.true, label %if.end.64

land.lhs.true:                                    ; preds = %if.then.57
  %70 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %image60 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %70, i32 0, i32 2
  %71 = load %struct._GimpImage*, %struct._GimpImage** %image60, align 8
  %tobool61 = icmp ne %struct._GimpImage* %71, null
  br i1 %tobool61, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %land.lhs.true
  %72 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  %image63 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %72, i32 0, i32 2
  %73 = load %struct._GimpImage*, %struct._GimpImage** %image63, align 8
  call void @gimp_image_flush(%struct._GimpImage* %73)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %land.lhs.true, %if.then.57
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %open_dialog.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %74)
  br label %if.end.66

if.else.65:                                       ; preds = %for.end
  %75 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %dialog, align 8
  call void @gimp_file_dialog_set_sensitive(%struct._GimpFileDialog* %75, i32 1)
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.65, %if.end.64
  %76 = load %struct._GSList*, %struct._GSList** %uris, align 8
  call void @g_slist_free_full(%struct._GSList* %76, void (i8*)* @g_free)
  br label %return

return:                                           ; preds = %if.end.66, %if.end
  ret void
}

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #3

declare %struct._GimpFileDialogState* @gimp_file_dialog_get_state(%struct._GimpFileDialog*) #3

declare void @gimp_file_dialog_state_destroy(%struct._GimpFileDialogState*) #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #3

declare %struct._GSList* @gtk_file_chooser_get_uris(%struct._GtkFileChooser*) #3

declare noalias i8* @g_strdup(i8*) #3

declare void @g_free(i8*) #3

declare void @gimp_file_dialog_set_sensitive(%struct._GimpFileDialog*, i32) #3

declare void @gtk_window_set_transient_for(%struct._GtkWindow*, %struct._GtkWindow*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpImage* @file_open_dialog_open_image(%struct._GtkWidget* %open_dialog, %struct._Gimp* %gimp, i8* %uri, i8* %entered_filename, %struct._GimpPlugInProcedure* %load_proc) #0 {
entry:
  %open_dialog.addr = alloca %struct._GtkWidget*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %uri.addr = alloca i8*, align 8
  %entered_filename.addr = alloca i8*, align 8
  %load_proc.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %status = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  %filename = alloca i8*, align 8
  store %struct._GtkWidget* %open_dialog, %struct._GtkWidget** %open_dialog.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* %uri, i8** %uri.addr, align 8
  store i8* %entered_filename, i8** %entered_filename.addr, align 8
  store %struct._GimpPlugInProcedure* %load_proc, %struct._GimpPlugInProcedure** %load_proc.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %1)
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %open_dialog.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_progress_interface_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpProgress*
  %5 = load i8*, i8** %uri.addr, align 8
  %6 = load i8*, i8** %entered_filename.addr, align 8
  %7 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %load_proc.addr, align 8
  %call3 = call %struct._GimpImage* @file_open_with_proc_and_display(%struct._Gimp* %0, %struct._GimpContext* %call, %struct._GimpProgress* %4, i8* %5, i8* %6, i32 0, %struct._GimpPlugInProcedure* %7, i32* %status, %struct._GError** %error)
  store %struct._GimpImage* %call3, %struct._GimpImage** %image, align 8
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %8, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %9 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %9, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load i8*, i8** %uri.addr, align 8
  %call4 = call i8* @file_utils_uri_display_name(i8* %10)
  store i8* %call4, i8** %filename, align 8
  %11 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %open_dialog.addr, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 80)
  %14 = bitcast %struct._GTypeInstance* %call5 to %struct._GObject*
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0)) #7
  %15 = load i8*, i8** %filename, align 8
  %16 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %16, i32 0, i32 2
  %17 = load i8*, i8** %message, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %11, %struct._GObject* %14, i32 2, i8* %call6, i8* %15, i8* %17)
  call void @g_clear_error(%struct._GError** %error)
  %18 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  ret %struct._GimpImage* %19
}

; Function Attrs: nounwind uwtable
define internal i32 @file_open_dialog_open_layers(%struct._GtkWidget* %open_dialog, %struct._GimpImage* %image, i8* %uri, i8* %entered_filename, %struct._GimpPlugInProcedure* %load_proc) #0 {
entry:
  %retval = alloca i32, align 4
  %open_dialog.addr = alloca %struct._GtkWidget*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %uri.addr = alloca i8*, align 8
  %entered_filename.addr = alloca i8*, align 8
  %load_proc.addr = alloca %struct._GimpPlugInProcedure*, align 8
  %new_layers = alloca %struct._GList*, align 8
  %status = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  %filename = alloca i8*, align 8
  store %struct._GtkWidget* %open_dialog, %struct._GtkWidget** %open_dialog.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i8* %uri, i8** %uri.addr, align 8
  store i8* %entered_filename, i8** %entered_filename.addr, align 8
  store %struct._GimpPlugInProcedure* %load_proc, %struct._GimpPlugInProcedure** %load_proc.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp1 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %2, i32 0, i32 1
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp1, align 8
  %call = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %3)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %open_dialog.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_progress_interface_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpProgress*
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %8 = load i8*, i8** %uri.addr, align 8
  %9 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %load_proc.addr, align 8
  %call4 = call %struct._GList* @file_open_layers(%struct._Gimp* %1, %struct._GimpContext* %call, %struct._GimpProgress* %6, %struct._GimpImage* %7, i32 0, i8* %8, i32 0, %struct._GimpPlugInProcedure* %9, i32* %status, %struct._GError** %error)
  store %struct._GList* %call4, %struct._GList** %new_layers, align 8
  %10 = load %struct._GList*, %struct._GList** %new_layers, align 8
  %tobool = icmp ne %struct._GList* %10, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %12 = load %struct._GList*, %struct._GList** %new_layers, align 8
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call5 = call i32 @gimp_image_get_width(%struct._GimpImage* %13)
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call6 = call i32 @gimp_image_get_height(%struct._GimpImage* %14)
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0)) #7
  call void @gimp_image_add_layers(%struct._GimpImage* %11, %struct._GList* %12, %struct._GimpLayer* inttoptr (i64 1 to %struct._GimpLayer*), i32 -1, i32 0, i32 0, i32 %call5, i32 %call6, i8* %call7)
  %15 = load %struct._GList*, %struct._GList** %new_layers, align 8
  call void @g_list_free(%struct._GList* %15)
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %16 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %16, 4
  br i1 %cmp, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.else
  %17 = load i8*, i8** %uri.addr, align 8
  %call9 = call i8* @file_utils_uri_display_name(i8* %17)
  store i8* %call9, i8** %filename, align 8
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp10 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %18, i32 0, i32 1
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp10, align 8
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %open_dialog.addr, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 80)
  %22 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0)) #7
  %23 = load i8*, i8** %filename, align 8
  %24 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %24, i32 0, i32 2
  %25 = load i8*, i8** %message, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %19, %struct._GObject* %22, i32 2, i8* %call12, i8* %23, i8* %25)
  call void @g_clear_error(%struct._GError** %error)
  %26 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %26)
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.else
  br label %if.end.13

if.end.13:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then
  %27 = load i32, i32* %retval
  ret i32 %27
}

declare void @gdk_window_raise(%struct._GdkDrawable*) #3

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #3

declare void @gimp_image_flush(%struct._GimpImage*) #3

declare void @g_slist_free_full(%struct._GSList*, void (i8*)*) #3

declare %struct._GimpImage* @file_open_with_proc_and_display(%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, i8*, i8*, i32, %struct._GimpPlugInProcedure*, i32*, %struct._GError**) #3

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #1

declare i8* @file_utils_uri_display_name(i8*) #3

declare void @gimp_message(%struct._Gimp*, %struct._GObject*, i32, i8*, ...) #3

declare void @g_clear_error(%struct._GError**) #3

declare %struct._GList* @file_open_layers(%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpImage*, i32, i8*, i32, %struct._GimpPlugInProcedure*, i32*, %struct._GError**) #3

declare void @gimp_image_add_layers(%struct._GimpImage*, %struct._GList*, %struct._GimpLayer*, i32, i32, i32, i32, i32, i8*) #3

declare i32 @gimp_image_get_width(%struct._GimpImage*) #3

declare i32 @gimp_image_get_height(%struct._GimpImage*) #3

declare void @g_list_free(%struct._GList*) #3

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
