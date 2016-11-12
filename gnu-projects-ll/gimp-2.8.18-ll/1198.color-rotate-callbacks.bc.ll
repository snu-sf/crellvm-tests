; ModuleID = './plug-ins/color-rotate/color-rotate-callbacks.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RcmParams = type { i32, i32, i32, i32, %struct._GimpDrawable*, %struct._GimpDrawable*, %struct.ReducedImage*, %struct.RcmCircle*, %struct.RcmCircle*, %struct.RcmGray*, %struct.RcmBna* }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct.ReducedImage = type { i32, i32, i8*, double*, i8* }
%struct.RcmCircle = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, float*, i32, %struct.RcmAngle*, float }
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
%struct.RcmAngle = type { float, float, i32 }
%struct.RcmGray = type { %struct._GtkWidget*, %struct._GtkWidget*, float, float, float, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32 }
%struct.RcmBna = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkSpinButton = type { %struct._GtkEntry, %struct._GtkAdjustment*, %struct._GdkDrawable*, i32, double, double, i32, i24 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GdkEventExpose = type { i32, %struct._GdkDrawable*, i8, %struct._GdkRectangle, %struct._GdkRegion*, i32 }
%struct._GdkRegion = type opaque
%struct._cairo = type opaque
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkEventMotion = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i16, %struct._GdkDevice*, double, double }

@.str = private unnamed_addr constant [4 x i8] c"deg\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"rad\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"rad/pi\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@Current = external global %struct.RcmParams, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"color_rotate_cw\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"color_rotate_ccw\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"use_stock\00", align 1

; Function Attrs: nounwind uwtable
define float @rcm_units_factor(i32 %units) #0 {
entry:
  %retval = alloca float, align 4
  %units.addr = alloca i32, align 4
  store i32 %units, i32* %units.addr, align 4
  %0 = load i32, i32* %units.addr, align 4
  switch i32 %0, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store float 0x404CA5DC20000000, float* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store float 1.000000e+00, float* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store float 0x3FD45F3060000000, float* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store float -1.000000e+00, float* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load float, float* %retval
  ret float %1
}

; Function Attrs: nounwind uwtable
define i8* @rcm_units_string(i32 %units) #0 {
entry:
  %retval = alloca i8*, align 8
  %units.addr = alloca i32, align 4
  store i32 %units, i32* %units.addr, align 4
  %0 = load i32, i32* %units.addr, align 4
  switch i32 %0, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8** %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i8*, i8** %retval
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define void @rcm_360_degrees(%struct._GtkWidget* %button, %struct.RcmCircle* %circle) #0 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %circle.addr = alloca %struct.RcmCircle*, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store %struct.RcmCircle* %circle, %struct.RcmCircle** %circle.addr, align 8
  %0 = load %struct.RcmCircle*, %struct.RcmCircle** %circle.addr, align 8
  %preview = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %0, i32 0, i32 0
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %1)
  %2 = load %struct.RcmCircle*, %struct.RcmCircle** %circle.addr, align 8
  %angle = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %2, i32 0, i32 19
  %3 = load %struct.RcmAngle*, %struct.RcmAngle** %angle, align 8
  %alpha = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %3, i32 0, i32 0
  %4 = load float, float* %alpha, align 4
  %conv = fpext float %4 to double
  %5 = load %struct.RcmCircle*, %struct.RcmCircle** %circle.addr, align 8
  %angle1 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %5, i32 0, i32 19
  %6 = load %struct.RcmAngle*, %struct.RcmAngle** %angle1, align 8
  %cw_ccw = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %6, i32 0, i32 2
  %7 = load i32, i32* %cw_ccw, align 4
  %conv2 = sitofp i32 %7 to double
  %mul = fmul double %conv2, 1.000000e-03
  %sub = fsub double %conv, %mul
  %conv3 = fptrunc double %sub to float
  %8 = load %struct.RcmCircle*, %struct.RcmCircle** %circle.addr, align 8
  %angle4 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %8, i32 0, i32 19
  %9 = load %struct.RcmAngle*, %struct.RcmAngle** %angle4, align 8
  %beta = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %9, i32 0, i32 1
  store float %conv3, float* %beta, align 4
  %10 = load %struct.RcmBna*, %struct.RcmBna** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 10), align 8
  %after = getelementptr inbounds %struct.RcmBna, %struct.RcmBna* %10, i32 0, i32 3
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %after, align 8
  call void @rcm_render_preview(%struct._GtkWidget* %11)
  ret void
}

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #1

declare void @rcm_render_preview(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @rcm_cw_ccw(%struct._GtkWidget* %button, %struct.RcmCircle* %circle) #0 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %circle.addr = alloca %struct.RcmCircle*, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store %struct.RcmCircle* %circle, %struct.RcmCircle** %circle.addr, align 8
  %0 = load %struct.RcmCircle*, %struct.RcmCircle** %circle.addr, align 8
  %angle = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %0, i32 0, i32 19
  %1 = load %struct.RcmAngle*, %struct.RcmAngle** %angle, align 8
  %cw_ccw = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %1, i32 0, i32 2
  %2 = load i32, i32* %cw_ccw, align 4
  %mul = mul nsw i32 %2, -1
  store i32 %mul, i32* %cw_ccw, align 4
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to i8*
  %5 = load %struct.RcmCircle*, %struct.RcmCircle** %circle.addr, align 8
  %angle1 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %5, i32 0, i32 19
  %6 = load %struct.RcmAngle*, %struct.RcmAngle** %angle1, align 8
  %cw_ccw2 = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %6, i32 0, i32 2
  %7 = load i32, i32* %cw_ccw2, align 4
  %cmp = icmp sgt i32 %7, 0
  %cond = select i1 %cmp, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0)
  call void (i8*, i8*, ...) @g_object_set(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* %cond, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32 1, i8* null)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %9 = load %struct.RcmCircle*, %struct.RcmCircle** %circle.addr, align 8
  call void @rcm_a_to_b(%struct._GtkWidget* %8, %struct.RcmCircle* %9)
  ret void
}

declare void @g_object_set(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @rcm_a_to_b(%struct._GtkWidget* %button, %struct.RcmCircle* %circle) #0 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %circle.addr = alloca %struct.RcmCircle*, align 8
  %t = alloca float, align 4
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store %struct.RcmCircle* %circle, %struct.RcmCircle** %circle.addr, align 8
  %0 = load %struct.RcmCircle*, %struct.RcmCircle** %circle.addr, align 8
  %preview = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %0, i32 0, i32 0
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %1)
  %2 = load %struct.RcmCircle*, %struct.RcmCircle** %circle.addr, align 8
  %angle = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %2, i32 0, i32 19
  %3 = load %struct.RcmAngle*, %struct.RcmAngle** %angle, align 8
  %alpha = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %3, i32 0, i32 0
  %4 = load float, float* %alpha, align 4
  store float %4, float* %t, align 4
  %5 = load %struct.RcmCircle*, %struct.RcmCircle** %circle.addr, align 8
  %angle1 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %5, i32 0, i32 19
  %6 = load %struct.RcmAngle*, %struct.RcmAngle** %angle1, align 8
  %beta = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %6, i32 0, i32 1
  %7 = load float, float* %beta, align 4
  %8 = load %struct.RcmCircle*, %struct.RcmCircle** %circle.addr, align 8
  %angle2 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %8, i32 0, i32 19
  %9 = load %struct.RcmAngle*, %struct.RcmAngle** %angle2, align 8
  %alpha3 = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %9, i32 0, i32 0
  store float %7, float* %alpha3, align 4
  %10 = load float, float* %t, align 4
  %11 = load %struct.RcmCircle*, %struct.RcmCircle** %circle.addr, align 8
  %angle4 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %11, i32 0, i32 19
  %12 = load %struct.RcmAngle*, %struct.RcmAngle** %angle4, align 8
  %beta5 = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %12, i32 0, i32 1
  store float %10, float* %beta5, align 4
  %13 = load %struct.RcmBna*, %struct.RcmBna** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 10), align 8
  %after = getelementptr inbounds %struct.RcmBna, %struct.RcmBna* %13, i32 0, i32 3
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %after, align 8
  call void @rcm_render_preview(%struct._GtkWidget* %14)
  ret void
}

