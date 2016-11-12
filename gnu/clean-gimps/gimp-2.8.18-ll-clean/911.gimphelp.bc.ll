; ModuleID = './app/widgets/gimphelp.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, {}*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
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
%struct._GimpPDB = type { %struct._GimpObject, %struct._Gimp*, %struct._GHashTable*, %struct._GHashTable* }
%struct._GHashTable = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GimpProgress = type opaque
%struct._GimpGuiConfig = type { %struct._GimpDisplayConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayOptions = type opaque
%struct._GimpIdleHelp = type { %struct._Gimp*, %struct._GimpProgress*, i8*, i8*, i8* }
%struct._GimpProcedure = type { %struct._GimpObject, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GParamSpec**, i32, %struct._GParamSpec**, %struct._GValueArray* (%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GError**)* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GError = type { i32, i32, i8* }
%struct._GimpTemporaryProcedure = type { %struct._GimpPlugInProcedure, %struct._GimpPlugIn* }
%struct._GimpPlugInProcedure = type { %struct._GimpProcedure, i8*, i32, i32, i8*, %struct._GList*, i8*, i32, i32, i8*, i8*, i32, i64, i32, i32, i8*, i8*, i8*, i8*, %struct._GSList*, %struct._GSList*, %struct._GSList*, i8* }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GimpPlugIn = type { %struct._GimpObject, %struct._GimpPlugInManager*, i8*, i32, i8, i32, %struct._GIOChannel*, %struct._GIOChannel*, %struct._GIOChannel*, %struct._GIOChannel*, i32, [512 x i8], i32, %struct._GSList*, %struct._GMainLoop*, %struct._GimpPlugInProcFrame, %struct._GList*, %struct._GimpPlugInDef* }
%struct._GIOChannel = type { i32, %struct._GIOFuncs*, i8*, %struct._GIConv*, %struct._GIConv*, i8*, i32, i64, %struct._GString*, %struct._GString*, %struct._GString*, [6 x i8], i8, i8*, i8* }
%struct._GIOFuncs = type { i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i64, i32, %struct._GError**)*, i32 (%struct._GIOChannel*, %struct._GError**)*, %struct._GSource* (%struct._GIOChannel*, i32)*, void (%struct._GIOChannel*)*, i32 (%struct._GIOChannel*, i32, %struct._GError**)*, i32 (%struct._GIOChannel*)* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GMainLoop = type opaque
%struct._GimpPlugInProcFrame = type { i32, %struct._GimpContext*, %struct._GList*, %struct._GimpProcedure*, %struct._GMainLoop*, %struct._GValueArray*, %struct._GimpProgress*, i32, i64, i32, %struct._GList*, %struct._GList* }
%struct._GimpPlugInDef = type opaque
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
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
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
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpMessageDialog = type { %struct._GimpDialog, %struct._GimpMessageBox* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpMessageBox = type { %struct._GtkBox, i8*, i32, [3 x %struct._GtkWidget*], %struct._GtkWidget* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_help_show = private unnamed_addr constant [15 x i8] c"gimp_help_show\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"progress == NULL || GIMP_IS_PROGRESS (progress)\00", align 1
@gimp_log_flags = external global i32, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"request for help-id '%s' from help-domain '%s'\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@__func__.gimp_help_user_manual_is_installed = private unnamed_addr constant [35 x i8] c"gimp_help_user_manual_is_installed\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"GIMP2_HELP_URI\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"gimp-help.xml\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@__func__.gimp_help_user_manual_changed = private unnamed_addr constant [30 x i8] c"gimp_help_user_manual_changed\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"extension-gimp-help-temp\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"extension-gimp-help-browser-temp\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"plug-in-web-browser\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"GIMP user manual is missing\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"gimp-user-manual\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"_Read Online\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"gimp-web\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.17 = private unnamed_addr constant [56 x i8] c"The GIMP user manual is not installed on your computer.\00", align 1
@.str.18 = private unnamed_addr constant [105 x i8] c"You may either install the additional help package or change your preferences to use the online version.\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"user-manual-online\00", align 1
@gimp_help_browser.busy = internal global i32 0, align 4
@.str.20 = private unnamed_addr constant [28 x i8] c"extension-gimp-help-browser\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"Help browser is missing\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"The GIMP help browser is not available.\00", align 1
@.str.23 = private unnamed_addr constant [140 x i8] c"The GIMP help browser plug-in appears to be missing from your installation. You may instead use the web browser for reading the help pages.\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"Help browser doesn't start\00", align 1
@.str.25 = private unnamed_addr constant [47 x i8] c"Could not start the GIMP help browser plug-in.\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"Use _Web Browser\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"help-browser\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"http://www.gimp.org/help\00", align 1
@__func__.gimp_help_call = private unnamed_addr constant [15 x i8] c"gimp_help_call\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"Calling help via %s: %s %s %s\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"extension-gimp-help\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"help\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_help_show(%struct._Gimp* %gimp, %struct._GimpProgress* %progress, i8* %help_domain, i8* %help_id) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %help_domain.addr = alloca i8*, align 8
  %help_id.addr = alloca i8*, align 8
  %config = alloca %struct._GimpGuiConfig*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %idle_help = alloca %struct._GimpIdleHelp*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i8* %help_domain, i8** %help_domain.addr, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_help_show, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.78

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %cmp12 = icmp eq %struct._GimpProgress* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %15 = bitcast %struct._GimpProgress* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_progress_interface_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_help_show, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.78

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config40 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %27, i32 0, i32 1
  %28 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config40, align 8
  %29 = bitcast %struct._GimpCoreConfig* %28 to %struct._GTypeInstance*
  %call41 = call i64 @gimp_gui_config_get_type() #5
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call41)
  %30 = bitcast %struct._GTypeInstance* %call42 to %struct._GimpGuiConfig*
  store %struct._GimpGuiConfig* %30, %struct._GimpGuiConfig** %config, align 8
  %31 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %use_help = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %31, i32 0, i32 21
  %32 = load i32, i32* %use_help, align 4
  %tobool43 = icmp ne i32 %32, 0
  br i1 %tobool43, label %if.then.44, label %if.end.78

if.then.44:                                       ; preds = %do.end.39
  %call46 = call noalias i8* @g_slice_alloc0(i64 40)
  %33 = bitcast i8* %call46 to %struct._GimpIdleHelp*
  store %struct._GimpIdleHelp* %33, %struct._GimpIdleHelp** %idle_help, align 8
  %34 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %35 = load %struct._GimpIdleHelp*, %struct._GimpIdleHelp** %idle_help, align 8
  %gimp47 = getelementptr inbounds %struct._GimpIdleHelp, %struct._GimpIdleHelp* %35, i32 0, i32 0
  store %struct._Gimp* %34, %struct._Gimp** %gimp47, align 8
  %36 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %37 = load %struct._GimpIdleHelp*, %struct._GimpIdleHelp** %idle_help, align 8
  %progress48 = getelementptr inbounds %struct._GimpIdleHelp, %struct._GimpIdleHelp* %37, i32 0, i32 1
  store %struct._GimpProgress* %36, %struct._GimpProgress** %progress48, align 8
  %38 = load i8*, i8** %help_domain.addr, align 8
  %tobool49 = icmp ne i8* %38, null
  br i1 %tobool49, label %land.lhs.true.50, label %if.end.56

land.lhs.true.50:                                 ; preds = %if.then.44
  %39 = load i8*, i8** %help_domain.addr, align 8
  %call51 = call i64 @strlen(i8* %39) #6
  %tobool52 = icmp ne i64 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.56

if.then.53:                                       ; preds = %land.lhs.true.50
  %40 = load i8*, i8** %help_domain.addr, align 8
  %call54 = call noalias i8* @g_strdup(i8* %40)
  %41 = load %struct._GimpIdleHelp*, %struct._GimpIdleHelp** %idle_help, align 8
  %help_domain55 = getelementptr inbounds %struct._GimpIdleHelp, %struct._GimpIdleHelp* %41, i32 0, i32 2
  store i8* %call54, i8** %help_domain55, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.53, %land.lhs.true.50, %if.then.44
  %42 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call57 = call i8* @gimp_help_get_locales(%struct._Gimp* %42)
  %43 = load %struct._GimpIdleHelp*, %struct._GimpIdleHelp** %idle_help, align 8
  %help_locales = getelementptr inbounds %struct._GimpIdleHelp, %struct._GimpIdleHelp* %43, i32 0, i32 3
  store i8* %call57, i8** %help_locales, align 8
  %44 = load i8*, i8** %help_id.addr, align 8
  %tobool58 = icmp ne i8* %44, null
  br i1 %tobool58, label %land.lhs.true.59, label %if.end.65

land.lhs.true.59:                                 ; preds = %if.end.56
  %45 = load i8*, i8** %help_id.addr, align 8
  %call60 = call i64 @strlen(i8* %45) #6
  %tobool61 = icmp ne i64 %call60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.65

if.then.62:                                       ; preds = %land.lhs.true.59
  %46 = load i8*, i8** %help_id.addr, align 8
  %call63 = call noalias i8* @g_strdup(i8* %46)
  %47 = load %struct._GimpIdleHelp*, %struct._GimpIdleHelp** %idle_help, align 8
  %help_id64 = getelementptr inbounds %struct._GimpIdleHelp, %struct._GimpIdleHelp* %47, i32 0, i32 4
  store i8* %call63, i8** %help_id64, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.62, %land.lhs.true.59, %if.end.56
  br label %do.body.66

do.body.66:                                       ; preds = %if.end.65
  %48 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %48, 8
  %tobool67 = icmp ne i32 %and, 0
  br i1 %tobool67, label %if.then.68, label %if.end.75

if.then.68:                                       ; preds = %do.body.66
  %49 = load i8*, i8** %help_id.addr, align 8
  %tobool69 = icmp ne i8* %49, null
  br i1 %tobool69, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.68
  %50 = load i8*, i8** %help_id.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.68
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %50, %cond.true ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), %cond.false ]
  %51 = load i8*, i8** %help_domain.addr, align 8
  %tobool70 = icmp ne i8* %51, null
  br i1 %tobool70, label %cond.true.71, label %cond.false.72

cond.true.71:                                     ; preds = %cond.end
  %52 = load i8*, i8** %help_domain.addr, align 8
  br label %cond.end.73

cond.false.72:                                    ; preds = %cond.end
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.72, %cond.true.71
  %cond74 = phi i8* [ %52, %cond.true.71 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), %cond.false.72 ]
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_help_show, i32 0, i32 0), i32 137, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i32 0, i32 0), i8* %cond, i8* %cond74)
  br label %if.end.75

