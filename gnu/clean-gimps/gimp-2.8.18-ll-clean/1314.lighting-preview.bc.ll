; ModuleID = './plug-ins/lighting/lighting-preview.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LightingValues = type { i32, i32, i32, %struct._GimpVector3, %struct._GimpVector3, [6 x %struct.LightSettings], %struct.MaterialSettings, %struct.MaterialSettings, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double }
%struct._GimpVector3 = type { double, double, double }
%struct.LightSettings = type { i32, %struct._GimpVector3, %struct._GimpVector3, %struct._GimpRGB, double, i32 }
%struct._GimpRGB = type { double, double, double, double }
%struct.MaterialSettings = type { double, double, double, double, double, i32, %struct._GimpRGB }
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
%struct._cairo_surface = type opaque
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkDisplayPointerHooks = type { void (%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, %struct._GdkDrawable*, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, i32*, i32*)* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct._GdkCursor = type { i32, i32 }
%union._GdkEvent = type { %struct._GdkEventCrossing }
%struct._GdkEventCrossing = type { i32, %struct._GdkDrawable*, i8, %struct._GdkDrawable*, i32, double, double, double, double, i32, i32, i32, i32 }
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkEventMotion = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i16, %struct._GdkDevice*, double, double }
%struct._GdkEventExpose = type { i32, %struct._GdkDrawable*, i8, %struct._GdkRectangle, %struct._GdkRegion*, i32 }
%struct._GdkRegion = type opaque
%struct._cairo = type opaque
%struct._GtkSpinButton = type { %struct._GtkEntry, %struct._GtkAdjustment*, %struct._GdkDrawable*, i32, double, double, i32, i24 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }

@xpostab = global double* null, align 8
@ypostab = global double* null, align 8
@mapvals = external global %struct.LightingValues, align 8
@previewarea = external global %struct._GtkWidget*, align 8
@light_hit = internal global i32 0, align 4
@left_button_pressed = internal global i32 0, align 4
@preview_surface = external global %struct._cairo_surface*, align 8
@preview_update_timer = internal global i32 0, align 4
@width = external global i32, align 4
@height = external global i32, align 4
@xpostab_size = internal global i32 -1, align 4
@ypostab_size = internal global i32 -1, align 4
@bump_region = external global %struct._GimpPixelRgn, align 8
@env_width = external global i32, align 4
@env_height = external global i32, align 4
@env_region = external global %struct._GimpPixelRgn, align 8
@preview_rgb_stride = external global i32, align 4
@preview_rgb_data = external global i8*, align 8
@handle_xpos = internal global i32 0, align 4
@handle_ypos = internal global i32 0, align 4
@spin_pos_x = external global %struct._GtkWidget*, align 8
@spin_pos_y = external global %struct._GtkWidget*, align 8
@spin_pos_z = external global %struct._GtkWidget*, align 8
@spin_dir_x = external global %struct._GtkWidget*, align 8
@spin_dir_y = external global %struct._GtkWidget*, align 8
@spin_dir_z = external global %struct._GtkWidget*, align 8

