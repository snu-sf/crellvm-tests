; ModuleID = './app/dialogs/tips-dialog.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
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
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type opaque
%struct._GimpRGB = type { double, double, double, double }
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
%struct._GimpContext = type opaque
%struct._GimpGuiConfig = type { %struct._GimpDisplayConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayOptions = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpTip = type { i8*, i8* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GtkLinkButton = type { %struct._GtkButton, %struct._GtkLinkButtonPrivate* }
%struct._GtkLinkButtonPrivate = type opaque

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Dialogs\00", align 1
@__func__.tips_dialog_create = private unnamed_addr constant [19 x i8] c"tips_dialog_create\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@tips = internal global %struct._GList* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"tips\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"gimp-tips.xml\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"The GIMP tips file is empty!\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"The GIMP tips file appears to be missing!\00", align 1
@.str.6 = private unnamed_addr constant [68 x i8] c"There should be a file called '%s'. Please check your installation.\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"The GIMP tips file could not be parsed!\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Error while parsing '%s': %s\0A\00", align 1
@current_tip = internal global %struct._GList* null, align 8
@tips_dialog = internal global %struct._GtkWidget* null, align 8
@.str.10 = private unnamed_addr constant [20 x i8] c"GIMP Tip of the Day\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"gimp-tip-of-the-day\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"_Previous Tip\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"gtk-go-back\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"_Next Tip\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"gtk-go-forward\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"gimp-info\00", align 1
@tip_label = internal global %struct._GtkWidget* null, align 8
@.str.19 = private unnamed_addr constant [22 x i8] c"http://docs.gimp.org/\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"Learn more\00", align 1
@more_button = internal global %struct._GtkWidget* null, align 8
@.str.21 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@__func__.tips_dialog_set_tip = private unnamed_addr constant [20 x i8] c"tips_dialog_set_tip\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"tip != NULL\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @tips_dialog_create(%struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %config = alloca %struct._GimpGuiConfig*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  %tips_count = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  %filename = alloca i8*, align 8
  %tip = alloca %struct._GimpTip*, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.tips_dialog_create, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GList*, %struct._GList** @tips, align 8
  %tobool11 = icmp ne %struct._GList* %13, null
  br i1 %tobool11, label %if.end.44, label %if.then.12

if.then.12:                                       ; preds = %do.end
  store %struct._GError* null, %struct._GError** %error, align 8
  %call15 = call i8* @gimp_data_directory() #5
  %call16 = call noalias i8* (i8*, ...) @g_build_filename(i8* %call15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* null)
  store i8* %call16, i8** %filename, align 8
  %14 = load i8*, i8** %filename, align 8
  %call17 = call %struct._GList* @gimp_tips_from_file(i8* %14, %struct._GError** %error)
  store %struct._GList* %call17, %struct._GList** @tips, align 8
  %15 = load %struct._GList*, %struct._GList** @tips, align 8
  %tobool18 = icmp ne %struct._GList* %15, null
  br i1 %tobool18, label %if.else.38, label %if.then.19

if.then.19:                                       ; preds = %if.then.12
  %16 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool21 = icmp ne %struct._GError* %16, null
  br i1 %tobool21, label %if.else.25, label %if.then.22

if.then.22:                                       ; preds = %if.then.19
  %call23 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0)) #7
  %call24 = call %struct._GimpTip* (i8*, i8*, ...) @gimp_tip_new(i8* %call23, i8* null)
  store %struct._GimpTip* %call24, %struct._GimpTip** %tip, align 8
  br label %if.end.36

if.else.25:                                       ; preds = %if.then.19
  %17 = load %struct._GError*, %struct._GError** %error, align 8
  %code = getelementptr inbounds %struct._GError, %struct._GError* %17, i32 0, i32 1
  %18 = load i32, i32* %code, align 4
  %cmp26 = icmp eq i32 %18, 4
  br i1 %cmp26, label %if.then.27, label %if.else.32

if.then.27:                                       ; preds = %if.else.25
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i32 0, i32 0)) #7
  %call29 = call i8* @gettext(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i32 0, i32 0)) #7
  %19 = load i8*, i8** %filename, align 8
  %call30 = call i8* @gimp_filename_to_utf8(i8* %19)
  %call31 = call %struct._GimpTip* (i8*, i8*, ...) @gimp_tip_new(i8* %call28, i8* %call29, i8* %call30)
  store %struct._GimpTip* %call31, %struct._GimpTip** %tip, align 8
  br label %if.end.35

