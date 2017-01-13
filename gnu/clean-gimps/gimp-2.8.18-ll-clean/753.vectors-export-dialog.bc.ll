; ModuleID = './app/dialogs/vectors-export-dialog.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._VectorsExportDialog = type { %struct._GtkWidget*, %struct._GimpImage*, i32 }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type opaque
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
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
%struct._GtkFileChooser = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Dialogs\00", align 1
@__func__.vectors_export_dialog_new = private unnamed_addr constant [26 x i8] c"vectors_export_dialog_new\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"GTK_IS_WIDGET (parent)\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Export Path to SVG\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"gtk-save\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"gimp-vectors-export\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"disconnect\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"delete-event\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Export the active path\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Export all paths from this image\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"changed\00", align 1

; Function Attrs: nounwind uwtable
define %struct._VectorsExportDialog* @vectors_export_dialog_new(%struct._GimpImage* %image, %struct._GtkWidget* %parent, i32 %active_only) #0 {
entry:
  %retval = alloca %struct._VectorsExportDialog*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %active_only.addr = alloca i32, align 4
  %dialog = alloca %struct._VectorsExportDialog*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %chooser = alloca %struct._GtkFileChooser*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  store i32 %active_only, i32* %active_only.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.vectors_export_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._VectorsExportDialog* null, %struct._VectorsExportDialog** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gtk_widget_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.vectors_export_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  store %struct._VectorsExportDialog* null, %struct._VectorsExportDialog** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %call39 = call noalias i8* @g_slice_alloc0(i64 24)
  %26 = bitcast i8* %call39 to %struct._VectorsExportDialog*
  store %struct._VectorsExportDialog* %26, %struct._VectorsExportDialog** %dialog, align 8
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %28 = load %struct._VectorsExportDialog*, %struct._VectorsExportDialog** %dialog, align 8
  %image40 = getelementptr inbounds %struct._VectorsExportDialog, %struct._VectorsExportDialog* %28, i32 0, i32 1
  store %struct._GimpImage* %27, %struct._GimpImage** %image40, align 8
  %29 = load i32, i32* %active_only.addr, align 4
  %30 = load %struct._VectorsExportDialog*, %struct._VectorsExportDialog** %dialog, align 8
  %active_only41 = getelementptr inbounds %struct._VectorsExportDialog, %struct._VectorsExportDialog* %30, i32 0, i32 2
  store i32 %29, i32* %active_only41, align 4
  %call42 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0)) #7
  %call43 = call %struct._GtkWidget* (i8*, %struct._GtkWindow*, i32, i8*, ...) @gtk_file_chooser_dialog_new(i8* %call42, %struct._GtkWindow* null, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 -5, i8* null)
  %31 = load %struct._VectorsExportDialog*, %struct._VectorsExportDialog** %dialog, align 8
  %dialog44 = getelementptr inbounds %struct._VectorsExportDialog, %struct._VectorsExportDialog* %31, i32 0, i32 0
  store %struct._GtkWidget* %call43, %struct._GtkWidget** %dialog44, align 8
  %32 = load %struct._VectorsExportDialog*, %struct._VectorsExportDialog** %dialog, align 8
  %dialog45 = getelementptr inbounds %struct._VectorsExportDialog, %struct._VectorsExportDialog* %32, i32 0, i32 0
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog45, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_file_chooser_get_type() #5
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call46)
  %35 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkFileChooser*
  store %struct._GtkFileChooser* %35, %struct._GtkFileChooser** %chooser, align 8
  %36 = load %struct._VectorsExportDialog*, %struct._VectorsExportDialog** %dialog, align 8
  %dialog48 = getelementptr inbounds %struct._VectorsExportDialog, %struct._VectorsExportDialog* %36, i32 0, i32 0
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog48, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_dialog_get_type() #5
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call49)
  %39 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %39, i32 -5, i32 -6, i32 -1)
  %40 = load %struct._VectorsExportDialog*, %struct._VectorsExportDialog** %dialog, align 8
  %dialog51 = getelementptr inbounds %struct._VectorsExportDialog, %struct._VectorsExportDialog* %40, i32 0, i32 0
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog51, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_window_get_type() #5
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call52)
  %43 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkWindow*
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %call54 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %44)
  call void @gtk_window_set_screen(%struct._GtkWindow* %43, %struct._GdkScreen* %call54)
  %45 = load %struct._VectorsExportDialog*, %struct._VectorsExportDialog** %dialog, align 8
  %dialog55 = getelementptr inbounds %struct._VectorsExportDialog, %struct._VectorsExportDialog* %45, i32 0, i32 0
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog55, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_window_get_type() #5
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call56)
  %48 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkWindow*
  call void @gtk_window_set_role(%struct._GtkWindow* %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  %49 = load %struct._VectorsExportDialog*, %struct._VectorsExportDialog** %dialog, align 8
  %dialog58 = getelementptr inbounds %struct._VectorsExportDialog, %struct._VectorsExportDialog* %49, i32 0, i32 0
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog58, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call59 = call i64 @gtk_window_get_type() #5
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call59)
  %52 = bitcast %struct._GTypeInstance* %call60 to %struct._GtkWindow*
  call void @gtk_window_set_position(%struct._GtkWindow* %52, i32 2)
  %53 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %54 = bitcast %struct._GtkFileChooser* %53 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_dialog_get_type() #5
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call61)
  %55 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %55, i32 -5)
  %56 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  call void @gtk_file_chooser_set_do_overwrite_confirmation(%struct._GtkFileChooser* %56, i32 1)
  %57 = load %struct._VectorsExportDialog*, %struct._VectorsExportDialog** %dialog, align 8
  %dialog63 = getelementptr inbounds %struct._VectorsExportDialog, %struct._VectorsExportDialog* %57, i32 0, i32 0
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog63, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 80)
  %60 = bitcast %struct._GTypeInstance* %call64 to %struct._GObject*
  %61 = load %struct._VectorsExportDialog*, %struct._VectorsExportDialog** %dialog, align 8
  %62 = bitcast %struct._VectorsExportDialog* %61 to i8*
  call void @g_object_weak_ref(%struct._GObject* %60, void (i8*, %struct._GObject*)* bitcast (void (%struct._VectorsExportDialog*)* @vectors_export_dialog_free to void (i8*, %struct._GObject*)*), i8* %62)
  %63 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %64 = bitcast %struct._GimpImage* %63 to i8*
  %65 = load %struct._VectorsExportDialog*, %struct._VectorsExportDialog** %dialog, align 8
  %dialog65 = getelementptr inbounds %struct._VectorsExportDialog, %struct._VectorsExportDialog* %65, i32 0, i32 0
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog65, align 8
  %67 = bitcast %struct._GtkWidget* %66 to i8*
  %call66 = call i64 @g_signal_connect_object(i8* %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @gtk_widget_destroy to void ()*), i8* %67, i32 0)
  %68 = load %struct._VectorsExportDialog*, %struct._VectorsExportDialog** %dialog, align 8
  %dialog67 = getelementptr inbounds %struct._VectorsExportDialog, %struct._VectorsExportDialog* %68, i32 0, i32 0
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog67, align 8
  %70 = bitcast %struct._GtkWidget* %69 to i8*
  %call68 = call i64 @g_signal_connect_data(i8* %70, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (i32 ()* @gtk_true to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call69 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0)) #7
  %call70 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i32 0, i32 0)) #7
  %call71 = call %struct._GtkWidget* (i8*, i32, ...) @gimp_int_combo_box_new(i8* %call69, i32 1, i8* %call70, i32 0, i8* null)
  store %struct._GtkWidget* %call71, %struct._GtkWidget** %combo, align 8
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %72 = bitcast %struct._GtkWidget* %71 to %struct._GTypeInstance*
  %call72 = call i64 @gimp_int_combo_box_get_type() #5
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call72)
  %73 = bitcast %struct._GTypeInstance* %call73 to %struct._GimpIntComboBox*
  %74 = load %struct._VectorsExportDialog*, %struct._VectorsExportDialog** %dialog, align 8
  %active_only74 = getelementptr inbounds %struct._VectorsExportDialog, %struct._VectorsExportDialog* %74, i32 0, i32 2
  %75 = load i32, i32* %active_only74, align 4
  %call75 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %73, i32 %75)
  %76 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_file_chooser_set_extra_widget(%struct._GtkFileChooser* %76, %struct._GtkWidget* %77)
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %79 = bitcast %struct._GtkWidget* %78 to i8*
  %80 = load %struct._VectorsExportDialog*, %struct._VectorsExportDialog** %dialog, align 8
  %active_only76 = getelementptr inbounds %struct._VectorsExportDialog, %struct._VectorsExportDialog* %80, i32 0, i32 2
  %81 = bitcast i32* %active_only76 to i8*
  %call77 = call i64 @g_signal_connect_data(i8* %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (i32 (%struct._GimpIntComboBox*, i32*)* @gimp_int_combo_box_get_active to void ()*), i8* %81, void (i8*, %struct._GClosure*)* null, i32 0)
  %82 = load %struct._VectorsExportDialog*, %struct._VectorsExportDialog** %dialog, align 8
  store %struct._VectorsExportDialog* %82, %struct._VectorsExportDialog** %retval
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  %83 = load %struct._VectorsExportDialog*, %struct._VectorsExportDialog** %retval
  ret %struct._VectorsExportDialog* %83
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #1

