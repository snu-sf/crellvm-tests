; ModuleID = './app/widgets/gimpdeviceinfo-coords.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GimpDeviceInfo = type { %struct._GimpContext, %struct._GdkDevice*, %struct._GdkDisplay*, i32, i32, i32*, i32, %struct._GdkDeviceKey*, %struct._GimpCurve* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
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
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
%struct._GdkDisplayPointerHooks = type { void (%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, %struct._GdkDrawable*, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, i32*, i32*)* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._GdkGC = type { %struct._GObject, i32, i32, i32, i32, %struct._GdkColormap* }
%struct._GdkColormap = type { %struct._GObject, i32, %struct._GdkColor*, %struct._GdkVisual*, i8* }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkVisual = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._cairo_font_options = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GimpCurve = type opaque
%struct._GdkDrawable = type { %struct._GObject }
%union._GdkEvent = type { %struct._GdkEventCrossing }
%struct._GdkEventCrossing = type { i32, %struct._GdkDrawable*, i8, %struct._GdkDrawable*, i32, double, double, double, double, i32, i32, i32, i32 }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GtkStyle = type { %struct._GObject, [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], %struct._GdkColor, %struct._GdkColor, %struct._PangoFontDescription*, i32, i32, [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], %struct._GdkGC*, %struct._GdkGC*, [5 x %struct._GdkDrawable*], i32, i32, %struct._GdkColormap*, %struct._GdkFont*, %struct._PangoFontDescription*, %struct._GtkRcStyle*, %struct._GSList*, %struct._GArray*, %struct._GSList* }
%struct._GdkFont = type opaque
%struct._PangoFontDescription = type opaque
%struct._GtkRcStyle = type { %struct._GObject, i8*, [5 x i8*], %struct._PangoFontDescription*, [5 x i32], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], i32, i32, %struct._GArray*, %struct._GSList*, %struct._GSList*, i8 }
%struct._GArray = type { i8*, i32 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkEventAny = type { i32, %struct._GdkDrawable*, i8 }
%struct._GdkTimeCoord = type { i32, [128 x double] }

@default_coords = internal constant %struct._GimpCoords { double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 5.000000e-01, double 0.000000e+00, double 0.000000e+00 }, align 8

; Function Attrs: nounwind uwtable
define i32 @gimp_device_info_get_event_coords(%struct._GimpDeviceInfo* %info, %struct._GdkDrawable* %window, %union._GdkEvent* %event, %struct._GimpCoords* %coords) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._GimpDeviceInfo*, align 8
  %window.addr = alloca %struct._GdkDrawable*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %x = alloca double, align 8
  %src_widget = alloca %struct._GtkWidget*, align 8
  %dest_widget = alloca %struct._GtkWidget*, align 8
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  store %struct._GimpDeviceInfo* %info, %struct._GimpDeviceInfo** %info.addr, align 8
  store %struct._GdkDrawable* %window, %struct._GdkDrawable** %window.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  %0 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %call = call i32 @gdk_event_get_axis(%union._GdkEvent* %0, i32 1, double* %x)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.50

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %2 = bitcast %struct._GimpCoords* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast (%struct._GimpCoords* @default_coords to i8*), i64 64, i32 8, i1 false)
  %3 = load double, double* %x, align 8
  %4 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %4, i32 0, i32 0
  store double %3, double* %x1, align 8
  %5 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %6 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %6, i32 0, i32 1
  %call2 = call i32 @gdk_event_get_axis(%union._GdkEvent* %5, i32 2, double* %y)
  %7 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %any = bitcast %union._GdkEvent* %7 to %struct._GdkEventAny*
  %window3 = getelementptr inbounds %struct._GdkEventAny, %struct._GdkEventAny* %any, i32 0, i32 1
  %8 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window3, align 8
  %tobool4 = icmp ne %struct._GdkDrawable* %8, null
  br i1 %tobool4, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %if.then
  %9 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %any5 = bitcast %union._GdkEvent* %9 to %struct._GdkEventAny*
  %window6 = getelementptr inbounds %struct._GdkEventAny, %struct._GdkEventAny* %any5, i32 0, i32 1
  %10 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window6, align 8
  %11 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window.addr, align 8
  %cmp = icmp ne %struct._GdkDrawable* %10, %11
  br i1 %cmp, label %if.then.7, label %if.end.21

