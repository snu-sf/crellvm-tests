; ModuleID = './libgimp/gimplayer.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GdkPixbuf = type opaque
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._cairo_surface = type opaque

@.str = private unnamed_addr constant [8 x i8] c"LibGimp\00", align 1
@__func__.gimp_layer_new_from_pixbuf = private unnamed_addr constant [27 x i8] c"gimp_layer_new_from_pixbuf\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"GDK_IS_PIXBUF (pixbuf)\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"gimp_layer_new_from_pixbuf() needs an RGB image\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"gimp_layer_new_from_pixbuf() assumes that GdkPixbuf is RGB\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"gimplayer.c\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"bpp == rgn.bpp\00", align 1
@__func__.gimp_layer_new_from_surface = private unnamed_addr constant [28 x i8] c"gimp_layer_new_from_surface\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"surface != NULL\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"cairo_surface_get_type (surface) == CAIRO_SURFACE_TYPE_IMAGE\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"gimp_layer_new_from_surface() needs an RGB image\00", align 1
@.str.9 = private unnamed_addr constant [58 x i8] c"gimp_layer_new_from_surface() assumes that surface is RGB\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_layer_new(i32 %image_ID, i8* %name, i32 %width, i32 %height, i32 %type, double %opacity, i32 %mode) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %opacity.addr = alloca double, align 8
  %mode.addr = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  store double %opacity, double* %opacity.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %width.addr, align 4
  %2 = load i32, i32* %height.addr, align 4
  %3 = load i32, i32* %type.addr, align 4
  %4 = load i8*, i8** %name.addr, align 8
  %5 = load double, double* %opacity.addr, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %call = call i32 @_gimp_layer_new(i32 %0, i32 %1, i32 %2, i32 %3, i8* %4, double %5, i32 %6)
  ret i32 %call
}

declare hidden i32 @_gimp_layer_new(i32, i32, i32, i32, i8*, double, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_layer_copy(i32 %layer_ID) #0 {
entry:
  %layer_ID.addr = alloca i32, align 4
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  %0 = load i32, i32* %layer_ID.addr, align 4
  %call = call i32 @_gimp_layer_copy(i32 %0, i32 0)
  ret i32 %call
}

