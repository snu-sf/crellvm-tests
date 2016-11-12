; ModuleID = './plug-ins/map-object/map-object-preview.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MapObjectValues = type { %struct._GimpVector3, %struct._GimpVector3, %struct._GimpVector3, %struct._GimpVector3, %struct._GimpVector3, %struct._GimpVector3, %struct.LightSettings, %struct.MaterialSettings, %struct.MaterialSettings, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, double, double, double, double, [6 x i32], [2 x i32] }
%struct._GimpVector3 = type { double, double, double }
%struct.LightSettings = type { i32, %struct._GimpVector3, %struct._GimpVector3, %struct._GimpRGB, double }
%struct._GimpRGB = type { double, double, double, double }
%struct.MaterialSettings = type { double, double, double, double, double, %struct._GimpRGB }
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
%struct._GdkEventExpose = type { i32, %struct._GdkDrawable*, i8, %struct._GdkRectangle, %struct._GdkRegion*, i32 }
%struct._GdkRegion = type opaque
%struct._cairo = type opaque

@mapvals = external global %struct.MapObjectValues, align 8
@lightx = global i32 0, align 4
@lighty = global i32 0, align 4
@previewarea = external global %struct._GtkWidget*, align 8
@width = external global i32, align 4
@height = external global i32, align 4
@preview_surface = external global %struct._cairo_surface*, align 8
@mat = global [3 x [4 x double]] zeroinitializer, align 16
@background = external global %struct._GimpRGB, align 8
@preview_rgb_stride = external global i32, align 4
@get_ray_color = external global void (%struct._GimpRGB*, %struct._GimpVector3*)*, align 8
@preview_rgb_data = external global i8*, align 8
@rotmat = external global [16 x float], align 16

; Function Attrs: nounwind uwtable
define i32 @check_light_hit(i32 %xpos, i32 %ypos) #0 {
entry:
  %retval = alloca i32, align 4
  %xpos.addr = alloca i32, align 4
  %ypos.addr = alloca i32, align 4
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %r = alloca double, align 8
  store i32 %xpos, i32* %xpos.addr, align 4
  store i32 %ypos, i32* %ypos.addr, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 0), align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @lightx, align 4
  %conv = sitofp i32 %1 to double
  %2 = load i32, i32* %xpos.addr, align 4
  %conv1 = sitofp i32 %2 to double
  %sub = fsub double %conv, %conv1
  store double %sub, double* %dx, align 8
  %3 = load i32, i32* @lighty, align 4
  %conv2 = sitofp i32 %3 to double
  %4 = load i32, i32* %ypos.addr, align 4
  %conv3 = sitofp i32 %4 to double
  %sub4 = fsub double %conv2, %conv3
  store double %sub4, double* %dy, align 8
  %5 = load double, double* %dx, align 8
  %6 = load double, double* %dx, align 8
  %mul = fmul double %5, %6
  %7 = load double, double* %dy, align 8
  %8 = load double, double* %dy, align 8
  %mul5 = fmul double %7, %8
  %add = fadd double %mul, %mul5
  %call = call double @sqrt(double %add) #3
  %add6 = fadd double %call, 5.000000e-01
  store double %add6, double* %r, align 8
  %9 = load double, double* %r, align 8
  %conv7 = fptosi double %9 to i32
  %cmp8 = icmp sgt i32 %conv7, 7
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.else, %if.then.10
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind uwtable
define void @update_light(i32 %xpos, i32 %ypos) #0 {
entry:
  %xpos.addr = alloca i32, align 4
  %ypos.addr = alloca i32, align 4
  %startx = alloca i32, align 4
  %starty = alloca i32, align 4
  %pw = alloca i32, align 4
  %ph = alloca i32, align 4
  store i32 %xpos, i32* %xpos.addr, align 4
  store i32 %ypos, i32* %ypos.addr, align 4
  %0 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 18), align 8
  %mul = fmul double 2.000000e+02, %0
  %conv = fptosi double %mul to i32
  store i32 %conv, i32* %pw, align 4
  %1 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 18), align 8
  %mul1 = fmul double 2.000000e+02, %1
  %conv2 = fptosi double %mul1 to i32
  store i32 %conv2, i32* %ph, align 4
  %2 = load i32, i32* %pw, align 4
  %sub = sub nsw i32 200, %2
  %div = sdiv i32 %sub, 2
  store i32 %div, i32* %startx, align 4
  %3 = load i32, i32* %ph, align 4
  %sub3 = sub nsw i32 200, %3
  %div4 = sdiv i32 %sub3, 2
  store i32 %div4, i32* %starty, align 4
  %4 = load i32, i32* %startx, align 4
  %5 = load i32, i32* %starty, align 4
  %6 = load i32, i32* %pw, align 4
  %7 = load i32, i32* %ph, align 4
  %8 = load i32, i32* %xpos.addr, align 4
  %9 = load i32, i32* %ypos.addr, align 4
  call void @gimp_vector_2d_to_3d(i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 0), %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 1))
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** @previewarea, align 8
  call void @gtk_widget_queue_draw(%struct._GtkWidget* %10)
  ret void
}

declare void @gimp_vector_2d_to_3d(i32, i32, i32, i32, i32, i32, %struct._GimpVector3*, %struct._GimpVector3*) #2

declare void @gtk_widget_queue_draw(%struct._GtkWidget*) #2

; Function Attrs: nounwind uwtable
define void @compute_preview_image() #0 {
entry:
  %display = alloca %struct._GdkDisplay*, align 8
  %cursor = alloca %struct._GdkCursor*, align 8
  %pw = alloca i32, align 4
  %ph = alloca i32, align 4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @previewarea, align 8
  %call = call %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget* %0)
  store %struct._GdkDisplay* %call, %struct._GdkDisplay** %display, align 8
  %1 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 18), align 8
  %mul = fmul double 2.000000e+02, %1
  %conv = fptosi double %mul to i32
  store i32 %conv, i32* %pw, align 4
  %2 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 18), align 8
  %mul1 = fmul double 2.000000e+02, %2
  %conv2 = fptosi double %mul1 to i32
  store i32 %conv2, i32* %ph, align 4
  %3 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %call3 = call %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay* %3, i32 150)
  store %struct._GdkCursor* %call3, %struct._GdkCursor** %cursor, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** @previewarea, align 8
  %call4 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %4)
  %5 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gdk_window_set_cursor(%struct._GdkDrawable* %call4, %struct._GdkCursor* %5)
  %6 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gdk_cursor_unref(%struct._GdkCursor* %6)
  %7 = load i32, i32* @width, align 4
  %sub = sub nsw i32 %7, 1
  %8 = load i32, i32* @height, align 4
  %sub5 = sub nsw i32 %8, 1
  %9 = load i32, i32* %pw, align 4
  %10 = load i32, i32* %ph, align 4
  call void @compute_preview(i32 0, i32 0, i32 %sub, i32 %sub5, i32 %9, i32 %10)
  %11 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %call6 = call %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay* %11, i32 60)
  store %struct._GdkCursor* %call6, %struct._GdkCursor** %cursor, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** @previewarea, align 8
  %call7 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %12)
  %13 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gdk_window_set_cursor(%struct._GdkDrawable* %call7, %struct._GdkCursor* %13)
  %14 = load %struct._GdkCursor*, %struct._GdkCursor** %cursor, align 8
  call void @gdk_cursor_unref(%struct._GdkCursor* %14)
  ret void
}

declare %struct._GdkDisplay* @gtk_widget_get_display(%struct._GtkWidget*) #2

declare %struct._GdkCursor* @gdk_cursor_new_for_display(%struct._GdkDisplay*, i32) #2

declare void @gdk_window_set_cursor(%struct._GdkDrawable*, %struct._GdkCursor*) #2

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #2

declare void @gdk_cursor_unref(%struct._GdkCursor*) #2

; Function Attrs: nounwind uwtable
define internal void @compute_preview(i32 %x, i32 %y, i32 %w, i32 %h, i32 %pw, i32 %ph) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %pw.addr = alloca i32, align 4
  %ph.addr = alloca i32, align 4
  %xpostab = alloca [200 x double], align 16
  %ypostab = alloca [200 x double], align 16
  %realw = alloca double, align 8
  %realh = alloca double, align 8
  %p1 = alloca %struct._GimpVector3, align 8
  %p2 = alloca %struct._GimpVector3, align 8
  %color = alloca %struct._GimpRGB, align 8
  %lightcheck = alloca %struct._GimpRGB, align 8
  %darkcheck = alloca %struct._GimpRGB, align 8
  %xcnt = alloca i32, align 4
  %ycnt = alloca i32, align 4
  %f1 = alloca i32, align 4
  %f2 = alloca i32, align 4
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b = alloca i8, align 1
  %index = alloca i64, align 8
  %tmp = alloca %struct._GimpVector3, align 8
  %tmp2 = alloca %struct._GimpVector3, align 8
  %tmp44 = alloca %struct._GimpRGB, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store i32 %pw, i32* %pw.addr, align 4
  store i32 %ph, i32* %ph.addr, align 4
  store i64 0, i64* %index, align 8
  call void @init_compute()
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %y.addr, align 4
  call void @int_to_pos(%struct._GimpVector3* sret %tmp, i32 %0, i32 %1)
  %2 = bitcast %struct._GimpVector3* %p1 to i8*
  %3 = bitcast %struct._GimpVector3* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 24, i32 8, i1 false)
  %4 = load i32, i32* %x.addr, align 4
  %5 = load i32, i32* %w.addr, align 4
  %add = add nsw i32 %4, %5
  %6 = load i32, i32* %y.addr, align 4
  %7 = load i32, i32* %h.addr, align 4
  %add1 = add nsw i32 %6, %7
  call void @int_to_pos(%struct._GimpVector3* sret %tmp2, i32 %add, i32 %add1)
  %8 = bitcast %struct._GimpVector3* %p2 to i8*
  %9 = bitcast %struct._GimpVector3* %tmp2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 24, i32 8, i1 false)
  %x3 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p2, i32 0, i32 0
  %10 = load double, double* %x3, align 8
  %x4 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p1, i32 0, i32 0
  %11 = load double, double* %x4, align 8
  %sub = fsub double %10, %11
  store double %sub, double* %realw, align 8
  %y5 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p2, i32 0, i32 1
  %12 = load double, double* %y5, align 8
  %y6 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p1, i32 0, i32 1
  %13 = load double, double* %y6, align 8
  %sub7 = fsub double %12, %13
  store double %sub7, double* %realh, align 8
  store i32 0, i32* %xcnt, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, i32* %xcnt, align 4
  %15 = load i32, i32* %pw.addr, align 4
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %x8 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p1, i32 0, i32 0
  %16 = load double, double* %x8, align 8
  %17 = load double, double* %realw, align 8
  %18 = load i32, i32* %xcnt, align 4
  %conv = sitofp i32 %18 to double
  %19 = load i32, i32* %pw.addr, align 4
  %conv9 = sitofp i32 %19 to double
  %div = fdiv double %conv, %conv9
  %mul = fmul double %17, %div
  %add10 = fadd double %16, %mul
  %20 = load i32, i32* %xcnt, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds [200 x double], [200 x double]* %xpostab, i32 0, i64 %idxprom
  store double %add10, double* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %xcnt, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %xcnt, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %ycnt, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.23, %for.end
  %22 = load i32, i32* %ycnt, align 4
  %23 = load i32, i32* %ph.addr, align 4
  %cmp12 = icmp slt i32 %22, %23
  br i1 %cmp12, label %for.body.14, label %for.end.25

for.body.14:                                      ; preds = %for.cond.11
  %y15 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p1, i32 0, i32 1
  %24 = load double, double* %y15, align 8
  %25 = load double, double* %realh, align 8
  %26 = load i32, i32* %ycnt, align 4
  %conv16 = sitofp i32 %26 to double
  %27 = load i32, i32* %ph.addr, align 4
  %conv17 = sitofp i32 %27 to double
  %div18 = fdiv double %conv16, %conv17
  %mul19 = fmul double %25, %div18
  %add20 = fadd double %24, %mul19
  %28 = load i32, i32* %ycnt, align 4
  %idxprom21 = sext i32 %28 to i64
  %arrayidx22 = getelementptr inbounds [200 x double], [200 x double]* %ypostab, i32 0, i64 %idxprom21
  store double %add20, double* %arrayidx22, align 8
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.14
  %29 = load i32, i32* %ycnt, align 4
  %inc24 = add nsw i32 %29, 1
  store i32 %inc24, i32* %ycnt, align 4
  br label %for.cond.11

for.end.25:                                       ; preds = %for.cond.11
  %30 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 13), align 4
  %cmp26 = icmp eq i32 %30, 1
  br i1 %cmp26, label %if.then, label %if.else

