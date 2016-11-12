; ModuleID = './modules/display-filter-color-blind.bc'
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
%struct._GEnumValue = type { i32, i8*, i8* }
%struct._GimpEnumDesc = type { i32, i8*, i8* }
%struct._GTypeModule = type { %struct._GObject, i32, %struct._GSList*, %struct._GSList*, i8* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._CdisplayColorblindClass = type { %struct._GimpColorDisplayClass }
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
%struct._CdisplayColorblind = type { %struct._GimpColorDisplay, i32, float, float, float, float, float, float, float, [2042 x i32], [256 x float] }
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
%struct._GEnumClass = type { %struct._GTypeClass, i32, i32, i32, %struct._GEnumValue* }

@cdisplay_colorblind_type_id = internal global i64 0, align 8
@cdisplay_colorblind_info = internal constant %struct._GimpModuleInfo { i32 4, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [66 x i8] c"Color deficit simulation filter (Brettel-Vienot-Mollon algorithm)\00", align 1
@.str.1 = private unnamed_addr constant [99 x i8] c"Michael Natterer <mitch@gimp.org>, Bob Dougherty <bob@vischeck.com>, Alex Wade <alex@vischeck.com>\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"v0.2\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"(c) 2002-2004, released under the GPL\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"January 22, 2003\00", align 1
@cdisplay_colorblind_register_type.g_define_type_info = internal constant %struct._GTypeInfo { i16 240, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (i8*)* @cdisplay_colorblind_class_intern_init to void (i8*, i8*)*), void (i8*, i8*)* bitcast (void (%struct._CdisplayColorblindClass*)* @cdisplay_colorblind_class_finalize to void (i8*, i8*)*), i8* null, i16 9256, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._CdisplayColorblind*)* @cdisplay_colorblind_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"CdisplayColorblind\00", align 1
@cdisplay_colorblind_parent_class = internal global i8* null, align 8
@CdisplayColorblind_private_offset = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"deficiency\00", align 1
@cdisplay_colorblind_deficiency_type = internal global i64 0, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Color Deficient Vision\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"gimp-colordisplay-colorblind\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"gimp-display-filter-colorblind\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"display-filter-color-blind.c\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@rgb2lms = internal constant [9 x float] [float 0x3FA9E83880000000, float 0x3FB5FA81E0000000, float 0x3F83816C80000000, float 0x3F93627900000000, float 0x3FB6D94A40000000, float 0x3F8C0F0760000000, float 0x3F67EFEB80000000, float 0x3F83FBA560000000, float 0x3FB24B3060000000], align 16
@lms2rgb = internal constant [9 x float] [float 0x403ED4B2E0000000, float 0xC03DD52920000000, float 0x3FF9C48060000000, float 0xC019ED0600000000, float 0x4031B73020000000, float 0xC00442D9C0000000, float 0xBFD80B4E20000000, float 0xBFF32F5BA0000000, float 0x402C8C3580000000], align 16
@.str.14 = private unnamed_addr constant [24 x i8] c"Color _deficiency type:\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"CDisplayColorblindDeficiency\00", align 1
@enum_values = internal constant [4 x %struct._GEnumValue] [%struct._GEnumValue { i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0) }, %struct._GEnumValue { i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0) }, %struct._GEnumValue { i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0) }, %struct._GEnumValue zeroinitializer], align 16
@enum_descs = internal constant [4 x %struct._GimpEnumDesc] [%struct._GimpEnumDesc { i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.23, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc { i32 2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i32 0, i32 0), i8* null }, %struct._GimpEnumDesc zeroinitializer], align 16
@.str.16 = private unnamed_addr constant [33 x i8] c"COLORBLIND_DEFICIENCY_PROTANOPIA\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"protanopia\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"COLORBLIND_DEFICIENCY_DEUTERANOPIA\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"deuteranopia\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"COLORBLIND_DEFICIENCY_TRITANOPIA\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"tritanopia\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"Protanopia (insensitivity to red)\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"Deuteranopia (insensitivity to green)\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"Tritanopia (insensitivity to blue)\00", align 1

; Function Attrs: nounwind uwtable
define i64 @cdisplay_colorblind_get_type() #0 {
entry:
  %0 = load i64, i64* @cdisplay_colorblind_type_id, align 8
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define %struct._GimpModuleInfo* @gimp_module_query(%struct._GTypeModule* %module) #0 {
entry:
  %module.addr = alloca %struct._GTypeModule*, align 8
  store %struct._GTypeModule* %module, %struct._GTypeModule** %module.addr, align 8
  ret %struct._GimpModuleInfo* @cdisplay_colorblind_info
}

; Function Attrs: nounwind uwtable
define i32 @gimp_module_register(%struct._GTypeModule* %module) #0 {
entry:
  %module.addr = alloca %struct._GTypeModule*, align 8
  store %struct._GTypeModule* %module, %struct._GTypeModule** %module.addr, align 8
  %0 = load %struct._GTypeModule*, %struct._GTypeModule** %module.addr, align 8
  call void @cdisplay_colorblind_register_type(%struct._GTypeModule* %0)
  %1 = load %struct._GTypeModule*, %struct._GTypeModule** %module.addr, align 8
  %call = call i64 @cdisplay_colorblind_deficiency_register_type(%struct._GTypeModule* %1)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @cdisplay_colorblind_register_type(%struct._GTypeModule* %type_module) #0 {
entry:
  %type_module.addr = alloca %struct._GTypeModule*, align 8
  %g_define_type_id = alloca i64, align 8
  store %struct._GTypeModule* %type_module, %struct._GTypeModule** %type_module.addr, align 8
  %0 = load %struct._GTypeModule*, %struct._GTypeModule** %type_module.addr, align 8
  %call = call i64 @gimp_color_display_get_type() #6
  %call1 = call i64 @g_type_module_register_type(%struct._GTypeModule* %0, i64 %call, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), %struct._GTypeInfo* @cdisplay_colorblind_register_type.g_define_type_info, i32 0)
  store i64 %call1, i64* @cdisplay_colorblind_type_id, align 8
  %1 = load i64, i64* @cdisplay_colorblind_type_id, align 8
  store i64 %1, i64* %g_define_type_id, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @cdisplay_colorblind_deficiency_register_type(%struct._GTypeModule* %module) #0 {