declare hidden i32 @_gimp_layer_copy(i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_layer_new_from_pixbuf(i32 %image_ID, i8* %name, %struct._GdkPixbuf* %pixbuf, double %opacity, i32 %mode, double %progress_start, double %progress_end) #0 {
entry:
  %retval = alloca i32, align 4
  %image_ID.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %pixbuf.addr = alloca %struct._GdkPixbuf*, align 8
  %opacity.addr = alloca double, align 8
  %mode.addr = alloca i32, align 4
  %progress_start.addr = alloca double, align 8
  %progress_end.addr = alloca double, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %rgn = alloca %struct._GimpPixelRgn, align 8
  %pixels = alloca i8*, align 8
  %pr = alloca i8*, align 8
  %layer = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %bpp = alloca i32, align 4
  %range = alloca double, align 8
  %count = alloca i32, align 4
  %done = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %y45 = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store %struct._GdkPixbuf* %pixbuf, %struct._GdkPixbuf** %pixbuf.addr, align 8
  store double %opacity, double* %opacity.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store double %progress_start, double* %progress_start.addr, align 8
  store double %progress_end, double* %progress_end.addr, align 8
  %0 = load double, double* %progress_end.addr, align 8
  %1 = load double, double* %progress_start.addr, align 8
  %sub = fsub double %0, %1
  store double %sub, double* %range, align 8
  store i32 0, i32* %count, align 4
  store i32 0, i32* %done, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %3 = bitcast %struct._GdkPixbuf* %2 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %3, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gdk_pixbuf_get_type() #6
  store i64 %call, i64* %__t, align 8
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %4, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
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
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_layer_new_from_pixbuf, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %15 = load i32, i32* %image_ID.addr, align 4
  %call11 = call i32 @gimp_image_base_type(i32 %15)
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.end
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %do.end
  %16 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call15 = call i32 @gdk_pixbuf_get_colorspace(%struct._GdkPixbuf* %16)
  %cmp16 = icmp ne i32 %call15, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.14
  %17 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call19 = call i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf* %17)
  store i32 %call19, i32* %width, align 4
  %18 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call20 = call i32 @gdk_pixbuf_get_height(%struct._GdkPixbuf* %18)
  store i32 %call20, i32* %height, align 4
  %19 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call21 = call i32 @gdk_pixbuf_get_n_channels(%struct._GdkPixbuf* %19)
  store i32 %call21, i32* %bpp, align 4
  %20 = load i32, i32* %image_ID.addr, align 4
  %21 = load i8*, i8** %name.addr, align 8
  %22 = load i32, i32* %width, align 4
  %23 = load i32, i32* %height, align 4
  %24 = load i32, i32* %bpp, align 4
  %cmp22 = icmp eq i32 %24, 3
  %cond = select i1 %cmp22, i32 0, i32 1
  %25 = load double, double* %opacity.addr, align 8
  %26 = load i32, i32* %mode.addr, align 4
  %call23 = call i32 @gimp_layer_new(i32 %20, i8* %21, i32 %22, i32 %23, i32 %cond, double %25, i32 %26)
  store i32 %call23, i32* %layer, align 4
  %27 = load i32, i32* %layer, align 4
  %cmp24 = icmp eq i32 %27, -1
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.18
  store i32 -1, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.18
  %28 = load i32, i32* %layer, align 4
  %call27 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %28)
  store %struct._GimpDrawable* %call27, %struct._GimpDrawable** %drawable, align 8
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %30 = load i32, i32* %width, align 4
  %31 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %rgn, %struct._GimpDrawable* %29, i32 0, i32 0, i32 %30, i32 %31, i32 1, i32 0)
  br label %do.body.28

do.body.28:                                       ; preds = %if.end.26
  %32 = load i32, i32* %bpp, align 4
  %bpp29 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %rgn, i32 0, i32 2
  %33 = load i32, i32* %bpp29, align 4
  %cmp30 = icmp eq i32 %32, %33
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body.28
  br label %if.end.33

if.else.32:                                       ; preds = %do.body.28
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i32 163, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_layer_new_from_pixbuf, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0)) #8
  unreachable

if.end.33:                                        ; preds = %if.then.31
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  %34 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call35 = call i32 @gdk_pixbuf_get_rowstride(%struct._GdkPixbuf* %34)
  store i32 %call35, i32* %rowstride, align 4
  %35 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call36 = call i8* @gdk_pixbuf_get_pixels(%struct._GdkPixbuf* %35)
  store i8* %call36, i8** %pixels, align 8
  %call37 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 1, %struct._GimpPixelRgn* %rgn)
  store i8* %call37, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.74, %do.end.34
  %36 = load i8*, i8** %pr, align 8
  %cmp38 = icmp ne i8* %36, null
  br i1 %cmp38, label %for.body, label %for.end.76

for.body:                                         ; preds = %for.cond
  %37 = load i8*, i8** %pixels, align 8
  %y = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %rgn, i32 0, i32 5
  %38 = load i32, i32* %y, align 4
  %39 = load i32, i32* %rowstride, align 4
  %mul = mul nsw i32 %38, %39
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 %idx.ext
  %x = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %rgn, i32 0, i32 4
  %40 = load i32, i32* %x, align 4
  %41 = load i32, i32* %bpp, align 4
  %mul40 = mul nsw i32 %40, %41
  %idx.ext41 = sext i32 %mul40 to i64
  %add.ptr42 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext41
  store i8* %add.ptr42, i8** %src, align 8
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %rgn, i32 0, i32 0
  %42 = load i8*, i8** %data, align 8
  store i8* %42, i8** %dest, align 8
  store i32 0, i32* %y45, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc, %for.body
  %43 = load i32, i32* %y45, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %rgn, i32 0, i32 7
  %44 = load i32, i32* %h, align 4
  %cmp47 = icmp slt i32 %43, %44
  br i1 %cmp47, label %for.body.48, label %for.end

