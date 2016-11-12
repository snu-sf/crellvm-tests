; ModuleID = './modules/display-filter-gamma.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpModuleInfo = type { i32, i8*, i8*, i8*, i8*, i8* }
%struct._GTypeInfo = type { i16, void (i8*)*, void (i8*)*, void (i8*, i8*)*, void (i8*, i8*)*, i8*, i16, i16, void (%struct._GTypeInstance*, i8*)*, %struct._GTypeValueTable* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GTypeValueTable = type { void (%struct._GValue*)*, void (%struct._GValue*)*, void (%struct._GValue*, %struct._GValue*)*, i8* (%struct._GValue*)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%union._GTypeCValue = type opaque
%struct._GTypeModule = type { %struct._GObject, i32, %struct._GSList*, %struct._GSList*, i8* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._CdisplayGammaClass = type { %struct._GimpColorDisplayClass }
%struct._GimpColorDisplayClass = type { %struct._GObjectClass, i8*, i8*, %struct._GimpColorDisplay* (%struct._GimpColorDisplay*)*, void (%struct._GimpColorDisplay*, i8*, i32, i32, i32, i32)*, void (%struct._GimpColorDisplay*, %struct._GimpParasite*)*, %struct._GimpParasite* (%struct._GimpColorDisplay*)*, %struct._GtkWidget* (%struct._GimpColorDisplay*)*, void (%struct._GimpColorDisplay*)*, void (%struct._GimpColorDisplay*)*, i8*, void (%struct._GimpColorDisplay*, %struct._cairo_surface*)*, void ()*, void ()* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GimpColorDisplay = type { %struct._GObject, i32 }
%struct._GimpParasite = type opaque
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
%struct._cairo_surface = type opaque
%struct._CdisplayGamma = type { %struct._GimpColorDisplay, double, [256 x i8] }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@cdisplay_gamma_type_id = internal global i64 0, align 8
@cdisplay_gamma_info = internal constant %struct._GimpModuleInfo { i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [27 x i8] c"Gamma color display filter\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Manish Singh <yosh@gimp.org>\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"v0.2\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"(c) 1999, released under the GPL\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"October 14, 2000\00", align 1
@cdisplay_gamma_register_type.g_define_type_info = internal constant %struct._GTypeInfo { i16 240, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (i8*)* @cdisplay_gamma_class_intern_init to void (i8*, i8*)*), void (i8*, i8*)* bitcast (void (%struct._CdisplayGammaClass*)* @cdisplay_gamma_class_finalize to void (i8*, i8*)*), i8* null, i16 296, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._CdisplayGamma*)* @cdisplay_gamma_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"CdisplayGamma\00", align 1
@cdisplay_gamma_parent_class = internal global i8* null, align 8
@CdisplayGamma_private_offset = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"gamma\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Gamma\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"gimp-colordisplay-gamma\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"gimp-display-filter-gamma\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"display-filter-gamma.c\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"_Gamma:\00", align 1

; Function Attrs: nounwind uwtable
define i64 @cdisplay_gamma_get_type() #0 {
entry:
  %0 = load i64, i64* @cdisplay_gamma_type_id, align 8
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define %struct._GimpModuleInfo* @gimp_module_query(%struct._GTypeModule* %module) #0 {
entry:
  %module.addr = alloca %struct._GTypeModule*, align 8
  store %struct._GTypeModule* %module, %struct._GTypeModule** %module.addr, align 8
  ret %struct._GimpModuleInfo* @cdisplay_gamma_info
}

; Function Attrs: nounwind uwtable
define i32 @gimp_module_register(%struct._GTypeModule* %module) #0 {
entry:
  %module.addr = alloca %struct._GTypeModule*, align 8
  store %struct._GTypeModule* %module, %struct._GTypeModule** %module.addr, align 8
  %0 = load %struct._GTypeModule*, %struct._GTypeModule** %module.addr, align 8
  call void @cdisplay_gamma_register_type(%struct._GTypeModule* %0)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @cdisplay_gamma_register_type(%struct._GTypeModule* %type_module) #0 {
entry:
  %type_module.addr = alloca %struct._GTypeModule*, align 8
  %g_define_type_id = alloca i64, align 8
  store %struct._GTypeModule* %type_module, %struct._GTypeModule** %type_module.addr, align 8
  %0 = load %struct._GTypeModule*, %struct._GTypeModule** %type_module.addr, align 8
  %call = call i64 @gimp_color_display_get_type() #5
  %call1 = call i64 @g_type_module_register_type(%struct._GTypeModule* %0, i64 %call, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), %struct._GTypeInfo* @cdisplay_gamma_register_type.g_define_type_info, i32 0)
  store i64 %call1, i64* @cdisplay_gamma_type_id, align 8
  %1 = load i64, i64* @cdisplay_gamma_type_id, align 8
  store i64 %1, i64* %g_define_type_id, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cdisplay_gamma_class_intern_init(i8* %klass) #0 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @cdisplay_gamma_parent_class, align 8
  %1 = load i32, i32* @CdisplayGamma_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @CdisplayGamma_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._CdisplayGammaClass*
  call void @cdisplay_gamma_class_init(%struct._CdisplayGammaClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cdisplay_gamma_class_finalize(%struct._CdisplayGammaClass* %klass) #0 {
entry:
  %klass.addr = alloca %struct._CdisplayGammaClass*, align 8
  store %struct._CdisplayGammaClass* %klass, %struct._CdisplayGammaClass** %klass.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cdisplay_gamma_init(%struct._CdisplayGamma* %gamma) #0 {
entry:
  %gamma.addr = alloca %struct._CdisplayGamma*, align 8
  store %struct._CdisplayGamma* %gamma, %struct._CdisplayGamma** %gamma.addr, align 8
  ret void
}

declare i64 @g_type_module_register_type(%struct._GTypeModule*, i64, i8*, %struct._GTypeInfo*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_display_get_type() #2

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @cdisplay_gamma_class_init(%struct._CdisplayGammaClass* %klass) #0 {
entry:
  %klass.addr = alloca %struct._CdisplayGammaClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %display_class = alloca %struct._GimpColorDisplayClass*, align 8
  store %struct._CdisplayGammaClass* %klass, %struct._CdisplayGammaClass** %klass.addr, align 8
  %0 = load %struct._CdisplayGammaClass*, %struct._CdisplayGammaClass** %klass.addr, align 8
  %1 = bitcast %struct._CdisplayGammaClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._CdisplayGammaClass*, %struct._CdisplayGammaClass** %klass.addr, align 8
  %4 = bitcast %struct._CdisplayGammaClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_color_display_get_type() #5
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpColorDisplayClass*
  store %struct._GimpColorDisplayClass* %5, %struct._GimpColorDisplayClass** %display_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @cdisplay_gamma_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @cdisplay_gamma_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, double 1.000000e-02, double 1.000000e+01, double 1.000000e+00, i32 263)
  call void @g_object_class_install_property(%struct._GObjectClass* %8, i32 1, %struct._GParamSpec* %call3)
  %call4 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0)) #4
  %9 = load %struct._GimpColorDisplayClass*, %struct._GimpColorDisplayClass** %display_class, align 8
  %name = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %9, i32 0, i32 1
  store i8* %call4, i8** %name, align 8
  %10 = load %struct._GimpColorDisplayClass*, %struct._GimpColorDisplayClass** %display_class, align 8
  %help_id = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %10, i32 0, i32 2
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0), i8** %help_id, align 8
  %11 = load %struct._GimpColorDisplayClass*, %struct._GimpColorDisplayClass** %display_class, align 8
  %stock_id = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %11, i32 0, i32 10
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0), i8** %stock_id, align 8
  %12 = load %struct._GimpColorDisplayClass*, %struct._GimpColorDisplayClass** %display_class, align 8
  %convert_surface = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %12, i32 0, i32 11
  store void (%struct._GimpColorDisplay*, %struct._cairo_surface*)* @cdisplay_gamma_convert_surface, void (%struct._GimpColorDisplay*, %struct._cairo_surface*)** %convert_surface, align 8
  %13 = load %struct._GimpColorDisplayClass*, %struct._GimpColorDisplayClass** %display_class, align 8
  %configure = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %13, i32 0, i32 7
  store %struct._GtkWidget* (%struct._GimpColorDisplay*)* @cdisplay_gamma_configure, %struct._GtkWidget* (%struct._GimpColorDisplay*)** %configure, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @cdisplay_gamma_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #0 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %gamma = alloca %struct._CdisplayGamma*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @cdisplay_gamma_get_type()
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._CdisplayGamma*
  store %struct._CdisplayGamma* %2, %struct._CdisplayGamma** %gamma, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._CdisplayGamma*, %struct._CdisplayGamma** %gamma, align 8
  %gamma2 = getelementptr inbounds %struct._CdisplayGamma, %struct._CdisplayGamma* %5, i32 0, i32 1
  %6 = load double, double* %gamma2, align 8
  call void @g_value_set_double(%struct._GValue* %4, double %6)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %7 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %7, %struct._GObject** %_glib__object, align 8
  %8 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %8, %struct._GParamSpec** %_glib__pspec, align 8
  %9 = load i32, i32* %property_id.addr, align 4
  store i32 %9, i32* %_glib__property_id, align 4
  %10 = load i32, i32* %_glib__property_id, align 4
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %11, i32 0, i32 1
  %12 = load i8*, i8** %name, align 8
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %14 = bitcast %struct._GParamSpec* %13 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %15, i32 0, i32 0
  %16 = load i64, i64* %g_type, align 8
  %call3 = call i8* @g_type_name(i64 %16)
  %17 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %18 = bitcast %struct._GObject* %17 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %20)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0), i32 157, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 %10, i8* %12, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cdisplay_gamma_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #0 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %gamma = alloca %struct._CdisplayGamma*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @cdisplay_gamma_get_type()
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._CdisplayGamma*
  store %struct._CdisplayGamma* %2, %struct._CdisplayGamma** %gamma, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._CdisplayGamma*, %struct._CdisplayGamma** %gamma, align 8
  %5 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call double @g_value_get_double(%struct._GValue* %5)
  call void @cdisplay_gamma_set_gamma(%struct._CdisplayGamma* %4, double %call2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %6 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %6, %struct._GObject** %_glib__object, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %7, %struct._GParamSpec** %_glib__pspec, align 8
  %8 = load i32, i32* %property_id.addr, align 4
  store i32 %8, i32* %_glib__property_id, align 4
  %9 = load i32, i32* %_glib__property_id, align 4
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %10, i32 0, i32 1
  %11 = load i8*, i8** %name, align 8
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %13 = bitcast %struct._GParamSpec* %12 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %13, i32 0, i32 0
  %14 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %14, i32 0, i32 0
  %15 = load i64, i64* %g_type, align 8
  %call3 = call i8* @g_type_name(i64 %15)
  %16 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %17 = bitcast %struct._GObject* %16 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %18, i32 0, i32 0
  %19 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %19)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0), i32 176, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 %9, i8* %11, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @cdisplay_gamma_convert_surface(%struct._GimpColorDisplay* %display, %struct._cairo_surface* %surface) #0 {