if.end.75:                                        ; preds = %cond.end.73, %do.body.66
  br label %do.end.76

do.end.76:                                        ; preds = %if.end.75
  %53 = load %struct._GimpIdleHelp*, %struct._GimpIdleHelp** %idle_help, align 8
  %54 = bitcast %struct._GimpIdleHelp* %53 to i8*
  %call77 = call i32 @g_idle_add(i32 (i8*)* bitcast (i32 (%struct._GimpIdleHelp*)* @gimp_idle_help to i32 (i8*)*), i8* %54)
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.9, %if.else.37, %do.end.76, %do.end.39
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_gui_config_get_type() #1

declare noalias i8* @g_slice_alloc0(i64) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare noalias i8* @g_strdup(i8*) #3

; Function Attrs: nounwind uwtable
define internal i8* @gimp_help_get_locales(%struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca i8*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %config = alloca %struct._GimpGuiConfig*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config1 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %0, i32 0, i32 1
  %1 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config1, align 8
  %2 = bitcast %struct._GimpCoreConfig* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_gui_config_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpGuiConfig*
  store %struct._GimpGuiConfig* %3, %struct._GimpGuiConfig** %config, align 8
  %4 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %help_locales = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %4, i32 0, i32 23
  %5 = load i8*, i8** %help_locales, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %help_locales3 = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %6, i32 0, i32 23
  %7 = load i8*, i8** %help_locales3, align 8
  %call4 = call i64 @strlen(i8* %7) #6
  %tobool5 = icmp ne i64 %call4, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %help_locales6 = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %8, i32 0, i32 23
  %9 = load i8*, i8** %help_locales6, align 8
  %call7 = call noalias i8* @g_strdup(i8* %9)
  store i8* %call7, i8** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %call8 = call i8** @g_get_language_names()
  %call9 = call noalias i8* @g_strjoinv(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0), i8** %call8)
  store i8* %call9, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i8*, i8** %retval
  ret i8* %10
}

declare void @gimp_log(i32, i8*, i32, i8*, ...) #3