; Function Attrs: nounwind uwtable
define void @update_light(i32 %xpos, i32 %ypos) #0 {
entry:
  %xpos.addr = alloca i32, align 4
  %ypos.addr = alloca i32, align 4
  %startx = alloca i32, align 4
  %starty = alloca i32, align 4
  %pw = alloca i32, align 4
  %ph = alloca i32, align 4
  %vp = alloca %struct._GimpVector3, align 8
  %k = alloca i32, align 4
  store i32 %xpos, i32* %xpos.addr, align 4
  store i32 %ypos, i32* %ypos.addr, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 24), align 4
  store i32 %0, i32* %k, align 4
  call void @compute_preview_rectangle(i32* %startx, i32* %starty, i32* %pw, i32* %ph)
  %1 = bitcast %struct._GimpVector3* %vp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast (%struct._GimpVector3* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 3) to i8*), i64 24, i32 8, i1 false)
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vp, i32 0, i32 2
  %2 = load double, double* %z, align 8
  %sub = fsub double -0.000000e+00, %2
  %z1 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vp, i32 0, i32 2
  store double %sub, double* %z1, align 8
  %3 = load i32, i32* %k, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom
  %type = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx, i32 0, i32 0
  %4 = load i32, i32* %type, align 4
  switch i32 %4, label %sw.epilog [
    i32 3, label %sw.bb
    i32 0, label %sw.bb.2
    i32 2, label %sw.bb.2
    i32 1, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry, %entry
  %5 = load i32, i32* %startx, align 4
  %6 = load i32, i32* %starty, align 4
  %7 = load i32, i32* %pw, align 4
  %8 = load i32, i32* %ph, align 4
  %9 = load i32, i32* %xpos.addr, align 4
  %10 = load i32, i32* %ypos.addr, align 4
  %11 = load i32, i32* %k, align 4
  %idxprom3 = sext i32 %11 to i64
  %arrayidx4 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom3
  %position = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx4, i32 0, i32 1
  call void @gimp_vector_2d_to_3d(i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, %struct._GimpVector3* %vp, %struct._GimpVector3* %position)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %12 = load i32, i32* %startx, align 4
  %13 = load i32, i32* %starty, align 4
  %14 = load i32, i32* %pw, align 4
  %15 = load i32, i32* %ph, align 4
  %16 = load i32, i32* %xpos.addr, align 4
  %17 = load i32, i32* %ypos.addr, align 4
  %18 = load i32, i32* %k, align 4
  %idxprom6 = sext i32 %18 to i64
  %arrayidx7 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom6
  %direction = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx7, i32 0, i32 2
  call void @gimp_vector_2d_to_3d(i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17, %struct._GimpVector3* %vp, %struct._GimpVector3* %direction)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.5, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compute_preview_rectangle(i32* %xp, i32* %yp, i32* %wid, i32* %heig) #0 {
entry:
  %xp.addr = alloca i32*, align 8
  %yp.addr = alloca i32*, align 8
  %wid.addr = alloca i32*, align 8
  %heig.addr = alloca i32*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %w = alloca double, align 8
  %h = alloca double, align 8
  store i32* %xp, i32** %xp.addr, align 8
  store i32* %yp, i32** %yp.addr, align 8
  store i32* %wid, i32** %wid.addr, align 8
  store i32* %heig, i32** %heig.addr, align 8
  %0 = load i32, i32* @width, align 4
  %1 = load i32, i32* @height, align 4
  %cmp = icmp sge i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store double 1.500000e+02, double* %w, align 8
  %2 = load i32, i32* @height, align 4
  %conv = sitofp i32 %2 to double
  %3 = load double, double* %w, align 8
  %4 = load i32, i32* @width, align 4
  %conv1 = sitofp i32 %4 to double
  %div = fdiv double %3, %conv1
  %mul = fmul double %conv, %div
  store double %mul, double* %h, align 8
  %5 = load double, double* %w, align 8
  %sub = fsub double 2.000000e+02, %5
  %div2 = fdiv double %sub, 2.000000e+00
  store double %div2, double* %x, align 8
  %6 = load double, double* %h, align 8
  %sub3 = fsub double 2.000000e+02, %6
  %div4 = fdiv double %sub3, 2.000000e+00
  store double %div4, double* %y, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store double 1.500000e+02, double* %h, align 8
  %7 = load i32, i32* @width, align 4
  %conv5 = sitofp i32 %7 to double
  %8 = load double, double* %h, align 8
  %9 = load i32, i32* @height, align 4
  %conv6 = sitofp i32 %9 to double
  %div7 = fdiv double %8, %conv6
  %mul8 = fmul double %conv5, %div7
  store double %mul8, double* %w, align 8
  %10 = load double, double* %w, align 8
  %sub9 = fsub double 2.000000e+02, %10
  %div10 = fdiv double %sub9, 2.000000e+00
  store double %div10, double* %x, align 8
  %11 = load double, double* %h, align 8
  %sub11 = fsub double 2.000000e+02, %11
  %div12 = fdiv double %sub11, 2.000000e+00
  store double %div12, double* %y, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load double, double* %x, align 8
  %call = call double @rint(double %12) #5
  %conv13 = fptosi double %call to i32
  %13 = load i32*, i32** %xp.addr, align 8
  store i32 %conv13, i32* %13, align 4
  %14 = load double, double* %y, align 8
  %call14 = call double @rint(double %14) #5
  %conv15 = fptosi double %call14 to i32
  %15 = load i32*, i32** %yp.addr, align 8
  store i32 %conv15, i32* %15, align 4
  %16 = load double, double* %w, align 8
  %call16 = call double @rint(double %16) #5
  %conv17 = fptosi double %call16 to i32
  %17 = load i32*, i32** %wid.addr, align 8
  store i32 %conv17, i32* %17, align 4
  %18 = load double, double* %h, align 8
  %call18 = call double @rint(double %18) #5
  %conv19 = fptosi double %call18 to i32
  %19 = load i32*, i32** %heig.addr, align 8
  store i32 %conv19, i32* %19, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare void @gimp_vector_2d_to_3d(i32, i32, i32, i32, i32, i32, %struct._GimpVector3*, %struct._GimpVector3*) #2

; Function Attrs: nounwind uwtable
define void @preview_compute() #0 {
entry:
  %display = alloca %struct._GdkDisplay*, align 8
  %cursor = alloca %struct._GdkCursor*, align 8
  %startx = alloca i32, align 4
  %starty = alloca i32, align 4
  %pw = alloca i32, align 4
  %ph = alloca i32, align 4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @previewarea, align 8
  %call = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %0)
  store %struct._GdkDisplay* %call, %struct._GdkDisplay** %display, align 8
  call void @compute_preview_rectangle(i32* %startx, i32* %starty, i32* %pw, i32* %ph)
  %1 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %call1 = call %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay* %1, i32 150)
  store %struct._GdkCursor* %call1, %struct._GdkCursor** %cursor, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** @previewarea, align 8
  %call2 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %2)
  %3 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gdk_window_set_cursor(%struct._GdkDrawable* %call2, %struct._GdkCursor* %3)
  %4 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gdk_cursor_unref(%struct._GdkCursor* %4)
  %5 = load i32, i32* %startx, align 4
  %6 = load i32, i32* %starty, align 4
  %7 = load i32, i32* %pw, align 4
  %8 = load i32, i32* %ph, align 4
  call void @compute_preview(i32 %5, i32 %6, i32 %7, i32 %8)
  %9 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %call3 = call %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay* %9, i32 60)
  store %struct._GdkCursor* %call3, %struct._GdkCursor** %cursor, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** @previewarea, align 8
  %call4 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %10)
  %11 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gdk_window_set_cursor(%struct._GdkDrawable* %call4, %struct._GdkCursor* %11)
  %12 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gdk_cursor_unref(%struct._GdkCursor* %12)
  call void @gdk_flush()
  ret void
}

declare %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget*) #2

declare %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay*, i32) #2

declare void @gdk_window_set_cursor(%struct._GdkDrawable*, %struct._GdkCursor*) #2

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #2

declare void @gdk_cursor_unref(%struct._GdkCursor*) #2

; Function Attrs: nounwind uwtable
define internal void @compute_preview(i32 %startx, i32 %starty, i32 %w, i32 %h) #0 {
entry:
  %startx.addr = alloca i32, align 4
  %starty.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %xcnt = alloca i32, align 4
  %ycnt = alloca i32, align 4
  %f1 = alloca i32, align 4
  %f2 = alloca i32, align 4
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b = alloca i8, align 1
  %imagex = alloca double, align 8
  %imagey = alloca double, align 8
  %index = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  %lightcheck = alloca %struct._GimpRGB, align 8
  %darkcheck = alloca %struct._GimpRGB, align 8
  %pos = alloca %struct._GimpVector3, align 8
  %ray_func = alloca void (%struct._GimpRGB*, %struct._GimpVector3*)*, align 8
  %tmp = alloca %struct._GimpVector3, align 8
  %tmp100 = alloca %struct._GimpRGB, align 8
  store i32 %startx, i32* %startx.addr, align 4
  store i32 %starty, i32* %starty.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store i32 0, i32* %index, align 4
  %0 = load i32, i32* @xpostab_size, align 4
  %1 = load i32, i32* %w.addr, align 4
  %cmp = icmp ne i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load double*, double** @xpostab, align 8
  %tobool = icmp ne double* %2, null
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %3 = load double*, double** @xpostab, align 8
  %4 = bitcast double* %3 to i8*
  call void @g_free(i8* %4)
  store double* null, double** @xpostab, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  br label %if.end.2