entry:
  %display.addr = alloca %struct._GimpColorDisplay*, align 8
  %surface.addr = alloca %struct._cairo_surface*, align 8
  %gamma = alloca %struct._CdisplayGamma*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %stride = alloca i32, align 4
  %buf = alloca i8*, align 8
  %fmt = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %skip = alloca i32, align 4
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %a = alloca i32, align 4
  %tb = alloca i32, align 4
  %tg = alloca i32, align 4
  %tr = alloca i32, align 4
  %ta = alloca i32, align 4
  %tr34 = alloca i32, align 4
  %tg37 = alloca i32, align 4
  %tb40 = alloca i32, align 4
  store %struct._GimpColorDisplay* %display, %struct._GimpColorDisplay** %display.addr, align 8
  store %struct._cairo_surface* %surface, %struct._cairo_surface** %surface.addr, align 8
  %0 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %1 = bitcast %struct._GimpColorDisplay* %0 to %struct._GTypeInstance*
  %call = call i64 @cdisplay_gamma_get_type()
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._CdisplayGamma*
  store %struct._CdisplayGamma* %2, %struct._CdisplayGamma** %gamma, align 8
  %3 = load %struct._cairo_surface*, %struct._cairo_surface** %surface.addr, align 8
  %call2 = call i32 @cairo_image_surface_get_width(%struct._cairo_surface* %3)
  store i32 %call2, i32* %width, align 4
  %4 = load %struct._cairo_surface*, %struct._cairo_surface** %surface.addr, align 8
  %call3 = call i32 @cairo_image_surface_get_height(%struct._cairo_surface* %4)
  store i32 %call3, i32* %height, align 4
  %5 = load %struct._cairo_surface*, %struct._cairo_surface** %surface.addr, align 8
  %call4 = call i32 @cairo_image_surface_get_stride(%struct._cairo_surface* %5)
  store i32 %call4, i32* %stride, align 4
  %6 = load %struct._cairo_surface*, %struct._cairo_surface** %surface.addr, align 8
  %call5 = call i8* @cairo_image_surface_get_data(%struct._cairo_surface* %6)
  store i8* %call5, i8** %buf, align 8
  %7 = load %struct._cairo_surface*, %struct._cairo_surface** %surface.addr, align 8
  %call6 = call i32 @cairo_image_surface_get_format(%struct._cairo_surface* %7)
  store i32 %call6, i32* %fmt, align 4
  %8 = load i32, i32* %fmt, align 4
  %cmp = icmp ne i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.end.61

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %height, align 4
  store i32 %9, i32* %j, align 4
  %10 = load i32, i32* %stride, align 4
  %11 = load i32, i32* %width, align 4
  %mul = mul nsw i32 4, %11
  %sub = sub nsw i32 %10, %mul
  store i32 %sub, i32* %skip, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.end
  %12 = load i32, i32* %j, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %j, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %while.body, label %while.end.61