declare i32 @g_idle_add(i32 (i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @gimp_idle_help(%struct._GimpIdleHelp* %idle_help) #0 {
entry:
  %retval = alloca i32, align 4
  %idle_help.addr = alloca %struct._GimpIdleHelp*, align 8
  %config = alloca %struct._GimpGuiConfig*, align 8
  %procedure_name = alloca i8*, align 8
  store %struct._GimpIdleHelp* %idle_help, %struct._GimpIdleHelp** %idle_help.addr, align 8
  %0 = load %struct._GimpIdleHelp*, %struct._GimpIdleHelp** %idle_help.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpIdleHelp, %struct._GimpIdleHelp* %0, i32 0, i32 0
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config1 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 1
  %2 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config1, align 8
  %3 = bitcast %struct._GimpCoreConfig* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_gui_config_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpGuiConfig*
  store %struct._GimpGuiConfig* %4, %struct._GimpGuiConfig** %config, align 8
  store i8* null, i8** %procedure_name, align 8
  %5 = load %struct._GimpIdleHelp*, %struct._GimpIdleHelp** %idle_help.addr, align 8
  %help_domain = getelementptr inbounds %struct._GimpIdleHelp, %struct._GimpIdleHelp* %5, i32 0, i32 2
  %6 = load i8*, i8** %help_domain, align 8
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %user_manual_online = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %7, i32 0, i32 26
  %8 = load i32, i32* %user_manual_online, align 4
  %tobool3 = icmp ne i32 %8, 0
  br i1 %tobool3, label %if.end, label %land.lhs.true.4

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %9 = load %struct._GimpIdleHelp*, %struct._GimpIdleHelp** %idle_help.addr, align 8
  %gimp5 = getelementptr inbounds %struct._GimpIdleHelp, %struct._GimpIdleHelp* %9, i32 0, i32 0
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp5, align 8
  %call6 = call i32 @gimp_help_user_manual_is_installed(%struct._Gimp* %10)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.4
  %11 = load %struct._GimpIdleHelp*, %struct._GimpIdleHelp** %idle_help.addr, align 8
  call void @gimp_help_query_user_manual_online(%struct._GimpIdleHelp* %11)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.4, %land.lhs.true, %entry
  %12 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %help_browser = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %12, i32 0, i32 24
  %13 = load i32, i32* %help_browser, align 4
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %if.then.8, label %if.end.14

if.then.8:                                        ; preds = %if.end
  %14 = load %struct._GimpIdleHelp*, %struct._GimpIdleHelp** %idle_help.addr, align 8
  %gimp9 = getelementptr inbounds %struct._GimpIdleHelp, %struct._GimpIdleHelp* %14, i32 0, i32 0
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp9, align 8
  %16 = load %struct._GimpIdleHelp*, %struct._GimpIdleHelp** %idle_help.addr, align 8
  %progress = getelementptr inbounds %struct._GimpIdleHelp, %struct._GimpIdleHelp* %16, i32 0, i32 1
  %17 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %call10 = call i32 @gimp_help_browser(%struct._Gimp* %15, %struct._GimpProgress* %17)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.8
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0), i8** %procedure_name, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.then.8
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end
  %18 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %help_browser15 = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %18, i32 0, i32 24
  %19 = load i32, i32* %help_browser15, align 4
  %cmp16 = icmp eq i32 %19, 1
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i8** %procedure_name, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.14
  %20 = load i8*, i8** %procedure_name, align 8
  %tobool19 = icmp ne i8* %20, null
  br i1 %tobool19, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %if.end.18
  %21 = load %struct._GimpIdleHelp*, %struct._GimpIdleHelp** %idle_help.addr, align 8
  %gimp21 = getelementptr inbounds %struct._GimpIdleHelp, %struct._GimpIdleHelp* %21, i32 0, i32 0
  %22 = load %struct._Gimp*, %struct._Gimp** %gimp21, align 8
  %23 = load %struct._GimpIdleHelp*, %struct._GimpIdleHelp** %idle_help.addr, align 8
  %progress22 = getelementptr inbounds %struct._GimpIdleHelp, %struct._GimpIdleHelp* %23, i32 0, i32 1
  %24 = load %struct._GimpProgress*, %struct._GimpProgress** %progress22, align 8
  %25 = load i8*, i8** %procedure_name, align 8
  %26 = load %struct._GimpIdleHelp*, %struct._GimpIdleHelp** %idle_help.addr, align 8
  %help_domain23 = getelementptr inbounds %struct._GimpIdleHelp, %struct._GimpIdleHelp* %26, i32 0, i32 2
  %27 = load i8*, i8** %help_domain23, align 8
  %28 = load %struct._GimpIdleHelp*, %struct._GimpIdleHelp** %idle_help.addr, align 8
  %help_locales = getelementptr inbounds %struct._GimpIdleHelp, %struct._GimpIdleHelp* %28, i32 0, i32 3
  %29 = load i8*, i8** %help_locales, align 8
  %30 = load %struct._GimpIdleHelp*, %struct._GimpIdleHelp** %idle_help.addr, align 8
  %help_id = getelementptr inbounds %struct._GimpIdleHelp, %struct._GimpIdleHelp* %30, i32 0, i32 4
  %31 = load i8*, i8** %help_id, align 8
  call void @gimp_help_call(%struct._Gimp* %22, %struct._GimpProgress* %24, i8* %25, i8* %27, i8* %29, i8* %31)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.20, %if.end.18
  %32 = load %struct._GimpIdleHelp*, %struct._GimpIdleHelp** %idle_help.addr, align 8
  call void @gimp_idle_help_free(%struct._GimpIdleHelp* %32)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define i32 @gimp_help_user_manual_is_installed(%struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %basedir = alloca i8*, align 8
  %found = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %locales = alloca i8*, align 8
  %s = alloca i8*, align 8
  %p = alloca i8*, align 8
  %locale = alloca i8*, align 8
  %path = alloca i8*, align 8
  %path35 = alloca i8*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 0, i32* %found, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_help_user_manual_is_installed, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i8* @g_getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  %tobool12 = icmp ne i8* %call11, null
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.end
  store i32 1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %do.end
  %call15 = call i8* @gimp_help_get_user_manual_basedir()
  store i8* %call15, i8** %basedir, align 8
  %13 = load i8*, i8** %basedir, align 8
  %call16 = call i32 @g_file_test(i8* %13, i32 4)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.39

if.then.18:                                       ; preds = %if.end.14
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call20 = call i8* @gimp_help_get_locales(%struct._Gimp* %14)
  store i8* %call20, i8** %locales, align 8
  %15 = load i8*, i8** %locales, align 8
  store i8* %15, i8** %s, align 8
  %16 = load i8*, i8** %s, align 8
  %call23 = call i8* @strchr(i8* %16, i32 58) #6
  store i8* %call23, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.18
  %17 = load i8*, i8** %p, align 8
  %tobool24 = icmp ne i8* %17, null
  br i1 %tobool24, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %18 = load i32, i32* %found, align 4
  %tobool25 = icmp ne i32 %18, 0
  %lnot = xor i1 %tobool25, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %19 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %19, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %20 = load i8*, i8** %s, align 8
  %21 = load i8*, i8** %p, align 8
  %22 = load i8*, i8** %s, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call27 = call noalias i8* @g_strndup(i8* %20, i64 %sub.ptr.sub)
  store i8* %call27, i8** %locale, align 8
  %23 = load i8*, i8** %basedir, align 8
  %24 = load i8*, i8** %locale, align 8
  %call29 = call noalias i8* (i8*, ...) @g_build_filename(i8* %23, i8* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* null)
  store i8* %call29, i8** %path, align 8
  %25 = load i8*, i8** %path, align 8
  %call30 = call i32 @g_file_test(i8* %25, i32 1)
  store i32 %call30, i32* %found, align 4
  %26 = load i8*, i8** %path, align 8
  call void @g_free(i8* %26)
  %27 = load i8*, i8** %locale, align 8
  call void @g_free(i8* %27)
  %28 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %28, i64 1
  store i8* %add.ptr, i8** %s, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i8*, i8** %s, align 8
  %call31 = call i8* @strchr(i8* %29, i32 58) #6
  store i8* %call31, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %30 = load i8*, i8** %locales, align 8
  call void @g_free(i8* %30)
  %31 = load i32, i32* %found, align 4
  %tobool32 = icmp ne i32 %31, 0
  br i1 %tobool32, label %if.end.38, label %if.then.33

if.then.33:                                       ; preds = %for.end
  %32 = load i8*, i8** %basedir, align 8
  %call36 = call noalias i8* (i8*, ...) @g_build_filename(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* null)
  store i8* %call36, i8** %path35, align 8
  %33 = load i8*, i8** %path35, align 8
  %call37 = call i32 @g_file_test(i8* %33, i32 1)
  store i32 %call37, i32* %found, align 4
  %34 = load i8*, i8** %path35, align 8
  call void @g_free(i8* %34)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.33, %for.end
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end.14
  %35 = load i8*, i8** %basedir, align 8
  call void @g_free(i8* %35)
  %36 = load i32, i32* %found, align 4
  store i32 %36, i32* %retval
  br label %return

return:                                           ; preds = %if.end.39, %if.then.13, %if.else.9
  %37 = load i32, i32* %retval
  ret i32 %37
}

declare i8* @g_getenv(i8*) #3

; Function Attrs: nounwind uwtable
define internal i8* @gimp_help_get_user_manual_basedir() #0 {
entry:
  %call = call i8* @gimp_data_directory() #5
  %call1 = call noalias i8* (i8*, ...) @g_build_filename(i8* %call, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i8* null)
  ret i8* %call1
}

declare i32 @g_file_test(i8*, i32) #3

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

declare noalias i8* @g_strndup(i8*, i64) #3

declare noalias i8* @g_build_filename(i8*, ...) #3

declare void @g_free(i8*) #3