entry:
  %module.addr = alloca %struct._GTypeModule*, align 8
  store %struct._GTypeModule* %module, %struct._GTypeModule** %module.addr, align 8
  %0 = load i64, i64* @cdisplay_colorblind_deficiency_type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._GTypeModule*, %struct._GTypeModule** %module.addr, align 8
  %call = call i64 @g_type_module_register_enum(%struct._GTypeModule* %1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0), %struct._GEnumValue* getelementptr inbounds ([4 x %struct._GEnumValue], [4 x %struct._GEnumValue]* @enum_values, i32 0, i32 0))
  store i64 %call, i64* @cdisplay_colorblind_deficiency_type, align 8
  %2 = load i64, i64* @cdisplay_colorblind_deficiency_type, align 8
  call void @gimp_type_set_translation_domain(i64 %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0))
  %3 = load i64, i64* @cdisplay_colorblind_deficiency_type, align 8
  call void @gimp_enum_set_value_descriptions(i64 %3, %struct._GimpEnumDesc* getelementptr inbounds ([4 x %struct._GimpEnumDesc], [4 x %struct._GimpEnumDesc]* @enum_descs, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* @cdisplay_colorblind_deficiency_type, align 8
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define internal void @cdisplay_colorblind_class_intern_init(i8* %klass) #0 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @cdisplay_colorblind_parent_class, align 8
  %1 = load i32, i32* @CdisplayColorblind_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @CdisplayColorblind_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._CdisplayColorblindClass*
  call void @cdisplay_colorblind_class_init(%struct._CdisplayColorblindClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cdisplay_colorblind_class_finalize(%struct._CdisplayColorblindClass* %klass) #0 {
entry:
  %klass.addr = alloca %struct._CdisplayColorblindClass*, align 8
  store %struct._CdisplayColorblindClass* %klass, %struct._CdisplayColorblindClass** %klass.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cdisplay_colorblind_init(%struct._CdisplayColorblind* %colorblind) #0 {
entry:
  %colorblind.addr = alloca %struct._CdisplayColorblind*, align 8
  %i = alloca i32, align 4
  store %struct._CdisplayColorblind* %colorblind, %struct._CdisplayColorblind** %colorblind.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %conv = sitofp i32 %1 to double
  %call = call double @pow(double %conv, double 0x3FDE79E7B5B236A3) #4
  %conv1 = fptrunc double %call to float
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind.addr, align 8
  %gamma_lut = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %3, i32 0, i32 10
  %arrayidx = getelementptr inbounds [256 x float], [256 x float]* %gamma_lut, i32 0, i64 %idxprom
  store float %conv1, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i64 @g_type_module_register_type(%struct._GTypeModule*, i64, i8*, %struct._GTypeInfo*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_display_get_type() #2

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @cdisplay_colorblind_class_init(%struct._CdisplayColorblindClass* %klass) #0 {
entry:
  %klass.addr = alloca %struct._CdisplayColorblindClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %display_class = alloca %struct._GimpColorDisplayClass*, align 8
  store %struct._CdisplayColorblindClass* %klass, %struct._CdisplayColorblindClass** %klass.addr, align 8
  %0 = load %struct._CdisplayColorblindClass*, %struct._CdisplayColorblindClass** %klass.addr, align 8
  %1 = bitcast %struct._CdisplayColorblindClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._CdisplayColorblindClass*, %struct._CdisplayColorblindClass** %klass.addr, align 8
  %4 = bitcast %struct._CdisplayColorblindClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_color_display_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpColorDisplayClass*
  store %struct._GimpColorDisplayClass* %5, %struct._GimpColorDisplayClass** %display_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @cdisplay_colorblind_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @cdisplay_colorblind_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %9 = load i64, i64* @cdisplay_colorblind_deficiency_type, align 8
  %call3 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i64 %9, i32 1, i32 263)
  call void @g_object_class_install_property(%struct._GObjectClass* %8, i32 1, %struct._GParamSpec* %call3)
  %call4 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0)) #4
  %10 = load %struct._GimpColorDisplayClass*, %struct._GimpColorDisplayClass** %display_class, align 8
  %name = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %10, i32 0, i32 1
  store i8* %call4, i8** %name, align 8
  %11 = load %struct._GimpColorDisplayClass*, %struct._GimpColorDisplayClass** %display_class, align 8
  %help_id = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %11, i32 0, i32 2
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0), i8** %help_id, align 8
  %12 = load %struct._GimpColorDisplayClass*, %struct._GimpColorDisplayClass** %display_class, align 8
  %stock_id = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %12, i32 0, i32 10
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0), i8** %stock_id, align 8
  %13 = load %struct._GimpColorDisplayClass*, %struct._GimpColorDisplayClass** %display_class, align 8
  %convert_surface = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %13, i32 0, i32 11
  store void (%struct._GimpColorDisplay*, %struct._cairo_surface*)* @cdisplay_colorblind_convert_surface, void (%struct._GimpColorDisplay*, %struct._cairo_surface*)** %convert_surface, align 8
  %14 = load %struct._GimpColorDisplayClass*, %struct._GimpColorDisplayClass** %display_class, align 8
  %configure = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %14, i32 0, i32 7
  store %struct._GtkWidget* (%struct._GimpColorDisplay*)* @cdisplay_colorblind_configure, %struct._GtkWidget* (%struct._GimpColorDisplay*)** %configure, align 8
  %15 = load %struct._GimpColorDisplayClass*, %struct._GimpColorDisplayClass** %display_class, align 8
  %changed = getelementptr inbounds %struct._GimpColorDisplayClass, %struct._GimpColorDisplayClass* %15, i32 0, i32 9
  store void (%struct._GimpColorDisplay*)* @cdisplay_colorblind_changed, void (%struct._GimpColorDisplay*)** %changed, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @cdisplay_colorblind_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #0 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %colorblind = alloca %struct._CdisplayColorblind*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @cdisplay_colorblind_get_type()
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._CdisplayColorblind*
  store %struct._CdisplayColorblind* %2, %struct._CdisplayColorblind** %colorblind, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %deficiency = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %5, i32 0, i32 1
  %6 = load i32, i32* %deficiency, align 4
  call void @g_value_set_enum(%struct._GValue* %4, i32 %6)
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
  %call2 = call i8* @g_type_name(i64 %16)
  %17 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %18 = bitcast %struct._GObject* %17 to %struct._GTypeInstance*
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type4 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type4, align 8
  %call5 = call i8* @g_type_name(i64 %20)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i32 0, i32 0), i32 295, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 %10, i8* %12, i8* %call2, i8* %call5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cdisplay_colorblind_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #0 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %colorblind = alloca %struct._CdisplayColorblind*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @cdisplay_colorblind_get_type()
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._CdisplayColorblind*
  store %struct._CdisplayColorblind* %2, %struct._CdisplayColorblind** %colorblind, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %5 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_enum(%struct._GValue* %5)
  call void @cdisplay_colorblind_set_deficiency(%struct._CdisplayColorblind* %4, i32 %call2)
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
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i32 0, i32 0), i32 316, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 %9, i8* %11, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @cdisplay_colorblind_convert_surface(%struct._GimpColorDisplay* %display, %struct._cairo_surface* %surface) #0 {
entry:
  %display.addr = alloca %struct._GimpColorDisplay*, align 8
  %surface.addr = alloca %struct._cairo_surface*, align 8
  %colorblind = alloca %struct._CdisplayColorblind*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %stride = alloca i32, align 4
  %buf = alloca i8*, align 8
  %fmt = alloca i32, align 4
  %a1 = alloca float, align 4
  %b1 = alloca float, align 4
  %c1 = alloca float, align 4
  %a2 = alloca float, align 4
  %b2 = alloca float, align 4
  %c2 = alloca float, align 4
  %tmp = alloca float, align 4
  %red = alloca float, align 4
  %green = alloca float, align 4
  %blue = alloca float, align 4
  %redOld = alloca float, align 4
  %greenOld = alloca float, align 4
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b = alloca i8, align 1
  %a = alloca i8, align 1
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %skip = alloca i32, align 4
  %pixel = alloca i32, align 4
  %index = alloca i32, align 4
  %tb = alloca i32, align 4
  %tg = alloca i32, align 4
  %tr = alloca i32, align 4
  %ta = alloca i32, align 4
  %tr75 = alloca i32, align 4
  %tg81 = alloca i32, align 4
  %tb87 = alloca i32, align 4
  %tr209 = alloca i32, align 4
  %tg215 = alloca i32, align 4
  %tb221 = alloca i32, align 4
  store %struct._GimpColorDisplay* %display, %struct._GimpColorDisplay** %display.addr, align 8
  store %struct._cairo_surface* %surface, %struct._cairo_surface** %surface.addr, align 8
  %0 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %1 = bitcast %struct._GimpColorDisplay* %0 to %struct._GTypeInstance*
  %call = call i64 @cdisplay_colorblind_get_type()
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._CdisplayColorblind*
  store %struct._CdisplayColorblind* %2, %struct._CdisplayColorblind** %colorblind, align 8
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
  %8 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %a17 = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %8, i32 0, i32 2
  %9 = load float, float* %a17, align 4
  store float %9, float* %a1, align 4
  %10 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %b18 = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %10, i32 0, i32 3
  %11 = load float, float* %b18, align 4
  store float %11, float* %b1, align 4
  %12 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %c19 = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %12, i32 0, i32 4
  %13 = load float, float* %c19, align 4
  store float %13, float* %c1, align 4
  %14 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %a210 = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %14, i32 0, i32 5
  %15 = load float, float* %a210, align 4
  store float %15, float* %a2, align 4
  %16 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %b211 = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %16, i32 0, i32 6
  %17 = load float, float* %b211, align 4
  store float %17, float* %b2, align 4
  %18 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %c212 = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %18, i32 0, i32 7
  %19 = load float, float* %c212, align 4
  store float %19, float* %c2, align 4
  %20 = load i32, i32* %fmt, align 4
  %cmp = icmp ne i32 %20, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end.262

if.end:                                           ; preds = %entry
  %21 = load i32, i32* %stride, align 4
  %22 = load i32, i32* %width, align 4
  %mul = mul nsw i32 4, %22
  %sub = sub nsw i32 %21, %mul
  store i32 %sub, i32* %skip, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.259, %if.end
  %23 = load i32, i32* %y, align 4
  %24 = load i32, i32* %height, align 4
  %cmp25 = icmp slt i32 %23, %24
  br i1 %cmp25, label %for.body, label %for.end.262

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc, %for.body
  %25 = load i32, i32* %x, align 4
  %26 = load i32, i32* %width, align 4
  %cmp27 = icmp slt i32 %25, %26
  br i1 %cmp27, label %for.body.28, label %for.end