; Function Attrs: nounwind uwtable
define void @rcm_switch_to_degrees(%struct._GtkWidget* %button, i8** %value) #0 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %value.addr = alloca i8**, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store i8** %value, i8*** %value.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, i32* getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 2), align 4
  %3 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 8), align 8
  %alpha_entry = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %3, i32 0, i32 13
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %alpha_entry, align 8
  %5 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 8), align 8
  %angle = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %5, i32 0, i32 19
  %6 = load %struct.RcmAngle*, %struct.RcmAngle** %angle, align 8
  %alpha = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %6, i32 0, i32 0
  %7 = load float, float* %alpha, align 4
  %8 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 8), align 8
  %alpha_units_label = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %8, i32 0, i32 14
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %alpha_units_label, align 8
  call void @rcm_spinbutton_to_degrees(%struct._GtkWidget* %4, float %7, %struct._GtkWidget* %9)
  %10 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 8), align 8
  %beta_entry = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %10, i32 0, i32 15
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %beta_entry, align 8
  %12 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 8), align 8
  %angle3 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %12, i32 0, i32 19
  %13 = load %struct.RcmAngle*, %struct.RcmAngle** %angle3, align 8
  %beta = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %13, i32 0, i32 1
  %14 = load float, float* %beta, align 4
  %15 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 8), align 8
  %beta_units_label = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %15, i32 0, i32 16
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %beta_units_label, align 8
  call void @rcm_spinbutton_to_degrees(%struct._GtkWidget* %11, float %14, %struct._GtkWidget* %16)
  %17 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 7), align 8
  %alpha_entry4 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %17, i32 0, i32 13
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %alpha_entry4, align 8
  %19 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 7), align 8
  %angle5 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %19, i32 0, i32 19
  %20 = load %struct.RcmAngle*, %struct.RcmAngle** %angle5, align 8
  %alpha6 = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %20, i32 0, i32 0
  %21 = load float, float* %alpha6, align 4
  %22 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 7), align 8
  %alpha_units_label7 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %22, i32 0, i32 14
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %alpha_units_label7, align 8
  call void @rcm_spinbutton_to_degrees(%struct._GtkWidget* %18, float %21, %struct._GtkWidget* %23)
  %24 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 7), align 8
  %beta_entry8 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %24, i32 0, i32 15
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %beta_entry8, align 8
  %26 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 7), align 8
  %angle9 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %26, i32 0, i32 19
  %27 = load %struct.RcmAngle*, %struct.RcmAngle** %angle9, align 8
  %beta10 = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %27, i32 0, i32 1
  %28 = load float, float* %beta10, align 4
  %29 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 7), align 8
  %beta_units_label11 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %29, i32 0, i32 16
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %beta_units_label11, align 8
  call void @rcm_spinbutton_to_degrees(%struct._GtkWidget* %25, float %28, %struct._GtkWidget* %30)
  %31 = load %struct.RcmGray*, %struct.RcmGray** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 9), align 8
  %hue_entry = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %31, i32 0, i32 5
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %hue_entry, align 8
  %33 = load %struct.RcmGray*, %struct.RcmGray** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 9), align 8
  %hue = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %33, i32 0, i32 3
  %34 = load float, float* %hue, align 4
  %35 = load %struct.RcmGray*, %struct.RcmGray** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 9), align 8
  %hue_units_label = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %35, i32 0, i32 6
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %hue_units_label, align 8
  call void @rcm_spinbutton_to_degrees(%struct._GtkWidget* %32, float %34, %struct._GtkWidget* %36)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @rcm_spinbutton_to_degrees(%struct._GtkWidget* %button, float %value, %struct._GtkWidget* %label) #0 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %value.addr = alloca float, align 4
  %label.addr = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkAdjustment*, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store float %value, float* %value.addr, align 4
  store %struct._GtkWidget* %label, %struct._GtkWidget** %label.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_spin_button_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkSpinButton*
  %call2 = call %struct._GtkAdjustment* @gtk_spin_button_get_adjustment(%struct._GtkSpinButton* %2)
  store %struct._GtkAdjustment* %call2, %struct._GtkAdjustment** %adj, align 8
  %3 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %4 = load float, float* %value.addr, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 2), align 4
  %call3 = call float @rcm_units_factor(i32 %5)
  %mul = fmul float %4, %call3
  %conv = fpext float %mul to double
  %6 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call4 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %6)
  %7 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call5 = call double @gtk_adjustment_get_page_size(%struct._GtkAdjustment* %7)
  call void @gtk_adjustment_configure(%struct._GtkAdjustment* %3, double %conv, double %call4, double 3.600000e+02, double 1.000000e-02, double 1.000000e+00, double %call5)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_spin_button_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call6)
  %10 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkSpinButton*
  call void @gtk_spin_button_set_digits(%struct._GtkSpinButton* %10, i32 2)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %label.addr, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_label_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call8)
  %13 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkLabel*
  %14 = load i32, i32* getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 2), align 4
  %call10 = call i8* @rcm_units_string(i32 %14)
  call void @gtk_label_set_text(%struct._GtkLabel* %13, i8* %call10)
  ret void
}