declare noalias i8* @g_slice_alloc0(i64) #3

declare %struct._GtkWidget* @gtk_file_chooser_dialog_new(i8*, %struct._GtkWindow*, i32, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_file_chooser_get_type() #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #1

declare void @gtk_window_set_screen(%struct._GtkWindow*, %struct._GdkScreen*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #1

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #3

declare void @gtk_window_set_role(%struct._GtkWindow*, i8*) #3

declare void @gtk_window_set_position(%struct._GtkWindow*, i32) #3

declare void @gtk_dialog_set_default_response(%struct._GtkDialog*, i32) #3

declare void @gtk_file_chooser_set_do_overwrite_confirmation(%struct._GtkFileChooser*, i32) #3

declare void @g_object_weak_ref(%struct._GObject*, void (i8*, %struct._GObject*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @vectors_export_dialog_free(%struct._VectorsExportDialog* %dialog) #0 {
entry:
  %dialog.addr = alloca %struct._VectorsExportDialog*, align 8
  store %struct._VectorsExportDialog* %dialog, %struct._VectorsExportDialog** %dialog.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._VectorsExportDialog*, %struct._VectorsExportDialog** %dialog.addr, align 8
  %1 = bitcast %struct._VectorsExportDialog* %0 to i8*
  call void @g_slice_free1(i64 24, i8* %1)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind readnone
declare i32 @gtk_true() #1

declare %struct._GtkWidget* @gimp_int_combo_box_new(i8*, i32, ...) #3

declare i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #1

declare void @gtk_file_chooser_set_extra_widget(%struct._GtkFileChooser*, %struct._GtkWidget*) #3

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #3

declare void @g_slice_free1(i64, i8*) #3

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
