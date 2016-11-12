; ModuleID = './app/dialogs/data-delete-dialog.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpDataFactory = type { %struct._GimpObject, %struct._GimpDataFactoryPriv* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpDataFactoryPriv = type opaque
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
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
%struct._DataDeleteDialog = type { %struct._GimpDataFactory*, %struct._GimpData*, %struct._GimpContext*, %struct._GtkWidget* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpMessageDialog = type { %struct._GimpDialog, %struct._GimpMessageBox* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpMessageBox = type { %struct._GtkBox, i8*, i32, [3 x %struct._GtkWidget*], %struct._GtkWidget* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GError = type { i32, i32, i8* }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Dialogs\00", align 1
@__func__.data_delete_dialog_new = private unnamed_addr constant [23 x i8] c"data_delete_dialog_new\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"GIMP_IS_DATA_FACTORY (factory)\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GIMP_IS_DATA (data)\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"context == NULL || GIMP_IS_CONTEXT (context)\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"GTK_IS_WIDGET (parent)\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Delete Object\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"gtk-delete\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"disconnect\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Delete '%s'?\00", align 1
@.str.11 = private unnamed_addr constant [74 x i8] c"Are you sure you want to remove '%s' from the list and delete it on disk?\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @data_delete_dialog_new(%struct._GimpDataFactory* %factory, %struct._GimpData* %data, %struct._GimpContext* %context, %struct._GtkWidget* %parent) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %factory.addr = alloca %struct._GimpDataFactory*, align 8
  %data.addr = alloca %struct._GimpData*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %delete_data = alloca %struct._DataDeleteDialog*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst42 = alloca %struct._GTypeInstance*, align 8
  %__t44 = alloca i64, align 8
  %__r47 = alloca i32, align 4
  %tmp62 = alloca i32, align 4
  %__inst70 = alloca %struct._GTypeInstance*, align 8
  %__t72 = alloca i64, align 8
  %__r75 = alloca i32, align 4
  %tmp90 = alloca i32, align 4
  store %struct._GimpDataFactory* %factory, %struct._GimpDataFactory** %factory.addr, align 8
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %1 = bitcast %struct._GimpDataFactory* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_data_factory_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.data_delete_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %14 = bitcast %struct._GimpData* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_data_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.data_delete_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %cmp40 = icmp eq %struct._GimpContext* %26, null
  br i1 %cmp40, label %if.then.64, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.39
  %27 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %28 = bitcast %struct._GimpContext* %27 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %28, %struct._GTypeInstance** %__inst42, align 8
  %call45 = call i64 @gimp_context_get_type() #5
  store i64 %call45, i64* %__t44, align 8
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %tobool48 = icmp ne %struct._GTypeInstance* %29, null
  br i1 %tobool48, label %if.else.50, label %if.then.49

if.then.49:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r47, align 4
  br label %if.end.61

if.else.50:                                       ; preds = %lor.lhs.false
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %g_class51 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class51, align 8
  %tobool52 = icmp ne %struct._GTypeClass* %31, null
  br i1 %tobool52, label %land.lhs.true.53, label %if.else.58

land.lhs.true.53:                                 ; preds = %if.else.50
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %g_class54 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class54, align 8
  %g_type55 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type55, align 8
  %35 = load i64, i64* %__t44, align 8
  %cmp56 = icmp eq i64 %34, %35
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %land.lhs.true.53
  store i32 1, i32* %__r47, align 4
  br label %if.end.60

if.else.58:                                       ; preds = %land.lhs.true.53, %if.else.50
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %37 = load i64, i64* %__t44, align 8
  %call59 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %36, i64 %37) #6
  store i32 %call59, i32* %__r47, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.58, %if.then.57
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.49
  %38 = load i32, i32* %__r47, align 4
  store i32 %38, i32* %tmp62
  %39 = load i32, i32* %tmp62
  %tobool63 = icmp ne i32 %39, 0
  br i1 %tobool63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %if.end.61, %do.body.39
  br label %if.end.66

if.else.65:                                       ; preds = %if.end.61
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.data_delete_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.66:                                        ; preds = %if.then.64
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  br label %do.body.68

do.body.68:                                       ; preds = %do.end.67
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %41, %struct._GTypeInstance** %__inst70, align 8
  %call73 = call i64 @gtk_widget_get_type() #5
  store i64 %call73, i64* %__t72, align 8
  %42 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst70, align 8
  %tobool76 = icmp ne %struct._GTypeInstance* %42, null
  br i1 %tobool76, label %if.else.78, label %if.then.77

if.then.77:                                       ; preds = %do.body.68
  store i32 0, i32* %__r75, align 4
  br label %if.end.89

if.else.78:                                       ; preds = %do.body.68
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst70, align 8
  %g_class79 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %43, i32 0, i32 0
  %44 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class79, align 8
  %tobool80 = icmp ne %struct._GTypeClass* %44, null
  br i1 %tobool80, label %land.lhs.true.81, label %if.else.86

land.lhs.true.81:                                 ; preds = %if.else.78
  %45 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst70, align 8
  %g_class82 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %45, i32 0, i32 0
  %46 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class82, align 8
  %g_type83 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %46, i32 0, i32 0
  %47 = load i64, i64* %g_type83, align 8
  %48 = load i64, i64* %__t72, align 8
  %cmp84 = icmp eq i64 %47, %48
  br i1 %cmp84, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %land.lhs.true.81
  store i32 1, i32* %__r75, align 4
  br label %if.end.88

if.else.86:                                       ; preds = %land.lhs.true.81, %if.else.78
  %49 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst70, align 8
  %50 = load i64, i64* %__t72, align 8
  %call87 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %49, i64 %50) #6
  store i32 %call87, i32* %__r75, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.86, %if.then.85
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then.77
  %51 = load i32, i32* %__r75, align 4
  store i32 %51, i32* %tmp90
  %52 = load i32, i32* %tmp90
  %tobool91 = icmp ne i32 %52, 0
  br i1 %tobool91, label %if.then.92, label %if.else.93

if.then.92:                                       ; preds = %if.end.89
  br label %if.end.94

if.else.93:                                       ; preds = %if.end.89
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.data_delete_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.94:                                        ; preds = %if.then.92
  br label %do.end.95

do.end.95:                                        ; preds = %if.end.94
  %call96 = call noalias i8* @g_slice_alloc0(i64 32)
  %53 = bitcast i8* %call96 to %struct._DataDeleteDialog*
  store %struct._DataDeleteDialog* %53, %struct._DataDeleteDialog** %delete_data, align 8
  %54 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory.addr, align 8
  %55 = load %struct._DataDeleteDialog*, %struct._DataDeleteDialog** %delete_data, align 8
  %factory97 = getelementptr inbounds %struct._DataDeleteDialog, %struct._DataDeleteDialog* %55, i32 0, i32 0
  store %struct._GimpDataFactory* %54, %struct._GimpDataFactory** %factory97, align 8
  %56 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %57 = load %struct._DataDeleteDialog*, %struct._DataDeleteDialog** %delete_data, align 8
  %data98 = getelementptr inbounds %struct._DataDeleteDialog, %struct._DataDeleteDialog* %57, i32 0, i32 1
  store %struct._GimpData* %56, %struct._GimpData** %data98, align 8
  %58 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %59 = load %struct._DataDeleteDialog*, %struct._DataDeleteDialog** %delete_data, align 8
  %context99 = getelementptr inbounds %struct._DataDeleteDialog, %struct._DataDeleteDialog* %59, i32 0, i32 2
  store %struct._GimpContext* %58, %struct._GimpContext** %context99, align 8
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %61 = load %struct._DataDeleteDialog*, %struct._DataDeleteDialog** %delete_data, align 8
  %parent100 = getelementptr inbounds %struct._DataDeleteDialog, %struct._DataDeleteDialog* %61, i32 0, i32 3
  store %struct._GtkWidget* %60, %struct._GtkWidget** %parent100, align 8
  %call101 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0)) #7
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %call102 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %62)
  %call103 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_message_dialog_new(i8* %call101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), %struct._GtkWidget* %call102, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call103, %struct._GtkWidget** %dialog, align 8
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  %call104 = call i64 @gtk_dialog_get_type() #5
  %call105 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call104)
  %65 = bitcast %struct._GTypeInstance* %call105 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %65, i32 -5, i32 -6, i32 -1)
  %66 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %67 = bitcast %struct._GimpData* %66 to i8*
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %69 = bitcast %struct._GtkWidget* %68 to i8*
  %call106 = call i64 @g_signal_connect_object(i8* %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @gtk_widget_destroy to void ()*), i8* %69, i32 2)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %71 = bitcast %struct._GtkWidget* %70 to i8*
  %72 = load %struct._DataDeleteDialog*, %struct._DataDeleteDialog** %delete_data, align 8
  %73 = bitcast %struct._DataDeleteDialog* %72 to i8*
  %call107 = call i64 @g_signal_connect_data(i8* %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._DataDeleteDialog*)* @data_delete_dialog_response to void ()*), i8* %73, void (i8*, %struct._GClosure*)* null, i32 0)
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %75 = bitcast %struct._GtkWidget* %74 to %struct._GTypeInstance*
  %call108 = call i64 @gimp_message_dialog_get_type() #5
  %call109 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call108)
  %76 = bitcast %struct._GTypeInstance* %call109 to %struct._GimpMessageDialog*
  %box = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %76, i32 0, i32 1
  %77 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %call110 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0)) #7
  %78 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %79 = bitcast %struct._GimpData* %78 to i8*
  %call111 = call i8* @gimp_object_get_name(i8* %79)
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_primary_text(%struct._GimpMessageBox* %77, i8* %call110, i8* %call111)
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call112 = call i64 @gimp_message_dialog_get_type() #5
  %call113 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call112)
  %82 = bitcast %struct._GTypeInstance* %call113 to %struct._GimpMessageDialog*
  %box114 = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %82, i32 0, i32 1
  %83 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box114, align 8
  %call115 = call i8* @gettext(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.11, i32 0, i32 0)) #7
  %84 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %85 = bitcast %struct._GimpData* %84 to i8*
  %call116 = call i8* @gimp_object_get_name(i8* %85)
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_text(%struct._GimpMessageBox* %83, i8* %call115, i8* %call116)
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  store %struct._GtkWidget* %86, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.95, %if.else.93, %if.else.65, %if.else.36, %if.else.9
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %87
}

