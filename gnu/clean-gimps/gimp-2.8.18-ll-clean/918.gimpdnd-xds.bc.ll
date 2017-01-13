; ModuleID = './app/widgets/gimpdnd-xds.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GdkDragContext = type { %struct._GObject, i32, i32, %struct._GdkDrawable*, %struct._GdkDrawable*, %struct._GList*, i32, i32, i32, i32, i8* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GdkDrawable = type { %struct._GObject }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type { %struct._GimpObject, %struct._Gimp*, %struct._GSList*, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugIn*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugInShm*, %struct._GimpInterpreterDB*, %struct._GimpEnvironTable*, %struct._GimpPlugInDebug*, %struct._GList* }
%struct._GimpPlugIn = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GimpPlugInShm = type opaque
%struct._GimpInterpreterDB = type opaque
%struct._GimpEnvironTable = type opaque
%struct._GimpPlugInDebug = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpContext = type opaque
%struct._GdkAtom = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GtkSelectionData = type { %struct._GdkAtom*, %struct._GdkAtom*, %struct._GdkAtom*, i32, i8*, i32, %struct._GdkDisplay* }
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkDisplayPointerHooks = type { void (%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, %struct._GdkDrawable*, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, i32*, i32*)* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._GdkGC = type { %struct._GObject, i32, i32, i32, i32, %struct._GdkColormap* }
%struct._GdkColormap = type { %struct._GObject, i32, %struct._GdkColor*, %struct._GdkVisual*, i8* }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkVisual = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._cairo_font_options = type opaque
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct._GimpPlugInProcedure = type opaque
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GtkStyle = type { %struct._GObject, [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], %struct._GdkColor, %struct._GdkColor, %struct._PangoFontDescription*, i32, i32, [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], %struct._GdkGC*, %struct._GdkGC*, [5 x %struct._GdkDrawable*], i32, i32, %struct._GdkColormap*, %struct._GdkFont*, %struct._PangoFontDescription*, %struct._GtkRcStyle*, %struct._GSList*, %struct._GArray*, %struct._GSList* }
%struct._GdkFont = type opaque
%struct._PangoFontDescription = type opaque
%struct._GtkRcStyle = type { %struct._GObject, i8*, [5 x i8*], %struct._PangoFontDescription*, [5 x i32], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], i32, i32, %struct._GArray*, %struct._GSList*, %struct._GSList*, i8 }
%struct._GArray = type { i8*, i32 }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GimpMessageDialog = type { %struct._GimpDialog, %struct._GimpMessageBox* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpMessageBox = type { %struct._GtkBox, i8*, i32, [3 x %struct._GtkWidget*], %struct._GtkWidget* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_dnd_xds_source_set = private unnamed_addr constant [24 x i8] c"gimp_dnd_xds_source_set\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"GDK_IS_DRAG_CONTEXT (context)\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"image == NULL || GIMP_IS_IMAGE (image)\00", align 1
@gimp_log_flags = external global i32, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"XdndDirectSave0\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"text/plain\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Untitled\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c".xcf\00", align 1
@__func__.gimp_dnd_xds_save_image = private unnamed_addr constant [24 x i8] c"gimp_dnd_xds_save_image\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Saving '%s' failed:\0A\0A%s\00", align 1
@.str.11 = private unnamed_addr constant [59 x i8] c"The given filename does not have any known file extension.\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"File Exists\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"gimp-warning\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"_Replace\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"A file named '%s' already exists.\00", align 1
@.str.17 = private unnamed_addr constant [57 x i8] c"Do you want to replace it with the image you are saving?\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_dnd_xds_source_set(%struct._GdkDragContext* %context, %struct._GimpImage* %image) #0 {
entry:
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %property = alloca %struct._GdkAtom*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %type = alloca %struct._GdkAtom*, align 8
  %filename = alloca i8*, align 8
  %basename = alloca i8*, align 8
  %tmp58 = alloca i8*, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %1 = bitcast %struct._GdkDragContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gdk_drag_context_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_dnd_xds_source_set, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.67

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp12 = icmp eq %struct._GimpImage* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %15 = bitcast %struct._GimpImage* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_image_get_type() #5
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %lor.lhs.false
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type27, align 8
  %22 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %21, %22
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %24 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #6
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %25 = load i32, i32* %__r19, align 4
  store i32 %25, i32* %tmp34
  %26 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %26, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33, %do.body.11
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_dnd_xds_source_set, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.67

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  %27 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %27, 4
  %tobool41 = icmp ne i32 %and, 0
  br i1 %tobool41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %do.body.40
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_dnd_xds_source_set, i32 0, i32 0), i32 78, i8* null)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %do.body.40
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %call45 = call %struct._GdkAtom* @gdk_atom_intern_static_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GdkAtom* %call45, %struct._GdkAtom** %property, align 8
  %28 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %tobool46 = icmp ne %struct._GimpImage* %28, null
  br i1 %tobool46, label %if.then.47, label %if.else.65