if.else.32:                                       ; preds = %if.else.25
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0)) #7
  %20 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %20, i32 0, i32 2
  %21 = load i8*, i8** %message, align 8
  %call34 = call %struct._GimpTip* (i8*, i8*, ...) @gimp_tip_new(i8* %call33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* %21)
  store %struct._GimpTip* %call34, %struct._GimpTip** %tip, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.32, %if.then.27
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.22
  %22 = load %struct._GList*, %struct._GList** @tips, align 8
  %23 = load %struct._GimpTip*, %struct._GimpTip** %tip, align 8
  %24 = bitcast %struct._GimpTip* %23 to i8*
  %call37 = call %struct._GList* @g_list_prepend(%struct._GList* %22, i8* %24)
  store %struct._GList* %call37, %struct._GList** @tips, align 8
  br label %if.end.43

if.else.38:                                       ; preds = %if.then.12
  %25 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool39 = icmp ne %struct._GError* %25, null
  br i1 %tobool39, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.else.38
  %26 = load i8*, i8** %filename, align 8
  %27 = load %struct._GError*, %struct._GError** %error, align 8
  %message41 = getelementptr inbounds %struct._GError, %struct._GError* %27, i32 0, i32 2
  %28 = load i8*, i8** %message41, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0), i8* %26, i8* %28)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %if.else.38
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end.36
  call void @g_clear_error(%struct._GError** %error)
  %29 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %29)
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %do.end
  %30 = load %struct._GList*, %struct._GList** @tips, align 8
  %call45 = call i32 @g_list_length(%struct._GList* %30)
  store i32 %call45, i32* %tips_count, align 4
  %31 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config46 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %31, i32 0, i32 1
  %32 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config46, align 8
  %33 = bitcast %struct._GimpCoreConfig* %32 to %struct._GTypeInstance*
  %call47 = call i64 @gimp_gui_config_get_type() #5
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call47)
  %34 = bitcast %struct._GTypeInstance* %call48 to %struct._GimpGuiConfig*
  store %struct._GimpGuiConfig* %34, %struct._GimpGuiConfig** %config, align 8
  %35 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %last_tip_shown = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %35, i32 0, i32 33
  %36 = load i32, i32* %last_tip_shown, align 4
  %37 = load i32, i32* %tips_count, align 4
  %cmp49 = icmp sge i32 %36, %37
  br i1 %cmp49, label %if.then.52, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.44
  %38 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %last_tip_shown50 = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %38, i32 0, i32 33
  %39 = load i32, i32* %last_tip_shown50, align 4
  %cmp51 = icmp slt i32 %39, 0
  br i1 %cmp51, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %lor.lhs.false, %if.end.44
  %40 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %last_tip_shown53 = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %40, i32 0, i32 33
  store i32 0, i32* %last_tip_shown53, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %lor.lhs.false
  %41 = load %struct._GList*, %struct._GList** @tips, align 8
  %42 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %last_tip_shown55 = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %42, i32 0, i32 33
  %43 = load i32, i32* %last_tip_shown55, align 4
  %call56 = call %struct._GList* @g_list_nth(%struct._GList* %41, i32 %43)
  store %struct._GList* %call56, %struct._GList** @current_tip, align 8
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** @tips_dialog, align 8
  %tobool57 = icmp ne %struct._GtkWidget* %44, null
  br i1 %tobool57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.54
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** @tips_dialog, align 8
  store %struct._GtkWidget* %45, %struct._GtkWidget** %retval
  br label %return