while.body:                                       ; preds = %while.cond
  %13 = load i32, i32* %width, align 4
  store i32 %13, i32* %i, align 4
  br label %while.cond.7

while.cond.7:                                     ; preds = %do.end.59, %while.body
  %14 = load i32, i32* %i, align 4
  %dec8 = add nsw i32 %14, -1
  store i32 %dec8, i32* %i, align 4
  %tobool9 = icmp ne i32 %14, 0
  br i1 %tobool9, label %while.body.10, label %while.end

while.body.10:                                    ; preds = %while.cond.7
  br label %do.body

do.body:                                          ; preds = %while.body.10
  %15 = load i8*, i8** %buf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 0
  %16 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %16 to i32
  store i32 %conv, i32* %tb, align 4
  %17 = load i8*, i8** %buf, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %18 to i32
  store i32 %conv12, i32* %tg, align 4
  %19 = load i8*, i8** %buf, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %19, i64 2
  %20 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %20 to i32
  store i32 %conv14, i32* %tr, align 4
  %21 = load i8*, i8** %buf, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %21, i64 3
  %22 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %22 to i32
  store i32 %conv16, i32* %ta, align 4
  %23 = load i32, i32* %tr, align 4
  %shl = shl i32 %23, 8
  %24 = load i32, i32* %ta, align 4
  %add = add i32 %24, 1
  %div = udiv i32 %shl, %add
  store i32 %div, i32* %r, align 4
  %25 = load i32, i32* %tg, align 4
  %shl17 = shl i32 %25, 8
  %26 = load i32, i32* %ta, align 4
  %add18 = add i32 %26, 1
  %div19 = udiv i32 %shl17, %add18
  store i32 %div19, i32* %g, align 4
  %27 = load i32, i32* %tb, align 4
  %shl20 = shl i32 %27, 8
  %28 = load i32, i32* %ta, align 4
  %add21 = add i32 %28, 1
  %div22 = udiv i32 %shl20, %add21
  store i32 %div22, i32* %b, align 4
  %29 = load i32, i32* %ta, align 4
  store i32 %29, i32* %a, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %30 = load i32, i32* %r, align 4
  %idxprom = sext i32 %30 to i64
  %31 = load %struct._CdisplayGamma*, %struct._CdisplayGamma** %gamma, align 8
  %lookup = getelementptr inbounds %struct._CdisplayGamma, %struct._CdisplayGamma* %31, i32 0, i32 2
  %arrayidx23 = getelementptr inbounds [256 x i8], [256 x i8]* %lookup, i32 0, i64 %idxprom
  %32 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %32 to i32
  store i32 %conv24, i32* %r, align 4
  %33 = load i32, i32* %g, align 4
  %idxprom25 = sext i32 %33 to i64
  %34 = load %struct._CdisplayGamma*, %struct._CdisplayGamma** %gamma, align 8
  %lookup26 = getelementptr inbounds %struct._CdisplayGamma, %struct._CdisplayGamma* %34, i32 0, i32 2
  %arrayidx27 = getelementptr inbounds [256 x i8], [256 x i8]* %lookup26, i32 0, i64 %idxprom25
  %35 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %35 to i32
  store i32 %conv28, i32* %g, align 4
  %36 = load i32, i32* %b, align 4
  %idxprom29 = sext i32 %36 to i64
  %37 = load %struct._CdisplayGamma*, %struct._CdisplayGamma** %gamma, align 8
  %lookup30 = getelementptr inbounds %struct._CdisplayGamma, %struct._CdisplayGamma* %37, i32 0, i32 2
  %arrayidx31 = getelementptr inbounds [256 x i8], [256 x i8]* %lookup30, i32 0, i64 %idxprom29
  %38 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %38 to i32
  store i32 %conv32, i32* %b, align 4
  br label %do.body.33

