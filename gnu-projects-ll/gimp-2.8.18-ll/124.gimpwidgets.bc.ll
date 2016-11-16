; ModuleID = './libgimpwidgets/gimpwidgets.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GtkRadioButton = type { %struct._GtkCheckButton, %struct._GSList* }
%struct._GtkCheckButton = type { %struct._GtkToggleButton }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkSpinButton = type { %struct._GtkEntry, %struct._GtkAdjustment*, %struct._GdkDrawable*, i32, double, double, i32, i24 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GBinding = type opaque
%struct.GimpCoordinatesData = type { %struct._GimpChainButton*, i32, double, double, double, double }
%struct._GimpChainButton = type { %struct._GtkTable, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GimpSizeEntry = type { %struct._GtkTable, %struct._GSList*, i32, %struct._GtkWidget*, i32, i32, i32, i32, i32 }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._PangoAttrList = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GtkWidgetClass = type { %struct._GtkObjectClass, i32, i32, void (%struct._GtkWidget*, i32, %struct._GParamSpec**)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkRequisition*)*, void (%struct._GtkWidget*, %struct._GdkRectangle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GParamSpec*)*, i32 (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %union._GdkEvent*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventScroll*)*, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventConfigure*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProperty*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventVisibility*)*, i32 (%struct._GtkWidget*, %struct._GdkEventClient*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventWindowState*)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32)*, i32 (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, %struct._AtkObject* (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GdkScreen*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkEventGrabBroken*)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32, i32, i32, %struct._GtkTooltip*)*, void ()*, void ()*, void ()* }
%struct._GtkObjectClass = type { %struct._GObjectClass, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GtkArg = type opaque
%union._GdkEvent = type { %struct._GdkEventCrossing }
%struct._GdkEventCrossing = type { i32, %struct._GdkDrawable*, i8, %struct._GdkDrawable*, i32, double, double, double, double, i32, i32, i32, i32 }
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkEventScroll = type { i32, %struct._GdkDrawable*, i8, i32, double, double, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkEventMotion = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i16, %struct._GdkDevice*, double, double }
%struct._GdkEventExpose = type { i32, %struct._GdkDrawable*, i8, %struct._GdkRectangle, %struct._GdkRegion*, i32 }
%struct._GdkRegion = type opaque
%struct._GdkEventKey = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32, i8*, i16, i8, i8 }
%struct._GdkEventConfigure = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32 }
%struct._GdkEventFocus = type { i32, %struct._GdkDrawable*, i8, i16 }
%struct._GdkEventProperty = type { i32, %struct._GdkDrawable*, i8, %struct._GdkAtom*, i32, i32 }
%struct._GdkAtom = type opaque
%struct._GdkEventSelection = type { i32, %struct._GdkDrawable*, i8, %struct._GdkAtom*, %struct._GdkAtom*, %struct._GdkAtom*, i32, i32 }
%struct._GdkEventProximity = type { i32, %struct._GdkDrawable*, i8, i32, %struct._GdkDevice* }
%struct._GdkEventVisibility = type { i32, %struct._GdkDrawable*, i8, i32 }
%struct._GdkEventClient = type { i32, %struct._GdkDrawable*, i8, %struct._GdkAtom*, i16, %union.anon.0 }
%union.anon.0 = type { [5 x i64] }
%struct._GdkEventAny = type { i32, %struct._GdkDrawable*, i8 }
%struct._GdkEventWindowState = type { i32, %struct._GdkDrawable*, i8, i32, i32 }
%struct._GtkSelectionData = type { %struct._GdkAtom*, %struct._GdkAtom*, %struct._GdkAtom*, i32, i8*, i32, %struct._GdkDisplay* }
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
%struct._GdkDisplayPointerHooks = type { void (%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, %struct._GdkDrawable*, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, i32*, i32*)* }
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct._GdkDragContext = type { %struct._GObject, i32, i32, %struct._GdkDrawable*, %struct._GdkDrawable*, %struct._GList*, i32, i32, i32, i32, i8* }
%struct._AtkObject = type { %struct._GObject, i8*, i8*, %struct._AtkObject*, i32, %struct._AtkRelationSet*, i32 }
%struct._AtkRelationSet = type { %struct._GObject, %struct._GPtrArray* }
%struct._GPtrArray = type { i8**, i32 }
%struct._GdkEventGrabBroken = type { i32, %struct._GdkDrawable*, i8, i32, i32, %struct._GdkDrawable* }
%struct._GtkTooltip = type opaque
%struct._PangoAttribute = type { %struct._PangoAttrClass*, i32, i32 }
%struct._PangoAttrClass = type { i32, %struct._PangoAttribute* (%struct._PangoAttribute*)*, void (%struct._PangoAttribute*)*, i32 (%struct._PangoAttribute*, %struct._PangoAttribute*)* }
%struct._PangoColor = type { i16, i16, i16 }
%struct._PangoLanguage = type opaque

@.str = private unnamed_addr constant [15 x i8] c"gimp-item-data\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"user_data\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gimp_radio_group_set_active = private unnamed_addr constant [28 x i8] c"gimp_radio_group_set_active\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"GTK_IS_RADIO_BUTTON (radio_button)\00", align 1
@__func__.gimp_int_radio_group_set_active = private unnamed_addr constant [32 x i8] c"gimp_int_radio_group_set_active\00", align 1
@__func__.gimp_random_seed_new = private unnamed_addr constant [21 x i8] c"gimp_random_seed_new\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"seed != NULL\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"random_seed != NULL\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.9 = private unnamed_addr constant [103 x i8] c"Use this value for random number generator seed - this allows you to repeat a given \22random\22 operation\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"_New Seed\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.12 = private unnamed_addr constant [60 x i8] c"Seed random number generator with a generated random number\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"_Randomize\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"spinbutton\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"button\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"toggle\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"sensitive\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"coordinates-data\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"chainbutton\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"set_sensitive\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"inverse_sensitive\00", align 1
@__func__.gimp_label_set_attributes = private unnamed_addr constant [26 x i8] c"gimp_label_set_attributes\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"GTK_IS_LABEL (label)\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"%s: invalid PangoAttribute type %d\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"can-focus\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_radio_group_new(i32 %in_frame, i8* %frame_title, ...) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %in_frame.addr = alloca i32, align 4
  %frame_title.addr = alloca i8*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %group = alloca %struct._GSList*, align 8
  %label = alloca i8*, align 8
  %callback = alloca void ()*, align 8
  %callback_data = alloca i8*, align 8
  %item_data = alloca i8*, align 8
  %widget_ptr = alloca %struct._GtkWidget**, align 8
  %active = alloca i32, align 4
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %frame = alloca %struct._GtkWidget*, align 8
  store i32 %in_frame, i32* %in_frame.addr, align 4
  store i8* %frame_title, i8** %frame_title.addr, align 8
  %call = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 2)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %vbox, align 8
  store %struct._GSList* null, %struct._GSList** %group, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %entry
  %0 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 3
  %reg_save_area = load i8*, i8** %0
  %1 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %2 = bitcast i8* %1 to i8**
  %3 = add i32 %gp_offset, 8
  store i32 %3, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %entry
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %4 = bitcast i8* %overflow_arg_area to i8**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %2, %vaarg.in_reg ], [ %4, %vaarg.in_mem ]
  %5 = load i8*, i8** %vaarg.addr
  store i8* %5, i8** %label, align 8
  br label %while.cond

while.cond:                                       ; preds = %vaarg.end.94, %vaarg.end
  %6 = load i8*, i8** %label, align 8
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p4 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay3, i32 0, i32 0
  %gp_offset5 = load i32, i32* %gp_offset_p4
  %fits_in_gp6 = icmp ule i32 %gp_offset5, 40
  br i1 %fits_in_gp6, label %vaarg.in_reg.7, label %vaarg.in_mem.9

vaarg.in_reg.7:                                   ; preds = %while.body
  %7 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay3, i32 0, i32 3
  %reg_save_area8 = load i8*, i8** %7
  %8 = getelementptr i8, i8* %reg_save_area8, i32 %gp_offset5
  %9 = bitcast i8* %8 to void ()**
  %10 = add i32 %gp_offset5, 8
  store i32 %10, i32* %gp_offset_p4
  br label %vaarg.end.13

vaarg.in_mem.9:                                   ; preds = %while.body
  %overflow_arg_area_p10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay3, i32 0, i32 2
  %overflow_arg_area11 = load i8*, i8** %overflow_arg_area_p10
  %11 = bitcast i8* %overflow_arg_area11 to void ()**
  %overflow_arg_area.next12 = getelementptr i8, i8* %overflow_arg_area11, i32 8
  store i8* %overflow_arg_area.next12, i8** %overflow_arg_area_p10
  br label %vaarg.end.13

vaarg.end.13:                                     ; preds = %vaarg.in_mem.9, %vaarg.in_reg.7
  %vaarg.addr14 = phi void ()** [ %9, %vaarg.in_reg.7 ], [ %11, %vaarg.in_mem.9 ]
  %12 = load void ()*, void ()** %vaarg.addr14
  store void ()* %12, void ()** %callback, align 8
  %arraydecay15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p16 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay15, i32 0, i32 0
  %gp_offset17 = load i32, i32* %gp_offset_p16
  %fits_in_gp18 = icmp ule i32 %gp_offset17, 40
  br i1 %fits_in_gp18, label %vaarg.in_reg.19, label %vaarg.in_mem.21

vaarg.in_reg.19:                                  ; preds = %vaarg.end.13
  %13 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay15, i32 0, i32 3
  %reg_save_area20 = load i8*, i8** %13
  %14 = getelementptr i8, i8* %reg_save_area20, i32 %gp_offset17
  %15 = bitcast i8* %14 to i8**
  %16 = add i32 %gp_offset17, 8
  store i32 %16, i32* %gp_offset_p16
  br label %vaarg.end.25

vaarg.in_mem.21:                                  ; preds = %vaarg.end.13
  %overflow_arg_area_p22 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay15, i32 0, i32 2
  %overflow_arg_area23 = load i8*, i8** %overflow_arg_area_p22
  %17 = bitcast i8* %overflow_arg_area23 to i8**
  %overflow_arg_area.next24 = getelementptr i8, i8* %overflow_arg_area23, i32 8
  store i8* %overflow_arg_area.next24, i8** %overflow_arg_area_p22
  br label %vaarg.end.25

vaarg.end.25:                                     ; preds = %vaarg.in_mem.21, %vaarg.in_reg.19
  %vaarg.addr26 = phi i8** [ %15, %vaarg.in_reg.19 ], [ %17, %vaarg.in_mem.21 ]
  %18 = load i8*, i8** %vaarg.addr26
  store i8* %18, i8** %callback_data, align 8
  %arraydecay27 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p28 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay27, i32 0, i32 0
  %gp_offset29 = load i32, i32* %gp_offset_p28
  %fits_in_gp30 = icmp ule i32 %gp_offset29, 40
  br i1 %fits_in_gp30, label %vaarg.in_reg.31, label %vaarg.in_mem.33

vaarg.in_reg.31:                                  ; preds = %vaarg.end.25
  %19 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay27, i32 0, i32 3
  %reg_save_area32 = load i8*, i8** %19
  %20 = getelementptr i8, i8* %reg_save_area32, i32 %gp_offset29
  %21 = bitcast i8* %20 to i8**
  %22 = add i32 %gp_offset29, 8
  store i32 %22, i32* %gp_offset_p28
  br label %vaarg.end.37

vaarg.in_mem.33:                                  ; preds = %vaarg.end.25
  %overflow_arg_area_p34 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay27, i32 0, i32 2
  %overflow_arg_area35 = load i8*, i8** %overflow_arg_area_p34
  %23 = bitcast i8* %overflow_arg_area35 to i8**
  %overflow_arg_area.next36 = getelementptr i8, i8* %overflow_arg_area35, i32 8
  store i8* %overflow_arg_area.next36, i8** %overflow_arg_area_p34
  br label %vaarg.end.37

vaarg.end.37:                                     ; preds = %vaarg.in_mem.33, %vaarg.in_reg.31
  %vaarg.addr38 = phi i8** [ %21, %vaarg.in_reg.31 ], [ %23, %vaarg.in_mem.33 ]
  %24 = load i8*, i8** %vaarg.addr38
  store i8* %24, i8** %item_data, align 8
  %arraydecay39 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p40 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay39, i32 0, i32 0
  %gp_offset41 = load i32, i32* %gp_offset_p40
  %fits_in_gp42 = icmp ule i32 %gp_offset41, 40
  br i1 %fits_in_gp42, label %vaarg.in_reg.43, label %vaarg.in_mem.45

vaarg.in_reg.43:                                  ; preds = %vaarg.end.37
  %25 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay39, i32 0, i32 3
  %reg_save_area44 = load i8*, i8** %25
  %26 = getelementptr i8, i8* %reg_save_area44, i32 %gp_offset41
  %27 = bitcast i8* %26 to %struct._GtkWidget***
  %28 = add i32 %gp_offset41, 8
  store i32 %28, i32* %gp_offset_p40
  br label %vaarg.end.49

vaarg.in_mem.45:                                  ; preds = %vaarg.end.37
  %overflow_arg_area_p46 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay39, i32 0, i32 2
  %overflow_arg_area47 = load i8*, i8** %overflow_arg_area_p46
  %29 = bitcast i8* %overflow_arg_area47 to %struct._GtkWidget***
  %overflow_arg_area.next48 = getelementptr i8, i8* %overflow_arg_area47, i32 8
  store i8* %overflow_arg_area.next48, i8** %overflow_arg_area_p46
  br label %vaarg.end.49

vaarg.end.49:                                     ; preds = %vaarg.in_mem.45, %vaarg.in_reg.43
  %vaarg.addr50 = phi %struct._GtkWidget*** [ %27, %vaarg.in_reg.43 ], [ %29, %vaarg.in_mem.45 ]
  %30 = load %struct._GtkWidget**, %struct._GtkWidget*** %vaarg.addr50
  store %struct._GtkWidget** %30, %struct._GtkWidget*** %widget_ptr, align 8
  %arraydecay51 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p52 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay51, i32 0, i32 0
  %gp_offset53 = load i32, i32* %gp_offset_p52
  %fits_in_gp54 = icmp ule i32 %gp_offset53, 40
  br i1 %fits_in_gp54, label %vaarg.in_reg.55, label %vaarg.in_mem.57

vaarg.in_reg.55:                                  ; preds = %vaarg.end.49
  %31 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay51, i32 0, i32 3
  %reg_save_area56 = load i8*, i8** %31
  %32 = getelementptr i8, i8* %reg_save_area56, i32 %gp_offset53
  %33 = bitcast i8* %32 to i32*
  %34 = add i32 %gp_offset53, 8
  store i32 %34, i32* %gp_offset_p52
  br label %vaarg.end.61

vaarg.in_mem.57:                                  ; preds = %vaarg.end.49
  %overflow_arg_area_p58 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay51, i32 0, i32 2
  %overflow_arg_area59 = load i8*, i8** %overflow_arg_area_p58
  %35 = bitcast i8* %overflow_arg_area59 to i32*
  %overflow_arg_area.next60 = getelementptr i8, i8* %overflow_arg_area59, i32 8
  store i8* %overflow_arg_area.next60, i8** %overflow_arg_area_p58
  br label %vaarg.end.61

vaarg.end.61:                                     ; preds = %vaarg.in_mem.57, %vaarg.in_reg.55
  %vaarg.addr62 = phi i32* [ %33, %vaarg.in_reg.55 ], [ %35, %vaarg.in_mem.57 ]
  %36 = load i32, i32* %vaarg.addr62
  store i32 %36, i32* %active, align 4
  %37 = load i8*, i8** %label, align 8
  %cmp = icmp ne i8* %37, inttoptr (i64 1 to i8*)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %vaarg.end.61
  %38 = load %struct._GSList*, %struct._GSList** %group, align 8
  %39 = load i8*, i8** %label, align 8
  %call63 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList* %38, i8* %39)
  store %struct._GtkWidget* %call63, %struct._GtkWidget** %button, align 8
  br label %if.end

if.else:                                          ; preds = %vaarg.end.61
  %40 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call64 = call %struct._GtkWidget* @gtk_radio_button_new(%struct._GSList* %40)
  store %struct._GtkWidget* %call64, %struct._GtkWidget** %button, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call65 = call i64 @gtk_radio_button_get_type() #6
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call65)
  %43 = bitcast %struct._GTypeInstance* %call66 to %struct._GtkRadioButton*
  %call67 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %43)
  store %struct._GSList* %call67, %struct._GSList** %group, align 8
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_box_get_type() #6
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call68)
  %46 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkBox*
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %46, %struct._GtkWidget* %47, i32 0, i32 0, i32 0)
  %48 = load i8*, i8** %item_data, align 8
  %tobool70 = icmp ne i8* %48, null
  br i1 %tobool70, label %if.then.71, label %if.end.74