if.then:                                          ; preds = %for.end.25
  call void @gimp_rgba_set(%struct._GimpRGB* @background, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  br label %if.end

if.else:                                          ; preds = %for.end.25
  %call = call i32 @gimp_context_get_background(%struct._GimpRGB* @background)
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* @background, double 1.000000e+00)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @gimp_rgba_set(%struct._GimpRGB* %lightcheck, double 6.000000e-01, double 6.000000e-01, double 6.000000e-01, double 1.000000e+00)
  call void @gimp_rgba_set(%struct._GimpRGB* %darkcheck, double 4.000000e-01, double 4.000000e-01, double 4.000000e-01, double 1.000000e+00)
  call void @gimp_vector3_set(%struct._GimpVector3* %p2, double -1.000000e+00, double -1.000000e+00, double 0.000000e+00)
  %31 = load %struct._cairo_surface*, %struct._cairo_surface** @preview_surface, align 8
  call void @cairo_surface_flush(%struct._cairo_surface* %31)
  store i32 0, i32* %ycnt, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.78, %if.end
  %32 = load i32, i32* %ycnt, align 4
  %33 = load i32, i32* %ph.addr, align 4
  %cmp29 = icmp slt i32 %32, %33
  br i1 %cmp29, label %for.body.31, label %for.end.80

for.body.31:                                      ; preds = %for.cond.28
  %34 = load i32, i32* %ycnt, align 4
  %35 = load i32, i32* @preview_rgb_stride, align 4
  %mul32 = mul nsw i32 %34, %35
  %conv33 = sext i32 %mul32 to i64
  store i64 %conv33, i64* %index, align 8
  store i32 0, i32* %xcnt, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.75, %for.body.31
  %36 = load i32, i32* %xcnt, align 4
  %37 = load i32, i32* %pw.addr, align 4
  %cmp35 = icmp slt i32 %36, %37
  br i1 %cmp35, label %for.body.37, label %for.end.77

for.body.37:                                      ; preds = %for.cond.34
  %38 = load i32, i32* %xcnt, align 4
  %idxprom38 = sext i32 %38 to i64
  %arrayidx39 = getelementptr inbounds [200 x double], [200 x double]* %xpostab, i32 0, i64 %idxprom38
  %39 = load double, double* %arrayidx39, align 8
  %x40 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p1, i32 0, i32 0
  store double %39, double* %x40, align 8
  %40 = load i32, i32* %ycnt, align 4
  %idxprom41 = sext i32 %40 to i64
  %arrayidx42 = getelementptr inbounds [200 x double], [200 x double]* %ypostab, i32 0, i64 %idxprom41
  %41 = load double, double* %arrayidx42, align 8
  %y43 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p1, i32 0, i32 1
  store double %41, double* %y43, align 8
  %42 = bitcast %struct._GimpVector3* %p2 to i8*
  %43 = bitcast %struct._GimpVector3* %p1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 24, i32 8, i1 false)
  %44 = load void (%struct._GimpRGB*, %struct._GimpVector3*)*, void (%struct._GimpRGB*, %struct._GimpVector3*)** @get_ray_color, align 8
  call void %44(%struct._GimpRGB* sret %tmp44, %struct._GimpVector3* %p1)
  %45 = bitcast %struct._GimpRGB* %color to i8*
  %46 = bitcast %struct._GimpRGB* %tmp44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 32, i32 8, i1 false)
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  %47 = load double, double* %a, align 8
  %cmp45 = fcmp olt double %47, 1.000000e+00
  br i1 %cmp45, label %if.then.47, label %if.end.68

if.then.47:                                       ; preds = %for.body.37
  %48 = load i32, i32* %xcnt, align 4
  %rem = srem i32 %48, 32
  %cmp48 = icmp slt i32 %rem, 16
  %conv49 = zext i1 %cmp48 to i32
  store i32 %conv49, i32* %f1, align 4
  %49 = load i32, i32* %ycnt, align 4
  %rem50 = srem i32 %49, 32
  %cmp51 = icmp slt i32 %rem50, 16
  %conv52 = zext i1 %cmp51 to i32
  store i32 %conv52, i32* %f2, align 4
  %50 = load i32, i32* %f1, align 4
  %51 = load i32, i32* %f2, align 4
  %xor = xor i32 %50, %51
  store i32 %xor, i32* %f1, align 4
  %52 = load i32, i32* %f1, align 4
  %tobool = icmp ne i32 %52, 0
  br i1 %tobool, label %if.then.53, label %if.else.60

if.then.53:                                       ; preds = %if.then.47
  %a54 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  %53 = load double, double* %a54, align 8
  %cmp55 = fcmp oeq double %53, 0.000000e+00
  br i1 %cmp55, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %if.then.53
  %54 = bitcast %struct._GimpRGB* %color to i8*
  %55 = bitcast %struct._GimpRGB* %lightcheck to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 32, i32 8, i1 false)
  br label %if.end.59

if.else.58:                                       ; preds = %if.then.53
  call void @gimp_rgb_composite(%struct._GimpRGB* %color, %struct._GimpRGB* %lightcheck, i32 2)
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.58, %if.then.57
  br label %if.end.67

if.else.60:                                       ; preds = %if.then.47
  %a61 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  %56 = load double, double* %a61, align 8
  %cmp62 = fcmp oeq double %56, 0.000000e+00
  br i1 %cmp62, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %if.else.60
  %57 = bitcast %struct._GimpRGB* %color to i8*
  %58 = bitcast %struct._GimpRGB* %darkcheck to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %58, i64 32, i32 8, i1 false)
  br label %if.end.66

if.else.65:                                       ; preds = %if.else.60
  call void @gimp_rgb_composite(%struct._GimpRGB* %color, %struct._GimpRGB* %darkcheck, i32 2)
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.65, %if.then.64
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.end.59
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %for.body.37
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %color, i8* %r, i8* %g, i8* %b)
  br label %do.body

do.body:                                          ; preds = %if.end.68
  %59 = load i8, i8* %b, align 1
  %60 = load i8*, i8** @preview_rgb_data, align 8
  %61 = load i64, i64* %index, align 8
  %add.ptr = getelementptr inbounds i8, i8* %60, i64 %61
  %arrayidx69 = getelementptr inbounds i8, i8* %add.ptr, i64 0
  store i8 %59, i8* %arrayidx69, align 1
  %62 = load i8, i8* %g, align 1
  %63 = load i8*, i8** @preview_rgb_data, align 8
  %64 = load i64, i64* %index, align 8
  %add.ptr70 = getelementptr inbounds i8, i8* %63, i64 %64
  %arrayidx71 = getelementptr inbounds i8, i8* %add.ptr70, i64 1
  store i8 %62, i8* %arrayidx71, align 1
  %65 = load i8, i8* %r, align 1
  %66 = load i8*, i8** @preview_rgb_data, align 8
  %67 = load i64, i64* %index, align 8
  %add.ptr72 = getelementptr inbounds i8, i8* %66, i64 %67
  %arrayidx73 = getelementptr inbounds i8, i8* %add.ptr72, i64 2
  store i8 %65, i8* %arrayidx73, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %68 = load i64, i64* %index, align 8
  %add74 = add nsw i64 %68, 4
  store i64 %add74, i64* %index, align 8
  br label %for.inc.75

for.inc.75:                                       ; preds = %do.end
  %69 = load i32, i32* %xcnt, align 4
  %inc76 = add nsw i32 %69, 1
  store i32 %inc76, i32* %xcnt, align 4
  br label %for.cond.34

for.end.77:                                       ; preds = %for.cond.34
  br label %for.inc.78

for.inc.78:                                       ; preds = %for.end.77
  %70 = load i32, i32* %ycnt, align 4
  %inc79 = add nsw i32 %70, 1
  store i32 %inc79, i32* %ycnt, align 4
  br label %for.cond.28

for.end.80:                                       ; preds = %for.cond.28
  %71 = load %struct._cairo_surface*, %struct._cairo_surface** @preview_surface, align 8
  call void @cairo_surface_mark_dirty(%struct._cairo_surface* %71)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @preview_expose(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %eevent) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %eevent.addr = alloca %struct._GdkEventExpose*, align 8
  %startx = alloca i32, align 4
  %starty = alloca i32, align 4
  %pw = alloca i32, align 4
  %ph = alloca i32, align 4
  %cr = alloca %struct._cairo*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %eevent, %struct._GdkEventExpose** %eevent.addr, align 8
  %0 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %eevent.addr, align 8
  %window = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %0, i32 0, i32 1
  %1 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %call = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %1)
  store %struct._cairo* %call, %struct._cairo** %cr, align 8
  %2 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 18), align 8
  %mul = fmul double 2.000000e+02, %2
  %conv = fptosi double %mul to i32
  store i32 %conv, i32* %pw, align 4
  %3 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 18), align 8
  %mul1 = fmul double 2.000000e+02, %3
  %conv2 = fptosi double %mul1 to i32
  store i32 %conv2, i32* %ph, align 4
  %4 = load i32, i32* %pw, align 4
  %sub = sub nsw i32 200, %4
  %div = sdiv i32 %sub, 2
  store i32 %div, i32* %startx, align 4
  %5 = load i32, i32* %ph, align 4
  %sub3 = sub nsw i32 200, %5
  %div4 = sdiv i32 %sub3, 2
  store i32 %div4, i32* %starty, align 4
  %6 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %7 = load %struct._cairo_surface*, %struct._cairo_surface** @preview_surface, align 8
  %8 = load i32, i32* %startx, align 4
  %conv5 = sitofp i32 %8 to double
  %9 = load i32, i32* %starty, align 4
  %conv6 = sitofp i32 %9 to double
  call void @cairo_set_source_surface(%struct._cairo* %6, %struct._cairo_surface* %7, double %conv5, double %conv6)
  %10 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %11 = load i32, i32* %startx, align 4
  %conv7 = sitofp i32 %11 to double
  %12 = load i32, i32* %starty, align 4
  %conv8 = sitofp i32 %12 to double
  %13 = load i32, i32* %pw, align 4
  %conv9 = sitofp i32 %13 to double
  %14 = load i32, i32* %ph, align 4
  %conv10 = sitofp i32 %14 to double
  call void @cairo_rectangle(%struct._cairo* %10, double %conv7, double %conv8, double %conv9, double %conv10)
  %15 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip(%struct._cairo* %15)
  %16 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_paint(%struct._cairo* %16)
  %17 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_reset_clip(%struct._cairo* %17)
  %18 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 16), align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %19 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @draw_preview_wireframe(%struct._cairo* %19)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %20 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_reset_clip(%struct._cairo* %20)
  %21 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %22 = load i32, i32* %startx, align 4
  %23 = load i32, i32* %starty, align 4
  %24 = load i32, i32* %pw, align 4
  %25 = load i32, i32* %ph, align 4
  call void @draw_lights(%struct._cairo* %21, i32 %22, i32 %23, i32 %24, i32 %25)
  %26 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %26)
  ret i32 0
}

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #2

declare void @cairo_set_source_surface(%struct._cairo*, %struct._cairo_surface*, double, double) #2

declare void @cairo_rectangle(%struct._cairo*, double, double, double, double) #2

declare void @cairo_clip(%struct._cairo*) #2

declare void @cairo_paint(%struct._cairo*) #2

declare void @cairo_reset_clip(%struct._cairo*) #2

; Function Attrs: nounwind uwtable
define internal void @draw_preview_wireframe(%struct._cairo* %cr) #0 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %startx = alloca i32, align 4
  %starty = alloca i32, align 4
  %pw = alloca i32, align 4
  %ph = alloca i32, align 4
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 18), align 8
  %mul = fmul double 2.000000e+02, %0
  %conv = fptosi double %mul to i32
  store i32 %conv, i32* %pw, align 4
  %1 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 18), align 8
  %mul1 = fmul double 2.000000e+02, %1
  %conv2 = fptosi double %mul1 to i32
  store i32 %conv2, i32* %ph, align 4
  %2 = load i32, i32* %pw, align 4
  %sub = sub nsw i32 200, %2
  %div = sdiv i32 %sub, 2
  store i32 %div, i32* %startx, align 4
  %3 = load i32, i32* %ph, align 4
  %sub3 = sub nsw i32 200, %3
  %div4 = sdiv i32 %sub3, 2
  store i32 %div4, i32* %starty, align 4
  %4 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %5 = load i32, i32* %startx, align 4
  %6 = load i32, i32* %starty, align 4
  %7 = load i32, i32* %pw, align 4
  %8 = load i32, i32* %ph, align 4
  call void @draw_wireframe(%struct._cairo* %4, i32 %5, i32 %6, i32 %7, i32 %8)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @draw_lights(%struct._cairo* %cr, i32 %startx, i32 %starty, i32 %pw, i32 %ph) #0 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %startx.addr = alloca i32, align 4
  %starty.addr = alloca i32, align 4
  %pw.addr = alloca i32, align 4
  %ph.addr = alloca i32, align 4
  %dxpos = alloca double, align 8
  %dypos = alloca double, align 8
  %xpos = alloca i32, align 4
  %ypos = alloca i32, align 4
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store i32 %startx, i32* %startx.addr, align 4
  store i32 %starty, i32* %starty.addr, align 4
  store i32 %pw, i32* %pw.addr, align 4
  store i32 %ph, i32* %ph.addr, align 4
  %0 = load i32, i32* %startx.addr, align 4
  %1 = load i32, i32* %starty.addr, align 4
  %2 = load i32, i32* %pw.addr, align 4
  %3 = load i32, i32* %ph.addr, align 4
  call void @gimp_vector_3d_to_2d(i32 %0, i32 %1, i32 %2, i32 %3, double* %dxpos, double* %dypos, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 0), %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 1))
  %4 = load double, double* %dxpos, align 8
  %call = call double @rint(double %4) #5
  %conv = fptosi double %call to i32
  store i32 %conv, i32* %xpos, align 4
  %5 = load double, double* %dypos, align 8
  %call1 = call double @rint(double %5) #5
  %conv2 = fptosi double %call1 to i32
  store i32 %conv2, i32* %ypos, align 4
  %6 = load i32, i32* %xpos, align 4
  %cmp = icmp sge i32 %6, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load i32, i32* %xpos, align 4
  %cmp4 = icmp sle i32 %7, 200
  br i1 %cmp4, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %8 = load i32, i32* %ypos, align 4
  %cmp7 = icmp sge i32 %8, 0
  br i1 %cmp7, label %land.lhs.true.9, label %if.end