if.end.2:                                         ; preds = %if.end, %entry
  %5 = load double*, double** @xpostab, align 8
  %tobool3 = icmp ne double* %5, null
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end.2
  %6 = load i32, i32* %w.addr, align 4
  %conv = sext i32 %6 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 8)
  %7 = bitcast i8* %call to double*
  store double* %7, double** @xpostab, align 8
  %8 = load i32, i32* %w.addr, align 4
  store i32 %8, i32* @xpostab_size, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end.2
  %9 = load i32, i32* @ypostab_size, align 4
  %10 = load i32, i32* %h.addr, align 4
  %cmp6 = icmp ne i32 %9, %10
  br i1 %cmp6, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end.5
  %11 = load double*, double** @ypostab, align 8
  %tobool9 = icmp ne double* %11, null
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.8
  %12 = load double*, double** @ypostab, align 8
  %13 = bitcast double* %12 to i8*
  call void @g_free(i8* %13)
  store double* null, double** @ypostab, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.then.8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.end.5
  %14 = load double*, double** @ypostab, align 8
  %tobool13 = icmp ne double* %14, null
  br i1 %tobool13, label %if.end.17, label %if.then.14

if.then.14:                                       ; preds = %if.end.12
  %15 = load i32, i32* %h.addr, align 4
  %conv15 = sext i32 %15 to i64
  %call16 = call noalias i8* @g_malloc_n(i64 %conv15, i64 8)
  %16 = bitcast i8* %call16 to double*
  store double* %16, double** @ypostab, align 8
  %17 = load i32, i32* %h.addr, align 4
  store i32 %17, i32* @ypostab_size, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %if.end.12
  store i32 0, i32* %xcnt, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.17
  %18 = load i32, i32* %xcnt, align 4
  %19 = load i32, i32* %w.addr, align 4
  %cmp18 = icmp slt i32 %18, %19
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* @width, align 4
  %conv20 = sitofp i32 %20 to double
  %21 = load i32, i32* %xcnt, align 4
  %conv21 = sitofp i32 %21 to double
  %22 = load i32, i32* %w.addr, align 4
  %conv22 = sitofp i32 %22 to double
  %div = fdiv double %conv21, %conv22
  %mul = fmul double %conv20, %div
  %23 = load i32, i32* %xcnt, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load double*, double** @xpostab, align 8
  %arrayidx = getelementptr inbounds double, double* %24, i64 %idxprom
  store double %mul, double* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %xcnt, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %xcnt, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %ycnt, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.34, %for.end
  %26 = load i32, i32* %ycnt, align 4
  %27 = load i32, i32* %h.addr, align 4
  %cmp24 = icmp slt i32 %26, %27
  br i1 %cmp24, label %for.body.26, label %for.end.36

for.body.26:                                      ; preds = %for.cond.23
  %28 = load i32, i32* @height, align 4
  %conv27 = sitofp i32 %28 to double
  %29 = load i32, i32* %ycnt, align 4
  %conv28 = sitofp i32 %29 to double
  %30 = load i32, i32* %h.addr, align 4
  %conv29 = sitofp i32 %30 to double
  %div30 = fdiv double %conv28, %conv29
  %mul31 = fmul double %conv27, %div30
  %31 = load i32, i32* %ycnt, align 4
  %idxprom32 = sext i32 %31 to i64
  %32 = load double*, double** @ypostab, align 8
  %arrayidx33 = getelementptr inbounds double, double* %32, i64 %idxprom32
  store double %mul31, double* %arrayidx33, align 8
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.body.26
  %33 = load i32, i32* %ycnt, align 4
  %inc35 = add nsw i32 %33, 1
  store i32 %inc35, i32* %ycnt, align 4
  br label %for.cond.23

for.end.36:                                       ; preds = %for.cond.23
  %34 = load i32, i32* @width, align 4
  %35 = load i32, i32* @height, align 4
  call void @precompute_init(i32 %34, i32 %35)
  call void @gimp_rgba_set(%struct._GimpRGB* %lightcheck, double 6.000000e-01, double 6.000000e-01, double 6.000000e-01, double 1.000000e+00)
  call void @gimp_rgba_set(%struct._GimpRGB* %darkcheck, double 4.000000e-01, double 4.000000e-01, double 4.000000e-01, double 1.000000e+00)
  %36 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 16), align 4
  %cmp37 = icmp eq i32 %36, 1
  br i1 %cmp37, label %land.lhs.true, label %if.end.43

land.lhs.true:                                    ; preds = %for.end.36
  %37 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 1), align 4
  %cmp39 = icmp ne i32 %37, -1
  br i1 %cmp39, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %land.lhs.true
  %38 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 1), align 4
  %call42 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %38)
  %39 = load i32, i32* @width, align 4
  %40 = load i32, i32* @height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* @bump_region, %struct._GimpDrawable* %call42, i32 0, i32 0, i32 %39, i32 %40, i32 0, i32 0)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %land.lhs.true, %for.end.36
  store double 0.000000e+00, double* %imagey, align 8
  %41 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 20), align 4
  %tobool44 = icmp ne i32 %41, 0
  br i1 %tobool44, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %if.end.43
  store void (%struct._GimpRGB*, %struct._GimpVector3*)* @get_ray_color, void (%struct._GimpRGB*, %struct._GimpVector3*)** %ray_func, align 8
  br label %if.end.46

if.else:                                          ; preds = %if.end.43
  store void (%struct._GimpRGB*, %struct._GimpVector3*)* @get_ray_color_no_bilinear, void (%struct._GimpRGB*, %struct._GimpVector3*)** %ray_func, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.else, %if.then.45
  %42 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 17), align 4
  %cmp47 = icmp eq i32 %42, 1
  br i1 %cmp47, label %land.lhs.true.49, label %if.end.60

land.lhs.true.49:                                 ; preds = %if.end.46
  %43 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 2), align 4
  %cmp50 = icmp ne i32 %43, -1
  br i1 %cmp50, label %if.then.52, label %if.end.60

if.then.52:                                       ; preds = %land.lhs.true.49
  %44 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 2), align 4
  %call53 = call i32 @gimp_drawable_width(i32 %44)
  store i32 %call53, i32* @env_width, align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 2), align 4
  %call54 = call i32 @gimp_drawable_height(i32 %45)
  store i32 %call54, i32* @env_height, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 2), align 4
  %call55 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %46)
  %47 = load i32, i32* @env_width, align 4
  %48 = load i32, i32* @env_height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* @env_region, %struct._GimpDrawable* %call55, i32 0, i32 0, i32 %47, i32 %48, i32 0, i32 0)
  %49 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 20), align 4
  %tobool56 = icmp ne i32 %49, 0
  br i1 %tobool56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %if.then.52
  store void (%struct._GimpRGB*, %struct._GimpVector3*)* @get_ray_color_ref, void (%struct._GimpRGB*, %struct._GimpVector3*)** %ray_func, align 8
  br label %if.end.59

