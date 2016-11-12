; ModuleID = './app/dialogs/template-options-dialog.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._TemplateOptionsDialog = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._Gimp*, %struct._GimpTemplate* }
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
%struct._GimpColorConfig = type { %struct._GObject, i32, i8*, i8*, i8*, i32, i8*, i32, i32, i8*, i32, %struct._GimpRGB, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()* }
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
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpTemplate = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
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
%struct._GimpConfig = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Dialogs\00", align 1
@__func__.template_options_dialog_new = private unnamed_addr constant [28 x i8] c"template_options_dialog_new\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"template == NULL || GIMP_IS_TEMPLATE (template)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"GTK_IS_WIDGET (parent)\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"title != NULL\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"role != NULL\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"stock_id != NULL\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"desc != NULL\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"help_id != NULL\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Unnamed\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1

; Function Attrs: nounwind uwtable
define %struct._TemplateOptionsDialog* @template_options_dialog_new(%struct._GimpTemplate* %template, %struct._GimpContext* %context, %struct._GtkWidget* %parent, i8* %title, i8* %role, i8* %stock_id, i8* %desc, i8* %help_id) #0 {
entry:
  %retval = alloca %struct._TemplateOptionsDialog*, align 8
  %template.addr = alloca %struct._GimpTemplate*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %title.addr = alloca i8*, align 8
  %role.addr = alloca i8*, align 8
  %stock_id.addr = alloca i8*, align 8
  %desc.addr = alloca i8*, align 8
  %help_id.addr = alloca i8*, align 8
  %options = alloca %struct._TemplateOptionsDialog*, align 8
  %viewable = alloca %struct._GimpViewable*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %__inst42 = alloca %struct._GTypeInstance*, align 8
  %__t44 = alloca i64, align 8
  %__r47 = alloca i32, align 4
  %tmp62 = alloca i32, align 4
  store %struct._GimpTemplate* %template, %struct._GimpTemplate** %template.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  store i8* %title, i8** %title.addr, align 8
  store i8* %role, i8** %role.addr, align 8
  store i8* %stock_id, i8** %stock_id.addr, align 8
  store i8* %desc, i8** %desc.addr, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  store %struct._GimpViewable* null, %struct._GimpViewable** %viewable, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %cmp = icmp eq %struct._GimpTemplate* %0, null
  br i1 %cmp, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %1 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %2 = bitcast %struct._GimpTemplate* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_template_get_type() #5
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %lor.lhs.false
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp3 = icmp eq i64 %8, %9
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #6
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7, %do.body
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.template_options_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i32 0, i32 0))
  store %struct._TemplateOptionsDialog* null, %struct._TemplateOptionsDialog** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = bitcast %struct._GimpContext* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_context_get_type() #5
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %do.body.12
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %do.body.12
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

if.then.36:                                       ; preds = %if.end.33
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.template_options_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._TemplateOptionsDialog* null, %struct._TemplateOptionsDialog** %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %28, %struct._GTypeInstance** %__inst42, align 8
  %call45 = call i64 @gtk_widget_get_type() #5
  store i64 %call45, i64* %__t44, align 8
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %tobool48 = icmp ne %struct._GTypeInstance* %29, null
  br i1 %tobool48, label %if.else.50, label %if.then.49

if.then.49:                                       ; preds = %do.body.40
  store i32 0, i32* %__r47, align 4
  br label %if.end.61

if.else.50:                                       ; preds = %do.body.40
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

if.then.64:                                       ; preds = %if.end.61
  br label %if.end.66

if.else.65:                                       ; preds = %if.end.61
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.template_options_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  store %struct._TemplateOptionsDialog* null, %struct._TemplateOptionsDialog** %retval
  br label %return

if.end.66:                                        ; preds = %if.then.64
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  br label %do.body.68

do.body.68:                                       ; preds = %do.end.67
  %40 = load i8*, i8** %title.addr, align 8
  %cmp69 = icmp ne i8* %40, null
  br i1 %cmp69, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %do.body.68
  br label %if.end.72