; Function Attrs: nounwind uwtable
define void @rcm_switch_to_radians(%struct._GtkWidget* %button, i8** %value) #0 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %value.addr = alloca i8**, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store i8** %value, i8*** %value.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 3, i32* getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 2), align 4
  %3 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 8), align 8
  %alpha_entry = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %3, i32 0, i32 13
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %alpha_entry, align 8
  %5 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 8), align 8
  %angle = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %5, i32 0, i32 19
  %6 = load %struct.RcmAngle*, %struct.RcmAngle** %angle, align 8
  %alpha = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %6, i32 0, i32 0
  %7 = load float, float* %alpha, align 4
  %8 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 8), align 8
  %alpha_units_label = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %8, i32 0, i32 14
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %alpha_units_label, align 8
  call void @rcm_spinbutton_to_radians(%struct._GtkWidget* %4, float %7, %struct._GtkWidget* %9)
  %10 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 8), align 8
  %beta_entry = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %10, i32 0, i32 15
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %beta_entry, align 8
  %12 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 8), align 8
  %angle3 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %12, i32 0, i32 19
  %13 = load %struct.RcmAngle*, %struct.RcmAngle** %angle3, align 8
  %beta = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %13, i32 0, i32 1
  %14 = load float, float* %beta, align 4
  %15 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 8), align 8
  %beta_units_label = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %15, i32 0, i32 16
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %beta_units_label, align 8
  call void @rcm_spinbutton_to_radians(%struct._GtkWidget* %11, float %14, %struct._GtkWidget* %16)
  %17 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 7), align 8
  %alpha_entry4 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %17, i32 0, i32 13
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %alpha_entry4, align 8
  %19 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 7), align 8
  %angle5 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %19, i32 0, i32 19
  %20 = load %struct.RcmAngle*, %struct.RcmAngle** %angle5, align 8
  %alpha6 = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %20, i32 0, i32 0
  %21 = load float, float* %alpha6, align 4
  %22 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 7), align 8
  %alpha_units_label7 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %22, i32 0, i32 14
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %alpha_units_label7, align 8
  call void @rcm_spinbutton_to_radians(%struct._GtkWidget* %18, float %21, %struct._GtkWidget* %23)
  %24 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 7), align 8
  %beta_entry8 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %24, i32 0, i32 15
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %beta_entry8, align 8
  %26 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 7), align 8
  %angle9 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %26, i32 0, i32 19
  %27 = load %struct.RcmAngle*, %struct.RcmAngle** %angle9, align 8
  %beta10 = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %27, i32 0, i32 1
  %28 = load float, float* %beta10, align 4
  %29 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 7), align 8
  %beta_units_label11 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %29, i32 0, i32 16
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %beta_units_label11, align 8
  call void @rcm_spinbutton_to_radians(%struct._GtkWidget* %25, float %28, %struct._GtkWidget* %30)
  %31 = load %struct.RcmGray*, %struct.RcmGray** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 9), align 8
  %hue_entry = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %31, i32 0, i32 5
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %hue_entry, align 8
  %33 = load %struct.RcmGray*, %struct.RcmGray** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 9), align 8
  %hue = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %33, i32 0, i32 3
  %34 = load float, float* %hue, align 4
  %35 = load %struct.RcmGray*, %struct.RcmGray** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 9), align 8
  %hue_units_label = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %35, i32 0, i32 6
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %hue_units_label, align 8
  call void @rcm_spinbutton_to_radians(%struct._GtkWidget* %32, float %34, %struct._GtkWidget* %36)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rcm_spinbutton_to_radians(%struct._GtkWidget* %button, float %value, %struct._GtkWidget* %label) #0 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %value.addr = alloca float, align 4
  %label.addr = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkAdjustment*, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store float %value, float* %value.addr, align 4
  store %struct._GtkWidget* %label, %struct._GtkWidget** %label.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_spin_button_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkSpinButton*
  %call2 = call %struct._GtkAdjustment* @gtk_spin_button_get_adjustment(%struct._GtkSpinButton* %2)
  store %struct._GtkAdjustment* %call2, %struct._GtkAdjustment** %adj, align 8
  %3 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %4 = load float, float* %value.addr, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 2), align 4
  %call3 = call float @rcm_units_factor(i32 %5)
  %mul = fmul float %4, %call3
  %conv = fpext float %mul to double
  %6 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call4 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %6)
  %7 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call5 = call double @gtk_adjustment_get_page_size(%struct._GtkAdjustment* %7)
  call void @gtk_adjustment_configure(%struct._GtkAdjustment* %3, double %conv, double %call4, double 0x401921FB54442D18, double 1.000000e-04, double 1.000000e-03, double %call5)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_spin_button_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call6)
  %10 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkSpinButton*
  call void @gtk_spin_button_set_digits(%struct._GtkSpinButton* %10, i32 4)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %label.addr, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_label_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call8)
  %13 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkLabel*
  %14 = load i32, i32* getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 2), align 4
  %call10 = call i8* @rcm_units_string(i32 %14)
  call void @gtk_label_set_text(%struct._GtkLabel* %13, i8* %call10)
  ret void
}

; Function Attrs: nounwind uwtable
define void @rcm_switch_to_radians_over_PI(%struct._GtkWidget* %button, i8** %value) #0 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %value.addr = alloca i8**, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store i8** %value, i8*** %value.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 4, i32* getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 2), align 4
  %3 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 8), align 8
  %alpha_entry = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %3, i32 0, i32 13
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %alpha_entry, align 8
  %5 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 8), align 8
  %angle = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %5, i32 0, i32 19
  %6 = load %struct.RcmAngle*, %struct.RcmAngle** %angle, align 8
  %alpha = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %6, i32 0, i32 0
  %7 = load float, float* %alpha, align 4
  %8 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 8), align 8
  %alpha_units_label = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %8, i32 0, i32 14
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %alpha_units_label, align 8
  call void @rcm_spinbutton_to_radians_over_PI(%struct._GtkWidget* %4, float %7, %struct._GtkWidget* %9)
  %10 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 8), align 8
  %beta_entry = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %10, i32 0, i32 15
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %beta_entry, align 8
  %12 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 8), align 8
  %angle3 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %12, i32 0, i32 19
  %13 = load %struct.RcmAngle*, %struct.RcmAngle** %angle3, align 8
  %beta = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %13, i32 0, i32 1
  %14 = load float, float* %beta, align 4
  %15 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 8), align 8
  %beta_units_label = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %15, i32 0, i32 16
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %beta_units_label, align 8
  call void @rcm_spinbutton_to_radians_over_PI(%struct._GtkWidget* %11, float %14, %struct._GtkWidget* %16)
  %17 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 7), align 8
  %alpha_entry4 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %17, i32 0, i32 13
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %alpha_entry4, align 8
  %19 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 7), align 8
  %angle5 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %19, i32 0, i32 19
  %20 = load %struct.RcmAngle*, %struct.RcmAngle** %angle5, align 8
  %alpha6 = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %20, i32 0, i32 0
  %21 = load float, float* %alpha6, align 4
  %22 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 7), align 8
  %alpha_units_label7 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %22, i32 0, i32 14
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %alpha_units_label7, align 8
  call void @rcm_spinbutton_to_radians_over_PI(%struct._GtkWidget* %18, float %21, %struct._GtkWidget* %23)
  %24 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 7), align 8
  %beta_entry8 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %24, i32 0, i32 15
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %beta_entry8, align 8
  %26 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 7), align 8
  %angle9 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %26, i32 0, i32 19
  %27 = load %struct.RcmAngle*, %struct.RcmAngle** %angle9, align 8
  %beta10 = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %27, i32 0, i32 1
  %28 = load float, float* %beta10, align 4
  %29 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 7), align 8
  %beta_units_label11 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %29, i32 0, i32 16
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %beta_units_label11, align 8
  call void @rcm_spinbutton_to_radians_over_PI(%struct._GtkWidget* %25, float %28, %struct._GtkWidget* %30)
  %31 = load %struct.RcmGray*, %struct.RcmGray** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 9), align 8
  %hue_entry = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %31, i32 0, i32 5
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %hue_entry, align 8
  %33 = load %struct.RcmGray*, %struct.RcmGray** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 9), align 8
  %hue = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %33, i32 0, i32 3
  %34 = load float, float* %hue, align 4
  %35 = load %struct.RcmGray*, %struct.RcmGray** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 9), align 8
  %hue_units_label = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %35, i32 0, i32 6
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %hue_units_label, align 8
  call void @rcm_spinbutton_to_radians_over_PI(%struct._GtkWidget* %32, float %34, %struct._GtkWidget* %36)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rcm_spinbutton_to_radians_over_PI(%struct._GtkWidget* %button, float %value, %struct._GtkWidget* %label) #0 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %value.addr = alloca float, align 4
  %label.addr = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkAdjustment*, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store float %value, float* %value.addr, align 4
  store %struct._GtkWidget* %label, %struct._GtkWidget** %label.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_spin_button_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkSpinButton*
  %call2 = call %struct._GtkAdjustment* @gtk_spin_button_get_adjustment(%struct._GtkSpinButton* %2)
  store %struct._GtkAdjustment* %call2, %struct._GtkAdjustment** %adj, align 8
  %3 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %4 = load float, float* %value.addr, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 2), align 4
  %call3 = call float @rcm_units_factor(i32 %5)
  %mul = fmul float %4, %call3
  %conv = fpext float %mul to double
  %6 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call4 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %6)
  %7 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call5 = call double @gtk_adjustment_get_page_size(%struct._GtkAdjustment* %7)
  call void @gtk_adjustment_configure(%struct._GtkAdjustment* %3, double %conv, double %call4, double 2.000000e+00, double 1.000000e-04, double 1.000000e-03, double %call5)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_spin_button_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call6)
  %10 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkSpinButton*
  call void @gtk_spin_button_set_digits(%struct._GtkSpinButton* %10, i32 4)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %label.addr, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_label_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call8)
  %13 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkLabel*
  %14 = load i32, i32* getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 2), align 4
  %call10 = call i8* @rcm_units_string(i32 %14)
  call void @gtk_label_set_text(%struct._GtkLabel* %13, i8* %call10)
  ret void
}