if.else.58:                                       ; preds = %if.then.52
  store void (%struct._GimpRGB*, %struct._GimpVector3*)* @get_ray_color_no_bilinear_ref, void (%struct._GimpRGB*, %struct._GimpVector3*)** %ray_func, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.58, %if.then.57
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %land.lhs.true.49, %if.end.46
  %50 = load %struct._cairo_surface*, %struct._cairo_surface** @preview_surface, align 8
  call void @cairo_surface_flush(%struct._cairo_surface* %50)
  store i32 0, i32* %ycnt, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.150, %if.end.60
  %51 = load i32, i32* %ycnt, align 4
  %cmp62 = icmp slt i32 %51, 200
  br i1 %cmp62, label %for.body.64, label %for.end.152

for.body.64:                                      ; preds = %for.cond.61
  %52 = load i32, i32* %ycnt, align 4
  %53 = load i32, i32* @preview_rgb_stride, align 4
  %mul65 = mul nsw i32 %52, %53
  store i32 %mul65, i32* %index, align 4
  store i32 0, i32* %xcnt, align 4
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.147, %for.body.64
  %54 = load i32, i32* %xcnt, align 4
  %cmp67 = icmp slt i32 %54, 200
  br i1 %cmp67, label %for.body.69, label %for.end.149

for.body.69:                                      ; preds = %for.cond.66
  %55 = load i32, i32* %ycnt, align 4
  %56 = load i32, i32* %starty.addr, align 4
  %cmp70 = icmp sge i32 %55, %56
  br i1 %cmp70, label %land.lhs.true.72, label %if.else.135

land.lhs.true.72:                                 ; preds = %for.body.69
  %57 = load i32, i32* %ycnt, align 4
  %58 = load i32, i32* %starty.addr, align 4
  %59 = load i32, i32* %h.addr, align 4
  %add = add nsw i32 %58, %59
  %cmp73 = icmp slt i32 %57, %add
  br i1 %cmp73, label %land.lhs.true.75, label %if.else.135

land.lhs.true.75:                                 ; preds = %land.lhs.true.72
  %60 = load i32, i32* %xcnt, align 4
  %61 = load i32, i32* %startx.addr, align 4
  %cmp76 = icmp sge i32 %60, %61
  br i1 %cmp76, label %land.lhs.true.78, label %if.else.135

land.lhs.true.78:                                 ; preds = %land.lhs.true.75
  %62 = load i32, i32* %xcnt, align 4
  %63 = load i32, i32* %startx.addr, align 4
  %64 = load i32, i32* %w.addr, align 4
  %add79 = add nsw i32 %63, %64
  %cmp80 = icmp slt i32 %62, %add79
  br i1 %cmp80, label %if.then.82, label %if.else.135

if.then.82:                                       ; preds = %land.lhs.true.78
  %65 = load i32, i32* %xcnt, align 4
  %66 = load i32, i32* %startx.addr, align 4
  %sub = sub nsw i32 %65, %66
  %idxprom83 = sext i32 %sub to i64
  %67 = load double*, double** @xpostab, align 8
  %arrayidx84 = getelementptr inbounds double, double* %67, i64 %idxprom83
  %68 = load double, double* %arrayidx84, align 8
  store double %68, double* %imagex, align 8
  %69 = load i32, i32* %ycnt, align 4
  %70 = load i32, i32* %starty.addr, align 4
  %sub85 = sub nsw i32 %69, %70
  %idxprom86 = sext i32 %sub85 to i64
  %71 = load double*, double** @ypostab, align 8
  %arrayidx87 = getelementptr inbounds double, double* %71, i64 %idxprom86
  %72 = load double, double* %arrayidx87, align 8
  store double %72, double* %imagey, align 8
  %73 = load double, double* %imagex, align 8
  %74 = load double, double* %imagey, align 8
  call void @int_to_posf(%struct._GimpVector3* sret %tmp, double %73, double %74)
  %75 = bitcast %struct._GimpVector3* %pos to i8*
  %76 = bitcast %struct._GimpVector3* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* %76, i64 24, i32 8, i1 false)
  %77 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 16), align 4
  %cmp88 = icmp eq i32 %77, 1
  br i1 %cmp88, label %land.lhs.true.90, label %if.end.99

land.lhs.true.90:                                 ; preds = %if.then.82
  %78 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 1), align 4
  %cmp91 = icmp ne i32 %78, -1
  br i1 %cmp91, label %land.lhs.true.93, label %if.end.99

land.lhs.true.93:                                 ; preds = %land.lhs.true.90
  %79 = load i32, i32* %xcnt, align 4
  %80 = load i32, i32* %startx.addr, align 4
  %cmp94 = icmp eq i32 %79, %80
  br i1 %cmp94, label %if.then.96, label %if.end.99

if.then.96:                                       ; preds = %land.lhs.true.93
  %x = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %pos, i32 0, i32 0
  %81 = load double, double* %x, align 8
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %pos, i32 0, i32 1
  %82 = load double, double* %y, align 8
  call void @pos_to_float(double %81, double %82, double* %imagex, double* %imagey)
  %83 = load i32, i32* @width, align 4
  %84 = load double, double* %imagey, align 8
  %call97 = call double @rint(double %84) #5
  %conv98 = fptosi double %call97 to i32
  call void @precompute_normals(i32 0, i32 %83, i32 %conv98)
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.96, %land.lhs.true.93, %land.lhs.true.90, %if.then.82
  %85 = load void (%struct._GimpRGB*, %struct._GimpVector3*)*, void (%struct._GimpRGB*, %struct._GimpVector3*)** %ray_func, align 8
  call void %85(%struct._GimpRGB* sret %tmp100, %struct._GimpVector3* %pos)
  %86 = bitcast %struct._GimpRGB* %color to i8*
  %87 = bitcast %struct._GimpRGB* %tmp100 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %86, i8* %87, i64 32, i32 8, i1 false)
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  %88 = load double, double* %a, align 8
  %cmp101 = fcmp olt double %88, 1.000000e+00
  br i1 %cmp101, label %if.then.103, label %if.end.125

if.then.103:                                      ; preds = %if.end.99
  %89 = load i32, i32* %xcnt, align 4
  %rem = srem i32 %89, 32
  %cmp104 = icmp slt i32 %rem, 16
  %conv105 = zext i1 %cmp104 to i32
  store i32 %conv105, i32* %f1, align 4
  %90 = load i32, i32* %ycnt, align 4
  %rem106 = srem i32 %90, 32
  %cmp107 = icmp slt i32 %rem106, 16
  %conv108 = zext i1 %cmp107 to i32
  store i32 %conv108, i32* %f2, align 4
  %91 = load i32, i32* %f1, align 4
  %92 = load i32, i32* %f2, align 4
  %xor = xor i32 %91, %92
  store i32 %xor, i32* %f1, align 4
  %93 = load i32, i32* %f1, align 4
  %tobool109 = icmp ne i32 %93, 0
  br i1 %tobool109, label %if.then.110, label %if.else.117