land.lhs.true.9:                                  ; preds = %land.lhs.true.6
  %9 = load i32, i32* %ypos, align 4
  %cmp10 = icmp sle i32 %9, 200
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.9
  %10 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %11 = load i32, i32* %xpos, align 4
  %12 = load i32, i32* %ypos, align 4
  call void @draw_light_marker(%struct._cairo* %10, i32 %11, i32 %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.9, %land.lhs.true.6, %land.lhs.true, %entry
  ret void
}

declare void @cairo_destroy(%struct._cairo*) #2

declare void @init_compute() #2

declare void @int_to_pos(%struct._GimpVector3* sret, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare void @gimp_rgba_set(%struct._GimpRGB*, double, double, double, double) #2

declare i32 @gimp_context_get_background(%struct._GimpRGB*) #2

declare void @gimp_rgb_set_alpha(%struct._GimpRGB*, double) #2

declare void @gimp_vector3_set(%struct._GimpVector3*, double, double, double) #2

declare void @cairo_surface_flush(%struct._cairo_surface*) #2

declare void @gimp_rgb_composite(%struct._GimpRGB*, %struct._GimpRGB*, i32) #2

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #2

declare void @cairo_surface_mark_dirty(%struct._cairo_surface*) #2

declare void @gimp_vector_3d_to_2d(i32, i32, i32, i32, double*, double*, %struct._GimpVector3*, %struct._GimpVector3*) #2

; Function Attrs: nounwind readnone
declare double @rint(double) #4

; Function Attrs: nounwind uwtable
define internal void @draw_light_marker(%struct._cairo* %cr, i32 %xpos, i32 %ypos) #0 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %xpos.addr = alloca i32, align 4
  %ypos.addr = alloca i32, align 4
  %color = alloca %struct._GdkColor, align 4
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store i32 %xpos, i32* %xpos.addr, align 4
  store i32 %ypos, i32* %ypos.addr, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 0), align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_line_width(%struct._cairo* %1, double 1.000000e+00)
  %red = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %color, i32 0, i32 1
  store i16 0, i16* %red, align 2
  %green = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %color, i32 0, i32 2
  store i16 16384, i16* %green, align 2
  %blue = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %color, i32 0, i32 3
  store i16 -1, i16* %blue, align 2
  %2 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @gdk_cairo_set_source_color(%struct._cairo* %2, %struct._GdkColor* %color)
  %3 = load i32, i32* %xpos.addr, align 4
  store i32 %3, i32* @lightx, align 4
  %4 = load i32, i32* %ypos.addr, align 4
  store i32 %4, i32* @lighty, align 4
  %5 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %6 = load i32, i32* @lightx, align 4
  %conv = sitofp i32 %6 to double
  %7 = load i32, i32* @lighty, align 4
  %conv1 = sitofp i32 %7 to double
  call void @cairo_arc(%struct._cairo* %5, double %conv, double %conv1, double 7.000000e+00, double 0.000000e+00, double 0x401921FB54442D18)
  %8 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_fill(%struct._cairo* %8)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @cairo_set_line_width(%struct._cairo*, double) #2

declare void @gdk_cairo_set_source_color(%struct._cairo*, %struct._GdkColor*) #2

declare void @cairo_arc(%struct._cairo*, double, double, double, double, double) #2

declare void @cairo_fill(%struct._cairo*) #2

; Function Attrs: nounwind uwtable
define internal void @draw_wireframe(%struct._cairo* %cr, i32 %startx, i32 %starty, i32 %pw, i32 %ph) #0 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %startx.addr = alloca i32, align 4
  %starty.addr = alloca i32, align 4
  %pw.addr = alloca i32, align 4
  %ph.addr = alloca i32, align 4
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store i32 %startx, i32* %startx.addr, align 4
  store i32 %starty, i32* %starty.addr, align 4
  store i32 %pw, i32* %pw.addr, align 4
  store i32 %ph, i32* %ph.addr, align 4
  %0 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_source_rgb(%struct._cairo* %0, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %1 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 9), align 4
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %3 = load i32, i32* %startx.addr, align 4
  %4 = load i32, i32* %starty.addr, align 4
  %5 = load i32, i32* %pw.addr, align 4
  %6 = load i32, i32* %ph.addr, align 4
  call void @draw_wireframe_plane(%struct._cairo* %2, i32 %3, i32 %4, i32 %5, i32 %6)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %7 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %8 = load i32, i32* %startx.addr, align 4
  %9 = load i32, i32* %starty.addr, align 4
  %10 = load i32, i32* %pw.addr, align 4
  %11 = load i32, i32* %ph.addr, align 4
  call void @draw_wireframe_sphere(%struct._cairo* %7, i32 %8, i32 %9, i32 %10, i32 %11)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %12 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %13 = load i32, i32* %startx.addr, align 4
  %14 = load i32, i32* %starty.addr, align 4
  %15 = load i32, i32* %pw.addr, align 4
  %16 = load i32, i32* %ph.addr, align 4
  call void @draw_wireframe_box(%struct._cairo* %12, i32 %13, i32 %14, i32 %15, i32 %16)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %17 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %18 = load i32, i32* %startx.addr, align 4
  %19 = load i32, i32* %starty.addr, align 4
  %20 = load i32, i32* %pw.addr, align 4
  %21 = load i32, i32* %ph.addr, align 4
  call void @draw_wireframe_cylinder(%struct._cairo* %17, i32 %18, i32 %19, i32 %20, i32 %21)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  ret void
}

declare void @cairo_set_source_rgb(%struct._cairo*, double, double, double) #2