; Function Attrs: nounwind readnone
declare i64 @gimp_data_factory_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_data_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #1

declare noalias i8* @g_slice_alloc0(i64) #3

declare %struct._GtkWidget* @gimp_message_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #3

declare void @gimp_standard_help_func(i8*, i8*) #3

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @data_delete_dialog_response(%struct._GtkWidget* %dialog, i32 %response_id, %struct._DataDeleteDialog* %delete_data) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %delete_data.addr = alloca %struct._DataDeleteDialog*, align 8
  %factory = alloca %struct._GimpDataFactory*, align 8
  %data = alloca %struct._GimpData*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %new_active = alloca %struct._GimpObject*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._DataDeleteDialog* %delete_data, %struct._DataDeleteDialog** %delete_data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %0)
  %1 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %1, -5
  br i1 %cmp, label %if.then, label %if.end.24

if.then:                                          ; preds = %entry
  %2 = load %struct._DataDeleteDialog*, %struct._DataDeleteDialog** %delete_data.addr, align 8
  %factory1 = getelementptr inbounds %struct._DataDeleteDialog, %struct._DataDeleteDialog* %2, i32 0, i32 0
  %3 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory1, align 8
  store %struct._GimpDataFactory* %3, %struct._GimpDataFactory** %factory, align 8
  %4 = load %struct._DataDeleteDialog*, %struct._DataDeleteDialog** %delete_data.addr, align 8
  %data2 = getelementptr inbounds %struct._DataDeleteDialog, %struct._DataDeleteDialog* %4, i32 0, i32 1
  %5 = load %struct._GimpData*, %struct._GimpData** %data2, align 8
  store %struct._GimpData* %5, %struct._GimpData** %data, align 8
  store %struct._GimpObject* null, %struct._GimpObject** %new_active, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %6 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %call = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %6)
  store %struct._GimpContainer* %call, %struct._GimpContainer** %container, align 8
  %7 = load %struct._DataDeleteDialog*, %struct._DataDeleteDialog** %delete_data.addr, align 8
  %context = getelementptr inbounds %struct._DataDeleteDialog, %struct._DataDeleteDialog* %7, i32 0, i32 2
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %8, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %9 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %10 = bitcast %struct._GimpData* %9 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_object_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call3)
  %11 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpObject*
  %12 = load %struct._DataDeleteDialog*, %struct._DataDeleteDialog** %delete_data.addr, align 8
  %context5 = getelementptr inbounds %struct._DataDeleteDialog, %struct._DataDeleteDialog* %12, i32 0, i32 2
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context5, align 8
  %14 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %call6 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %14)
  %call7 = call %struct._GimpObject* @gimp_context_get_by_type(%struct._GimpContext* %13, i64 %call6)
  %cmp8 = icmp eq %struct._GimpObject* %11, %call7
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %land.lhs.true
  %15 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %16 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %17 = bitcast %struct._GimpData* %16 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_object_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call10)
  %18 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpObject*
  %call12 = call %struct._GimpObject* @gimp_container_get_neighbor_of(%struct._GimpContainer* %15, %struct._GimpObject* %18)
  store %struct._GimpObject* %call12, %struct._GimpObject** %new_active, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.9, %land.lhs.true, %if.then
  %19 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %20 = load %struct._GimpData*, %struct._GimpData** %data, align 8
  %call13 = call i32 @gimp_data_factory_data_delete(%struct._GimpDataFactory* %19, %struct._GimpData* %20, i32 1, %struct._GError** %error)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.18, label %if.then.15