if.then.110:                                      ; preds = %if.then.103
  %a111 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  %94 = load double, double* %a111, align 8
  %cmp112 = fcmp oeq double %94, 0.000000e+00
  br i1 %cmp112, label %if.then.114, label %if.else.115

if.then.114:                                      ; preds = %if.then.110
  %95 = bitcast %struct._GimpRGB* %color to i8*
  %96 = bitcast %struct._GimpRGB* %lightcheck to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %95, i8* %96, i64 32, i32 8, i1 false)
  br label %if.end.116

if.else.115:                                      ; preds = %if.then.110
  call void @gimp_rgb_composite(%struct._GimpRGB* %color, %struct._GimpRGB* %lightcheck, i32 2)
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.115, %if.then.114
  br label %if.end.124

if.else.117:                                      ; preds = %if.then.103
  %a118 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  %97 = load double, double* %a118, align 8
  %cmp119 = fcmp oeq double %97, 0.000000e+00
  br i1 %cmp119, label %if.then.121, label %if.else.122

if.then.121:                                      ; preds = %if.else.117
  %98 = bitcast %struct._GimpRGB* %color to i8*
  %99 = bitcast %struct._GimpRGB* %darkcheck to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %98, i8* %99, i64 32, i32 8, i1 false)
  br label %if.end.123

if.else.122:                                      ; preds = %if.else.117
  call void @gimp_rgb_composite(%struct._GimpRGB* %color, %struct._GimpRGB* %darkcheck, i32 2)
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.122, %if.then.121
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %if.end.116
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %if.end.99
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %color, i8* %r, i8* %g, i8* %b)
  br label %do.body

do.body:                                          ; preds = %if.end.125
  %100 = load i8, i8* %b, align 1
  %101 = load i8*, i8** @preview_rgb_data, align 8
  %102 = load i32, i32* %index, align 4
  %idx.ext = sext i32 %102 to i64
  %add.ptr = getelementptr inbounds i8, i8* %101, i64 %idx.ext
  %arrayidx126 = getelementptr inbounds i8, i8* %add.ptr, i64 0
  store i8 %100, i8* %arrayidx126, align 1
  %103 = load i8, i8* %g, align 1
  %104 = load i8*, i8** @preview_rgb_data, align 8
  %105 = load i32, i32* %index, align 4
  %idx.ext127 = sext i32 %105 to i64
  %add.ptr128 = getelementptr inbounds i8, i8* %104, i64 %idx.ext127
  %arrayidx129 = getelementptr inbounds i8, i8* %add.ptr128, i64 1
  store i8 %103, i8* %arrayidx129, align 1
  %106 = load i8, i8* %r, align 1
  %107 = load i8*, i8** @preview_rgb_data, align 8
  %108 = load i32, i32* %index, align 4
  %idx.ext130 = sext i32 %108 to i64
  %add.ptr131 = getelementptr inbounds i8, i8* %107, i64 %idx.ext130
  %arrayidx132 = getelementptr inbounds i8, i8* %add.ptr131, i64 2
  store i8 %106, i8* %arrayidx132, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %109 = load i32, i32* %index, align 4
  %add133 = add nsw i32 %109, 4
  store i32 %add133, i32* %index, align 4
  %110 = load double, double* %imagex, align 8
  %inc134 = fadd double %110, 1.000000e+00
  store double %inc134, double* %imagex, align 8
  br label %if.end.146

if.else.135:                                      ; preds = %land.lhs.true.78, %land.lhs.true.75, %land.lhs.true.72, %for.body.69
  %111 = load i32, i32* %index, align 4
  %inc136 = add nsw i32 %111, 1
  store i32 %inc136, i32* %index, align 4
  %idxprom137 = sext i32 %111 to i64
  %112 = load i8*, i8** @preview_rgb_data, align 8
  %arrayidx138 = getelementptr inbounds i8, i8* %112, i64 %idxprom137
  store i8 -56, i8* %arrayidx138, align 1
  %113 = load i32, i32* %index, align 4
  %inc139 = add nsw i32 %113, 1
  store i32 %inc139, i32* %index, align 4
  %idxprom140 = sext i32 %113 to i64
  %114 = load i8*, i8** @preview_rgb_data, align 8
  %arrayidx141 = getelementptr inbounds i8, i8* %114, i64 %idxprom140
  store i8 -56, i8* %arrayidx141, align 1
  %115 = load i32, i32* %index, align 4
  %inc142 = add nsw i32 %115, 1
  store i32 %inc142, i32* %index, align 4
  %idxprom143 = sext i32 %115 to i64
  %116 = load i8*, i8** @preview_rgb_data, align 8
  %arrayidx144 = getelementptr inbounds i8, i8* %116, i64 %idxprom143
  store i8 -56, i8* %arrayidx144, align 1
  %117 = load i32, i32* %index, align 4
  %inc145 = add nsw i32 %117, 1
  store i32 %inc145, i32* %index, align 4
  br label %if.end.146

if.end.146:                                       ; preds = %if.else.135, %do.end
  br label %for.inc.147

for.inc.147:                                      ; preds = %if.end.146
  %118 = load i32, i32* %xcnt, align 4
  %inc148 = add nsw i32 %118, 1
  store i32 %inc148, i32* %xcnt, align 4
  br label %for.cond.66

for.end.149:                                      ; preds = %for.cond.66
  br label %for.inc.150

for.inc.150:                                      ; preds = %for.end.149
  %119 = load i32, i32* %ycnt, align 4
  %inc151 = add nsw i32 %119, 1
  store i32 %inc151, i32* %ycnt, align 4
  br label %for.cond.61

for.end.152:                                      ; preds = %for.cond.61
  %120 = load %struct._cairo_surface*, %struct._cairo_surface** @preview_surface, align 8
  call void @cairo_surface_mark_dirty(%struct._cairo_surface* %120)
  ret void
}

declare void @gdk_flush() #2