do.body.33:                                       ; preds = %do.end
  %39 = load i32, i32* %a, align 4
  %40 = load i32, i32* %r, align 4
  %mul35 = mul nsw i32 %39, %40
  %add36 = add nsw i32 %mul35, 128
  store i32 %add36, i32* %tr34, align 4
  %41 = load i32, i32* %a, align 4
  %42 = load i32, i32* %g, align 4
  %mul38 = mul nsw i32 %41, %42
  %add39 = add nsw i32 %mul38, 128
  store i32 %add39, i32* %tg37, align 4
  %43 = load i32, i32* %a, align 4
  %44 = load i32, i32* %b, align 4
  %mul41 = mul nsw i32 %43, %44
  %add42 = add nsw i32 %mul41, 128
  store i32 %add42, i32* %tb40, align 4
  %45 = load i32, i32* %tb40, align 4
  %shr = lshr i32 %45, 8
  %46 = load i32, i32* %tb40, align 4
  %add43 = add i32 %shr, %46
  %shr44 = lshr i32 %add43, 8
  %conv45 = trunc i32 %shr44 to i8
  %47 = load i8*, i8** %buf, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %47, i64 0
  store i8 %conv45, i8* %arrayidx46, align 1
  %48 = load i32, i32* %tg37, align 4
  %shr47 = lshr i32 %48, 8
  %49 = load i32, i32* %tg37, align 4
  %add48 = add i32 %shr47, %49
  %shr49 = lshr i32 %add48, 8
  %conv50 = trunc i32 %shr49 to i8
  %50 = load i8*, i8** %buf, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %50, i64 1
  store i8 %conv50, i8* %arrayidx51, align 1
  %51 = load i32, i32* %tr34, align 4
  %shr52 = lshr i32 %51, 8
  %52 = load i32, i32* %tr34, align 4
  %add53 = add i32 %shr52, %52
  %shr54 = lshr i32 %add53, 8
  %conv55 = trunc i32 %shr54 to i8
  %53 = load i8*, i8** %buf, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %53, i64 2
  store i8 %conv55, i8* %arrayidx56, align 1
  %54 = load i32, i32* %a, align 4
  %conv57 = trunc i32 %54 to i8
  %55 = load i8*, i8** %buf, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %55, i64 3
  store i8 %conv57, i8* %arrayidx58, align 1
  br label %do.end.59