if.then.7:                                        ; preds = %land.lhs.true
  %12 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %call8 = call %struct._GtkWidget* @gtk_get_event_widget(%union._GdkEvent* %12)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %src_widget, align 8
  %13 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window.addr, align 8
  %14 = bitcast %struct._GtkWidget** %dest_widget to i8*
  %15 = bitcast i8* %14 to i8**
  call void @gdk_window_get_user_data(%struct._GdkDrawable* %13, i8** %15)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %src_widget, align 8
  %tobool9 = icmp ne %struct._GtkWidget* %16, null
  br i1 %tobool9, label %land.lhs.true.10, label %if.end.20

land.lhs.true.10:                                 ; preds = %if.then.7
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %dest_widget, align 8
  %tobool11 = icmp ne %struct._GtkWidget* %17, null
  br i1 %tobool11, label %if.then.12, label %if.end.20

if.then.12:                                       ; preds = %land.lhs.true.10
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %src_widget, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %dest_widget, align 8
  %call13 = call i32 @gtk_widget_translate_coordinates(%struct._GtkWidget* %18, %struct._GtkWidget* %19, i32 0, i32 0, i32* %offset_x, i32* %offset_y)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.then.12
  %20 = load i32, i32* %offset_x, align 4
  %conv = sitofp i32 %20 to double
  %21 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x16 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %21, i32 0, i32 0
  %22 = load double, double* %x16, align 8
  %add = fadd double %22, %conv
  store double %add, double* %x16, align 8
  %23 = load i32, i32* %offset_y, align 4
  %conv17 = sitofp i32 %23 to double
  %24 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y18 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %24, i32 0, i32 1
  %25 = load double, double* %y18, align 8
  %add19 = fadd double %25, %conv17
  store double %add19, double* %y18, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.15, %if.then.12
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %land.lhs.true.10, %if.then.7
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %land.lhs.true, %if.then
  %26 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %27 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %pressure = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %27, i32 0, i32 2
  %call22 = call i32 @gdk_event_get_axis(%union._GdkEvent* %26, i32 3, double* %pressure)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.28

if.then.24:                                       ; preds = %if.end.21
  %28 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %29 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %pressure25 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %29, i32 0, i32 2
  %30 = load double, double* %pressure25, align 8
  %call26 = call double @gimp_device_info_map_axis(%struct._GimpDeviceInfo* %28, i32 3, double %30)
  %31 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %pressure27 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %31, i32 0, i32 2
  store double %call26, double* %pressure27, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.24, %if.end.21
  %32 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %33 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %xtilt = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %33, i32 0, i32 3
  %call29 = call i32 @gdk_event_get_axis(%union._GdkEvent* %32, i32 4, double* %xtilt)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.35

if.then.31:                                       ; preds = %if.end.28
  %34 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %35 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %xtilt32 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %35, i32 0, i32 3
  %36 = load double, double* %xtilt32, align 8
  %call33 = call double @gimp_device_info_map_axis(%struct._GimpDeviceInfo* %34, i32 4, double %36)
  %37 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %xtilt34 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %37, i32 0, i32 3
  store double %call33, double* %xtilt34, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.31, %if.end.28
  %38 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %39 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %ytilt = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %39, i32 0, i32 4
  %call36 = call i32 @gdk_event_get_axis(%union._GdkEvent* %38, i32 5, double* %ytilt)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.42

if.then.38:                                       ; preds = %if.end.35
  %40 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %41 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %ytilt39 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %41, i32 0, i32 4
  %42 = load double, double* %ytilt39, align 8
  %call40 = call double @gimp_device_info_map_axis(%struct._GimpDeviceInfo* %40, i32 5, double %42)
  %43 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %ytilt41 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %43, i32 0, i32 4
  store double %call40, double* %ytilt41, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.38, %if.end.35
  %44 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %45 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %wheel = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %45, i32 0, i32 5
  %call43 = call i32 @gdk_event_get_axis(%union._GdkEvent* %44, i32 6, double* %wheel)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then.45, label %if.end.49