; Function Attrs: nounwind uwtable
define i32 @preview_events(%struct._GtkWidget* %area, %union._GdkEvent* %event) #0 {
entry:
  %area.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  store %struct._GtkWidget* %area, %struct._GtkWidget** %area.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  %0 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %type = bitcast %union._GdkEvent* %0 to i32*
  %1 = load i32, i32* %type, align 4
  switch i32 %1, label %sw.default [
    i32 10, label %sw.bb
    i32 11, label %sw.bb.1
    i32 4, label %sw.bb.2
    i32 7, label %sw.bb.5
    i32 3, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %2 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %button = bitcast %union._GdkEvent* %2 to %struct._GdkEventButton*
  %x = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %button, i32 0, i32 4
  %3 = load double, double* %x, align 8
  %conv = fptosi double %3 to i32
  %4 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %button3 = bitcast %union._GdkEvent* %4 to %struct._GdkEventButton*
  %y = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %button3, i32 0, i32 5
  %5 = load double, double* %y, align 8
  %conv4 = fptosi double %5 to i32
  %call = call i32 @check_handle_hit(i32 %conv, i32 %conv4)
  store i32 %call, i32* @light_hit, align 4
  store i32 1, i32* @left_button_pressed, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  store i32 0, i32* @left_button_pressed, align 4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %6 = load i32, i32* @left_button_pressed, align 4
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb.6
  %7 = load i32, i32* @light_hit, align 4
  %cmp8 = icmp eq i32 %7, 1
  br i1 %cmp8, label %land.lhs.true.10, label %if.end

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %8 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 22), align 4
  %cmp11 = icmp eq i32 %8, 1
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.10
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** @previewarea, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %9)
  call void @interactive_preview_callback(%struct._GtkWidget* null)
  %10 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %motion = bitcast %union._GdkEvent* %10 to %struct._GdkEventMotion*
  %x13 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %motion, i32 0, i32 4
  %11 = load double, double* %x13, align 8
  %conv14 = fptosi double %11 to i32
  %12 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %motion15 = bitcast %union._GdkEvent* %12 to %struct._GdkEventMotion*
  %y16 = getelementptr inbounds %struct._GdkEventMotion, %struct._GdkEventMotion* %motion15, i32 0, i32 5
  %13 = load double, double* %y16, align 8
  %conv17 = fptosi double %13 to i32
  call void @update_light(i32 %conv14, i32 %conv17)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.10, %land.lhs.true, %sw.bb.6
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end, %sw.bb.5, %sw.bb.2, %sw.bb.1, %sw.bb
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @check_handle_hit(i32 %xpos, i32 %ypos) #0 {
entry:
  %retval = alloca i32, align 4
  %xpos.addr = alloca i32, align 4
  %ypos.addr = alloca i32, align 4
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %r = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %xpos, i32* %xpos.addr, align 4
  store i32 %ypos, i32* %ypos.addr, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 24), align 4
  store i32 %0, i32* %k, align 4
  %1 = load i32, i32* @handle_xpos, align 4
  %2 = load i32, i32* %xpos.addr, align 4
  %sub = sub nsw i32 %1, %2
  store i32 %sub, i32* %dx, align 4
  %3 = load i32, i32* @handle_ypos, align 4
  %4 = load i32, i32* %ypos.addr, align 4
  %sub1 = sub nsw i32 %3, %4
  store i32 %sub1, i32* %dy, align 4
  %5 = load i32, i32* %k, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom
  %type = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx, i32 0, i32 0
  %6 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* %k, align 4
  %idxprom2 = sext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom2
  %type4 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx3, i32 0, i32 0
  %8 = load i32, i32* %type4, align 4
  %cmp5 = icmp eq i32 %8, 1
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %9 = load i32, i32* %dx, align 4
  %10 = load i32, i32* %dx, align 4
  %mul = mul nsw i32 %9, %10
  %11 = load i32, i32* %dy, align 4
  %12 = load i32, i32* %dy, align 4
  %mul6 = mul nsw i32 %11, %12
  %add = add nsw i32 %mul, %mul6
  %conv = sitofp i32 %add to double
  %call = call double @sqrt(double %conv) #1
  %add7 = fadd double %call, 5.000000e-01
  %conv8 = fptosi double %add7 to i32
  store i32 %conv8, i32* %r, align 4
  %13 = load i32, i32* %r, align 4
  %cmp9 = icmp sgt i32 %13, 7
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.else, %if.then.11
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #2

; Function Attrs: nounwind uwtable
define void @interactive_preview_callback(%struct._GtkWidget* %widget) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load i32, i32* @preview_update_timer, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @preview_update_timer, align 4
  %call = call i32 @g_source_remove(i32 %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i32 @g_timeout_add(i32 100, i32 (i8*)* @interactive_preview_timer_callback, i8* null)
  store i32 %call1, i32* @preview_update_timer, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @preview_expose(%struct._GtkWidget* %area, %struct._GdkEventExpose* %eevent) #0 {
entry:
  %area.addr = alloca %struct._GtkWidget*, align 8
  %eevent.addr = alloca %struct._GdkEventExpose*, align 8
  %cr = alloca %struct._cairo*, align 8
  store %struct._GtkWidget* %area, %struct._GtkWidget** %area.addr, align 8
  store %struct._GdkEventExpose* %eevent, %struct._GdkEventExpose** %eevent.addr, align 8
  %0 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %eevent.addr, align 8
  %window = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %0, i32 0, i32 1
  %1 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %call = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %1)
  store %struct._cairo* %call, %struct._cairo** %cr, align 8
  %2 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %3 = load %struct._cairo_surface*, %struct._cairo_surface** @preview_surface, align 8
  call void @cairo_set_source_surface(%struct._cairo* %2, %struct._cairo_surface* %3, double 0.000000e+00, double 0.000000e+00)
  %4 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_paint(%struct._cairo* %4)
  %5 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 22), align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @draw_handles()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %6)
  ret i32 0
}

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #2

declare void @cairo_set_source_surface(%struct._cairo*, %struct._cairo_surface*, double, double) #2

declare void @cairo_paint(%struct._cairo*) #2