; Function Attrs: nounwind uwtable
define void @gimp_help_user_manual_changed(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_help_user_manual_changed, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.38

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 44
  %14 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %call11 = call %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB* %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GimpProcedure* %call11, %struct._GimpProcedure** %procedure, align 8
  %15 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %16 = bitcast %struct._GimpProcedure* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_temporary_procedure_get_type() #5
  store i64 %call16, i64* %__t15, align 8
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %17, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.end
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.end
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %19, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type26, align 8
  %23 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %22, %23
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %25 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %24, i64 %25) #6
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %26 = load i32, i32* %__r18, align 4
  store i32 %26, i32* %tmp33
  %27 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %27, 0
  br i1 %tobool34, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %if.end.32
  %28 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %29 = bitcast %struct._GimpProcedure* %28 to %struct._GTypeInstance*
  %call36 = call i64 @gimp_temporary_procedure_get_type() #5
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call36)
  %30 = bitcast %struct._GTypeInstance* %call37 to %struct._GimpTemporaryProcedure*
  %plug_in = getelementptr inbounds %struct._GimpTemporaryProcedure, %struct._GimpTemporaryProcedure* %30, i32 0, i32 1
  %31 = load %struct._GimpPlugIn*, %struct._GimpPlugIn** %plug_in, align 8
  call void @gimp_plug_in_close(%struct._GimpPlugIn* %31, i32 1)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.9, %if.then.35, %if.end.32
  ret void
}

declare %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_temporary_procedure_get_type() #1

declare void @gimp_plug_in_close(%struct._GimpPlugIn*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_help_query_user_manual_online(%struct._GimpIdleHelp* %idle_help) #0 {
entry:
  %idle_help.addr = alloca %struct._GimpIdleHelp*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %window_id = alloca i32, align 4
  store %struct._GimpIdleHelp* %idle_help, %struct._GimpIdleHelp** %idle_help.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0)) #7
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_message_dialog_new(i8* %call, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* null, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 -6, i8* null)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dialog, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_dialog_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkDialog*
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0)) #7
  %call5 = call %struct._GtkWidget* @gtk_dialog_add_button(%struct._GtkDialog* %2, i8* %call4, i32 -3)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %button, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_button_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call6)
  %5 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkButton*
  %call8 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 4)
  call void @gtk_button_set_image(%struct._GtkButton* %5, %struct._GtkWidget* %call8)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_dialog_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call9)
  %8 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %8, i32 -3, i32 -6, i32 -1)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_dialog_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call11)
  %11 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %11, i32 -3)
  %12 = load %struct._GimpIdleHelp*, %struct._GimpIdleHelp** %idle_help.addr, align 8
  %progress = getelementptr inbounds %struct._GimpIdleHelp, %struct._GimpIdleHelp* %12, i32 0, i32 1
  %13 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %tobool = icmp ne %struct._GimpProgress* %13, null
  br i1 %tobool, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  %14 = load %struct._GimpIdleHelp*, %struct._GimpIdleHelp** %idle_help.addr, align 8
  %progress13 = getelementptr inbounds %struct._GimpIdleHelp, %struct._GimpIdleHelp* %14, i32 0, i32 1
  %15 = load %struct._GimpProgress*, %struct._GimpProgress** %progress13, align 8
  %call14 = call i32 @gimp_progress_get_window_id(%struct._GimpProgress* %15)
  store i32 %call14, i32* %window_id, align 4
  %16 = load i32, i32* %window_id, align 4
  %tobool15 = icmp ne i32 %16, 0
  br i1 %tobool15, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %if.then
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_window_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call17)
  %19 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkWindow*
  %20 = load i32, i32* %window_id, align 4
  call void @gimp_window_set_transient_for(%struct._GtkWindow* %19, i32 %20)
  br label %if.end

if.end:                                           ; preds = %if.then.16, %if.then
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %entry
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %22 = bitcast %struct._GtkWidget* %21 to i8*
  %23 = load %struct._GimpIdleHelp*, %struct._GimpIdleHelp** %idle_help.addr, align 8
  %24 = bitcast %struct._GimpIdleHelp* %23 to i8*
  %call20 = call i64 @g_signal_connect_data(i8* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._GimpIdleHelp*)* @gimp_help_query_online_response to void ()*), i8* %24, void (i8*, %struct._GClosure*)* null, i32 0)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_message_dialog_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call21)
  %27 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpMessageDialog*
  %box = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %27, i32 0, i32 1
  %28 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %call23 = call i8* @gettext(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.17, i32 0, i32 0)) #7
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_primary_text(%struct._GimpMessageBox* %28, i8* %call23)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_message_dialog_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call24)
  %31 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpMessageDialog*
  %box26 = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %31, i32 0, i32 1
  %32 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box26, align 8
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.18, i32 0, i32 0)) #7
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_text(%struct._GimpMessageBox* %32, i8* %call27)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %33)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_help_browser(%struct._Gimp* %gimp, %struct._GimpProgress* %progress) #0 {
entry:
  %retval = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  %args = alloca %struct._GValueArray*, align 8
  %n_domains = alloca i32, align 4
  %help_domains = alloca i8**, align 8
  %help_uris = alloca i8**, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load i32, i32* @gimp_help_browser.busy, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* @gimp_help_browser.busy, align 4
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 44
  %2 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %call = call %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB* %2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0))
  store %struct._GimpProcedure* %call, %struct._GimpProcedure** %procedure, align 8
  %3 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %tobool1 = icmp ne %struct._GimpProcedure* %3, null
  br i1 %tobool1, label %if.end.27, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store %struct._GValueArray* null, %struct._GValueArray** %args, align 8
  store i32 0, i32* %n_domains, align 4
  store i8** null, i8*** %help_domains, align 8
  store i8** null, i8*** %help_uris, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb3 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %4, i32 0, i32 44
  %5 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb3, align 8
  %call4 = call %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB* %5, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i32 0, i32 0))
  store %struct._GimpProcedure* %call4, %struct._GimpProcedure** %procedure, align 8
  %6 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %tobool5 = icmp ne %struct._GimpProcedure* %6, null
  br i1 %tobool5, label %if.end.10, label %if.then.6