; Function Attrs: nounwind uwtable
define void @rcm_switch_to_gray_to(%struct._GtkWidget* %button, i8** %value) #0 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %value.addr = alloca i8**, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store i8** %value, i8*** %value.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 6, i32* getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 3), align 4
  %3 = load %struct.RcmBna*, %struct.RcmBna** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 10), align 8
  %after = getelementptr inbounds %struct.RcmBna, %struct.RcmBna* %3, i32 0, i32 3
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %after, align 8
  call void @rcm_render_preview(%struct._GtkWidget* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @rcm_switch_to_gray_from(%struct._GtkWidget* %button, i8** %value) #0 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %value.addr = alloca i8**, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store i8** %value, i8*** %value.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 5, i32* getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 3), align 4
  %3 = load %struct.RcmBna*, %struct.RcmBna** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 10), align 8
  %after = getelementptr inbounds %struct.RcmBna, %struct.RcmBna* %3, i32 0, i32 3
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %after, align 8
  call void @rcm_render_preview(%struct._GtkWidget* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @rcm_preview_as_you_drag(%struct._GtkWidget* %button, i8** %value) #0 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %value.addr = alloca i8**, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store i8** %value, i8*** %value.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %2)
  store i32 %call2, i32* getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 1), align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @rcm_combo_callback(%struct._GtkWidget* %widget, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %value = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_combo_box_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIntComboBox*
  %call2 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %2, i32* %value)
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 4), align 8
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 5), align 8
  %5 = load i32, i32* %value, align 4
  %call3 = call %struct.ReducedImage* @rcm_reduce_image(%struct._GimpDrawable* %3, %struct._GimpDrawable* %4, i32 150, i32 %5)
  store %struct.ReducedImage* %call3, %struct.ReducedImage** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 6), align 8
  %6 = load %struct.RcmBna*, %struct.RcmBna** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 10), align 8
  %before = getelementptr inbounds %struct.RcmBna, %struct.RcmBna* %6, i32 0, i32 2
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %before, align 8
  %8 = load %struct.ReducedImage*, %struct.ReducedImage** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 6), align 8
  %width = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %8, i32 0, i32 0
  %9 = load i32, i32* %width, align 4
  %10 = load %struct.ReducedImage*, %struct.ReducedImage** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 6), align 8
  %height = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %10, i32 0, i32 1
  %11 = load i32, i32* %height, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %7, i32 %9, i32 %11)
  %12 = load %struct.RcmBna*, %struct.RcmBna** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 10), align 8
  %after = getelementptr inbounds %struct.RcmBna, %struct.RcmBna* %12, i32 0, i32 3
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %after, align 8
  %14 = load %struct.ReducedImage*, %struct.ReducedImage** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 6), align 8
  %width4 = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %14, i32 0, i32 0
  %15 = load i32, i32* %width4, align 4
  %16 = load %struct.ReducedImage*, %struct.ReducedImage** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 6), align 8
  %height5 = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %16, i32 0, i32 1
  %17 = load i32, i32* %height5, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %13, i32 %15, i32 %17)
  ret void
}

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #2

declare %struct.ReducedImage* @rcm_reduce_image(%struct._GimpDrawable*, %struct._GimpDrawable*, i32, i32) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @rcm_expose_event(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event, %struct.RcmCircle* %circle) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %circle.addr = alloca %struct.RcmCircle*, align 8
  %cr = alloca %struct._cairo*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  store %struct.RcmCircle* %circle, %struct.RcmCircle** %circle.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %0)
  %call1 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %call)
  store %struct._cairo* %call1, %struct._cairo** %cr, align 8
  %1 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_translate(%struct._cairo* %1, double 5.000000e-01, double 5.000000e-01)
  %2 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %3 = load %struct.RcmCircle*, %struct.RcmCircle** %circle.addr, align 8
  %angle = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %3, i32 0, i32 19
  %4 = load %struct.RcmAngle*, %struct.RcmAngle** %angle, align 8
  call void @color_rotate_draw_arrows(%struct._cairo* %2, %struct.RcmAngle* %4)
  %5 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %5)
  ret i32 1
}

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare void @cairo_translate(%struct._cairo*, double, double) #1

declare void @color_rotate_draw_arrows(%struct._cairo*, %struct.RcmAngle*) #1

declare void @cairo_destroy(%struct._cairo*) #1

; Function Attrs: nounwind uwtable
define i32 @rcm_button_press_event(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event, %struct.RcmCircle* %circle) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %circle.addr = alloca %struct.RcmCircle*, align 8
  %clicked_angle = alloca float, align 4
  %alpha = alloca float*, align 8
  %beta = alloca float*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  store %struct.RcmCircle* %circle, %struct.RcmCircle** %circle.addr, align 8
  %0 = load %struct.RcmCircle*, %struct.RcmCircle** %circle.addr, align 8
  %angle = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %0, i32 0, i32 19
  %1 = load %struct.RcmAngle*, %struct.RcmAngle** %angle, align 8
  %alpha1 = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %1, i32 0, i32 0
  store float* %alpha1, float** %alpha, align 8
  %2 = load %struct.RcmCircle*, %struct.RcmCircle** %circle.addr, align 8
  %angle2 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %2, i32 0, i32 19
  %3 = load %struct.RcmAngle*, %struct.RcmAngle** %angle2, align 8
  %beta3 = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %3, i32 0, i32 1
  store float* %beta3, float** %beta, align 8
  %4 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %y = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %4, i32 0, i32 5
  %5 = load double, double* %y, align 8
  %sub = fsub double 6.400000e+01, %5
  %conv = fptrunc double %sub to float
  %6 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %x = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %6, i32 0, i32 4
  %7 = load double, double* %x, align 8
  %sub4 = fsub double %7, 6.400000e+01
  %conv5 = fptrunc double %sub4 to float
  %call = call float @arctg(float %conv, float %conv5)
  %call6 = call float @angle_mod_2PI(float %call)
  store float %call6, float* %clicked_angle, align 4
  %8 = load float, float* %clicked_angle, align 4
  %9 = load %struct.RcmCircle*, %struct.RcmCircle** %circle.addr, align 8
  %prev_clicked = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %9, i32 0, i32 20
  store float %8, float* %prev_clicked, align 4
  %10 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %y7 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %10, i32 0, i32 5
  %11 = load double, double* %y7, align 8
  %sub8 = fsub double %11, 6.400000e+01
  %12 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %y9 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %12, i32 0, i32 5
  %13 = load double, double* %y9, align 8
  %sub10 = fsub double %13, 6.400000e+01
  %mul = fmul double %sub8, %sub10
  %14 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %x11 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %14, i32 0, i32 4
  %15 = load double, double* %x11, align 8
  %sub12 = fsub double %15, 6.400000e+01
  %16 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %x13 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %16, i32 0, i32 4
  %17 = load double, double* %x13, align 8
  %sub14 = fsub double %17, 6.400000e+01
  %mul15 = fmul double %sub12, %sub14
  %add = fadd double %mul, %mul15
  %call16 = call double @sqrt(double %add) #5
  %cmp = fcmp ogt double %call16, 1.800000e+01
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %18 = load float*, float** %alpha, align 8
  %19 = load float, float* %18, align 4
  %20 = load float*, float** %beta, align 8
  %21 = load float, float* %20, align 4
  %22 = load float, float* %clicked_angle, align 4
  %call18 = call float @min_prox(float %19, float %21, float %22)
  %conv19 = fpext float %call18 to double
  %cmp20 = fcmp olt double %conv19, 0x3FD0C152382D7365
  br i1 %cmp20, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %23 = load %struct.RcmCircle*, %struct.RcmCircle** %circle.addr, align 8
  %mode = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %23, i32 0, i32 18
  store i32 0, i32* %mode, align 4
  %24 = load float*, float** %alpha, align 8
  %25 = load float*, float** %beta, align 8
  %26 = load float, float* %clicked_angle, align 4
  %call22 = call float* @closest(float* %24, float* %25, float %26)
  %27 = load %struct.RcmCircle*, %struct.RcmCircle** %circle.addr, align 8
  %target = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %27, i32 0, i32 17
  store float* %call22, float** %target, align 8
  %28 = load %struct.RcmCircle*, %struct.RcmCircle** %circle.addr, align 8
  %target23 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %28, i32 0, i32 17
  %29 = load float*, float** %target23, align 8
  %30 = load float, float* %29, align 4
  %31 = load float, float* %clicked_angle, align 4
  %cmp24 = fcmp une float %30, %31
  br i1 %cmp24, label %if.then.26, label %if.end.43