if.else.71:                                       ; preds = %do.body.68
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.template_options_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0))
  store %struct._TemplateOptionsDialog* null, %struct._TemplateOptionsDialog** %retval
  br label %return

if.end.72:                                        ; preds = %if.then.70
  br label %do.end.73

do.end.73:                                        ; preds = %if.end.72
  br label %do.body.74

do.body.74:                                       ; preds = %do.end.73
  %41 = load i8*, i8** %role.addr, align 8
  %cmp75 = icmp ne i8* %41, null
  br i1 %cmp75, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %do.body.74
  br label %if.end.78

if.else.77:                                       ; preds = %do.body.74
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.template_options_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0))
  store %struct._TemplateOptionsDialog* null, %struct._TemplateOptionsDialog** %retval
  br label %return

if.end.78:                                        ; preds = %if.then.76
  br label %do.end.79

do.end.79:                                        ; preds = %if.end.78
  br label %do.body.80

do.body.80:                                       ; preds = %do.end.79
  %42 = load i8*, i8** %stock_id.addr, align 8
  %cmp81 = icmp ne i8* %42, null
  br i1 %cmp81, label %if.then.82, label %if.else.83

if.then.82:                                       ; preds = %do.body.80
  br label %if.end.84

if.else.83:                                       ; preds = %do.body.80
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.template_options_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0))
  store %struct._TemplateOptionsDialog* null, %struct._TemplateOptionsDialog** %retval
  br label %return

if.end.84:                                        ; preds = %if.then.82
  br label %do.end.85

do.end.85:                                        ; preds = %if.end.84
  br label %do.body.86

do.body.86:                                       ; preds = %do.end.85
  %43 = load i8*, i8** %desc.addr, align 8
  %cmp87 = icmp ne i8* %43, null
  br i1 %cmp87, label %if.then.88, label %if.else.89

if.then.88:                                       ; preds = %do.body.86
  br label %if.end.90

if.else.89:                                       ; preds = %do.body.86
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.template_options_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0))
  store %struct._TemplateOptionsDialog* null, %struct._TemplateOptionsDialog** %retval
  br label %return

if.end.90:                                        ; preds = %if.then.88
  br label %do.end.91

do.end.91:                                        ; preds = %if.end.90
  br label %do.body.92

do.body.92:                                       ; preds = %do.end.91
  %44 = load i8*, i8** %help_id.addr, align 8
  %cmp93 = icmp ne i8* %44, null
  br i1 %cmp93, label %if.then.94, label %if.else.95

if.then.94:                                       ; preds = %do.body.92
  br label %if.end.96

if.else.95:                                       ; preds = %do.body.92
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.template_options_dialog_new, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0))
  store %struct._TemplateOptionsDialog* null, %struct._TemplateOptionsDialog** %retval
  br label %return

if.end.96:                                        ; preds = %if.then.94
  br label %do.end.97

do.end.97:                                        ; preds = %if.end.96
  %call98 = call noalias i8* @g_slice_alloc0(i64 32)
  %45 = bitcast i8* %call98 to %struct._TemplateOptionsDialog*
  store %struct._TemplateOptionsDialog* %45, %struct._TemplateOptionsDialog** %options, align 8
  %46 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %46, i32 0, i32 1
  %47 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %48 = load %struct._TemplateOptionsDialog*, %struct._TemplateOptionsDialog** %options, align 8
  %gimp99 = getelementptr inbounds %struct._TemplateOptionsDialog, %struct._TemplateOptionsDialog* %48, i32 0, i32 2
  store %struct._Gimp* %47, %struct._Gimp** %gimp99, align 8
  %49 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %50 = load %struct._TemplateOptionsDialog*, %struct._TemplateOptionsDialog** %options, align 8
  %template100 = getelementptr inbounds %struct._TemplateOptionsDialog, %struct._TemplateOptionsDialog* %50, i32 0, i32 3
  store %struct._GimpTemplate* %49, %struct._GimpTemplate** %template100, align 8
  %51 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %tobool101 = icmp ne %struct._GimpTemplate* %51, null
  br i1 %tobool101, label %if.then.102, label %if.else.108