if.then.71:                                       ; preds = %if.end
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 80)
  %51 = bitcast %struct._GTypeInstance* %call72 to %struct._GObject*
  %52 = load i8*, i8** %item_data, align 8
  call void @g_object_set_data(%struct._GObject* %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* %52)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 80)
  %55 = bitcast %struct._GTypeInstance* %call73 to %struct._GObject*
  %56 = load i8*, i8** %item_data, align 8
  call void @g_object_set_data(%struct._GObject* %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* %56)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.71, %if.end
  %57 = load %struct._GtkWidget**, %struct._GtkWidget*** %widget_ptr, align 8
  %tobool75 = icmp ne %struct._GtkWidget** %57, null
  br i1 %tobool75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.end.74
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %59 = load %struct._GtkWidget**, %struct._GtkWidget*** %widget_ptr, align 8
  store %struct._GtkWidget* %58, %struct._GtkWidget** %59, align 8
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %if.end.74
  %60 = load i32, i32* %active, align 4
  %tobool78 = icmp ne i32 %60, 0
  br i1 %tobool78, label %if.then.79, label %if.end.82

if.then.79:                                       ; preds = %if.end.77
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %62 = bitcast %struct._GtkWidget* %61 to %struct._GTypeInstance*
  %call80 = call i64 @gtk_toggle_button_get_type() #6
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call80)
  %63 = bitcast %struct._GTypeInstance* %call81 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %63, i32 1)
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.79, %if.end.77
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %65 = bitcast %struct._GtkWidget* %64 to i8*
  %66 = load void ()*, void ()** %callback, align 8
  %67 = load i8*, i8** %callback_data, align 8
  %call83 = call i64 @g_signal_connect_data(i8* %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), void ()* %66, i8* %67, void (i8*, %struct._GClosure*)* null, i32 0)
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %68)
  %arraydecay84 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p85 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay84, i32 0, i32 0
  %gp_offset86 = load i32, i32* %gp_offset_p85
  %fits_in_gp87 = icmp ule i32 %gp_offset86, 40
  br i1 %fits_in_gp87, label %vaarg.in_reg.88, label %vaarg.in_mem.90

vaarg.in_reg.88:                                  ; preds = %if.end.82
  %69 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay84, i32 0, i32 3
  %reg_save_area89 = load i8*, i8** %69
  %70 = getelementptr i8, i8* %reg_save_area89, i32 %gp_offset86
  %71 = bitcast i8* %70 to i8**
  %72 = add i32 %gp_offset86, 8
  store i32 %72, i32* %gp_offset_p85
  br label %vaarg.end.94

vaarg.in_mem.90:                                  ; preds = %if.end.82
  %overflow_arg_area_p91 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay84, i32 0, i32 2
  %overflow_arg_area92 = load i8*, i8** %overflow_arg_area_p91
  %73 = bitcast i8* %overflow_arg_area92 to i8**
  %overflow_arg_area.next93 = getelementptr i8, i8* %overflow_arg_area92, i32 8
  store i8* %overflow_arg_area.next93, i8** %overflow_arg_area_p91
  br label %vaarg.end.94

vaarg.end.94:                                     ; preds = %vaarg.in_mem.90, %vaarg.in_reg.88
  %vaarg.addr95 = phi i8** [ %71, %vaarg.in_reg.88 ], [ %73, %vaarg.in_mem.90 ]
  %74 = load i8*, i8** %vaarg.addr95
  store i8* %74, i8** %label, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %arraydecay96 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay9697 = bitcast %struct.__va_list_tag* %arraydecay96 to i8*
  call void @llvm.va_end(i8* %arraydecay9697)
  %75 = load i32, i32* %in_frame.addr, align 4
  %tobool98 = icmp ne i32 %75, 0
  br i1 %tobool98, label %if.then.99, label %if.end.103

if.then.99:                                       ; preds = %while.end
  %76 = load i8*, i8** %frame_title.addr, align 8
  %call100 = call %struct._GtkWidget* @gimp_frame_new(i8* %76)
  store %struct._GtkWidget* %call100, %struct._GtkWidget** %frame, align 8
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %78 = bitcast %struct._GtkWidget* %77 to %struct._GTypeInstance*
  %call101 = call i64 @gtk_container_get_type() #6
  %call102 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call101)
  %79 = bitcast %struct._GTypeInstance* %call102 to %struct._GtkContainer*
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %79, %struct._GtkWidget* %80)
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %81)
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  store %struct._GtkWidget* %82, %struct._GtkWidget** %retval
  br label %return

if.end.103:                                       ; preds = %while.end
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  store %struct._GtkWidget* %83, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.103, %if.then.99
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %84
}

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

declare %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList*, i8*) #1

declare %struct._GtkWidget* @gtk_radio_button_new(%struct._GSList*) #1

declare %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_button_get_type() #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_radio_group_new2(i32 %in_frame, i8* %frame_title, void ()* %radio_button_callback, i8* %callback_data, i8* %initial, ...) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %in_frame.addr = alloca i32, align 4
  %frame_title.addr = alloca i8*, align 8
  %radio_button_callback.addr = alloca void ()*, align 8
  %callback_data.addr = alloca i8*, align 8
  %initial.addr = alloca i8*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %group = alloca %struct._GSList*, align 8
  %label = alloca i8*, align 8
  %item_data = alloca i8*, align 8
  %widget_ptr = alloca %struct._GtkWidget**, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %frame = alloca %struct._GtkWidget*, align 8
  store i32 %in_frame, i32* %in_frame.addr, align 4
  store i8* %frame_title, i8** %frame_title.addr, align 8
  store void ()* %radio_button_callback, void ()** %radio_button_callback.addr, align 8
  store i8* %callback_data, i8** %callback_data.addr, align 8
  store i8* %initial, i8** %initial.addr, align 8
  %call = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 2)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %vbox, align 8
  store %struct._GSList* null, %struct._GSList** %group, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %entry
  %0 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 3
  %reg_save_area = load i8*, i8** %0
  %1 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %2 = bitcast i8* %1 to i8**
  %3 = add i32 %gp_offset, 8
  store i32 %3, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %entry
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %4 = bitcast i8* %overflow_arg_area to i8**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %2, %vaarg.in_reg ], [ %4, %vaarg.in_mem ]
  %5 = load i8*, i8** %vaarg.addr
  store i8* %5, i8** %label, align 8
  br label %while.cond

while.cond:                                       ; preds = %vaarg.end.58, %vaarg.end
  %6 = load i8*, i8** %label, align 8
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p4 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay3, i32 0, i32 0
  %gp_offset5 = load i32, i32* %gp_offset_p4
  %fits_in_gp6 = icmp ule i32 %gp_offset5, 40
  br i1 %fits_in_gp6, label %vaarg.in_reg.7, label %vaarg.in_mem.9

vaarg.in_reg.7:                                   ; preds = %while.body
  %7 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay3, i32 0, i32 3
  %reg_save_area8 = load i8*, i8** %7
  %8 = getelementptr i8, i8* %reg_save_area8, i32 %gp_offset5
  %9 = bitcast i8* %8 to i8**
  %10 = add i32 %gp_offset5, 8
  store i32 %10, i32* %gp_offset_p4
  br label %vaarg.end.13

vaarg.in_mem.9:                                   ; preds = %while.body
  %overflow_arg_area_p10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay3, i32 0, i32 2
  %overflow_arg_area11 = load i8*, i8** %overflow_arg_area_p10
  %11 = bitcast i8* %overflow_arg_area11 to i8**
  %overflow_arg_area.next12 = getelementptr i8, i8* %overflow_arg_area11, i32 8
  store i8* %overflow_arg_area.next12, i8** %overflow_arg_area_p10
  br label %vaarg.end.13

vaarg.end.13:                                     ; preds = %vaarg.in_mem.9, %vaarg.in_reg.7
  %vaarg.addr14 = phi i8** [ %9, %vaarg.in_reg.7 ], [ %11, %vaarg.in_mem.9 ]
  %12 = load i8*, i8** %vaarg.addr14
  store i8* %12, i8** %item_data, align 8
  %arraydecay15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p16 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay15, i32 0, i32 0
  %gp_offset17 = load i32, i32* %gp_offset_p16
  %fits_in_gp18 = icmp ule i32 %gp_offset17, 40
  br i1 %fits_in_gp18, label %vaarg.in_reg.19, label %vaarg.in_mem.21

vaarg.in_reg.19:                                  ; preds = %vaarg.end.13
  %13 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay15, i32 0, i32 3
  %reg_save_area20 = load i8*, i8** %13
  %14 = getelementptr i8, i8* %reg_save_area20, i32 %gp_offset17
  %15 = bitcast i8* %14 to %struct._GtkWidget***
  %16 = add i32 %gp_offset17, 8
  store i32 %16, i32* %gp_offset_p16
  br label %vaarg.end.25

vaarg.in_mem.21:                                  ; preds = %vaarg.end.13
  %overflow_arg_area_p22 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay15, i32 0, i32 2
  %overflow_arg_area23 = load i8*, i8** %overflow_arg_area_p22
  %17 = bitcast i8* %overflow_arg_area23 to %struct._GtkWidget***
  %overflow_arg_area.next24 = getelementptr i8, i8* %overflow_arg_area23, i32 8
  store i8* %overflow_arg_area.next24, i8** %overflow_arg_area_p22
  br label %vaarg.end.25

vaarg.end.25:                                     ; preds = %vaarg.in_mem.21, %vaarg.in_reg.19
  %vaarg.addr26 = phi %struct._GtkWidget*** [ %15, %vaarg.in_reg.19 ], [ %17, %vaarg.in_mem.21 ]
  %18 = load %struct._GtkWidget**, %struct._GtkWidget*** %vaarg.addr26
  store %struct._GtkWidget** %18, %struct._GtkWidget*** %widget_ptr, align 8
  %19 = load i8*, i8** %label, align 8
  %cmp = icmp ne i8* %19, inttoptr (i64 1 to i8*)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %vaarg.end.25
  %20 = load %struct._GSList*, %struct._GSList** %group, align 8
  %21 = load i8*, i8** %label, align 8
  %call27 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList* %20, i8* %21)
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %button, align 8
  br label %if.end

if.else:                                          ; preds = %vaarg.end.25
  %22 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call28 = call %struct._GtkWidget* @gtk_radio_button_new(%struct._GSList* %22)
  store %struct._GtkWidget* %call28, %struct._GtkWidget** %button, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_radio_button_get_type() #6
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call29)
  %25 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkRadioButton*
  %call31 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %25)
  store %struct._GSList* %call31, %struct._GSList** %group, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_box_get_type() #6
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call32)
  %28 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkBox*
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %28, %struct._GtkWidget* %29, i32 0, i32 0, i32 0)
  %30 = load i8*, i8** %item_data, align 8
  %tobool34 = icmp ne i8* %30, null
  br i1 %tobool34, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %if.end
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 80)
  %33 = bitcast %struct._GTypeInstance* %call36 to %struct._GObject*
  %34 = load i8*, i8** %item_data, align 8
  call void @g_object_set_data(%struct._GObject* %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* %34)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 80)
  %37 = bitcast %struct._GTypeInstance* %call37 to %struct._GObject*
  %38 = load i8*, i8** %item_data, align 8
  call void @g_object_set_data(%struct._GObject* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* %38)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.35, %if.end
  %39 = load %struct._GtkWidget**, %struct._GtkWidget*** %widget_ptr, align 8
  %tobool39 = icmp ne %struct._GtkWidget** %39, null
  br i1 %tobool39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.38
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %41 = load %struct._GtkWidget**, %struct._GtkWidget*** %widget_ptr, align 8
  store %struct._GtkWidget* %40, %struct._GtkWidget** %41, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %if.end.38
  %42 = load i8*, i8** %initial.addr, align 8
  %43 = load i8*, i8** %item_data, align 8
  %cmp42 = icmp eq i8* %42, %43
  br i1 %cmp42, label %if.then.43, label %if.end.46

if.then.43:                                       ; preds = %if.end.41
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_toggle_button_get_type() #6
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call44)
  %46 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %46, i32 1)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.43, %if.end.41
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %48 = bitcast %struct._GtkWidget* %47 to i8*
  %49 = load void ()*, void ()** %radio_button_callback.addr, align 8
  %50 = load i8*, i8** %callback_data.addr, align 8
  %call47 = call i64 @g_signal_connect_data(i8* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), void ()* %49, i8* %50, void (i8*, %struct._GClosure*)* null, i32 0)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %51)
  %arraydecay48 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p49 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay48, i32 0, i32 0
  %gp_offset50 = load i32, i32* %gp_offset_p49
  %fits_in_gp51 = icmp ule i32 %gp_offset50, 40
  br i1 %fits_in_gp51, label %vaarg.in_reg.52, label %vaarg.in_mem.54

vaarg.in_reg.52:                                  ; preds = %if.end.46
  %52 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay48, i32 0, i32 3
  %reg_save_area53 = load i8*, i8** %52
  %53 = getelementptr i8, i8* %reg_save_area53, i32 %gp_offset50
  %54 = bitcast i8* %53 to i8**
  %55 = add i32 %gp_offset50, 8
  store i32 %55, i32* %gp_offset_p49
  br label %vaarg.end.58

vaarg.in_mem.54:                                  ; preds = %if.end.46
  %overflow_arg_area_p55 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay48, i32 0, i32 2
  %overflow_arg_area56 = load i8*, i8** %overflow_arg_area_p55
  %56 = bitcast i8* %overflow_arg_area56 to i8**
  %overflow_arg_area.next57 = getelementptr i8, i8* %overflow_arg_area56, i32 8
  store i8* %overflow_arg_area.next57, i8** %overflow_arg_area_p55
  br label %vaarg.end.58

vaarg.end.58:                                     ; preds = %vaarg.in_mem.54, %vaarg.in_reg.52
  %vaarg.addr59 = phi i8** [ %54, %vaarg.in_reg.52 ], [ %56, %vaarg.in_mem.54 ]
  %57 = load i8*, i8** %vaarg.addr59
  store i8* %57, i8** %label, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %arraydecay60 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay6061 = bitcast %struct.__va_list_tag* %arraydecay60 to i8*
  call void @llvm.va_end(i8* %arraydecay6061)
  %58 = load i32, i32* %in_frame.addr, align 4
  %tobool62 = icmp ne i32 %58, 0
  br i1 %tobool62, label %if.then.63, label %if.end.67

if.then.63:                                       ; preds = %while.end
  %59 = load i8*, i8** %frame_title.addr, align 8
  %call64 = call %struct._GtkWidget* @gimp_frame_new(i8* %59)
  store %struct._GtkWidget* %call64, %struct._GtkWidget** %frame, align 8
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call65 = call i64 @gtk_container_get_type() #6
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call65)
  %62 = bitcast %struct._GTypeInstance* %call66 to %struct._GtkContainer*
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %62, %struct._GtkWidget* %63)
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %64)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  store %struct._GtkWidget* %65, %struct._GtkWidget** %retval
  br label %return

if.end.67:                                        ; preds = %while.end
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  store %struct._GtkWidget* %66, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.67, %if.then.63
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %67
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_int_radio_group_new(i32 %in_frame, i8* %frame_title, void ()* %radio_button_callback, i8* %callback_data, i32 %initial, ...) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %in_frame.addr = alloca i32, align 4
  %frame_title.addr = alloca i8*, align 8
  %radio_button_callback.addr = alloca void ()*, align 8
  %callback_data.addr = alloca i8*, align 8
  %initial.addr = alloca i32, align 4
  %vbox = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %group = alloca %struct._GSList*, align 8
  %label = alloca i8*, align 8
  %item_data = alloca i32, align 4
  %item_ptr = alloca i8*, align 8
  %widget_ptr = alloca %struct._GtkWidget**, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %frame = alloca %struct._GtkWidget*, align 8
  store i32 %in_frame, i32* %in_frame.addr, align 4
  store i8* %frame_title, i8** %frame_title.addr, align 8
  store void ()* %radio_button_callback, void ()** %radio_button_callback.addr, align 8
  store i8* %callback_data, i8** %callback_data.addr, align 8
  store i32 %initial, i32* %initial.addr, align 4
  %call = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 2)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %vbox, align 8
  store %struct._GSList* null, %struct._GSList** %group, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %entry
  %0 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 3
  %reg_save_area = load i8*, i8** %0
  %1 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %2 = bitcast i8* %1 to i8**
  %3 = add i32 %gp_offset, 8
  store i32 %3, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %entry
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %4 = bitcast i8* %overflow_arg_area to i8**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %2, %vaarg.in_reg ], [ %4, %vaarg.in_mem ]
  %5 = load i8*, i8** %vaarg.addr
  store i8* %5, i8** %label, align 8
  br label %while.cond

while.cond:                                       ; preds = %vaarg.end.60, %vaarg.end
  %6 = load i8*, i8** %label, align 8
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p4 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay3, i32 0, i32 0
  %gp_offset5 = load i32, i32* %gp_offset_p4
  %fits_in_gp6 = icmp ule i32 %gp_offset5, 40
  br i1 %fits_in_gp6, label %vaarg.in_reg.7, label %vaarg.in_mem.9

vaarg.in_reg.7:                                   ; preds = %while.body
  %7 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay3, i32 0, i32 3
  %reg_save_area8 = load i8*, i8** %7
  %8 = getelementptr i8, i8* %reg_save_area8, i32 %gp_offset5
  %9 = bitcast i8* %8 to i32*
  %10 = add i32 %gp_offset5, 8
  store i32 %10, i32* %gp_offset_p4
  br label %vaarg.end.13

vaarg.in_mem.9:                                   ; preds = %while.body
  %overflow_arg_area_p10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay3, i32 0, i32 2
  %overflow_arg_area11 = load i8*, i8** %overflow_arg_area_p10
  %11 = bitcast i8* %overflow_arg_area11 to i32*
  %overflow_arg_area.next12 = getelementptr i8, i8* %overflow_arg_area11, i32 8
  store i8* %overflow_arg_area.next12, i8** %overflow_arg_area_p10
  br label %vaarg.end.13