if.then.15:                                       ; preds = %if.end
  %21 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %factory, align 8
  %call16 = call %struct._Gimp* @gimp_data_factory_get_gimp(%struct._GimpDataFactory* %21)
  %22 = load %struct._DataDeleteDialog*, %struct._DataDeleteDialog** %delete_data.addr, align 8
  %parent = getelementptr inbounds %struct._DataDeleteDialog, %struct._DataDeleteDialog* %22, i32 0, i32 3
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 80)
  %25 = bitcast %struct._GTypeInstance* %call17 to %struct._GObject*
  %26 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %26, i32 0, i32 2
  %27 = load i8*, i8** %message, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %call16, %struct._GObject* %25, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* %27)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end
  %28 = load %struct._GimpObject*, %struct._GimpObject** %new_active, align 8
  %tobool19 = icmp ne %struct._GimpObject* %28, null
  br i1 %tobool19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end.18
  %29 = load %struct._DataDeleteDialog*, %struct._DataDeleteDialog** %delete_data.addr, align 8
  %context21 = getelementptr inbounds %struct._DataDeleteDialog, %struct._DataDeleteDialog* %29, i32 0, i32 2
  %30 = load %struct._GimpContext*, %struct._GimpContext** %context21, align 8
  %31 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %call22 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %31)
  %32 = load %struct._GimpObject*, %struct._GimpObject** %new_active, align 8
  call void @gimp_context_set_by_type(%struct._GimpContext* %30, i64 %call22, %struct._GimpObject* %32)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.end.18
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %entry
  br label %do.body