if.then.45:                                       ; preds = %if.end.42
  %46 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %47 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %wheel46 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %47, i32 0, i32 5
  %48 = load double, double* %wheel46, align 8
  %call47 = call double @gimp_device_info_map_axis(%struct._GimpDeviceInfo* %46, i32 6, double %48)
  %49 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %wheel48 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %49, i32 0, i32 5
  store double %call47, double* %wheel48, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.45, %if.end.42
  store i32 1, i32* %retval
  br label %return

if.end.50:                                        ; preds = %entry
  %50 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %51 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window.addr, align 8
  %52 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  call void @gimp_device_info_get_device_coords(%struct._GimpDeviceInfo* %50, %struct._GdkDrawable* %51, %struct._GimpCoords* %52)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.50, %if.end.49
  %53 = load i32, i32* %retval
  ret i32 %53
}

declare i32 @gdk_event_get_axis(%union._GdkEvent*, i32, double*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare %struct._GtkWidget* @gtk_get_event_widget(%union._GdkEvent*) #1

declare void @gdk_window_get_user_data(%struct._GdkDrawable*, i8**) #1

declare i32 @gtk_widget_translate_coordinates(%struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i32*, i32*) #1

declare double @gimp_device_info_map_axis(%struct._GimpDeviceInfo*, i32, double) #1

; Function Attrs: nounwind uwtable
define void @gimp_device_info_get_device_coords(%struct._GimpDeviceInfo* %info, %struct._GdkDrawable* %window, %struct._GimpCoords* %coords) #0 {
entry:
  %info.addr = alloca %struct._GimpDeviceInfo*, align 8
  %window.addr = alloca %struct._GdkDrawable*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %axes = alloca [7 x double], align 16
  store %struct._GimpDeviceInfo* %info, %struct._GimpDeviceInfo** %info.addr, align 8
  store %struct._GdkDrawable* %window, %struct._GdkDrawable** %window.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  %0 = bitcast [7 x double]* %axes to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 56, i32 16, i1 false)
  %1 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %2 = bitcast %struct._GimpCoords* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast (%struct._GimpCoords* @default_coords to i8*), i64 64, i32 8, i1 false)
  %3 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %device = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %3, i32 0, i32 1
  %4 = load %struct._GdkDevice*, %struct._GdkDevice** %device, align 8
  %5 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window.addr, align 8
  %arraydecay = getelementptr inbounds [7 x double], [7 x double]* %axes, i32 0, i32 0
  call void @gdk_device_get_state(%struct._GdkDevice* %4, %struct._GdkDrawable* %5, double* %arraydecay, i32* null)
  %6 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %device1 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %6, i32 0, i32 1
  %7 = load %struct._GdkDevice*, %struct._GdkDevice** %device1, align 8
  %arraydecay2 = getelementptr inbounds [7 x double], [7 x double]* %axes, i32 0, i32 0
  %8 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %8, i32 0, i32 0
  %call = call i32 @gdk_device_get_axis(%struct._GdkDevice* %7, double* %arraydecay2, i32 1, double* %x)
  %9 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %device3 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %9, i32 0, i32 1
  %10 = load %struct._GdkDevice*, %struct._GdkDevice** %device3, align 8
  %arraydecay4 = getelementptr inbounds [7 x double], [7 x double]* %axes, i32 0, i32 0
  %11 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %11, i32 0, i32 1
  %call5 = call i32 @gdk_device_get_axis(%struct._GdkDevice* %10, double* %arraydecay4, i32 2, double* %y)
  %12 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %device6 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %12, i32 0, i32 1
  %13 = load %struct._GdkDevice*, %struct._GdkDevice** %device6, align 8
  %arraydecay7 = getelementptr inbounds [7 x double], [7 x double]* %axes, i32 0, i32 0
  %14 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %pressure = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %14, i32 0, i32 2
  %call8 = call i32 @gdk_device_get_axis(%struct._GdkDevice* %13, double* %arraydecay7, i32 3, double* %pressure)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %16 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %pressure9 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %16, i32 0, i32 2
  %17 = load double, double* %pressure9, align 8
  %call10 = call double @gimp_device_info_map_axis(%struct._GimpDeviceInfo* %15, i32 3, double %17)
  %18 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %pressure11 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %18, i32 0, i32 2
  store double %call10, double* %pressure11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %device12 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %19, i32 0, i32 1
  %20 = load %struct._GdkDevice*, %struct._GdkDevice** %device12, align 8
  %arraydecay13 = getelementptr inbounds [7 x double], [7 x double]* %axes, i32 0, i32 0
  %21 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %xtilt = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %21, i32 0, i32 3
  %call14 = call i32 @gdk_device_get_axis(%struct._GdkDevice* %20, double* %arraydecay13, i32 4, double* %xtilt)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %if.end
  %22 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %23 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %xtilt17 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %23, i32 0, i32 3
  %24 = load double, double* %xtilt17, align 8
  %call18 = call double @gimp_device_info_map_axis(%struct._GimpDeviceInfo* %22, i32 4, double %24)
  %25 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %xtilt19 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %25, i32 0, i32 3
  store double %call18, double* %xtilt19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %if.end
  %26 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %device21 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %26, i32 0, i32 1
  %27 = load %struct._GdkDevice*, %struct._GdkDevice** %device21, align 8
  %arraydecay22 = getelementptr inbounds [7 x double], [7 x double]* %axes, i32 0, i32 0
  %28 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %ytilt = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %28, i32 0, i32 4
  %call23 = call i32 @gdk_device_get_axis(%struct._GdkDevice* %27, double* %arraydecay22, i32 5, double* %ytilt)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %if.end.20
  %29 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %30 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %ytilt26 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %30, i32 0, i32 4
  %31 = load double, double* %ytilt26, align 8
  %call27 = call double @gimp_device_info_map_axis(%struct._GimpDeviceInfo* %29, i32 5, double %31)
  %32 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %ytilt28 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %32, i32 0, i32 4
  store double %call27, double* %ytilt28, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.25, %if.end.20
  %33 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %device30 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %33, i32 0, i32 1
  %34 = load %struct._GdkDevice*, %struct._GdkDevice** %device30, align 8
  %arraydecay31 = getelementptr inbounds [7 x double], [7 x double]* %axes, i32 0, i32 0
  %35 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %wheel = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %35, i32 0, i32 5
  %call32 = call i32 @gdk_device_get_axis(%struct._GdkDevice* %34, double* %arraydecay31, i32 6, double* %wheel)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.38