if.then.26:                                       ; preds = %if.then
  %32 = load float, float* %clicked_angle, align 4
  %33 = load %struct.RcmCircle*, %struct.RcmCircle** %circle.addr, align 8
  %target27 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %33, i32 0, i32 17
  %34 = load float*, float** %target27, align 8
  store float %32, float* %34, align 4
  %35 = load %struct.RcmCircle*, %struct.RcmCircle** %circle.addr, align 8
  %preview = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %35, i32 0, i32 0
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %36)
  %37 = load %struct.RcmCircle*, %struct.RcmCircle** %circle.addr, align 8
  %alpha_entry = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %37, i32 0, i32 13
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %alpha_entry, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_spin_button_get_type() #4
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call28)
  %40 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkSpinButton*
  %41 = load %struct.RcmCircle*, %struct.RcmCircle** %circle.addr, align 8
  %angle30 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %41, i32 0, i32 19
  %42 = load %struct.RcmAngle*, %struct.RcmAngle** %angle30, align 8
  %alpha31 = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %42, i32 0, i32 0
  %43 = load float, float* %alpha31, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 2), align 4
  %call32 = call float @rcm_units_factor(i32 %44)
  %mul33 = fmul float %43, %call32
  %conv34 = fpext float %mul33 to double
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %40, double %conv34)
  %45 = load %struct.RcmCircle*, %struct.RcmCircle** %circle.addr, align 8
  %beta_entry = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %45, i32 0, i32 15
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %beta_entry, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_spin_button_get_type() #4
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call35)
  %48 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkSpinButton*
  %49 = load %struct.RcmCircle*, %struct.RcmCircle** %circle.addr, align 8
  %angle37 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %49, i32 0, i32 19
  %50 = load %struct.RcmAngle*, %struct.RcmAngle** %angle37, align 8
  %beta38 = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %50, i32 0, i32 1
  %51 = load float, float* %beta38, align 4
  %52 = load i32, i32* getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 2), align 4
  %call39 = call float @rcm_units_factor(i32 %52)
  %mul40 = fmul float %51, %call39
  %conv41 = fpext float %mul40 to double
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %48, double %conv41)
  %53 = load i32, i32* getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 1), align 4
  %tobool = icmp ne i32 %53, 0
  br i1 %tobool, label %if.then.42, label %if.end

if.then.42:                                       ; preds = %if.then.26
  %54 = load %struct.RcmBna*, %struct.RcmBna** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 10), align 8
  %after = getelementptr inbounds %struct.RcmBna, %struct.RcmBna* %54, i32 0, i32 3
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %after, align 8
  call void @rcm_render_preview(%struct._GtkWidget* %55)
  br label %if.end

if.end:                                           ; preds = %if.then.42, %if.then.26
  br label %if.end.43

if.end.43:                                        ; preds = %if.end, %if.then
  br label %if.end.45

if.else:                                          ; preds = %land.lhs.true, %entry
  %56 = load %struct.RcmCircle*, %struct.RcmCircle** %circle.addr, align 8
  %mode44 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %56, i32 0, i32 18
  store i32 1, i32* %mode44, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.else, %if.end.43
  ret i32 1
}

declare float @angle_mod_2PI(float) #1

declare float @arctg(float, float) #1

; Function Attrs: nounwind
declare double @sqrt(double) #3

declare float @min_prox(float, float, float) #1

declare float* @closest(float*, float*, float) #1

declare void @gtk_spin_button_set_value(%struct._GtkSpinButton*, double) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_spin_button_get_type() #2

; Function Attrs: nounwind uwtable
define i32 @rcm_release_event(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event, %struct.RcmCircle* %circle) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %circle.addr = alloca %struct.RcmCircle*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  store %struct.RcmCircle* %circle, %struct.RcmCircle** %circle.addr, align 8
  %0 = load %struct.RcmBna*, %struct.RcmBna** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 10), align 8
  %after = getelementptr inbounds %struct.RcmBna, %struct.RcmBna* %0, i32 0, i32 3
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %after, align 8
  call void @rcm_render_preview(%struct._GtkWidget* %1)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @rcm_motion_notify_event(%struct._GtkWidget* %widget, %struct._GdkEventMotion* %event, %struct.RcmCircle* %circle) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventMotion*, align 8
  %circle.addr = alloca %struct.RcmCircle*, align 8
  %clicked_angle = alloca float, align 4
  %delta = alloca float, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventMotion* %event, %struct._GdkEventMotion** %event.addr, align 8
  store %struct.RcmCircle* %circle, %struct.RcmCircle** %circle.addr, align 8
  %0 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %y = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %0, i32 0, i32 5
  %1 = load double, double* %y, align 8
  %sub = fsub double 6.400000e+01, %1
  %conv = fptrunc double %sub to float
  %2 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %x = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %2, i32 0, i32 4
  %3 = load double, double* %x, align 8
  %sub1 = fsub double %3, 6.400000e+01
  %conv2 = fptrunc double %sub1 to float
  %call = call float @arctg(float %conv, float %conv2)
  %call3 = call float @angle_mod_2PI(float %call)
  store float %call3, float* %clicked_angle, align 4
  %4 = load float, float* %clicked_angle, align 4
  %5 = load %struct.RcmCircle*, %struct.RcmCircle** %circle.addr, align 8
  %prev_clicked = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %5, i32 0, i32 20
  %6 = load float, float* %prev_clicked, align 4
  %sub4 = fsub float %4, %6
  store float %sub4, float* %delta, align 4
  %7 = load float, float* %clicked_angle, align 4
  %8 = load %struct.RcmCircle*, %struct.RcmCircle** %circle.addr, align 8
  %prev_clicked5 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %8, i32 0, i32 20
  store float %7, float* %prev_clicked5, align 4
  %9 = load float, float* %delta, align 4
  %tobool = fcmp une float %9, 0.000000e+00
  br i1 %tobool, label %if.then, label %if.end.33