vaarg.end.13:                                     ; preds = %vaarg.in_mem.9, %vaarg.in_reg.7
  %vaarg.addr14 = phi i32* [ %9, %vaarg.in_reg.7 ], [ %11, %vaarg.in_mem.9 ]
  %12 = load i32, i32* %vaarg.addr14
  store i32 %12, i32* %item_data, align 4
  %arraydecay15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p16 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay15, i32 0, i32 0
  %gp_offset17 = load i32, i32* %gp_offset_p16
  %fits_in_gp18 = icmp ule i32 %gp_offset17, 40
  br i1 %fits_in_gp18, label %vaarg.in_reg.19, label %vaarg.in_mem.21

vaarg.in_reg.19:                                  ; preds = %vaarg.end.13
  %13 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay15, i32 0, i32 3
  %reg_save_area20 = load i8*, i8** %13
  %14 = getelementptr i8, i8* %reg_save_area20, i32 %gp_offset17
  %15 = bitcast i8* %14 to %struct._GtkWidget***
  %16 = add i32 %gp_offset17, 8
  store i32 %16, i32* %gp_offset_p16
  br label %vaarg.end.25

vaarg.in_mem.21:                                  ; preds = %vaarg.end.13
  %overflow_arg_area_p22 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay15, i32 0, i32 2
  %overflow_arg_area23 = load i8*, i8** %overflow_arg_area_p22
  %17 = bitcast i8* %overflow_arg_area23 to %struct._GtkWidget***
  %overflow_arg_area.next24 = getelementptr i8, i8* %overflow_arg_area23, i32 8
  store i8* %overflow_arg_area.next24, i8** %overflow_arg_area_p22
  br label %vaarg.end.25

vaarg.end.25:                                     ; preds = %vaarg.in_mem.21, %vaarg.in_reg.19
  %vaarg.addr26 = phi %struct._GtkWidget*** [ %15, %vaarg.in_reg.19 ], [ %17, %vaarg.in_mem.21 ]
  %18 = load %struct._GtkWidget**, %struct._GtkWidget*** %vaarg.addr26
  store %struct._GtkWidget** %18, %struct._GtkWidget*** %widget_ptr, align 8
  %19 = load i32, i32* %item_data, align 4
  %conv = sext i32 %19 to i64
  %20 = inttoptr i64 %conv to i8*
  store i8* %20, i8** %item_ptr, align 8
  %21 = load i8*, i8** %label, align 8
  %cmp = icmp ne i8* %21, inttoptr (i64 1 to i8*)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %vaarg.end.25
  %22 = load %struct._GSList*, %struct._GSList** %group, align 8
  %23 = load i8*, i8** %label, align 8
  %call28 = call %struct._GtkWidget* @gtk_radio_button_new_with_mnemonic(%struct._GSList* %22, i8* %23)
  store %struct._GtkWidget* %call28, %struct._GtkWidget** %button, align 8
  br label %if.end

if.else:                                          ; preds = %vaarg.end.25
  %24 = load %struct._GSList*, %struct._GSList** %group, align 8
  %call29 = call %struct._GtkWidget* @gtk_radio_button_new(%struct._GSList* %24)
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %button, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_radio_button_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call30)
  %27 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkRadioButton*
  %call32 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %27)
  store %struct._GSList* %call32, %struct._GSList** %group, align 8
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_box_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call33)
  %30 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkBox*
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %30, %struct._GtkWidget* %31, i32 0, i32 0, i32 0)
  %32 = load i32, i32* %item_data, align 4
  %tobool35 = icmp ne i32 %32, 0
  br i1 %tobool35, label %if.then.36, label %if.end.39

if.then.36:                                       ; preds = %if.end
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 80)
  %35 = bitcast %struct._GTypeInstance* %call37 to %struct._GObject*
  %36 = load i8*, i8** %item_ptr, align 8
  call void @g_object_set_data(%struct._GObject* %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* %36)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 80)
  %39 = bitcast %struct._GTypeInstance* %call38 to %struct._GObject*
  %40 = load i8*, i8** %item_ptr, align 8
  call void @g_object_set_data(%struct._GObject* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* %40)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.36, %if.end
  %41 = load %struct._GtkWidget**, %struct._GtkWidget*** %widget_ptr, align 8
  %tobool40 = icmp ne %struct._GtkWidget** %41, null
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.39
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %43 = load %struct._GtkWidget**, %struct._GtkWidget*** %widget_ptr, align 8
  store %struct._GtkWidget* %42, %struct._GtkWidget** %43, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.end.39
  %44 = load i32, i32* %initial.addr, align 4
  %45 = load i32, i32* %item_data, align 4
  %cmp43 = icmp eq i32 %44, %45
  br i1 %cmp43, label %if.then.45, label %if.end.48

if.then.45:                                       ; preds = %if.end.42
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_toggle_button_get_type() #6
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call46)
  %48 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %48, i32 1)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.45, %if.end.42
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %50 = bitcast %struct._GtkWidget* %49 to i8*
  %51 = load void ()*, void ()** %radio_button_callback.addr, align 8
  %52 = load i8*, i8** %callback_data.addr, align 8
  %call49 = call i64 @g_signal_connect_data(i8* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), void ()* %51, i8* %52, void (i8*, %struct._GClosure*)* null, i32 0)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %53)
  %arraydecay50 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p51 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay50, i32 0, i32 0
  %gp_offset52 = load i32, i32* %gp_offset_p51
  %fits_in_gp53 = icmp ule i32 %gp_offset52, 40
  br i1 %fits_in_gp53, label %vaarg.in_reg.54, label %vaarg.in_mem.56

vaarg.in_reg.54:                                  ; preds = %if.end.48
  %54 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay50, i32 0, i32 3
  %reg_save_area55 = load i8*, i8** %54
  %55 = getelementptr i8, i8* %reg_save_area55, i32 %gp_offset52
  %56 = bitcast i8* %55 to i8**
  %57 = add i32 %gp_offset52, 8
  store i32 %57, i32* %gp_offset_p51
  br label %vaarg.end.60

vaarg.in_mem.56:                                  ; preds = %if.end.48
  %overflow_arg_area_p57 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay50, i32 0, i32 2
  %overflow_arg_area58 = load i8*, i8** %overflow_arg_area_p57
  %58 = bitcast i8* %overflow_arg_area58 to i8**
  %overflow_arg_area.next59 = getelementptr i8, i8* %overflow_arg_area58, i32 8
  store i8* %overflow_arg_area.next59, i8** %overflow_arg_area_p57
  br label %vaarg.end.60

vaarg.end.60:                                     ; preds = %vaarg.in_mem.56, %vaarg.in_reg.54
  %vaarg.addr61 = phi i8** [ %56, %vaarg.in_reg.54 ], [ %58, %vaarg.in_mem.56 ]
  %59 = load i8*, i8** %vaarg.addr61
  store i8* %59, i8** %label, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %arraydecay62 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay6263 = bitcast %struct.__va_list_tag* %arraydecay62 to i8*
  call void @llvm.va_end(i8* %arraydecay6263)
  %60 = load i32, i32* %in_frame.addr, align 4
  %tobool64 = icmp ne i32 %60, 0
  br i1 %tobool64, label %if.then.65, label %if.end.69

if.then.65:                                       ; preds = %while.end
  %61 = load i8*, i8** %frame_title.addr, align 8
  %call66 = call %struct._GtkWidget* @gimp_frame_new(i8* %61)
  store %struct._GtkWidget* %call66, %struct._GtkWidget** %frame, align 8
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %63 = bitcast %struct._GtkWidget* %62 to %struct._GTypeInstance*
  %call67 = call i64 @gtk_container_get_type() #6
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call67)
  %64 = bitcast %struct._GTypeInstance* %call68 to %struct._GtkContainer*
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %64, %struct._GtkWidget* %65)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %66)
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  store %struct._GtkWidget* %67, %struct._GtkWidget** %retval
  br label %return

if.end.69:                                        ; preds = %while.end
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  store %struct._GtkWidget* %68, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.69, %if.then.65
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %69
}

; Function Attrs: nounwind uwtable
define void @gimp_radio_group_set_active(%struct._GtkRadioButton* %radio_button, i8* %item_data) #0 {
entry:
  %radio_button.addr = alloca %struct._GtkRadioButton*, align 8
  %item_data.addr = alloca i8*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %group = alloca %struct._GSList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkRadioButton* %radio_button, %struct._GtkRadioButton** %radio_button.addr, align 8
  store i8* %item_data, i8** %item_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkRadioButton*, %struct._GtkRadioButton** %radio_button.addr, align 8
  %1 = bitcast %struct._GtkRadioButton* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_radio_button_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_radio_group_set_active, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i32 0, i32 0))
  br label %for.end

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkRadioButton*, %struct._GtkRadioButton** %radio_button.addr, align 8
  %call11 = call %struct._GSList* @gtk_radio_button_get_group(%struct._GtkRadioButton* %13)
  store %struct._GSList* %call11, %struct._GSList** %group, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %14 = load %struct._GSList*, %struct._GSList** %group, align 8
  %tobool12 = icmp ne %struct._GSList* %14, null
  br i1 %tobool12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct._GSList*, %struct._GSList** %group, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %15, i32 0, i32 0
  %16 = load i8*, i8** %data, align 8
  %17 = bitcast i8* %16 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_widget_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call13)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkWidget*
  store %struct._GtkWidget* %18, %struct._GtkWidget** %button, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 80)
  %21 = bitcast %struct._GTypeInstance* %call15 to %struct._GObject*
  %call16 = call i8* @g_object_get_data(%struct._GObject* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %22 = load i8*, i8** %item_data.addr, align 8
  %cmp17 = icmp eq i8* %call16, %22
  br i1 %cmp17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %for.body
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_toggle_button_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call19)
  %25 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %25, i32 1)
  br label %for.end

if.end.21:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %26 = load %struct._GSList*, %struct._GSList** %group, align 8
  %tobool22 = icmp ne %struct._GSList* %26, null
  br i1 %tobool22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %27 = load %struct._GSList*, %struct._GSList** %group, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %27, i32 0, i32 1
  %28 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %28, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %group, align 8
  br label %for.cond

for.end:                                          ; preds = %if.else.9, %if.then.18, %for.cond
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #3

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_int_radio_group_set_active(%struct._GtkRadioButton* %radio_button, i32 %item_data) #0 {
entry:
  %radio_button.addr = alloca %struct._GtkRadioButton*, align 8
  %item_data.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkRadioButton* %radio_button, %struct._GtkRadioButton** %radio_button.addr, align 8
  store i32 %item_data, i32* %item_data.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkRadioButton*, %struct._GtkRadioButton** %radio_button.addr, align 8
  %1 = bitcast %struct._GtkRadioButton* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_radio_button_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_int_radio_group_set_active, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkRadioButton*, %struct._GtkRadioButton** %radio_button.addr, align 8
  %14 = load i32, i32* %item_data.addr, align 4
  %conv = sext i32 %14 to i64
  %15 = inttoptr i64 %conv to i8*
  call void @gimp_radio_group_set_active(%struct._GtkRadioButton* %13, i8* %15)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adjustment, double %value, double %lower, double %upper, double %step_increment, double %page_increment, double %page_size, double %climb_rate, i32 %digits) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkObject**, align 8
  %value.addr = alloca double, align 8
  %lower.addr = alloca double, align 8
  %upper.addr = alloca double, align 8
  %step_increment.addr = alloca double, align 8
  %page_increment.addr = alloca double, align 8
  %page_size.addr = alloca double, align 8
  %climb_rate.addr = alloca double, align 8
  %digits.addr = alloca i32, align 4
  %spinbutton = alloca %struct._GtkWidget*, align 8
  store %struct._GtkObject** %adjustment, %struct._GtkObject*** %adjustment.addr, align 8
  store double %value, double* %value.addr, align 8
  store double %lower, double* %lower.addr, align 8
  store double %upper, double* %upper.addr, align 8
  store double %step_increment, double* %step_increment.addr, align 8
  store double %page_increment, double* %page_increment.addr, align 8
  store double %page_size, double* %page_size.addr, align 8
  store double %climb_rate, double* %climb_rate.addr, align 8
  store i32 %digits, i32* %digits.addr, align 4
  %0 = load double, double* %value.addr, align 8
  %1 = load double, double* %lower.addr, align 8
  %2 = load double, double* %upper.addr, align 8
  %3 = load double, double* %step_increment.addr, align 8
  %4 = load double, double* %page_increment.addr, align 8
  %call = call %struct._GtkObject* @gtk_adjustment_new(double %0, double %1, double %2, double %3, double %4, double 0.000000e+00)
  %5 = load %struct._GtkObject**, %struct._GtkObject*** %adjustment.addr, align 8
  store %struct._GtkObject* %call, %struct._GtkObject** %5, align 8
  %6 = load %struct._GtkObject**, %struct._GtkObject*** %adjustment.addr, align 8
  %7 = load %struct._GtkObject*, %struct._GtkObject** %6, align 8
  %8 = bitcast %struct._GtkObject* %7 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_adjustment_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call1)
  %9 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkAdjustment*
  %10 = load double, double* %climb_rate.addr, align 8
  %11 = load i32, i32* %digits.addr, align 4
  %call3 = call %struct._GtkWidget* @gtk_spin_button_new(%struct._GtkAdjustment* %9, double %10, i32 %11)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %spinbutton, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_spin_button_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call4)
  %14 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkSpinButton*
  call void @gtk_spin_button_set_numeric(%struct._GtkSpinButton* %14, i32 1)
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  ret %struct._GtkWidget* %15
}

declare %struct._GtkObject* @gtk_adjustment_new(double, double, double, double, double, double) #1

declare %struct._GtkWidget* @gtk_spin_button_new(%struct._GtkAdjustment*, double, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #3

declare void @gtk_spin_button_set_numeric(%struct._GtkSpinButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_spin_button_get_type() #3

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_random_seed_new(i32* %seed, i32* %random_seed) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %seed.addr = alloca i32*, align 8
  %random_seed.addr = alloca i32*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  store i32* %seed, i32** %seed.addr, align 8
  store i32* %random_seed, i32** %random_seed.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32*, i32** %seed.addr, align 8
  %cmp = icmp ne i32* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_random_seed_new, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i32*, i32** %random_seed.addr, align 8
  %cmp2 = icmp ne i32* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_random_seed_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %call = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 4)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %hbox, align 8
  %2 = load i32*, i32** %random_seed.addr, align 8
  %3 = load i32, i32* %2, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %do.end.6
  %call8 = call i32 @g_random_int()
  %4 = load i32*, i32** %seed.addr, align 8
  store i32 %call8, i32* %4, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %do.end.6
  %5 = load i32*, i32** %seed.addr, align 8
  %6 = load i32, i32* %5, align 4
  %conv = uitofp i32 %6 to double
  %call10 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %conv, double 0.000000e+00, double 0x41EFFFFFFFE00000, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 0)
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %spinbutton, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_box_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call11)
  %9 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkBox*
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %9, %struct._GtkWidget* %10, i32 0, i32 0, i32 0)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %11)
  %12 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %13 = bitcast %struct._GtkObject* %12 to i8*
  %14 = load i32*, i32** %seed.addr, align 8
  %15 = bitcast i32* %14 to i8*
  %call13 = call i64 @g_signal_connect_data(i8* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_uint_adjustment_update to void ()*), i8* %15, void (i8*, %struct._GClosure*)* null, i32 0)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call14 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.9, i32 0, i32 0)) #2
  call void @gimp_help_set_help_data(%struct._GtkWidget* %16, i8* %call14, i8* null)
  %call15 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0)) #2
  %call16 = call %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8* %call15)
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %button, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_bin_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call17)
  %19 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkBin*
  %call19 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %19)
  %20 = bitcast %struct._GtkWidget* %call19 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_misc_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call20)
  %21 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkMisc*
  call void @gtk_misc_set_padding(%struct._GtkMisc* %21, i32 2, i32 0)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_box_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call22)
  %24 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkBox*
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %24, %struct._GtkWidget* %25, i32 0, i32 0, i32 0)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %26)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %28 = bitcast %struct._GtkWidget* %27 to i8*
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %30 = bitcast %struct._GtkWidget* %29 to i8*
  %call24 = call i64 @g_signal_connect_data(i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_random_seed_update to void ()*), i8* %30, void (i8*, %struct._GClosure*)* null, i32 0)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call25 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.12, i32 0, i32 0)) #2
  call void @gimp_help_set_help_data(%struct._GtkWidget* %31, i8* %call25, i8* null)
  %call26 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0)) #2
  %call27 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call26)
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %toggle, align 8
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_toggle_button_get_type() #6
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call28)
  %34 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkToggleButton*
  %35 = load i32*, i32** %random_seed.addr, align 8
  %36 = load i32, i32* %35, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %34, i32 %36)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_box_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call30)
  %39 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkBox*
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %39, %struct._GtkWidget* %40, i32 0, i32 0, i32 0)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %41)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %43 = bitcast %struct._GtkWidget* %42 to i8*
  %44 = load i32*, i32** %random_seed.addr, align 8
  %45 = bitcast i32* %44 to i8*
  %call32 = call i64 @g_signal_connect_data(i8* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* %45, void (i8*, %struct._GClosure*)* null, i32 0)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %47 = bitcast %struct._GtkWidget* %46 to i8*
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %49 = bitcast %struct._GtkWidget* %48 to i8*
  %call33 = call i64 @g_signal_connect_data(i8* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_random_seed_update to void ()*), i8* %49, void (i8*, %struct._GClosure*)* null, i32 0)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 80)
  %52 = bitcast %struct._GTypeInstance* %call34 to %struct._GObject*
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %54 = bitcast %struct._GtkWidget* %53 to i8*
  call void @g_object_set_data(%struct._GObject* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8* %54)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 80)
  %57 = bitcast %struct._GTypeInstance* %call35 to %struct._GObject*
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %59 = bitcast %struct._GtkWidget* %58 to i8*
  call void @g_object_set_data(%struct._GObject* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* %59)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 80)
  %62 = bitcast %struct._GTypeInstance* %call36 to %struct._GObject*
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %64 = bitcast %struct._GtkWidget* %63 to i8*
  call void @g_object_set_data(%struct._GObject* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* %64)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %66 = bitcast %struct._GtkWidget* %65 to i8*
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %68 = bitcast %struct._GtkWidget* %67 to i8*
  %call37 = call %struct._GBinding* @g_object_bind_property(i8* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i8* %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i32 6)
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  %70 = bitcast %struct._GtkWidget* %69 to i8*
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %72 = bitcast %struct._GtkWidget* %71 to i8*
  %call38 = call %struct._GBinding* @g_object_bind_property(i8* %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i8* %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i32 6)
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  store %struct._GtkWidget* %73, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.else.4, %if.else
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %74
}