if.then.34:                                       ; preds = %if.end.29
  %36 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %37 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %wheel35 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %37, i32 0, i32 5
  %38 = load double, double* %wheel35, align 8
  %call36 = call double @gimp_device_info_map_axis(%struct._GimpDeviceInfo* %36, i32 6, double %38)
  %39 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %wheel37 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %39, i32 0, i32 5
  store double %call36, double* %wheel37, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.34, %if.end.29
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare void @gdk_device_get_state(%struct._GdkDevice*, %struct._GdkDrawable*, double*, i32*) #1

declare i32 @gdk_device_get_axis(%struct._GdkDevice*, double*, i32, double*) #1

; Function Attrs: nounwind uwtable
define void @gimp_device_info_get_time_coords(%struct._GimpDeviceInfo* %info, %struct._GdkTimeCoord* %event, %struct._GimpCoords* %coords) #0 {
entry:
  %info.addr = alloca %struct._GimpDeviceInfo*, align 8
  %event.addr = alloca %struct._GdkTimeCoord*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  store %struct._GimpDeviceInfo* %info, %struct._GimpDeviceInfo** %info.addr, align 8
  store %struct._GdkTimeCoord* %event, %struct._GdkTimeCoord** %event.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  %0 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %1 = bitcast %struct._GimpCoords* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast (%struct._GimpCoords* @default_coords to i8*), i64 64, i32 8, i1 false)
  %2 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %device = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %2, i32 0, i32 1
  %3 = load %struct._GdkDevice*, %struct._GdkDevice** %device, align 8
  %4 = load %struct._GdkTimeCoord*, %struct._GdkTimeCoord** %event.addr, align 8
  %axes = getelementptr inbounds %struct._GdkTimeCoord, %struct._GdkTimeCoord* %4, i32 0, i32 1
  %arraydecay = getelementptr inbounds [128 x double], [128 x double]* %axes, i32 0, i32 0
  %5 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %5, i32 0, i32 0
  %call = call i32 @gdk_device_get_axis(%struct._GdkDevice* %3, double* %arraydecay, i32 1, double* %x)
  %6 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %device1 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %6, i32 0, i32 1
  %7 = load %struct._GdkDevice*, %struct._GdkDevice** %device1, align 8
  %8 = load %struct._GdkTimeCoord*, %struct._GdkTimeCoord** %event.addr, align 8
  %axes2 = getelementptr inbounds %struct._GdkTimeCoord, %struct._GdkTimeCoord* %8, i32 0, i32 1
  %arraydecay3 = getelementptr inbounds [128 x double], [128 x double]* %axes2, i32 0, i32 0
  %9 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %9, i32 0, i32 1
  %call4 = call i32 @gdk_device_get_axis(%struct._GdkDevice* %7, double* %arraydecay3, i32 2, double* %y)
  %10 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %device5 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %10, i32 0, i32 1
  %11 = load %struct._GdkDevice*, %struct._GdkDevice** %device5, align 8
  %12 = load %struct._GdkTimeCoord*, %struct._GdkTimeCoord** %event.addr, align 8
  %axes6 = getelementptr inbounds %struct._GdkTimeCoord, %struct._GdkTimeCoord* %12, i32 0, i32 1
  %arraydecay7 = getelementptr inbounds [128 x double], [128 x double]* %axes6, i32 0, i32 0
  %13 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %pressure = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %13, i32 0, i32 2
  %call8 = call i32 @gdk_device_get_axis(%struct._GdkDevice* %11, double* %arraydecay7, i32 3, double* %pressure)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %15 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %pressure9 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %15, i32 0, i32 2
  %16 = load double, double* %pressure9, align 8
  %call10 = call double @gimp_device_info_map_axis(%struct._GimpDeviceInfo* %14, i32 3, double %16)
  %17 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %pressure11 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %17, i32 0, i32 2
  store double %call10, double* %pressure11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %device12 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %18, i32 0, i32 1
  %19 = load %struct._GdkDevice*, %struct._GdkDevice** %device12, align 8
  %20 = load %struct._GdkTimeCoord*, %struct._GdkTimeCoord** %event.addr, align 8
  %axes13 = getelementptr inbounds %struct._GdkTimeCoord, %struct._GdkTimeCoord* %20, i32 0, i32 1
  %arraydecay14 = getelementptr inbounds [128 x double], [128 x double]* %axes13, i32 0, i32 0
  %21 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %xtilt = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %21, i32 0, i32 3
  %call15 = call i32 @gdk_device_get_axis(%struct._GdkDevice* %19, double* %arraydecay14, i32 4, double* %xtilt)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %if.end
  %22 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %23 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %xtilt18 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %23, i32 0, i32 3
  %24 = load double, double* %xtilt18, align 8
  %call19 = call double @gimp_device_info_map_axis(%struct._GimpDeviceInfo* %22, i32 4, double %24)
  %25 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %xtilt20 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %25, i32 0, i32 3
  store double %call19, double* %xtilt20, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.17, %if.end
  %26 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %device22 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %26, i32 0, i32 1
  %27 = load %struct._GdkDevice*, %struct._GdkDevice** %device22, align 8
  %28 = load %struct._GdkTimeCoord*, %struct._GdkTimeCoord** %event.addr, align 8
  %axes23 = getelementptr inbounds %struct._GdkTimeCoord, %struct._GdkTimeCoord* %28, i32 0, i32 1
  %arraydecay24 = getelementptr inbounds [128 x double], [128 x double]* %axes23, i32 0, i32 0
  %29 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %ytilt = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %29, i32 0, i32 4
  %call25 = call i32 @gdk_device_get_axis(%struct._GdkDevice* %27, double* %arraydecay24, i32 5, double* %ytilt)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.31