do.end.59:                                        ; preds = %do.body.33
  %56 = load i8*, i8** %buf, align 8
  %add.ptr = getelementptr inbounds i8, i8* %56, i64 4
  store i8* %add.ptr, i8** %buf, align 8
  br label %while.cond.7

while.end:                                        ; preds = %while.cond.7
  %57 = load i32, i32* %skip, align 4
  %58 = load i8*, i8** %buf, align 8
  %idx.ext = sext i32 %57 to i64
  %add.ptr60 = getelementptr inbounds i8, i8* %58, i64 %idx.ext
  store i8* %add.ptr60, i8** %buf, align 8
  br label %while.cond

while.end.61:                                     ; preds = %if.then, %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @cdisplay_gamma_configure(%struct._GimpColorDisplay* %display) #0 {
entry:
  %display.addr = alloca %struct._GimpColorDisplay*, align 8
  %gamma = alloca %struct._CdisplayGamma*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  store %struct._GimpColorDisplay* %display, %struct._GimpColorDisplay** %display.addr, align 8
  %0 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %1 = bitcast %struct._GimpColorDisplay* %0 to %struct._GTypeInstance*
  %call = call i64 @cdisplay_gamma_get_type()
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._CdisplayGamma*
  store %struct._CdisplayGamma* %2, %struct._CdisplayGamma** %gamma, align 8
  %call2 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %hbox, align 8
  %call3 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0)) #4
  %call4 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call3)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %label, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_box_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call5)
  %5 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkBox*
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %5, %struct._GtkWidget* %6, i32 0, i32 0, i32 0)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %7)
  %8 = load %struct._CdisplayGamma*, %struct._CdisplayGamma** %gamma, align 8
  %9 = bitcast %struct._CdisplayGamma* %8 to %struct._GTypeInstance*
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 80)
  %10 = bitcast %struct._GTypeInstance* %call7 to %struct._GObject*
  %call8 = call %struct._GtkWidget* @gimp_prop_spin_button_new(%struct._GObject* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), double 1.000000e-01, double 1.000000e+00, i32 3)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %spinbutton, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_box_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call9)
  %13 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkBox*
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %13, %struct._GtkWidget* %14, i32 0, i32 0, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_label_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call11)
  %18 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkLabel*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %18, %struct._GtkWidget* %19)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  ret %struct._GtkWidget* %20
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* null, i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: nounwind uwtable
define internal void @cdisplay_gamma_set_gamma(%struct._CdisplayGamma* %gamma, double %value) #0 {
entry:
  %gamma.addr = alloca %struct._CdisplayGamma*, align 8
  %value.addr = alloca double, align 8
  %one_over_gamma = alloca double, align 8
  %i = alloca i32, align 4
  %ind = alloca double, align 8
  store %struct._CdisplayGamma* %gamma, %struct._CdisplayGamma** %gamma.addr, align 8
  store double %value, double* %value.addr, align 8
  %0 = load double, double* %value.addr, align 8
  %cmp = fcmp ole double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 1.000000e+00, double* %value.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load double, double* %value.addr, align 8
  %2 = load %struct._CdisplayGamma*, %struct._CdisplayGamma** %gamma.addr, align 8
  %gamma1 = getelementptr inbounds %struct._CdisplayGamma, %struct._CdisplayGamma* %2, i32 0, i32 1
  %3 = load double, double* %gamma1, align 8
  %cmp2 = fcmp une double %1, %3
  br i1 %cmp2, label %if.then.3, label %if.end.12