; Function Attrs: nounwind uwtable
define internal void @draw_handles() #0 {
entry:
  %dxpos = alloca double, align 8
  %dypos = alloca double, align 8
  %startx = alloca i32, align 4
  %starty = alloca i32, align 4
  %pw = alloca i32, align 4
  %ph = alloca i32, align 4
  %viewpoint = alloca %struct._GimpVector3, align 8
  %light_position = alloca %struct._GimpVector3, align 8
  %k = alloca i32, align 4
  %length = alloca float, align 4
  %delta_x = alloca float, align 4
  %delta_y = alloca float, align 4
  %color = alloca %struct._GdkColor, align 4
  %cr = alloca %struct._cairo*, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 24), align 4
  store i32 %0, i32* %k, align 4
  store float 0.000000e+00, float* %delta_x, align 4
  store float 0.000000e+00, float* %delta_y, align 4
  call void @compute_preview_rectangle(i32* %startx, i32* %starty, i32* %pw, i32* %ph)
  %1 = load i32, i32* %k, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom
  %type = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx, i32 0, i32 0
  %2 = load i32, i32* %type, align 4
  switch i32 %2, label %sw.epilog [
    i32 3, label %sw.bb
    i32 0, label %sw.bb.1
    i32 2, label %sw.bb.1
    i32 1, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry
  br label %if.end

sw.bb.1:                                          ; preds = %entry, %entry
  %3 = bitcast %struct._GimpVector3* %viewpoint to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast (%struct._GimpVector3* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 3) to i8*), i64 24, i32 8, i1 false)
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %viewpoint, i32 0, i32 2
  %4 = load double, double* %z, align 8
  %sub = fsub double -0.000000e+00, %4
  %z2 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %viewpoint, i32 0, i32 2
  store double %sub, double* %z2, align 8
  %5 = load i32, i32* %k, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom3
  %position = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx4, i32 0, i32 1
  %6 = bitcast %struct._GimpVector3* %light_position to i8*
  %7 = bitcast %struct._GimpVector3* %position to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 24, i32 8, i1 false)
  %8 = load i32, i32* %startx, align 4
  %9 = load i32, i32* %starty, align 4
  %10 = load i32, i32* %pw, align 4
  %11 = load i32, i32* %ph, align 4
  call void @gimp_vector_3d_to_2d(i32 %8, i32 %9, i32 %10, i32 %11, double* %dxpos, double* %dypos, %struct._GimpVector3* %viewpoint, %struct._GimpVector3* %light_position)
  %12 = load double, double* %dxpos, align 8
  %add = fadd double %12, 5.000000e-01
  %conv = fptosi double %add to i32
  store i32 %conv, i32* @handle_xpos, align 4
  %13 = load double, double* %dypos, align 8
  %add5 = fadd double %13, 5.000000e-01
  %conv6 = fptosi double %add5 to i32
  store i32 %conv6, i32* @handle_ypos, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %light_position, i32 0, i32 1
  store double 5.000000e-01, double* %y, align 8
  %x = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %light_position, i32 0, i32 0
  store double 5.000000e-01, double* %x, align 8
  %z8 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %light_position, i32 0, i32 2
  store double 0.000000e+00, double* %z8, align 8
  %z9 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %viewpoint, i32 0, i32 2
  %14 = load double, double* %z9, align 8
  %sub10 = fsub double -0.000000e+00, %14
  %z11 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %viewpoint, i32 0, i32 2
  store double %sub10, double* %z11, align 8
  %15 = load i32, i32* %startx, align 4
  %16 = load i32, i32* %starty, align 4
  %17 = load i32, i32* %pw, align 4
  %18 = load i32, i32* %ph, align 4
  call void @gimp_vector_3d_to_2d(i32 %15, i32 %16, i32 %17, i32 %18, double* %dxpos, double* %dypos, %struct._GimpVector3* %viewpoint, %struct._GimpVector3* %light_position)
  store float 5.000000e+01, float* %length, align 4
  %19 = load i32, i32* %k, align 4
  %idxprom12 = sext i32 %19 to i64
  %arrayidx13 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom12
  %direction = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx13, i32 0, i32 2
  %x14 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %direction, i32 0, i32 0
  %20 = load double, double* %x14, align 8
  %21 = load float, float* %length, align 4
  %conv15 = fpext float %21 to double
  %mul = fmul double %20, %conv15
  %conv16 = fptrunc double %mul to float
  store float %conv16, float* %delta_x, align 4
  %22 = load i32, i32* %k, align 4
  %idxprom17 = sext i32 %22 to i64
  %arrayidx18 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom17
  %direction19 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx18, i32 0, i32 2
  %y20 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %direction19, i32 0, i32 1
  %23 = load double, double* %y20, align 8
  %24 = load float, float* %length, align 4
  %conv21 = fpext float %24 to double
  %mul22 = fmul double %23, %conv21
  %conv23 = fptrunc double %mul22 to float
  store float %conv23, float* %delta_y, align 4
  %25 = load double, double* %dxpos, align 8
  %26 = load float, float* %delta_x, align 4
  %conv24 = fpext float %26 to double
  %add25 = fadd double %25, %conv24
  %conv26 = fptosi double %add25 to i32
  store i32 %conv26, i32* @handle_xpos, align 4
  %27 = load double, double* %dypos, align 8
  %28 = load float, float* %delta_y, align 4
  %conv27 = fpext float %28 to double
  %add28 = fadd double %27, %conv27
  %conv29 = fptosi double %add28 to i32
  store i32 %conv29, i32* @handle_ypos, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.7, %sw.bb.1
  %29 = load i32, i32* %k, align 4
  %idxprom30 = sext i32 %29 to i64
  %arrayidx31 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom30
  %type32 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx31, i32 0, i32 0
  %30 = load i32, i32* %type32, align 4
  %cmp = icmp ne i32 %30, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** @previewarea, align 8
  %call = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %31)
  %call34 = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %call)
  store %struct._cairo* %call34, %struct._cairo** %cr, align 8
  %32 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_width(%struct._cairo* %32, double 1.000000e+00)
  %red = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %color, i32 0, i32 1
  store i16 0, i16* %red, align 2
  %green = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %color, i32 0, i32 2
  store i16 16384, i16* %green, align 2
  %blue = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %color, i32 0, i32 3
  store i16 -1, i16* %blue, align 2
  %33 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @gdk_cairo_set_source_color(%struct._cairo* %33, %struct._GdkColor* %color)
  %34 = load i32, i32* %k, align 4
  %idxprom35 = sext i32 %34 to i64
  %arrayidx36 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom35
  %type37 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx36, i32 0, i32 0
  %35 = load i32, i32* %type37, align 4
  switch i32 %35, label %sw.epilog.52 [
    i32 0, label %sw.bb.38
    i32 2, label %sw.bb.38
    i32 1, label %sw.bb.41
    i32 3, label %sw.bb.51
  ]

sw.bb.38:                                         ; preds = %if.then, %if.then
  %36 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %37 = load i32, i32* @handle_xpos, align 4
  %conv39 = sitofp i32 %37 to double
  %38 = load i32, i32* @handle_ypos, align 4
  %conv40 = sitofp i32 %38 to double
  call void @cairo_arc(%struct._cairo* %36, double %conv39, double %conv40, double 4.000000e+00, double 0.000000e+00, double 0x401921FB54442D18)
  %39 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_fill(%struct._cairo* %39)
  br label %sw.epilog.52