declare i32 @g_random_int() #1

; Function Attrs: nounwind uwtable
define void @gimp_uint_adjustment_update(%struct._GtkAdjustment* %adjustment, i8* %data) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %data.addr = alloca i8*, align 8
  %val = alloca i32*, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to i32*
  store i32* %1, i32** %val, align 8
  %2 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %2)
  %add = fadd double %call, 5.000000e-01
  %conv = fptoui double %add to i32
  %3 = load i32*, i32** %val, align 8
  store i32 %conv, i32* %3, align 4
  ret void
}

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #5

declare %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8*) #1

declare void @gtk_misc_set_padding(%struct._GtkMisc*, i32, i32) #1

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @gimp_random_seed_update(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GtkWidget*
  store %struct._GtkWidget* %1, %struct._GtkWidget** %spinbutton, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %3, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_toggle_button_get_type() #6
  store i64 %call, i64* %__t, align 8
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %4, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %entry
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %6, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %8, i32 0, i32 0
  %9 = load i64, i64* %g_type, align 8
  %10 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %9, %10
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %12 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %11, i64 %12) #7
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %13 = load i32, i32* %__r, align 4
  store i32 %13, i32* %tmp
  %14 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %14, 0
  br i1 %tobool7, label %lor.lhs.false, label %if.then.12

lor.lhs.false:                                    ; preds = %if.end.6
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_toggle_button_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call8)
  %17 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkToggleButton*
  %call10 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %17)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %lor.lhs.false, %if.end.6
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_spin_button_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call13)
  %20 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkSpinButton*
  %call15 = call i32 @g_random_int()
  %conv = uitofp i32 %call15 to double
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %20, double %conv)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %lor.lhs.false
  ret void
}

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_toggle_button_update(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %toggle_val = alloca i32*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to i32*
  store i32* %1, i32** %toggle_val, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %4)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i32*, i32** %toggle_val, align 8
  store i32 1, i32* %5, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i32*, i32** %toggle_val, align 8
  store i32 0, i32* %6, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_toggle_button_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call3)
  %9 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkToggleButton*
  call void @gimp_toggle_button_sensitive_update(%struct._GtkToggleButton* %9)
  ret void
}

declare %struct._GBinding* @g_object_bind_property(i8*, i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_coordinates_new(i32 %unit, i8* %unit_format, i32 %menu_show_pixels, i32 %menu_show_percent, i32 %spinbutton_width, i32 %update_policy, i32 %chainbutton_active, i32 %chain_constrains_ratio, i8* %xlabel, double %x, double %xres, double %lower_boundary_x, double %upper_boundary_x, double %xsize_0, double %xsize_100, i8* %ylabel, double %y, double %yres, double %lower_boundary_y, double %upper_boundary_y, double %ysize_0, double %ysize_100) #0 {
entry:
  %unit.addr = alloca i32, align 4
  %unit_format.addr = alloca i8*, align 8
  %menu_show_pixels.addr = alloca i32, align 4
  %menu_show_percent.addr = alloca i32, align 4
  %spinbutton_width.addr = alloca i32, align 4
  %update_policy.addr = alloca i32, align 4
  %chainbutton_active.addr = alloca i32, align 4
  %chain_constrains_ratio.addr = alloca i32, align 4
  %xlabel.addr = alloca i8*, align 8
  %x.addr = alloca double, align 8
  %xres.addr = alloca double, align 8
  %lower_boundary_x.addr = alloca double, align 8
  %upper_boundary_x.addr = alloca double, align 8
  %xsize_0.addr = alloca double, align 8
  %xsize_100.addr = alloca double, align 8
  %ylabel.addr = alloca i8*, align 8
  %y.addr = alloca double, align 8
  %yres.addr = alloca double, align 8
  %lower_boundary_y.addr = alloca double, align 8
  %upper_boundary_y.addr = alloca double, align 8
  %ysize_0.addr = alloca double, align 8
  %ysize_100.addr = alloca double, align 8
  %data = alloca %struct.GimpCoordinatesData*, align 8
  %adjustment = alloca %struct._GtkObject*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  %sizeentry = alloca %struct._GtkWidget*, align 8
  %chainbutton = alloca %struct._GtkWidget*, align 8
  store i32 %unit, i32* %unit.addr, align 4
  store i8* %unit_format, i8** %unit_format.addr, align 8
  store i32 %menu_show_pixels, i32* %menu_show_pixels.addr, align 4
  store i32 %menu_show_percent, i32* %menu_show_percent.addr, align 4
  store i32 %spinbutton_width, i32* %spinbutton_width.addr, align 4
  store i32 %update_policy, i32* %update_policy.addr, align 4
  store i32 %chainbutton_active, i32* %chainbutton_active.addr, align 4
  store i32 %chain_constrains_ratio, i32* %chain_constrains_ratio.addr, align 4
  store i8* %xlabel, i8** %xlabel.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %xres, double* %xres.addr, align 8
  store double %lower_boundary_x, double* %lower_boundary_x.addr, align 8
  store double %upper_boundary_x, double* %upper_boundary_x.addr, align 8
  store double %xsize_0, double* %xsize_0.addr, align 8
  store double %xsize_100, double* %xsize_100.addr, align 8
  store i8* %ylabel, i8** %ylabel.addr, align 8
  store double %y, double* %y.addr, align 8
  store double %yres, double* %yres.addr, align 8
  store double %lower_boundary_y, double* %lower_boundary_y.addr, align 8
  store double %upper_boundary_y, double* %upper_boundary_y.addr, align 8
  store double %ysize_0, double* %ysize_0.addr, align 8
  store double %ysize_100, double* %ysize_100.addr, align 8
  %call = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adjustment, double 1.000000e+00, double 0.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 1.000000e+00, i32 2)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %spinbutton, align 8
  %0 = load i32, i32* %spinbutton_width.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %spinbutton_width.addr, align 4
  %cmp1 = icmp slt i32 %1, 17
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_entry_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkEntry*
  %5 = load i32, i32* %spinbutton_width.addr, align 4
  call void @gtk_entry_set_width_chars(%struct._GtkEntry* %4, i32 %5)
  br label %if.end

if.else:                                          ; preds = %if.then
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %7 = load i32, i32* %spinbutton_width.addr, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %6, i32 %7, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %8 = load i32, i32* %unit.addr, align 4
  %9 = load i8*, i8** %unit_format.addr, align 8
  %10 = load i32, i32* %menu_show_pixels.addr, align 4
  %11 = load i32, i32* %menu_show_percent.addr, align 4
  %12 = load i32, i32* %spinbutton_width.addr, align 4
  %13 = load i32, i32* %update_policy.addr, align 4
  %call6 = call %struct._GtkWidget* @gimp_size_entry_new(i32 1, i32 %8, i8* %9, i32 %10, i32 %11, i32 0, i32 %12, i32 %13)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %sizeentry, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_table_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call7)
  %16 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %16, i32 0, i32 4)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_table_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call9)
  %19 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %19, i32 2, i32 4)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_size_entry_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call11)
  %22 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpSizeEntry*
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_spin_button_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call13)
  %25 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkSpinButton*
  call void @gimp_size_entry_add_field(%struct._GimpSizeEntry* %22, %struct._GtkSpinButton* %25, %struct._GtkSpinButton* null)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_table_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call15)
  %28 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkTable*
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_table_attach_defaults(%struct._GtkTable* %28, %struct._GtkWidget* %29, i32 1, i32 2, i32 0, i32 1)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %30)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_size_entry_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call17)
  %33 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpSizeEntry*
  %34 = load i32, i32* %update_policy.addr, align 4
  %cmp19 = icmp eq i32 %34, 2
  br i1 %cmp19, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.5
  %35 = load i32, i32* %menu_show_pixels.addr, align 4
  %cmp20 = icmp eq i32 %35, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.5
  %36 = phi i1 [ true, %if.end.5 ], [ %cmp20, %lor.rhs ]
  %cond = select i1 %36, i32 1, i32 0
  call void @gimp_size_entry_set_unit(%struct._GimpSizeEntry* %33, i32 %cond)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_size_entry_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call21)
  %39 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpSizeEntry*
  %40 = load double, double* %xres.addr, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %39, i32 0, double %40, i32 1)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_size_entry_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call23)
  %43 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpSizeEntry*
  %44 = load double, double* %yres.addr, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %43, i32 1, double %44, i32 1)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_size_entry_get_type() #6
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call25)
  %47 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpSizeEntry*
  %48 = load double, double* %lower_boundary_x.addr, align 8
  %49 = load double, double* %upper_boundary_x.addr, align 8
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %47, i32 0, double %48, double %49)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_size_entry_get_type() #6
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call27)
  %52 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpSizeEntry*
  %53 = load double, double* %lower_boundary_y.addr, align 8
  %54 = load double, double* %upper_boundary_y.addr, align 8
  call void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry* %52, i32 1, double %53, double %54)
  %55 = load i32, i32* %menu_show_percent.addr, align 4
  %tobool = icmp ne i32 %55, 0
  br i1 %tobool, label %if.then.29, label %if.end.34

if.then.29:                                       ; preds = %lor.end
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_size_entry_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call30)
  %58 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpSizeEntry*
  %59 = load double, double* %xsize_0.addr, align 8
  %60 = load double, double* %xsize_100.addr, align 8
  call void @gimp_size_entry_set_size(%struct._GimpSizeEntry* %58, i32 0, double %59, double %60)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  %62 = bitcast %struct._GtkWidget* %61 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_size_entry_get_type() #6
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call32)
  %63 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpSizeEntry*
  %64 = load double, double* %ysize_0.addr, align 8
  %65 = load double, double* %ysize_100.addr, align 8
  call void @gimp_size_entry_set_size(%struct._GimpSizeEntry* %63, i32 1, double %64, double %65)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.29, %lor.end
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_size_entry_get_type() #6
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call35)
  %68 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpSizeEntry*
  %69 = load double, double* %x.addr, align 8
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %68, i32 0, double %69)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  %71 = bitcast %struct._GtkWidget* %70 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_size_entry_get_type() #6
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call37)
  %72 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpSizeEntry*
  %73 = load double, double* %y.addr, align 8
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %72, i32 1, double %73)
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  %75 = bitcast %struct._GtkWidget* %74 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_size_entry_get_type() #6
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call39)
  %76 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpSizeEntry*
  %77 = load i8*, i8** %xlabel.addr, align 8
  %call41 = call %struct._GtkWidget* @gimp_size_entry_attach_label(%struct._GimpSizeEntry* %76, i8* %77, i32 0, i32 0, float 0.000000e+00)
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_size_entry_get_type() #6
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call42)
  %80 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpSizeEntry*
  %81 = load i8*, i8** %ylabel.addr, align 8
  %call44 = call %struct._GtkWidget* @gimp_size_entry_attach_label(%struct._GimpSizeEntry* %80, i8* %81, i32 1, i32 0, float 0.000000e+00)
  %call45 = call %struct._GtkWidget* @gimp_chain_button_new(i32 3)
  store %struct._GtkWidget* %call45, %struct._GtkWidget** %chainbutton, align 8
  %82 = load i32, i32* %chainbutton_active.addr, align 4
  %tobool46 = icmp ne i32 %82, 0
  br i1 %tobool46, label %if.then.47, label %if.end.50

if.then.47:                                       ; preds = %if.end.34
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %chainbutton, align 8
  %84 = bitcast %struct._GtkWidget* %83 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_chain_button_get_type() #6
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call48)
  %85 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpChainButton*
  call void @gimp_chain_button_set_active(%struct._GimpChainButton* %85, i32 1)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.47, %if.end.34
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  %87 = bitcast %struct._GtkWidget* %86 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_table_get_type() #6
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call51)
  %88 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkTable*
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %chainbutton, align 8
  call void @gtk_table_attach(%struct._GtkTable* %88, %struct._GtkWidget* %89, i32 2, i32 3, i32 0, i32 2, i32 6, i32 5, i32 0, i32 0)
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %chainbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %90)
  %call53 = call noalias i8* @g_slice_alloc(i64 48)
  %91 = bitcast i8* %call53 to %struct.GimpCoordinatesData*
  store %struct.GimpCoordinatesData* %91, %struct.GimpCoordinatesData** %data, align 8
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %chainbutton, align 8
  %93 = bitcast %struct._GtkWidget* %92 to %struct._GTypeInstance*
  %call54 = call i64 @gimp_chain_button_get_type() #6
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 %call54)
  %94 = bitcast %struct._GTypeInstance* %call55 to %struct._GimpChainButton*
  %95 = load %struct.GimpCoordinatesData*, %struct.GimpCoordinatesData** %data, align 8
  %chainbutton56 = getelementptr inbounds %struct.GimpCoordinatesData, %struct.GimpCoordinatesData* %95, i32 0, i32 0
  store %struct._GimpChainButton* %94, %struct._GimpChainButton** %chainbutton56, align 8
  %96 = load i32, i32* %chain_constrains_ratio.addr, align 4
  %97 = load %struct.GimpCoordinatesData*, %struct.GimpCoordinatesData** %data, align 8
  %chain_constrains_ratio57 = getelementptr inbounds %struct.GimpCoordinatesData, %struct.GimpCoordinatesData* %97, i32 0, i32 1
  store i32 %96, i32* %chain_constrains_ratio57, align 4
  %98 = load double, double* %x.addr, align 8
  %99 = load %struct.GimpCoordinatesData*, %struct.GimpCoordinatesData** %data, align 8
  %orig_x = getelementptr inbounds %struct.GimpCoordinatesData, %struct.GimpCoordinatesData* %99, i32 0, i32 2
  store double %98, double* %orig_x, align 8
  %100 = load double, double* %y.addr, align 8
  %101 = load %struct.GimpCoordinatesData*, %struct.GimpCoordinatesData** %data, align 8
  %orig_y = getelementptr inbounds %struct.GimpCoordinatesData, %struct.GimpCoordinatesData* %101, i32 0, i32 3
  store double %100, double* %orig_y, align 8
  %102 = load double, double* %x.addr, align 8
  %103 = load %struct.GimpCoordinatesData*, %struct.GimpCoordinatesData** %data, align 8
  %last_x = getelementptr inbounds %struct.GimpCoordinatesData, %struct.GimpCoordinatesData* %103, i32 0, i32 4
  store double %102, double* %last_x, align 8
  %104 = load double, double* %y.addr, align 8
  %105 = load %struct.GimpCoordinatesData*, %struct.GimpCoordinatesData** %data, align 8
  %last_y = getelementptr inbounds %struct.GimpCoordinatesData, %struct.GimpCoordinatesData* %105, i32 0, i32 5
  store double %104, double* %last_y, align 8
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  %107 = bitcast %struct._GtkWidget* %106 to %struct._GTypeInstance*
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %107, i64 80)
  %108 = bitcast %struct._GTypeInstance* %call58 to %struct._GObject*
  %109 = load %struct.GimpCoordinatesData*, %struct.GimpCoordinatesData** %data, align 8
  %110 = bitcast %struct.GimpCoordinatesData* %109 to i8*
  call void @g_object_set_data_full(%struct._GObject* %108, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), i8* %110, void (i8*)* bitcast (void (%struct.GimpCoordinatesData*)* @gimp_coordinates_data_free to void (i8*)*))
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  %112 = bitcast %struct._GtkWidget* %111 to i8*
  %113 = load %struct.GimpCoordinatesData*, %struct.GimpCoordinatesData** %data, align 8
  %114 = bitcast %struct.GimpCoordinatesData* %113 to i8*
  %call59 = call i64 @g_signal_connect_data(i8* %112, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.GimpCoordinatesData*)* @gimp_coordinates_callback to void ()*), i8* %114, void (i8*, %struct._GClosure*)* null, i32 0)
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  %116 = bitcast %struct._GtkWidget* %115 to %struct._GTypeInstance*
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %116, i64 80)
  %117 = bitcast %struct._GTypeInstance* %call60 to %struct._GObject*
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %chainbutton, align 8
  %119 = bitcast %struct._GtkWidget* %118 to i8*
  call void @g_object_set_data(%struct._GObject* %117, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), i8* %119)
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %chainbutton, align 8
  %121 = bitcast %struct._GtkWidget* %120 to i8*
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  %123 = bitcast %struct._GtkWidget* %122 to i8*
  %call61 = call i64 @g_signal_connect_data(i8* %121, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (void (%struct._GimpChainButton*, %struct._GimpSizeEntry*)* @gimp_coordinates_chainbutton_toggled to void ()*), i8* %123, void (i8*, %struct._GClosure*)* null, i32 0)
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %sizeentry, align 8
  ret %struct._GtkWidget* %124
}