for.body.28:                                      ; preds = %for.cond.26
  br label %do.body

do.body:                                          ; preds = %for.body.28
  %27 = load i8*, i8** %buf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %27, i64 0
  %28 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %28 to i32
  store i32 %conv, i32* %tb, align 4
  %29 = load i8*, i8** %buf, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %29, i64 1
  %30 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %30 to i32
  store i32 %conv34, i32* %tg, align 4
  %31 = load i8*, i8** %buf, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %31, i64 2
  %32 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %32 to i32
  store i32 %conv37, i32* %tr, align 4
  %33 = load i8*, i8** %buf, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %33, i64 3
  %34 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %34 to i32
  store i32 %conv40, i32* %ta, align 4
  %35 = load i32, i32* %tr, align 4
  %shl = shl i32 %35, 8
  %36 = load i32, i32* %ta, align 4
  %add = add i32 %36, 1
  %div = udiv i32 %shl, %add
  %conv41 = trunc i32 %div to i8
  store i8 %conv41, i8* %r, align 1
  %37 = load i32, i32* %tg, align 4
  %shl42 = shl i32 %37, 8
  %38 = load i32, i32* %ta, align 4
  %add43 = add i32 %38, 1
  %div44 = udiv i32 %shl42, %add43
  %conv45 = trunc i32 %div44 to i8
  store i8 %conv45, i8* %g, align 1
  %39 = load i32, i32* %tb, align 4
  %shl46 = shl i32 %39, 8
  %40 = load i32, i32* %ta, align 4
  %add47 = add i32 %40, 1
  %div48 = udiv i32 %shl46, %add47
  %conv49 = trunc i32 %div48 to i8
  store i8 %conv49, i8* %b, align 1
  %41 = load i32, i32* %ta, align 4
  %conv50 = trunc i32 %41 to i8
  store i8 %conv50, i8* %a, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %42 = load i8, i8* %r, align 1
  %conv51 = zext i8 %42 to i32
  %shl52 = shl i32 %conv51, 16
  %43 = load i8, i8* %g, align 1
  %conv53 = zext i8 %43 to i32
  %shl54 = shl i32 %conv53, 8
  %or = or i32 %shl52, %shl54
  %44 = load i8, i8* %b, align 1
  %conv55 = zext i8 %44 to i32
  %or56 = or i32 %or, %conv55
  store i32 %or56, i32* %pixel, align 4
  %45 = load i32, i32* %pixel, align 4
  %rem = urem i32 %45, 1021
  store i32 %rem, i32* %index, align 4
  %46 = load i32, i32* %index, align 4
  %mul57 = mul i32 2, %46
  %idxprom = zext i32 %mul57 to i64
  %47 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %cache = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %47, i32 0, i32 9
  %arrayidx58 = getelementptr inbounds [2042 x i32], [2042 x i32]* %cache, i32 0, i64 %idxprom
  %48 = load i32, i32* %arrayidx58, align 4
  %49 = load i32, i32* %pixel, align 4
  %cmp59 = icmp eq i32 %48, %49
  br i1 %cmp59, label %if.then.61, label %if.end.109

if.then.61:                                       ; preds = %do.end
  %50 = load i32, i32* %index, align 4
  %mul62 = mul i32 2, %50
  %add63 = add i32 %mul62, 1
  %idxprom64 = zext i32 %add63 to i64
  %51 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %cache65 = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %51, i32 0, i32 9
  %arrayidx66 = getelementptr inbounds [2042 x i32], [2042 x i32]* %cache65, i32 0, i64 %idxprom64
  %52 = load i32, i32* %arrayidx66, align 4
  store i32 %52, i32* %pixel, align 4
  %53 = load i32, i32* %pixel, align 4
  %and = and i32 %53, 255
  %conv67 = trunc i32 %and to i8
  store i8 %conv67, i8* %b, align 1
  %54 = load i32, i32* %pixel, align 4
  %shr = lshr i32 %54, 8
  store i32 %shr, i32* %pixel, align 4
  %55 = load i32, i32* %pixel, align 4
  %and68 = and i32 %55, 255
  %conv69 = trunc i32 %and68 to i8
  store i8 %conv69, i8* %g, align 1
  %56 = load i32, i32* %pixel, align 4
  %shr70 = lshr i32 %56, 8
  store i32 %shr70, i32* %pixel, align 4
  %57 = load i32, i32* %pixel, align 4
  %and71 = and i32 %57, 255
  %conv72 = trunc i32 %and71 to i8
  store i8 %conv72, i8* %r, align 1
  br label %do.body.73

do.body.73:                                       ; preds = %if.then.61
  %58 = load i8, i8* %a, align 1
  %conv76 = zext i8 %58 to i32
  %59 = load i8, i8* %r, align 1
  %conv77 = zext i8 %59 to i32
  %mul78 = mul nsw i32 %conv76, %conv77
  %add79 = add nsw i32 %mul78, 128
  store i32 %add79, i32* %tr75, align 4
  %60 = load i8, i8* %a, align 1
  %conv82 = zext i8 %60 to i32
  %61 = load i8, i8* %g, align 1
  %conv83 = zext i8 %61 to i32
  %mul84 = mul nsw i32 %conv82, %conv83
  %add85 = add nsw i32 %mul84, 128
  store i32 %add85, i32* %tg81, align 4
  %62 = load i8, i8* %a, align 1
  %conv88 = zext i8 %62 to i32
  %63 = load i8, i8* %b, align 1
  %conv89 = zext i8 %63 to i32
  %mul90 = mul nsw i32 %conv88, %conv89
  %add91 = add nsw i32 %mul90, 128
  store i32 %add91, i32* %tb87, align 4
  %64 = load i32, i32* %tb87, align 4
  %shr92 = lshr i32 %64, 8
  %65 = load i32, i32* %tb87, align 4
  %add93 = add i32 %shr92, %65
  %shr94 = lshr i32 %add93, 8
  %conv95 = trunc i32 %shr94 to i8
  %66 = load i8*, i8** %buf, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %66, i64 0
  store i8 %conv95, i8* %arrayidx96, align 1
  %67 = load i32, i32* %tg81, align 4
  %shr97 = lshr i32 %67, 8
  %68 = load i32, i32* %tg81, align 4
  %add98 = add i32 %shr97, %68
  %shr99 = lshr i32 %add98, 8
  %conv100 = trunc i32 %shr99 to i8
  %69 = load i8*, i8** %buf, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %69, i64 1
  store i8 %conv100, i8* %arrayidx101, align 1
  %70 = load i32, i32* %tr75, align 4
  %shr102 = lshr i32 %70, 8
  %71 = load i32, i32* %tr75, align 4
  %add103 = add i32 %shr102, %71
  %shr104 = lshr i32 %add103, 8
  %conv105 = trunc i32 %shr104 to i8
  %72 = load i8*, i8** %buf, align 8
  %arrayidx106 = getelementptr inbounds i8, i8* %72, i64 2
  store i8 %conv105, i8* %arrayidx106, align 1
  %73 = load i8, i8* %a, align 1
  %74 = load i8*, i8** %buf, align 8
  %arrayidx107 = getelementptr inbounds i8, i8* %74, i64 3
  store i8 %73, i8* %arrayidx107, align 1
  br label %do.end.108

do.end.108:                                       ; preds = %do.body.73
  br label %for.inc