if.then:                                          ; preds = %entry
  %10 = load %struct.RcmCircle*, %struct.RcmCircle** %circle.addr, align 8
  %mode = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %10, i32 0, i32 18
  %11 = load i32, i32* %mode, align 4
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  %12 = load float, float* %clicked_angle, align 4
  %13 = load %struct.RcmCircle*, %struct.RcmCircle** %circle.addr, align 8
  %target = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %13, i32 0, i32 17
  %14 = load float*, float** %target, align 8
  store float %12, float* %14, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %15 = load %struct.RcmCircle*, %struct.RcmCircle** %circle.addr, align 8
  %angle = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %15, i32 0, i32 19
  %16 = load %struct.RcmAngle*, %struct.RcmAngle** %angle, align 8
  %alpha = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %16, i32 0, i32 0
  %17 = load float, float* %alpha, align 4
  %18 = load float, float* %delta, align 4
  %add = fadd float %17, %18
  %call8 = call float @angle_mod_2PI(float %add)
  %19 = load %struct.RcmCircle*, %struct.RcmCircle** %circle.addr, align 8
  %angle9 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %19, i32 0, i32 19
  %20 = load %struct.RcmAngle*, %struct.RcmAngle** %angle9, align 8
  %alpha10 = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %20, i32 0, i32 0
  store float %call8, float* %alpha10, align 4
  %21 = load %struct.RcmCircle*, %struct.RcmCircle** %circle.addr, align 8
  %angle11 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %21, i32 0, i32 19
  %22 = load %struct.RcmAngle*, %struct.RcmAngle** %angle11, align 8
  %beta = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %22, i32 0, i32 1
  %23 = load float, float* %beta, align 4
  %24 = load float, float* %delta, align 4
  %add12 = fadd float %23, %24
  %call13 = call float @angle_mod_2PI(float %add12)
  %25 = load %struct.RcmCircle*, %struct.RcmCircle** %circle.addr, align 8
  %angle14 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %25, i32 0, i32 19
  %26 = load %struct.RcmAngle*, %struct.RcmAngle** %angle14, align 8
  %beta15 = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %26, i32 0, i32 1
  store float %call13, float* %beta15, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.7
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %27)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call16 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %28)
  call void @gdk_window_process_updates(%struct._GdkDrawable* %call16, i32 0)
  %29 = load %struct.RcmCircle*, %struct.RcmCircle** %circle.addr, align 8
  %alpha_entry = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %29, i32 0, i32 13
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %alpha_entry, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_spin_button_get_type() #4
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call17)
  %32 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkSpinButton*
  %33 = load %struct.RcmCircle*, %struct.RcmCircle** %circle.addr, align 8
  %angle19 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %33, i32 0, i32 19
  %34 = load %struct.RcmAngle*, %struct.RcmAngle** %angle19, align 8
  %alpha20 = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %34, i32 0, i32 0
  %35 = load float, float* %alpha20, align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 2), align 4
  %call21 = call float @rcm_units_factor(i32 %36)
  %mul = fmul float %35, %call21
  %conv22 = fpext float %mul to double
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %32, double %conv22)
  %37 = load %struct.RcmCircle*, %struct.RcmCircle** %circle.addr, align 8
  %beta_entry = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %37, i32 0, i32 15
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %beta_entry, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_spin_button_get_type() #4
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call23)
  %40 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkSpinButton*
  %41 = load %struct.RcmCircle*, %struct.RcmCircle** %circle.addr, align 8
  %angle25 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %41, i32 0, i32 19
  %42 = load %struct.RcmAngle*, %struct.RcmAngle** %angle25, align 8
  %beta26 = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %42, i32 0, i32 1
  %43 = load float, float* %beta26, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 2), align 4
  %call27 = call float @rcm_units_factor(i32 %44)
  %mul28 = fmul float %43, %call27
  %conv29 = fpext float %mul28 to double
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %40, double %conv29)
  %45 = load i32, i32* getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 1), align 4
  %tobool30 = icmp ne i32 %45, 0
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end
  %46 = load %struct.RcmBna*, %struct.RcmBna** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 10), align 8
  %after = getelementptr inbounds %struct.RcmBna, %struct.RcmBna* %46, i32 0, i32 3
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %after, align 8
  call void @rcm_render_preview(%struct._GtkWidget* %47)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %entry
  %48 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  call void @gdk_event_request_motions(%struct._GdkEventMotion* %48)
  ret i32 1
}

declare void @gdk_window_process_updates(%struct._GdkDrawable*, i32) #1

declare void @gdk_event_request_motions(%struct._GdkEventMotion*) #1

; Function Attrs: nounwind uwtable
define i32 @rcm_gray_expose_event(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event, %struct.RcmGray* %circle) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %circle.addr = alloca %struct.RcmGray*, align 8
  %cr = alloca %struct._cairo*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  store %struct.RcmGray* %circle, %struct.RcmGray** %circle.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %0)
  %call1 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %call)
  store %struct._cairo* %call1, %struct._cairo** %cr, align 8
  %1 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_translate(%struct._cairo* %1, double 5.000000e-01, double 5.000000e-01)
  %2 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %3 = load %struct.RcmGray*, %struct.RcmGray** %circle.addr, align 8
  %hue = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %3, i32 0, i32 3
  %4 = load float, float* %hue, align 4
  %5 = load %struct.RcmGray*, %struct.RcmGray** %circle.addr, align 8
  %satur = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %5, i32 0, i32 4
  %6 = load float, float* %satur, align 4
  call void @color_rotate_draw_little_circle(%struct._cairo* %2, float %4, float %6)
  %7 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %8 = load %struct.RcmGray*, %struct.RcmGray** %circle.addr, align 8
  %gray_sat = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %8, i32 0, i32 2
  %9 = load float, float* %gray_sat, align 4
  call void @color_rotate_draw_large_circle(%struct._cairo* %7, float %9)
  %10 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %10)
  ret i32 1
}

declare void @color_rotate_draw_little_circle(%struct._cairo*, float, float) #1

declare void @color_rotate_draw_large_circle(%struct._cairo*, float) #1

