; ModuleID = './app/tools/gimpalignoptions.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpAlignOptionsClass = type { %struct._GimpToolOptionsClass, void (%struct._GimpAlignOptions*, i32)* }
%struct._GimpToolOptionsClass = type { %struct._GimpContextClass, void (%struct._GimpToolOptions*)* }
%struct._GimpContextClass = type { %struct._GimpViewableClass, void (%struct._GimpContext*, %struct._GimpImage*)*, void (%struct._GimpContext*, i8*)*, void (%struct._GimpContext*, %struct._GimpToolInfo*)*, void (%struct._GimpContext*, %struct._GimpPaintInfo*)*, void (%struct._GimpContext*, %struct._GimpRGB*)*, void (%struct._GimpContext*, %struct._GimpRGB*)*, void (%struct._GimpContext*, double)*, void (%struct._GimpContext*, i32)*, void (%struct._GimpContext*, %struct._GimpBrush*)*, void (%struct._GimpContext*, %struct._GimpDynamics*)*, void (%struct._GimpContext*, %struct._GimpPattern*)*, void (%struct._GimpContext*, %struct._GimpGradient*)*, void (%struct._GimpContext*, %struct._GimpPalette*)*, void (%struct._GimpContext*, %struct._GimpToolPreset*)*, void (%struct._GimpContext*, %struct._GimpFont*)*, void (%struct._GimpContext*, %struct._GimpBuffer*)*, void (%struct._GimpContext*, %struct._GimpImagefile*)*, void (%struct._GimpContext*, %struct._GimpTemplate*)* }
%struct._GimpViewableClass = type { %struct._GimpObjectClass, i8*, i8*, void (%struct._GimpViewable*)*, void (%struct._GimpViewable*)*, i32 (%struct._GimpViewable*, i32*, i32*)*, void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, i8* (%struct._GimpViewable*, i8**)*, %struct._GimpContainer* (%struct._GimpViewable*)*, void (%struct._GimpViewable*, i32)*, i32 (%struct._GimpViewable*)* }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpViewable = type { %struct._GimpObject }
%struct._TempBuf = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._Gimp = type opaque
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
%struct._GdkPixbuf = type opaque
%struct._GimpContainer = type opaque
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
%struct._GimpAlignOptions = type { %struct._GimpToolOptions, i32, double, double, [12 x %struct._GtkWidget*] }
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
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }

@gimp_align_options_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"GimpAlignOptions\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Align\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Relative to:\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"align-reference\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Align left edge of target\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Align center of target\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Align right edge of target\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Align top edge of target\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Align middle of target\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Align bottom of target\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Distribute\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Distribute left edges of targets\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"Distribute horizontal centers of targets\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"Distribute right edges of targets\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"Distribute top edges of targets\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"Distribute vertical centers of targets\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"Distribute bottoms of targets\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"Offset:\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"offset-x\00", align 1
@gimp_align_options_parent_class = internal global i8* null, align 8
@GimpAlignOptions_private_offset = internal global i32 0, align 4
@.str.19 = private unnamed_addr constant [21 x i8] c"align-button-clicked\00", align 1
@align_options_signals = internal global [1 x i32] zeroinitializer, align 4
@.str.20 = private unnamed_addr constant [50 x i8] c"Reference image object a layer will be aligned on\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"Horizontal offset for distribution\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"offset-y\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"Vertical offset for distribution\00", align 1
@.str.24 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"gimpalignoptions.c\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"Gimp-Tools\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"gimp-gravity-west\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"gimp-hcenter\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"gimp-gravity-east\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"gimp-gravity-north\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"gimp-vcenter\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"gimp-gravity-south\00", align 1
@.str.34 = private unnamed_addr constant [45 x i8] c"file %s: line %d (%s): should not be reached\00", align 1
@__func__.gimp_align_options_button_new = private unnamed_addr constant [30 x i8] c"gimp_align_options_button_new\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"align-action\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_align_options_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_align_options_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_align_options_get_type.g_define_type_id__volatile to i8*))
  %tobool2 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  store i32 %land.ext, i32* %tmp
  %4 = load i32, i32* %tmp
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %call5 = call i64 @gimp_tool_options_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 440, void (i8*, i8*)* bitcast (void (i8*)* @gimp_align_options_class_intern_init to void (i8*, i8*)*), i32 472, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpAlignOptions*)* @gimp_align_options_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_align_options_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_align_options_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_options_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_align_options_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_align_options_parent_class, align 8
  %1 = load i32, i32* @GimpAlignOptions_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpAlignOptions_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpAlignOptionsClass*
  call void @gimp_align_options_class_init(%struct._GimpAlignOptionsClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_align_options_init(%struct._GimpAlignOptions* %options) #3 {
entry:
  %options.addr = alloca %struct._GimpAlignOptions*, align 8
  store %struct._GimpAlignOptions* %options, %struct._GimpAlignOptions** %options.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_align_options_gui(%struct._GimpToolOptions* %tool_options) #3 {
entry:
  %tool_options.addr = alloca %struct._GimpToolOptions*, align 8
  %config = alloca %struct._GObject*, align 8
  %options = alloca %struct._GimpAlignOptions*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %align_vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  %n = alloca i32, align 4
  store %struct._GimpToolOptions* %tool_options, %struct._GimpToolOptions** %tool_options.addr, align 8
  %0 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %1 = bitcast %struct._GimpToolOptions* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  store %struct._GObject* %2, %struct._GObject** %config, align 8
  %3 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %4 = bitcast %struct._GimpToolOptions* %3 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_align_options_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call1)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpAlignOptions*
  store %struct._GimpAlignOptions* %5, %struct._GimpAlignOptions** %options, align 8
  %6 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options.addr, align 8
  %call3 = call %struct._GtkWidget* @gimp_tool_options_gui(%struct._GimpToolOptions* %6)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %vbox, align 8
  store i32 0, i32* %n, align 4
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)) #5
  %call5 = call %struct._GtkWidget* @gimp_frame_new(i8* %call4)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %frame, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_box_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call6)
  %9 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkBox*
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %9, %struct._GtkWidget* %10, i32 0, i32 0, i32 0)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %11)
  %call8 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %align_vbox, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_container_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call9)
  %14 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkContainer*
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %align_vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %14, %struct._GtkWidget* %15)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %align_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %16)
  %call11 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call11, %struct._GtkWidget** %hbox, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %align_vbox, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_box_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call12)
  %19 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkBox*
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %19, %struct._GtkWidget* %20, i32 0, i32 0, i32 0)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %21)
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)) #5
  %call15 = call %struct._GtkWidget* @gimp_frame_new(i8* %call14)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %frame, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %align_vbox, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_box_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call16)
  %24 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkBox*
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %24, %struct._GtkWidget* %25, i32 0, i32 0, i32 0)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %26)
  %27 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call18 = call %struct._GtkWidget* @gimp_prop_enum_combo_box_new(%struct._GObject* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i32 0, i32 0)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %combo, align 8
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_container_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call19)
  %30 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkContainer*
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_container_add(%struct._GtkContainer* %30, %struct._GtkWidget* %31)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %32)
  %call21 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %hbox, align 8
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %align_vbox, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_box_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call22)
  %35 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkBox*
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %35, %struct._GtkWidget* %36, i32 0, i32 0, i32 0)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %37)
  %38 = load %struct._GimpAlignOptions*, %struct._GimpAlignOptions** %options, align 8
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0)) #5
  %call25 = call %struct._GtkWidget* @gimp_align_options_button_new(%struct._GimpAlignOptions* %38, i32 0, %struct._GtkWidget* %39, i8* %call24)
  %40 = load i32, i32* %n, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %n, align 4
  %idxprom = sext i32 %40 to i64
  %41 = load %struct._GimpAlignOptions*, %struct._GimpAlignOptions** %options, align 8
  %button = getelementptr inbounds %struct._GimpAlignOptions, %struct._GimpAlignOptions* %41, i32 0, i32 4
  %arrayidx = getelementptr inbounds [12 x %struct._GtkWidget*], [12 x %struct._GtkWidget*]* %button, i32 0, i64 %idxprom
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %arrayidx, align 8
  %42 = load %struct._GimpAlignOptions*, %struct._GimpAlignOptions** %options, align 8
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0)) #5
  %call27 = call %struct._GtkWidget* @gimp_align_options_button_new(%struct._GimpAlignOptions* %42, i32 1, %struct._GtkWidget* %43, i8* %call26)
  %44 = load i32, i32* %n, align 4
  %inc28 = add nsw i32 %44, 1
  store i32 %inc28, i32* %n, align 4
  %idxprom29 = sext i32 %44 to i64
  %45 = load %struct._GimpAlignOptions*, %struct._GimpAlignOptions** %options, align 8
  %button30 = getelementptr inbounds %struct._GimpAlignOptions, %struct._GimpAlignOptions* %45, i32 0, i32 4
  %arrayidx31 = getelementptr inbounds [12 x %struct._GtkWidget*], [12 x %struct._GtkWidget*]* %button30, i32 0, i64 %idxprom29
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %arrayidx31, align 8
  %46 = load %struct._GimpAlignOptions*, %struct._GimpAlignOptions** %options, align 8
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0)) #5
  %call33 = call %struct._GtkWidget* @gimp_align_options_button_new(%struct._GimpAlignOptions* %46, i32 2, %struct._GtkWidget* %47, i8* %call32)
  %48 = load i32, i32* %n, align 4
  %inc34 = add nsw i32 %48, 1
  store i32 %inc34, i32* %n, align 4
  %idxprom35 = sext i32 %48 to i64
  %49 = load %struct._GimpAlignOptions*, %struct._GimpAlignOptions** %options, align 8
  %button36 = getelementptr inbounds %struct._GimpAlignOptions, %struct._GimpAlignOptions* %49, i32 0, i32 4
  %arrayidx37 = getelementptr inbounds [12 x %struct._GtkWidget*], [12 x %struct._GtkWidget*]* %button36, i32 0, i64 %idxprom35
  store %struct._GtkWidget* %call33, %struct._GtkWidget** %arrayidx37, align 8
  %call38 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call38, %struct._GtkWidget** %hbox, align 8
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %align_vbox, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_box_get_type() #6
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call39)
  %52 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkBox*
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %52, %struct._GtkWidget* %53, i32 0, i32 0, i32 0)
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %54)
  %55 = load %struct._GimpAlignOptions*, %struct._GimpAlignOptions** %options, align 8
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %call41 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0)) #5
  %call42 = call %struct._GtkWidget* @gimp_align_options_button_new(%struct._GimpAlignOptions* %55, i32 3, %struct._GtkWidget* %56, i8* %call41)
  %57 = load i32, i32* %n, align 4
  %inc43 = add nsw i32 %57, 1
  store i32 %inc43, i32* %n, align 4
  %idxprom44 = sext i32 %57 to i64
  %58 = load %struct._GimpAlignOptions*, %struct._GimpAlignOptions** %options, align 8
  %button45 = getelementptr inbounds %struct._GimpAlignOptions, %struct._GimpAlignOptions* %58, i32 0, i32 4
  %arrayidx46 = getelementptr inbounds [12 x %struct._GtkWidget*], [12 x %struct._GtkWidget*]* %button45, i32 0, i64 %idxprom44
  store %struct._GtkWidget* %call42, %struct._GtkWidget** %arrayidx46, align 8
  %59 = load %struct._GimpAlignOptions*, %struct._GimpAlignOptions** %options, align 8
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %call47 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0)) #5
  %call48 = call %struct._GtkWidget* @gimp_align_options_button_new(%struct._GimpAlignOptions* %59, i32 4, %struct._GtkWidget* %60, i8* %call47)
  %61 = load i32, i32* %n, align 4
  %inc49 = add nsw i32 %61, 1
  store i32 %inc49, i32* %n, align 4
  %idxprom50 = sext i32 %61 to i64
  %62 = load %struct._GimpAlignOptions*, %struct._GimpAlignOptions** %options, align 8
  %button51 = getelementptr inbounds %struct._GimpAlignOptions, %struct._GimpAlignOptions* %62, i32 0, i32 4
  %arrayidx52 = getelementptr inbounds [12 x %struct._GtkWidget*], [12 x %struct._GtkWidget*]* %button51, i32 0, i64 %idxprom50
  store %struct._GtkWidget* %call48, %struct._GtkWidget** %arrayidx52, align 8
  %63 = load %struct._GimpAlignOptions*, %struct._GimpAlignOptions** %options, align 8
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %call53 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0)) #5
  %call54 = call %struct._GtkWidget* @gimp_align_options_button_new(%struct._GimpAlignOptions* %63, i32 5, %struct._GtkWidget* %64, i8* %call53)
  %65 = load i32, i32* %n, align 4
  %inc55 = add nsw i32 %65, 1
  store i32 %inc55, i32* %n, align 4
  %idxprom56 = sext i32 %65 to i64
  %66 = load %struct._GimpAlignOptions*, %struct._GimpAlignOptions** %options, align 8
  %button57 = getelementptr inbounds %struct._GimpAlignOptions, %struct._GimpAlignOptions* %66, i32 0, i32 4
  %arrayidx58 = getelementptr inbounds [12 x %struct._GtkWidget*], [12 x %struct._GtkWidget*]* %button57, i32 0, i64 %idxprom56
  store %struct._GtkWidget* %call54, %struct._GtkWidget** %arrayidx58, align 8
  %call59 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0)) #5
  %call60 = call %struct._GtkWidget* @gimp_frame_new(i8* %call59)
  store %struct._GtkWidget* %call60, %struct._GtkWidget** %frame, align 8
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %68 = bitcast %struct._GtkWidget* %67 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_box_get_type() #6
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call61)
  %69 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkBox*
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %69, %struct._GtkWidget* %70, i32 0, i32 0, i32 0)
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %71)
  %call63 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call63, %struct._GtkWidget** %align_vbox, align 8
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_container_get_type() #6
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call64)
  %74 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkContainer*
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %align_vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %74, %struct._GtkWidget* %75)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %align_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %76)
  %call66 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call66, %struct._GtkWidget** %hbox, align 8
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %align_vbox, align 8
  %78 = bitcast %struct._GtkWidget* %77 to %struct._GTypeInstance*
  %call67 = call i64 @gtk_box_get_type() #6
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call67)
  %79 = bitcast %struct._GTypeInstance* %call68 to %struct._GtkBox*
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %79, %struct._GtkWidget* %80, i32 0, i32 0, i32 0)
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %81)
  %82 = load %struct._GimpAlignOptions*, %struct._GimpAlignOptions** %options, align 8
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %call69 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i32 0, i32 0)) #5
  %call70 = call %struct._GtkWidget* @gimp_align_options_button_new(%struct._GimpAlignOptions* %82, i32 6, %struct._GtkWidget* %83, i8* %call69)
  %84 = load i32, i32* %n, align 4
  %inc71 = add nsw i32 %84, 1
  store i32 %inc71, i32* %n, align 4
  %idxprom72 = sext i32 %84 to i64
  %85 = load %struct._GimpAlignOptions*, %struct._GimpAlignOptions** %options, align 8
  %button73 = getelementptr inbounds %struct._GimpAlignOptions, %struct._GimpAlignOptions* %85, i32 0, i32 4
  %arrayidx74 = getelementptr inbounds [12 x %struct._GtkWidget*], [12 x %struct._GtkWidget*]* %button73, i32 0, i64 %idxprom72
  store %struct._GtkWidget* %call70, %struct._GtkWidget** %arrayidx74, align 8
  %86 = load %struct._GimpAlignOptions*, %struct._GimpAlignOptions** %options, align 8
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %call75 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i32 0, i32 0)) #5
  %call76 = call %struct._GtkWidget* @gimp_align_options_button_new(%struct._GimpAlignOptions* %86, i32 7, %struct._GtkWidget* %87, i8* %call75)
  %88 = load i32, i32* %n, align 4
  %inc77 = add nsw i32 %88, 1
  store i32 %inc77, i32* %n, align 4
  %idxprom78 = sext i32 %88 to i64
  %89 = load %struct._GimpAlignOptions*, %struct._GimpAlignOptions** %options, align 8
  %button79 = getelementptr inbounds %struct._GimpAlignOptions, %struct._GimpAlignOptions* %89, i32 0, i32 4
  %arrayidx80 = getelementptr inbounds [12 x %struct._GtkWidget*], [12 x %struct._GtkWidget*]* %button79, i32 0, i64 %idxprom78
  store %struct._GtkWidget* %call76, %struct._GtkWidget** %arrayidx80, align 8
  %90 = load %struct._GimpAlignOptions*, %struct._GimpAlignOptions** %options, align 8
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %call81 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0)) #5
  %call82 = call %struct._GtkWidget* @gimp_align_options_button_new(%struct._GimpAlignOptions* %90, i32 8, %struct._GtkWidget* %91, i8* %call81)
  %92 = load i32, i32* %n, align 4
  %inc83 = add nsw i32 %92, 1
  store i32 %inc83, i32* %n, align 4
  %idxprom84 = sext i32 %92 to i64
  %93 = load %struct._GimpAlignOptions*, %struct._GimpAlignOptions** %options, align 8
  %button85 = getelementptr inbounds %struct._GimpAlignOptions, %struct._GimpAlignOptions* %93, i32 0, i32 4
  %arrayidx86 = getelementptr inbounds [12 x %struct._GtkWidget*], [12 x %struct._GtkWidget*]* %button85, i32 0, i64 %idxprom84
  store %struct._GtkWidget* %call82, %struct._GtkWidget** %arrayidx86, align 8
  %call87 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call87, %struct._GtkWidget** %hbox, align 8
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %align_vbox, align 8
  %95 = bitcast %struct._GtkWidget* %94 to %struct._GTypeInstance*
  %call88 = call i64 @gtk_box_get_type() #6
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %95, i64 %call88)
  %96 = bitcast %struct._GTypeInstance* %call89 to %struct._GtkBox*
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %96, %struct._GtkWidget* %97, i32 0, i32 0, i32 0)
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %98)
  %99 = load %struct._GimpAlignOptions*, %struct._GimpAlignOptions** %options, align 8
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %call90 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i32 0, i32 0)) #5
  %call91 = call %struct._GtkWidget* @gimp_align_options_button_new(%struct._GimpAlignOptions* %99, i32 9, %struct._GtkWidget* %100, i8* %call90)
  %101 = load i32, i32* %n, align 4
  %inc92 = add nsw i32 %101, 1
  store i32 %inc92, i32* %n, align 4
  %idxprom93 = sext i32 %101 to i64
  %102 = load %struct._GimpAlignOptions*, %struct._GimpAlignOptions** %options, align 8
  %button94 = getelementptr inbounds %struct._GimpAlignOptions, %struct._GimpAlignOptions* %102, i32 0, i32 4
  %arrayidx95 = getelementptr inbounds [12 x %struct._GtkWidget*], [12 x %struct._GtkWidget*]* %button94, i32 0, i64 %idxprom93
  store %struct._GtkWidget* %call91, %struct._GtkWidget** %arrayidx95, align 8
  %103 = load %struct._GimpAlignOptions*, %struct._GimpAlignOptions** %options, align 8
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %call96 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i32 0, i32 0)) #5
  %call97 = call %struct._GtkWidget* @gimp_align_options_button_new(%struct._GimpAlignOptions* %103, i32 10, %struct._GtkWidget* %104, i8* %call96)
  %105 = load i32, i32* %n, align 4
  %inc98 = add nsw i32 %105, 1
  store i32 %inc98, i32* %n, align 4
  %idxprom99 = sext i32 %105 to i64
  %106 = load %struct._GimpAlignOptions*, %struct._GimpAlignOptions** %options, align 8
  %button100 = getelementptr inbounds %struct._GimpAlignOptions, %struct._GimpAlignOptions* %106, i32 0, i32 4
  %arrayidx101 = getelementptr inbounds [12 x %struct._GtkWidget*], [12 x %struct._GtkWidget*]* %button100, i32 0, i64 %idxprom99
  store %struct._GtkWidget* %call97, %struct._GtkWidget** %arrayidx101, align 8
  %107 = load %struct._GimpAlignOptions*, %struct._GimpAlignOptions** %options, align 8
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %call102 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i32 0, i32 0)) #5
  %call103 = call %struct._GtkWidget* @gimp_align_options_button_new(%struct._GimpAlignOptions* %107, i32 11, %struct._GtkWidget* %108, i8* %call102)
  %109 = load i32, i32* %n, align 4
  %inc104 = add nsw i32 %109, 1
  store i32 %inc104, i32* %n, align 4
  %idxprom105 = sext i32 %109 to i64
  %110 = load %struct._GimpAlignOptions*, %struct._GimpAlignOptions** %options, align 8
  %button106 = getelementptr inbounds %struct._GimpAlignOptions, %struct._GimpAlignOptions* %110, i32 0, i32 4
  %arrayidx107 = getelementptr inbounds [12 x %struct._GtkWidget*], [12 x %struct._GtkWidget*]* %button106, i32 0, i64 %idxprom105
  store %struct._GtkWidget* %call103, %struct._GtkWidget** %arrayidx107, align 8
  %call108 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call108, %struct._GtkWidget** %hbox, align 8
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %align_vbox, align 8
  %112 = bitcast %struct._GtkWidget* %111 to %struct._GTypeInstance*
  %call109 = call i64 @gtk_box_get_type() #6
  %call110 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %112, i64 %call109)
  %113 = bitcast %struct._GTypeInstance* %call110 to %struct._GtkBox*
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %113, %struct._GtkWidget* %114, i32 0, i32 0, i32 0)
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %115)
  %call111 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0)) #5
  %call112 = call %struct._GtkWidget* @gtk_label_new(i8* %call111)
  store %struct._GtkWidget* %call112, %struct._GtkWidget** %label, align 8
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %117 = bitcast %struct._GtkWidget* %116 to %struct._GTypeInstance*
  %call113 = call i64 @gtk_box_get_type() #6
  %call114 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %117, i64 %call113)
  %118 = bitcast %struct._GTypeInstance* %call114 to %struct._GtkBox*
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %118, %struct._GtkWidget* %119, i32 0, i32 0, i32 0)
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %120)
  %121 = load %struct._GObject*, %struct._GObject** %config, align 8
  %call115 = call %struct._GtkWidget* @gimp_prop_spin_button_new(%struct._GObject* %121, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), double 1.000000e+00, double 2.000000e+01, i32 0)
  store %struct._GtkWidget* %call115, %struct._GtkWidget** %spinbutton, align 8
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %123 = bitcast %struct._GtkWidget* %122 to %struct._GTypeInstance*
  %call116 = call i64 @gtk_box_get_type() #6
  %call117 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %123, i64 %call116)
  %124 = bitcast %struct._GTypeInstance* %call117 to %struct._GtkBox*
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %124, %struct._GtkWidget* %125, i32 0, i32 0, i32 0)
  %126 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %126)
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  ret %struct._GtkWidget* %127
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GtkWidget* @gimp_tool_options_gui(%struct._GimpToolOptions*) #1

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare %struct._GtkWidget* @gimp_prop_enum_combo_box_new(%struct._GObject*, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_align_options_button_new(%struct._GimpAlignOptions* %options, i32 %action, %struct._GtkWidget* %parent, i8* %tooltip) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %options.addr = alloca %struct._GimpAlignOptions*, align 8
  %action.addr = alloca i32, align 4
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %tooltip.addr = alloca i8*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  %stock_id = alloca i8*, align 8
  store %struct._GimpAlignOptions* %options, %struct._GimpAlignOptions** %options.addr, align 8
  store i32 %action, i32* %action.addr, align 4
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  store i8* %tooltip, i8** %tooltip.addr, align 8
  store i8* null, i8** %stock_id, align 8
  %0 = load i32, i32* %action.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
    i32 5, label %sw.bb.5
    i32 6, label %sw.bb.6
    i32 7, label %sw.bb.7
    i32 8, label %sw.bb.8
    i32 9, label %sw.bb.9
    i32 10, label %sw.bb.10
    i32 11, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0), i8** %stock_id, align 8
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0), i8** %stock_id, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i32 0, i32 0), i8** %stock_id, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i32 0, i32 0), i8** %stock_id, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0), i8** %stock_id, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0), i8** %stock_id, align 8
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0), i8** %stock_id, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0), i8** %stock_id, align 8
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i32 0, i32 0), i8** %stock_id, align 8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i32 0, i32 0), i8** %stock_id, align 8
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0), i8** %stock_id, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0), i8** %stock_id, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0), i32 232, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_align_options_button_new, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