if.end.109:                                       ; preds = %do.end
  %75 = load i8, i8* %r, align 1
  %idxprom110 = zext i8 %75 to i64
  %76 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %gamma_lut = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %76, i32 0, i32 10
  %arrayidx111 = getelementptr inbounds [256 x float], [256 x float]* %gamma_lut, i32 0, i64 %idxprom110
  %77 = load float, float* %arrayidx111, align 4
  store float %77, float* %red, align 4
  %78 = load i8, i8* %g, align 1
  %idxprom112 = zext i8 %78 to i64
  %79 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %gamma_lut113 = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %79, i32 0, i32 10
  %arrayidx114 = getelementptr inbounds [256 x float], [256 x float]* %gamma_lut113, i32 0, i64 %idxprom112
  %80 = load float, float* %arrayidx114, align 4
  store float %80, float* %green, align 4
  %81 = load i8, i8* %b, align 1
  %idxprom115 = zext i8 %81 to i64
  %82 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %gamma_lut116 = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %82, i32 0, i32 10
  %arrayidx117 = getelementptr inbounds [256 x float], [256 x float]* %gamma_lut116, i32 0, i64 %idxprom115
  %83 = load float, float* %arrayidx117, align 4
  store float %83, float* %blue, align 4
  %84 = load float, float* %red, align 4
  store float %84, float* %redOld, align 4
  %85 = load float, float* %green, align 4
  store float %85, float* %greenOld, align 4
  %86 = load float, float* %redOld, align 4
  %87 = load float, float* getelementptr inbounds ([9 x float], [9 x float]* @rgb2lms, i32 0, i64 0), align 4
  %mul118 = fmul float %86, %87
  %88 = load float, float* %greenOld, align 4
  %89 = load float, float* getelementptr inbounds ([9 x float], [9 x float]* @rgb2lms, i32 0, i64 1), align 4
  %mul119 = fmul float %88, %89
  %add120 = fadd float %mul118, %mul119
  %90 = load float, float* %blue, align 4
  %91 = load float, float* getelementptr inbounds ([9 x float], [9 x float]* @rgb2lms, i32 0, i64 2), align 4
  %mul121 = fmul float %90, %91
  %add122 = fadd float %add120, %mul121
  store float %add122, float* %red, align 4
  %92 = load float, float* %redOld, align 4
  %93 = load float, float* getelementptr inbounds ([9 x float], [9 x float]* @rgb2lms, i32 0, i64 3), align 4
  %mul123 = fmul float %92, %93
  %94 = load float, float* %greenOld, align 4
  %95 = load float, float* getelementptr inbounds ([9 x float], [9 x float]* @rgb2lms, i32 0, i64 4), align 4
  %mul124 = fmul float %94, %95
  %add125 = fadd float %mul123, %mul124
  %96 = load float, float* %blue, align 4
  %97 = load float, float* getelementptr inbounds ([9 x float], [9 x float]* @rgb2lms, i32 0, i64 5), align 4
  %mul126 = fmul float %96, %97
  %add127 = fadd float %add125, %mul126
  store float %add127, float* %green, align 4
  %98 = load float, float* %redOld, align 4
  %99 = load float, float* getelementptr inbounds ([9 x float], [9 x float]* @rgb2lms, i32 0, i64 6), align 4
  %mul128 = fmul float %98, %99
  %100 = load float, float* %greenOld, align 4
  %101 = load float, float* getelementptr inbounds ([9 x float], [9 x float]* @rgb2lms, i32 0, i64 7), align 4
  %mul129 = fmul float %100, %101
  %add130 = fadd float %mul128, %mul129
  %102 = load float, float* %blue, align 4
  %103 = load float, float* getelementptr inbounds ([9 x float], [9 x float]* @rgb2lms, i32 0, i64 8), align 4
  %mul131 = fmul float %102, %103
  %add132 = fadd float %add130, %mul131
  store float %add132, float* %blue, align 4
  %104 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %deficiency = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %104, i32 0, i32 1
  %105 = load i32, i32* %deficiency, align 4
  switch i32 %105, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.148
    i32 2, label %sw.bb.166
  ]

sw.bb:                                            ; preds = %if.end.109
  %106 = load float, float* %blue, align 4
  %107 = load float, float* %red, align 4
  %div133 = fdiv float %106, %107
  store float %div133, float* %tmp, align 4
  %108 = load float, float* %tmp, align 4
  %109 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %inflection = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %109, i32 0, i32 8
  %110 = load float, float* %inflection, align 4
  %cmp134 = fcmp olt float %108, %110
  br i1 %cmp134, label %if.then.136, label %if.else

if.then.136:                                      ; preds = %sw.bb
  %111 = load float, float* %a1, align 4
  %112 = load float, float* %red, align 4
  %mul137 = fmul float %111, %112
  %113 = load float, float* %c1, align 4
  %114 = load float, float* %blue, align 4
  %mul138 = fmul float %113, %114
  %add139 = fadd float %mul137, %mul138
  %sub140 = fsub float -0.000000e+00, %add139
  %115 = load float, float* %b1, align 4
  %div141 = fdiv float %sub140, %115
  store float %div141, float* %green, align 4
  br label %if.end.147

if.else:                                          ; preds = %sw.bb
  %116 = load float, float* %a2, align 4
  %117 = load float, float* %red, align 4
  %mul142 = fmul float %116, %117
  %118 = load float, float* %c2, align 4
  %119 = load float, float* %blue, align 4
  %mul143 = fmul float %118, %119
  %add144 = fadd float %mul142, %mul143
  %sub145 = fsub float -0.000000e+00, %add144
  %120 = load float, float* %b2, align 4
  %div146 = fdiv float %sub145, %120
  store float %div146, float* %green, align 4
  br label %if.end.147

if.end.147:                                       ; preds = %if.else, %if.then.136
  br label %sw.epilog

sw.bb.148:                                        ; preds = %if.end.109
  %121 = load float, float* %blue, align 4
  %122 = load float, float* %green, align 4
  %div149 = fdiv float %121, %122
  store float %div149, float* %tmp, align 4
  %123 = load float, float* %tmp, align 4
  %124 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %inflection150 = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %124, i32 0, i32 8
  %125 = load float, float* %inflection150, align 4
  %cmp151 = fcmp olt float %123, %125
  br i1 %cmp151, label %if.then.153, label %if.else.159

if.then.153:                                      ; preds = %sw.bb.148
  %126 = load float, float* %b1, align 4
  %127 = load float, float* %green, align 4
  %mul154 = fmul float %126, %127
  %128 = load float, float* %c1, align 4
  %129 = load float, float* %blue, align 4
  %mul155 = fmul float %128, %129
  %add156 = fadd float %mul154, %mul155
  %sub157 = fsub float -0.000000e+00, %add156
  %130 = load float, float* %a1, align 4
  %div158 = fdiv float %sub157, %130
  store float %div158, float* %red, align 4
  br label %if.end.165

if.else.159:                                      ; preds = %sw.bb.148
  %131 = load float, float* %b2, align 4
  %132 = load float, float* %green, align 4
  %mul160 = fmul float %131, %132
  %133 = load float, float* %c2, align 4
  %134 = load float, float* %blue, align 4
  %mul161 = fmul float %133, %134
  %add162 = fadd float %mul160, %mul161
  %sub163 = fsub float -0.000000e+00, %add162
  %135 = load float, float* %a2, align 4
  %div164 = fdiv float %sub163, %135
  store float %div164, float* %red, align 4
  br label %if.end.165

if.end.165:                                       ; preds = %if.else.159, %if.then.153
  br label %sw.epilog

sw.bb.166:                                        ; preds = %if.end.109
  %136 = load float, float* %green, align 4
  %137 = load float, float* %red, align 4
  %div167 = fdiv float %136, %137
  store float %div167, float* %tmp, align 4
  %138 = load float, float* %tmp, align 4
  %139 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %inflection168 = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %139, i32 0, i32 8
  %140 = load float, float* %inflection168, align 4
  %cmp169 = fcmp olt float %138, %140
  br i1 %cmp169, label %if.then.171, label %if.else.177

if.then.171:                                      ; preds = %sw.bb.166
  %141 = load float, float* %a1, align 4
  %142 = load float, float* %red, align 4
  %mul172 = fmul float %141, %142
  %143 = load float, float* %b1, align 4
  %144 = load float, float* %green, align 4
  %mul173 = fmul float %143, %144
  %add174 = fadd float %mul172, %mul173
  %sub175 = fsub float -0.000000e+00, %add174
  %145 = load float, float* %c1, align 4
  %div176 = fdiv float %sub175, %145
  store float %div176, float* %blue, align 4
  br label %if.end.183

if.else.177:                                      ; preds = %sw.bb.166
  %146 = load float, float* %a2, align 4
  %147 = load float, float* %red, align 4
  %mul178 = fmul float %146, %147
  %148 = load float, float* %b2, align 4
  %149 = load float, float* %green, align 4
  %mul179 = fmul float %148, %149
  %add180 = fadd float %mul178, %mul179
  %sub181 = fsub float -0.000000e+00, %add180
  %150 = load float, float* %c2, align 4
  %div182 = fdiv float %sub181, %150
  store float %div182, float* %blue, align 4
  br label %if.end.183