if.then.102:                                      ; preds = %do.end.97
  %52 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %53 = bitcast %struct._GimpTemplate* %52 to %struct._GTypeInstance*
  %call103 = call i64 @gimp_viewable_get_type() #5
  %call104 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call103)
  %54 = bitcast %struct._GTypeInstance* %call104 to %struct._GimpViewable*
  store %struct._GimpViewable* %54, %struct._GimpViewable** %viewable, align 8
  %55 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %56 = bitcast %struct._GimpTemplate* %55 to %struct._GTypeInstance*
  %call105 = call i64 @gimp_config_interface_get_type() #5
  %call106 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call105)
  %57 = bitcast %struct._GTypeInstance* %call106 to %struct._GimpConfig*
  %call107 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %57)
  %58 = bitcast i8* %call107 to %struct._GimpTemplate*
  store %struct._GimpTemplate* %58, %struct._GimpTemplate** %template.addr, align 8
  br label %if.end.118

if.else.108:                                      ; preds = %do.end.97
  %59 = load %struct._TemplateOptionsDialog*, %struct._TemplateOptionsDialog** %options, align 8
  %gimp109 = getelementptr inbounds %struct._TemplateOptionsDialog, %struct._TemplateOptionsDialog* %59, i32 0, i32 2
  %60 = load %struct._Gimp*, %struct._Gimp** %gimp109, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %60, i32 0, i32 1
  %61 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %default_image = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %61, i32 0, i32 35
  %62 = load %struct._GimpTemplate*, %struct._GimpTemplate** %default_image, align 8
  %63 = bitcast %struct._GimpTemplate* %62 to %struct._GTypeInstance*
  %call110 = call i64 @gimp_config_interface_get_type() #5
  %call111 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call110)
  %64 = bitcast %struct._GTypeInstance* %call111 to %struct._GimpConfig*
  %call112 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %64)
  %65 = bitcast i8* %call112 to %struct._GimpTemplate*
  store %struct._GimpTemplate* %65, %struct._GimpTemplate** %template.addr, align 8
  %66 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %67 = bitcast %struct._GimpTemplate* %66 to %struct._GTypeInstance*
  %call113 = call i64 @gimp_viewable_get_type() #5
  %call114 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call113)
  %68 = bitcast %struct._GTypeInstance* %call114 to %struct._GimpViewable*
  store %struct._GimpViewable* %68, %struct._GimpViewable** %viewable, align 8
  %69 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %70 = bitcast %struct._GimpTemplate* %69 to %struct._GTypeInstance*
  %call115 = call i64 @gimp_object_get_type() #5
  %call116 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call115)
  %71 = bitcast %struct._GTypeInstance* %call116 to %struct._GimpObject*
  %call117 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0)) #7
  call void @gimp_object_set_static_name(%struct._GimpObject* %71, i8* %call117)
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.108, %if.then.102
  %72 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %73 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %74 = load i8*, i8** %title.addr, align 8
  %75 = load i8*, i8** %role.addr, align 8
  %76 = load i8*, i8** %stock_id.addr, align 8
  %77 = load i8*, i8** %desc.addr, align 8
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %79 = load i8*, i8** %help_id.addr, align 8
  %call119 = call %struct._GtkWidget* (%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, ...) @gimp_viewable_dialog_new(%struct._GimpViewable* %72, %struct._GimpContext* %73, i8* %74, i8* %75, i8* %76, i8* %77, %struct._GtkWidget* %78, void (i8*, i8*)* @gimp_standard_help_func, i8* %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 -5, i8* null)
  %80 = load %struct._TemplateOptionsDialog*, %struct._TemplateOptionsDialog** %options, align 8
  %dialog = getelementptr inbounds %struct._TemplateOptionsDialog, %struct._TemplateOptionsDialog* %80, i32 0, i32 0
  store %struct._GtkWidget* %call119, %struct._GtkWidget** %dialog, align 8
  %81 = load %struct._TemplateOptionsDialog*, %struct._TemplateOptionsDialog** %options, align 8
  %dialog120 = getelementptr inbounds %struct._TemplateOptionsDialog, %struct._TemplateOptionsDialog* %81, i32 0, i32 0
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog120, align 8
  %83 = bitcast %struct._GtkWidget* %82 to %struct._GTypeInstance*
  %call121 = call i64 @gtk_window_get_type() #5
  %call122 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call121)
  %84 = bitcast %struct._GTypeInstance* %call122 to %struct._GtkWindow*
  call void @gtk_window_set_resizable(%struct._GtkWindow* %84, i32 0)
  %85 = load %struct._TemplateOptionsDialog*, %struct._TemplateOptionsDialog** %options, align 8
  %dialog123 = getelementptr inbounds %struct._TemplateOptionsDialog, %struct._TemplateOptionsDialog* %85, i32 0, i32 0
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog123, align 8
  %87 = bitcast %struct._GtkWidget* %86 to %struct._GTypeInstance*
  %call124 = call i64 @gtk_dialog_get_type() #5
  %call125 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call124)
  %88 = bitcast %struct._GTypeInstance* %call125 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %88, i32 -5, i32 -6, i32 -1)
  %89 = load %struct._TemplateOptionsDialog*, %struct._TemplateOptionsDialog** %options, align 8
  %dialog126 = getelementptr inbounds %struct._TemplateOptionsDialog, %struct._TemplateOptionsDialog* %89, i32 0, i32 0
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog126, align 8
  %91 = bitcast %struct._GtkWidget* %90 to %struct._GTypeInstance*
  %call127 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 80)
  %92 = bitcast %struct._GTypeInstance* %call127 to %struct._GObject*
  %93 = load %struct._TemplateOptionsDialog*, %struct._TemplateOptionsDialog** %options, align 8
  %94 = bitcast %struct._TemplateOptionsDialog* %93 to i8*
  call void @g_object_weak_ref(%struct._GObject* %92, void (i8*, %struct._GObject*)* bitcast (void (%struct._TemplateOptionsDialog*)* @template_options_dialog_free to void (i8*, %struct._GObject*)*), i8* %94)
  %call128 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call128, %struct._GtkWidget** %vbox, align 8
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %96 = bitcast %struct._GtkWidget* %95 to %struct._GTypeInstance*
  %call129 = call i64 @gtk_container_get_type() #5
  %call130 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 %call129)
  %97 = bitcast %struct._GTypeInstance* %call130 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %97, i32 12)
  %98 = load %struct._TemplateOptionsDialog*, %struct._TemplateOptionsDialog** %options, align 8
  %dialog131 = getelementptr inbounds %struct._TemplateOptionsDialog, %struct._TemplateOptionsDialog* %98, i32 0, i32 0
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog131, align 8
  %100 = bitcast %struct._GtkWidget* %99 to %struct._GTypeInstance*
  %call132 = call i64 @gtk_dialog_get_type() #5
  %call133 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %100, i64 %call132)
  %101 = bitcast %struct._GTypeInstance* %call133 to %struct._GtkDialog*
  %call134 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %101)
  %102 = bitcast %struct._GtkWidget* %call134 to %struct._GTypeInstance*
  %call135 = call i64 @gtk_box_get_type() #5
  %call136 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %102, i64 %call135)
  %103 = bitcast %struct._GTypeInstance* %call136 to %struct._GtkBox*
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %103, %struct._GtkWidget* %104, i32 1, i32 1, i32 0)
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %105)
  %106 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %107 = load %struct._TemplateOptionsDialog*, %struct._TemplateOptionsDialog** %options, align 8
  %gimp137 = getelementptr inbounds %struct._TemplateOptionsDialog, %struct._TemplateOptionsDialog* %107, i32 0, i32 2
  %108 = load %struct._Gimp*, %struct._Gimp** %gimp137, align 8
  %call138 = call %struct._GtkWidget* @gimp_template_editor_new(%struct._GimpTemplate* %106, %struct._Gimp* %108, i32 1)
  %109 = load %struct._TemplateOptionsDialog*, %struct._TemplateOptionsDialog** %options, align 8
  %editor = getelementptr inbounds %struct._TemplateOptionsDialog, %struct._TemplateOptionsDialog* %109, i32 0, i32 1
  store %struct._GtkWidget* %call138, %struct._GtkWidget** %editor, align 8
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %111 = bitcast %struct._GtkWidget* %110 to %struct._GTypeInstance*
  %call139 = call i64 @gtk_box_get_type() #5
  %call140 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %111, i64 %call139)
  %112 = bitcast %struct._GTypeInstance* %call140 to %struct._GtkBox*
  %113 = load %struct._TemplateOptionsDialog*, %struct._TemplateOptionsDialog** %options, align 8
  %editor141 = getelementptr inbounds %struct._TemplateOptionsDialog, %struct._TemplateOptionsDialog* %113, i32 0, i32 1
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %editor141, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %112, %struct._GtkWidget* %114, i32 0, i32 0, i32 0)
  %115 = load %struct._TemplateOptionsDialog*, %struct._TemplateOptionsDialog** %options, align 8
  %editor142 = getelementptr inbounds %struct._TemplateOptionsDialog, %struct._TemplateOptionsDialog* %115, i32 0, i32 1
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %editor142, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %116)
  %117 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %118 = bitcast %struct._GimpTemplate* %117 to i8*
  call void @g_object_unref(i8* %118)
  %119 = load %struct._TemplateOptionsDialog*, %struct._TemplateOptionsDialog** %options, align 8
  store %struct._TemplateOptionsDialog* %119, %struct._TemplateOptionsDialog** %retval
  br label %return