if.then.47:                                       ; preds = %do.end.44
  %call49 = call %struct._GdkAtom* @gdk_atom_intern_static_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GdkAtom* %call49, %struct._GdkAtom** %type, align 8
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call51 = call i8* @gimp_image_get_filename(%struct._GimpImage* %29)
  store i8* %call51, i8** %filename, align 8
  %30 = load i8*, i8** %filename, align 8
  %tobool53 = icmp ne i8* %30, null
  br i1 %tobool53, label %if.then.54, label %if.else.56

if.then.54:                                       ; preds = %if.then.47
  %31 = load i8*, i8** %filename, align 8
  %call55 = call noalias i8* @g_path_get_basename(i8* %31)
  store i8* %call55, i8** %basename, align 8
  br label %if.end.62

if.else.56:                                       ; preds = %if.then.47
  %call59 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0)) #7
  %call60 = call noalias i8* (i8*, ...) @g_strconcat(i8* %call59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* null)
  store i8* %call60, i8** %tmp58, align 8
  %32 = load i8*, i8** %tmp58, align 8
  %call61 = call noalias i8* @g_filename_from_utf8(i8* %32, i64 -1, i64* null, i64* null, %struct._GError** null)
  store i8* %call61, i8** %basename, align 8
  %33 = load i8*, i8** %tmp58, align 8
  call void @g_free(i8* %33)
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.56, %if.then.54
  %34 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %source_window = getelementptr inbounds %struct._GdkDragContext, %struct._GdkDragContext* %34, i32 0, i32 3
  %35 = load %struct._GdkDrawable*, %struct._GdkDrawable** %source_window, align 8
  %36 = load %struct._GdkAtom*, %struct._GdkAtom** %property, align 8
  %37 = load %struct._GdkAtom*, %struct._GdkAtom** %type, align 8
  %38 = load i8*, i8** %basename, align 8
  %39 = load i8*, i8** %basename, align 8
  %tobool63 = icmp ne i8* %39, null
  br i1 %tobool63, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.62
  %40 = load i8*, i8** %basename, align 8
  %call64 = call i64 @strlen(i8* %40) #6
  br label %cond.end

cond.false:                                       ; preds = %if.end.62
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call64, %cond.true ], [ 0, %cond.false ]
  %conv = trunc i64 %cond to i32
  call void @gdk_property_change(%struct._GdkDrawable* %35, %struct._GdkAtom* %36, %struct._GdkAtom* %37, i32 8, i32 0, i8* %38, i32 %conv)
  %41 = load i8*, i8** %basename, align 8
  call void @g_free(i8* %41)
  %42 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %42)
  br label %if.end.67

if.else.65:                                       ; preds = %do.end.44
  %43 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %source_window66 = getelementptr inbounds %struct._GdkDragContext, %struct._GdkDragContext* %43, i32 0, i32 3
  %44 = load %struct._GdkDrawable*, %struct._GdkDrawable** %source_window66, align 8
  %45 = load %struct._GdkAtom*, %struct._GdkAtom** %property, align 8
  call void @gdk_property_delete(%struct._GdkDrawable* %44, %struct._GdkAtom* %45)
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.9, %if.else.37, %if.else.65, %cond.end
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gdk_drag_context_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

declare void @gimp_log(i32, i8*, i32, i8*, ...) #3

declare %struct._GdkAtom* @gdk_atom_intern_static_string(i8*) #3

declare i8* @gimp_image_get_filename(%struct._GimpImage*) #3

declare noalias i8* @g_path_get_basename(i8*) #3