; Function Attrs: nounwind uwtable
define internal void @draw_wireframe_plane(%struct._cairo* %cr, i32 %startx, i32 %starty, i32 %pw, i32 %ph) #0 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %startx.addr = alloca i32, align 4
  %starty.addr = alloca i32, align 4
  %pw.addr = alloca i32, align 4
  %ph.addr = alloca i32, align 4
  %v1 = alloca %struct._GimpVector3, align 8
  %v2 = alloca %struct._GimpVector3, align 8
  %a = alloca %struct._GimpVector3, align 8
  %b = alloca %struct._GimpVector3, align 8
  %c = alloca %struct._GimpVector3, align 8
  %d = alloca %struct._GimpVector3, align 8
  %dir1 = alloca %struct._GimpVector3, align 8
  %dir2 = alloca %struct._GimpVector3, align 8
  %cnt = alloca i32, align 4
  %x1 = alloca double, align 8
  %y1 = alloca double, align 8
  %x2 = alloca double, align 8
  %y2 = alloca double, align 8
  %fac = alloca double, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store i32 %startx, i32* %startx.addr, align 4
  store i32 %starty, i32* %starty.addr, align 4
  store i32 %pw, i32* %pw.addr, align 4
  store i32 %ph, i32* %ph.addr, align 4
  %0 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %1 = load i32, i32* %startx.addr, align 4
  %conv = sitofp i32 %1 to double
  %2 = load i32, i32* %starty.addr, align 4
  %conv1 = sitofp i32 %2 to double
  %3 = load i32, i32* %pw.addr, align 4
  %conv2 = sitofp i32 %3 to double
  %4 = load i32, i32* %ph.addr, align 4
  %conv3 = sitofp i32 %4 to double
  call void @cairo_rectangle(%struct._cairo* %0, double %conv, double %conv1, double %conv2, double %conv3)
  %5 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_clip(%struct._cairo* %5)
  call void @gimp_vector3_set(%struct._GimpVector3* %v1, double 5.000000e-01, double 0.000000e+00, double 0.000000e+00)
  call void @gimp_vector3_set(%struct._GimpVector3* %v2, double 0.000000e+00, double 5.000000e-01, double 0.000000e+00)
  %6 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 19), align 8
  %mul = fmul double %6, 0x401921FB54442D18
  %div = fdiv double %mul, 3.600000e+02
  %7 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 20), align 8
  %mul4 = fmul double %7, 0x401921FB54442D18
  %div5 = fdiv double %mul4, 3.600000e+02
  %8 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 21), align 8
  %mul6 = fmul double %8, 0x401921FB54442D18
  %div7 = fdiv double %mul6, 3.600000e+02
  call void @gimp_vector3_rotate(%struct._GimpVector3* %v1, double %div, double %div5, double %div7)
  %9 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 19), align 8
  %mul8 = fmul double %9, 0x401921FB54442D18
  %div9 = fdiv double %mul8, 3.600000e+02
  %10 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 20), align 8
  %mul10 = fmul double %10, 0x401921FB54442D18
  %div11 = fdiv double %mul10, 3.600000e+02
  %11 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 21), align 8
  %mul12 = fmul double %11, 0x401921FB54442D18
  %div13 = fdiv double %mul12, 3.600000e+02
  call void @gimp_vector3_rotate(%struct._GimpVector3* %v2, double %div9, double %div11, double %div13)
  %12 = bitcast %struct._GimpVector3* %dir1 to i8*
  %13 = bitcast %struct._GimpVector3* %v1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 24, i32 8, i1 false)
  call void @gimp_vector3_normalize(%struct._GimpVector3* %dir1)
  %14 = bitcast %struct._GimpVector3* %dir2 to i8*
  %15 = bitcast %struct._GimpVector3* %v2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 24, i32 8, i1 false)
  call void @gimp_vector3_normalize(%struct._GimpVector3* %dir2)
  store double 6.250000e-02, double* %fac, align 8
  %16 = load double, double* %fac, align 8
  call void @gimp_vector3_mul(%struct._GimpVector3* %dir1, double %16)
  %17 = load double, double* %fac, align 8
  call void @gimp_vector3_mul(%struct._GimpVector3* %dir2, double %17)
  call void @gimp_vector3_add(%struct._GimpVector3* %a, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4), %struct._GimpVector3* %v1)
  call void @gimp_vector3_sub(%struct._GimpVector3* %b, %struct._GimpVector3* %a, %struct._GimpVector3* %v2)
  call void @gimp_vector3_add(%struct._GimpVector3* %a, %struct._GimpVector3* %a, %struct._GimpVector3* %v2)
  call void @gimp_vector3_sub(%struct._GimpVector3* %d, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4), %struct._GimpVector3* %v1)
  call void @gimp_vector3_sub(%struct._GimpVector3* %d, %struct._GimpVector3* %d, %struct._GimpVector3* %v2)
  %18 = bitcast %struct._GimpVector3* %c to i8*
  %19 = bitcast %struct._GimpVector3* %b to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 24, i32 8, i1 false)
  store i32 0, i32* %cnt, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %20 = load i32, i32* %cnt, align 4
  %cmp = icmp sle i32 %20, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %startx.addr, align 4
  %22 = load i32, i32* %starty.addr, align 4
  %23 = load i32, i32* %pw.addr, align 4
  %24 = load i32, i32* %ph.addr, align 4
  call void @gimp_vector_3d_to_2d(i32 %21, i32 %22, i32 %23, i32 %24, double* %x1, double* %y1, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 0), %struct._GimpVector3* %a)
  %25 = load i32, i32* %startx.addr, align 4
  %26 = load i32, i32* %starty.addr, align 4
  %27 = load i32, i32* %pw.addr, align 4
  %28 = load i32, i32* %ph.addr, align 4
  call void @gimp_vector_3d_to_2d(i32 %25, i32 %26, i32 %27, i32 %28, double* %x2, double* %y2, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 0), %struct._GimpVector3* %b)
  %29 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %30 = load double, double* %x1, align 8
  %call = call double @rint(double %30) #5
  %add = fadd double %call, 5.000000e-01
  %31 = load double, double* %y1, align 8
  %call15 = call double @rint(double %31) #5
  %add16 = fadd double %call15, 5.000000e-01
  call void @cairo_move_to(%struct._cairo* %29, double %add, double %add16)
  %32 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %33 = load double, double* %x2, align 8
  %call17 = call double @rint(double %33) #5
  %add18 = fadd double %call17, 5.000000e-01
  %34 = load double, double* %y2, align 8
  %call19 = call double @rint(double %34) #5
  %add20 = fadd double %call19, 5.000000e-01
  call void @cairo_line_to(%struct._cairo* %32, double %add18, double %add20)
  %35 = load i32, i32* %startx.addr, align 4
  %36 = load i32, i32* %starty.addr, align 4
  %37 = load i32, i32* %pw.addr, align 4
  %38 = load i32, i32* %ph.addr, align 4
  call void @gimp_vector_3d_to_2d(i32 %35, i32 %36, i32 %37, i32 %38, double* %x1, double* %y1, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 0), %struct._GimpVector3* %c)
  %39 = load i32, i32* %startx.addr, align 4
  %40 = load i32, i32* %starty.addr, align 4
  %41 = load i32, i32* %pw.addr, align 4
  %42 = load i32, i32* %ph.addr, align 4
  call void @gimp_vector_3d_to_2d(i32 %39, i32 %40, i32 %41, i32 %42, double* %x2, double* %y2, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 0), %struct._GimpVector3* %d)
  %43 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %44 = load double, double* %x1, align 8
  %call21 = call double @rint(double %44) #5
  %add22 = fadd double %call21, 5.000000e-01
  %45 = load double, double* %y1, align 8
  %call23 = call double @rint(double %45) #5
  %add24 = fadd double %call23, 5.000000e-01
  call void @cairo_move_to(%struct._cairo* %43, double %add22, double %add24)
  %46 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %47 = load double, double* %x2, align 8
  %call25 = call double @rint(double %47) #5
  %add26 = fadd double %call25, 5.000000e-01
  %48 = load double, double* %y2, align 8
  %call27 = call double @rint(double %48) #5
  %add28 = fadd double %call27, 5.000000e-01
  call void @cairo_line_to(%struct._cairo* %46, double %add26, double %add28)
  call void @gimp_vector3_sub(%struct._GimpVector3* %a, %struct._GimpVector3* %a, %struct._GimpVector3* %dir1)
  call void @gimp_vector3_sub(%struct._GimpVector3* %b, %struct._GimpVector3* %b, %struct._GimpVector3* %dir1)
  call void @gimp_vector3_add(%struct._GimpVector3* %c, %struct._GimpVector3* %c, %struct._GimpVector3* %dir2)
  call void @gimp_vector3_add(%struct._GimpVector3* %d, %struct._GimpVector3* %d, %struct._GimpVector3* %dir2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %49 = load i32, i32* %cnt, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %cnt, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %50 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_line_width(%struct._cairo* %50, double 3.000000e+00)
  %51 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke_preserve(%struct._cairo* %51)
  %52 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_line_width(%struct._cairo* %52, double 1.000000e+00)
  %53 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_source_rgb(%struct._cairo* %53, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  %54 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke(%struct._cairo* %54)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @draw_wireframe_sphere(%struct._cairo* %cr, i32 %startx, i32 %starty, i32 %pw, i32 %ph) #0 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %startx.addr = alloca i32, align 4
  %starty.addr = alloca i32, align 4
  %pw.addr = alloca i32, align 4
  %ph.addr = alloca i32, align 4
  %p = alloca [42 x %struct._GimpVector3], align 16
  %cnt = alloca i32, align 4
  %cnt2 = alloca i32, align 4
  %x1 = alloca double, align 8
  %y1 = alloca double, align 8
  %x2 = alloca double, align 8
  %y2 = alloca double, align 8
  %twopifac = alloca double, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store i32 %startx, i32* %startx.addr, align 4
  store i32 %starty, i32* %starty.addr, align 4
  store i32 %pw, i32* %pw.addr, align 4
  store i32 %ph, i32* %ph.addr, align 4
  %0 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %1 = load i32, i32* %startx.addr, align 4
  %conv = sitofp i32 %1 to double
  %2 = load i32, i32* %starty.addr, align 4
  %conv1 = sitofp i32 %2 to double
  %3 = load i32, i32* %pw.addr, align 4
  %conv2 = sitofp i32 %3 to double
  %4 = load i32, i32* %ph.addr, align 4
  %conv3 = sitofp i32 %4 to double
  call void @cairo_rectangle(%struct._cairo* %0, double %conv, double %conv1, double %conv2, double %conv3)
  %5 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_clip(%struct._cairo* %5)
  store double 0x3FD921FB54442D18, double* %twopifac, align 8
  store i32 0, i32* %cnt, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %cnt, align 4
  %cmp = icmp slt i32 %6, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 24), align 8
  %8 = load i32, i32* %cnt, align 4
  %conv5 = sitofp i32 %8 to double
  %9 = load double, double* %twopifac, align 8
  %mul = fmul double %conv5, %9
  %call = call double @cos(double %mul) #3
  %mul6 = fmul double %7, %call
  %10 = load i32, i32* %cnt, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [42 x %struct._GimpVector3], [42 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom
  %x = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %arrayidx, i32 0, i32 0
  store double %mul6, double* %x, align 8
  %11 = load i32, i32* %cnt, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [42 x %struct._GimpVector3], [42 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom7
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %arrayidx8, i32 0, i32 1
  store double 0.000000e+00, double* %y, align 8
  %12 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 24), align 8
  %13 = load i32, i32* %cnt, align 4
  %conv9 = sitofp i32 %13 to double
  %14 = load double, double* %twopifac, align 8
  %mul10 = fmul double %conv9, %14
  %call11 = call double @sin(double %mul10) #3
  %mul12 = fmul double %12, %call11
  %15 = load i32, i32* %cnt, align 4
  %idxprom13 = sext i32 %15 to i64
  %arrayidx14 = getelementptr inbounds [42 x %struct._GimpVector3], [42 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom13
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %arrayidx14, i32 0, i32 2
  store double %mul12, double* %z, align 8
  %16 = load i32, i32* %cnt, align 4
  %idxprom15 = sext i32 %16 to i64
  %arrayidx16 = getelementptr inbounds [42 x %struct._GimpVector3], [42 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom15
  %17 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 19), align 8
  %mul17 = fmul double %17, 0x401921FB54442D18
  %div = fdiv double %mul17, 3.600000e+02
  %18 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 20), align 8
  %mul18 = fmul double %18, 0x401921FB54442D18
  %div19 = fdiv double %mul18, 3.600000e+02
  %19 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 21), align 8
  %mul20 = fmul double %19, 0x401921FB54442D18
  %div21 = fdiv double %mul20, 3.600000e+02
  call void @gimp_vector3_rotate(%struct._GimpVector3* %arrayidx16, double %div, double %div19, double %div21)
  %20 = load i32, i32* %cnt, align 4
  %idxprom22 = sext i32 %20 to i64
  %arrayidx23 = getelementptr inbounds [42 x %struct._GimpVector3], [42 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom22
  %21 = load i32, i32* %cnt, align 4
  %idxprom24 = sext i32 %21 to i64
  %arrayidx25 = getelementptr inbounds [42 x %struct._GimpVector3], [42 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom24
  call void @gimp_vector3_add(%struct._GimpVector3* %arrayidx23, %struct._GimpVector3* %arrayidx25, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %cnt, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %cnt, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %cnt, align 4
  %idxprom26 = sext i32 %23 to i64
  %arrayidx27 = getelementptr inbounds [42 x %struct._GimpVector3], [42 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom26
  %arrayidx28 = getelementptr inbounds [42 x %struct._GimpVector3], [42 x %struct._GimpVector3]* %p, i32 0, i64 0
  %24 = bitcast %struct._GimpVector3* %arrayidx27 to i8*
  %25 = bitcast %struct._GimpVector3* %arrayidx28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 24, i32 8, i1 false)
  store i32 17, i32* %cnt, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.63, %for.end
  %26 = load i32, i32* %cnt, align 4
  %cmp30 = icmp slt i32 %26, 33
  br i1 %cmp30, label %for.body.32, label %for.end.65

for.body.32:                                      ; preds = %for.cond.29
  %27 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 24), align 8
  %28 = load i32, i32* %cnt, align 4
  %sub = sub nsw i32 %28, 17
  %conv33 = sitofp i32 %sub to double
  %29 = load double, double* %twopifac, align 8
  %mul34 = fmul double %conv33, %29
  %call35 = call double @cos(double %mul34) #3
  %mul36 = fmul double %27, %call35
  %30 = load i32, i32* %cnt, align 4
  %idxprom37 = sext i32 %30 to i64
  %arrayidx38 = getelementptr inbounds [42 x %struct._GimpVector3], [42 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom37
  %x39 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %arrayidx38, i32 0, i32 0
  store double %mul36, double* %x39, align 8
  %31 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 24), align 8
  %32 = load i32, i32* %cnt, align 4
  %sub40 = sub nsw i32 %32, 17
  %conv41 = sitofp i32 %sub40 to double
  %33 = load double, double* %twopifac, align 8
  %mul42 = fmul double %conv41, %33
  %call43 = call double @sin(double %mul42) #3
  %mul44 = fmul double %31, %call43
  %34 = load i32, i32* %cnt, align 4
  %idxprom45 = sext i32 %34 to i64
  %arrayidx46 = getelementptr inbounds [42 x %struct._GimpVector3], [42 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom45
  %y47 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %arrayidx46, i32 0, i32 1
  store double %mul44, double* %y47, align 8
  %35 = load i32, i32* %cnt, align 4
  %idxprom48 = sext i32 %35 to i64
  %arrayidx49 = getelementptr inbounds [42 x %struct._GimpVector3], [42 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom48
  %z50 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %arrayidx49, i32 0, i32 2
  store double 0.000000e+00, double* %z50, align 8
  %36 = load i32, i32* %cnt, align 4
  %idxprom51 = sext i32 %36 to i64
  %arrayidx52 = getelementptr inbounds [42 x %struct._GimpVector3], [42 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom51
  %37 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 19), align 8
  %mul53 = fmul double %37, 0x401921FB54442D18
  %div54 = fdiv double %mul53, 3.600000e+02
  %38 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 20), align 8
  %mul55 = fmul double %38, 0x401921FB54442D18
  %div56 = fdiv double %mul55, 3.600000e+02
  %39 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 21), align 8
  %mul57 = fmul double %39, 0x401921FB54442D18
  %div58 = fdiv double %mul57, 3.600000e+02
  call void @gimp_vector3_rotate(%struct._GimpVector3* %arrayidx52, double %div54, double %div56, double %div58)
  %40 = load i32, i32* %cnt, align 4
  %idxprom59 = sext i32 %40 to i64
  %arrayidx60 = getelementptr inbounds [42 x %struct._GimpVector3], [42 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom59
  %41 = load i32, i32* %cnt, align 4
  %idxprom61 = sext i32 %41 to i64
  %arrayidx62 = getelementptr inbounds [42 x %struct._GimpVector3], [42 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom61
  call void @gimp_vector3_add(%struct._GimpVector3* %arrayidx60, %struct._GimpVector3* %arrayidx62, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4))
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.body.32
  %42 = load i32, i32* %cnt, align 4
  %inc64 = add nsw i32 %42, 1
  store i32 %inc64, i32* %cnt, align 4
  br label %for.cond.29

for.end.65:                                       ; preds = %for.cond.29
  %43 = load i32, i32* %cnt, align 4
  %idxprom66 = sext i32 %43 to i64
  %arrayidx67 = getelementptr inbounds [42 x %struct._GimpVector3], [42 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom66
  %arrayidx68 = getelementptr inbounds [42 x %struct._GimpVector3], [42 x %struct._GimpVector3]* %p, i32 0, i64 17
  %44 = bitcast %struct._GimpVector3* %arrayidx67 to i8*
  %45 = bitcast %struct._GimpVector3* %arrayidx68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 24, i32 8, i1 false)
  %46 = load i32, i32* %cnt, align 4
  %inc69 = add nsw i32 %46, 1
  store i32 %inc69, i32* %cnt, align 4
  %47 = load i32, i32* %cnt, align 4
  store i32 %47, i32* %cnt2, align 4
  %48 = load i32, i32* %cnt, align 4
  %idxprom70 = sext i32 %48 to i64
  %arrayidx71 = getelementptr inbounds [42 x %struct._GimpVector3], [42 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom70
  call void @gimp_vector3_set(%struct._GimpVector3* %arrayidx71, double 0.000000e+00, double -3.500000e-01, double 0.000000e+00)
  %49 = load i32, i32* %cnt, align 4
  %idxprom72 = sext i32 %49 to i64
  %arrayidx73 = getelementptr inbounds [42 x %struct._GimpVector3], [42 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom72
  %50 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 19), align 8
  %mul74 = fmul double %50, 0x401921FB54442D18
  %div75 = fdiv double %mul74, 3.600000e+02
  %51 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 20), align 8
  %mul76 = fmul double %51, 0x401921FB54442D18
  %div77 = fdiv double %mul76, 3.600000e+02
  %52 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 21), align 8
  %mul78 = fmul double %52, 0x401921FB54442D18
  %div79 = fdiv double %mul78, 3.600000e+02
  call void @gimp_vector3_rotate(%struct._GimpVector3* %arrayidx73, double %div75, double %div77, double %div79)
  %53 = load i32, i32* %cnt, align 4
  %add = add nsw i32 %53, 1
  %idxprom80 = sext i32 %add to i64
  %arrayidx81 = getelementptr inbounds [42 x %struct._GimpVector3], [42 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom80
  %54 = bitcast %struct._GimpVector3* %arrayidx81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* bitcast (%struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4) to i8*), i64 24, i32 8, i1 false)
  %55 = load i32, i32* %cnt, align 4
  %add82 = add nsw i32 %55, 2
  %idxprom83 = sext i32 %add82 to i64
  %arrayidx84 = getelementptr inbounds [42 x %struct._GimpVector3], [42 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom83
  call void @gimp_vector3_set(%struct._GimpVector3* %arrayidx84, double 0.000000e+00, double 0.000000e+00, double -3.500000e-01)
  %56 = load i32, i32* %cnt, align 4
  %add85 = add nsw i32 %56, 2
  %idxprom86 = sext i32 %add85 to i64
  %arrayidx87 = getelementptr inbounds [42 x %struct._GimpVector3], [42 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom86
  %57 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 19), align 8
  %mul88 = fmul double %57, 0x401921FB54442D18
  %div89 = fdiv double %mul88, 3.600000e+02
  %58 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 20), align 8
  %mul90 = fmul double %58, 0x401921FB54442D18
  %div91 = fdiv double %mul90, 3.600000e+02
  %59 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 21), align 8
  %mul92 = fmul double %59, 0x401921FB54442D18
  %div93 = fdiv double %mul92, 3.600000e+02
  call void @gimp_vector3_rotate(%struct._GimpVector3* %arrayidx87, double %div89, double %div91, double %div93)
  %60 = load i32, i32* %cnt, align 4
  %add94 = add nsw i32 %60, 3
  %idxprom95 = sext i32 %add94 to i64
  %arrayidx96 = getelementptr inbounds [42 x %struct._GimpVector3], [42 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom95
  %61 = bitcast %struct._GimpVector3* %arrayidx96 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* bitcast (%struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4) to i8*), i64 24, i32 8, i1 false)
  %62 = load i32, i32* %cnt, align 4
  %add97 = add nsw i32 %62, 4
  %idxprom98 = sext i32 %add97 to i64
  %arrayidx99 = getelementptr inbounds [42 x %struct._GimpVector3], [42 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom98
  %63 = load i32, i32* %cnt, align 4
  %idxprom100 = sext i32 %63 to i64
  %arrayidx101 = getelementptr inbounds [42 x %struct._GimpVector3], [42 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom100
  %64 = bitcast %struct._GimpVector3* %arrayidx99 to i8*
  %65 = bitcast %struct._GimpVector3* %arrayidx101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %65, i64 24, i32 8, i1 false)
  %66 = load i32, i32* %cnt, align 4
  %add102 = add nsw i32 %66, 4
  %idxprom103 = sext i32 %add102 to i64
  %arrayidx104 = getelementptr inbounds [42 x %struct._GimpVector3], [42 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom103
  call void @gimp_vector3_mul(%struct._GimpVector3* %arrayidx104, double -1.000000e+00)
  %67 = load i32, i32* %cnt, align 4
  %add105 = add nsw i32 %67, 5
  %idxprom106 = sext i32 %add105 to i64
  %arrayidx107 = getelementptr inbounds [42 x %struct._GimpVector3], [42 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom106
  %68 = load i32, i32* %cnt, align 4
  %add108 = add nsw i32 %68, 1
  %idxprom109 = sext i32 %add108 to i64
  %arrayidx110 = getelementptr inbounds [42 x %struct._GimpVector3], [42 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom109
  %69 = bitcast %struct._GimpVector3* %arrayidx107 to i8*
  %70 = bitcast %struct._GimpVector3* %arrayidx110 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %70, i64 24, i32 8, i1 false)
  %71 = load i32, i32* %cnt, align 4
  %idxprom111 = sext i32 %71 to i64
  %arrayidx112 = getelementptr inbounds [42 x %struct._GimpVector3], [42 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom111
  %72 = load i32, i32* %cnt, align 4
  %idxprom113 = sext i32 %72 to i64
  %arrayidx114 = getelementptr inbounds [42 x %struct._GimpVector3], [42 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom113
  call void @gimp_vector3_add(%struct._GimpVector3* %arrayidx112, %struct._GimpVector3* %arrayidx114, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4))
  %73 = load i32, i32* %cnt, align 4
  %add115 = add nsw i32 %73, 2
  %idxprom116 = sext i32 %add115 to i64
  %arrayidx117 = getelementptr inbounds [42 x %struct._GimpVector3], [42 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom116
  %74 = load i32, i32* %cnt, align 4
  %add118 = add nsw i32 %74, 2
  %idxprom119 = sext i32 %add118 to i64
  %arrayidx120 = getelementptr inbounds [42 x %struct._GimpVector3], [42 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom119
  call void @gimp_vector3_add(%struct._GimpVector3* %arrayidx117, %struct._GimpVector3* %arrayidx120, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4))
  %75 = load i32, i32* %cnt, align 4
  %add121 = add nsw i32 %75, 4
  %idxprom122 = sext i32 %add121 to i64
  %arrayidx123 = getelementptr inbounds [42 x %struct._GimpVector3], [42 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom122
  %76 = load i32, i32* %cnt, align 4
  %add124 = add nsw i32 %76, 4
  %idxprom125 = sext i32 %add124 to i64
  %arrayidx126 = getelementptr inbounds [42 x %struct._GimpVector3], [42 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom125
  call void @gimp_vector3_add(%struct._GimpVector3* %arrayidx123, %struct._GimpVector3* %arrayidx126, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4))
  store i32 0, i32* %cnt, align 4
  br label %for.cond.127

for.cond.127:                                     ; preds = %for.inc.164, %for.end.65
  %77 = load i32, i32* %cnt, align 4
  %78 = load i32, i32* %cnt2, align 4
  %sub128 = sub nsw i32 %78, 1
  %cmp129 = icmp slt i32 %77, %sub128
  br i1 %cmp129, label %for.body.131, label %for.end.166

for.body.131:                                     ; preds = %for.cond.127
  %79 = load i32, i32* %cnt, align 4
  %idxprom132 = sext i32 %79 to i64
  %arrayidx133 = getelementptr inbounds [42 x %struct._GimpVector3], [42 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom132
  %z134 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %arrayidx133, i32 0, i32 2
  %80 = load double, double* %z134, align 8
  %81 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4, i32 2), align 8
  %cmp135 = fcmp ogt double %80, %81
  br i1 %cmp135, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.131
  %82 = load i32, i32* %cnt, align 4
  %add137 = add nsw i32 %82, 1
  %idxprom138 = sext i32 %add137 to i64
  %arrayidx139 = getelementptr inbounds [42 x %struct._GimpVector3], [42 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom138
  %z140 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %arrayidx139, i32 0, i32 2
  %83 = load double, double* %z140, align 8
  %84 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4, i32 2), align 8
  %cmp141 = fcmp ogt double %83, %84
  br i1 %cmp141, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %85 = load i32, i32* %startx.addr, align 4
  %86 = load i32, i32* %starty.addr, align 4
  %87 = load i32, i32* %pw.addr, align 4
  %88 = load i32, i32* %ph.addr, align 4
  %89 = load i32, i32* %cnt, align 4
  %idxprom143 = sext i32 %89 to i64
  %arrayidx144 = getelementptr inbounds [42 x %struct._GimpVector3], [42 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom143
  call void @gimp_vector_3d_to_2d(i32 %85, i32 %86, i32 %87, i32 %88, double* %x1, double* %y1, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 0), %struct._GimpVector3* %arrayidx144)
  %90 = load i32, i32* %startx.addr, align 4
  %91 = load i32, i32* %starty.addr, align 4
  %92 = load i32, i32* %pw.addr, align 4
  %93 = load i32, i32* %ph.addr, align 4
  %94 = load i32, i32* %cnt, align 4
  %add145 = add nsw i32 %94, 1
  %idxprom146 = sext i32 %add145 to i64
  %arrayidx147 = getelementptr inbounds [42 x %struct._GimpVector3], [42 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom146
  call void @gimp_vector_3d_to_2d(i32 %90, i32 %91, i32 %92, i32 %93, double* %x2, double* %y2, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 0), %struct._GimpVector3* %arrayidx147)
  %95 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %96 = load double, double* %x1, align 8
  %add148 = fadd double %96, 5.000000e-01
  %conv149 = fptosi double %add148 to i32
  %conv150 = sitofp i32 %conv149 to double
  %add151 = fadd double %conv150, 5.000000e-01
  %97 = load double, double* %y1, align 8
  %add152 = fadd double %97, 5.000000e-01
  %conv153 = fptosi double %add152 to i32
  %conv154 = sitofp i32 %conv153 to double
  %add155 = fadd double %conv154, 5.000000e-01
  call void @cairo_move_to(%struct._cairo* %95, double %add151, double %add155)
  %98 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %99 = load double, double* %x2, align 8
  %add156 = fadd double %99, 5.000000e-01
  %conv157 = fptosi double %add156 to i32
  %conv158 = sitofp i32 %conv157 to double
  %add159 = fadd double %conv158, 5.000000e-01
  %100 = load double, double* %y2, align 8
  %add160 = fadd double %100, 5.000000e-01
  %conv161 = fptosi double %add160 to i32
  %conv162 = sitofp i32 %conv161 to double
  %add163 = fadd double %conv162, 5.000000e-01
  call void @cairo_line_to(%struct._cairo* %98, double %add159, double %add163)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body.131
  br label %for.inc.164

for.inc.164:                                      ; preds = %if.end
  %101 = load i32, i32* %cnt, align 4
  %inc165 = add nsw i32 %101, 1
  store i32 %inc165, i32* %cnt, align 4
  br label %for.cond.127

for.end.166:                                      ; preds = %for.cond.127
  store i32 0, i32* %cnt, align 4
  br label %for.cond.167

for.cond.167:                                     ; preds = %for.inc.185, %for.end.166
  %102 = load i32, i32* %cnt, align 4
  %cmp168 = icmp slt i32 %102, 3
  br i1 %cmp168, label %for.body.170, label %for.end.187

for.body.170:                                     ; preds = %for.cond.167
  %103 = load i32, i32* %startx.addr, align 4
  %104 = load i32, i32* %starty.addr, align 4
  %105 = load i32, i32* %pw.addr, align 4
  %106 = load i32, i32* %ph.addr, align 4
  %107 = load i32, i32* %cnt2, align 4
  %idxprom171 = sext i32 %107 to i64
  %arrayidx172 = getelementptr inbounds [42 x %struct._GimpVector3], [42 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom171
  call void @gimp_vector_3d_to_2d(i32 %103, i32 %104, i32 %105, i32 %106, double* %x1, double* %y1, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 0), %struct._GimpVector3* %arrayidx172)
  %108 = load i32, i32* %startx.addr, align 4
  %109 = load i32, i32* %starty.addr, align 4
  %110 = load i32, i32* %pw.addr, align 4
  %111 = load i32, i32* %ph.addr, align 4
  %112 = load i32, i32* %cnt2, align 4
  %add173 = add nsw i32 %112, 1
  %idxprom174 = sext i32 %add173 to i64
  %arrayidx175 = getelementptr inbounds [42 x %struct._GimpVector3], [42 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom174
  call void @gimp_vector_3d_to_2d(i32 %108, i32 %109, i32 %110, i32 %111, double* %x2, double* %y2, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 0), %struct._GimpVector3* %arrayidx175)
  %113 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %114 = load double, double* %x1, align 8
  %call176 = call double @rint(double %114) #5
  %add177 = fadd double %call176, 5.000000e-01
  %115 = load double, double* %y1, align 8
  %call178 = call double @rint(double %115) #5
  %add179 = fadd double %call178, 5.000000e-01
  call void @cairo_move_to(%struct._cairo* %113, double %add177, double %add179)
  %116 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %117 = load double, double* %x2, align 8
  %call180 = call double @rint(double %117) #5
  %add181 = fadd double %call180, 5.000000e-01
  %118 = load double, double* %y2, align 8
  %call182 = call double @rint(double %118) #5
  %add183 = fadd double %call182, 5.000000e-01
  call void @cairo_line_to(%struct._cairo* %116, double %add181, double %add183)
  %119 = load i32, i32* %cnt2, align 4
  %add184 = add nsw i32 %119, 2
  store i32 %add184, i32* %cnt2, align 4
  br label %for.inc.185

for.inc.185:                                      ; preds = %for.body.170
  %120 = load i32, i32* %cnt, align 4
  %inc186 = add nsw i32 %120, 1
  store i32 %inc186, i32* %cnt, align 4
  br label %for.cond.167

for.end.187:                                      ; preds = %for.cond.167
  %121 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_line_width(%struct._cairo* %121, double 3.000000e+00)
  %122 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke_preserve(%struct._cairo* %122)
  %123 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_line_width(%struct._cairo* %123, double 1.000000e+00)
  %124 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_source_rgb(%struct._cairo* %124, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  %125 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke(%struct._cairo* %125)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @draw_wireframe_box(%struct._cairo* %cr, i32 %startx, i32 %starty, i32 %pw, i32 %ph) #0 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %startx.addr = alloca i32, align 4
  %starty.addr = alloca i32, align 4
  %pw.addr = alloca i32, align 4
  %ph.addr = alloca i32, align 4
  %p = alloca [8 x %struct._GimpVector3], align 16
  %tmp = alloca %struct._GimpVector3, align 8
  %scale = alloca %struct._GimpVector3, align 8
  %i = alloca i32, align 4
  %cx1 = alloca double, align 8
  %cy1 = alloca double, align 8
  %cx2 = alloca double, align 8
  %cy2 = alloca double, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store i32 %startx, i32* %startx.addr, align 4
  store i32 %starty, i32* %starty.addr, align 4
  store i32 %pw, i32* %pw.addr, align 4
  store i32 %ph, i32* %ph.addr, align 4
  %0 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %1 = load i32, i32* %startx.addr, align 4
  %conv = sitofp i32 %1 to double
  %2 = load i32, i32* %starty.addr, align 4
  %conv7 = sitofp i32 %2 to double
  %3 = load i32, i32* %pw.addr, align 4
  %conv8 = sitofp i32 %3 to double
  %4 = load i32, i32* %ph.addr, align 4
  %conv9 = sitofp i32 %4 to double
  call void @cairo_rectangle(%struct._cairo* %0, double %conv, double %conv7, double %conv8, double %conv9)
  %5 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_clip(%struct._cairo* %5)
  call void @init_compute()
  %6 = bitcast %struct._GimpVector3* %scale to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* bitcast (%struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 5) to i8*), i64 24, i32 8, i1 false)
  call void @gimp_vector3_mul(%struct._GimpVector3* %scale, double 5.000000e-01)
  %arrayidx = getelementptr inbounds [8 x %struct._GimpVector3], [8 x %struct._GimpVector3]* %p, i32 0, i64 0
  %x = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %scale, i32 0, i32 0
  %7 = load double, double* %x, align 8
  %sub = fsub double -0.000000e+00, %7
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %scale, i32 0, i32 1
  %8 = load double, double* %y, align 8
  %sub10 = fsub double -0.000000e+00, %8
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %scale, i32 0, i32 2
  %9 = load double, double* %z, align 8
  call void @gimp_vector3_set(%struct._GimpVector3* %arrayidx, double %sub, double %sub10, double %9)
  %arrayidx11 = getelementptr inbounds [8 x %struct._GimpVector3], [8 x %struct._GimpVector3]* %p, i32 0, i64 1
  %x12 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %scale, i32 0, i32 0
  %10 = load double, double* %x12, align 8
  %y13 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %scale, i32 0, i32 1
  %11 = load double, double* %y13, align 8
  %sub14 = fsub double -0.000000e+00, %11
  %z15 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %scale, i32 0, i32 2
  %12 = load double, double* %z15, align 8
  call void @gimp_vector3_set(%struct._GimpVector3* %arrayidx11, double %10, double %sub14, double %12)
  %arrayidx16 = getelementptr inbounds [8 x %struct._GimpVector3], [8 x %struct._GimpVector3]* %p, i32 0, i64 2
  %x17 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %scale, i32 0, i32 0
  %13 = load double, double* %x17, align 8
  %y18 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %scale, i32 0, i32 1
  %14 = load double, double* %y18, align 8
  %z19 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %scale, i32 0, i32 2
  %15 = load double, double* %z19, align 8
  call void @gimp_vector3_set(%struct._GimpVector3* %arrayidx16, double %13, double %14, double %15)
  %arrayidx20 = getelementptr inbounds [8 x %struct._GimpVector3], [8 x %struct._GimpVector3]* %p, i32 0, i64 3
  %x21 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %scale, i32 0, i32 0
  %16 = load double, double* %x21, align 8
  %sub22 = fsub double -0.000000e+00, %16
  %y23 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %scale, i32 0, i32 1
  %17 = load double, double* %y23, align 8
  %z24 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %scale, i32 0, i32 2
  %18 = load double, double* %z24, align 8
  call void @gimp_vector3_set(%struct._GimpVector3* %arrayidx20, double %sub22, double %17, double %18)
  %arrayidx25 = getelementptr inbounds [8 x %struct._GimpVector3], [8 x %struct._GimpVector3]* %p, i32 0, i64 4
  %x26 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %scale, i32 0, i32 0
  %19 = load double, double* %x26, align 8
  %sub27 = fsub double -0.000000e+00, %19
  %y28 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %scale, i32 0, i32 1
  %20 = load double, double* %y28, align 8
  %sub29 = fsub double -0.000000e+00, %20
  %z30 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %scale, i32 0, i32 2
  %21 = load double, double* %z30, align 8
  %sub31 = fsub double -0.000000e+00, %21
  call void @gimp_vector3_set(%struct._GimpVector3* %arrayidx25, double %sub27, double %sub29, double %sub31)
  %arrayidx32 = getelementptr inbounds [8 x %struct._GimpVector3], [8 x %struct._GimpVector3]* %p, i32 0, i64 5
  %x33 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %scale, i32 0, i32 0
  %22 = load double, double* %x33, align 8
  %y34 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %scale, i32 0, i32 1
  %23 = load double, double* %y34, align 8
  %sub35 = fsub double -0.000000e+00, %23
  %z36 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %scale, i32 0, i32 2
  %24 = load double, double* %z36, align 8
  %sub37 = fsub double -0.000000e+00, %24
  call void @gimp_vector3_set(%struct._GimpVector3* %arrayidx32, double %22, double %sub35, double %sub37)
  %arrayidx38 = getelementptr inbounds [8 x %struct._GimpVector3], [8 x %struct._GimpVector3]* %p, i32 0, i64 6
  %x39 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %scale, i32 0, i32 0
  %25 = load double, double* %x39, align 8
  %y40 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %scale, i32 0, i32 1
  %26 = load double, double* %y40, align 8
  %z41 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %scale, i32 0, i32 2
  %27 = load double, double* %z41, align 8
  %sub42 = fsub double -0.000000e+00, %27
  call void @gimp_vector3_set(%struct._GimpVector3* %arrayidx38, double %25, double %26, double %sub42)
  %arrayidx43 = getelementptr inbounds [8 x %struct._GimpVector3], [8 x %struct._GimpVector3]* %p, i32 0, i64 7
  %x44 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %scale, i32 0, i32 0
  %28 = load double, double* %x44, align 8
  %sub45 = fsub double -0.000000e+00, %28
  %y46 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %scale, i32 0, i32 1
  %29 = load double, double* %y46, align 8
  %z47 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %scale, i32 0, i32 2
  %30 = load double, double* %z47, align 8
  %sub48 = fsub double -0.000000e+00, %30
  call void @gimp_vector3_set(%struct._GimpVector3* %arrayidx43, double %sub45, double %29, double %sub48)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %31 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %31, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load i32, i32* %i, align 4
  %idxprom = sext i32 %32 to i64
  %arrayidx50 = getelementptr inbounds [8 x %struct._GimpVector3], [8 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom
  call void @vecmulmat(%struct._GimpVector3* %tmp, %struct._GimpVector3* %arrayidx50, float* getelementptr inbounds ([16 x float], [16 x float]* @rotmat, i32 0, i32 0))
  %33 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %33 to i64
  %arrayidx52 = getelementptr inbounds [8 x %struct._GimpVector3], [8 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom51
  call void @gimp_vector3_add(%struct._GimpVector3* %arrayidx52, %struct._GimpVector3* %tmp, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i32, i32* %i, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load i32, i32* %startx.addr, align 4
  %conv53 = sitofp i32 %35 to double
  store double %conv53, double* %cx1, align 8
  %36 = load i32, i32* %starty.addr, align 4
  %conv54 = sitofp i32 %36 to double
  store double %conv54, double* %cy1, align 8
  %37 = load double, double* %cx1, align 8
  %38 = load i32, i32* %pw.addr, align 4
  %conv55 = sitofp i32 %38 to double
  %add = fadd double %37, %conv55
  store double %add, double* %cx2, align 8
  %39 = load double, double* %cy1, align 8
  %40 = load i32, i32* %ph.addr, align 4
  %conv56 = sitofp i32 %40 to double
  %add57 = fadd double %39, %conv56
  store double %add57, double* %cy2, align 8
  %41 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %42 = load i32, i32* %startx.addr, align 4
  %43 = load i32, i32* %starty.addr, align 4
  %44 = load i32, i32* %pw.addr, align 4
  %45 = load i32, i32* %ph.addr, align 4
  %46 = load double, double* %cx1, align 8
  %47 = load double, double* %cy1, align 8
  %48 = load double, double* %cx2, align 8
  %49 = load double, double* %cy2, align 8
  %arrayidx58 = getelementptr inbounds [8 x %struct._GimpVector3], [8 x %struct._GimpVector3]* %p, i32 0, i64 0
  %arrayidx59 = getelementptr inbounds [8 x %struct._GimpVector3], [8 x %struct._GimpVector3]* %p, i32 0, i64 1
  call void @draw_line(%struct._cairo* %41, i32 %42, i32 %43, i32 %44, i32 %45, double %46, double %47, double %48, double %49, %struct._GimpVector3* byval align 8 %arrayidx58, %struct._GimpVector3* byval align 8 %arrayidx59)
  %50 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %51 = load i32, i32* %startx.addr, align 4
  %52 = load i32, i32* %starty.addr, align 4
  %53 = load i32, i32* %pw.addr, align 4
  %54 = load i32, i32* %ph.addr, align 4
  %55 = load double, double* %cx1, align 8
  %56 = load double, double* %cy1, align 8
  %57 = load double, double* %cx2, align 8
  %58 = load double, double* %cy2, align 8
  %arrayidx60 = getelementptr inbounds [8 x %struct._GimpVector3], [8 x %struct._GimpVector3]* %p, i32 0, i64 1
  %arrayidx61 = getelementptr inbounds [8 x %struct._GimpVector3], [8 x %struct._GimpVector3]* %p, i32 0, i64 2
  call void @draw_line(%struct._cairo* %50, i32 %51, i32 %52, i32 %53, i32 %54, double %55, double %56, double %57, double %58, %struct._GimpVector3* byval align 8 %arrayidx60, %struct._GimpVector3* byval align 8 %arrayidx61)
  %59 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %60 = load i32, i32* %startx.addr, align 4
  %61 = load i32, i32* %starty.addr, align 4
  %62 = load i32, i32* %pw.addr, align 4
  %63 = load i32, i32* %ph.addr, align 4
  %64 = load double, double* %cx1, align 8
  %65 = load double, double* %cy1, align 8
  %66 = load double, double* %cx2, align 8
  %67 = load double, double* %cy2, align 8
  %arrayidx62 = getelementptr inbounds [8 x %struct._GimpVector3], [8 x %struct._GimpVector3]* %p, i32 0, i64 2
  %arrayidx63 = getelementptr inbounds [8 x %struct._GimpVector3], [8 x %struct._GimpVector3]* %p, i32 0, i64 3
  call void @draw_line(%struct._cairo* %59, i32 %60, i32 %61, i32 %62, i32 %63, double %64, double %65, double %66, double %67, %struct._GimpVector3* byval align 8 %arrayidx62, %struct._GimpVector3* byval align 8 %arrayidx63)
  %68 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %69 = load i32, i32* %startx.addr, align 4
  %70 = load i32, i32* %starty.addr, align 4
  %71 = load i32, i32* %pw.addr, align 4
  %72 = load i32, i32* %ph.addr, align 4
  %73 = load double, double* %cx1, align 8
  %74 = load double, double* %cy1, align 8
  %75 = load double, double* %cx2, align 8
  %76 = load double, double* %cy2, align 8
  %arrayidx64 = getelementptr inbounds [8 x %struct._GimpVector3], [8 x %struct._GimpVector3]* %p, i32 0, i64 3
  %arrayidx65 = getelementptr inbounds [8 x %struct._GimpVector3], [8 x %struct._GimpVector3]* %p, i32 0, i64 0
  call void @draw_line(%struct._cairo* %68, i32 %69, i32 %70, i32 %71, i32 %72, double %73, double %74, double %75, double %76, %struct._GimpVector3* byval align 8 %arrayidx64, %struct._GimpVector3* byval align 8 %arrayidx65)
  %77 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %78 = load i32, i32* %startx.addr, align 4
  %79 = load i32, i32* %starty.addr, align 4
  %80 = load i32, i32* %pw.addr, align 4
  %81 = load i32, i32* %ph.addr, align 4
  %82 = load double, double* %cx1, align 8
  %83 = load double, double* %cy1, align 8
  %84 = load double, double* %cx2, align 8
  %85 = load double, double* %cy2, align 8
  %arrayidx66 = getelementptr inbounds [8 x %struct._GimpVector3], [8 x %struct._GimpVector3]* %p, i32 0, i64 4
  %arrayidx67 = getelementptr inbounds [8 x %struct._GimpVector3], [8 x %struct._GimpVector3]* %p, i32 0, i64 5
  call void @draw_line(%struct._cairo* %77, i32 %78, i32 %79, i32 %80, i32 %81, double %82, double %83, double %84, double %85, %struct._GimpVector3* byval align 8 %arrayidx66, %struct._GimpVector3* byval align 8 %arrayidx67)
  %86 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %87 = load i32, i32* %startx.addr, align 4
  %88 = load i32, i32* %starty.addr, align 4
  %89 = load i32, i32* %pw.addr, align 4
  %90 = load i32, i32* %ph.addr, align 4
  %91 = load double, double* %cx1, align 8
  %92 = load double, double* %cy1, align 8
  %93 = load double, double* %cx2, align 8
  %94 = load double, double* %cy2, align 8
  %arrayidx68 = getelementptr inbounds [8 x %struct._GimpVector3], [8 x %struct._GimpVector3]* %p, i32 0, i64 5
  %arrayidx69 = getelementptr inbounds [8 x %struct._GimpVector3], [8 x %struct._GimpVector3]* %p, i32 0, i64 6
  call void @draw_line(%struct._cairo* %86, i32 %87, i32 %88, i32 %89, i32 %90, double %91, double %92, double %93, double %94, %struct._GimpVector3* byval align 8 %arrayidx68, %struct._GimpVector3* byval align 8 %arrayidx69)
  %95 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %96 = load i32, i32* %startx.addr, align 4
  %97 = load i32, i32* %starty.addr, align 4
  %98 = load i32, i32* %pw.addr, align 4
  %99 = load i32, i32* %ph.addr, align 4
  %100 = load double, double* %cx1, align 8
  %101 = load double, double* %cy1, align 8
  %102 = load double, double* %cx2, align 8
  %103 = load double, double* %cy2, align 8
  %arrayidx70 = getelementptr inbounds [8 x %struct._GimpVector3], [8 x %struct._GimpVector3]* %p, i32 0, i64 6
  %arrayidx71 = getelementptr inbounds [8 x %struct._GimpVector3], [8 x %struct._GimpVector3]* %p, i32 0, i64 7
  call void @draw_line(%struct._cairo* %95, i32 %96, i32 %97, i32 %98, i32 %99, double %100, double %101, double %102, double %103, %struct._GimpVector3* byval align 8 %arrayidx70, %struct._GimpVector3* byval align 8 %arrayidx71)
  %104 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %105 = load i32, i32* %startx.addr, align 4
  %106 = load i32, i32* %starty.addr, align 4
  %107 = load i32, i32* %pw.addr, align 4
  %108 = load i32, i32* %ph.addr, align 4
  %109 = load double, double* %cx1, align 8
  %110 = load double, double* %cy1, align 8
  %111 = load double, double* %cx2, align 8
  %112 = load double, double* %cy2, align 8
  %arrayidx72 = getelementptr inbounds [8 x %struct._GimpVector3], [8 x %struct._GimpVector3]* %p, i32 0, i64 7
  %arrayidx73 = getelementptr inbounds [8 x %struct._GimpVector3], [8 x %struct._GimpVector3]* %p, i32 0, i64 4
  call void @draw_line(%struct._cairo* %104, i32 %105, i32 %106, i32 %107, i32 %108, double %109, double %110, double %111, double %112, %struct._GimpVector3* byval align 8 %arrayidx72, %struct._GimpVector3* byval align 8 %arrayidx73)
  %113 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %114 = load i32, i32* %startx.addr, align 4
  %115 = load i32, i32* %starty.addr, align 4
  %116 = load i32, i32* %pw.addr, align 4
  %117 = load i32, i32* %ph.addr, align 4
  %118 = load double, double* %cx1, align 8
  %119 = load double, double* %cy1, align 8
  %120 = load double, double* %cx2, align 8
  %121 = load double, double* %cy2, align 8
  %arrayidx74 = getelementptr inbounds [8 x %struct._GimpVector3], [8 x %struct._GimpVector3]* %p, i32 0, i64 0
  %arrayidx75 = getelementptr inbounds [8 x %struct._GimpVector3], [8 x %struct._GimpVector3]* %p, i32 0, i64 4
  call void @draw_line(%struct._cairo* %113, i32 %114, i32 %115, i32 %116, i32 %117, double %118, double %119, double %120, double %121, %struct._GimpVector3* byval align 8 %arrayidx74, %struct._GimpVector3* byval align 8 %arrayidx75)
  %122 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %123 = load i32, i32* %startx.addr, align 4
  %124 = load i32, i32* %starty.addr, align 4
  %125 = load i32, i32* %pw.addr, align 4
  %126 = load i32, i32* %ph.addr, align 4
  %127 = load double, double* %cx1, align 8
  %128 = load double, double* %cy1, align 8
  %129 = load double, double* %cx2, align 8
  %130 = load double, double* %cy2, align 8
  %arrayidx76 = getelementptr inbounds [8 x %struct._GimpVector3], [8 x %struct._GimpVector3]* %p, i32 0, i64 1
  %arrayidx77 = getelementptr inbounds [8 x %struct._GimpVector3], [8 x %struct._GimpVector3]* %p, i32 0, i64 5
  call void @draw_line(%struct._cairo* %122, i32 %123, i32 %124, i32 %125, i32 %126, double %127, double %128, double %129, double %130, %struct._GimpVector3* byval align 8 %arrayidx76, %struct._GimpVector3* byval align 8 %arrayidx77)
  %131 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %132 = load i32, i32* %startx.addr, align 4
  %133 = load i32, i32* %starty.addr, align 4
  %134 = load i32, i32* %pw.addr, align 4
  %135 = load i32, i32* %ph.addr, align 4
  %136 = load double, double* %cx1, align 8
  %137 = load double, double* %cy1, align 8
  %138 = load double, double* %cx2, align 8
  %139 = load double, double* %cy2, align 8
  %arrayidx78 = getelementptr inbounds [8 x %struct._GimpVector3], [8 x %struct._GimpVector3]* %p, i32 0, i64 2
  %arrayidx79 = getelementptr inbounds [8 x %struct._GimpVector3], [8 x %struct._GimpVector3]* %p, i32 0, i64 6
  call void @draw_line(%struct._cairo* %131, i32 %132, i32 %133, i32 %134, i32 %135, double %136, double %137, double %138, double %139, %struct._GimpVector3* byval align 8 %arrayidx78, %struct._GimpVector3* byval align 8 %arrayidx79)
  %140 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %141 = load i32, i32* %startx.addr, align 4
  %142 = load i32, i32* %starty.addr, align 4
  %143 = load i32, i32* %pw.addr, align 4
  %144 = load i32, i32* %ph.addr, align 4
  %145 = load double, double* %cx1, align 8
  %146 = load double, double* %cy1, align 8
  %147 = load double, double* %cx2, align 8
  %148 = load double, double* %cy2, align 8
  %arrayidx80 = getelementptr inbounds [8 x %struct._GimpVector3], [8 x %struct._GimpVector3]* %p, i32 0, i64 3
  %arrayidx81 = getelementptr inbounds [8 x %struct._GimpVector3], [8 x %struct._GimpVector3]* %p, i32 0, i64 7
  call void @draw_line(%struct._cairo* %140, i32 %141, i32 %142, i32 %143, i32 %144, double %145, double %146, double %147, double %148, %struct._GimpVector3* byval align 8 %arrayidx80, %struct._GimpVector3* byval align 8 %arrayidx81)
  %149 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_line_width(%struct._cairo* %149, double 3.000000e+00)
  %150 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke_preserve(%struct._cairo* %150)
  %151 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_line_width(%struct._cairo* %151, double 1.000000e+00)
  %152 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_source_rgb(%struct._cairo* %152, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  %153 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke(%struct._cairo* %153)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @draw_wireframe_cylinder(%struct._cairo* %cr, i32 %startx, i32 %starty, i32 %pw, i32 %ph) #0 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %startx.addr = alloca i32, align 4
  %starty.addr = alloca i32, align 4
  %pw.addr = alloca i32, align 4
  %ph.addr = alloca i32, align 4
  %p = alloca [16 x %struct._GimpVector3], align 16
  %a = alloca %struct._GimpVector3, align 8
  %axis = alloca %struct._GimpVector3, align 8
  %scale = alloca %struct._GimpVector3, align 8
  %i = alloca i32, align 4
  %cx1 = alloca double, align 8
  %cy1 = alloca double, align 8
  %cx2 = alloca double, align 8
  %cy2 = alloca double, align 8
  %m = alloca [16 x float], align 16
  %l = alloca float, align 4
  %angle = alloca float, align 4
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store i32 %startx, i32* %startx.addr, align 4
  store i32 %starty, i32* %starty.addr, align 4
  store i32 %pw, i32* %pw.addr, align 4
  store i32 %ph, i32* %ph.addr, align 4
  %0 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %1 = load i32, i32* %startx.addr, align 4
  %conv = sitofp i32 %1 to double
  %2 = load i32, i32* %starty.addr, align 4
  %conv1 = sitofp i32 %2 to double
  %3 = load i32, i32* %pw.addr, align 4
  %conv2 = sitofp i32 %3 to double
  %4 = load i32, i32* %ph.addr, align 4
  %conv3 = sitofp i32 %4 to double
  call void @cairo_rectangle(%struct._cairo* %0, double %conv, double %conv1, double %conv2, double %conv3)
  %5 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_clip(%struct._cairo* %5)
  call void @init_compute()
  %6 = bitcast %struct._GimpVector3* %scale to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* bitcast (%struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 5) to i8*), i64 24, i32 8, i1 false)
  call void @gimp_vector3_mul(%struct._GimpVector3* %scale, double 5.000000e-01)
  %7 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 26), align 8
  %div = fdiv double %7, 2.000000e+00
  %conv4 = fptrunc double %div to float
  store float %conv4, float* %l, align 4
  store float 0.000000e+00, float* %angle, align 4
  call void @gimp_vector3_set(%struct._GimpVector3* %axis, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %8, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load float, float* %angle, align 4
  %arraydecay = getelementptr inbounds [16 x float], [16 x float]* %m, i32 0, i32 0
  call void @rotatemat(float %9, %struct._GimpVector3* %axis, float* %arraydecay)
  %10 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 25), align 8
  call void @gimp_vector3_set(%struct._GimpVector3* %a, double %10, double 0.000000e+00, double 0.000000e+00)
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [16 x %struct._GimpVector3], [16 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom
  %arraydecay6 = getelementptr inbounds [16 x float], [16 x float]* %m, i32 0, i32 0
  call void @vecmulmat(%struct._GimpVector3* %arrayidx, %struct._GimpVector3* %a, float* %arraydecay6)
  %12 = load i32, i32* %i, align 4
  %add = add nsw i32 %12, 8
  %idxprom7 = sext i32 %add to i64
  %arrayidx8 = getelementptr inbounds [16 x %struct._GimpVector3], [16 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom7
  %13 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %13 to i64
  %arrayidx10 = getelementptr inbounds [16 x %struct._GimpVector3], [16 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom9
  %14 = bitcast %struct._GimpVector3* %arrayidx8 to i8*
  %15 = bitcast %struct._GimpVector3* %arrayidx10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 24, i32 8, i1 false)
  %16 = load float, float* %l, align 4
  %conv11 = fpext float %16 to double
  %17 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %17 to i64
  %arrayidx13 = getelementptr inbounds [16 x %struct._GimpVector3], [16 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom12
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %arrayidx13, i32 0, i32 1
  %18 = load double, double* %y, align 8
  %add14 = fadd double %18, %conv11
  store double %add14, double* %y, align 8
  %19 = load float, float* %l, align 4
  %conv15 = fpext float %19 to double
  %20 = load i32, i32* %i, align 4
  %add16 = add nsw i32 %20, 8
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds [16 x %struct._GimpVector3], [16 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom17
  %y19 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %arrayidx18, i32 0, i32 1
  %21 = load double, double* %y19, align 8
  %sub = fsub double %21, %conv15
  store double %sub, double* %y19, align 8
  %22 = load float, float* %angle, align 4
  %conv20 = fpext float %22 to double
  %add21 = fadd double %conv20, 4.500000e+01
  %conv22 = fptrunc double %add21 to float
  store float %conv22, float* %angle, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.31, %for.end
  %24 = load i32, i32* %i, align 4
  %cmp24 = icmp slt i32 %24, 16
  br i1 %cmp24, label %for.body.26, label %for.end.33

for.body.26:                                      ; preds = %for.cond.23
  %25 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %25 to i64
  %arrayidx28 = getelementptr inbounds [16 x %struct._GimpVector3], [16 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom27
  call void @vecmulmat(%struct._GimpVector3* %a, %struct._GimpVector3* %arrayidx28, float* getelementptr inbounds ([16 x float], [16 x float]* @rotmat, i32 0, i32 0))
  %26 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %26 to i64
  %arrayidx30 = getelementptr inbounds [16 x %struct._GimpVector3], [16 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom29
  call void @gimp_vector3_add(%struct._GimpVector3* %arrayidx30, %struct._GimpVector3* %a, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4))
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.body.26
  %27 = load i32, i32* %i, align 4
  %inc32 = add nsw i32 %27, 1
  store i32 %inc32, i32* %i, align 4
  br label %for.cond.23

for.end.33:                                       ; preds = %for.cond.23
  %28 = load i32, i32* %startx.addr, align 4
  %conv34 = sitofp i32 %28 to double
  store double %conv34, double* %cx1, align 8
  %29 = load i32, i32* %starty.addr, align 4
  %conv35 = sitofp i32 %29 to double
  store double %conv35, double* %cy1, align 8
  %30 = load double, double* %cx1, align 8
  %31 = load i32, i32* %pw.addr, align 4
  %conv36 = sitofp i32 %31 to double
  %add37 = fadd double %30, %conv36
  store double %add37, double* %cx2, align 8
  %32 = load double, double* %cy1, align 8
  %33 = load i32, i32* %ph.addr, align 4
  %conv38 = sitofp i32 %33 to double
  %add39 = fadd double %32, %conv38
  store double %add39, double* %cy2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.60, %for.end.33
  %34 = load i32, i32* %i, align 4
  %cmp41 = icmp slt i32 %34, 7
  br i1 %cmp41, label %for.body.43, label %for.end.62

for.body.43:                                      ; preds = %for.cond.40
  %35 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %36 = load i32, i32* %startx.addr, align 4
  %37 = load i32, i32* %starty.addr, align 4
  %38 = load i32, i32* %pw.addr, align 4
  %39 = load i32, i32* %ph.addr, align 4
  %40 = load double, double* %cx1, align 8
  %41 = load double, double* %cy1, align 8
  %42 = load double, double* %cx2, align 8
  %43 = load double, double* %cy2, align 8
  %44 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %44 to i64
  %arrayidx45 = getelementptr inbounds [16 x %struct._GimpVector3], [16 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom44
  %45 = load i32, i32* %i, align 4
  %add46 = add nsw i32 %45, 1
  %idxprom47 = sext i32 %add46 to i64
  %arrayidx48 = getelementptr inbounds [16 x %struct._GimpVector3], [16 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom47
  call void @draw_line(%struct._cairo* %35, i32 %36, i32 %37, i32 %38, i32 %39, double %40, double %41, double %42, double %43, %struct._GimpVector3* byval align 8 %arrayidx45, %struct._GimpVector3* byval align 8 %arrayidx48)
  %46 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %47 = load i32, i32* %startx.addr, align 4
  %48 = load i32, i32* %starty.addr, align 4
  %49 = load i32, i32* %pw.addr, align 4
  %50 = load i32, i32* %ph.addr, align 4
  %51 = load double, double* %cx1, align 8
  %52 = load double, double* %cy1, align 8
  %53 = load double, double* %cx2, align 8
  %54 = load double, double* %cy2, align 8
  %55 = load i32, i32* %i, align 4
  %add49 = add nsw i32 %55, 8
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds [16 x %struct._GimpVector3], [16 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom50
  %56 = load i32, i32* %i, align 4
  %add52 = add nsw i32 %56, 9
  %idxprom53 = sext i32 %add52 to i64
  %arrayidx54 = getelementptr inbounds [16 x %struct._GimpVector3], [16 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom53
  call void @draw_line(%struct._cairo* %46, i32 %47, i32 %48, i32 %49, i32 %50, double %51, double %52, double %53, double %54, %struct._GimpVector3* byval align 8 %arrayidx51, %struct._GimpVector3* byval align 8 %arrayidx54)
  %57 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %58 = load i32, i32* %startx.addr, align 4
  %59 = load i32, i32* %starty.addr, align 4
  %60 = load i32, i32* %pw.addr, align 4
  %61 = load i32, i32* %ph.addr, align 4
  %62 = load double, double* %cx1, align 8
  %63 = load double, double* %cy1, align 8
  %64 = load double, double* %cx2, align 8
  %65 = load double, double* %cy2, align 8
  %66 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %66 to i64
  %arrayidx56 = getelementptr inbounds [16 x %struct._GimpVector3], [16 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom55
  %67 = load i32, i32* %i, align 4
  %add57 = add nsw i32 %67, 8
  %idxprom58 = sext i32 %add57 to i64
  %arrayidx59 = getelementptr inbounds [16 x %struct._GimpVector3], [16 x %struct._GimpVector3]* %p, i32 0, i64 %idxprom58
  call void @draw_line(%struct._cairo* %57, i32 %58, i32 %59, i32 %60, i32 %61, double %62, double %63, double %64, double %65, %struct._GimpVector3* byval align 8 %arrayidx56, %struct._GimpVector3* byval align 8 %arrayidx59)
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.body.43
  %68 = load i32, i32* %i, align 4
  %inc61 = add nsw i32 %68, 1
  store i32 %inc61, i32* %i, align 4
  br label %for.cond.40

for.end.62:                                       ; preds = %for.cond.40
  %69 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %70 = load i32, i32* %startx.addr, align 4
  %71 = load i32, i32* %starty.addr, align 4
  %72 = load i32, i32* %pw.addr, align 4
  %73 = load i32, i32* %ph.addr, align 4
  %74 = load double, double* %cx1, align 8
  %75 = load double, double* %cy1, align 8
  %76 = load double, double* %cx2, align 8
  %77 = load double, double* %cy2, align 8
  %arrayidx63 = getelementptr inbounds [16 x %struct._GimpVector3], [16 x %struct._GimpVector3]* %p, i32 0, i64 7
  %arrayidx64 = getelementptr inbounds [16 x %struct._GimpVector3], [16 x %struct._GimpVector3]* %p, i32 0, i64 0
  call void @draw_line(%struct._cairo* %69, i32 %70, i32 %71, i32 %72, i32 %73, double %74, double %75, double %76, double %77, %struct._GimpVector3* byval align 8 %arrayidx63, %struct._GimpVector3* byval align 8 %arrayidx64)
  %78 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %79 = load i32, i32* %startx.addr, align 4
  %80 = load i32, i32* %starty.addr, align 4
  %81 = load i32, i32* %pw.addr, align 4
  %82 = load i32, i32* %ph.addr, align 4
  %83 = load double, double* %cx1, align 8
  %84 = load double, double* %cy1, align 8
  %85 = load double, double* %cx2, align 8
  %86 = load double, double* %cy2, align 8
  %arrayidx65 = getelementptr inbounds [16 x %struct._GimpVector3], [16 x %struct._GimpVector3]* %p, i32 0, i64 15
  %arrayidx66 = getelementptr inbounds [16 x %struct._GimpVector3], [16 x %struct._GimpVector3]* %p, i32 0, i64 8
  call void @draw_line(%struct._cairo* %78, i32 %79, i32 %80, i32 %81, i32 %82, double %83, double %84, double %85, double %86, %struct._GimpVector3* byval align 8 %arrayidx65, %struct._GimpVector3* byval align 8 %arrayidx66)
  %87 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_line_width(%struct._cairo* %87, double 3.000000e+00)
  %88 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke_preserve(%struct._cairo* %88)
  %89 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_line_width(%struct._cairo* %89, double 1.000000e+00)
  %90 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_source_rgb(%struct._cairo* %90, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  %91 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke(%struct._cairo* %91)
  ret void
}

declare void @gimp_vector3_rotate(%struct._GimpVector3*, double, double, double) #2

declare void @gimp_vector3_normalize(%struct._GimpVector3*) #2

declare void @gimp_vector3_mul(%struct._GimpVector3*, double) #2

declare void @gimp_vector3_add(%struct._GimpVector3*, %struct._GimpVector3*, %struct._GimpVector3*) #2

declare void @gimp_vector3_sub(%struct._GimpVector3*, %struct._GimpVector3*, %struct._GimpVector3*) #2

declare void @cairo_move_to(%struct._cairo*, double, double) #2

declare void @cairo_line_to(%struct._cairo*, double, double) #2

declare void @cairo_stroke_preserve(%struct._cairo*) #2

declare void @cairo_stroke(%struct._cairo*) #2

; Function Attrs: nounwind
declare double @cos(double) #1

; Function Attrs: nounwind
declare double @sin(double) #1

declare void @vecmulmat(%struct._GimpVector3*, %struct._GimpVector3*, float*) #2

; Function Attrs: nounwind uwtable
define internal void @draw_line(%struct._cairo* %cr, i32 %startx, i32 %starty, i32 %pw, i32 %ph, double %cx1, double %cy1, double %cx2, double %cy2, %struct._GimpVector3* byval align 8 %a, %struct._GimpVector3* byval align 8 %b) #0 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %startx.addr = alloca i32, align 4
  %starty.addr = alloca i32, align 4
  %pw.addr = alloca i32, align 4
  %ph.addr = alloca i32, align 4
  %cx1.addr = alloca double, align 8
  %cy1.addr = alloca double, align 8
  %cx2.addr = alloca double, align 8
  %cy2.addr = alloca double, align 8
  %x1 = alloca double, align 8
  %y1 = alloca double, align 8
  %x2 = alloca double, align 8
  %y2 = alloca double, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store i32 %startx, i32* %startx.addr, align 4
  store i32 %starty, i32* %starty.addr, align 4
  store i32 %pw, i32* %pw.addr, align 4
  store i32 %ph, i32* %ph.addr, align 4
  store double %cx1, double* %cx1.addr, align 8
  store double %cy1, double* %cy1.addr, align 8
  store double %cx2, double* %cx2.addr, align 8
  store double %cy2, double* %cy2.addr, align 8
  %0 = load i32, i32* %startx.addr, align 4
  %1 = load i32, i32* %starty.addr, align 4
  %2 = load i32, i32* %pw.addr, align 4
  %3 = load i32, i32* %ph.addr, align 4
  call void @gimp_vector_3d_to_2d(i32 %0, i32 %1, i32 %2, i32 %3, double* %x1, double* %y1, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 0), %struct._GimpVector3* %a)
  %4 = load i32, i32* %startx.addr, align 4
  %5 = load i32, i32* %starty.addr, align 4
  %6 = load i32, i32* %pw.addr, align 4
  %7 = load i32, i32* %ph.addr, align 4
  call void @gimp_vector_3d_to_2d(i32 %4, i32 %5, i32 %6, i32 %7, double* %x2, double* %y2, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 0), %struct._GimpVector3* %b)
  %8 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %9 = load double, double* %x1, align 8
  %call = call double @rint(double %9) #5
  %add = fadd double %call, 5.000000e-01
  %10 = load double, double* %y1, align 8
  %call1 = call double @rint(double %10) #5
  %add2 = fadd double %call1, 5.000000e-01
  call void @cairo_move_to(%struct._cairo* %8, double %add, double %add2)
  %11 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %12 = load double, double* %x2, align 8
  %call3 = call double @rint(double %12) #5
  %add4 = fadd double %call3, 5.000000e-01
  %13 = load double, double* %y2, align 8
  %call5 = call double @rint(double %13) #5
  %add6 = fadd double %call5, 5.000000e-01
  call void @cairo_line_to(%struct._cairo* %11, double %add4, double %add6)
  ret void
}

declare void @rotatemat(float, %struct._GimpVector3*, float*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