if.then.27:                                       ; preds = %if.end.21
  %30 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %31 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %ytilt28 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %31, i32 0, i32 4
  %32 = load double, double* %ytilt28, align 8
  %call29 = call double @gimp_device_info_map_axis(%struct._GimpDeviceInfo* %30, i32 5, double %32)
  %33 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %ytilt30 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %33, i32 0, i32 4
  store double %call29, double* %ytilt30, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.27, %if.end.21
  %34 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %device32 = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %34, i32 0, i32 1
  %35 = load %struct._GdkDevice*, %struct._GdkDevice** %device32, align 8
  %36 = load %struct._GdkTimeCoord*, %struct._GdkTimeCoord** %event.addr, align 8
  %axes33 = getelementptr inbounds %struct._GdkTimeCoord, %struct._GdkTimeCoord* %36, i32 0, i32 1
  %arraydecay34 = getelementptr inbounds [128 x double], [128 x double]* %axes33, i32 0, i32 0
  %37 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %wheel = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %37, i32 0, i32 5
  %call35 = call i32 @gdk_device_get_axis(%struct._GdkDevice* %35, double* %arraydecay34, i32 6, double* %wheel)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.37, label %if.end.41

if.then.37:                                       ; preds = %if.end.31
  %38 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %39 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %wheel38 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %39, i32 0, i32 5
  %40 = load double, double* %wheel38, align 8
  %call39 = call double @gimp_device_info_map_axis(%struct._GimpDeviceInfo* %38, i32 6, double %40)
  %41 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %wheel40 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %41, i32 0, i32 5
  store double %call39, double* %wheel40, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.37, %if.end.31
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_device_info_get_event_state(%struct._GimpDeviceInfo* %info, %struct._GdkDrawable* %window, %union._GdkEvent* %event, i32* %state) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct._GimpDeviceInfo*, align 8
  %window.addr = alloca %struct._GdkDrawable*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %state.addr = alloca i32*, align 8
  store %struct._GimpDeviceInfo* %info, %struct._GimpDeviceInfo** %info.addr, align 8
  store %struct._GdkDrawable* %window, %struct._GdkDrawable** %window.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  store i32* %state, i32** %state.addr, align 8
  %0 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %1 = load i32*, i32** %state.addr, align 8
  %call = call i32 @gdk_event_get_state(%union._GdkEvent* %0, i32* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %3 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window.addr, align 8
  %4 = load i32*, i32** %state.addr, align 8
  call void @gimp_device_info_get_device_state(%struct._GimpDeviceInfo* %2, %struct._GdkDrawable* %3, i32* %4)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

declare i32 @gdk_event_get_state(%union._GdkEvent*, i32*) #1

; Function Attrs: nounwind uwtable
define void @gimp_device_info_get_device_state(%struct._GimpDeviceInfo* %info, %struct._GdkDrawable* %window, i32* %state) #0 {
entry:
  %info.addr = alloca %struct._GimpDeviceInfo*, align 8
  %window.addr = alloca %struct._GdkDrawable*, align 8
  %state.addr = alloca i32*, align 8
  store %struct._GimpDeviceInfo* %info, %struct._GimpDeviceInfo** %info.addr, align 8
  store %struct._GdkDrawable* %window, %struct._GdkDrawable** %window.addr, align 8
  store i32* %state, i32** %state.addr, align 8
  %0 = load %struct._GimpDeviceInfo*, %struct._GimpDeviceInfo** %info.addr, align 8
  %device = getelementptr inbounds %struct._GimpDeviceInfo, %struct._GimpDeviceInfo* %0, i32 0, i32 1
  %1 = load %struct._GdkDevice*, %struct._GdkDevice** %device, align 8
  %2 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window.addr, align 8
  %3 = load i32*, i32** %state.addr, align 8
  call void @gdk_device_get_state(%struct._GdkDevice* %1, %struct._GdkDrawable* %2, double* null, i32* %3)
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