for.body.48:                                      ; preds = %for.cond.46
  %45 = load i8*, i8** %dest, align 8
  %46 = load i8*, i8** %src, align 8
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %rgn, i32 0, i32 6
  %47 = load i32, i32* %w, align 4
  %bpp49 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %rgn, i32 0, i32 2
  %48 = load i32, i32* %bpp49, align 4
  %mul50 = mul nsw i32 %47, %48
  %conv = sext i32 %mul50 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 %conv, i32 1, i1 false)
  %49 = load i32, i32* %rowstride, align 4
  %50 = load i8*, i8** %src, align 8
  %idx.ext51 = sext i32 %49 to i64
  %add.ptr52 = getelementptr inbounds i8, i8* %50, i64 %idx.ext51
  store i8* %add.ptr52, i8** %src, align 8
  %rowstride53 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %rgn, i32 0, i32 3
  %51 = load i32, i32* %rowstride53, align 4
  %52 = load i8*, i8** %dest, align 8
  %idx.ext54 = sext i32 %51 to i64
  %add.ptr55 = getelementptr inbounds i8, i8* %52, i64 %idx.ext54
  store i8* %add.ptr55, i8** %dest, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.48
  %53 = load i32, i32* %y45, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %y45, align 4
  br label %for.cond.46

for.end:                                          ; preds = %for.cond.46
  %54 = load double, double* %range, align 8
  %cmp56 = fcmp ogt double %54, 0.000000e+00
  br i1 %cmp56, label %if.then.58, label %if.end.73

if.then.58:                                       ; preds = %for.end
  %h59 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %rgn, i32 0, i32 7
  %55 = load i32, i32* %h59, align 4
  %w60 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %rgn, i32 0, i32 6
  %56 = load i32, i32* %w60, align 4
  %mul61 = mul nsw i32 %55, %56
  %57 = load i32, i32* %done, align 4
  %add = add i32 %57, %mul61
  store i32 %add, i32* %done, align 4
  %58 = load i32, i32* %count, align 4
  %inc62 = add i32 %58, 1
  store i32 %inc62, i32* %count, align 4
  %rem = urem i32 %58, 32
  %cmp63 = icmp eq i32 %rem, 0
  br i1 %cmp63, label %if.then.65, label %if.end.72

if.then.65:                                       ; preds = %if.then.58
  %59 = load double, double* %progress_start.addr, align 8
  %60 = load i32, i32* %done, align 4
  %conv66 = uitofp i32 %60 to double
  %61 = load i32, i32* %width, align 4
  %62 = load i32, i32* %height, align 4
  %mul67 = mul nsw i32 %61, %62
  %conv68 = sitofp i32 %mul67 to double
  %div = fdiv double %conv66, %conv68
  %63 = load double, double* %range, align 8
  %mul69 = fmul double %div, %63
  %add70 = fadd double %59, %mul69
  %call71 = call i32 @gimp_progress_update(double %add70)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.65, %if.then.58
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %for.end
  br label %for.inc.74

for.inc.74:                                       ; preds = %if.end.73
  %64 = load i8*, i8** %pr, align 8
  %call75 = call i8* @gimp_pixel_rgns_process(i8* %64)
  store i8* %call75, i8** %pr, align 8
  br label %for.cond

for.end.76:                                       ; preds = %for.cond
  %65 = load double, double* %range, align 8
  %cmp77 = fcmp ogt double %65, 0.000000e+00
  br i1 %cmp77, label %if.then.79, label %if.end.81

if.then.79:                                       ; preds = %for.end.76
  %66 = load double, double* %progress_end.addr, align 8
  %call80 = call i32 @gimp_progress_update(double %66)
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.79, %for.end.76
  %67 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %67)
  %68 = load i32, i32* %layer, align 4
  store i32 %68, i32* %retval
  br label %return

