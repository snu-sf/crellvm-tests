; ModuleID = './app/dialogs/vectors-import-dialog.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._VectorsImportDialog = type { %struct._GtkWidget*, %struct._GimpImage*, i32, i32 }
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
%struct._GtkFileFilter = type opaque
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
%struct._GtkFileChooser = type opaque
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Dialogs\00", align 1
@__func__.vectors_import_dialog_new = private unnamed_addr constant [26 x i8] c"vectors_import_dialog_new\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"GTK_IS_WIDGET (parent)\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Import Paths from SVG\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"gtk-open\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"gimp-vectors-import\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"disconnect\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"delete-event\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"All files (*.*)\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Scalable SVG image (*.svg)\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"*.[Ss][Vv][Gg]\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"image/svg+xml\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"_Merge imported paths\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"_Scale imported paths to fit image\00", align 1

; Function Attrs: nounwind uwtable
define %struct._VectorsImportDialog* @vectors_import_dialog_new(%struct._GimpImage* %image, %struct._GtkWidget* %parent, i32 %merge_vectors, i32 %scale_vectors) #0 {
entry:
  %retval = alloca %struct._VectorsImportDialog*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %merge_vectors.addr = alloca i32, align 4
  %scale_vectors.addr = alloca i32, align 4
  %dialog = alloca %struct._VectorsImportDialog*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %filter = alloca %struct._GtkFileFilter*, align 8
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
  store i32 %merge_vectors, i32* %merge_vectors.addr, align 4
  store i32 %scale_vectors, i32* %scale_vectors.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.vectors_import_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._VectorsImportDialog* null, %struct._VectorsImportDialog** %retval
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.vectors_import_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  store %struct._VectorsImportDialog* null, %struct._VectorsImportDialog** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %call39 = call noalias i8* @g_slice_alloc0(i64 24)
  %26 = bitcast i8* %call39 to %struct._VectorsImportDialog*
  store %struct._VectorsImportDialog* %26, %struct._VectorsImportDialog** %dialog, align 8
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %28 = load %struct._VectorsImportDialog*, %struct._VectorsImportDialog** %dialog, align 8
  %image40 = getelementptr inbounds %struct._VectorsImportDialog, %struct._VectorsImportDialog* %28, i32 0, i32 1
  store %struct._GimpImage* %27, %struct._GimpImage** %image40, align 8
  %29 = load i32, i32* %merge_vectors.addr, align 4
  %30 = load %struct._VectorsImportDialog*, %struct._VectorsImportDialog** %dialog, align 8
  %merge_vectors41 = getelementptr inbounds %struct._VectorsImportDialog, %struct._VectorsImportDialog* %30, i32 0, i32 2
  store i32 %29, i32* %merge_vectors41, align 4
  %31 = load i32, i32* %scale_vectors.addr, align 4
  %32 = load %struct._VectorsImportDialog*, %struct._VectorsImportDialog** %dialog, align 8
  %scale_vectors42 = getelementptr inbounds %struct._VectorsImportDialog, %struct._VectorsImportDialog* %32, i32 0, i32 3
  store i32 %31, i32* %scale_vectors42, align 4
  %call43 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0)) #7
  %call44 = call %struct._GtkWidget* (i8*, %struct._GtkWindow*, i32, i8*, ...) @gtk_file_chooser_dialog_new(i8* %call43, %struct._GtkWindow* null, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 -5, i8* null)
  %33 = load %struct._VectorsImportDialog*, %struct._VectorsImportDialog** %dialog, align 8
  %dialog45 = getelementptr inbounds %struct._VectorsImportDialog, %struct._VectorsImportDialog* %33, i32 0, i32 0
  store %struct._GtkWidget* %call44, %struct._GtkWidget** %dialog45, align 8
  %34 = load %struct._VectorsImportDialog*, %struct._VectorsImportDialog** %dialog, align 8
  %dialog46 = getelementptr inbounds %struct._VectorsImportDialog, %struct._VectorsImportDialog* %34, i32 0, i32 0
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog46, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_dialog_get_type() #5
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call47)
  %37 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %37, i32 -5, i32 -6, i32 -1)
  %38 = load %struct._VectorsImportDialog*, %struct._VectorsImportDialog** %dialog, align 8
  %dialog49 = getelementptr inbounds %struct._VectorsImportDialog, %struct._VectorsImportDialog* %38, i32 0, i32 0
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog49, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_window_get_type() #5
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call50)
  %41 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkWindow*
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %call52 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %42)
  call void @gtk_window_set_screen(%struct._GtkWindow* %41, %struct._GdkScreen* %call52)
  %43 = load %struct._VectorsImportDialog*, %struct._VectorsImportDialog** %dialog, align 8
  %dialog53 = getelementptr inbounds %struct._VectorsImportDialog, %struct._VectorsImportDialog* %43, i32 0, i32 0
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog53, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_window_get_type() #5
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call54)
  %46 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkWindow*
  call void @gtk_window_set_role(%struct._GtkWindow* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  %47 = load %struct._VectorsImportDialog*, %struct._VectorsImportDialog** %dialog, align 8
  %dialog56 = getelementptr inbounds %struct._VectorsImportDialog, %struct._VectorsImportDialog* %47, i32 0, i32 0
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog56, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_window_get_type() #5
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call57)
  %50 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkWindow*
  call void @gtk_window_set_position(%struct._GtkWindow* %50, i32 2)
  %51 = load %struct._VectorsImportDialog*, %struct._VectorsImportDialog** %dialog, align 8
  %dialog59 = getelementptr inbounds %struct._VectorsImportDialog, %struct._VectorsImportDialog* %51, i32 0, i32 0
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog59, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call60 = call i64 @gtk_dialog_get_type() #5
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call60)
  %54 = bitcast %struct._GTypeInstance* %call61 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %54, i32 -5)
  %55 = load %struct._VectorsImportDialog*, %struct._VectorsImportDialog** %dialog, align 8
  %dialog62 = getelementptr inbounds %struct._VectorsImportDialog, %struct._VectorsImportDialog* %55, i32 0, i32 0
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog62, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 80)
  %58 = bitcast %struct._GTypeInstance* %call63 to %struct._GObject*
  %59 = load %struct._VectorsImportDialog*, %struct._VectorsImportDialog** %dialog, align 8
  %60 = bitcast %struct._VectorsImportDialog* %59 to i8*
  call void @g_object_weak_ref(%struct._GObject* %58, void (i8*, %struct._GObject*)* bitcast (void (%struct._VectorsImportDialog*)* @vectors_import_dialog_free to void (i8*, %struct._GObject*)*), i8* %60)
  %61 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %62 = bitcast %struct._GimpImage* %61 to i8*
  %63 = load %struct._VectorsImportDialog*, %struct._VectorsImportDialog** %dialog, align 8
  %dialog64 = getelementptr inbounds %struct._VectorsImportDialog, %struct._VectorsImportDialog* %63, i32 0, i32 0
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog64, align 8
  %65 = bitcast %struct._GtkWidget* %64 to i8*
  %call65 = call i64 @g_signal_connect_object(i8* %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @gtk_widget_destroy to void ()*), i8* %65, i32 0)
  %66 = load %struct._VectorsImportDialog*, %struct._VectorsImportDialog** %dialog, align 8
  %dialog66 = getelementptr inbounds %struct._VectorsImportDialog, %struct._VectorsImportDialog* %66, i32 0, i32 0
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog66, align 8
  %68 = bitcast %struct._GtkWidget* %67 to i8*
  %call67 = call i64 @g_signal_connect_data(i8* %68, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (i32 ()* @gtk_true to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call68 = call %struct._GtkFileFilter* @gtk_file_filter_new()
  store %struct._GtkFileFilter* %call68, %struct._GtkFileFilter** %filter, align 8
  %69 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %filter, align 8
  %call69 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0)) #7
  call void @gtk_file_filter_set_name(%struct._GtkFileFilter* %69, i8* %call69)
  %70 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %filter, align 8
  call void @gtk_file_filter_add_pattern(%struct._GtkFileFilter* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %71 = load %struct._VectorsImportDialog*, %struct._VectorsImportDialog** %dialog, align 8
  %dialog70 = getelementptr inbounds %struct._VectorsImportDialog, %struct._VectorsImportDialog* %71, i32 0, i32 0
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog70, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_file_chooser_get_type() #5
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call71)
  %74 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkFileChooser*
  %75 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %filter, align 8
  call void @gtk_file_chooser_add_filter(%struct._GtkFileChooser* %74, %struct._GtkFileFilter* %75)
  %call73 = call %struct._GtkFileFilter* @gtk_file_filter_new()
  store %struct._GtkFileFilter* %call73, %struct._GtkFileFilter** %filter, align 8
  %76 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %filter, align 8
  %call74 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0)) #7
  call void @gtk_file_filter_set_name(%struct._GtkFileFilter* %76, i8* %call74)
  %77 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %filter, align 8
  call void @gtk_file_filter_add_pattern(%struct._GtkFileFilter* %77, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0))
  %78 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %filter, align 8
  call void @gtk_file_filter_add_mime_type(%struct._GtkFileFilter* %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0))
  %79 = load %struct._VectorsImportDialog*, %struct._VectorsImportDialog** %dialog, align 8
  %dialog75 = getelementptr inbounds %struct._VectorsImportDialog, %struct._VectorsImportDialog* %79, i32 0, i32 0
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog75, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call76 = call i64 @gtk_file_chooser_get_type() #5
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call76)
  %82 = bitcast %struct._GTypeInstance* %call77 to %struct._GtkFileChooser*
  %83 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %filter, align 8
  call void @gtk_file_chooser_add_filter(%struct._GtkFileChooser* %82, %struct._GtkFileFilter* %83)
  %84 = load %struct._VectorsImportDialog*, %struct._VectorsImportDialog** %dialog, align 8
  %dialog78 = getelementptr inbounds %struct._VectorsImportDialog, %struct._VectorsImportDialog* %84, i32 0, i32 0
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog78, align 8
  %86 = bitcast %struct._GtkWidget* %85 to %struct._GTypeInstance*
  %call79 = call i64 @gtk_file_chooser_get_type() #5
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call79)
  %87 = bitcast %struct._GTypeInstance* %call80 to %struct._GtkFileChooser*
  %88 = load %struct._GtkFileFilter*, %struct._GtkFileFilter** %filter, align 8
  call void @gtk_file_chooser_set_filter(%struct._GtkFileChooser* %87, %struct._GtkFileFilter* %88)
  %call81 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call81, %struct._GtkWidget** %vbox, align 8
  %89 = load %struct._VectorsImportDialog*, %struct._VectorsImportDialog** %dialog, align 8
  %dialog82 = getelementptr inbounds %struct._VectorsImportDialog, %struct._VectorsImportDialog* %89, i32 0, i32 0
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog82, align 8
  %91 = bitcast %struct._GtkWidget* %90 to %struct._GTypeInstance*
  %call83 = call i64 @gtk_file_chooser_get_type() #5
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 %call83)
  %92 = bitcast %struct._GTypeInstance* %call84 to %struct._GtkFileChooser*
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_file_chooser_set_extra_widget(%struct._GtkFileChooser* %92, %struct._GtkWidget* %93)
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %94)
  %call85 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0)) #7
  %call86 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call85)
  store %struct._GtkWidget* %call86, %struct._GtkWidget** %button, align 8
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %96 = bitcast %struct._GtkWidget* %95 to %struct._GTypeInstance*
  %call87 = call i64 @gtk_toggle_button_get_type() #5
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 %call87)
  %97 = bitcast %struct._GTypeInstance* %call88 to %struct._GtkToggleButton*
  %98 = load %struct._VectorsImportDialog*, %struct._VectorsImportDialog** %dialog, align 8
  %merge_vectors89 = getelementptr inbounds %struct._VectorsImportDialog, %struct._VectorsImportDialog* %98, i32 0, i32 2
  %99 = load i32, i32* %merge_vectors89, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %97, i32 %99)
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %101 = bitcast %struct._GtkWidget* %100 to %struct._GTypeInstance*
  %call90 = call i64 @gtk_box_get_type() #5
  %call91 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 %call90)
  %102 = bitcast %struct._GTypeInstance* %call91 to %struct._GtkBox*
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %102, %struct._GtkWidget* %103, i32 0, i32 0, i32 0)
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %104)
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %106 = bitcast %struct._GtkWidget* %105 to i8*
  %107 = load %struct._VectorsImportDialog*, %struct._VectorsImportDialog** %dialog, align 8
  %merge_vectors92 = getelementptr inbounds %struct._VectorsImportDialog, %struct._VectorsImportDialog* %107, i32 0, i32 2
  %108 = bitcast i32* %merge_vectors92 to i8*
  %call93 = call i64 @g_signal_connect_data(i8* %106, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* %108, void (i8*, %struct._GClosure*)* null, i32 0)
  %call94 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i32 0, i32 0)) #7
  %call95 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call94)
  store %struct._GtkWidget* %call95, %struct._GtkWidget** %button, align 8
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %110 = bitcast %struct._GtkWidget* %109 to %struct._GTypeInstance*
  %call96 = call i64 @gtk_toggle_button_get_type() #5
  %call97 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %110, i64 %call96)
  %111 = bitcast %struct._GTypeInstance* %call97 to %struct._GtkToggleButton*
  %112 = load %struct._VectorsImportDialog*, %struct._VectorsImportDialog** %dialog, align 8
  %scale_vectors98 = getelementptr inbounds %struct._VectorsImportDialog, %struct._VectorsImportDialog* %112, i32 0, i32 3
  %113 = load i32, i32* %scale_vectors98, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %111, i32 %113)
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %115 = bitcast %struct._GtkWidget* %114 to %struct._GTypeInstance*
  %call99 = call i64 @gtk_box_get_type() #5
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %115, i64 %call99)
  %116 = bitcast %struct._GTypeInstance* %call100 to %struct._GtkBox*
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %116, %struct._GtkWidget* %117, i32 0, i32 0, i32 0)
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %118)
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %120 = bitcast %struct._GtkWidget* %119 to i8*
  %121 = load %struct._VectorsImportDialog*, %struct._VectorsImportDialog** %dialog, align 8
  %scale_vectors101 = getelementptr inbounds %struct._VectorsImportDialog, %struct._VectorsImportDialog* %121, i32 0, i32 3
  %122 = bitcast i32* %scale_vectors101 to i8*
  %call102 = call i64 @g_signal_connect_data(i8* %120, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* %122, void (i8*, %struct._GClosure*)* null, i32 0)
  %123 = load %struct._VectorsImportDialog*, %struct._VectorsImportDialog** %dialog, align 8
  store %struct._VectorsImportDialog* %123, %struct._VectorsImportDialog** %retval
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  %124 = load %struct._VectorsImportDialog*, %struct._VectorsImportDialog** %retval
  ret %struct._VectorsImportDialog* %124
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

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #1