if.end.183:                                       ; preds = %if.else.177, %if.then.171
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.109
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.183, %if.end.165, %if.end.147
  %151 = load float, float* %red, align 4
  store float %151, float* %redOld, align 4
  %152 = load float, float* %green, align 4
  store float %152, float* %greenOld, align 4
  %153 = load float, float* %redOld, align 4
  %154 = load float, float* getelementptr inbounds ([9 x float], [9 x float]* @lms2rgb, i32 0, i64 0), align 4
  %mul184 = fmul float %153, %154
  %155 = load float, float* %greenOld, align 4
  %156 = load float, float* getelementptr inbounds ([9 x float], [9 x float]* @lms2rgb, i32 0, i64 1), align 4
  %mul185 = fmul float %155, %156
  %add186 = fadd float %mul184, %mul185
  %157 = load float, float* %blue, align 4
  %158 = load float, float* getelementptr inbounds ([9 x float], [9 x float]* @lms2rgb, i32 0, i64 2), align 4
  %mul187 = fmul float %157, %158
  %add188 = fadd float %add186, %mul187
  store float %add188, float* %red, align 4
  %159 = load float, float* %redOld, align 4
  %160 = load float, float* getelementptr inbounds ([9 x float], [9 x float]* @lms2rgb, i32 0, i64 3), align 4
  %mul189 = fmul float %159, %160
  %161 = load float, float* %greenOld, align 4
  %162 = load float, float* getelementptr inbounds ([9 x float], [9 x float]* @lms2rgb, i32 0, i64 4), align 4
  %mul190 = fmul float %161, %162
  %add191 = fadd float %mul189, %mul190
  %163 = load float, float* %blue, align 4
  %164 = load float, float* getelementptr inbounds ([9 x float], [9 x float]* @lms2rgb, i32 0, i64 5), align 4
  %mul192 = fmul float %163, %164
  %add193 = fadd float %add191, %mul192
  store float %add193, float* %green, align 4
  %165 = load float, float* %redOld, align 4
  %166 = load float, float* getelementptr inbounds ([9 x float], [9 x float]* @lms2rgb, i32 0, i64 6), align 4
  %mul194 = fmul float %165, %166
  %167 = load float, float* %greenOld, align 4
  %168 = load float, float* getelementptr inbounds ([9 x float], [9 x float]* @lms2rgb, i32 0, i64 7), align 4
  %mul195 = fmul float %167, %168
  %add196 = fadd float %mul194, %mul195
  %169 = load float, float* %blue, align 4
  %170 = load float, float* getelementptr inbounds ([9 x float], [9 x float]* @lms2rgb, i32 0, i64 8), align 4
  %mul197 = fmul float %169, %170
  %add198 = fadd float %add196, %mul197
  store float %add198, float* %blue, align 4
  %171 = load float, float* %red, align 4
  %172 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %gamma_lut199 = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %172, i32 0, i32 10
  %arraydecay = getelementptr inbounds [256 x float], [256 x float]* %gamma_lut199, i32 0, i32 0
  %call200 = call zeroext i8 @lut_lookup(float %171, float* %arraydecay)
  store i8 %call200, i8* %r, align 1
  %173 = load float, float* %green, align 4
  %174 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %gamma_lut201 = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %174, i32 0, i32 10
  %arraydecay202 = getelementptr inbounds [256 x float], [256 x float]* %gamma_lut201, i32 0, i32 0
  %call203 = call zeroext i8 @lut_lookup(float %173, float* %arraydecay202)
  store i8 %call203, i8* %g, align 1
  %175 = load float, float* %blue, align 4
  %176 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %gamma_lut204 = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %176, i32 0, i32 10
  %arraydecay205 = getelementptr inbounds [256 x float], [256 x float]* %gamma_lut204, i32 0, i32 0
  %call206 = call zeroext i8 @lut_lookup(float %175, float* %arraydecay205)
  store i8 %call206, i8* %b, align 1
  br label %do.body.207

do.body.207:                                      ; preds = %sw.epilog
  %177 = load i8, i8* %a, align 1
  %conv210 = zext i8 %177 to i32
  %178 = load i8, i8* %r, align 1
  %conv211 = zext i8 %178 to i32
  %mul212 = mul nsw i32 %conv210, %conv211
  %add213 = add nsw i32 %mul212, 128
  store i32 %add213, i32* %tr209, align 4
  %179 = load i8, i8* %a, align 1
  %conv216 = zext i8 %179 to i32
  %180 = load i8, i8* %g, align 1
  %conv217 = zext i8 %180 to i32
  %mul218 = mul nsw i32 %conv216, %conv217
  %add219 = add nsw i32 %mul218, 128
  store i32 %add219, i32* %tg215, align 4
  %181 = load i8, i8* %a, align 1
  %conv222 = zext i8 %181 to i32
  %182 = load i8, i8* %b, align 1
  %conv223 = zext i8 %182 to i32
  %mul224 = mul nsw i32 %conv222, %conv223
  %add225 = add nsw i32 %mul224, 128
  store i32 %add225, i32* %tb221, align 4
  %183 = load i32, i32* %tb221, align 4
  %shr226 = lshr i32 %183, 8
  %184 = load i32, i32* %tb221, align 4
  %add227 = add i32 %shr226, %184
  %shr228 = lshr i32 %add227, 8
  %conv229 = trunc i32 %shr228 to i8
  %185 = load i8*, i8** %buf, align 8
  %arrayidx230 = getelementptr inbounds i8, i8* %185, i64 0
  store i8 %conv229, i8* %arrayidx230, align 1
  %186 = load i32, i32* %tg215, align 4
  %shr231 = lshr i32 %186, 8
  %187 = load i32, i32* %tg215, align 4
  %add232 = add i32 %shr231, %187
  %shr233 = lshr i32 %add232, 8
  %conv234 = trunc i32 %shr233 to i8
  %188 = load i8*, i8** %buf, align 8
  %arrayidx235 = getelementptr inbounds i8, i8* %188, i64 1
  store i8 %conv234, i8* %arrayidx235, align 1
  %189 = load i32, i32* %tr209, align 4
  %shr236 = lshr i32 %189, 8
  %190 = load i32, i32* %tr209, align 4
  %add237 = add i32 %shr236, %190
  %shr238 = lshr i32 %add237, 8
  %conv239 = trunc i32 %shr238 to i8
  %191 = load i8*, i8** %buf, align 8
  %arrayidx240 = getelementptr inbounds i8, i8* %191, i64 2
  store i8 %conv239, i8* %arrayidx240, align 1
  %192 = load i8, i8* %a, align 1
  %193 = load i8*, i8** %buf, align 8
  %arrayidx241 = getelementptr inbounds i8, i8* %193, i64 3
  store i8 %192, i8* %arrayidx241, align 1
  br label %do.end.242

do.end.242:                                       ; preds = %do.body.207
  %194 = load i32, i32* %pixel, align 4
  %195 = load i32, i32* %index, align 4
  %mul243 = mul i32 2, %195
  %idxprom244 = zext i32 %mul243 to i64
  %196 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %cache245 = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %196, i32 0, i32 9
  %arrayidx246 = getelementptr inbounds [2042 x i32], [2042 x i32]* %cache245, i32 0, i64 %idxprom244
  store i32 %194, i32* %arrayidx246, align 4
  %197 = load i8, i8* %r, align 1
  %conv247 = zext i8 %197 to i32
  %shl248 = shl i32 %conv247, 16
  %198 = load i8, i8* %g, align 1
  %conv249 = zext i8 %198 to i32
  %shl250 = shl i32 %conv249, 8
  %or251 = or i32 %shl248, %shl250
  %199 = load i8, i8* %b, align 1
  %conv252 = zext i8 %199 to i32
  %or253 = or i32 %or251, %conv252
  %200 = load i32, i32* %index, align 4
  %mul254 = mul i32 2, %200
  %add255 = add i32 %mul254, 1
  %idxprom256 = zext i32 %add255 to i64
  %201 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %cache257 = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %201, i32 0, i32 9
  %arrayidx258 = getelementptr inbounds [2042 x i32], [2042 x i32]* %cache257, i32 0, i64 %idxprom256
  store i32 %or253, i32* %arrayidx258, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end.242, %do.end.108
  %202 = load i32, i32* %x, align 4
  %inc = add nsw i32 %202, 1
  store i32 %inc, i32* %x, align 4
  %203 = load i8*, i8** %buf, align 8
  %add.ptr = getelementptr inbounds i8, i8* %203, i64 4
  store i8* %add.ptr, i8** %buf, align 8
  br label %for.cond.26