return:                                           ; preds = %if.end.81, %if.then.25, %if.then.17, %if.then.13, %if.else.9
  %69 = load i32, i32* %retval
  ret i32 %69
}

; Function Attrs: nounwind readnone
declare i64 @gdk_pixbuf_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i32 @gimp_image_base_type(i32) #1

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
  call void @g_logv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i32 @gdk_pixbuf_get_colorspace(%struct._GdkPixbuf*) #1

declare i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf*) #1

declare i32 @gdk_pixbuf_get_height(%struct._GdkPixbuf*) #1

declare i32 @gdk_pixbuf_get_n_channels(%struct._GdkPixbuf*) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #4

declare i32 @gdk_pixbuf_get_rowstride(%struct._GdkPixbuf*) #1

declare i8* @gdk_pixbuf_get_pixels(%struct._GdkPixbuf*) #1

declare i8* @gimp_pixel_rgns_register(i32, ...) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare i32 @gimp_progress_update(double) #1

declare i8* @gimp_pixel_rgns_process(i8*) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_layer_new_from_surface(i32 %image_ID, i8* %name, %struct._cairo_surface* %surface, double %progress_start, double %progress_end) #0 {
entry:
  %retval = alloca i32, align 4
  %image_ID.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %surface.addr = alloca %struct._cairo_surface*, align 8
  %progress_start.addr = alloca double, align 8
  %progress_end.addr = alloca double, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %rgn = alloca %struct._GimpPixelRgn, align 8
  %pixels = alloca i8*, align 8
  %pr = alloca i8*, align 8
  %layer = alloca i32, align 4
  %format = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %range = alloca double, align 8
  %count = alloca i32, align 4
  %done = alloca i32, align 4
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %y31 = alloca i32, align 4
  %s = alloca i8*, align 8
  %d = alloca i8*, align 8
  %w = alloca i32, align 4
  %s55 = alloca i8*, align 8
  %d56 = alloca i8*, align 8
  %w57 = alloca i32, align 4
  %tb = alloca i32, align 4
  %tg = alloca i32, align 4
  %tr = alloca i32, align 4
  %ta = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store %struct._cairo_surface* %surface, %struct._cairo_surface** %surface.addr, align 8
  store double %progress_start, double* %progress_start.addr, align 8
  store double %progress_end, double* %progress_end.addr, align 8
  %0 = load double, double* %progress_end.addr, align 8
  %1 = load double, double* %progress_start.addr, align 8
  %sub = fsub double %0, %1
  store double %sub, double* %range, align 8
  store i32 0, i32* %count, align 4
  store i32 0, i32* %done, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct._cairo_surface*, %struct._cairo_surface** %surface.addr, align 8
  %cmp = icmp ne %struct._cairo_surface* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_layer_new_from_surface, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %3 = load %struct._cairo_surface*, %struct._cairo_surface** %surface.addr, align 8
  %call = call i32 @cairo_surface_get_type(%struct._cairo_surface* %3)
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_layer_new_from_surface, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %4 = load i32, i32* %image_ID.addr, align 4
  %call7 = call i32 @gimp_image_base_type(i32 %4)
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %do.end.6
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %do.end.6
  %5 = load %struct._cairo_surface*, %struct._cairo_surface** %surface.addr, align 8
  %call11 = call i32 @cairo_image_surface_get_width(%struct._cairo_surface* %5)
  store i32 %call11, i32* %width, align 4
  %6 = load %struct._cairo_surface*, %struct._cairo_surface** %surface.addr, align 8
  %call12 = call i32 @cairo_image_surface_get_height(%struct._cairo_surface* %6)
  store i32 %call12, i32* %height, align 4
  %7 = load %struct._cairo_surface*, %struct._cairo_surface** %surface.addr, align 8
  %call13 = call i32 @cairo_image_surface_get_format(%struct._cairo_surface* %7)
  store i32 %call13, i32* %format, align 4
  %8 = load i32, i32* %format, align 4
  %cmp14 = icmp ne i32 %8, 0
  br i1 %cmp14, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %if.end.10
  %9 = load i32, i32* %format, align 4
  %cmp15 = icmp ne i32 %9, 1
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %land.lhs.true
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.9, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %land.lhs.true, %if.end.10
  %10 = load i32, i32* %image_ID.addr, align 4
  %11 = load i8*, i8** %name.addr, align 8
  %12 = load i32, i32* %width, align 4
  %13 = load i32, i32* %height, align 4
  %14 = load i32, i32* %format, align 4
  %cmp18 = icmp eq i32 %14, 1
  %cond = select i1 %cmp18, i32 0, i32 1
  %call19 = call i32 @gimp_layer_new(i32 %10, i8* %11, i32 %12, i32 %13, i32 %cond, double 1.000000e+02, i32 0)
  store i32 %call19, i32* %layer, align 4
  %15 = load i32, i32* %layer, align 4
  %cmp20 = icmp eq i32 %15, -1
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.17
  store i32 -1, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.17
  %16 = load i32, i32* %layer, align 4
  %call23 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %16)
  store %struct._GimpDrawable* %call23, %struct._GimpDrawable** %drawable, align 8
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %18 = load i32, i32* %width, align 4
  %19 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %rgn, %struct._GimpDrawable* %17, i32 0, i32 0, i32 %18, i32 %19, i32 1, i32 0)
  %20 = load %struct._cairo_surface*, %struct._cairo_surface** %surface.addr, align 8
  %call24 = call i32 @cairo_image_surface_get_stride(%struct._cairo_surface* %20)
  store i32 %call24, i32* %rowstride, align 4
  %21 = load %struct._cairo_surface*, %struct._cairo_surface** %surface.addr, align 8
  %call25 = call i8* @cairo_image_surface_get_data(%struct._cairo_surface* %21)
  store i8* %call25, i8** %pixels, align 8
  %call26 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 1, %struct._GimpPixelRgn* %rgn)
  store i8* %call26, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.117, %if.end.22
  %22 = load i8*, i8** %pr, align 8
  %cmp27 = icmp ne i8* %22, null
  br i1 %cmp27, label %for.body, label %for.end.119