if.then.6:                                        ; preds = %if.then.2
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %8 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i32 0, i32 0)) #7
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i32 0, i32 0)) #7
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([140 x i8], [140 x i8]* @.str.23, i32 0, i32 0)) #7
  call void @gimp_help_browser_error(%struct._Gimp* %7, %struct._GimpProgress* %8, i8* %call7, i8* %call8, i8* %call9)
  store i32 0, i32* @gimp_help_browser.busy, align 4
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.2
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call11 = call i32 @gimp_help_get_help_domains(%struct._Gimp* %9, i8*** %help_domains, i8*** %help_uris)
  store i32 %call11, i32* %n_domains, align 4
  %10 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call12 = call %struct._GValueArray* @gimp_procedure_get_arguments(%struct._GimpProcedure* %10)
  store %struct._GValueArray* %call12, %struct._GValueArray** %args, align 8
  %11 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  call void @gimp_value_array_truncate(%struct._GValueArray* %11, i32 5)
  %12 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %12, i32 0, i32 1
  %13 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %13, i64 0
  call void @g_value_set_int(%struct._GValue* %arrayidx, i32 0)
  %14 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  %values13 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %14, i32 0, i32 1
  %15 = load %struct._GValue*, %struct._GValue** %values13, align 8
  %arrayidx14 = getelementptr inbounds %struct._GValue, %struct._GValue* %15, i64 1
  %16 = load i32, i32* %n_domains, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx14, i32 %16)
  %17 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  %values15 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %17, i32 0, i32 1
  %18 = load %struct._GValue*, %struct._GValue** %values15, align 8
  %arrayidx16 = getelementptr inbounds %struct._GValue, %struct._GValue* %18, i64 2
  %19 = load i8**, i8*** %help_domains, align 8
  %20 = load i32, i32* %n_domains, align 4
  %conv = sext i32 %20 to i64
  call void @gimp_value_take_stringarray(%struct._GValue* %arrayidx16, i8** %19, i64 %conv)
  %21 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  %values17 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %21, i32 0, i32 1
  %22 = load %struct._GValue*, %struct._GValue** %values17, align 8
  %arrayidx18 = getelementptr inbounds %struct._GValue, %struct._GValue* %22, i64 3
  %23 = load i32, i32* %n_domains, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx18, i32 %23)
  %24 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  %values19 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %24, i32 0, i32 1
  %25 = load %struct._GValue*, %struct._GValue** %values19, align 8
  %arrayidx20 = getelementptr inbounds %struct._GValue, %struct._GValue* %25, i64 4
  %26 = load i8**, i8*** %help_uris, align 8
  %27 = load i32, i32* %n_domains, align 4
  %conv21 = sext i32 %27 to i64
  call void @gimp_value_take_stringarray(%struct._GValue* %arrayidx20, i8** %26, i64 %conv21)
  %28 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %29 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %30 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call22 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %30)
  %31 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  call void @gimp_procedure_execute_async(%struct._GimpProcedure* %28, %struct._Gimp* %29, %struct._GimpContext* %call22, %struct._GimpProgress* null, %struct._GValueArray* %31, %struct._GimpObject* null, %struct._GError** %error)
  %32 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  call void @g_value_array_free(%struct._GValueArray* %32)
  %33 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool23 = icmp ne %struct._GError* %33, null
  br i1 %tobool23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end.10
  %34 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %35 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %36 = bitcast %struct._GimpProgress* %35 to %struct._GTypeInstance*
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 80)
  %37 = bitcast %struct._GTypeInstance* %call25 to %struct._GObject*
  %38 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %38, i32 0, i32 2
  %39 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %34, %struct._GObject* %37, i32 2, i8* %39)
  %40 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %40)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.end.10
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end
  %41 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb28 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %41, i32 0, i32 44
  %42 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb28, align 8
  %call29 = call %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB* %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0))
  store %struct._GimpProcedure* %call29, %struct._GimpProcedure** %procedure, align 8
  %43 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %tobool30 = icmp ne %struct._GimpProcedure* %43, null
  br i1 %tobool30, label %if.end.34, label %if.then.31

if.then.31:                                       ; preds = %if.end.27
  %44 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %45 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i32 0, i32 0)) #7
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.25, i32 0, i32 0)) #7
  call void @gimp_help_browser_error(%struct._Gimp* %44, %struct._GimpProgress* %45, i8* %call32, i8* %call33, i8* null)
  store i32 0, i32* @gimp_help_browser.busy, align 4
  store i32 0, i32* %retval
  br label %return

if.end.34:                                        ; preds = %if.end.27
  store i32 0, i32* @gimp_help_browser.busy, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.34, %if.then.31, %if.then.6, %if.then
  %46 = load i32, i32* %retval
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define internal void @gimp_help_call(%struct._Gimp* %gimp, %struct._GimpProgress* %progress, i8* %procedure_name, i8* %help_domain, i8* %help_locales, i8* %help_id) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %procedure_name.addr = alloca i8*, align 8
  %help_domain.addr = alloca i8*, align 8
  %help_locales.addr = alloca i8*, align 8
  %help_id.addr = alloca i8*, align 8
  %procedure = alloca %struct._GimpProcedure*, align 8
  %return_vals = alloca %struct._GValueArray*, align 8
  %error = alloca %struct._GError*, align 8
  %args = alloca %struct._GValueArray*, align 8
  %n_domains = alloca i32, align 4
  %help_domains = alloca i8**, align 8
  %help_uris = alloca i8**, align 8
  %error24 = alloca %struct._GError*, align 8
  %return_vals49 = alloca %struct._GValueArray*, align 8
  %error50 = alloca %struct._GError*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i8* %procedure_name, i8** %procedure_name.addr, align 8
  store i8* %help_domain, i8** %help_domain.addr, align 8
  store i8* %help_locales, i8** %help_locales.addr, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  %0 = load i8*, i8** %procedure_name.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0)) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.19, label %if.then

if.then:                                          ; preds = %entry
  store %struct._GError* null, %struct._GError** %error, align 8
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %1, 8
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %do.body
  %2 = load i8*, i8** %procedure_name.addr, align 8
  %3 = load i8*, i8** %help_domain.addr, align 8
  %tobool3 = icmp ne i8* %3, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.2
  %4 = load i8*, i8** %help_domain.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %4, %cond.true ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), %cond.false ]
  %5 = load i8*, i8** %help_locales.addr, align 8
  %tobool4 = icmp ne i8* %5, null
  br i1 %tobool4, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.end
  %6 = load i8*, i8** %help_locales.addr, align 8
  br label %cond.end.7

cond.false.6:                                     ; preds = %cond.end
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.6, %cond.true.5
  %cond8 = phi i8* [ %6, %cond.true.5 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), %cond.false.6 ]
  %7 = load i8*, i8** %help_id.addr, align 8
  %tobool9 = icmp ne i8* %7, null
  br i1 %tobool9, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %cond.end.7
  %8 = load i8*, i8** %help_id.addr, align 8
  br label %cond.end.12

cond.false.11:                                    ; preds = %cond.end.7
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.11, %cond.true.10
  %cond13 = phi i8* [ %8, %cond.true.10 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), %cond.false.11 ]
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_help_call, i32 0, i32 0), i32 419, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.30, i32 0, i32 0), i8* %2, i8* %cond, i8* %cond8, i8* %cond13)
  br label %if.end

if.end:                                           ; preds = %cond.end.12, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb = getelementptr inbounds %struct._Gimp, %struct._Gimp* %9, i32 0, i32 44
  %10 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %11 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call14 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %11)
  %12 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %13 = load i8*, i8** %procedure_name.addr, align 8
  %14 = load i8*, i8** %help_domain.addr, align 8
  %15 = load i8*, i8** %help_locales.addr, align 8
  %16 = load i8*, i8** %help_id.addr, align 8
  %call15 = call %struct._GValueArray* (%struct._GimpPDB*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GError**, i8*, ...) @gimp_pdb_execute_procedure_by_name(%struct._GimpPDB* %10, %struct._GimpContext* %call14, %struct._GimpProgress* %12, %struct._GError** %error, i8* %13, i64 64, i8* %14, i64 64, i8* %15, i64 64, i8* %16, i64 4)
  store %struct._GValueArray* %call15, %struct._GValueArray** %return_vals, align 8
  %17 = load %struct._GValueArray*, %struct._GValueArray** %return_vals, align 8
  call void @g_value_array_free(%struct._GValueArray* %17)
  %18 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool16 = icmp ne %struct._GError* %18, null
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %do.end
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %20 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %20, i32 0, i32 2
  %21 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %19, %struct._GObject* null, i32 2, i8* %21)
  %22 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %22)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %do.end
  br label %if.end.79

if.end.19:                                        ; preds = %entry
  %23 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb20 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %23, i32 0, i32 44
  %24 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb20, align 8
  %call21 = call %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB* %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GimpProcedure* %call21, %struct._GimpProcedure** %procedure, align 8
  %25 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %tobool22 = icmp ne %struct._GimpProcedure* %25, null
  br i1 %tobool22, label %if.end.44, label %if.then.23