declare void @gtk_entry_set_width_chars(%struct._GtkEntry*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #3

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare %struct._GtkWidget* @gimp_size_entry_new(i32, i32, i8*, i32, i32, i32, i32, i32) #1

declare void @gtk_table_set_col_spacing(%struct._GtkTable*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gimp_size_entry_add_field(%struct._GimpSizeEntry*, %struct._GtkSpinButton*, %struct._GtkSpinButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_size_entry_get_type() #3

declare void @gtk_table_attach_defaults(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32) #1

declare void @gimp_size_entry_set_unit(%struct._GimpSizeEntry*, i32) #1

declare void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry*, i32, double, i32) #1

declare void @gimp_size_entry_set_refval_boundaries(%struct._GimpSizeEntry*, i32, double, double) #1

declare void @gimp_size_entry_set_size(%struct._GimpSizeEntry*, i32, double, double) #1

declare void @gimp_size_entry_set_refval(%struct._GimpSizeEntry*, i32, double) #1

declare %struct._GtkWidget* @gimp_size_entry_attach_label(%struct._GimpSizeEntry*, i8*, i32, i32, float) #1

declare %struct._GtkWidget* @gimp_chain_button_new(i32) #1

declare void @gimp_chain_button_set_active(%struct._GimpChainButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_chain_button_get_type() #3

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare noalias i8* @g_slice_alloc(i64) #1

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_coordinates_data_free(%struct.GimpCoordinatesData* %data) #0 {
entry:
  %data.addr = alloca %struct.GimpCoordinatesData*, align 8
  store %struct.GimpCoordinatesData* %data, %struct.GimpCoordinatesData** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.GimpCoordinatesData*, %struct.GimpCoordinatesData** %data.addr, align 8
  %1 = bitcast %struct.GimpCoordinatesData* %0 to i8*
  call void @g_slice_free1(i64 48, i8* %1)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_coordinates_callback(%struct._GtkWidget* %widget, %struct.GimpCoordinatesData* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca %struct.GimpCoordinatesData*, align 8
  %new_x = alloca double, align 8
  %new_y = alloca double, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.GimpCoordinatesData* %data, %struct.GimpCoordinatesData** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_size_entry_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSizeEntry*
  %call2 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %2, i32 0)
  store double %call2, double* %new_x, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_size_entry_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpSizeEntry*
  %call5 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %5, i32 1)
  store double %call5, double* %new_y, align 8
  %6 = load %struct.GimpCoordinatesData*, %struct.GimpCoordinatesData** %data.addr, align 8
  %chainbutton = getelementptr inbounds %struct.GimpCoordinatesData, %struct.GimpCoordinatesData* %6, i32 0, i32 0
  %7 = load %struct._GimpChainButton*, %struct._GimpChainButton** %chainbutton, align 8
  %call6 = call i32 @gimp_chain_button_get_active(%struct._GimpChainButton* %7)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then, label %if.else.74

if.then:                                          ; preds = %entry
  %8 = load %struct.GimpCoordinatesData*, %struct.GimpCoordinatesData** %data.addr, align 8
  %chain_constrains_ratio = getelementptr inbounds %struct.GimpCoordinatesData, %struct.GimpCoordinatesData* %8, i32 0, i32 1
  %9 = load i32, i32* %chain_constrains_ratio, align 4
  %tobool7 = icmp ne i32 %9, 0
  br i1 %tobool7, label %if.then.8, label %if.else.47

if.then.8:                                        ; preds = %if.then
  %10 = load %struct.GimpCoordinatesData*, %struct.GimpCoordinatesData** %data.addr, align 8
  %orig_x = getelementptr inbounds %struct.GimpCoordinatesData, %struct.GimpCoordinatesData* %10, i32 0, i32 2
  %11 = load double, double* %orig_x, align 8
  %cmp = fcmp une double %11, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end.46

land.lhs.true:                                    ; preds = %if.then.8
  %12 = load %struct.GimpCoordinatesData*, %struct.GimpCoordinatesData** %data.addr, align 8
  %orig_y = getelementptr inbounds %struct.GimpCoordinatesData, %struct.GimpCoordinatesData* %12, i32 0, i32 3
  %13 = load double, double* %orig_y, align 8
  %cmp9 = fcmp une double %13, 0.000000e+00
  br i1 %cmp9, label %if.then.10, label %if.end.46

if.then.10:                                       ; preds = %land.lhs.true
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %15 = bitcast %struct._GtkWidget* %14 to i8*
  %16 = load %struct.GimpCoordinatesData*, %struct.GimpCoordinatesData** %data.addr, align 8
  %17 = bitcast %struct.GimpCoordinatesData* %16 to i8*
  %call11 = call i32 @g_signal_handlers_block_matched(i8* %15, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct.GimpCoordinatesData*)* @gimp_coordinates_callback to i8*), i8* %17)
  %18 = load double, double* %new_x, align 8
  %add = fadd double %18, 5.000000e-01
  %conv = fptosi double %add to i32
  %19 = load %struct.GimpCoordinatesData*, %struct.GimpCoordinatesData** %data.addr, align 8
  %last_x = getelementptr inbounds %struct.GimpCoordinatesData, %struct.GimpCoordinatesData* %19, i32 0, i32 4
  %20 = load double, double* %last_x, align 8
  %add12 = fadd double %20, 5.000000e-01
  %conv13 = fptosi double %add12 to i32
  %cmp14 = icmp ne i32 %conv, %conv13
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.then.10
  %21 = load double, double* %new_x, align 8
  %22 = load %struct.GimpCoordinatesData*, %struct.GimpCoordinatesData** %data.addr, align 8
  %last_x17 = getelementptr inbounds %struct.GimpCoordinatesData, %struct.GimpCoordinatesData* %22, i32 0, i32 4
  store double %21, double* %last_x17, align 8
  %23 = load double, double* %new_x, align 8
  %24 = load %struct.GimpCoordinatesData*, %struct.GimpCoordinatesData** %data.addr, align 8
  %orig_y18 = getelementptr inbounds %struct.GimpCoordinatesData, %struct.GimpCoordinatesData* %24, i32 0, i32 3
  %25 = load double, double* %orig_y18, align 8
  %mul = fmul double %23, %25
  %26 = load %struct.GimpCoordinatesData*, %struct.GimpCoordinatesData** %data.addr, align 8
  %orig_x19 = getelementptr inbounds %struct.GimpCoordinatesData, %struct.GimpCoordinatesData* %26, i32 0, i32 2
  %27 = load double, double* %orig_x19, align 8
  %div = fdiv double %mul, %27
  store double %div, double* %new_y, align 8
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_size_entry_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call20)
  %30 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpSizeEntry*
  %31 = load double, double* %new_y, align 8
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %30, i32 1, double %31)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_size_entry_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call22)
  %34 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpSizeEntry*
  %call24 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %34, i32 1)
  %35 = load %struct.GimpCoordinatesData*, %struct.GimpCoordinatesData** %data.addr, align 8
  %last_y = getelementptr inbounds %struct.GimpCoordinatesData, %struct.GimpCoordinatesData* %35, i32 0, i32 5
  store double %call24, double* %last_y, align 8
  br label %if.end.44

if.else:                                          ; preds = %if.then.10
  %36 = load double, double* %new_y, align 8
  %add25 = fadd double %36, 5.000000e-01
  %conv26 = fptosi double %add25 to i32
  %37 = load %struct.GimpCoordinatesData*, %struct.GimpCoordinatesData** %data.addr, align 8
  %last_y27 = getelementptr inbounds %struct.GimpCoordinatesData, %struct.GimpCoordinatesData* %37, i32 0, i32 5
  %38 = load double, double* %last_y27, align 8
  %add28 = fadd double %38, 5.000000e-01
  %conv29 = fptosi double %add28 to i32
  %cmp30 = icmp ne i32 %conv26, %conv29
  br i1 %cmp30, label %if.then.32, label %if.end

if.then.32:                                       ; preds = %if.else
  %39 = load double, double* %new_y, align 8
  %40 = load %struct.GimpCoordinatesData*, %struct.GimpCoordinatesData** %data.addr, align 8
  %last_y33 = getelementptr inbounds %struct.GimpCoordinatesData, %struct.GimpCoordinatesData* %40, i32 0, i32 5
  store double %39, double* %last_y33, align 8
  %41 = load double, double* %new_y, align 8
  %42 = load %struct.GimpCoordinatesData*, %struct.GimpCoordinatesData** %data.addr, align 8
  %orig_x34 = getelementptr inbounds %struct.GimpCoordinatesData, %struct.GimpCoordinatesData* %42, i32 0, i32 2
  %43 = load double, double* %orig_x34, align 8
  %mul35 = fmul double %41, %43
  %44 = load %struct.GimpCoordinatesData*, %struct.GimpCoordinatesData** %data.addr, align 8
  %orig_y36 = getelementptr inbounds %struct.GimpCoordinatesData, %struct.GimpCoordinatesData* %44, i32 0, i32 3
  %45 = load double, double* %orig_y36, align 8
  %div37 = fdiv double %mul35, %45
  store double %div37, double* %new_x, align 8
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call38 = call i64 @gimp_size_entry_get_type() #6
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call38)
  %48 = bitcast %struct._GTypeInstance* %call39 to %struct._GimpSizeEntry*
  %49 = load double, double* %new_x, align 8
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %48, i32 0, double %49)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_size_entry_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call40)
  %52 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpSizeEntry*
  %call42 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %52, i32 0)
  %53 = load %struct.GimpCoordinatesData*, %struct.GimpCoordinatesData** %data.addr, align 8
  %last_x43 = getelementptr inbounds %struct.GimpCoordinatesData, %struct.GimpCoordinatesData* %53, i32 0, i32 4
  store double %call42, double* %last_x43, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.32, %if.else
  br label %if.end.44

if.end.44:                                        ; preds = %if.end, %if.then.16
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %55 = bitcast %struct._GtkWidget* %54 to i8*
  %56 = load %struct.GimpCoordinatesData*, %struct.GimpCoordinatesData** %data.addr, align 8
  %57 = bitcast %struct.GimpCoordinatesData* %56 to i8*
  %call45 = call i32 @g_signal_handlers_unblock_matched(i8* %55, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkWidget*, %struct.GimpCoordinatesData*)* @gimp_coordinates_callback to i8*), i8* %57)
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.44, %land.lhs.true, %if.then.8
  br label %if.end.73

if.else.47:                                       ; preds = %if.then
  %58 = load double, double* %new_x, align 8
  %59 = load %struct.GimpCoordinatesData*, %struct.GimpCoordinatesData** %data.addr, align 8
  %last_x48 = getelementptr inbounds %struct.GimpCoordinatesData, %struct.GimpCoordinatesData* %59, i32 0, i32 4
  %60 = load double, double* %last_x48, align 8
  %cmp49 = fcmp une double %58, %60
  br i1 %cmp49, label %if.then.51, label %if.else.59

if.then.51:                                       ; preds = %if.else.47
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %62 = bitcast %struct._GtkWidget* %61 to %struct._GTypeInstance*
  %call52 = call i64 @gimp_size_entry_get_type() #6
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call52)
  %63 = bitcast %struct._GTypeInstance* %call53 to %struct._GimpSizeEntry*
  %64 = load double, double* %new_x, align 8
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %63, i32 1, double %64)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call54 = call i64 @gimp_size_entry_get_type() #6
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call54)
  %67 = bitcast %struct._GTypeInstance* %call55 to %struct._GimpSizeEntry*
  %call56 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %67, i32 1)
  %68 = load %struct.GimpCoordinatesData*, %struct.GimpCoordinatesData** %data.addr, align 8
  %last_x57 = getelementptr inbounds %struct.GimpCoordinatesData, %struct.GimpCoordinatesData* %68, i32 0, i32 4
  store double %call56, double* %last_x57, align 8
  %69 = load %struct.GimpCoordinatesData*, %struct.GimpCoordinatesData** %data.addr, align 8
  %last_y58 = getelementptr inbounds %struct.GimpCoordinatesData, %struct.GimpCoordinatesData* %69, i32 0, i32 5
  store double %call56, double* %last_y58, align 8
  br label %if.end.72

if.else.59:                                       ; preds = %if.else.47
  %70 = load double, double* %new_y, align 8
  %71 = load %struct.GimpCoordinatesData*, %struct.GimpCoordinatesData** %data.addr, align 8
  %last_y60 = getelementptr inbounds %struct.GimpCoordinatesData, %struct.GimpCoordinatesData* %71, i32 0, i32 5
  %72 = load double, double* %last_y60, align 8
  %cmp61 = fcmp une double %70, %72
  br i1 %cmp61, label %if.then.63, label %if.end.71

if.then.63:                                       ; preds = %if.else.59
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %74 = bitcast %struct._GtkWidget* %73 to %struct._GTypeInstance*
  %call64 = call i64 @gimp_size_entry_get_type() #6
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call64)
  %75 = bitcast %struct._GTypeInstance* %call65 to %struct._GimpSizeEntry*
  %76 = load double, double* %new_y, align 8
  call void @gimp_size_entry_set_refval(%struct._GimpSizeEntry* %75, i32 0, double %76)
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %78 = bitcast %struct._GtkWidget* %77 to %struct._GTypeInstance*
  %call66 = call i64 @gimp_size_entry_get_type() #6
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call66)
  %79 = bitcast %struct._GTypeInstance* %call67 to %struct._GimpSizeEntry*
  %call68 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %79, i32 0)
  %80 = load %struct.GimpCoordinatesData*, %struct.GimpCoordinatesData** %data.addr, align 8
  %last_y69 = getelementptr inbounds %struct.GimpCoordinatesData, %struct.GimpCoordinatesData* %80, i32 0, i32 5
  store double %call68, double* %last_y69, align 8
  %81 = load %struct.GimpCoordinatesData*, %struct.GimpCoordinatesData** %data.addr, align 8
  %last_x70 = getelementptr inbounds %struct.GimpCoordinatesData, %struct.GimpCoordinatesData* %81, i32 0, i32 4
  store double %call68, double* %last_x70, align 8
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.63, %if.else.59
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.then.51
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.end.46
  br label %if.end.87

if.else.74:                                       ; preds = %entry
  %82 = load double, double* %new_x, align 8
  %83 = load %struct.GimpCoordinatesData*, %struct.GimpCoordinatesData** %data.addr, align 8
  %last_x75 = getelementptr inbounds %struct.GimpCoordinatesData, %struct.GimpCoordinatesData* %83, i32 0, i32 4
  %84 = load double, double* %last_x75, align 8
  %cmp76 = fcmp une double %82, %84
  br i1 %cmp76, label %if.then.78, label %if.end.80

if.then.78:                                       ; preds = %if.else.74
  %85 = load double, double* %new_x, align 8
  %86 = load %struct.GimpCoordinatesData*, %struct.GimpCoordinatesData** %data.addr, align 8
  %last_x79 = getelementptr inbounds %struct.GimpCoordinatesData, %struct.GimpCoordinatesData* %86, i32 0, i32 4
  store double %85, double* %last_x79, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.78, %if.else.74
  %87 = load double, double* %new_y, align 8
  %88 = load %struct.GimpCoordinatesData*, %struct.GimpCoordinatesData** %data.addr, align 8
  %last_y81 = getelementptr inbounds %struct.GimpCoordinatesData, %struct.GimpCoordinatesData* %88, i32 0, i32 5
  %89 = load double, double* %last_y81, align 8
  %cmp82 = fcmp une double %87, %89
  br i1 %cmp82, label %if.then.84, label %if.end.86

if.then.84:                                       ; preds = %if.end.80
  %90 = load double, double* %new_y, align 8
  %91 = load %struct.GimpCoordinatesData*, %struct.GimpCoordinatesData** %data.addr, align 8
  %last_y85 = getelementptr inbounds %struct.GimpCoordinatesData, %struct.GimpCoordinatesData* %91, i32 0, i32 5
  store double %90, double* %last_y85, align 8
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.84, %if.end.80
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.end.73
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_coordinates_chainbutton_toggled(%struct._GimpChainButton* %button, %struct._GimpSizeEntry* %entry1) #0 {
entry:
  %button.addr = alloca %struct._GimpChainButton*, align 8
  %entry.addr = alloca %struct._GimpSizeEntry*, align 8
  %data = alloca %struct.GimpCoordinatesData*, align 8
  store %struct._GimpChainButton* %button, %struct._GimpChainButton** %button.addr, align 8
  store %struct._GimpSizeEntry* %entry1, %struct._GimpSizeEntry** %entry.addr, align 8
  %0 = load %struct._GimpChainButton*, %struct._GimpChainButton** %button.addr, align 8
  %call = call i32 @gimp_chain_button_get_active(%struct._GimpChainButton* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %2 = bitcast %struct._GimpSizeEntry* %1 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 80)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %call3 = call i8* @g_object_get_data(%struct._GObject* %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0))
  %4 = bitcast i8* %call3 to %struct.GimpCoordinatesData*
  store %struct.GimpCoordinatesData* %4, %struct.GimpCoordinatesData** %data, align 8
  %5 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %call4 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %5, i32 0)
  %6 = load %struct.GimpCoordinatesData*, %struct.GimpCoordinatesData** %data, align 8
  %orig_x = getelementptr inbounds %struct.GimpCoordinatesData, %struct.GimpCoordinatesData* %6, i32 0, i32 2
  store double %call4, double* %orig_x, align 8
  %7 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry.addr, align 8
  %call5 = call double @gimp_size_entry_get_refval(%struct._GimpSizeEntry* %7, i32 1)
  %8 = load %struct.GimpCoordinatesData*, %struct.GimpCoordinatesData** %data, align 8
  %orig_y = getelementptr inbounds %struct.GimpCoordinatesData, %struct.GimpCoordinatesData* %8, i32 0, i32 3
  store double %call5, double* %orig_y, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_toggle_button_sensitive_update(%struct._GtkToggleButton* %toggle_button) #0 {