if.then.3:                                        ; preds = %if.end
  %4 = load double, double* %value.addr, align 8
  %div = fdiv double 1.000000e+00, %4
  store double %div, double* %one_over_gamma, align 8
  %5 = load double, double* %value.addr, align 8
  %6 = load %struct._CdisplayGamma*, %struct._CdisplayGamma** %gamma.addr, align 8
  %gamma4 = getelementptr inbounds %struct._CdisplayGamma, %struct._CdisplayGamma* %6, i32 0, i32 1
  store double %5, double* %gamma4, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %7 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %7, 256
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %conv = sitofp i32 %8 to double
  %div6 = fdiv double %conv, 2.550000e+02
  store double %div6, double* %ind, align 8
  %9 = load double, double* %ind, align 8
  %10 = load double, double* %one_over_gamma, align 8
  %call = call double @pow(double %9, double %10) #4
  %mul = fmul double 2.550000e+02, %call
  %conv7 = fptosi double %mul to i32
  %conv8 = trunc i32 %conv7 to i8
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct._CdisplayGamma*, %struct._CdisplayGamma** %gamma.addr, align 8
  %lookup = getelementptr inbounds %struct._CdisplayGamma, %struct._CdisplayGamma* %12, i32 0, i32 2
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %lookup, i32 0, i64 %idxprom
  store i8 %conv8, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct._CdisplayGamma*, %struct._CdisplayGamma** %gamma.addr, align 8
  %15 = bitcast %struct._CdisplayGamma* %14 to %struct._GTypeInstance*
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 80)
  %16 = bitcast %struct._GTypeInstance* %call9 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0))
  %17 = load %struct._CdisplayGamma*, %struct._CdisplayGamma** %gamma.addr, align 8
  %18 = bitcast %struct._CdisplayGamma* %17 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_color_display_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call10)
  %19 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpColorDisplay*
  call void @gimp_color_display_changed(%struct._GimpColorDisplay* %19)
  br label %if.end.12

if.end.12:                                        ; preds = %for.end, %if.end
  ret void
}

declare double @g_value_get_double(%struct._GValue*) #1

; Function Attrs: nounwind
declare double @pow(double, double) #3

declare void @g_object_notify(%struct._GObject*, i8*) #1

declare void @gimp_color_display_changed(%struct._GimpColorDisplay*) #1

declare i32 @cairo_image_surface_get_width(%struct._cairo_surface*) #1

declare i32 @cairo_image_surface_get_height(%struct._cairo_surface*) #1

declare i32 @cairo_image_surface_get_stride(%struct._cairo_surface*) #1

declare i8* @cairo_image_surface_get_data(%struct._cairo_surface*) #1

declare i32 @cairo_image_surface_get_format(%struct._cairo_surface*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_prop_spin_button_new(%struct._GObject*, i8*, double, double, i32) #1

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