for.end:                                          ; preds = %for.cond.26
  br label %for.inc.259

for.inc.259:                                      ; preds = %for.end
  %204 = load i32, i32* %y, align 4
  %inc260 = add nsw i32 %204, 1
  store i32 %inc260, i32* %y, align 4
  %205 = load i32, i32* %skip, align 4
  %206 = load i8*, i8** %buf, align 8
  %idx.ext = sext i32 %205 to i64
  %add.ptr261 = getelementptr inbounds i8, i8* %206, i64 %idx.ext
  store i8* %add.ptr261, i8** %buf, align 8
  br label %for.cond

for.end.262:                                      ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @cdisplay_colorblind_configure(%struct._GimpColorDisplay* %display) #0 {
entry:
  %display.addr = alloca %struct._GimpColorDisplay*, align 8
  %colorblind = alloca %struct._CdisplayColorblind*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  store %struct._GimpColorDisplay* %display, %struct._GimpColorDisplay** %display.addr, align 8
  %0 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %1 = bitcast %struct._GimpColorDisplay* %0 to %struct._GTypeInstance*
  %call = call i64 @cdisplay_colorblind_get_type()
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._CdisplayColorblind*
  store %struct._CdisplayColorblind* %2, %struct._CdisplayColorblind** %colorblind, align 8
  %call2 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %hbox, align 8
  %call3 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0)) #4
  %call4 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call3)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %label, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_box_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call5)
  %5 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkBox*
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %5, %struct._GtkWidget* %6, i32 0, i32 0, i32 0)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %7)
  %8 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %9 = bitcast %struct._CdisplayColorblind* %8 to %struct._GTypeInstance*
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 80)
  %10 = bitcast %struct._GTypeInstance* %call7 to %struct._GObject*
  %call8 = call %struct._GtkWidget* @gimp_prop_enum_combo_box_new(%struct._GObject* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32 0, i32 0)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %combo, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_box_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call9)
  %13 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkBox*
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %13, %struct._GtkWidget* %14, i32 1, i32 1, i32 0)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %15)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_label_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call11)
  %18 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkLabel*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %18, %struct._GtkWidget* %19)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  ret %struct._GtkWidget* %20
}

; Function Attrs: nounwind uwtable
define internal void @cdisplay_colorblind_changed(%struct._GimpColorDisplay* %display) #0 {
entry:
  %display.addr = alloca %struct._GimpColorDisplay*, align 8
  %colorblind = alloca %struct._CdisplayColorblind*, align 8
  %anchor_e = alloca [3 x float], align 4
  %anchor = alloca [12 x float], align 16
  store %struct._GimpColorDisplay* %display, %struct._GimpColorDisplay** %display.addr, align 8
  %0 = load %struct._GimpColorDisplay*, %struct._GimpColorDisplay** %display.addr, align 8
  %1 = bitcast %struct._GimpColorDisplay* %0 to %struct._GTypeInstance*
  %call = call i64 @cdisplay_colorblind_get_type()
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._CdisplayColorblind*
  store %struct._CdisplayColorblind* %2, %struct._CdisplayColorblind** %colorblind, align 8
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 0
  store float 0x3FB4801F80000000, float* %arrayidx, align 4
  %arrayidx2 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 1
  store float 0x3FC4361140000000, float* %arrayidx2, align 4
  %arrayidx3 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 2
  store float 0x3FE2DED280000000, float* %arrayidx3, align 4
  %arrayidx4 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 3
  store float 0x3FC06F6940000000, float* %arrayidx4, align 4
  %arrayidx5 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 4
  store float 0x3FCCA233A0000000, float* %arrayidx5, align 4
  %arrayidx6 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 5
  store float 0x3FD74538E0000000, float* %arrayidx6, align 4
  %arrayidx7 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 6
  store float 0x3FEF8A0900000000, float* %arrayidx7, align 4
  %arrayidx8 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 7
  store float 0x3FE770A3E0000000, float* %arrayidx8, align 4
  %arrayidx9 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 8
  store float 0x3F51ADA760000000, float* %arrayidx9, align 4
  %arrayidx10 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 9
  store float 0x3FB765FD80000000, float* %arrayidx10, align 4
  %arrayidx11 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 10
  store float 0x3F7CB57820000000, float* %arrayidx11, align 4
  %arrayidx12 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 11
  store float 0.000000e+00, float* %arrayidx12, align 4
  %3 = load float, float* getelementptr inbounds ([9 x float], [9 x float]* @rgb2lms, i32 0, i64 0), align 4
  %4 = load float, float* getelementptr inbounds ([9 x float], [9 x float]* @rgb2lms, i32 0, i64 1), align 4
  %add = fadd float %3, %4
  %5 = load float, float* getelementptr inbounds ([9 x float], [9 x float]* @rgb2lms, i32 0, i64 2), align 4
  %add13 = fadd float %add, %5
  %arrayidx14 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 0
  store float %add13, float* %arrayidx14, align 4
  %6 = load float, float* getelementptr inbounds ([9 x float], [9 x float]* @rgb2lms, i32 0, i64 3), align 4
  %7 = load float, float* getelementptr inbounds ([9 x float], [9 x float]* @rgb2lms, i32 0, i64 4), align 4
  %add15 = fadd float %6, %7
  %8 = load float, float* getelementptr inbounds ([9 x float], [9 x float]* @rgb2lms, i32 0, i64 5), align 4
  %add16 = fadd float %add15, %8
  %arrayidx17 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 1
  store float %add16, float* %arrayidx17, align 4
  %9 = load float, float* getelementptr inbounds ([9 x float], [9 x float]* @rgb2lms, i32 0, i64 6), align 4
  %10 = load float, float* getelementptr inbounds ([9 x float], [9 x float]* @rgb2lms, i32 0, i64 7), align 4
  %add18 = fadd float %9, %10
  %11 = load float, float* getelementptr inbounds ([9 x float], [9 x float]* @rgb2lms, i32 0, i64 8), align 4
  %add19 = fadd float %add18, %11
  %arrayidx20 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 2
  store float %add19, float* %arrayidx20, align 4
  %12 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %deficiency = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %12, i32 0, i32 1
  %13 = load i32, i32* %deficiency, align 4
  switch i32 %13, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.63
    i32 2, label %sw.bb.116
  ]

sw.bb:                                            ; preds = %entry
  %arrayidx21 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 1
  %14 = load float, float* %arrayidx21, align 4
  %arrayidx22 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 8
  %15 = load float, float* %arrayidx22, align 4
  %mul = fmul float %14, %15
  %arrayidx23 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 2
  %16 = load float, float* %arrayidx23, align 4
  %arrayidx24 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 7
  %17 = load float, float* %arrayidx24, align 4
  %mul25 = fmul float %16, %17
  %sub = fsub float %mul, %mul25
  %18 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %a1 = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %18, i32 0, i32 2
  store float %sub, float* %a1, align 4
  %arrayidx26 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 2
  %19 = load float, float* %arrayidx26, align 4
  %arrayidx27 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 6
  %20 = load float, float* %arrayidx27, align 4
  %mul28 = fmul float %19, %20
  %arrayidx29 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 0
  %21 = load float, float* %arrayidx29, align 4
  %arrayidx30 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 8
  %22 = load float, float* %arrayidx30, align 4
  %mul31 = fmul float %21, %22
  %sub32 = fsub float %mul28, %mul31
  %23 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %b1 = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %23, i32 0, i32 3
  store float %sub32, float* %b1, align 4
  %arrayidx33 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 0
  %24 = load float, float* %arrayidx33, align 4
  %arrayidx34 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 7
  %25 = load float, float* %arrayidx34, align 4
  %mul35 = fmul float %24, %25
  %arrayidx36 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 1
  %26 = load float, float* %arrayidx36, align 4
  %arrayidx37 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 6
  %27 = load float, float* %arrayidx37, align 4
  %mul38 = fmul float %26, %27
  %sub39 = fsub float %mul35, %mul38
  %28 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %c1 = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %28, i32 0, i32 4
  store float %sub39, float* %c1, align 4
  %arrayidx40 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 1
  %29 = load float, float* %arrayidx40, align 4
  %arrayidx41 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 2
  %30 = load float, float* %arrayidx41, align 4
  %mul42 = fmul float %29, %30
  %arrayidx43 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 2
  %31 = load float, float* %arrayidx43, align 4
  %arrayidx44 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 1
  %32 = load float, float* %arrayidx44, align 4
  %mul45 = fmul float %31, %32
  %sub46 = fsub float %mul42, %mul45
  %33 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %a2 = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %33, i32 0, i32 5
  store float %sub46, float* %a2, align 4
  %arrayidx47 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 2
  %34 = load float, float* %arrayidx47, align 4
  %arrayidx48 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 0
  %35 = load float, float* %arrayidx48, align 4
  %mul49 = fmul float %34, %35
  %arrayidx50 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 0
  %36 = load float, float* %arrayidx50, align 4
  %arrayidx51 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 2
  %37 = load float, float* %arrayidx51, align 4
  %mul52 = fmul float %36, %37
  %sub53 = fsub float %mul49, %mul52
  %38 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %b2 = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %38, i32 0, i32 6
  store float %sub53, float* %b2, align 4
  %arrayidx54 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 0
  %39 = load float, float* %arrayidx54, align 4
  %arrayidx55 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 1
  %40 = load float, float* %arrayidx55, align 4
  %mul56 = fmul float %39, %40
  %arrayidx57 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 1
  %41 = load float, float* %arrayidx57, align 4
  %arrayidx58 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 0
  %42 = load float, float* %arrayidx58, align 4
  %mul59 = fmul float %41, %42
  %sub60 = fsub float %mul56, %mul59
  %43 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %c2 = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %43, i32 0, i32 7
  store float %sub60, float* %c2, align 4
  %arrayidx61 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 2
  %44 = load float, float* %arrayidx61, align 4
  %arrayidx62 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 0
  %45 = load float, float* %arrayidx62, align 4
  %div = fdiv float %44, %45
  %46 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %inflection = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %46, i32 0, i32 8
  store float %div, float* %inflection, align 4
  br label %sw.epilog