entry:
  %toggle_button.addr = alloca %struct._GtkToggleButton*, align 8
  %set_sensitive = alloca %struct._GtkWidget*, align 8
  %active = alloca i32, align 4
  store %struct._GtkToggleButton* %toggle_button, %struct._GtkToggleButton** %toggle_button.addr, align 8
  %0 = load %struct._GtkToggleButton*, %struct._GtkToggleButton** %toggle_button.addr, align 8
  %call = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %0)
  store i32 %call, i32* %active, align 4
  %1 = load %struct._GtkToggleButton*, %struct._GtkToggleButton** %toggle_button.addr, align 8
  %2 = bitcast %struct._GtkToggleButton* %1 to %struct._GTypeInstance*
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 80)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GObject*
  %call2 = call i8* @g_object_get_data(%struct._GObject* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0))
  %4 = bitcast i8* %call2 to %struct._GtkWidget*
  store %struct._GtkWidget* %4, %struct._GtkWidget** %set_sensitive, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %set_sensitive, align 8
  %tobool = icmp ne %struct._GtkWidget* %5, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %set_sensitive, align 8
  %7 = load i32, i32* %active, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %6, i32 %7)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %set_sensitive, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 80)
  %10 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %call4 = call i8* @g_object_get_data(%struct._GObject* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0))
  %11 = bitcast i8* %call4 to %struct._GtkWidget*
  store %struct._GtkWidget* %11, %struct._GtkWidget** %set_sensitive, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load %struct._GtkToggleButton*, %struct._GtkToggleButton** %toggle_button.addr, align 8
  %13 = bitcast %struct._GtkToggleButton* %12 to %struct._GTypeInstance*
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 80)
  %14 = bitcast %struct._GTypeInstance* %call5 to %struct._GObject*
  %call6 = call i8* @g_object_get_data(%struct._GObject* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0))
  %15 = bitcast i8* %call6 to %struct._GtkWidget*
  store %struct._GtkWidget* %15, %struct._GtkWidget** %set_sensitive, align 8
  br label %while.cond.7

while.cond.7:                                     ; preds = %while.body.9, %while.end
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %set_sensitive, align 8
  %tobool8 = icmp ne %struct._GtkWidget* %16, null
  br i1 %tobool8, label %while.body.9, label %while.end.13

while.body.9:                                     ; preds = %while.cond.7
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %set_sensitive, align 8
  %18 = load i32, i32* %active, align 4
  %tobool10 = icmp ne i32 %18, 0
  %lnot = xor i1 %tobool10, true
  %lnot.ext = zext i1 %lnot to i32
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %17, i32 %lnot.ext)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %set_sensitive, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 80)
  %21 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  %call12 = call i8* @g_object_get_data(%struct._GObject* %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0))
  %22 = bitcast i8* %call12 to %struct._GtkWidget*
  store %struct._GtkWidget* %22, %struct._GtkWidget** %set_sensitive, align 8
  br label %while.cond.7

while.end.13:                                     ; preds = %while.cond.7
  ret void
}

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_radio_button_update(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %toggle_val = alloca i32*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data.addr, align 8
  %4 = bitcast i8* %3 to i32*
  store i32* %4, i32** %toggle_val, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 80)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %call4 = call i8* @g_object_get_data(%struct._GObject* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %8 = ptrtoint i8* %call4 to i64
  %conv = trunc i64 %8 to i32
  %9 = load i32*, i32** %toggle_val, align 8
  store i32 %conv, i32* %9, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_toggle_button_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call5)
  %12 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkToggleButton*
  call void @gimp_toggle_button_sensitive_update(%struct._GtkToggleButton* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_int_adjustment_update(%struct._GtkAdjustment* %adjustment, i8* %data) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %data.addr = alloca i8*, align 8
  %val = alloca i32*, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to i32*
  store i32* %1, i32** %val, align 8
  %2 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %2)
  %call1 = call double @rint(double %call) #6
  %conv = fptosi double %call1 to i32
  %3 = load i32*, i32** %val, align 8
  store i32 %conv, i32* %3, align 4
  ret void
}

; Function Attrs: nounwind readnone
declare double @rint(double) #3

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

; Function Attrs: nounwind uwtable
define void @gimp_float_adjustment_update(%struct._GtkAdjustment* %adjustment, i8* %data) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %data.addr = alloca i8*, align 8
  %val = alloca float*, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to float*
  store float* %1, float** %val, align 8
  %2 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %2)
  %conv = fptrunc double %call to float
  %3 = load float*, float** %val, align 8
  store float %conv, float* %3, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_double_adjustment_update(%struct._GtkAdjustment* %adjustment, i8* %data) #0 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %data.addr = alloca i8*, align 8
  %val = alloca double*, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to double*
  store double* %1, double** %val, align 8
  %2 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %2)
  %3 = load double*, double** %val, align 8
  store double %call, double* %3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %table, i32 %column, i32 %row, i8* %label_text, float %xalign, float %yalign, %struct._GtkWidget* %widget, i32 %colspan, i32 %left_align) #0 {
entry:
  %table.addr = alloca %struct._GtkTable*, align 8
  %column.addr = alloca i32, align 4
  %row.addr = alloca i32, align 4
  %label_text.addr = alloca i8*, align 8
  %xalign.addr = alloca float, align 4
  %yalign.addr = alloca float, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %colspan.addr = alloca i32, align 4
  %left_align.addr = alloca i32, align 4
  %label = alloca %struct._GtkWidget*, align 8
  %mnemonic_widget = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  store %struct._GtkTable* %table, %struct._GtkTable** %table.addr, align 8
  store i32 %column, i32* %column.addr, align 4
  store i32 %row, i32* %row.addr, align 4
  store i8* %label_text, i8** %label_text.addr, align 8
  store float %xalign, float* %xalign.addr, align 4
  store float %yalign, float* %yalign.addr, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %colspan, i32* %colspan.addr, align 4
  store i32 %left_align, i32* %left_align.addr, align 4
  store %struct._GtkWidget* null, %struct._GtkWidget** %label, align 8
  %0 = load i8*, i8** %label_text.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %label_text.addr, align 8
  %call = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %1)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %label, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_misc_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkMisc*
  %5 = load float, float* %xalign.addr, align 4
  %6 = load float, float* %yalign.addr, align 4
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %4, float %5, float %6)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_label_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call3)
  %9 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkLabel*
  call void @gtk_label_set_justify(%struct._GtkLabel* %9, i32 0)
  %10 = load %struct._GtkTable*, %struct._GtkTable** %table.addr, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %12 = load i32, i32* %column.addr, align 4
  %13 = load i32, i32* %column.addr, align 4
  %add = add nsw i32 %13, 1
  %14 = load i32, i32* %row.addr, align 4
  %15 = load i32, i32* %row.addr, align 4
  %add5 = add nsw i32 %15, 1
  call void @gtk_table_attach(%struct._GtkTable* %10, %struct._GtkWidget* %11, i32 %12, i32 %add, i32 %14, i32 %add5, i32 4, i32 4, i32 0, i32 0)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %16)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call6 = call %struct._GtkWidget* @find_mnemonic_widget(%struct._GtkWidget* %17, i32 0)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %mnemonic_widget, align 8
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %mnemonic_widget, align 8
  %tobool7 = icmp ne %struct._GtkWidget* %18, null
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_label_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call9)
  %21 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkLabel*
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %mnemonic_widget, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %21, %struct._GtkWidget* %22)
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %entry
  %23 = load i32, i32* %left_align.addr, align 4
  %tobool12 = icmp ne i32 %23, 0
  br i1 %tobool12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %if.end.11
  %call14 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %hbox, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_box_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call15)
  %26 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkBox*
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %26, %struct._GtkWidget* %27, i32 0, i32 0, i32 0)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %28)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  store %struct._GtkWidget* %29, %struct._GtkWidget** %widget.addr, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %if.end.11
  %30 = load %struct._GtkTable*, %struct._GtkTable** %table.addr, align 8
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %32 = load i32, i32* %column.addr, align 4
  %add18 = add nsw i32 %32, 1
  %33 = load i32, i32* %column.addr, align 4
  %add19 = add nsw i32 %33, 1
  %34 = load i32, i32* %colspan.addr, align 4
  %add20 = add nsw i32 %add19, %34
  %35 = load i32, i32* %row.addr, align 4
  %36 = load i32, i32* %row.addr, align 4
  %add21 = add nsw i32 %36, 1
  call void @gtk_table_attach(%struct._GtkTable* %30, %struct._GtkWidget* %31, i32 %add18, i32 %add20, i32 %35, i32 %add21, i32 5, i32 5, i32 0, i32 0)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %37)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  ret %struct._GtkWidget* %38
}

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

declare void @gtk_label_set_justify(%struct._GtkLabel*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #3

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @find_mnemonic_widget(%struct._GtkWidget* %widget, i32 %level) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %level.addr = alloca i32, align 4
  %can_focus = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %entry23 = alloca %struct._GimpSizeEntry*, align 8
  %__inst29 = alloca %struct._GTypeInstance*, align 8
  %__t31 = alloca i64, align 8
  %__r34 = alloca i32, align 4
  %tmp49 = alloca i32, align 4
  %mnemonic_widget = alloca %struct._GtkWidget*, align 8
  %children = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i32* %can_focus, i8* null)
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %5 = bitcast %struct._GTypeClass* %4 to %struct._GtkWidgetClass*
  %activate_signal = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %5, i32 0, i32 1
  %6 = load i32, i32* %activate_signal, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* %can_focus, align 4
  %tobool1 = icmp ne i32 %7, 0
  br i1 %tobool1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %9, i32 0, i32 0
  %10 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %11 = bitcast %struct._GTypeClass* %10 to %struct._GtkWidgetClass*
  %mnemonic_activate = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %11, i32 0, i32 21
  %12 = load i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, i32)** %mnemonic_activate, align 8
  %call = call i64 @gtk_widget_get_type() #6
  %call4 = call i8* @g_type_class_peek(i64 %call)
  %13 = bitcast i8* %call4 to %struct._GTypeClass*
  %call5 = call i64 @gtk_widget_get_type() #6
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %13, i64 %call5)
  %14 = bitcast %struct._GTypeClass* %call6 to %struct._GtkWidgetClass*
  %mnemonic_activate7 = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %14, i32 0, i32 21
  %15 = load i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, i32)** %mnemonic_activate7, align 8
  %cmp = icmp ne i32 (%struct._GtkWidget*, i32)* %12, %15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkWidget* %16, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.2
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %18, %struct._GTypeInstance** %__inst, align 8
  %call8 = call i64 @gimp_size_entry_get_type() #6
  store i64 %call8, i64* %__t, align 8
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool9 = icmp ne %struct._GTypeInstance* %19, null
  br i1 %tobool9, label %if.else, label %if.then.10

if.then.10:                                       ; preds = %if.end
  store i32 0, i32* %__r, align 4
  br label %if.end.19

if.else:                                          ; preds = %if.end
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %tobool12 = icmp ne %struct._GTypeClass* %21, null
  br i1 %tobool12, label %land.lhs.true, label %if.else.16

land.lhs.true:                                    ; preds = %if.else
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class13 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class13, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type, align 8
  %25 = load i64, i64* %__t, align 8
  %cmp14 = icmp eq i64 %24, %25
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.18

if.else.16:                                       ; preds = %land.lhs.true, %if.else
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %27 = load i64, i64* %__t, align 8
  %call17 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %26, i64 %27) #7
  store i32 %call17, i32* %__r, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16, %if.then.15
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.10
  %28 = load i32, i32* %__r, align 4
  store i32 %28, i32* %tmp
  %29 = load i32, i32* %tmp
  %tobool20 = icmp ne i32 %29, 0
  br i1 %tobool20, label %if.then.21, label %if.else.27

if.then.21:                                       ; preds = %if.end.19
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_size_entry_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call24)
  %32 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpSizeEntry*
  store %struct._GimpSizeEntry* %32, %struct._GimpSizeEntry** %entry23, align 8
  %33 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry23, align 8
  %34 = load %struct._GimpSizeEntry*, %struct._GimpSizeEntry** %entry23, align 8
  %number_of_fields = getelementptr inbounds %struct._GimpSizeEntry, %struct._GimpSizeEntry* %34, i32 0, i32 2
  %35 = load i32, i32* %number_of_fields, align 4
  %sub = sub nsw i32 %35, 1
  %call26 = call %struct._GtkWidget* @gimp_size_entry_get_help_widget(%struct._GimpSizeEntry* %33, i32 %sub)
  store %struct._GtkWidget* %call26, %struct._GtkWidget** %retval
  br label %return

if.else.27:                                       ; preds = %if.end.19
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %37, %struct._GTypeInstance** %__inst29, align 8
  %call32 = call i64 @gtk_container_get_type() #6
  store i64 %call32, i64* %__t31, align 8
  %38 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst29, align 8
  %tobool35 = icmp ne %struct._GTypeInstance* %38, null
  br i1 %tobool35, label %if.else.37, label %if.then.36

if.then.36:                                       ; preds = %if.else.27
  store i32 0, i32* %__r34, align 4
  br label %if.end.48

if.else.37:                                       ; preds = %if.else.27
  %39 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst29, align 8
  %g_class38 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %39, i32 0, i32 0
  %40 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class38, align 8
  %tobool39 = icmp ne %struct._GTypeClass* %40, null
  br i1 %tobool39, label %land.lhs.true.40, label %if.else.45

land.lhs.true.40:                                 ; preds = %if.else.37
  %41 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst29, align 8
  %g_class41 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %41, i32 0, i32 0
  %42 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class41, align 8
  %g_type42 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %42, i32 0, i32 0
  %43 = load i64, i64* %g_type42, align 8
  %44 = load i64, i64* %__t31, align 8
  %cmp43 = icmp eq i64 %43, %44
  br i1 %cmp43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %land.lhs.true.40
  store i32 1, i32* %__r34, align 4
  br label %if.end.47

if.else.45:                                       ; preds = %land.lhs.true.40, %if.else.37
  %45 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst29, align 8
  %46 = load i64, i64* %__t31, align 8
  %call46 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %45, i64 %46) #7
  store i32 %call46, i32* %__r34, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.45, %if.then.44
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.36
  %47 = load i32, i32* %__r34, align 4
  store i32 %47, i32* %tmp49
  %48 = load i32, i32* %tmp49
  %tobool50 = icmp ne i32 %48, 0
  br i1 %tobool50, label %if.then.51, label %if.end.64

if.then.51:                                       ; preds = %if.end.48
  store %struct._GtkWidget* null, %struct._GtkWidget** %mnemonic_widget, align 8
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_container_get_type() #6
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call55)
  %51 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkContainer*
  %call57 = call %struct._GList* @gtk_container_get_children(%struct._GtkContainer* %51)
  store %struct._GList* %call57, %struct._GList** %children, align 8
  %52 = load %struct._GList*, %struct._GList** %children, align 8
  store %struct._GList* %52, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.51
  %53 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool58 = icmp ne %struct._GList* %53, null
  br i1 %tobool58, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %54 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %54, i32 0, i32 0
  %55 = load i8*, i8** %data, align 8
  %56 = bitcast i8* %55 to %struct._GtkWidget*
  %57 = load i32, i32* %level.addr, align 4
  %add = add nsw i32 %57, 1
  %call59 = call %struct._GtkWidget* @find_mnemonic_widget(%struct._GtkWidget* %56, i32 %add)
  store %struct._GtkWidget* %call59, %struct._GtkWidget** %mnemonic_widget, align 8
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %mnemonic_widget, align 8
  %tobool60 = icmp ne %struct._GtkWidget* %58, null
  br i1 %tobool60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %for.body
  br label %for.end

if.end.62:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.62
  %59 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool63 = icmp ne %struct._GList* %59, null
  br i1 %tobool63, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %60 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %60, i32 0, i32 1
  %61 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %61, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.61, %for.cond
  %62 = load %struct._GList*, %struct._GList** %children, align 8
  call void @g_list_free(%struct._GList* %62)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %mnemonic_widget, align 8
  store %struct._GtkWidget* %63, %struct._GtkWidget** %retval
  br label %return