; Function Attrs: nounwind uwtable
define i32 @rcm_gray_button_press_event(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event, %struct.RcmGray* %circle) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %circle.addr = alloca %struct.RcmGray*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  store %struct.RcmGray* %circle, %struct.RcmGray** %circle.addr, align 8
  %0 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %x1 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %0, i32 0, i32 4
  %1 = load double, double* %x1, align 8
  %sub = fsub double %1, 6.300000e+01
  %sub2 = fsub double %sub, 3.000000e+00
  %conv = fptosi double %sub2 to i32
  store i32 %conv, i32* %x, align 4
  %2 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %y3 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %2, i32 0, i32 5
  %3 = load double, double* %y3, align 8
  %sub4 = fsub double 6.300000e+01, %3
  %add = fadd double %sub4, 3.000000e+00
  %conv5 = fptosi double %add to i32
  store i32 %conv5, i32* %y, align 4
  %4 = load i32, i32* %y, align 4
  %conv6 = sitofp i32 %4 to float
  %5 = load i32, i32* %x, align 4
  %conv7 = sitofp i32 %5 to float
  %call = call float @arctg(float %conv6, float %conv7)
  %call8 = call float @angle_mod_2PI(float %call)
  %6 = load %struct.RcmGray*, %struct.RcmGray** %circle.addr, align 8
  %hue = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %6, i32 0, i32 3
  store float %call8, float* %hue, align 4
  %7 = load i32, i32* %x, align 4
  %8 = load i32, i32* %x, align 4
  %mul = mul nsw i32 %7, %8
  %9 = load i32, i32* %y, align 4
  %10 = load i32, i32* %y, align 4
  %mul9 = mul nsw i32 %9, %10
  %add10 = add nsw i32 %mul, %mul9
  %conv11 = sitofp i32 %add10 to double
  %call12 = call double @sqrt(double %conv11) #5
  %div = fdiv double %call12, 6.000000e+01
  %conv13 = fptrunc double %div to float
  %11 = load %struct.RcmGray*, %struct.RcmGray** %circle.addr, align 8
  %satur = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %11, i32 0, i32 4
  store float %conv13, float* %satur, align 4
  %12 = load %struct.RcmGray*, %struct.RcmGray** %circle.addr, align 8
  %satur14 = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %12, i32 0, i32 4
  %13 = load float, float* %satur14, align 4
  %conv15 = fpext float %13 to double
  %cmp = fcmp ogt double %conv15, 1.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load %struct.RcmGray*, %struct.RcmGray** %circle.addr, align 8
  %satur17 = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %14, i32 0, i32 4
  store float 1.000000e+00, float* %satur17, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct.RcmGray*, %struct.RcmGray** %circle.addr, align 8
  %preview = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %15, i32 0, i32 0
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %16)
  %17 = load %struct.RcmGray*, %struct.RcmGray** %circle.addr, align 8
  %hue_entry = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %17, i32 0, i32 5
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %hue_entry, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_spin_button_get_type() #4
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call18)
  %20 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkSpinButton*
  %21 = load %struct.RcmGray*, %struct.RcmGray** %circle.addr, align 8
  %hue20 = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %21, i32 0, i32 3
  %22 = load float, float* %hue20, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 2), align 4
  %call21 = call float @rcm_units_factor(i32 %23)
  %mul22 = fmul float %22, %call21
  %conv23 = fpext float %mul22 to double
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %20, double %conv23)
  %24 = load %struct.RcmGray*, %struct.RcmGray** %circle.addr, align 8
  %satur_entry = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %24, i32 0, i32 7
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %satur_entry, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_spin_button_get_type() #4
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call24)
  %27 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkSpinButton*
  %28 = load %struct.RcmGray*, %struct.RcmGray** %circle.addr, align 8
  %satur26 = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %28, i32 0, i32 4
  %29 = load float, float* %satur26, align 4
  %conv27 = fpext float %29 to double
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %27, double %conv27)
  %30 = load i32, i32* getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 1), align 4
  %tobool = icmp ne i32 %30, 0
  br i1 %tobool, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end
  %31 = load %struct.RcmBna*, %struct.RcmBna** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 10), align 8
  %after = getelementptr inbounds %struct.RcmBna, %struct.RcmBna* %31, i32 0, i32 3
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %after, align 8
  call void @rcm_render_preview(%struct._GtkWidget* %32)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.end
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @rcm_gray_release_event(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event, %struct.RcmGray* %circle) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %circle.addr = alloca %struct.RcmGray*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  store %struct.RcmGray* %circle, %struct.RcmGray** %circle.addr, align 8
  %0 = load %struct.RcmBna*, %struct.RcmBna** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 10), align 8
  %after = getelementptr inbounds %struct.RcmBna, %struct.RcmBna* %0, i32 0, i32 3
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %after, align 8
  call void @rcm_render_preview(%struct._GtkWidget* %1)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @rcm_gray_motion_notify_event(%struct._GtkWidget* %widget, %struct._GdkEventMotion* %event, %struct.RcmGray* %circle) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventMotion*, align 8
  %circle.addr = alloca %struct.RcmGray*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventMotion* %event, %struct._GdkEventMotion** %event.addr, align 8
  store %struct.RcmGray* %circle, %struct.RcmGray** %circle.addr, align 8
  %0 = load %struct.RcmGray*, %struct.RcmGray** %circle.addr, align 8
  %preview = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %0, i32 0, i32 0
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %1)
  %2 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %x1 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %2, i32 0, i32 4
  %3 = load double, double* %x1, align 8
  %sub = fsub double %3, 6.300000e+01
  %sub2 = fsub double %sub, 3.000000e+00
  %conv = fptosi double %sub2 to i32
  store i32 %conv, i32* %x, align 4
  %4 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  %y3 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %4, i32 0, i32 5
  %5 = load double, double* %y3, align 8
  %sub4 = fsub double 6.300000e+01, %5
  %add = fadd double %sub4, 3.000000e+00
  %conv5 = fptosi double %add to i32
  store i32 %conv5, i32* %y, align 4
  %6 = load i32, i32* %y, align 4
  %conv6 = sitofp i32 %6 to float
  %7 = load i32, i32* %x, align 4
  %conv7 = sitofp i32 %7 to float
  %call = call float @arctg(float %conv6, float %conv7)
  %call8 = call float @angle_mod_2PI(float %call)
  %8 = load %struct.RcmGray*, %struct.RcmGray** %circle.addr, align 8
  %hue = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %8, i32 0, i32 3
  store float %call8, float* %hue, align 4
  %9 = load i32, i32* %x, align 4
  %10 = load i32, i32* %x, align 4
  %mul = mul nsw i32 %9, %10
  %11 = load i32, i32* %y, align 4
  %12 = load i32, i32* %y, align 4
  %mul9 = mul nsw i32 %11, %12
  %add10 = add nsw i32 %mul, %mul9
  %conv11 = sitofp i32 %add10 to double
  %call12 = call double @sqrt(double %conv11) #5
  %div = fdiv double %call12, 6.000000e+01
  %conv13 = fptrunc double %div to float
  %13 = load %struct.RcmGray*, %struct.RcmGray** %circle.addr, align 8
  %satur = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %13, i32 0, i32 4
  store float %conv13, float* %satur, align 4
  %14 = load %struct.RcmGray*, %struct.RcmGray** %circle.addr, align 8
  %satur14 = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %14, i32 0, i32 4
  %15 = load float, float* %satur14, align 4
  %conv15 = fpext float %15 to double
  %cmp = fcmp ogt double %conv15, 1.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load %struct.RcmGray*, %struct.RcmGray** %circle.addr, align 8
  %satur17 = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %16, i32 0, i32 4
  store float 1.000000e+00, float* %satur17, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct.RcmGray*, %struct.RcmGray** %circle.addr, align 8
  %hue_entry = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %17, i32 0, i32 5
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %hue_entry, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_spin_button_get_type() #4
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call18)
  %20 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkSpinButton*
  %21 = load %struct.RcmGray*, %struct.RcmGray** %circle.addr, align 8
  %hue20 = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %21, i32 0, i32 3
  %22 = load float, float* %hue20, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 2), align 4
  %call21 = call float @rcm_units_factor(i32 %23)
  %mul22 = fmul float %22, %call21
  %conv23 = fpext float %mul22 to double
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %20, double %conv23)
  %24 = load %struct.RcmGray*, %struct.RcmGray** %circle.addr, align 8
  %satur_entry = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %24, i32 0, i32 7
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %satur_entry, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_spin_button_get_type() #4
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call24)
  %27 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkSpinButton*
  %28 = load %struct.RcmGray*, %struct.RcmGray** %circle.addr, align 8
  %satur26 = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %28, i32 0, i32 4
  %29 = load float, float* %satur26, align 4
  %conv27 = fpext float %29 to double
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %27, double %conv27)
  %30 = load i32, i32* getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 1), align 4
  %tobool = icmp ne i32 %30, 0
  br i1 %tobool, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end
  %31 = load %struct.RcmBna*, %struct.RcmBna** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 10), align 8
  %after = getelementptr inbounds %struct.RcmBna, %struct.RcmBna* %31, i32 0, i32 3
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %after, align 8
  call void @rcm_render_preview(%struct._GtkWidget* %32)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.end
  %33 = load %struct._GdkEventMotion*, %struct._GdkEventMotion** %event.addr, align 8
  call void @gdk_event_request_motions(%struct._GdkEventMotion* %33)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define void @rcm_set_alpha(%struct._GtkWidget* %entry1, %struct.RcmCircle* %circle) #0 {