if.end.59:                                        ; preds = %if.end.54
  %call60 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0)) #7
  %call61 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call60, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* null, i8* null, i8* null)
  store %struct._GtkWidget* %call61, %struct._GtkWidget** @tips_dialog, align 8
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** @tips_dialog, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call62 = call i64 @gtk_dialog_get_type() #5
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call62)
  %48 = bitcast %struct._GTypeInstance* %call63 to %struct._GtkDialog*
  %call64 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0)) #7
  %call65 = call %struct._GtkWidget* @gtk_dialog_add_button(%struct._GtkDialog* %48, i8* %call64, i32 1)
  store %struct._GtkWidget* %call65, %struct._GtkWidget** %button, align 8
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call66 = call i64 @gtk_button_get_type() #5
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call66)
  %51 = bitcast %struct._GTypeInstance* %call67 to %struct._GtkButton*
  %call68 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i32 4)
  call void @gtk_button_set_image(%struct._GtkButton* %51, %struct._GtkWidget* %call68)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** @tips_dialog, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_dialog_get_type() #5
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call69)
  %54 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkDialog*
  %call71 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0)) #7
  %call72 = call %struct._GtkWidget* @gtk_dialog_add_button(%struct._GtkDialog* %54, i8* %call71, i32 2)
  store %struct._GtkWidget* %call72, %struct._GtkWidget** %button, align 8
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call73 = call i64 @gtk_button_get_type() #5
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call73)
  %57 = bitcast %struct._GTypeInstance* %call74 to %struct._GtkButton*
  %call75 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32 4)
  call void @gtk_button_set_image(%struct._GtkButton* %57, %struct._GtkWidget* %call75)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** @tips_dialog, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call76 = call i64 @gtk_dialog_get_type() #5
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call76)
  %60 = bitcast %struct._GTypeInstance* %call77 to %struct._GtkDialog*
  %61 = load i32, i32* %tips_count, align 4
  %cmp78 = icmp sgt i32 %61, 1
  %conv = zext i1 %cmp78 to i32
  call void @gtk_dialog_set_response_sensitive(%struct._GtkDialog* %60, i32 2, i32 %conv)
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** @tips_dialog, align 8
  %63 = bitcast %struct._GtkWidget* %62 to %struct._GTypeInstance*
  %call79 = call i64 @gtk_dialog_get_type() #5
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call79)
  %64 = bitcast %struct._GTypeInstance* %call80 to %struct._GtkDialog*
  %65 = load i32, i32* %tips_count, align 4
  %cmp81 = icmp sgt i32 %65, 1
  %conv82 = zext i1 %cmp81 to i32
  call void @gtk_dialog_set_response_sensitive(%struct._GtkDialog* %64, i32 1, i32 %conv82)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** @tips_dialog, align 8
  %67 = bitcast %struct._GtkWidget* %66 to i8*
  %call83 = call i64 @g_signal_connect_data(i8* %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32)* @tips_dialog_response to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** @tips_dialog, align 8
  %69 = bitcast %struct._GtkWidget* %68 to i8*
  %70 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %71 = bitcast %struct._GimpGuiConfig* %70 to i8*
  %call84 = call i64 @g_signal_connect_data(i8* %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpGuiConfig*)* @tips_dialog_destroy to void ()*), i8* %71, void (i8*, %struct._GClosure*)* null, i32 0)
  %call85 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call85, %struct._GtkWidget** %vbox, align 8
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call86 = call i64 @gtk_container_get_type() #5
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call86)
  %74 = bitcast %struct._GTypeInstance* %call87 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %74, i32 12)
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** @tips_dialog, align 8
  %76 = bitcast %struct._GtkWidget* %75 to %struct._GTypeInstance*
  %call88 = call i64 @gtk_dialog_get_type() #5
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call88)
  %77 = bitcast %struct._GTypeInstance* %call89 to %struct._GtkDialog*
  %call90 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %77)
  %78 = bitcast %struct._GtkWidget* %call90 to %struct._GTypeInstance*
  %call91 = call i64 @gtk_box_get_type() #5
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call91)
  %79 = bitcast %struct._GTypeInstance* %call92 to %struct._GtkBox*
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %79, %struct._GtkWidget* %80, i32 1, i32 1, i32 0)
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %81)
  %call93 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call93, %struct._GtkWidget** %hbox, align 8
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %83 = bitcast %struct._GtkWidget* %82 to %struct._GTypeInstance*
  %call94 = call i64 @gtk_container_get_type() #5
  %call95 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call94)
  %84 = bitcast %struct._GTypeInstance* %call95 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %84, i32 6)
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %86 = bitcast %struct._GtkWidget* %85 to %struct._GTypeInstance*
  %call96 = call i64 @gtk_box_get_type() #5
  %call97 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call96)
  %87 = bitcast %struct._GTypeInstance* %call97 to %struct._GtkBox*
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %87, %struct._GtkWidget* %88, i32 1, i32 1, i32 0)
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %89)
  %call98 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call98, %struct._GtkWidget** %vbox, align 8
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %91 = bitcast %struct._GtkWidget* %90 to %struct._GTypeInstance*
  %call99 = call i64 @gtk_box_get_type() #5
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 %call99)
  %92 = bitcast %struct._GTypeInstance* %call100 to %struct._GtkBox*
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %92, %struct._GtkWidget* %93, i32 1, i32 1, i32 0)
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %94)
  %call101 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i32 6)
  store %struct._GtkWidget* %call101, %struct._GtkWidget** %image, align 8
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %96 = bitcast %struct._GtkWidget* %95 to %struct._GTypeInstance*
  %call102 = call i64 @gtk_misc_get_type() #5
  %call103 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 %call102)
  %97 = bitcast %struct._GTypeInstance* %call103 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %97, float 5.000000e-01, float 0.000000e+00)
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %99 = bitcast %struct._GtkWidget* %98 to %struct._GTypeInstance*
  %call104 = call i64 @gtk_box_get_type() #5
  %call105 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %99, i64 %call104)
  %100 = bitcast %struct._GTypeInstance* %call105 to %struct._GtkBox*
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %100, %struct._GtkWidget* %101, i32 0, i32 0, i32 0)
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %102)
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %104 = bitcast %struct._GtkWidget* %103 to %struct._GTypeInstance*
  %call106 = call i64 @gtk_container_get_type() #5
  %call107 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %104, i64 %call106)
  %105 = bitcast %struct._GTypeInstance* %call107 to %struct._GtkContainer*
  call void @gtk_container_set_focus_chain(%struct._GtkContainer* %105, %struct._GList* null)
  %call108 = call %struct._GtkWidget* @gtk_label_new(i8* null)
  store %struct._GtkWidget* %call108, %struct._GtkWidget** @tip_label, align 8
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** @tip_label, align 8
  %107 = bitcast %struct._GtkWidget* %106 to %struct._GTypeInstance*
  %call109 = call i64 @gtk_label_get_type() #5
  %call110 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %107, i64 %call109)
  %108 = bitcast %struct._GTypeInstance* %call110 to %struct._GtkLabel*
  call void @gtk_label_set_selectable(%struct._GtkLabel* %108, i32 1)
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** @tip_label, align 8
  %110 = bitcast %struct._GtkWidget* %109 to %struct._GTypeInstance*
  %call111 = call i64 @gtk_label_get_type() #5
  %call112 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %110, i64 %call111)
  %111 = bitcast %struct._GTypeInstance* %call112 to %struct._GtkLabel*
  call void @gtk_label_set_justify(%struct._GtkLabel* %111, i32 0)
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** @tip_label, align 8
  %113 = bitcast %struct._GtkWidget* %112 to %struct._GTypeInstance*
  %call113 = call i64 @gtk_label_get_type() #5
  %call114 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %113, i64 %call113)
  %114 = bitcast %struct._GTypeInstance* %call114 to %struct._GtkLabel*
  call void @gtk_label_set_line_wrap(%struct._GtkLabel* %114, i32 1)
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** @tip_label, align 8
  %116 = bitcast %struct._GtkWidget* %115 to %struct._GTypeInstance*
  %call115 = call i64 @gtk_misc_get_type() #5
  %call116 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %116, i64 %call115)
  %117 = bitcast %struct._GTypeInstance* %call116 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %117, float 5.000000e-01, float 0.000000e+00)
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %119 = bitcast %struct._GtkWidget* %118 to %struct._GTypeInstance*
  %call117 = call i64 @gtk_box_get_type() #5
  %call118 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %119, i64 %call117)
  %120 = bitcast %struct._GTypeInstance* %call118 to %struct._GtkBox*
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** @tip_label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %120, %struct._GtkWidget* %121, i32 1, i32 1, i32 0)
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** @tip_label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %122)
  %call119 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call119, %struct._GtkWidget** %hbox, align 8
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %124 = bitcast %struct._GtkWidget* %123 to %struct._GTypeInstance*
  %call120 = call i64 @gtk_box_get_type() #5
  %call121 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %124, i64 %call120)
  %125 = bitcast %struct._GTypeInstance* %call121 to %struct._GtkBox*
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %125, %struct._GtkWidget* %126, i32 0, i32 0, i32 0)
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %127)
  %call122 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0)) #7
  %call123 = call %struct._GtkWidget* @gtk_link_button_new_with_label(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0), i8* %call122)
  store %struct._GtkWidget* %call123, %struct._GtkWidget** @more_button, align 8
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** @more_button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %128)
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %130 = bitcast %struct._GtkWidget* %129 to %struct._GTypeInstance*
  %call124 = call i64 @gtk_box_get_type() #5
  %call125 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %130, i64 %call124)
  %131 = bitcast %struct._GTypeInstance* %call125 to %struct._GtkBox*
  %132 = load %struct._GtkWidget*, %struct._GtkWidget** @more_button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %131, %struct._GtkWidget* %132, i32 0, i32 0, i32 0)
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** @more_button, align 8
  %134 = bitcast %struct._GtkWidget* %133 to i8*
  %135 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %136 = bitcast %struct._Gimp* %135 to i8*
  %call126 = call i64 @g_signal_connect_data(i8* %134, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._Gimp*)* @more_button_clicked to void ()*), i8* %136, void (i8*, %struct._GClosure*)* null, i32 0)
  %137 = load %struct._GList*, %struct._GList** @current_tip, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %137, i32 0, i32 0
  %138 = load i8*, i8** %data, align 8
  %139 = bitcast i8* %138 to %struct._GimpTip*
  call void @tips_dialog_set_tip(%struct._GimpTip* %139)
  %140 = load %struct._GtkWidget*, %struct._GtkWidget** @tips_dialog, align 8
  store %struct._GtkWidget* %140, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.59, %if.then.58, %if.else.9
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %141
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare noalias i8* @g_build_filename(i8*, ...) #3