if.then.23:                                       ; preds = %if.end.19
  store %struct._GValueArray* null, %struct._GValueArray** %args, align 8
  store i32 0, i32* %n_domains, align 4
  store i8** null, i8*** %help_domains, align 8
  store i8** null, i8*** %help_uris, align 8
  store %struct._GError* null, %struct._GError** %error24, align 8
  %26 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb25 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %26, i32 0, i32 44
  %27 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb25, align 8
  %call26 = call %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB* %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i32 0, i32 0))
  store %struct._GimpProcedure* %call26, %struct._GimpProcedure** %procedure, align 8
  %28 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %tobool27 = icmp ne %struct._GimpProcedure* %28, null
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %if.then.23
  br label %if.end.79

if.end.29:                                        ; preds = %if.then.23
  %29 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call30 = call i32 @gimp_help_get_help_domains(%struct._Gimp* %29, i8*** %help_domains, i8*** %help_uris)
  store i32 %call30, i32* %n_domains, align 4
  %30 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %call31 = call %struct._GValueArray* @gimp_procedure_get_arguments(%struct._GimpProcedure* %30)
  store %struct._GValueArray* %call31, %struct._GValueArray** %args, align 8
  %31 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  call void @gimp_value_array_truncate(%struct._GValueArray* %31, i32 4)
  %32 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  %values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %32, i32 0, i32 1
  %33 = load %struct._GValue*, %struct._GValue** %values, align 8
  %arrayidx = getelementptr inbounds %struct._GValue, %struct._GValue* %33, i64 0
  %34 = load i32, i32* %n_domains, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx, i32 %34)
  %35 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  %values32 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %35, i32 0, i32 1
  %36 = load %struct._GValue*, %struct._GValue** %values32, align 8
  %arrayidx33 = getelementptr inbounds %struct._GValue, %struct._GValue* %36, i64 1
  %37 = load i8**, i8*** %help_domains, align 8
  %38 = load i32, i32* %n_domains, align 4
  %conv = sext i32 %38 to i64
  call void @gimp_value_take_stringarray(%struct._GValue* %arrayidx33, i8** %37, i64 %conv)
  %39 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  %values34 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %39, i32 0, i32 1
  %40 = load %struct._GValue*, %struct._GValue** %values34, align 8
  %arrayidx35 = getelementptr inbounds %struct._GValue, %struct._GValue* %40, i64 2
  %41 = load i32, i32* %n_domains, align 4
  call void @g_value_set_int(%struct._GValue* %arrayidx35, i32 %41)
  %42 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  %values36 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %42, i32 0, i32 1
  %43 = load %struct._GValue*, %struct._GValue** %values36, align 8
  %arrayidx37 = getelementptr inbounds %struct._GValue, %struct._GValue* %43, i64 3
  %44 = load i8**, i8*** %help_uris, align 8
  %45 = load i32, i32* %n_domains, align 4
  %conv38 = sext i32 %45 to i64
  call void @gimp_value_take_stringarray(%struct._GValue* %arrayidx37, i8** %44, i64 %conv38)
  %46 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %47 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %48 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call39 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %48)
  %49 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %50 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  call void @gimp_procedure_execute_async(%struct._GimpProcedure* %46, %struct._Gimp* %47, %struct._GimpContext* %call39, %struct._GimpProgress* %49, %struct._GValueArray* %50, %struct._GimpObject* null, %struct._GError** %error24)
  %51 = load %struct._GValueArray*, %struct._GValueArray** %args, align 8
  call void @g_value_array_free(%struct._GValueArray* %51)
  %52 = load %struct._GError*, %struct._GError** %error24, align 8
  %tobool40 = icmp ne %struct._GError* %52, null
  br i1 %tobool40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %if.end.29
  %53 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %54 = load %struct._GError*, %struct._GError** %error24, align 8
  %message42 = getelementptr inbounds %struct._GError, %struct._GError* %54, i32 0, i32 2
  %55 = load i8*, i8** %message42, align 8
  call void @gimp_message_literal(%struct._Gimp* %53, %struct._GObject* null, i32 2, i8* %55)
  %56 = load %struct._GError*, %struct._GError** %error24, align 8
  call void @g_error_free(%struct._GError* %56)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %if.end.29
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.end.19
  %57 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb45 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %57, i32 0, i32 44
  %58 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb45, align 8
  %call46 = call %struct._GimpProcedure* @gimp_pdb_lookup_procedure(%struct._GimpPDB* %58, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GimpProcedure* %call46, %struct._GimpProcedure** %procedure, align 8
  %59 = load %struct._GimpProcedure*, %struct._GimpProcedure** %procedure, align 8
  %tobool47 = icmp ne %struct._GimpProcedure* %59, null
  br i1 %tobool47, label %if.then.48, label %if.end.79

if.then.48:                                       ; preds = %if.end.44
  store %struct._GError* null, %struct._GError** %error50, align 8
  br label %do.body.51

do.body.51:                                       ; preds = %if.then.48
  %60 = load i32, i32* @gimp_log_flags, align 4
  %and52 = and i32 %60, 8
  %tobool53 = icmp ne i32 %and52, 0
  br i1 %tobool53, label %if.then.54, label %if.end.70

if.then.54:                                       ; preds = %do.body.51
  %61 = load i8*, i8** %procedure_name.addr, align 8
  %62 = load i8*, i8** %help_domain.addr, align 8
  %tobool55 = icmp ne i8* %62, null
  br i1 %tobool55, label %cond.true.56, label %cond.false.57

cond.true.56:                                     ; preds = %if.then.54
  %63 = load i8*, i8** %help_domain.addr, align 8
  br label %cond.end.58

cond.false.57:                                    ; preds = %if.then.54
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.57, %cond.true.56
  %cond59 = phi i8* [ %63, %cond.true.56 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), %cond.false.57 ]
  %64 = load i8*, i8** %help_locales.addr, align 8
  %tobool60 = icmp ne i8* %64, null
  br i1 %tobool60, label %cond.true.61, label %cond.false.62

cond.true.61:                                     ; preds = %cond.end.58
  %65 = load i8*, i8** %help_locales.addr, align 8
  br label %cond.end.63

cond.false.62:                                    ; preds = %cond.end.58
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.62, %cond.true.61
  %cond64 = phi i8* [ %65, %cond.true.61 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), %cond.false.62 ]
  %66 = load i8*, i8** %help_id.addr, align 8
  %tobool65 = icmp ne i8* %66, null
  br i1 %tobool65, label %cond.true.66, label %cond.false.67

cond.true.66:                                     ; preds = %cond.end.63
  %67 = load i8*, i8** %help_id.addr, align 8
  br label %cond.end.68

cond.false.67:                                    ; preds = %cond.end.63
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.false.67, %cond.true.66
  %cond69 = phi i8* [ %67, %cond.true.66 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), %cond.false.67 ]
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_help_call, i32 0, i32 0), i32 494, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.30, i32 0, i32 0), i8* %61, i8* %cond59, i8* %cond64, i8* %cond69)
  br label %if.end.70

if.end.70:                                        ; preds = %cond.end.68, %do.body.51
  br label %do.end.71

do.end.71:                                        ; preds = %if.end.70
  %68 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb72 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %68, i32 0, i32 44
  %69 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb72, align 8
  %70 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call73 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %70)
  %71 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %72 = load i8*, i8** %procedure_name.addr, align 8
  %73 = load i8*, i8** %help_domain.addr, align 8
  %74 = load i8*, i8** %help_locales.addr, align 8
  %75 = load i8*, i8** %help_id.addr, align 8
  %call74 = call %struct._GValueArray* (%struct._GimpPDB*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GError**, i8*, ...) @gimp_pdb_execute_procedure_by_name(%struct._GimpPDB* %69, %struct._GimpContext* %call73, %struct._GimpProgress* %71, %struct._GError** %error50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0), i64 64, i8* %72, i64 64, i8* %73, i64 64, i8* %74, i64 64, i8* %75, i64 4)
  store %struct._GValueArray* %call74, %struct._GValueArray** %return_vals49, align 8
  %76 = load %struct._GValueArray*, %struct._GValueArray** %return_vals49, align 8
  call void @g_value_array_free(%struct._GValueArray* %76)
  %77 = load %struct._GError*, %struct._GError** %error50, align 8
  %tobool75 = icmp ne %struct._GError* %77, null
  br i1 %tobool75, label %if.then.76, label %if.end.78