declare noalias i8* @g_strconcat(i8*, ...) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare noalias i8* @g_filename_from_utf8(i8*, i64, i64*, i64*, %struct._GError**) #3

declare void @g_free(i8*) #3

declare void @gdk_property_change(%struct._GdkDrawable*, %struct._GdkAtom*, %struct._GdkAtom*, i32, i32, i8*, i32) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare void @gdk_property_delete(%struct._GdkDrawable*, %struct._GdkAtom*) #3

; Function Attrs: nounwind uwtable
define void @gimp_dnd_xds_save_image(%struct._GdkDragContext* %context, %struct._GimpImage* %image, %struct._GtkSelectionData* %selection) #0 {
entry:
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %selection.addr = alloca %struct._GtkSelectionData*, align 8
  %proc = alloca %struct._GimpPlugInProcedure*, align 8
  %property = alloca %struct._GdkAtom*, align 8
  %type = alloca %struct._GdkAtom*, align 8
  %length = alloca i32, align 4
  %data = alloca i8*, align 8
  %uri = alloca i8*, align 8
  %export = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %filename = alloca i8*, align 8
  %filename81 = alloca i8*, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GtkSelectionData* %selection, %struct._GtkSelectionData** %selection.addr, align 8
  store i32 0, i32* %export, align 4
  store %struct._GError* null, %struct._GError** %error, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %1 = bitcast %struct._GdkDragContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gdk_drag_context_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_dnd_xds_save_image, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %14 = bitcast %struct._GimpImage* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_image_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_dnd_xds_save_image, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %26, 4
  %tobool40 = icmp ne i32 %and, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %do.body.39
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_dnd_xds_save_image, i32 0, i32 0), i32 131, i8* null)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %do.body.39
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  %call44 = call %struct._GdkAtom* @gdk_atom_intern_static_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GdkAtom* %call44, %struct._GdkAtom** %property, align 8
  %call45 = call %struct._GdkAtom* @gdk_atom_intern_static_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GdkAtom* %call45, %struct._GdkAtom** %type, align 8
  %27 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %source_window = getelementptr inbounds %struct._GdkDragContext, %struct._GdkDragContext* %27, i32 0, i32 3
  %28 = load %struct._GdkDrawable*, %struct._GdkDrawable** %source_window, align 8
  %29 = load %struct._GdkAtom*, %struct._GdkAtom** %property, align 8
  %30 = load %struct._GdkAtom*, %struct._GdkAtom** %type, align 8
  %call46 = call i32 @gdk_property_get(%struct._GdkDrawable* %28, %struct._GdkAtom* %29, %struct._GdkAtom* %30, i64 0, i64 4096, i32 0, %struct._GdkAtom** null, i32* null, i32* %length, i8** %data)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.end.49, label %if.then.48

if.then.48:                                       ; preds = %do.end.43
  br label %return

if.end.49:                                        ; preds = %do.end.43
  %31 = load i8*, i8** %data, align 8
  %32 = load i32, i32* %length, align 4
  %conv = sext i32 %32 to i64
  %call50 = call noalias i8* @g_strndup(i8* %31, i64 %conv)
  store i8* %call50, i8** %uri, align 8
  %33 = load i8*, i8** %data, align 8
  call void @g_free(i8* %33)
  %34 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %34, i32 0, i32 1
  %35 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %35, i32 0, i32 25
  %36 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %save_procs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %36, i32 0, i32 6
  %37 = load %struct._GSList*, %struct._GSList** %save_procs, align 8
  %38 = load i8*, i8** %uri, align 8
  %call51 = call %struct._GimpPlugInProcedure* @file_procedure_find(%struct._GSList* %37, i8* %38, %struct._GError** null)
  store %struct._GimpPlugInProcedure* %call51, %struct._GimpPlugInProcedure** %proc, align 8
  %39 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %tobool52 = icmp ne %struct._GimpPlugInProcedure* %39, null
  br i1 %tobool52, label %if.end.57, label %if.then.53