if.end.64:                                        ; preds = %if.end.48
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.65, %for.end, %if.then.21, %if.then
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %64
}

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @gimp_label_set_attributes(%struct._GtkLabel* %label, ...) #0 {
entry:
  %label.addr = alloca %struct._GtkLabel*, align 8
  %attr = alloca %struct._PangoAttribute*, align 8
  %attrs = alloca %struct._PangoAttrList*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %attr_type = alloca i32, align 4
  %color = alloca %struct._PangoColor*, align 8
  %color147 = alloca %struct._PangoColor*, align 8
  store %struct._GtkLabel* %label, %struct._GtkLabel** %label.addr, align 8
  store %struct._PangoAttribute* null, %struct._PangoAttribute** %attr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkLabel*, %struct._GtkLabel** %label.addr, align 8
  %1 = bitcast %struct._GtkLabel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_label_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_label_set_attributes, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call %struct._PangoAttrList* @pango_attr_list_new()
  store %struct._PangoAttrList* %call11, %struct._PangoAttrList** %attrs, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay12 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay12)
  br label %do.body.13

do.body.13:                                       ; preds = %do.cond, %do.end
  %arraydecay15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay15, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %do.body.13
  %13 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay15, i32 0, i32 3
  %reg_save_area = load i8*, i8** %13
  %14 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %15 = bitcast i8* %14 to i32*
  %16 = add i32 %gp_offset, 8
  store i32 %16, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %do.body.13
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay15, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %17 = bitcast i8* %overflow_arg_area to i32*
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i32* [ %15, %vaarg.in_reg ], [ %17, %vaarg.in_mem ]
  %18 = load i32, i32* %vaarg.addr
  store i32 %18, i32* %attr_type, align 4
  %19 = load i32, i32* %attr_type, align 4
  %cmp16 = icmp eq i32 %19, -1
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %vaarg.end
  store i32 0, i32* %attr_type, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %vaarg.end
  %20 = load i32, i32* %attr_type, align 4
  switch i32 %20, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.32
    i32 3, label %sw.bb.46
    i32 4, label %sw.bb.60
    i32 5, label %sw.bb.74
    i32 6, label %sw.bb.88
    i32 7, label %sw.bb.102
    i32 8, label %sw.bb.116
    i32 9, label %sw.bb.130
    i32 10, label %sw.bb.145
    i32 11, label %sw.bb.164
    i32 12, label %sw.bb.178
    i32 13, label %sw.bb.192
    i32 15, label %sw.bb.206
    i32 0, label %sw.bb.217
  ]

sw.bb:                                            ; preds = %if.end.18
  %arraydecay19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p20 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay19, i32 0, i32 0
  %gp_offset21 = load i32, i32* %gp_offset_p20
  %fits_in_gp22 = icmp ule i32 %gp_offset21, 40
  br i1 %fits_in_gp22, label %vaarg.in_reg.23, label %vaarg.in_mem.25

vaarg.in_reg.23:                                  ; preds = %sw.bb
  %21 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay19, i32 0, i32 3
  %reg_save_area24 = load i8*, i8** %21
  %22 = getelementptr i8, i8* %reg_save_area24, i32 %gp_offset21
  %23 = bitcast i8* %22 to %struct._PangoLanguage**
  %24 = add i32 %gp_offset21, 8
  store i32 %24, i32* %gp_offset_p20
  br label %vaarg.end.29

vaarg.in_mem.25:                                  ; preds = %sw.bb
  %overflow_arg_area_p26 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay19, i32 0, i32 2
  %overflow_arg_area27 = load i8*, i8** %overflow_arg_area_p26
  %25 = bitcast i8* %overflow_arg_area27 to %struct._PangoLanguage**
  %overflow_arg_area.next28 = getelementptr i8, i8* %overflow_arg_area27, i32 8
  store i8* %overflow_arg_area.next28, i8** %overflow_arg_area_p26
  br label %vaarg.end.29

vaarg.end.29:                                     ; preds = %vaarg.in_mem.25, %vaarg.in_reg.23
  %vaarg.addr30 = phi %struct._PangoLanguage** [ %23, %vaarg.in_reg.23 ], [ %25, %vaarg.in_mem.25 ]
  %26 = load %struct._PangoLanguage*, %struct._PangoLanguage** %vaarg.addr30
  %call31 = call %struct._PangoAttribute* @pango_attr_language_new(%struct._PangoLanguage* %26)
  store %struct._PangoAttribute* %call31, %struct._PangoAttribute** %attr, align 8
  br label %sw.epilog

sw.bb.32:                                         ; preds = %if.end.18
  %arraydecay33 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p34 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay33, i32 0, i32 0
  %gp_offset35 = load i32, i32* %gp_offset_p34
  %fits_in_gp36 = icmp ule i32 %gp_offset35, 40
  br i1 %fits_in_gp36, label %vaarg.in_reg.37, label %vaarg.in_mem.39

vaarg.in_reg.37:                                  ; preds = %sw.bb.32
  %27 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay33, i32 0, i32 3
  %reg_save_area38 = load i8*, i8** %27
  %28 = getelementptr i8, i8* %reg_save_area38, i32 %gp_offset35
  %29 = bitcast i8* %28 to i8**
  %30 = add i32 %gp_offset35, 8
  store i32 %30, i32* %gp_offset_p34
  br label %vaarg.end.43

vaarg.in_mem.39:                                  ; preds = %sw.bb.32
  %overflow_arg_area_p40 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay33, i32 0, i32 2
  %overflow_arg_area41 = load i8*, i8** %overflow_arg_area_p40
  %31 = bitcast i8* %overflow_arg_area41 to i8**
  %overflow_arg_area.next42 = getelementptr i8, i8* %overflow_arg_area41, i32 8
  store i8* %overflow_arg_area.next42, i8** %overflow_arg_area_p40
  br label %vaarg.end.43

vaarg.end.43:                                     ; preds = %vaarg.in_mem.39, %vaarg.in_reg.37
  %vaarg.addr44 = phi i8** [ %29, %vaarg.in_reg.37 ], [ %31, %vaarg.in_mem.39 ]
  %32 = load i8*, i8** %vaarg.addr44
  %call45 = call %struct._PangoAttribute* @pango_attr_family_new(i8* %32)
  store %struct._PangoAttribute* %call45, %struct._PangoAttribute** %attr, align 8
  br label %sw.epilog

sw.bb.46:                                         ; preds = %if.end.18
  %arraydecay47 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p48 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay47, i32 0, i32 0
  %gp_offset49 = load i32, i32* %gp_offset_p48
  %fits_in_gp50 = icmp ule i32 %gp_offset49, 40
  br i1 %fits_in_gp50, label %vaarg.in_reg.51, label %vaarg.in_mem.53

vaarg.in_reg.51:                                  ; preds = %sw.bb.46
  %33 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay47, i32 0, i32 3
  %reg_save_area52 = load i8*, i8** %33
  %34 = getelementptr i8, i8* %reg_save_area52, i32 %gp_offset49
  %35 = bitcast i8* %34 to i32*
  %36 = add i32 %gp_offset49, 8
  store i32 %36, i32* %gp_offset_p48
  br label %vaarg.end.57

vaarg.in_mem.53:                                  ; preds = %sw.bb.46
  %overflow_arg_area_p54 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay47, i32 0, i32 2
  %overflow_arg_area55 = load i8*, i8** %overflow_arg_area_p54
  %37 = bitcast i8* %overflow_arg_area55 to i32*
  %overflow_arg_area.next56 = getelementptr i8, i8* %overflow_arg_area55, i32 8
  store i8* %overflow_arg_area.next56, i8** %overflow_arg_area_p54
  br label %vaarg.end.57

vaarg.end.57:                                     ; preds = %vaarg.in_mem.53, %vaarg.in_reg.51
  %vaarg.addr58 = phi i32* [ %35, %vaarg.in_reg.51 ], [ %37, %vaarg.in_mem.53 ]
  %38 = load i32, i32* %vaarg.addr58
  %call59 = call %struct._PangoAttribute* @pango_attr_style_new(i32 %38)
  store %struct._PangoAttribute* %call59, %struct._PangoAttribute** %attr, align 8
  br label %sw.epilog

sw.bb.60:                                         ; preds = %if.end.18
  %arraydecay61 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p62 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay61, i32 0, i32 0
  %gp_offset63 = load i32, i32* %gp_offset_p62
  %fits_in_gp64 = icmp ule i32 %gp_offset63, 40
  br i1 %fits_in_gp64, label %vaarg.in_reg.65, label %vaarg.in_mem.67

vaarg.in_reg.65:                                  ; preds = %sw.bb.60
  %39 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay61, i32 0, i32 3
  %reg_save_area66 = load i8*, i8** %39
  %40 = getelementptr i8, i8* %reg_save_area66, i32 %gp_offset63
  %41 = bitcast i8* %40 to i32*
  %42 = add i32 %gp_offset63, 8
  store i32 %42, i32* %gp_offset_p62
  br label %vaarg.end.71

vaarg.in_mem.67:                                  ; preds = %sw.bb.60
  %overflow_arg_area_p68 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay61, i32 0, i32 2
  %overflow_arg_area69 = load i8*, i8** %overflow_arg_area_p68
  %43 = bitcast i8* %overflow_arg_area69 to i32*
  %overflow_arg_area.next70 = getelementptr i8, i8* %overflow_arg_area69, i32 8
  store i8* %overflow_arg_area.next70, i8** %overflow_arg_area_p68
  br label %vaarg.end.71

vaarg.end.71:                                     ; preds = %vaarg.in_mem.67, %vaarg.in_reg.65
  %vaarg.addr72 = phi i32* [ %41, %vaarg.in_reg.65 ], [ %43, %vaarg.in_mem.67 ]
  %44 = load i32, i32* %vaarg.addr72
  %call73 = call %struct._PangoAttribute* @pango_attr_weight_new(i32 %44)
  store %struct._PangoAttribute* %call73, %struct._PangoAttribute** %attr, align 8
  br label %sw.epilog

sw.bb.74:                                         ; preds = %if.end.18
  %arraydecay75 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p76 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay75, i32 0, i32 0
  %gp_offset77 = load i32, i32* %gp_offset_p76
  %fits_in_gp78 = icmp ule i32 %gp_offset77, 40
  br i1 %fits_in_gp78, label %vaarg.in_reg.79, label %vaarg.in_mem.81

vaarg.in_reg.79:                                  ; preds = %sw.bb.74
  %45 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay75, i32 0, i32 3
  %reg_save_area80 = load i8*, i8** %45
  %46 = getelementptr i8, i8* %reg_save_area80, i32 %gp_offset77
  %47 = bitcast i8* %46 to i32*
  %48 = add i32 %gp_offset77, 8
  store i32 %48, i32* %gp_offset_p76
  br label %vaarg.end.85

vaarg.in_mem.81:                                  ; preds = %sw.bb.74
  %overflow_arg_area_p82 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay75, i32 0, i32 2
  %overflow_arg_area83 = load i8*, i8** %overflow_arg_area_p82
  %49 = bitcast i8* %overflow_arg_area83 to i32*
  %overflow_arg_area.next84 = getelementptr i8, i8* %overflow_arg_area83, i32 8
  store i8* %overflow_arg_area.next84, i8** %overflow_arg_area_p82
  br label %vaarg.end.85

vaarg.end.85:                                     ; preds = %vaarg.in_mem.81, %vaarg.in_reg.79
  %vaarg.addr86 = phi i32* [ %47, %vaarg.in_reg.79 ], [ %49, %vaarg.in_mem.81 ]
  %50 = load i32, i32* %vaarg.addr86
  %call87 = call %struct._PangoAttribute* @pango_attr_variant_new(i32 %50)
  store %struct._PangoAttribute* %call87, %struct._PangoAttribute** %attr, align 8
  br label %sw.epilog

sw.bb.88:                                         ; preds = %if.end.18
  %arraydecay89 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p90 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay89, i32 0, i32 0
  %gp_offset91 = load i32, i32* %gp_offset_p90
  %fits_in_gp92 = icmp ule i32 %gp_offset91, 40
  br i1 %fits_in_gp92, label %vaarg.in_reg.93, label %vaarg.in_mem.95

vaarg.in_reg.93:                                  ; preds = %sw.bb.88
  %51 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay89, i32 0, i32 3
  %reg_save_area94 = load i8*, i8** %51
  %52 = getelementptr i8, i8* %reg_save_area94, i32 %gp_offset91
  %53 = bitcast i8* %52 to i32*
  %54 = add i32 %gp_offset91, 8
  store i32 %54, i32* %gp_offset_p90
  br label %vaarg.end.99

vaarg.in_mem.95:                                  ; preds = %sw.bb.88
  %overflow_arg_area_p96 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay89, i32 0, i32 2
  %overflow_arg_area97 = load i8*, i8** %overflow_arg_area_p96
  %55 = bitcast i8* %overflow_arg_area97 to i32*
  %overflow_arg_area.next98 = getelementptr i8, i8* %overflow_arg_area97, i32 8
  store i8* %overflow_arg_area.next98, i8** %overflow_arg_area_p96
  br label %vaarg.end.99

vaarg.end.99:                                     ; preds = %vaarg.in_mem.95, %vaarg.in_reg.93
  %vaarg.addr100 = phi i32* [ %53, %vaarg.in_reg.93 ], [ %55, %vaarg.in_mem.95 ]
  %56 = load i32, i32* %vaarg.addr100
  %call101 = call %struct._PangoAttribute* @pango_attr_stretch_new(i32 %56)
  store %struct._PangoAttribute* %call101, %struct._PangoAttribute** %attr, align 8
  br label %sw.epilog

sw.bb.102:                                        ; preds = %if.end.18
  %arraydecay103 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p104 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay103, i32 0, i32 0
  %gp_offset105 = load i32, i32* %gp_offset_p104
  %fits_in_gp106 = icmp ule i32 %gp_offset105, 40
  br i1 %fits_in_gp106, label %vaarg.in_reg.107, label %vaarg.in_mem.109

vaarg.in_reg.107:                                 ; preds = %sw.bb.102
  %57 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay103, i32 0, i32 3
  %reg_save_area108 = load i8*, i8** %57
  %58 = getelementptr i8, i8* %reg_save_area108, i32 %gp_offset105
  %59 = bitcast i8* %58 to i32*
  %60 = add i32 %gp_offset105, 8
  store i32 %60, i32* %gp_offset_p104
  br label %vaarg.end.113

vaarg.in_mem.109:                                 ; preds = %sw.bb.102
  %overflow_arg_area_p110 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay103, i32 0, i32 2
  %overflow_arg_area111 = load i8*, i8** %overflow_arg_area_p110
  %61 = bitcast i8* %overflow_arg_area111 to i32*
  %overflow_arg_area.next112 = getelementptr i8, i8* %overflow_arg_area111, i32 8
  store i8* %overflow_arg_area.next112, i8** %overflow_arg_area_p110
  br label %vaarg.end.113

vaarg.end.113:                                    ; preds = %vaarg.in_mem.109, %vaarg.in_reg.107
  %vaarg.addr114 = phi i32* [ %59, %vaarg.in_reg.107 ], [ %61, %vaarg.in_mem.109 ]
  %62 = load i32, i32* %vaarg.addr114
  %call115 = call %struct._PangoAttribute* @pango_attr_size_new(i32 %62)
  store %struct._PangoAttribute* %call115, %struct._PangoAttribute** %attr, align 8
  br label %sw.epilog

sw.bb.116:                                        ; preds = %if.end.18
  %arraydecay117 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p118 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay117, i32 0, i32 0
  %gp_offset119 = load i32, i32* %gp_offset_p118
  %fits_in_gp120 = icmp ule i32 %gp_offset119, 40
  br i1 %fits_in_gp120, label %vaarg.in_reg.121, label %vaarg.in_mem.123

vaarg.in_reg.121:                                 ; preds = %sw.bb.116
  %63 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay117, i32 0, i32 3
  %reg_save_area122 = load i8*, i8** %63
  %64 = getelementptr i8, i8* %reg_save_area122, i32 %gp_offset119
  %65 = bitcast i8* %64 to %struct._PangoFontDescription**
  %66 = add i32 %gp_offset119, 8
  store i32 %66, i32* %gp_offset_p118
  br label %vaarg.end.127

vaarg.in_mem.123:                                 ; preds = %sw.bb.116
  %overflow_arg_area_p124 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay117, i32 0, i32 2
  %overflow_arg_area125 = load i8*, i8** %overflow_arg_area_p124
  %67 = bitcast i8* %overflow_arg_area125 to %struct._PangoFontDescription**
  %overflow_arg_area.next126 = getelementptr i8, i8* %overflow_arg_area125, i32 8
  store i8* %overflow_arg_area.next126, i8** %overflow_arg_area_p124
  br label %vaarg.end.127

vaarg.end.127:                                    ; preds = %vaarg.in_mem.123, %vaarg.in_reg.121
  %vaarg.addr128 = phi %struct._PangoFontDescription** [ %65, %vaarg.in_reg.121 ], [ %67, %vaarg.in_mem.123 ]
  %68 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %vaarg.addr128
  %call129 = call %struct._PangoAttribute* @pango_attr_font_desc_new(%struct._PangoFontDescription* %68)
  store %struct._PangoAttribute* %call129, %struct._PangoAttribute** %attr, align 8
  br label %sw.epilog

sw.bb.130:                                        ; preds = %if.end.18
  %arraydecay132 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p133 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay132, i32 0, i32 0
  %gp_offset134 = load i32, i32* %gp_offset_p133
  %fits_in_gp135 = icmp ule i32 %gp_offset134, 40
  br i1 %fits_in_gp135, label %vaarg.in_reg.136, label %vaarg.in_mem.138