if.then.76:                                       ; preds = %do.end.71
  %78 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %79 = load %struct._GError*, %struct._GError** %error50, align 8
  %message77 = getelementptr inbounds %struct._GError, %struct._GError* %79, i32 0, i32 2
  %80 = load i8*, i8** %message77, align 8
  call void @gimp_message_literal(%struct._Gimp* %78, %struct._GObject* null, i32 2, i8* %80)
  %81 = load %struct._GError*, %struct._GError** %error50, align 8
  call void @g_error_free(%struct._GError* %81)
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.76, %do.end.71
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.18, %if.then.28, %if.end.78, %if.end.44
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_idle_help_free(%struct._GimpIdleHelp* %idle_help) #0 {
entry:
  %idle_help.addr = alloca %struct._GimpIdleHelp*, align 8
  store %struct._GimpIdleHelp* %idle_help, %struct._GimpIdleHelp** %idle_help.addr, align 8
  %0 = load %struct._GimpIdleHelp*, %struct._GimpIdleHelp** %idle_help.addr, align 8
  %help_domain = getelementptr inbounds %struct._GimpIdleHelp, %struct._GimpIdleHelp* %0, i32 0, i32 2
  %1 = load i8*, i8** %help_domain, align 8
  call void @g_free(i8* %1)
  %2 = load %struct._GimpIdleHelp*, %struct._GimpIdleHelp** %idle_help.addr, align 8
  %help_locales = getelementptr inbounds %struct._GimpIdleHelp, %struct._GimpIdleHelp* %2, i32 0, i32 3
  %3 = load i8*, i8** %help_locales, align 8
  call void @g_free(i8* %3)
  %4 = load %struct._GimpIdleHelp*, %struct._GimpIdleHelp** %idle_help.addr, align 8
  %help_id = getelementptr inbounds %struct._GimpIdleHelp, %struct._GimpIdleHelp* %4, i32 0, i32 4
  %5 = load i8*, i8** %help_id, align 8
  call void @g_free(i8* %5)
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load %struct._GimpIdleHelp*, %struct._GimpIdleHelp** %idle_help.addr, align 8
  %7 = bitcast %struct._GimpIdleHelp* %6 to i8*
  call void @g_slice_free1(i64 40, i8* %7)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare %struct._GtkWidget* @gimp_message_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare %struct._GtkWidget* @gtk_dialog_add_button(%struct._GtkDialog*, i8*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #1

declare void @gtk_button_set_image(%struct._GtkButton*, %struct._GtkWidget*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_button_get_type() #1

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #3

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #3

declare void @gtk_dialog_set_default_response(%struct._GtkDialog*, i32) #3

declare i32 @gimp_progress_get_window_id(%struct._GimpProgress*) #3

declare void @gimp_window_set_transient_for(%struct._GtkWindow*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_help_query_online_response(%struct._GtkWidget* %dialog, i32 %response, %struct._GimpIdleHelp* %idle_help) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %response.addr = alloca i32, align 4
  %idle_help.addr = alloca %struct._GimpIdleHelp*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %response, i32* %response.addr, align 4
  store %struct._GimpIdleHelp* %idle_help, %struct._GimpIdleHelp** %idle_help.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %0)
  %1 = load i32, i32* %response.addr, align 4
  %cmp = icmp eq i32 %1, -3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpIdleHelp*, %struct._GimpIdleHelp** %idle_help.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpIdleHelp, %struct._GimpIdleHelp* %2, i32 0, i32 0
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %3, i32 0, i32 1
  %4 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %5 = bitcast %struct._GimpCoreConfig* %4 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0), i32 1, i8* null)
  %6 = load %struct._GimpIdleHelp*, %struct._GimpIdleHelp** %idle_help.addr, align 8
  %gimp1 = getelementptr inbounds %struct._GimpIdleHelp, %struct._GimpIdleHelp* %6, i32 0, i32 0
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp1, align 8
  %8 = load %struct._GimpIdleHelp*, %struct._GimpIdleHelp** %idle_help.addr, align 8
  %progress = getelementptr inbounds %struct._GimpIdleHelp, %struct._GimpIdleHelp* %8, i32 0, i32 1
  %9 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %10 = load %struct._GimpIdleHelp*, %struct._GimpIdleHelp** %idle_help.addr, align 8
  %help_domain = getelementptr inbounds %struct._GimpIdleHelp, %struct._GimpIdleHelp* %10, i32 0, i32 2
  %11 = load i8*, i8** %help_domain, align 8
  %12 = load %struct._GimpIdleHelp*, %struct._GimpIdleHelp** %idle_help.addr, align 8
  %help_id = getelementptr inbounds %struct._GimpIdleHelp, %struct._GimpIdleHelp* %12, i32 0, i32 4
  %13 = load i8*, i8** %help_id, align 8
  call void @gimp_help_show(%struct._Gimp* %7, %struct._GimpProgress* %9, i8* %11, i8* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct._GimpIdleHelp*, %struct._GimpIdleHelp** %idle_help.addr, align 8
  call void @gimp_idle_help_free(%struct._GimpIdleHelp* %14)
  ret void
}