if.then.53:                                       ; preds = %if.end.49
  %40 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp54 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %40, i32 0, i32 1
  %41 = load %struct._Gimp*, %struct._Gimp** %gimp54, align 8
  %plug_in_manager55 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %41, i32 0, i32 25
  %42 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager55, align 8
  %export_procs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %42, i32 0, i32 7
  %43 = load %struct._GSList*, %struct._GSList** %export_procs, align 8
  %44 = load i8*, i8** %uri, align 8
  %call56 = call %struct._GimpPlugInProcedure* @file_procedure_find(%struct._GSList* %43, i8* %44, %struct._GError** null)
  store %struct._GimpPlugInProcedure* %call56, %struct._GimpPlugInProcedure** %proc, align 8
  store i32 1, i32* %export, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.53, %if.end.49
  %45 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %tobool58 = icmp ne %struct._GimpPlugInProcedure* %45, null
  br i1 %tobool58, label %if.then.59, label %if.else.88

if.then.59:                                       ; preds = %if.end.57
  %46 = load i8*, i8** %uri, align 8
  %call61 = call i8* @file_utils_filename_from_uri(i8* %46)
  store i8* %call61, i8** %filename, align 8
  %47 = load i8*, i8** %filename, align 8
  %tobool62 = icmp ne i8* %47, null
  br i1 %tobool62, label %lor.lhs.false, label %if.then.68

lor.lhs.false:                                    ; preds = %if.then.59
  %48 = load i8*, i8** %filename, align 8
  %call63 = call i32 @g_file_test(i8* %48, i32 16)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %lor.lhs.false.65, label %if.then.68

lor.lhs.false.65:                                 ; preds = %lor.lhs.false
  %49 = load i8*, i8** %uri, align 8
  %call66 = call i32 @gimp_file_overwrite_dialog(%struct._GtkWidget* null, i8* %49)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.then.68, label %if.end.87

if.then.68:                                       ; preds = %lor.lhs.false.65, %lor.lhs.false, %if.then.59
  %50 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp69 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %50, i32 0, i32 1
  %51 = load %struct._Gimp*, %struct._Gimp** %gimp69, align 8
  %52 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %53 = load i8*, i8** %uri, align 8
  %54 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %proc, align 8
  %55 = load i32, i32* %export, align 4
  %tobool70 = icmp ne i32 %55, 0
  %lnot = xor i1 %tobool70, true
  %lnot.ext = zext i1 %lnot to i32
  %56 = load i32, i32* %export, align 4
  %call71 = call i32 @file_save(%struct._Gimp* %51, %struct._GimpImage* %52, %struct._GimpProgress* null, i8* %53, %struct._GimpPlugInProcedure* %54, i32 0, i32 %lnot.ext, i32 0, i32 %56, %struct._GError** %error)
  %cmp72 = icmp eq i32 %call71, 3
  br i1 %cmp72, label %if.then.74, label %if.else.76

if.then.74:                                       ; preds = %if.then.68
  %57 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %58 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call75 = call %struct._GdkAtom* @gtk_selection_data_get_target(%struct._GtkSelectionData* %58)
  call void @gtk_selection_data_set(%struct._GtkSelectionData* %57, %struct._GdkAtom* %call75, i32 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i32 1)
  br label %if.end.86

if.else.76:                                       ; preds = %if.then.68
  %59 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %60 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call77 = call %struct._GdkAtom* @gtk_selection_data_get_target(%struct._GtkSelectionData* %60)
  call void @gtk_selection_data_set(%struct._GtkSelectionData* %59, %struct._GdkAtom* %call77, i32 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i32 1)
  %61 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool78 = icmp ne %struct._GError* %61, null
  br i1 %tobool78, label %if.then.79, label %if.end.85

if.then.79:                                       ; preds = %if.else.76
  %62 = load i8*, i8** %uri, align 8
  %call82 = call i8* @file_utils_uri_display_name(i8* %62)
  store i8* %call82, i8** %filename81, align 8
  %63 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp83 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %63, i32 0, i32 1
  %64 = load %struct._Gimp*, %struct._Gimp** %gimp83, align 8
  %call84 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0)) #7
  %65 = load i8*, i8** %filename81, align 8
  %66 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %66, i32 0, i32 2
  %67 = load i8*, i8** %message, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %64, %struct._GObject* null, i32 2, i8* %call84, i8* %65, i8* %67)
  %68 = load i8*, i8** %filename81, align 8
  call void @g_free(i8* %68)
  %69 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %69)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.79, %if.else.76
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then.74
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %lor.lhs.false.65
  %70 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %70)
  br label %if.end.92