for.body:                                         ; preds = %for.cond
  %23 = load i8*, i8** %pixels, align 8
  %y = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %rgn, i32 0, i32 5
  %24 = load i32, i32* %y, align 4
  %25 = load i32, i32* %rowstride, align 4
  %mul = mul nsw i32 %24, %25
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 %idx.ext
  %x = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %rgn, i32 0, i32 4
  %26 = load i32, i32* %x, align 4
  %mul28 = mul nsw i32 %26, 4
  %idx.ext29 = sext i32 %mul28 to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext29
  store i8* %add.ptr30, i8** %src, align 8
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %rgn, i32 0, i32 0
  %27 = load i8*, i8** %data, align 8
  store i8* %27, i8** %dest, align 8
  %28 = load i32, i32* %format, align 4
  switch i32 %28, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.50
  ]

sw.bb:                                            ; preds = %for.body
  store i32 0, i32* %y31, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc, %sw.bb
  %29 = load i32, i32* %y31, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %rgn, i32 0, i32 7
  %30 = load i32, i32* %h, align 4
  %cmp33 = icmp slt i32 %29, %30
  br i1 %cmp33, label %for.body.34, label %for.end

for.body.34:                                      ; preds = %for.cond.32
  %31 = load i8*, i8** %src, align 8
  store i8* %31, i8** %s, align 8
  %32 = load i8*, i8** %dest, align 8
  store i8* %32, i8** %d, align 8
  %w35 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %rgn, i32 0, i32 6
  %33 = load i32, i32* %w35, align 4
  store i32 %33, i32* %w, align 4
  br label %while.cond