; Function Attrs: nounwind readnone
declare i8* @gimp_data_directory() #1

declare %struct._GList* @gimp_tips_from_file(i8*, %struct._GError**) #3

declare %struct._GimpTip* @gimp_tip_new(i8*, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @gimp_filename_to_utf8(i8*) #3

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #3

declare void @g_printerr(i8*, ...) #3

declare void @g_clear_error(%struct._GError**) #3

declare void @g_free(i8*) #3

declare i32 @g_list_length(%struct._GList*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_gui_config_get_type() #1

declare %struct._GList* @g_list_nth(%struct._GList*, i32) #3

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #3

declare %struct._GtkWidget* @gtk_dialog_add_button(%struct._GtkDialog*, i8*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #1

declare void @gtk_button_set_image(%struct._GtkButton*, %struct._GtkWidget*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_button_get_type() #1

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #3

declare void @gtk_dialog_set_response_sensitive(%struct._GtkDialog*, i32, i32) #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @tips_dialog_response(%struct._GtkWidget* %dialog, i32 %response) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %response.addr = alloca i32, align 4
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %response, i32* %response.addr, align 4
  %0 = load i32, i32* %response.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct._GList*, %struct._GList** @current_tip, align 8
  %prev = getelementptr inbounds %struct._GList, %struct._GList* %1, i32 0, i32 2
  %2 = load %struct._GList*, %struct._GList** %prev, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %3 = load %struct._GList*, %struct._GList** @current_tip, align 8
  %prev1 = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 2
  %4 = load %struct._GList*, %struct._GList** %prev1, align 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %5 = load %struct._GList*, %struct._GList** @tips, align 8
  %call = call %struct._GList* @g_list_last(%struct._GList* %5)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %4, %cond.true ], [ %call, %cond.false ]
  store %struct._GList* %cond, %struct._GList** @current_tip, align 8
  %6 = load %struct._GList*, %struct._GList** @current_tip, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %6, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8
  %8 = bitcast i8* %7 to %struct._GimpTip*
  call void @tips_dialog_set_tip(%struct._GimpTip* %8)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %9 = load %struct._GList*, %struct._GList** @current_tip, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %9, i32 0, i32 1
  %10 = load %struct._GList*, %struct._GList** %next, align 8
  %tobool3 = icmp ne %struct._GList* %10, null
  br i1 %tobool3, label %cond.true.4, label %cond.false.6

cond.true.4:                                      ; preds = %sw.bb.2
  %11 = load %struct._GList*, %struct._GList** @current_tip, align 8
  %next5 = getelementptr inbounds %struct._GList, %struct._GList* %11, i32 0, i32 1
  %12 = load %struct._GList*, %struct._GList** %next5, align 8
  br label %cond.end.7

cond.false.6:                                     ; preds = %sw.bb.2
  %13 = load %struct._GList*, %struct._GList** @tips, align 8
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.6, %cond.true.4
  %cond8 = phi %struct._GList* [ %12, %cond.true.4 ], [ %13, %cond.false.6 ]
  store %struct._GList* %cond8, %struct._GList** @current_tip, align 8
  %14 = load %struct._GList*, %struct._GList** @current_tip, align 8
  %data9 = getelementptr inbounds %struct._GList, %struct._GList* %14, i32 0, i32 0
  %15 = load i8*, i8** %data9, align 8
  %16 = bitcast i8* %15 to %struct._GimpTip*
  call void @tips_dialog_set_tip(%struct._GimpTip* %16)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %17)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %cond.end.7, %cond.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tips_dialog_destroy(%struct._GtkWidget* %widget, %struct._GimpGuiConfig* %config) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %config.addr = alloca %struct._GimpGuiConfig*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpGuiConfig* %config, %struct._GimpGuiConfig** %config.addr, align 8
  %0 = load %struct._GList*, %struct._GList** @tips, align 8
  %1 = load %struct._GList*, %struct._GList** @current_tip, align 8
  %call = call i32 @g_list_position(%struct._GList* %0, %struct._GList* %1)
  %2 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config.addr, align 8
  %last_tip_shown = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %2, i32 0, i32 33
  store i32 %call, i32* %last_tip_shown, align 4
  store %struct._GtkWidget* null, %struct._GtkWidget** @tips_dialog, align 8
  store %struct._GList* null, %struct._GList** @current_tip, align 8
  %3 = load %struct._GList*, %struct._GList** @tips, align 8
  call void @gimp_tips_free(%struct._GList* %3)
  store %struct._GList* null, %struct._GList** @tips, align 8
  ret void
}

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #3

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #3

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #1

declare void @gtk_widget_show(%struct._GtkWidget*) #3

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #1

declare void @gtk_container_set_focus_chain(%struct._GtkContainer*, %struct._GList*) #3

declare %struct._GtkWidget* @gtk_label_new(i8*) #3

declare void @gtk_label_set_selectable(%struct._GtkLabel*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #1

declare void @gtk_label_set_justify(%struct._GtkLabel*, i32) #3

declare void @gtk_label_set_line_wrap(%struct._GtkLabel*, i32) #3

declare %struct._GtkWidget* @gtk_link_button_new_with_label(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @more_button_clicked(%struct._GtkWidget* %button, %struct._Gimp* %gimp) #0 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %tip = alloca %struct._GimpTip*, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load %struct._GList*, %struct._GList** @current_tip, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %0, i32 0, i32 0
  %1 = load i8*, i8** %data, align 8
  %2 = bitcast i8* %1 to %struct._GimpTip*
  store %struct._GimpTip* %2, %struct._GimpTip** %tip, align 8
  %3 = load %struct._GimpTip*, %struct._GimpTip** %tip, align 8
  %help_id = getelementptr inbounds %struct._GimpTip, %struct._GimpTip* %3, i32 0, i32 1
  %4 = load i8*, i8** %help_id, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %6 = load %struct._GimpTip*, %struct._GimpTip** %tip, align 8
  %help_id1 = getelementptr inbounds %struct._GimpTip, %struct._GimpTip* %6, i32 0, i32 1
  %7 = load i8*, i8** %help_id1, align 8
  call void @gimp_help(%struct._Gimp* %5, %struct._GimpProgress* null, i8* null, i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tips_dialog_set_tip(%struct._GimpTip* %tip) #0 {
entry:
  %tip.addr = alloca %struct._GimpTip*, align 8
  store %struct._GimpTip* %tip, %struct._GimpTip** %tip.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTip*, %struct._GimpTip** %tip.addr, align 8
  %cmp = icmp ne %struct._GimpTip* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tips_dialog_set_tip, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** @tip_label, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_label_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkLabel*
  %4 = load %struct._GimpTip*, %struct._GimpTip** %tip.addr, align 8
  %text = getelementptr inbounds %struct._GimpTip, %struct._GimpTip* %4, i32 0, i32 0
  %5 = load i8*, i8** %text, align 8
  call void @gtk_label_set_markup(%struct._GtkLabel* %3, i8* %5)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** @more_button, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_link_button_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call2)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkLinkButton*
  call void @gtk_link_button_set_uri(%struct._GtkLinkButton* %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0))
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** @more_button, align 8
  %10 = load %struct._GimpTip*, %struct._GimpTip** %tip.addr, align 8
  %help_id = getelementptr inbounds %struct._GimpTip, %struct._GimpTip* %10, i32 0, i32 1
  %11 = load i8*, i8** %help_id, align 8
  %cmp4 = icmp ne i8* %11, null
  %conv = zext i1 %cmp4 to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %9, i32 %conv)
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

declare i32 @g_list_position(%struct._GList*, %struct._GList*) #3

declare void @gimp_tips_free(%struct._GList*) #3

declare %struct._GList* @g_list_last(%struct._GList*) #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #3

declare void @gtk_label_set_markup(%struct._GtkLabel*, i8*) #3

declare void @gtk_link_button_set_uri(%struct._GtkLinkButton*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_link_button_get_type() #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #3

declare void @gimp_help(%struct._Gimp*, %struct._GimpProgress*, i8*, i8*) #3

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