declare void @gimp_message_box_set_primary_text(%struct._GimpMessageBox*, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_message_dialog_get_type() #1

declare void @gimp_message_box_set_text(%struct._GimpMessageBox*, i8*, ...) #3

declare void @gtk_widget_show(%struct._GtkWidget*) #3

declare void @gtk_widget_destroy(%struct._GtkWidget*) #3

declare void @g_object_set(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_help_browser_error(%struct._Gimp* %gimp, %struct._GimpProgress* %progress, i8* %title, i8* %primary, i8* %text) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %title.addr = alloca i8*, align 8
  %primary.addr = alloca i8*, align 8
  %text.addr = alloca i8*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %window_id = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i8* %title, i8** %title.addr, align 8
  store i8* %primary, i8** %primary.addr, align 8
  store i8* %text, i8** %text.addr, align 8
  %0 = load i8*, i8** %title.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0)) #7
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_message_dialog_new(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* null, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 -6, i8* %call, i32 -5, i8* null)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dialog, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_dialog_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call2)
  %3 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %3, i32 -5, i32 -6, i32 -1)
  %4 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool = icmp ne %struct._GimpProgress* %4, null
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call4 = call i32 @gimp_progress_get_window_id(%struct._GimpProgress* %5)
  store i32 %call4, i32* %window_id, align 4
  %6 = load i32, i32* %window_id, align 4
  %tobool5 = icmp ne i32 %6, 0
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_window_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call7)
  %9 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkWindow*
  %10 = load i32, i32* %window_id, align 4
  call void @gimp_window_set_transient_for(%struct._GtkWindow* %9, i32 %10)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_message_dialog_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call10)
  %13 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpMessageDialog*
  %box = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %13, i32 0, i32 1
  %14 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %15 = load i8*, i8** %primary.addr, align 8
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_primary_text(%struct._GimpMessageBox* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i8* %15)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_message_dialog_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call12)
  %18 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpMessageDialog*
  %box14 = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %18, i32 0, i32 1
  %19 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box14, align 8
  %20 = load i8*, i8** %text.addr, align 8
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_text(%struct._GimpMessageBox* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i8* %20)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_dialog_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call15)
  %23 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpDialog*
  %call17 = call i32 @gimp_dialog_run(%struct._GimpDialog* %23)
  %cmp = icmp eq i32 %call17, -5
  br i1 %cmp, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.9
  %24 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %24, i32 0, i32 1
  %25 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %26 = bitcast %struct._GimpCoreConfig* %25 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), i32 1, i8* null)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end.9
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %27)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_help_get_help_domains(%struct._Gimp* %gimp, i8*** %domain_names, i8*** %domain_uris) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %domain_names.addr = alloca i8***, align 8
  %domain_uris.addr = alloca i8***, align 8
  %plug_in_domains = alloca i8**, align 8
  %plug_in_uris = alloca i8**, align 8
  %i = alloca i32, align 4
  %n_domains = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8*** %domain_names, i8**** %domain_names.addr, align 8
  store i8*** %domain_uris, i8**** %domain_uris.addr, align 8
  store i8** null, i8*** %plug_in_domains, align 8
  store i8** null, i8*** %plug_in_uris, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %0, i32 0, i32 25
  %1 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %call = call i32 @gimp_plug_in_manager_get_help_domains(%struct._GimpPlugInManager* %1, i8*** %plug_in_domains, i8*** %plug_in_uris)
  store i32 %call, i32* %n_domains, align 4
  %2 = load i32, i32* %n_domains, align 4
  %add = add nsw i32 %2, 1
  %conv = sext i32 %add to i64
  %call1 = call noalias i8* @g_malloc0_n(i64 %conv, i64 8)
  %3 = bitcast i8* %call1 to i8**
  %4 = load i8***, i8**** %domain_names.addr, align 8
  store i8** %3, i8*** %4, align 8
  %5 = load i32, i32* %n_domains, align 4
  %add2 = add nsw i32 %5, 1
  %conv3 = sext i32 %add2 to i64
  %call4 = call noalias i8* @g_malloc0_n(i64 %conv3, i64 8)
  %6 = bitcast i8* %call4 to i8**
  %7 = load i8***, i8**** %domain_uris.addr, align 8
  store i8** %6, i8*** %7, align 8
  %call5 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i32 0, i32 0))
  %8 = load i8***, i8**** %domain_names.addr, align 8
  %9 = load i8**, i8*** %8, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %9, i64 0
  store i8* %call5, i8** %arrayidx, align 8
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call6 = call i8* @gimp_help_get_default_domain_uri(%struct._Gimp* %10)
  %11 = load i8***, i8**** %domain_uris.addr, align 8
  %12 = load i8**, i8*** %11, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %12, i64 0
  store i8* %call6, i8** %arrayidx7, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %n_domains, align 4
  %cmp = icmp slt i32 %13, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load i8**, i8*** %plug_in_domains, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %16, i64 %idxprom
  %17 = load i8*, i8** %arrayidx9, align 8
  %18 = load i32, i32* %i, align 4
  %add10 = add nsw i32 %18, 1
  %idxprom11 = sext i32 %add10 to i64
  %19 = load i8***, i8**** %domain_names.addr, align 8
  %20 = load i8**, i8*** %19, align 8
  %arrayidx12 = getelementptr inbounds i8*, i8** %20, i64 %idxprom11
  store i8* %17, i8** %arrayidx12, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %21 to i64
  %22 = load i8**, i8*** %plug_in_uris, align 8
  %arrayidx14 = getelementptr inbounds i8*, i8** %22, i64 %idxprom13
  %23 = load i8*, i8** %arrayidx14, align 8
  %24 = load i32, i32* %i, align 4
  %add15 = add nsw i32 %24, 1
  %idxprom16 = sext i32 %add15 to i64
  %25 = load i8***, i8**** %domain_uris.addr, align 8
  %26 = load i8**, i8*** %25, align 8
  %arrayidx17 = getelementptr inbounds i8*, i8** %26, i64 %idxprom16
  store i8* %23, i8** %arrayidx17, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i8**, i8*** %plug_in_domains, align 8
  %29 = bitcast i8** %28 to i8*
  call void @g_free(i8* %29)
  %30 = load i8**, i8*** %plug_in_uris, align 8
  %31 = bitcast i8** %30 to i8*
  call void @g_free(i8* %31)
  %32 = load i32, i32* %n_domains, align 4
  %add18 = add nsw i32 %32, 1
  ret i32 %add18
}

declare %struct._GValueArray* @gimp_procedure_get_arguments(%struct._GimpProcedure*) #3

declare void @gimp_value_array_truncate(%struct._GValueArray*, i32) #3

declare void @g_value_set_int(%struct._GValue*, i32) #3

declare void @gimp_value_take_stringarray(%struct._GValue*, i8**, i64) #3

declare void @gimp_procedure_execute_async(%struct._GimpProcedure*, %struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GValueArray*, %struct._GimpObject*, %struct._GError**) #3

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #3

declare void @g_value_array_free(%struct._GValueArray*) #3

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #3

declare void @g_error_free(%struct._GError*) #3

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #1

declare i32 @gimp_plug_in_manager_get_help_domains(%struct._GimpPlugInManager*, i8***, i8***) #3

declare noalias i8* @g_malloc0_n(i64, i64) #3

; Function Attrs: nounwind uwtable
define internal i8* @gimp_help_get_default_domain_uri(%struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca i8*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %config = alloca %struct._GimpGuiConfig*, align 8
  %dir = alloca i8*, align 8
  %uri = alloca i8*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config1 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %0, i32 0, i32 1
  %1 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config1, align 8
  %2 = bitcast %struct._GimpCoreConfig* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_gui_config_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpGuiConfig*
  store %struct._GimpGuiConfig* %3, %struct._GimpGuiConfig** %config, align 8
  %call3 = call i8* @g_getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  %tobool = icmp ne i8* %call3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call4 = call i8* @g_getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  %call5 = call noalias i8* @g_strdup(i8* %call4)
  store i8* %call5, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %user_manual_online = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %4, i32 0, i32 26
  %5 = load i32, i32* %user_manual_online, align 4
  %tobool6 = icmp ne i32 %5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %6 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %user_manual_online_uri = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %6, i32 0, i32 27
  %7 = load i8*, i8** %user_manual_online_uri, align 8
  %call8 = call noalias i8* @g_strdup(i8* %7)
  store i8* %call8, i8** %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %call10 = call i8* @gimp_help_get_user_manual_basedir()
  store i8* %call10, i8** %dir, align 8
  %8 = load i8*, i8** %dir, align 8
  %call11 = call noalias i8* @g_filename_to_uri(i8* %8, i8* null, %struct._GError** null)
  store i8* %call11, i8** %uri, align 8
  %9 = load i8*, i8** %dir, align 8
  call void @g_free(i8* %9)
  %10 = load i8*, i8** %uri, align 8
  store i8* %10, i8** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.7, %if.then
  %11 = load i8*, i8** %retval
  ret i8* %11
}

declare noalias i8* @g_filename_to_uri(i8*, i8*, %struct._GError**) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare %struct._GValueArray* @gimp_pdb_execute_procedure_by_name(%struct._GimpPDB*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GError**, i8*, ...) #3

declare void @g_slice_free1(i64, i8*) #3

declare noalias i8* @g_strjoinv(i8*, i8**) #3

declare i8** @g_get_language_names() #3

; Function Attrs: nounwind readnone
declare i8* @gimp_data_directory() #1

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