do.body:                                          ; preds = %if.end.24
  %33 = load %struct._DataDeleteDialog*, %struct._DataDeleteDialog** %delete_data.addr, align 8
  %34 = bitcast %struct._DataDeleteDialog* %33 to i8*
  call void @g_slice_free1(i64 32, i8* %34)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare void @gimp_message_box_set_primary_text(%struct._GimpMessageBox*, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_message_dialog_get_type() #1

declare i8* @gimp_object_get_name(i8*) #3

declare void @gimp_message_box_set_text(%struct._GimpMessageBox*, i8*, ...) #3

declare %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #1

declare %struct._GimpObject* @gimp_context_get_by_type(%struct._GimpContext*, i64) #3

declare i64 @gimp_container_get_children_type(%struct._GimpContainer*) #3

declare %struct._GimpObject* @gimp_container_get_neighbor_of(%struct._GimpContainer*, %struct._GimpObject*) #3

declare i32 @gimp_data_factory_data_delete(%struct._GimpDataFactory*, %struct._GimpData*, i32, %struct._GError**) #3

declare void @gimp_message(%struct._Gimp*, %struct._GObject*, i32, i8*, ...) #3

declare %struct._Gimp* @gimp_data_factory_get_gimp(%struct._GimpDataFactory*) #3

declare void @g_clear_error(%struct._GError**) #3

declare void @gimp_context_set_by_type(%struct._GimpContext*, i64, %struct._GimpObject*) #3

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