sw.bb.63:                                         ; preds = %entry
  %arrayidx64 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 1
  %47 = load float, float* %arrayidx64, align 4
  %arrayidx65 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 8
  %48 = load float, float* %arrayidx65, align 4
  %mul66 = fmul float %47, %48
  %arrayidx67 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 2
  %49 = load float, float* %arrayidx67, align 4
  %arrayidx68 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 7
  %50 = load float, float* %arrayidx68, align 4
  %mul69 = fmul float %49, %50
  %sub70 = fsub float %mul66, %mul69
  %51 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %a171 = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %51, i32 0, i32 2
  store float %sub70, float* %a171, align 4
  %arrayidx72 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 2
  %52 = load float, float* %arrayidx72, align 4
  %arrayidx73 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 6
  %53 = load float, float* %arrayidx73, align 4
  %mul74 = fmul float %52, %53
  %arrayidx75 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 0
  %54 = load float, float* %arrayidx75, align 4
  %arrayidx76 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 8
  %55 = load float, float* %arrayidx76, align 4
  %mul77 = fmul float %54, %55
  %sub78 = fsub float %mul74, %mul77
  %56 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %b179 = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %56, i32 0, i32 3
  store float %sub78, float* %b179, align 4
  %arrayidx80 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 0
  %57 = load float, float* %arrayidx80, align 4
  %arrayidx81 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 7
  %58 = load float, float* %arrayidx81, align 4
  %mul82 = fmul float %57, %58
  %arrayidx83 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 1
  %59 = load float, float* %arrayidx83, align 4
  %arrayidx84 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 6
  %60 = load float, float* %arrayidx84, align 4
  %mul85 = fmul float %59, %60
  %sub86 = fsub float %mul82, %mul85
  %61 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %c187 = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %61, i32 0, i32 4
  store float %sub86, float* %c187, align 4
  %arrayidx88 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 1
  %62 = load float, float* %arrayidx88, align 4
  %arrayidx89 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 2
  %63 = load float, float* %arrayidx89, align 4
  %mul90 = fmul float %62, %63
  %arrayidx91 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 2
  %64 = load float, float* %arrayidx91, align 4
  %arrayidx92 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 1
  %65 = load float, float* %arrayidx92, align 4
  %mul93 = fmul float %64, %65
  %sub94 = fsub float %mul90, %mul93
  %66 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %a295 = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %66, i32 0, i32 5
  store float %sub94, float* %a295, align 4
  %arrayidx96 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 2
  %67 = load float, float* %arrayidx96, align 4
  %arrayidx97 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 0
  %68 = load float, float* %arrayidx97, align 4
  %mul98 = fmul float %67, %68
  %arrayidx99 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 0
  %69 = load float, float* %arrayidx99, align 4
  %arrayidx100 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 2
  %70 = load float, float* %arrayidx100, align 4
  %mul101 = fmul float %69, %70
  %sub102 = fsub float %mul98, %mul101
  %71 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %b2103 = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %71, i32 0, i32 6
  store float %sub102, float* %b2103, align 4
  %arrayidx104 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 0
  %72 = load float, float* %arrayidx104, align 4
  %arrayidx105 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 1
  %73 = load float, float* %arrayidx105, align 4
  %mul106 = fmul float %72, %73
  %arrayidx107 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 1
  %74 = load float, float* %arrayidx107, align 4
  %arrayidx108 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 0
  %75 = load float, float* %arrayidx108, align 4
  %mul109 = fmul float %74, %75
  %sub110 = fsub float %mul106, %mul109
  %76 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %c2111 = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %76, i32 0, i32 7
  store float %sub110, float* %c2111, align 4
  %arrayidx112 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 2
  %77 = load float, float* %arrayidx112, align 4
  %arrayidx113 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 1
  %78 = load float, float* %arrayidx113, align 4
  %div114 = fdiv float %77, %78
  %79 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %inflection115 = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %79, i32 0, i32 8
  store float %div114, float* %inflection115, align 4
  br label %sw.epilog