do.end:                                           ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %call = call %struct._GtkWidget* @gtk_button_new()
  store %struct._GtkWidget* %call, %struct._GtkWidget** %button, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %1, i32 0)
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %2)
  %3 = load i8*, i8** %stock_id, align 8
  %call12 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* %3, i32 4)
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %image, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_container_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call13)
  %6 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkContainer*
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_container_add(%struct._GtkContainer* %6, %struct._GtkWidget* %7)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call15)
  %11 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %11, %struct._GtkWidget* %12, i32 0, i32 0, i32 0)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %13)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %15 = load i8*, i8** %tooltip.addr, align 8
  call void @gimp_help_set_help_data(%struct._GtkWidget* %14, i8* %15, i8* null)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 80)
  %18 = bitcast %struct._GTypeInstance* %call17 to %struct._GObject*
  %19 = load i32, i32* %action.addr, align 4
  %conv = zext i32 %19 to i64
  %20 = inttoptr i64 %conv to i8*
  call void @g_object_set_data(%struct._GObject* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), i8* %20)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %22 = bitcast %struct._GtkWidget* %21 to i8*
  %23 = load %struct._GimpAlignOptions*, %struct._GimpAlignOptions** %options.addr, align 8
  %24 = bitcast %struct._GimpAlignOptions* %23 to i8*
  %call18 = call i64 @g_signal_connect_data(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), void ()* bitcast (void (%struct._GtkButton*, %struct._GimpAlignOptions*)* @gimp_align_options_button_clicked to void ()*), i8* %24, void (i8*, %struct._GClosure*)* null, i32 0)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  store %struct._GtkWidget* %25, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %do.body
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %26
}

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare %struct._GtkWidget* @gimp_prop_spin_button_new(%struct._GObject*, i8*, double, double, i32) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_align_options_class_init(%struct._GimpAlignOptionsClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpAlignOptionsClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpAlignOptionsClass* %klass, %struct._GimpAlignOptionsClass** %klass.addr, align 8
  %0 = load %struct._GimpAlignOptionsClass*, %struct._GimpAlignOptionsClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpAlignOptionsClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_align_options_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_align_options_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %5 = load %struct._GimpAlignOptionsClass*, %struct._GimpAlignOptionsClass** %klass.addr, align 8
  %align_button_clicked = getelementptr inbounds %struct._GimpAlignOptionsClass, %struct._GimpAlignOptionsClass* %5, i32 0, i32 1
  store void (%struct._GimpAlignOptions*, i32)* null, void (%struct._GimpAlignOptions*, i32)** %align_button_clicked, align 8
  %6 = load %struct._GimpAlignOptionsClass*, %struct._GimpAlignOptionsClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpAlignOptionsClass* %6 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %call1 = call i64 @gimp_alignment_type_get_type() #6
  %call2 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i32 0, i32 0), i64 %8, i32 1, i32 432, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__ENUM, i64 4, i32 1, i64 %call1)
  store i32 %call2, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @align_options_signals, i32 0, i64 0), align 4
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gimp_align_reference_type_get_type() #6
  %call4 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.20, i32 0, i32 0), i64 %call3, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %9, i32 1, %struct._GParamSpec* %call4)
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i32 0, i32 0), double -2.621440e+05, double 2.621440e+05, double 0.000000e+00, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 2, %struct._GParamSpec* %call5)
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i32 0, i32 0), double -2.621440e+05, double 2.621440e+05, double 0.000000e+00, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 3, %struct._GParamSpec* %call6)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_align_options_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %options = alloca %struct._GimpAlignOptions*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_align_options_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpAlignOptions*
  store %struct._GimpAlignOptions* %2, %struct._GimpAlignOptions** %options, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_enum(%struct._GValue* %4)
  %5 = load %struct._GimpAlignOptions*, %struct._GimpAlignOptions** %options, align 8
  %align_reference = getelementptr inbounds %struct._GimpAlignOptions, %struct._GimpAlignOptions* %5, i32 0, i32 1
  store i32 %call2, i32* %align_reference, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call double @g_value_get_double(%struct._GValue* %6)
  %7 = load %struct._GimpAlignOptions*, %struct._GimpAlignOptions** %options, align 8
  %offset_x = getelementptr inbounds %struct._GimpAlignOptions, %struct._GimpAlignOptions* %7, i32 0, i32 2
  store double %call4, double* %offset_x, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call double @g_value_get_double(%struct._GValue* %8)
  %9 = load %struct._GimpAlignOptions*, %struct._GimpAlignOptions** %options, align 8
  %offset_y = getelementptr inbounds %struct._GimpAlignOptions, %struct._GimpAlignOptions* %9, i32 0, i32 3
  store double %call6, double* %offset_y, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %10 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %10, %struct._GObject** %_glib__object, align 8
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %11, %struct._GParamSpec** %_glib__pspec, align 8
  %12 = load i32, i32* %property_id.addr, align 4
  store i32 %12, i32* %_glib__property_id, align 4
  %13 = load i32, i32* %_glib__property_id, align 4
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %14, i32 0, i32 1
  %15 = load i8*, i8** %name, align 8
  %16 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %17 = bitcast %struct._GParamSpec* %16 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %18, i32 0, i32 0
  %19 = load i64, i64* %g_type, align 8
  %call7 = call i8* @g_type_name(i64 %19)
  %20 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %21 = bitcast %struct._GObject* %20 to %struct._GTypeInstance*
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type9 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type9, align 8
  %call10 = call i8* @g_type_name(i64 %23)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0), i32 137, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 %13, i8* %15, i8* %call7, i8* %call10)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_align_options_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %options = alloca %struct._GimpAlignOptions*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_align_options_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpAlignOptions*
  store %struct._GimpAlignOptions* %2, %struct._GimpAlignOptions** %options, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpAlignOptions*, %struct._GimpAlignOptions** %options, align 8
  %align_reference = getelementptr inbounds %struct._GimpAlignOptions, %struct._GimpAlignOptions* %5, i32 0, i32 1
  %6 = load i32, i32* %align_reference, align 4
  call void @g_value_set_enum(%struct._GValue* %4, i32 %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpAlignOptions*, %struct._GimpAlignOptions** %options, align 8
  %offset_x = getelementptr inbounds %struct._GimpAlignOptions, %struct._GimpAlignOptions* %8, i32 0, i32 2
  %9 = load double, double* %offset_x, align 8
  call void @g_value_set_double(%struct._GValue* %7, double %9)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpAlignOptions*, %struct._GimpAlignOptions** %options, align 8
  %offset_y = getelementptr inbounds %struct._GimpAlignOptions, %struct._GimpAlignOptions* %11, i32 0, i32 3
  %12 = load double, double* %offset_y, align 8
  call void @g_value_set_double(%struct._GValue* %10, double %12)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %13, %struct._GObject** %_glib__object, align 8
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %14, %struct._GParamSpec** %_glib__pspec, align 8
  %15 = load i32, i32* %property_id.addr, align 4
  store i32 %15, i32* %_glib__property_id, align 4
  %16 = load i32, i32* %_glib__property_id, align 4
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %17, i32 0, i32 1
  %18 = load i8*, i8** %name, align 8
  %19 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %20 = bitcast %struct._GParamSpec* %19 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type, align 8
  %call4 = call i8* @g_type_name(i64 %22)
  %23 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %24 = bitcast %struct._GObject* %23 to %struct._GTypeInstance*
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type6 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %25, i32 0, i32 0
  %26 = load i64, i64* %g_type6, align 8
  %call7 = call i8* @g_type_name(i64 %26)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0), i32 165, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 %16, i8* %18, i8* %call4, i8* %call7)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__ENUM(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_alignment_type_get_type() #2

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_align_reference_type_get_type() #2

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare double @g_value_get_double(%struct._GValue*) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #3 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

declare void @g_log(i8*, i32, i8*, ...) #1

declare %struct._GtkWidget* @gtk_button_new() #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_align_options_button_clicked(%struct._GtkButton* %button, %struct._GimpAlignOptions* %options) #3 {
entry:
  %button.addr = alloca %struct._GtkButton*, align 8
  %options.addr = alloca %struct._GimpAlignOptions*, align 8
  %action = alloca i32, align 4
  store %struct._GtkButton* %button, %struct._GtkButton** %button.addr, align 8
  store %struct._GimpAlignOptions* %options, %struct._GimpAlignOptions** %options.addr, align 8
  %0 = load %struct._GtkButton*, %struct._GtkButton** %button.addr, align 8
  %1 = bitcast %struct._GtkButton* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0))
  %3 = ptrtoint i8* %call1 to i64
  %conv = trunc i64 %3 to i32
  store i32 %conv, i32* %action, align 4
  %4 = load %struct._GimpAlignOptions*, %struct._GimpAlignOptions** %options.addr, align 8
  %5 = bitcast %struct._GimpAlignOptions* %4 to i8*
  %6 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @align_options_signals, i32 0, i64 0), align 4
  %7 = load i32, i32* %action, align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %5, i32 %6, i32 0, i32 %7)
  ret void
}

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare void @g_signal_emit(i8*, i32, i32, ...) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