declare void @gtk_window_set_screen(%struct._GtkWindow*, %struct._GdkScreen*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #1

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #3

declare void @gtk_window_set_role(%struct._GtkWindow*, i8*) #3

declare void @gtk_window_set_position(%struct._GtkWindow*, i32) #3

declare void @gtk_dialog_set_default_response(%struct._GtkDialog*, i32) #3

declare void @g_object_weak_ref(%struct._GObject*, void (i8*, %struct._GObject*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @vectors_import_dialog_free(%struct._VectorsImportDialog* %dialog) #0 {
entry:
  %dialog.addr = alloca %struct._VectorsImportDialog*, align 8
  store %struct._VectorsImportDialog* %dialog, %struct._VectorsImportDialog** %dialog.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._VectorsImportDialog*, %struct._VectorsImportDialog** %dialog.addr, align 8
  %1 = bitcast %struct._VectorsImportDialog* %0 to i8*
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

declare %struct._GtkFileFilter* @gtk_file_filter_new() #3

declare void @gtk_file_filter_set_name(%struct._GtkFileFilter*, i8*) #3

declare void @gtk_file_filter_add_pattern(%struct._GtkFileFilter*, i8*) #3

declare void @gtk_file_chooser_add_filter(%struct._GtkFileChooser*, %struct._GtkFileFilter*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_file_chooser_get_type() #1

declare void @gtk_file_filter_add_mime_type(%struct._GtkFileFilter*, i8*) #3

declare void @gtk_file_chooser_set_filter(%struct._GtkFileChooser*, %struct._GtkFileFilter*) #3

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #3

declare void @gtk_file_chooser_set_extra_widget(%struct._GtkFileChooser*, %struct._GtkWidget*) #3

declare void @gtk_widget_show(%struct._GtkWidget*) #3

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #3

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #1

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #3

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