return:                                           ; preds = %if.end.118, %if.else.95, %if.else.89, %if.else.83, %if.else.77, %if.else.71, %if.else.65, %if.else.37, %if.else.10
  %120 = load %struct._TemplateOptionsDialog*, %struct._TemplateOptionsDialog** %retval
  ret %struct._TemplateOptionsDialog* %120
}

; Function Attrs: nounwind readnone
declare i64 @gimp_template_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #1

declare noalias i8* @g_slice_alloc0(i64) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #1

declare i8* @gimp_config_duplicate(%struct._GimpConfig*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #1

declare void @gimp_object_set_static_name(%struct._GimpObject*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare %struct._GtkWidget* @gimp_viewable_dialog_new(%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, ...) #3

declare void @gimp_standard_help_func(i8*, i8*) #3

declare void @gtk_window_set_resizable(%struct._GtkWindow*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #1

declare void @g_object_weak_ref(%struct._GObject*, void (i8*, %struct._GObject*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @template_options_dialog_free(%struct._TemplateOptionsDialog* %dialog) #0 {
entry:
  %dialog.addr = alloca %struct._TemplateOptionsDialog*, align 8
  store %struct._TemplateOptionsDialog* %dialog, %struct._TemplateOptionsDialog** %dialog.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._TemplateOptionsDialog*, %struct._TemplateOptionsDialog** %dialog.addr, align 8
  %1 = bitcast %struct._TemplateOptionsDialog* %0 to i8*
  call void @g_slice_free1(i64 32, i8* %1)
  br label %do.end

do.end:                                           ; preds = %do.body
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

declare %struct._GtkWidget* @gimp_template_editor_new(%struct._GimpTemplate*, %struct._Gimp*, i32) #3

declare void @g_object_unref(i8*) #3

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