sw.bb.41:                                         ; preds = %if.then
  %40 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %41 = load i32, i32* @handle_xpos, align 4
  %conv42 = sitofp i32 %41 to double
  %42 = load i32, i32* @handle_ypos, align 4
  %conv43 = sitofp i32 %42 to double
  call void @cairo_arc(%struct._cairo* %40, double %conv42, double %conv43, double 4.000000e+00, double 0.000000e+00, double 0x401921FB54442D18)
  %43 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_fill(%struct._cairo* %43)
  %44 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %45 = load i32, i32* @handle_xpos, align 4
  %conv44 = sitofp i32 %45 to double
  %46 = load i32, i32* @handle_ypos, align 4
  %conv45 = sitofp i32 %46 to double
  call void @cairo_move_to(%struct._cairo* %44, double %conv44, double %conv45)
  %47 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %48 = load i32, i32* %startx, align 4
  %49 = load i32, i32* %pw, align 4
  %div = sdiv i32 %49, 2
  %add46 = add nsw i32 %48, %div
  %conv47 = sitofp i32 %add46 to double
  %50 = load i32, i32* %starty, align 4
  %51 = load i32, i32* %ph, align 4
  %div48 = sdiv i32 %51, 2
  %add49 = add nsw i32 %50, %div48
  %conv50 = sitofp i32 %add49 to double
  call void @cairo_line_to(%struct._cairo* %47, double %conv47, double %conv50)
  %52 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke(%struct._cairo* %52)
  br label %sw.epilog.52

sw.bb.51:                                         ; preds = %if.then
  br label %sw.epilog.52

sw.epilog.52:                                     ; preds = %if.then, %sw.bb.51, %sw.bb.41, %sw.bb.38
  %53 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %53)
  br label %if.end

if.end:                                           ; preds = %sw.bb, %sw.epilog.52, %sw.epilog
  ret void
}

declare void @cairo_destroy(%struct._cairo*) #2

declare i32 @g_source_remove(i32) #2

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @interactive_preview_timer_callback(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %k = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 24), align 4
  store i32 %0, i32* %k, align 4
  store i32 0, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 23), align 4
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_pos_x, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_spin_button_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkSpinButton*
  %4 = load i32, i32* %k, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom
  %position = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx, i32 0, i32 1
  %x = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %position, i32 0, i32 0
  %5 = load double, double* %x, align 8
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %3, double %5)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_pos_y, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_spin_button_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call2)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkSpinButton*
  %9 = load i32, i32* %k, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom4
  %position6 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx5, i32 0, i32 1
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %position6, i32 0, i32 1
  %10 = load double, double* %y, align 8
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %8, double %10)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_pos_z, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_spin_button_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call7)
  %13 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkSpinButton*
  %14 = load i32, i32* %k, align 4
  %idxprom9 = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom9
  %position11 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx10, i32 0, i32 1
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %position11, i32 0, i32 2
  %15 = load double, double* %z, align 8
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %13, double %15)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_dir_x, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_spin_button_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call12)
  %18 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkSpinButton*
  %19 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %19 to i64
  %arrayidx15 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom14
  %direction = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx15, i32 0, i32 2
  %x16 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %direction, i32 0, i32 0
  %20 = load double, double* %x16, align 8
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %18, double %20)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_dir_y, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_spin_button_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call17)
  %23 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkSpinButton*
  %24 = load i32, i32* %k, align 4
  %idxprom19 = sext i32 %24 to i64
  %arrayidx20 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom19
  %direction21 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx20, i32 0, i32 2
  %y22 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %direction21, i32 0, i32 1
  %25 = load double, double* %y22, align 8
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %23, double %25)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** @spin_dir_z, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_spin_button_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call23)
  %28 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkSpinButton*
  %29 = load i32, i32* %k, align 4
  %idxprom25 = sext i32 %29 to i64
  %arrayidx26 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom25
  %direction27 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx26, i32 0, i32 2
  %z28 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %direction27, i32 0, i32 2
  %30 = load double, double* %z28, align 8
  call void @gtk_spin_button_set_value(%struct._GtkSpinButton* %28, double %30)
  store i32 1, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 23), align 4
  call void @preview_compute()
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** @previewarea, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %31)
  store i32 0, i32* @preview_update_timer, align 4
  ret i32 0
}

; Function Attrs: nounwind readnone
declare double @rint(double) #3

declare void @g_free(i8*) #2

declare noalias i8* @g_malloc_n(i64, i64) #2

declare void @precompute_init(i32, i32) #2

declare void @gimp_rgba_set(%struct._GimpRGB*, double, double, double, double) #2

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #2

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #2

declare void @get_ray_color(%struct._GimpRGB* sret, %struct._GimpVector3*) #2

declare void @get_ray_color_no_bilinear(%struct._GimpRGB* sret, %struct._GimpVector3*) #2

declare i32 @gimp_drawable_width(i32) #2

declare i32 @gimp_drawable_height(i32) #2

declare void @get_ray_color_ref(%struct._GimpRGB* sret, %struct._GimpVector3*) #2

declare void @get_ray_color_no_bilinear_ref(%struct._GimpRGB* sret, %struct._GimpVector3*) #2

declare void @cairo_surface_flush(%struct._cairo_surface*) #2

declare void @int_to_posf(%struct._GimpVector3* sret, double, double) #2

declare void @pos_to_float(double, double, double*, double*) #2

declare void @precompute_normals(i32, i32, i32) #2

declare void @gimp_rgb_composite(%struct._GimpRGB*, %struct._GimpRGB*, i32) #2

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #2

declare void @cairo_surface_mark_dirty(%struct._cairo_surface*) #2

; Function Attrs: nounwind
declare double @sqrt(double) #4

declare void @gimp_vector_3d_to_2d(i32, i32, i32, i32, double*, double*, %struct._GimpVector3*, %struct._GimpVector3*) #2

declare void @cairo_set_line_width(%struct._cairo*, double) #2

declare void @gdk_cairo_set_source_color(%struct._cairo*, %struct._GdkColor*) #2

declare void @cairo_arc(%struct._cairo*, double, double, double, double, double) #2

declare void @cairo_fill(%struct._cairo*) #2

declare void @cairo_move_to(%struct._cairo*, double, double) #2

declare void @cairo_line_to(%struct._cairo*, double, double) #2

declare void @cairo_stroke(%struct._cairo*) #2

declare void @gtk_spin_button_set_value(%struct._GtkSpinButton*, double) #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_spin_button_get_type() #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