while.cond:                                       ; preds = %do.end.42, %for.body.34
  %34 = load i32, i32* %w, align 4
  %dec = add nsw i32 %34, -1
  store i32 %dec, i32* %w, align 4
  %tobool = icmp ne i32 %34, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body.36

do.body.36:                                       ; preds = %while.body
  %35 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %35, i64 0
  %36 = load i8, i8* %arrayidx, align 1
  %37 = load i8*, i8** %d, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %37, i64 2
  store i8 %36, i8* %arrayidx37, align 1
  %38 = load i8*, i8** %s, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %38, i64 1
  %39 = load i8, i8* %arrayidx38, align 1
  %40 = load i8*, i8** %d, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %40, i64 1
  store i8 %39, i8* %arrayidx39, align 1
  %41 = load i8*, i8** %s, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %41, i64 2
  %42 = load i8, i8* %arrayidx40, align 1
  %43 = load i8*, i8** %d, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %43, i64 0
  store i8 %42, i8* %arrayidx41, align 1
  br label %do.end.42

do.end.42:                                        ; preds = %do.body.36
  %44 = load i8*, i8** %s, align 8
  %add.ptr43 = getelementptr inbounds i8, i8* %44, i64 4
  store i8* %add.ptr43, i8** %s, align 8
  %45 = load i8*, i8** %d, align 8
  %add.ptr44 = getelementptr inbounds i8, i8* %45, i64 3
  store i8* %add.ptr44, i8** %d, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %46 = load i32, i32* %rowstride, align 4
  %47 = load i8*, i8** %src, align 8
  %idx.ext45 = sext i32 %46 to i64
  %add.ptr46 = getelementptr inbounds i8, i8* %47, i64 %idx.ext45
  store i8* %add.ptr46, i8** %src, align 8
  %rowstride47 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %rgn, i32 0, i32 3
  %48 = load i32, i32* %rowstride47, align 4
  %49 = load i8*, i8** %dest, align 8
  %idx.ext48 = sext i32 %48 to i64
  %add.ptr49 = getelementptr inbounds i8, i8* %49, i64 %idx.ext48
  store i8* %add.ptr49, i8** %dest, align 8
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %50 = load i32, i32* %y31, align 4
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %y31, align 4
  br label %for.cond.32

for.end:                                          ; preds = %for.cond.32
  br label %sw.epilog

sw.bb.50:                                         ; preds = %for.body
  store i32 0, i32* %y31, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.94, %sw.bb.50
  %51 = load i32, i32* %y31, align 4
  %h52 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %rgn, i32 0, i32 7
  %52 = load i32, i32* %h52, align 4
  %cmp53 = icmp slt i32 %51, %52
  br i1 %cmp53, label %for.body.54, label %for.end.96

for.body.54:                                      ; preds = %for.cond.51
  %53 = load i8*, i8** %src, align 8
  store i8* %53, i8** %s55, align 8
  %54 = load i8*, i8** %dest, align 8
  store i8* %54, i8** %d56, align 8
  %w58 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %rgn, i32 0, i32 6
  %55 = load i32, i32* %w58, align 4
  store i32 %55, i32* %w57, align 4
  br label %while.cond.59

while.cond.59:                                    ; preds = %do.end.85, %for.body.54
  %56 = load i32, i32* %w57, align 4
  %dec60 = add nsw i32 %56, -1
  store i32 %dec60, i32* %w57, align 4
  %tobool61 = icmp ne i32 %56, 0
  br i1 %tobool61, label %while.body.62, label %while.end.88

while.body.62:                                    ; preds = %while.cond.59
  br label %do.body.63