entry:
  %entry.addr = alloca %struct._GtkWidget*, align 8
  %circle.addr = alloca %struct.RcmCircle*, align 8
  store %struct._GtkWidget* %entry1, %struct._GtkWidget** %entry.addr, align 8
  store %struct.RcmCircle* %circle, %struct.RcmCircle** %circle.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_spin_button_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkSpinButton*
  %call3 = call double @gtk_spin_button_get_value(%struct._GtkSpinButton* %2)
  %3 = load i32, i32* getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 2), align 4
  %call4 = call float @rcm_units_factor(i32 %3)
  %conv = fpext float %call4 to double
  %div = fdiv double %call3, %conv
  %conv5 = fptrunc double %div to float
  %4 = load %struct.RcmCircle*, %struct.RcmCircle** %circle.addr, align 8
  %angle = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %4, i32 0, i32 19
  %5 = load %struct.RcmAngle*, %struct.RcmAngle** %angle, align 8
  %alpha = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %5, i32 0, i32 0
  store float %conv5, float* %alpha, align 4
  %6 = load %struct.RcmCircle*, %struct.RcmCircle** %circle.addr, align 8
  %preview = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %6, i32 0, i32 0
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %7)
  %8 = load %struct.RcmBna*, %struct.RcmBna** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 10), align 8
  %after = getelementptr inbounds %struct.RcmBna, %struct.RcmBna* %8, i32 0, i32 3
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %after, align 8
  call void @rcm_render_preview(%struct._GtkWidget* %9)
  ret void
}

declare double @gtk_spin_button_get_value(%struct._GtkSpinButton*) #1

; Function Attrs: nounwind uwtable
define void @rcm_set_beta(%struct._GtkWidget* %entry1, %struct.RcmCircle* %circle) #0 {
entry:
  %entry.addr = alloca %struct._GtkWidget*, align 8
  %circle.addr = alloca %struct.RcmCircle*, align 8
  store %struct._GtkWidget* %entry1, %struct._GtkWidget** %entry.addr, align 8
  store %struct.RcmCircle* %circle, %struct.RcmCircle** %circle.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_spin_button_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkSpinButton*
  %call3 = call double @gtk_spin_button_get_value(%struct._GtkSpinButton* %2)
  %3 = load i32, i32* getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 2), align 4
  %call4 = call float @rcm_units_factor(i32 %3)
  %conv = fpext float %call4 to double
  %div = fdiv double %call3, %conv
  %conv5 = fptrunc double %div to float
  %4 = load %struct.RcmCircle*, %struct.RcmCircle** %circle.addr, align 8
  %angle = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %4, i32 0, i32 19
  %5 = load %struct.RcmAngle*, %struct.RcmAngle** %angle, align 8
  %beta = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %5, i32 0, i32 1
  store float %conv5, float* %beta, align 4
  %6 = load %struct.RcmCircle*, %struct.RcmCircle** %circle.addr, align 8
  %preview = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %6, i32 0, i32 0
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %7)
  %8 = load %struct.RcmBna*, %struct.RcmBna** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 10), align 8
  %after = getelementptr inbounds %struct.RcmBna, %struct.RcmBna* %8, i32 0, i32 3
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %after, align 8
  call void @rcm_render_preview(%struct._GtkWidget* %9)
  ret void
}

; Function Attrs: nounwind uwtable
define void @rcm_set_hue(%struct._GtkWidget* %entry1, %struct.RcmGray* %circle) #0 {
entry:
  %entry.addr = alloca %struct._GtkWidget*, align 8
  %circle.addr = alloca %struct.RcmGray*, align 8
  store %struct._GtkWidget* %entry1, %struct._GtkWidget** %entry.addr, align 8
  store %struct.RcmGray* %circle, %struct.RcmGray** %circle.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_spin_button_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkSpinButton*
  %call3 = call double @gtk_spin_button_get_value(%struct._GtkSpinButton* %2)
  %3 = load i32, i32* getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 2), align 4
  %call4 = call float @rcm_units_factor(i32 %3)
  %conv = fpext float %call4 to double
  %div = fdiv double %call3, %conv
  %conv5 = fptrunc double %div to float
  %4 = load %struct.RcmGray*, %struct.RcmGray** %circle.addr, align 8
  %hue = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %4, i32 0, i32 3
  store float %conv5, float* %hue, align 4
  %5 = load %struct.RcmGray*, %struct.RcmGray** %circle.addr, align 8
  %preview = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %5, i32 0, i32 0
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %6)
  %7 = load %struct.RcmBna*, %struct.RcmBna** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 10), align 8
  %after = getelementptr inbounds %struct.RcmBna, %struct.RcmBna* %7, i32 0, i32 3
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %after, align 8
  call void @rcm_render_preview(%struct._GtkWidget* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define void @rcm_set_satur(%struct._GtkWidget* %entry1, %struct.RcmGray* %circle) #0 {
entry:
  %entry.addr = alloca %struct._GtkWidget*, align 8
  %circle.addr = alloca %struct.RcmGray*, align 8
  store %struct._GtkWidget* %entry1, %struct._GtkWidget** %entry.addr, align 8
  store %struct.RcmGray* %circle, %struct.RcmGray** %circle.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_spin_button_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkSpinButton*
  %call3 = call double @gtk_spin_button_get_value(%struct._GtkSpinButton* %2)
  %conv = fptrunc double %call3 to float
  %3 = load %struct.RcmGray*, %struct.RcmGray** %circle.addr, align 8
  %satur = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %3, i32 0, i32 4
  store float %conv, float* %satur, align 4
  %4 = load %struct.RcmGray*, %struct.RcmGray** %circle.addr, align 8
  %preview = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %4, i32 0, i32 0
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %5)
  %6 = load %struct.RcmBna*, %struct.RcmBna** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 10), align 8
  %after = getelementptr inbounds %struct.RcmBna, %struct.RcmBna* %6, i32 0, i32 3
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %after, align 8
  call void @rcm_render_preview(%struct._GtkWidget* %7)
  ret void
}

; Function Attrs: nounwind uwtable
define void @rcm_set_gray_sat(%struct._GtkWidget* %entry1, %struct.RcmGray* %circle) #0 {
entry:
  %entry.addr = alloca %struct._GtkWidget*, align 8
  %circle.addr = alloca %struct.RcmGray*, align 8
  store %struct._GtkWidget* %entry1, %struct._GtkWidget** %entry.addr, align 8
  store %struct.RcmGray* %circle, %struct.RcmGray** %circle.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %entry.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_spin_button_get_type() #4
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkSpinButton*
  %call3 = call double @gtk_spin_button_get_value(%struct._GtkSpinButton* %2)
  %conv = fptrunc double %call3 to float
  %3 = load %struct.RcmGray*, %struct.RcmGray** %circle.addr, align 8
  %gray_sat = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %3, i32 0, i32 2
  store float %conv, float* %gray_sat, align 4
  %4 = load %struct.RcmGray*, %struct.RcmGray** %circle.addr, align 8
  %preview = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %4, i32 0, i32 0
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %5)
  %6 = load %struct.RcmBna*, %struct.RcmBna** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 10), align 8
  %after = getelementptr inbounds %struct.RcmBna, %struct.RcmBna* %6, i32 0, i32 3
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %after, align 8
  call void @rcm_render_preview(%struct._GtkWidget* %7)
  ret void
}

declare %struct._GtkAdjustment* @gtk_spin_button_get_adjustment(%struct._GtkSpinButton*) #1

declare void @gtk_adjustment_configure(%struct._GtkAdjustment*, double, double, double, double, double, double) #1

declare double @gtk_adjustment_get_lower(%struct._GtkAdjustment*) #1

declare double @gtk_adjustment_get_page_size(%struct._GtkAdjustment*) #1

declare void @gtk_spin_button_set_digits(%struct._GtkSpinButton*, i32) #1

declare void @gtk_label_set_text(%struct._GtkLabel*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