if.else.88:                                       ; preds = %if.end.57
  %71 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %72 = load %struct._GtkSelectionData*, %struct._GtkSelectionData** %selection.addr, align 8
  %call89 = call %struct._GdkAtom* @gtk_selection_data_get_target(%struct._GtkSelectionData* %72)
  call void @gtk_selection_data_set(%struct._GtkSelectionData* %71, %struct._GdkAtom* %call89, i32 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i32 1)
  %73 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp90 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %73, i32 0, i32 1
  %74 = load %struct._Gimp*, %struct._Gimp** %gimp90, align 8
  %call91 = call i8* @gettext(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.11, i32 0, i32 0)) #7
  call void @gimp_message_literal(%struct._Gimp* %74, %struct._GObject* null, i32 2, i8* %call91)
  br label %if.end.92

if.end.92:                                        ; preds = %if.else.88, %if.end.87
  %75 = load i8*, i8** %uri, align 8
  call void @g_free(i8* %75)
  br label %return

return:                                           ; preds = %if.end.92, %if.then.48, %if.else.36, %if.else.9
  ret void
}

declare i32 @gdk_property_get(%struct._GdkDrawable*, %struct._GdkAtom*, %struct._GdkAtom*, i64, i64, i32, %struct._GdkAtom**, i32*, i32*, i8**) #3

declare noalias i8* @g_strndup(i8*, i64) #3

declare %struct._GimpPlugInProcedure* @file_procedure_find(%struct._GSList*, i8*, %struct._GError**) #3

declare i8* @file_utils_filename_from_uri(i8*) #3

declare i32 @g_file_test(i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @gimp_file_overwrite_dialog(%struct._GtkWidget* %parent, i8* %uri) #0 {
entry:
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %uri.addr = alloca i8*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %filename = alloca i8*, align 8
  %overwrite = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst31 = alloca %struct._GTypeInstance*, align 8
  %__t33 = alloca i64, align 8
  %__r36 = alloca i32, align 4
  %tmp52 = alloca i32, align 4
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  store i8* %uri, i8** %uri.addr, align 8
  store i32 0, i32* %overwrite, align 4
  %call = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0)) #7
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0)) #7
  %call2 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_message_dialog_new(i8* %call, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), %struct._GtkWidget* %0, i32 2, void (i8*, i8*)* @gimp_standard_help_func, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 -6, i8* %call1, i32 -5, i8* null)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %dialog, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_dialog_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call3)
  %3 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %3, i32 -5, i32 -6, i32 -1)
  %4 = load i8*, i8** %uri.addr, align 8
  %call5 = call i8* @file_utils_uri_display_name(i8* %4)
  store i8* %call5, i8** %filename, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_message_dialog_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call6)
  %7 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpMessageDialog*
  %box = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %7, i32 0, i32 1
  %8 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i32 0, i32 0)) #7
  %9 = load i8*, i8** %filename, align 8
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_primary_text(%struct._GimpMessageBox* %8, i8* %call8, i8* %9)
  %10 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %10)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_message_dialog_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call9)
  %13 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpMessageDialog*
  %box11 = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %13, i32 0, i32 1
  %14 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box11, align 8
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.17, i32 0, i32 0)) #7
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_text(%struct._GimpMessageBox* %14, i8* %call12)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst, align 8
  %call13 = call i64 @gtk_dialog_get_type() #5
  store i64 %call13, i64* %__t, align 8
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %17, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.19

if.else:                                          ; preds = %entry
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool14 = icmp ne %struct._GTypeClass* %19, null
  br i1 %tobool14, label %land.lhs.true, label %if.else.17