do.body.63:                                       ; preds = %while.body.62
  %57 = load i8*, i8** %s55, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %57, i64 0
  %58 = load i8, i8* %arrayidx64, align 1
  %conv = zext i8 %58 to i32
  store i32 %conv, i32* %tb, align 4
  %59 = load i8*, i8** %s55, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %59, i64 1
  %60 = load i8, i8* %arrayidx65, align 1
  %conv66 = zext i8 %60 to i32
  store i32 %conv66, i32* %tg, align 4
  %61 = load i8*, i8** %s55, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %61, i64 2
  %62 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %62 to i32
  store i32 %conv68, i32* %tr, align 4
  %63 = load i8*, i8** %s55, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %63, i64 3
  %64 = load i8, i8* %arrayidx69, align 1
  %conv70 = zext i8 %64 to i32
  store i32 %conv70, i32* %ta, align 4
  %65 = load i32, i32* %tr, align 4
  %shl = shl i32 %65, 8
  %66 = load i32, i32* %ta, align 4
  %add = add i32 %66, 1
  %div = udiv i32 %shl, %add
  %conv71 = trunc i32 %div to i8
  %67 = load i8*, i8** %d56, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %67, i64 0
  store i8 %conv71, i8* %arrayidx72, align 1
  %68 = load i32, i32* %tg, align 4
  %shl73 = shl i32 %68, 8
  %69 = load i32, i32* %ta, align 4
  %add74 = add i32 %69, 1
  %div75 = udiv i32 %shl73, %add74
  %conv76 = trunc i32 %div75 to i8
  %70 = load i8*, i8** %d56, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %70, i64 1
  store i8 %conv76, i8* %arrayidx77, align 1
  %71 = load i32, i32* %tb, align 4
  %shl78 = shl i32 %71, 8
  %72 = load i32, i32* %ta, align 4
  %add79 = add i32 %72, 1
  %div80 = udiv i32 %shl78, %add79
  %conv81 = trunc i32 %div80 to i8
  %73 = load i8*, i8** %d56, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %73, i64 2
  store i8 %conv81, i8* %arrayidx82, align 1
  %74 = load i32, i32* %ta, align 4
  %conv83 = trunc i32 %74 to i8
  %75 = load i8*, i8** %d56, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %75, i64 3
  store i8 %conv83, i8* %arrayidx84, align 1
  br label %do.end.85

do.end.85:                                        ; preds = %do.body.63
  %76 = load i8*, i8** %s55, align 8
  %add.ptr86 = getelementptr inbounds i8, i8* %76, i64 4
  store i8* %add.ptr86, i8** %s55, align 8
  %77 = load i8*, i8** %d56, align 8
  %add.ptr87 = getelementptr inbounds i8, i8* %77, i64 4
  store i8* %add.ptr87, i8** %d56, align 8
  br label %while.cond.59

while.end.88:                                     ; preds = %while.cond.59
  %78 = load i32, i32* %rowstride, align 4
  %79 = load i8*, i8** %src, align 8
  %idx.ext89 = sext i32 %78 to i64
  %add.ptr90 = getelementptr inbounds i8, i8* %79, i64 %idx.ext89
  store i8* %add.ptr90, i8** %src, align 8
  %rowstride91 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %rgn, i32 0, i32 3
  %80 = load i32, i32* %rowstride91, align 4
  %81 = load i8*, i8** %dest, align 8
  %idx.ext92 = sext i32 %80 to i64
  %add.ptr93 = getelementptr inbounds i8, i8* %81, i64 %idx.ext92
  store i8* %add.ptr93, i8** %dest, align 8
  br label %for.inc.94

for.inc.94:                                       ; preds = %while.end.88
  %82 = load i32, i32* %y31, align 4
  %inc95 = add nsw i32 %82, 1
  store i32 %inc95, i32* %y31, align 4
  br label %for.cond.51

for.end.96:                                       ; preds = %for.cond.51
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end.96, %for.end
  %83 = load double, double* %range, align 8
  %cmp97 = fcmp ogt double %83, 0.000000e+00
  br i1 %cmp97, label %if.then.99, label %if.end.116