sw.bb.116:                                        ; preds = %entry
  %arrayidx117 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 1
  %80 = load float, float* %arrayidx117, align 4
  %arrayidx118 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 11
  %81 = load float, float* %arrayidx118, align 4
  %mul119 = fmul float %80, %81
  %arrayidx120 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 2
  %82 = load float, float* %arrayidx120, align 4
  %arrayidx121 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 10
  %83 = load float, float* %arrayidx121, align 4
  %mul122 = fmul float %82, %83
  %sub123 = fsub float %mul119, %mul122
  %84 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %a1124 = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %84, i32 0, i32 2
  store float %sub123, float* %a1124, align 4
  %arrayidx125 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 2
  %85 = load float, float* %arrayidx125, align 4
  %arrayidx126 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 9
  %86 = load float, float* %arrayidx126, align 4
  %mul127 = fmul float %85, %86
  %arrayidx128 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 0
  %87 = load float, float* %arrayidx128, align 4
  %arrayidx129 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 11
  %88 = load float, float* %arrayidx129, align 4
  %mul130 = fmul float %87, %88
  %sub131 = fsub float %mul127, %mul130
  %89 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %b1132 = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %89, i32 0, i32 3
  store float %sub131, float* %b1132, align 4
  %arrayidx133 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 0
  %90 = load float, float* %arrayidx133, align 4
  %arrayidx134 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 10
  %91 = load float, float* %arrayidx134, align 4
  %mul135 = fmul float %90, %91
  %arrayidx136 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 1
  %92 = load float, float* %arrayidx136, align 4
  %arrayidx137 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 9
  %93 = load float, float* %arrayidx137, align 4
  %mul138 = fmul float %92, %93
  %sub139 = fsub float %mul135, %mul138
  %94 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %c1140 = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %94, i32 0, i32 4
  store float %sub139, float* %c1140, align 4
  %arrayidx141 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 1
  %95 = load float, float* %arrayidx141, align 4
  %arrayidx142 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 5
  %96 = load float, float* %arrayidx142, align 4
  %mul143 = fmul float %95, %96
  %arrayidx144 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 2
  %97 = load float, float* %arrayidx144, align 4
  %arrayidx145 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 4
  %98 = load float, float* %arrayidx145, align 4
  %mul146 = fmul float %97, %98
  %sub147 = fsub float %mul143, %mul146
  %99 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %a2148 = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %99, i32 0, i32 5
  store float %sub147, float* %a2148, align 4
  %arrayidx149 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 2
  %100 = load float, float* %arrayidx149, align 4
  %arrayidx150 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 3
  %101 = load float, float* %arrayidx150, align 4
  %mul151 = fmul float %100, %101
  %arrayidx152 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 0
  %102 = load float, float* %arrayidx152, align 4
  %arrayidx153 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 5
  %103 = load float, float* %arrayidx153, align 4
  %mul154 = fmul float %102, %103
  %sub155 = fsub float %mul151, %mul154
  %104 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %b2156 = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %104, i32 0, i32 6
  store float %sub155, float* %b2156, align 4
  %arrayidx157 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 0
  %105 = load float, float* %arrayidx157, align 4
  %arrayidx158 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 4
  %106 = load float, float* %arrayidx158, align 4
  %mul159 = fmul float %105, %106
  %arrayidx160 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 1
  %107 = load float, float* %arrayidx160, align 4
  %arrayidx161 = getelementptr inbounds [12 x float], [12 x float]* %anchor, i32 0, i64 3
  %108 = load float, float* %arrayidx161, align 4
  %mul162 = fmul float %107, %108
  %sub163 = fsub float %mul159, %mul162
  %109 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %c2164 = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %109, i32 0, i32 7
  store float %sub163, float* %c2164, align 4
  %arrayidx165 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 1
  %110 = load float, float* %arrayidx165, align 4
  %arrayidx166 = getelementptr inbounds [3 x float], [3 x float]* %anchor_e, i32 0, i64 0
  %111 = load float, float* %arrayidx166, align 4
  %div167 = fdiv float %110, %111
  %112 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %inflection168 = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %112, i32 0, i32 8
  store float %div167, float* %inflection168, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.116, %sw.bb.63, %sw.bb
  %113 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind, align 8
  %cache = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %113, i32 0, i32 9
  %114 = bitcast [2042 x i32]* %cache to i8*
  call void @llvm.memset.p0i8.i64(i8* %114, i8 0, i64 8168, i32 8, i1 false)
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @g_value_set_enum(%struct._GValue*, i32) #1

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
define internal void @cdisplay_colorblind_set_deficiency(%struct._CdisplayColorblind* %colorblind, i32 %value) #0 {
entry:
  %colorblind.addr = alloca %struct._CdisplayColorblind*, align 8
  %value.addr = alloca i32, align 4
  %enum_class = alloca %struct._GEnumClass*, align 8
  store %struct._CdisplayColorblind* %colorblind, %struct._CdisplayColorblind** %colorblind.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  %0 = load i32, i32* %value.addr, align 4
  %1 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind.addr, align 8
  %deficiency = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %1, i32 0, i32 1
  %2 = load i32, i32* %deficiency, align 4
  %cmp = icmp ne i32 %0, %2
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %3 = load i64, i64* @cdisplay_colorblind_deficiency_type, align 8
  %call = call i8* @g_type_class_peek(i64 %3)
  %4 = bitcast i8* %call to %struct._GEnumClass*
  store %struct._GEnumClass* %4, %struct._GEnumClass** %enum_class, align 8
  %5 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %6 = load i32, i32* %value.addr, align 4
  %call1 = call %struct._GEnumValue* @g_enum_get_value(%struct._GEnumClass* %5, i32 %6)
  %tobool = icmp ne %struct._GEnumValue* %call1, null
  br i1 %tobool, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  br label %if.end.7

if.end:                                           ; preds = %if.then
  %7 = load i32, i32* %value.addr, align 4
  %8 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind.addr, align 8
  %deficiency3 = getelementptr inbounds %struct._CdisplayColorblind, %struct._CdisplayColorblind* %8, i32 0, i32 1
  store i32 %7, i32* %deficiency3, align 4
  %9 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind.addr, align 8
  %10 = bitcast %struct._CdisplayColorblind* %9 to %struct._GTypeInstance*
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 80)
  %11 = bitcast %struct._GTypeInstance* %call4 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0))
  %12 = load %struct._CdisplayColorblind*, %struct._CdisplayColorblind** %colorblind.addr, align 8
  %13 = bitcast %struct._CdisplayColorblind* %12 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_color_display_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call5)
  %14 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpColorDisplay*
  call void @gimp_color_display_changed(%struct._GimpColorDisplay* %14)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.2, %if.end, %entry
  ret void
}

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare i8* @g_type_class_peek(i64) #1

declare %struct._GEnumValue* @g_enum_get_value(%struct._GEnumClass*, i32) #1

declare void @g_object_notify(%struct._GObject*, i8*) #1

declare void @gimp_color_display_changed(%struct._GimpColorDisplay*) #1

declare i32 @cairo_image_surface_get_width(%struct._cairo_surface*) #1

declare i32 @cairo_image_surface_get_height(%struct._cairo_surface*) #1

declare i32 @cairo_image_surface_get_stride(%struct._cairo_surface*) #1

declare i8* @cairo_image_surface_get_data(%struct._cairo_surface*) #1

declare i32 @cairo_image_surface_get_format(%struct._cairo_surface*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i8 @lut_lookup(float %value, float* %lut) #5 {
entry:
  %retval = alloca i8, align 1
  %value.addr = alloca float, align 4
  %lut.addr = alloca float*, align 8
  %offset = alloca i8, align 1
  %step = alloca i8, align 1
  store float %value, float* %value.addr, align 4
  store float* %lut, float** %lut.addr, align 8
  store i8 127, i8* %offset, align 1
  store i8 64, i8* %step, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end.13, %entry
  %0 = load i8, i8* %step, align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8, i8* %offset, align 1
  %idxprom = zext i8 %1 to i64
  %2 = load float*, float** %lut.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %2, i64 %idxprom
  %3 = load float, float* %arrayidx, align 4
  %4 = load float, float* %value.addr, align 4
  %cmp = fcmp ogt float %3, %4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %5 = load i8, i8* %step, align 1
  %conv = zext i8 %5 to i32
  %6 = load i8, i8* %offset, align 1
  %conv1 = zext i8 %6 to i32
  %sub = sub nsw i32 %conv1, %conv
  %conv2 = trunc i32 %sub to i8
  store i8 %conv2, i8* %offset, align 1
  br label %if.end.13

if.else:                                          ; preds = %while.body
  %7 = load i8, i8* %offset, align 1
  %conv3 = zext i8 %7 to i32
  %add = add nsw i32 %conv3, 1
  %idxprom4 = sext i32 %add to i64
  %8 = load float*, float** %lut.addr, align 8
  %arrayidx5 = getelementptr inbounds float, float* %8, i64 %idxprom4
  %9 = load float, float* %arrayidx5, align 4
  %10 = load float, float* %value.addr, align 4
  %cmp6 = fcmp ogt float %9, %10
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.else
  %11 = load i8, i8* %offset, align 1
  store i8 %11, i8* %retval
  br label %return

if.end:                                           ; preds = %if.else
  %12 = load i8, i8* %step, align 1
  %conv9 = zext i8 %12 to i32
  %13 = load i8, i8* %offset, align 1
  %conv10 = zext i8 %13 to i32
  %add11 = add nsw i32 %conv10, %conv9
  %conv12 = trunc i32 %add11 to i8
  store i8 %conv12, i8* %offset, align 1
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  %14 = load i8, i8* %step, align 1
  %conv14 = zext i8 %14 to i32
  %div = sdiv i32 %conv14, 2
  %conv15 = trunc i32 %div to i8
  store i8 %conv15, i8* %step, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load i8, i8* %offset, align 1
  %conv16 = zext i8 %15 to i32
  %cmp17 = icmp eq i32 %conv16, 254
  br i1 %cmp17, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %while.end
  %16 = load float*, float** %lut.addr, align 8
  %arrayidx19 = getelementptr inbounds float, float* %16, i64 255
  %17 = load float, float* %arrayidx19, align 4
  %18 = load float, float* %value.addr, align 4
  %cmp20 = fcmp olt float %17, %18
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %land.lhs.true
  store i8 -1, i8* %retval
  br label %return

if.end.23:                                        ; preds = %land.lhs.true, %while.end
  %19 = load i8, i8* %offset, align 1
  store i8 %19, i8* %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.22, %if.then.8
  %20 = load i8, i8* %retval
  ret i8 %20
}

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_prop_enum_combo_box_new(%struct._GObject*, i8*, i32, i32) #1

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind
declare double @pow(double, double) #3

declare i64 @g_type_module_register_enum(%struct._GTypeModule*, i8*, %struct._GEnumValue*) #1

declare void @gimp_type_set_translation_domain(i64, i8*) #1

declare void @gimp_enum_set_value_descriptions(i64, %struct._GimpEnumDesc*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