land.lhs.true:                                    ; preds = %if.else
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class15 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class15, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type, align 8
  %23 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %22, %23
  br i1 %cmp, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.17:                                       ; preds = %land.lhs.true, %if.else
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %25 = load i64, i64* %__t, align 8
  %call18 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %24, i64 %25) #6
  store i32 %call18, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.17, %if.then.16
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %if.then
  %26 = load i32, i32* %__r, align 4
  store i32 %26, i32* %tmp
  %27 = load i32, i32* %tmp
  %tobool20 = icmp ne i32 %27, 0
  br i1 %tobool20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %if.end.19
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_dialog_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call22)
  %30 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkDialog*
  call void @gtk_dialog_set_response_sensitive(%struct._GtkDialog* %30, i32 -6, i32 0)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %if.end.19
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %32 = bitcast %struct._GtkWidget* %31 to i8*
  %call25 = call i8* @g_object_ref(i8* %32)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_dialog_get_type() #5
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call26)
  %35 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpDialog*
  %call28 = call i32 @gimp_dialog_run(%struct._GimpDialog* %35)
  %cmp29 = icmp eq i32 %call28, -5
  %conv = zext i1 %cmp29 to i32
  store i32 %conv, i32* %overwrite, align 4
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %36)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %38 = bitcast %struct._GtkWidget* %37 to i8*
  call void @g_object_unref(i8* %38)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %40, %struct._GTypeInstance** %__inst31, align 8
  %call34 = call i64 @gtk_dialog_get_type() #5
  store i64 %call34, i64* %__t33, align 8
  %41 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst31, align 8
  %tobool37 = icmp ne %struct._GTypeInstance* %41, null
  br i1 %tobool37, label %if.else.39, label %if.then.38

if.then.38:                                       ; preds = %if.end.24
  store i32 0, i32* %__r36, align 4
  br label %if.end.51

if.else.39:                                       ; preds = %if.end.24
  %42 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst31, align 8
  %g_class40 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %42, i32 0, i32 0
  %43 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class40, align 8
  %tobool41 = icmp ne %struct._GTypeClass* %43, null
  br i1 %tobool41, label %land.lhs.true.42, label %if.else.48

land.lhs.true.42:                                 ; preds = %if.else.39
  %44 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst31, align 8
  %g_class43 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %44, i32 0, i32 0
  %45 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class43, align 8
  %g_type44 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %45, i32 0, i32 0
  %46 = load i64, i64* %g_type44, align 8
  %47 = load i64, i64* %__t33, align 8
  %cmp45 = icmp eq i64 %46, %47
  br i1 %cmp45, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %land.lhs.true.42
  store i32 1, i32* %__r36, align 4
  br label %if.end.50

if.else.48:                                       ; preds = %land.lhs.true.42, %if.else.39
  %48 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst31, align 8
  %49 = load i64, i64* %__t33, align 8
  %call49 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %48, i64 %49) #6
  store i32 %call49, i32* %__r36, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.48, %if.then.47
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then.38
  %50 = load i32, i32* %__r36, align 4
  store i32 %50, i32* %tmp52
  %51 = load i32, i32* %tmp52
  %tobool53 = icmp ne i32 %51, 0
  br i1 %tobool53, label %if.then.54, label %if.end.57

if.then.54:                                       ; preds = %if.end.51
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_dialog_get_type() #5
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call55)
  %54 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkDialog*
  call void @gtk_dialog_set_response_sensitive(%struct._GtkDialog* %54, i32 -6, i32 1)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.54, %if.end.51
  %55 = load i32, i32* %overwrite, align 4
  ret i32 %55
}

declare i32 @file_save(%struct._Gimp*, %struct._GimpImage*, %struct._GimpProgress*, i8*, %struct._GimpPlugInProcedure*, i32, i32, i32, i32, %struct._GError**) #3

declare void @gtk_selection_data_set(%struct._GtkSelectionData*, %struct._GdkAtom*, i32, i8*, i32) #3

declare %struct._GdkAtom* @gtk_selection_data_get_target(%struct._GtkSelectionData*) #3

declare i8* @file_utils_uri_display_name(i8*) #3

declare void @gimp_message(%struct._Gimp*, %struct._GObject*, i32, i8*, ...) #3

declare void @g_error_free(%struct._GError*) #3

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #3

declare %struct._GtkWidget* @gimp_message_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #3

declare void @gimp_standard_help_func(i8*, i8*) #3

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #1

declare void @gimp_message_box_set_primary_text(%struct._GimpMessageBox*, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_message_dialog_get_type() #1

declare void @gimp_message_box_set_text(%struct._GimpMessageBox*, i8*, ...) #3

declare void @gtk_dialog_set_response_sensitive(%struct._GtkDialog*, i32, i32) #3

declare i8* @g_object_ref(i8*) #3

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #3

declare void @g_object_unref(i8*) #3

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