if.then.99:                                       ; preds = %sw.epilog
  %h100 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %rgn, i32 0, i32 7
  %84 = load i32, i32* %h100, align 4
  %w101 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %rgn, i32 0, i32 6
  %85 = load i32, i32* %w101, align 4
  %mul102 = mul nsw i32 %84, %85
  %86 = load i32, i32* %done, align 4
  %add103 = add i32 %86, %mul102
  store i32 %add103, i32* %done, align 4
  %87 = load i32, i32* %count, align 4
  %inc104 = add i32 %87, 1
  store i32 %inc104, i32* %count, align 4
  %rem = urem i32 %87, 32
  %cmp105 = icmp eq i32 %rem, 0
  br i1 %cmp105, label %if.then.107, label %if.end.115

if.then.107:                                      ; preds = %if.then.99
  %88 = load double, double* %progress_start.addr, align 8
  %89 = load i32, i32* %done, align 4
  %conv108 = uitofp i32 %89 to double
  %90 = load i32, i32* %width, align 4
  %91 = load i32, i32* %height, align 4
  %mul109 = mul nsw i32 %90, %91
  %conv110 = sitofp i32 %mul109 to double
  %div111 = fdiv double %conv108, %conv110
  %92 = load double, double* %range, align 8
  %mul112 = fmul double %div111, %92
  %add113 = fadd double %88, %mul112
  %call114 = call i32 @gimp_progress_update(double %add113)
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.107, %if.then.99
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %sw.epilog
  br label %for.inc.117

for.inc.117:                                      ; preds = %if.end.116
  %93 = load i8*, i8** %pr, align 8
  %call118 = call i8* @gimp_pixel_rgns_process(i8* %93)
  store i8* %call118, i8** %pr, align 8
  br label %for.cond

for.end.119:                                      ; preds = %for.cond
  %94 = load double, double* %range, align 8
  %cmp120 = fcmp ogt double %94, 0.000000e+00
  br i1 %cmp120, label %if.then.122, label %if.end.124

if.then.122:                                      ; preds = %for.end.119
  %95 = load double, double* %progress_end.addr, align 8
  %call123 = call i32 @gimp_progress_update(double %95)
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.122, %for.end.119
  %96 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %96)
  %97 = load i32, i32* %layer, align 4
  store i32 %97, i32* %retval
  br label %return

return:                                           ; preds = %if.end.124, %if.then.21, %if.then.16, %if.then.9, %if.else.4, %if.else
  %98 = load i32, i32* %retval
  ret i32 %98
}

declare i32 @cairo_surface_get_type(%struct._cairo_surface*) #1

declare i32 @cairo_image_surface_get_width(%struct._cairo_surface*) #1

declare i32 @cairo_image_surface_get_height(%struct._cairo_surface*) #1

declare i32 @cairo_image_surface_get_format(%struct._cairo_surface*) #1

declare i32 @cairo_image_surface_get_stride(%struct._cairo_surface*) #1

declare i8* @cairo_image_surface_get_data(%struct._cairo_surface*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_layer_get_preserve_trans(i32 %layer_ID) #0 {
entry:
  %layer_ID.addr = alloca i32, align 4
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  %0 = load i32, i32* %layer_ID.addr, align 4
  %call = call i32 @gimp_layer_get_lock_alpha(i32 %0)
  ret i32 %call
}

declare i32 @gimp_layer_get_lock_alpha(i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_layer_set_preserve_trans(i32 %layer_ID, i32 %preserve_trans) #0 {
entry:
  %layer_ID.addr = alloca i32, align 4
  %preserve_trans.addr = alloca i32, align 4
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  store i32 %preserve_trans, i32* %preserve_trans.addr, align 4
  %0 = load i32, i32* %layer_ID.addr, align 4
  %1 = load i32, i32* %preserve_trans.addr, align 4
  %call = call i32 @gimp_layer_set_lock_alpha(i32 %0, i32 %1)
  ret i32 %call
}

declare i32 @gimp_layer_set_lock_alpha(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