vaarg.in_reg.136:                                 ; preds = %sw.bb.130
  %69 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay132, i32 0, i32 3
  %reg_save_area137 = load i8*, i8** %69
  %70 = getelementptr i8, i8* %reg_save_area137, i32 %gp_offset134
  %71 = bitcast i8* %70 to %struct._PangoColor**
  %72 = add i32 %gp_offset134, 8
  store i32 %72, i32* %gp_offset_p133
  br label %vaarg.end.142

vaarg.in_mem.138:                                 ; preds = %sw.bb.130
  %overflow_arg_area_p139 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay132, i32 0, i32 2
  %overflow_arg_area140 = load i8*, i8** %overflow_arg_area_p139
  %73 = bitcast i8* %overflow_arg_area140 to %struct._PangoColor**
  %overflow_arg_area.next141 = getelementptr i8, i8* %overflow_arg_area140, i32 8
  store i8* %overflow_arg_area.next141, i8** %overflow_arg_area_p139
  br label %vaarg.end.142

vaarg.end.142:                                    ; preds = %vaarg.in_mem.138, %vaarg.in_reg.136
  %vaarg.addr143 = phi %struct._PangoColor** [ %71, %vaarg.in_reg.136 ], [ %73, %vaarg.in_mem.138 ]
  %74 = load %struct._PangoColor*, %struct._PangoColor** %vaarg.addr143
  store %struct._PangoColor* %74, %struct._PangoColor** %color, align 8
  %75 = load %struct._PangoColor*, %struct._PangoColor** %color, align 8
  %red = getelementptr inbounds %struct._PangoColor, %struct._PangoColor* %75, i32 0, i32 0
  %76 = load i16, i16* %red, align 2
  %77 = load %struct._PangoColor*, %struct._PangoColor** %color, align 8
  %green = getelementptr inbounds %struct._PangoColor, %struct._PangoColor* %77, i32 0, i32 1
  %78 = load i16, i16* %green, align 2
  %79 = load %struct._PangoColor*, %struct._PangoColor** %color, align 8
  %blue = getelementptr inbounds %struct._PangoColor, %struct._PangoColor* %79, i32 0, i32 2
  %80 = load i16, i16* %blue, align 2
  %call144 = call %struct._PangoAttribute* @pango_attr_foreground_new(i16 zeroext %76, i16 zeroext %78, i16 zeroext %80)
  store %struct._PangoAttribute* %call144, %struct._PangoAttribute** %attr, align 8
  br label %sw.epilog

sw.bb.145:                                        ; preds = %if.end.18
  %arraydecay148 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p149 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay148, i32 0, i32 0
  %gp_offset150 = load i32, i32* %gp_offset_p149
  %fits_in_gp151 = icmp ule i32 %gp_offset150, 40
  br i1 %fits_in_gp151, label %vaarg.in_reg.152, label %vaarg.in_mem.154

vaarg.in_reg.152:                                 ; preds = %sw.bb.145
  %81 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay148, i32 0, i32 3
  %reg_save_area153 = load i8*, i8** %81
  %82 = getelementptr i8, i8* %reg_save_area153, i32 %gp_offset150
  %83 = bitcast i8* %82 to %struct._PangoColor**
  %84 = add i32 %gp_offset150, 8
  store i32 %84, i32* %gp_offset_p149
  br label %vaarg.end.158

vaarg.in_mem.154:                                 ; preds = %sw.bb.145
  %overflow_arg_area_p155 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay148, i32 0, i32 2
  %overflow_arg_area156 = load i8*, i8** %overflow_arg_area_p155
  %85 = bitcast i8* %overflow_arg_area156 to %struct._PangoColor**
  %overflow_arg_area.next157 = getelementptr i8, i8* %overflow_arg_area156, i32 8
  store i8* %overflow_arg_area.next157, i8** %overflow_arg_area_p155
  br label %vaarg.end.158

vaarg.end.158:                                    ; preds = %vaarg.in_mem.154, %vaarg.in_reg.152
  %vaarg.addr159 = phi %struct._PangoColor** [ %83, %vaarg.in_reg.152 ], [ %85, %vaarg.in_mem.154 ]
  %86 = load %struct._PangoColor*, %struct._PangoColor** %vaarg.addr159
  store %struct._PangoColor* %86, %struct._PangoColor** %color147, align 8
  %87 = load %struct._PangoColor*, %struct._PangoColor** %color147, align 8
  %red160 = getelementptr inbounds %struct._PangoColor, %struct._PangoColor* %87, i32 0, i32 0
  %88 = load i16, i16* %red160, align 2
  %89 = load %struct._PangoColor*, %struct._PangoColor** %color147, align 8
  %green161 = getelementptr inbounds %struct._PangoColor, %struct._PangoColor* %89, i32 0, i32 1
  %90 = load i16, i16* %green161, align 2
  %91 = load %struct._PangoColor*, %struct._PangoColor** %color147, align 8
  %blue162 = getelementptr inbounds %struct._PangoColor, %struct._PangoColor* %91, i32 0, i32 2
  %92 = load i16, i16* %blue162, align 2
  %call163 = call %struct._PangoAttribute* @pango_attr_background_new(i16 zeroext %88, i16 zeroext %90, i16 zeroext %92)
  store %struct._PangoAttribute* %call163, %struct._PangoAttribute** %attr, align 8
  br label %sw.epilog

sw.bb.164:                                        ; preds = %if.end.18
  %arraydecay165 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p166 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay165, i32 0, i32 0
  %gp_offset167 = load i32, i32* %gp_offset_p166
  %fits_in_gp168 = icmp ule i32 %gp_offset167, 40
  br i1 %fits_in_gp168, label %vaarg.in_reg.169, label %vaarg.in_mem.171

vaarg.in_reg.169:                                 ; preds = %sw.bb.164
  %93 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay165, i32 0, i32 3
  %reg_save_area170 = load i8*, i8** %93
  %94 = getelementptr i8, i8* %reg_save_area170, i32 %gp_offset167
  %95 = bitcast i8* %94 to i32*
  %96 = add i32 %gp_offset167, 8
  store i32 %96, i32* %gp_offset_p166
  br label %vaarg.end.175

vaarg.in_mem.171:                                 ; preds = %sw.bb.164
  %overflow_arg_area_p172 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay165, i32 0, i32 2
  %overflow_arg_area173 = load i8*, i8** %overflow_arg_area_p172
  %97 = bitcast i8* %overflow_arg_area173 to i32*
  %overflow_arg_area.next174 = getelementptr i8, i8* %overflow_arg_area173, i32 8
  store i8* %overflow_arg_area.next174, i8** %overflow_arg_area_p172
  br label %vaarg.end.175

vaarg.end.175:                                    ; preds = %vaarg.in_mem.171, %vaarg.in_reg.169
  %vaarg.addr176 = phi i32* [ %95, %vaarg.in_reg.169 ], [ %97, %vaarg.in_mem.171 ]
  %98 = load i32, i32* %vaarg.addr176
  %call177 = call %struct._PangoAttribute* @pango_attr_underline_new(i32 %98)
  store %struct._PangoAttribute* %call177, %struct._PangoAttribute** %attr, align 8
  br label %sw.epilog

sw.bb.178:                                        ; preds = %if.end.18
  %arraydecay179 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p180 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay179, i32 0, i32 0
  %gp_offset181 = load i32, i32* %gp_offset_p180
  %fits_in_gp182 = icmp ule i32 %gp_offset181, 40
  br i1 %fits_in_gp182, label %vaarg.in_reg.183, label %vaarg.in_mem.185

vaarg.in_reg.183:                                 ; preds = %sw.bb.178
  %99 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay179, i32 0, i32 3
  %reg_save_area184 = load i8*, i8** %99
  %100 = getelementptr i8, i8* %reg_save_area184, i32 %gp_offset181
  %101 = bitcast i8* %100 to i32*
  %102 = add i32 %gp_offset181, 8
  store i32 %102, i32* %gp_offset_p180
  br label %vaarg.end.189

vaarg.in_mem.185:                                 ; preds = %sw.bb.178
  %overflow_arg_area_p186 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay179, i32 0, i32 2
  %overflow_arg_area187 = load i8*, i8** %overflow_arg_area_p186
  %103 = bitcast i8* %overflow_arg_area187 to i32*
  %overflow_arg_area.next188 = getelementptr i8, i8* %overflow_arg_area187, i32 8
  store i8* %overflow_arg_area.next188, i8** %overflow_arg_area_p186
  br label %vaarg.end.189

vaarg.end.189:                                    ; preds = %vaarg.in_mem.185, %vaarg.in_reg.183
  %vaarg.addr190 = phi i32* [ %101, %vaarg.in_reg.183 ], [ %103, %vaarg.in_mem.185 ]
  %104 = load i32, i32* %vaarg.addr190
  %call191 = call %struct._PangoAttribute* @pango_attr_strikethrough_new(i32 %104)
  store %struct._PangoAttribute* %call191, %struct._PangoAttribute** %attr, align 8
  br label %sw.epilog

sw.bb.192:                                        ; preds = %if.end.18
  %arraydecay193 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p194 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay193, i32 0, i32 0
  %gp_offset195 = load i32, i32* %gp_offset_p194
  %fits_in_gp196 = icmp ule i32 %gp_offset195, 40
  br i1 %fits_in_gp196, label %vaarg.in_reg.197, label %vaarg.in_mem.199

vaarg.in_reg.197:                                 ; preds = %sw.bb.192
  %105 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay193, i32 0, i32 3
  %reg_save_area198 = load i8*, i8** %105
  %106 = getelementptr i8, i8* %reg_save_area198, i32 %gp_offset195
  %107 = bitcast i8* %106 to i32*
  %108 = add i32 %gp_offset195, 8
  store i32 %108, i32* %gp_offset_p194
  br label %vaarg.end.203

vaarg.in_mem.199:                                 ; preds = %sw.bb.192
  %overflow_arg_area_p200 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay193, i32 0, i32 2
  %overflow_arg_area201 = load i8*, i8** %overflow_arg_area_p200
  %109 = bitcast i8* %overflow_arg_area201 to i32*
  %overflow_arg_area.next202 = getelementptr i8, i8* %overflow_arg_area201, i32 8
  store i8* %overflow_arg_area.next202, i8** %overflow_arg_area_p200
  br label %vaarg.end.203

vaarg.end.203:                                    ; preds = %vaarg.in_mem.199, %vaarg.in_reg.197
  %vaarg.addr204 = phi i32* [ %107, %vaarg.in_reg.197 ], [ %109, %vaarg.in_mem.199 ]
  %110 = load i32, i32* %vaarg.addr204
  %call205 = call %struct._PangoAttribute* @pango_attr_rise_new(i32 %110)
  store %struct._PangoAttribute* %call205, %struct._PangoAttribute** %attr, align 8
  br label %sw.epilog

sw.bb.206:                                        ; preds = %if.end.18
  %arraydecay207 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %fp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay207, i32 0, i32 1
  %fp_offset = load i32, i32* %fp_offset_p
  %fits_in_fp = icmp ule i32 %fp_offset, 160
  br i1 %fits_in_fp, label %vaarg.in_reg.208, label %vaarg.in_mem.210

vaarg.in_reg.208:                                 ; preds = %sw.bb.206
  %111 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay207, i32 0, i32 3
  %reg_save_area209 = load i8*, i8** %111
  %112 = getelementptr i8, i8* %reg_save_area209, i32 %fp_offset
  %113 = bitcast i8* %112 to double*
  %114 = add i32 %fp_offset, 16
  store i32 %114, i32* %fp_offset_p
  br label %vaarg.end.214

vaarg.in_mem.210:                                 ; preds = %sw.bb.206
  %overflow_arg_area_p211 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay207, i32 0, i32 2
  %overflow_arg_area212 = load i8*, i8** %overflow_arg_area_p211
  %115 = bitcast i8* %overflow_arg_area212 to double*
  %overflow_arg_area.next213 = getelementptr i8, i8* %overflow_arg_area212, i32 8
  store i8* %overflow_arg_area.next213, i8** %overflow_arg_area_p211
  br label %vaarg.end.214

vaarg.end.214:                                    ; preds = %vaarg.in_mem.210, %vaarg.in_reg.208
  %vaarg.addr215 = phi double* [ %113, %vaarg.in_reg.208 ], [ %115, %vaarg.in_mem.210 ]
  %116 = load double, double* %vaarg.addr215
  %call216 = call %struct._PangoAttribute* @pango_attr_scale_new(double %116)
  store %struct._PangoAttribute* %call216, %struct._PangoAttribute** %attr, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.18
  %117 = load i32, i32* %attr_type, align 4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_label_set_attributes, i32 0, i32 0), i32 %117)
  br label %sw.bb.217

sw.bb.217:                                        ; preds = %if.end.18, %sw.default
  store %struct._PangoAttribute* null, %struct._PangoAttribute** %attr, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.217, %vaarg.end.214, %vaarg.end.203, %vaarg.end.189, %vaarg.end.175, %vaarg.end.158, %vaarg.end.142, %vaarg.end.127, %vaarg.end.113, %vaarg.end.99, %vaarg.end.85, %vaarg.end.71, %vaarg.end.57, %vaarg.end.43, %vaarg.end.29
  %118 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  %tobool218 = icmp ne %struct._PangoAttribute* %118, null
  br i1 %tobool218, label %if.then.219, label %if.end.220

if.then.219:                                      ; preds = %sw.epilog
  %119 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  %start_index = getelementptr inbounds %struct._PangoAttribute, %struct._PangoAttribute* %119, i32 0, i32 1
  store i32 0, i32* %start_index, align 4
  %120 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  %end_index = getelementptr inbounds %struct._PangoAttribute, %struct._PangoAttribute* %120, i32 0, i32 2
  store i32 -1, i32* %end_index, align 4
  %121 = load %struct._PangoAttrList*, %struct._PangoAttrList** %attrs, align 8
  %122 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  call void @pango_attr_list_insert(%struct._PangoAttrList* %121, %struct._PangoAttribute* %122)
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.219, %sw.epilog
  br label %do.cond

do.cond:                                          ; preds = %if.end.220
  %123 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  %tobool221 = icmp ne %struct._PangoAttribute* %123, null
  br i1 %tobool221, label %do.body.13, label %do.end.222

do.end.222:                                       ; preds = %do.cond
  %arraydecay223 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay223224 = bitcast %struct.__va_list_tag* %arraydecay223 to i8*
  call void @llvm.va_end(i8* %arraydecay223224)
  %124 = load %struct._GtkLabel*, %struct._GtkLabel** %label.addr, align 8
  %125 = load %struct._PangoAttrList*, %struct._PangoAttrList** %attrs, align 8
  call void @gtk_label_set_attributes(%struct._GtkLabel* %124, %struct._PangoAttrList* %125)
  %126 = load %struct._PangoAttrList*, %struct._PangoAttrList** %attrs, align 8
  call void @pango_attr_list_unref(%struct._PangoAttrList* %126)
  br label %return

return:                                           ; preds = %do.end.222, %if.else.9
  ret void
}

declare %struct._PangoAttrList* @pango_attr_list_new() #1

declare %struct._PangoAttribute* @pango_attr_language_new(%struct._PangoLanguage*) #1

declare %struct._PangoAttribute* @pango_attr_family_new(i8*) #1

declare %struct._PangoAttribute* @pango_attr_style_new(i32) #1

declare %struct._PangoAttribute* @pango_attr_weight_new(i32) #1

declare %struct._PangoAttribute* @pango_attr_variant_new(i32) #1

declare %struct._PangoAttribute* @pango_attr_stretch_new(i32) #1

declare %struct._PangoAttribute* @pango_attr_size_new(i32) #1

declare %struct._PangoAttribute* @pango_attr_font_desc_new(%struct._PangoFontDescription*) #1

declare %struct._PangoAttribute* @pango_attr_foreground_new(i16 zeroext, i16 zeroext, i16 zeroext) #1

declare %struct._PangoAttribute* @pango_attr_background_new(i16 zeroext, i16 zeroext, i16 zeroext) #1

declare %struct._PangoAttribute* @pango_attr_underline_new(i32) #1

declare %struct._PangoAttribute* @pango_attr_strikethrough_new(i32) #1

declare %struct._PangoAttribute* @pango_attr_rise_new(i32) #1

declare %struct._PangoAttribute* @pango_attr_scale_new(double) #1

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
  call void @g_logv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare void @pango_attr_list_insert(%struct._PangoAttrList*, %struct._PangoAttribute*) #1

declare void @gtk_label_set_attributes(%struct._GtkLabel*, %struct._PangoAttrList*) #1

declare void @pango_attr_list_unref(%struct._PangoAttrList*) #1

declare void @gtk_spin_button_set_value(%struct._GtkSpinButton*, double) #1

declare void @g_slice_free1(i64, i8*) #1

declare double @gimp_size_entry_get_refval(%struct._GimpSizeEntry*, i32) #1

declare i32 @gimp_chain_button_get_active(%struct._GimpChainButton*) #1

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @g_object_get(i8*, i8*, ...) #1

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare i8* @g_type_class_peek(i64) #1

declare %struct._GtkWidget* @gimp_size_entry_get_help_widget(%struct._GimpSizeEntry*, i32) #1

declare %struct._GList* @gtk_container_get_children(%struct._GtkContainer*) #1

declare void @g_list_free(%struct._GList*) #1

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
