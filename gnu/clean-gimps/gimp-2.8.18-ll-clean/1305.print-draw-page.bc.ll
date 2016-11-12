; ModuleID = './plug-ins/print/print-draw-page.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkPrintContext = type opaque
%struct.PrintData = type { i32, i32, i32, double, double, i32, double, double, i32, i32, i32, %struct._GtkPrintOperation* }
%struct._GtkPrintOperation = type { %struct._GObject, %struct._GtkPrintOperationPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkPrintOperationPrivate = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._cairo = type opaque
%struct._cairo_surface = type opaque
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }

@.str = private unnamed_addr constant [62 x i8] c"Cannot handle the size (either width or height) of the image.\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Cairo error: %s\00", align 1

; Function Attrs: nounwind uwtable
define i32 @print_draw_page(%struct._GtkPrintContext* %context, %struct.PrintData* %data, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca %struct._GtkPrintContext*, align 8
  %data.addr = alloca %struct.PrintData*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %cr = alloca %struct._cairo*, align 8
  %surface = alloca %struct._cairo_surface*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %scale_x = alloca double, align 8
  %scale_y = alloca double, align 8
  store %struct._GtkPrintContext* %context, %struct._GtkPrintContext** %context.addr, align 8
  store %struct.PrintData* %data, %struct.PrintData** %data.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GtkPrintContext*, %struct._GtkPrintContext** %context.addr, align 8
  %call = call %struct._cairo* @gtk_print_context_get_cairo_context(%struct._GtkPrintContext* %0)
  store %struct._cairo* %call, %struct._cairo** %cr, align 8
  %1 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %drawable_id = getelementptr inbounds %struct.PrintData, %struct.PrintData* %1, i32 0, i32 1
  %2 = load i32, i32* %drawable_id, align 4
  %3 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call %struct._cairo_surface* @print_surface_from_drawable(i32 %2, %struct._GError** %3)
  store %struct._cairo_surface* %call1, %struct._cairo_surface** %surface, align 8
  %4 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %tobool = icmp ne %struct._cairo_surface* %4, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %call2 = call i32 @cairo_image_surface_get_width(%struct._cairo_surface* %5)
  store i32 %call2, i32* %width, align 4
  %6 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %call3 = call i32 @cairo_image_surface_get_height(%struct._cairo_surface* %6)
  store i32 %call3, i32* %height, align 4
  %7 = load %struct._GtkPrintContext*, %struct._GtkPrintContext** %context.addr, align 8
  %call4 = call double @gtk_print_context_get_dpi_x(%struct._GtkPrintContext* %7)
  %8 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %xres = getelementptr inbounds %struct.PrintData, %struct.PrintData* %8, i32 0, i32 3
  %9 = load double, double* %xres, align 8
  %div = fdiv double %call4, %9
  store double %div, double* %scale_x, align 8
  %10 = load %struct._GtkPrintContext*, %struct._GtkPrintContext** %context.addr, align 8
  %call5 = call double @gtk_print_context_get_dpi_y(%struct._GtkPrintContext* %10)
  %11 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %yres = getelementptr inbounds %struct.PrintData, %struct.PrintData* %11, i32 0, i32 4
  %12 = load double, double* %yres, align 8
  %div6 = fdiv double %call5, %12
  store double %div6, double* %scale_y, align 8
  %13 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %14 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %offset_x = getelementptr inbounds %struct.PrintData, %struct.PrintData* %14, i32 0, i32 6
  %15 = load double, double* %offset_x, align 8
  %16 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %offset_y = getelementptr inbounds %struct.PrintData, %struct.PrintData* %16, i32 0, i32 7
  %17 = load double, double* %offset_y, align 8
  call void @cairo_translate(%struct._cairo* %13, double %15, double %17)
  %18 = load %struct.PrintData*, %struct.PrintData** %data.addr, align 8
  %draw_crop_marks = getelementptr inbounds %struct.PrintData, %struct.PrintData* %18, i32 0, i32 10
  %19 = load i32, i32* %draw_crop_marks, align 4
  %tobool7 = icmp ne i32 %19, 0
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %20 = load %struct._GtkPrintContext*, %struct._GtkPrintContext** %context.addr, align 8
  %21 = load i32, i32* %width, align 4
  %conv = sitofp i32 %21 to double
  %22 = load double, double* %scale_x, align 8
  %mul = fmul double %conv, %22
  %23 = load i32, i32* %height, align 4
  %conv9 = sitofp i32 %23 to double
  %24 = load double, double* %scale_y, align 8
  %mul10 = fmul double %conv9, %24
  call void @print_draw_crop_marks(%struct._GtkPrintContext* %20, double 0.000000e+00, double 0.000000e+00, double %mul, double %mul10)
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  %25 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %26 = load double, double* %scale_x, align 8
  %27 = load double, double* %scale_y, align 8
  call void @cairo_scale(%struct._cairo* %25, double %26, double %27)
  %28 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %29 = load i32, i32* %width, align 4
  %conv11 = sitofp i32 %29 to double
  %30 = load i32, i32* %height, align 4
  %conv12 = sitofp i32 %30 to double
  call void @cairo_rectangle(%struct._cairo* %28, double 0.000000e+00, double 0.000000e+00, double %conv11, double %conv12)
  %31 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %32 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  call void @cairo_set_source_surface(%struct._cairo* %31, %struct._cairo_surface* %32, double 0.000000e+00, double 0.000000e+00)
  %33 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_fill(%struct._cairo* %33)
  %34 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  call void @cairo_surface_destroy(%struct._cairo_surface* %34)
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.end
  %35 = load i32, i32* %retval
  ret i32 %35
}

declare %struct._cairo* @gtk_print_context_get_cairo_context(%struct._GtkPrintContext*) #1

; Function Attrs: nounwind uwtable
define internal %struct._cairo_surface* @print_surface_from_drawable(i32 %drawable_ID, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._cairo_surface*, align 8
  %drawable_ID.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %region = alloca %struct._GimpPixelRgn, align 8
  %image_type = alloca i32, align 4
  %surface = alloca %struct._cairo_surface*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %cmap = alloca [768 x i8], align 16
  %pixels = alloca i8*, align 8
  %stride = alloca i32, align 4
  %count = alloca i32, align 4
  %done = alloca i32, align 4
  %pr = alloca i8*, align 8
  %status = alloca i32, align 4
  %colors = alloca i8*, align 8
  %num_colors = alloca i32, align 4
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %y25 = alloca i32, align 4
  store i32 %drawable_ID, i32* %drawable_ID.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i32, i32* %drawable_ID.addr, align 4
  %call = call %struct._GimpDrawable* @gimp_drawable_get(i32 %0)
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %drawable, align 8
  %1 = load i32, i32* %drawable_ID.addr, align 4
  %call1 = call i32 @gimp_drawable_type(i32 %1)
  store i32 %call1, i32* %image_type, align 4
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %width2 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 1
  %3 = load i32, i32* %width2, align 4
  store i32 %3, i32* %width, align 4
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %height3 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 2
  %5 = load i32, i32* %height3, align 4
  store i32 %5, i32* %height, align 4
  %6 = bitcast [768 x i8]* %cmap to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 768, i32 16, i1 false)
  store i32 0, i32* %count, align 4
  store i32 0, i32* %done, align 4
  %7 = load i32, i32* %drawable_ID.addr, align 4
  %call4 = call i32 @gimp_drawable_is_indexed(i32 %7)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %drawable_ID.addr, align 4
  %call5 = call i32 @gimp_item_get_image(i32 %8)
  %call6 = call i8* @gimp_image_get_colormap(i32 %call5, i32* %num_colors)
  store i8* %call6, i8** %colors, align 8
  %9 = bitcast [768 x i8]* %cmap to i8*
  %10 = load i8*, i8** %colors, align 8
  %11 = load i32, i32* %num_colors, align 4
  %mul = mul nsw i32 3, %11
  %conv = sext i32 %mul to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 %conv, i32 1, i1 false)
  %12 = load i8*, i8** %colors, align 8
  call void @g_free(i8* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load i32, i32* %drawable_ID.addr, align 4
  %call7 = call i32 @gimp_drawable_has_alpha(i32 %13)
  %tobool8 = icmp ne i32 %call7, 0
  %cond = select i1 %tobool8, i32 0, i32 1
  %14 = load i32, i32* %width, align 4
  %15 = load i32, i32* %height, align 4
  %call9 = call %struct._cairo_surface* @cairo_image_surface_create(i32 %cond, i32 %14, i32 %15)
  store %struct._cairo_surface* %call9, %struct._cairo_surface** %surface, align 8
  %16 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %call10 = call i32 @cairo_surface_status(%struct._cairo_surface* %16)
  store i32 %call10, i32* %status, align 4
  %17 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %17, 0
  br i1 %cmp, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.end
  %18 = load i32, i32* %status, align 4
  switch i32 %18, label %sw.default [
    i32 32, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then.12
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i32 0, i32 0)) #2
  call void @g_set_error_literal(%struct._GError** %19, i32 1, i32 0, i8* %call13)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.12
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %21 = load i32, i32* %status, align 4
  %call14 = call i8* @cairo_status_to_string(i32 %21)
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %20, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i8* %call14)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  store %struct._cairo_surface* null, %struct._cairo_surface** %retval
  br label %return

if.end.15:                                        ; preds = %if.end
  %22 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %call16 = call i8* @cairo_image_surface_get_data(%struct._cairo_surface* %22)
  store i8* %call16, i8** %pixels, align 8
  %23 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %call17 = call i32 @cairo_image_surface_get_stride(%struct._cairo_surface* %23)
  store i32 %call17, i32* %stride, align 4
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %25 = load i32, i32* %width, align 4
  %26 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %region, %struct._GimpDrawable* %24, i32 0, i32 0, i32 %25, i32 %26, i32 0, i32 0)
  %call18 = call i8* (i32, ...) @gimp_pixel_rgns_register(i32 1, %struct._GimpPixelRgn* %region)
  store i8* %call18, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.59, %if.end.15
  %27 = load i8*, i8** %pr, align 8
  %cmp19 = icmp ne i8* %27, null
  br i1 %cmp19, label %for.body, label %for.end.61

for.body:                                         ; preds = %for.cond
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %region, i32 0, i32 0
  %28 = load i8*, i8** %data, align 8
  store i8* %28, i8** %src, align 8
  %29 = load i8*, i8** %pixels, align 8
  %y = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %region, i32 0, i32 5
  %30 = load i32, i32* %y, align 4
  %31 = load i32, i32* %stride, align 4
  %mul21 = mul nsw i32 %30, %31
  %idx.ext = sext i32 %mul21 to i64
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 %idx.ext
  %x = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %region, i32 0, i32 4
  %32 = load i32, i32* %x, align 4
  %mul22 = mul nsw i32 %32, 4
  %idx.ext23 = sext i32 %mul22 to i64
  %add.ptr24 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext23
  store i8* %add.ptr24, i8** %dest, align 8
  store i32 0, i32* %y25, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc, %for.body
  %33 = load i32, i32* %y25, align 4
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %region, i32 0, i32 7
  %34 = load i32, i32* %h, align 4
  %cmp27 = icmp slt i32 %33, %34
  br i1 %cmp27, label %for.body.29, label %for.end

for.body.29:                                      ; preds = %for.cond.26
  %35 = load i32, i32* %image_type, align 4
  switch i32 %35, label %sw.epilog.42 [
    i32 0, label %sw.bb.30
    i32 1, label %sw.bb.31
    i32 2, label %sw.bb.33
    i32 3, label %sw.bb.35
    i32 4, label %sw.bb.37
    i32 5, label %sw.bb.39
  ]

sw.bb.30:                                         ; preds = %for.body.29
  %36 = load i8*, i8** %src, align 8
  %37 = load i8*, i8** %dest, align 8
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %region, i32 0, i32 6
  %38 = load i32, i32* %w, align 4
  call void @convert_from_rgb(i8* %36, i8* %37, i32 %38)
  br label %sw.epilog.42

sw.bb.31:                                         ; preds = %for.body.29
  %39 = load i8*, i8** %src, align 8
  %40 = load i8*, i8** %dest, align 8
  %w32 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %region, i32 0, i32 6
  %41 = load i32, i32* %w32, align 4
  call void @convert_from_rgba(i8* %39, i8* %40, i32 %41)
  br label %sw.epilog.42

sw.bb.33:                                         ; preds = %for.body.29
  %42 = load i8*, i8** %src, align 8
  %43 = load i8*, i8** %dest, align 8
  %w34 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %region, i32 0, i32 6
  %44 = load i32, i32* %w34, align 4
  call void @convert_from_gray(i8* %42, i8* %43, i32 %44)
  br label %sw.epilog.42

sw.bb.35:                                         ; preds = %for.body.29
  %45 = load i8*, i8** %src, align 8
  %46 = load i8*, i8** %dest, align 8
  %w36 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %region, i32 0, i32 6
  %47 = load i32, i32* %w36, align 4
  call void @convert_from_graya(i8* %45, i8* %46, i32 %47)
  br label %sw.epilog.42

sw.bb.37:                                         ; preds = %for.body.29
  %48 = load i8*, i8** %src, align 8
  %49 = load i8*, i8** %dest, align 8
  %w38 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %region, i32 0, i32 6
  %50 = load i32, i32* %w38, align 4
  %arraydecay = getelementptr inbounds [768 x i8], [768 x i8]* %cmap, i32 0, i32 0
  call void @convert_from_indexed(i8* %48, i8* %49, i32 %50, i8* %arraydecay)
  br label %sw.epilog.42

sw.bb.39:                                         ; preds = %for.body.29
  %51 = load i8*, i8** %src, align 8
  %52 = load i8*, i8** %dest, align 8
  %w40 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %region, i32 0, i32 6
  %53 = load i32, i32* %w40, align 4
  %arraydecay41 = getelementptr inbounds [768 x i8], [768 x i8]* %cmap, i32 0, i32 0
  call void @convert_from_indexeda(i8* %51, i8* %52, i32 %53, i8* %arraydecay41)
  br label %sw.epilog.42

sw.epilog.42:                                     ; preds = %for.body.29, %sw.bb.39, %sw.bb.37, %sw.bb.35, %sw.bb.33, %sw.bb.31, %sw.bb.30
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %region, i32 0, i32 3
  %54 = load i32, i32* %rowstride, align 4
  %55 = load i8*, i8** %src, align 8
  %idx.ext43 = sext i32 %54 to i64
  %add.ptr44 = getelementptr inbounds i8, i8* %55, i64 %idx.ext43
  store i8* %add.ptr44, i8** %src, align 8
  %56 = load i32, i32* %stride, align 4
  %57 = load i8*, i8** %dest, align 8
  %idx.ext45 = sext i32 %56 to i64
  %add.ptr46 = getelementptr inbounds i8, i8* %57, i64 %idx.ext45
  store i8* %add.ptr46, i8** %dest, align 8
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog.42
  %58 = load i32, i32* %y25, align 4
  %inc = add nsw i32 %58, 1
  store i32 %inc, i32* %y25, align 4
  br label %for.cond.26

for.end:                                          ; preds = %for.cond.26
  %h47 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %region, i32 0, i32 7
  %59 = load i32, i32* %h47, align 4
  %w48 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %region, i32 0, i32 6
  %60 = load i32, i32* %w48, align 4
  %mul49 = mul nsw i32 %59, %60
  %61 = load i32, i32* %done, align 4
  %add = add i32 %61, %mul49
  store i32 %add, i32* %done, align 4
  %62 = load i32, i32* %count, align 4
  %inc50 = add i32 %62, 1
  store i32 %inc50, i32* %count, align 4
  %rem = urem i32 %62, 16
  %cmp51 = icmp eq i32 %rem, 0
  br i1 %cmp51, label %if.then.53, label %if.end.58

if.then.53:                                       ; preds = %for.end
  %63 = load i32, i32* %done, align 4
  %conv54 = uitofp i32 %63 to double
  %64 = load i32, i32* %width, align 4
  %65 = load i32, i32* %height, align 4
  %mul55 = mul nsw i32 %64, %65
  %conv56 = sitofp i32 %mul55 to double
  %div = fdiv double %conv54, %conv56
  %call57 = call i32 @gimp_progress_update(double %div)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.53, %for.end
  br label %for.inc.59

for.inc.59:                                       ; preds = %if.end.58
  %66 = load i8*, i8** %pr, align 8
  %call60 = call i8* @gimp_pixel_rgns_process(i8* %66)
  store i8* %call60, i8** %pr, align 8
  br label %for.cond

for.end.61:                                       ; preds = %for.cond
  %call62 = call i32 @gimp_progress_update(double 1.000000e+00)
  %67 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %67)
  %68 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  call void @cairo_surface_mark_dirty(%struct._cairo_surface* %68)
  %69 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  store %struct._cairo_surface* %69, %struct._cairo_surface** %retval
  br label %return

return:                                           ; preds = %for.end.61, %sw.epilog
  %70 = load %struct._cairo_surface*, %struct._cairo_surface** %retval
  ret %struct._cairo_surface* %70
}

declare i32 @cairo_image_surface_get_width(%struct._cairo_surface*) #1

declare i32 @cairo_image_surface_get_height(%struct._cairo_surface*) #1

declare double @gtk_print_context_get_dpi_x(%struct._GtkPrintContext*) #1

declare double @gtk_print_context_get_dpi_y(%struct._GtkPrintContext*) #1

declare void @cairo_translate(%struct._cairo*, double, double) #1

; Function Attrs: nounwind uwtable
define internal void @print_draw_crop_marks(%struct._GtkPrintContext* %context, double %x, double %y, double %w, double %h) #0 {
entry:
  %context.addr = alloca %struct._GtkPrintContext*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %w.addr = alloca double, align 8
  %h.addr = alloca double, align 8
  %cr = alloca %struct._cairo*, align 8
  %len = alloca double, align 8
  store %struct._GtkPrintContext* %context, %struct._GtkPrintContext** %context.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double %w, double* %w.addr, align 8
  store double %h, double* %h.addr, align 8
  %0 = load %struct._GtkPrintContext*, %struct._GtkPrintContext** %context.addr, align 8
  %call = call %struct._cairo* @gtk_print_context_get_cairo_context(%struct._GtkPrintContext* %0)
  store %struct._cairo* %call, %struct._cairo** %cr, align 8
  %1 = load %struct._GtkPrintContext*, %struct._GtkPrintContext** %context.addr, align 8
  %call1 = call double @gtk_print_context_get_width(%struct._GtkPrintContext* %1)
  %2 = load %struct._GtkPrintContext*, %struct._GtkPrintContext** %context.addr, align 8
  %call2 = call double @gtk_print_context_get_height(%struct._GtkPrintContext* %2)
  %cmp = fcmp olt double %call1, %call2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct._GtkPrintContext*, %struct._GtkPrintContext** %context.addr, align 8
  %call3 = call double @gtk_print_context_get_width(%struct._GtkPrintContext* %3)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load %struct._GtkPrintContext*, %struct._GtkPrintContext** %context.addr, align 8
  %call4 = call double @gtk_print_context_get_height(%struct._GtkPrintContext* %4)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %call3, %cond.true ], [ %call4, %cond.false ]
  %div = fdiv double %cond, 2.000000e+01
  store double %div, double* %len, align 8
  %5 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %6 = load double, double* %x.addr, align 8
  %7 = load double, double* %len, align 8
  %sub = fsub double %6, %7
  %8 = load double, double* %y.addr, align 8
  call void @cairo_move_to(%struct._cairo* %5, double %sub, double %8)
  %9 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %10 = load double, double* %x.addr, align 8
  %11 = load double, double* %len, align 8
  %div5 = fdiv double %11, 5.000000e+00
  %sub6 = fsub double %10, %div5
  %12 = load double, double* %y.addr, align 8
  call void @cairo_line_to(%struct._cairo* %9, double %sub6, double %12)
  %13 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %14 = load double, double* %x.addr, align 8
  %15 = load double, double* %y.addr, align 8
  %16 = load double, double* %len, align 8
  %sub7 = fsub double %15, %16
  call void @cairo_move_to(%struct._cairo* %13, double %14, double %sub7)
  %17 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %18 = load double, double* %x.addr, align 8
  %19 = load double, double* %y.addr, align 8
  %20 = load double, double* %len, align 8
  %div8 = fdiv double %20, 5.000000e+00
  %sub9 = fsub double %19, %div8
  call void @cairo_line_to(%struct._cairo* %17, double %18, double %sub9)
  %21 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %22 = load double, double* %x.addr, align 8
  %23 = load double, double* %w.addr, align 8
  %add = fadd double %22, %23
  %24 = load double, double* %len, align 8
  %div10 = fdiv double %24, 5.000000e+00
  %add11 = fadd double %add, %div10
  %25 = load double, double* %y.addr, align 8
  call void @cairo_move_to(%struct._cairo* %21, double %add11, double %25)
  %26 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %27 = load double, double* %x.addr, align 8
  %28 = load double, double* %w.addr, align 8
  %add12 = fadd double %27, %28
  %29 = load double, double* %len, align 8
  %add13 = fadd double %add12, %29
  %30 = load double, double* %y.addr, align 8
  call void @cairo_line_to(%struct._cairo* %26, double %add13, double %30)
  %31 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %32 = load double, double* %x.addr, align 8
  %33 = load double, double* %w.addr, align 8
  %add14 = fadd double %32, %33
  %34 = load double, double* %y.addr, align 8
  %35 = load double, double* %len, align 8
  %sub15 = fsub double %34, %35
  call void @cairo_move_to(%struct._cairo* %31, double %add14, double %sub15)
  %36 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %37 = load double, double* %x.addr, align 8
  %38 = load double, double* %w.addr, align 8
  %add16 = fadd double %37, %38
  %39 = load double, double* %y.addr, align 8
  %40 = load double, double* %len, align 8
  %div17 = fdiv double %40, 5.000000e+00
  %sub18 = fsub double %39, %div17
  call void @cairo_line_to(%struct._cairo* %36, double %add16, double %sub18)
  %41 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %42 = load double, double* %x.addr, align 8
  %43 = load double, double* %len, align 8
  %sub19 = fsub double %42, %43
  %44 = load double, double* %y.addr, align 8
  %45 = load double, double* %h.addr, align 8
  %add20 = fadd double %44, %45
  call void @cairo_move_to(%struct._cairo* %41, double %sub19, double %add20)
  %46 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %47 = load double, double* %x.addr, align 8
  %48 = load double, double* %len, align 8
  %div21 = fdiv double %48, 5.000000e+00
  %sub22 = fsub double %47, %div21
  %49 = load double, double* %y.addr, align 8
  %50 = load double, double* %h.addr, align 8
  %add23 = fadd double %49, %50
  call void @cairo_line_to(%struct._cairo* %46, double %sub22, double %add23)
  %51 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %52 = load double, double* %x.addr, align 8
  %53 = load double, double* %y.addr, align 8
  %54 = load double, double* %h.addr, align 8
  %add24 = fadd double %53, %54
  %55 = load double, double* %len, align 8
  %add25 = fadd double %add24, %55
  call void @cairo_move_to(%struct._cairo* %51, double %52, double %add25)
  %56 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %57 = load double, double* %x.addr, align 8
  %58 = load double, double* %y.addr, align 8
  %59 = load double, double* %h.addr, align 8
  %add26 = fadd double %58, %59
  %60 = load double, double* %len, align 8
  %div27 = fdiv double %60, 5.000000e+00
  %add28 = fadd double %add26, %div27
  call void @cairo_line_to(%struct._cairo* %56, double %57, double %add28)
  %61 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %62 = load double, double* %x.addr, align 8
  %63 = load double, double* %w.addr, align 8
  %add29 = fadd double %62, %63
  %64 = load double, double* %len, align 8
  %div30 = fdiv double %64, 5.000000e+00
  %add31 = fadd double %add29, %div30
  %65 = load double, double* %y.addr, align 8
  %66 = load double, double* %h.addr, align 8
  %add32 = fadd double %65, %66
  call void @cairo_move_to(%struct._cairo* %61, double %add31, double %add32)
  %67 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %68 = load double, double* %x.addr, align 8
  %69 = load double, double* %w.addr, align 8
  %add33 = fadd double %68, %69
  %70 = load double, double* %len, align 8
  %add34 = fadd double %add33, %70
  %71 = load double, double* %y.addr, align 8
  %72 = load double, double* %h.addr, align 8
  %add35 = fadd double %71, %72
  call void @cairo_line_to(%struct._cairo* %67, double %add34, double %add35)
  %73 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %74 = load double, double* %x.addr, align 8
  %75 = load double, double* %w.addr, align 8
  %add36 = fadd double %74, %75
  %76 = load double, double* %y.addr, align 8
  %77 = load double, double* %h.addr, align 8
  %add37 = fadd double %76, %77
  %78 = load double, double* %len, align 8
  %add38 = fadd double %add37, %78
  call void @cairo_move_to(%struct._cairo* %73, double %add36, double %add38)
  %79 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %80 = load double, double* %x.addr, align 8
  %81 = load double, double* %w.addr, align 8
  %add39 = fadd double %80, %81
  %82 = load double, double* %y.addr, align 8
  %83 = load double, double* %h.addr, align 8
  %add40 = fadd double %82, %83
  %84 = load double, double* %len, align 8
  %div41 = fdiv double %84, 5.000000e+00
  %add42 = fadd double %add40, %div41
  call void @cairo_line_to(%struct._cairo* %79, double %add39, double %add42)
  %85 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_source_rgb(%struct._cairo* %85, double 5.000000e-01, double 5.000000e-01, double 5.000000e-01)
  %86 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_set_line_width(%struct._cairo* %86, double 2.000000e+00)
  %87 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_stroke(%struct._cairo* %87)
  ret void
}

declare void @cairo_scale(%struct._cairo*, double, double) #1

declare void @cairo_rectangle(%struct._cairo*, double, double, double, double) #1

declare void @cairo_set_source_surface(%struct._cairo*, %struct._cairo_surface*, double, double) #1

declare void @cairo_fill(%struct._cairo*) #1

declare void @cairo_surface_destroy(%struct._cairo_surface*) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare i32 @gimp_drawable_type(i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare i32 @gimp_drawable_is_indexed(i32) #1

declare i8* @gimp_image_get_colormap(i32, i32*) #1

declare i32 @gimp_item_get_image(i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @g_free(i8*) #1

declare %struct._cairo_surface* @cairo_image_surface_create(i32, i32, i32) #1

declare i32 @gimp_drawable_has_alpha(i32) #1

declare i32 @cairo_surface_status(%struct._cairo_surface*) #1

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

declare i8* @cairo_status_to_string(i32) #1

declare i8* @cairo_image_surface_get_data(%struct._cairo_surface*) #1

declare i32 @cairo_image_surface_get_stride(%struct._cairo_surface*) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare i8* @gimp_pixel_rgns_register(i32, ...) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @convert_from_rgb(i8* %src, i8* %dest, i32 %pixels) #4 {
entry:
  %src.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %pixels.addr = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %pixels, i32* %pixels.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %do.end, %entry
  %0 = load i32, i32* %pixels.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %pixels.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %while.body
  %1 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 2
  %2 = load i8, i8* %arrayidx, align 1
  %3 = load i8*, i8** %dest.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 0
  store i8 %2, i8* %arrayidx1, align 1
  %4 = load i8*, i8** %src.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx2, align 1
  %6 = load i8*, i8** %dest.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %6, i64 1
  store i8 %5, i8* %arrayidx3, align 1
  %7 = load i8*, i8** %src.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx4, align 1
  %9 = load i8*, i8** %dest.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %9, i64 2
  store i8 %8, i8* %arrayidx5, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %10 = load i8*, i8** %src.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 3
  store i8* %add.ptr, i8** %src.addr, align 8
  %11 = load i8*, i8** %dest.addr, align 8
  %add.ptr6 = getelementptr inbounds i8, i8* %11, i64 4
  store i8* %add.ptr6, i8** %dest.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @convert_from_rgba(i8* %src, i8* %dest, i32 %pixels) #4 {
entry:
  %src.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %pixels.addr = alloca i32, align 4
  %tr = alloca i32, align 4
  %tg = alloca i32, align 4
  %tb = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %pixels, i32* %pixels.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %do.end, %entry
  %0 = load i32, i32* %pixels.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %pixels.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %while.body
  %1 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 3
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %3 = load i8*, i8** %src.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %4 to i32
  %mul = mul nsw i32 %conv, %conv2
  %add = add nsw i32 %mul, 128
  store i32 %add, i32* %tr, align 4
  %5 = load i8*, i8** %src.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 3
  %6 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %6 to i32
  %7 = load i8*, i8** %src.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %8 to i32
  %mul7 = mul nsw i32 %conv4, %conv6
  %add8 = add nsw i32 %mul7, 128
  store i32 %add8, i32* %tg, align 4
  %9 = load i8*, i8** %src.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %9, i64 3
  %10 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %10 to i32
  %11 = load i8*, i8** %src.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %11, i64 2
  %12 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %12 to i32
  %mul13 = mul nsw i32 %conv10, %conv12
  %add14 = add nsw i32 %mul13, 128
  store i32 %add14, i32* %tb, align 4
  %13 = load i32, i32* %tb, align 4
  %shr = lshr i32 %13, 8
  %14 = load i32, i32* %tb, align 4
  %add15 = add i32 %shr, %14
  %shr16 = lshr i32 %add15, 8
  %conv17 = trunc i32 %shr16 to i8
  %15 = load i8*, i8** %dest.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 %conv17, i8* %arrayidx18, align 1
  %16 = load i32, i32* %tg, align 4
  %shr19 = lshr i32 %16, 8
  %17 = load i32, i32* %tg, align 4
  %add20 = add i32 %shr19, %17
  %shr21 = lshr i32 %add20, 8
  %conv22 = trunc i32 %shr21 to i8
  %18 = load i8*, i8** %dest.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %18, i64 1
  store i8 %conv22, i8* %arrayidx23, align 1
  %19 = load i32, i32* %tr, align 4
  %shr24 = lshr i32 %19, 8
  %20 = load i32, i32* %tr, align 4
  %add25 = add i32 %shr24, %20
  %shr26 = lshr i32 %add25, 8
  %conv27 = trunc i32 %shr26 to i8
  %21 = load i8*, i8** %dest.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %21, i64 2
  store i8 %conv27, i8* %arrayidx28, align 1
  %22 = load i8*, i8** %src.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %22, i64 3
  %23 = load i8, i8* %arrayidx29, align 1
  %24 = load i8*, i8** %dest.addr, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %24, i64 3
  store i8 %23, i8* %arrayidx30, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %25 = load i8*, i8** %src.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %25, i64 4
  store i8* %add.ptr, i8** %src.addr, align 8
  %26 = load i8*, i8** %dest.addr, align 8
  %add.ptr31 = getelementptr inbounds i8, i8* %26, i64 4
  store i8* %add.ptr31, i8** %dest.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @convert_from_gray(i8* %src, i8* %dest, i32 %pixels) #4 {
entry:
  %src.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %pixels.addr = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %pixels, i32* %pixels.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %do.end, %entry
  %0 = load i32, i32* %pixels.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %pixels.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %while.body
  %1 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %3 = load i8*, i8** %dest.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 0
  store i8 %2, i8* %arrayidx1, align 1
  %4 = load i8*, i8** %src.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx2, align 1
  %6 = load i8*, i8** %dest.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %6, i64 1
  store i8 %5, i8* %arrayidx3, align 1
  %7 = load i8*, i8** %src.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx4, align 1
  %9 = load i8*, i8** %dest.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %9, i64 2
  store i8 %8, i8* %arrayidx5, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %10 = load i8*, i8** %src.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 1
  store i8* %add.ptr, i8** %src.addr, align 8
  %11 = load i8*, i8** %dest.addr, align 8
  %add.ptr6 = getelementptr inbounds i8, i8* %11, i64 4
  store i8* %add.ptr6, i8** %dest.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @convert_from_graya(i8* %src, i8* %dest, i32 %pixels) #4 {
entry:
  %src.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %pixels.addr = alloca i32, align 4
  %tr = alloca i32, align 4
  %tg = alloca i32, align 4
  %tb = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %pixels, i32* %pixels.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %do.end, %entry
  %0 = load i32, i32* %pixels.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %pixels.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %while.body
  %1 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 1
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %3 = load i8*, i8** %src.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %4 to i32
  %mul = mul nsw i32 %conv, %conv2
  %add = add nsw i32 %mul, 128
  store i32 %add, i32* %tr, align 4
  %5 = load i8*, i8** %src.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %6 to i32
  %7 = load i8*, i8** %src.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %8 to i32
  %mul7 = mul nsw i32 %conv4, %conv6
  %add8 = add nsw i32 %mul7, 128
  store i32 %add8, i32* %tg, align 4
  %9 = load i8*, i8** %src.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %10 to i32
  %11 = load i8*, i8** %src.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %11, i64 0
  %12 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %12 to i32
  %mul13 = mul nsw i32 %conv10, %conv12
  %add14 = add nsw i32 %mul13, 128
  store i32 %add14, i32* %tb, align 4
  %13 = load i32, i32* %tb, align 4
  %shr = lshr i32 %13, 8
  %14 = load i32, i32* %tb, align 4
  %add15 = add i32 %shr, %14
  %shr16 = lshr i32 %add15, 8
  %conv17 = trunc i32 %shr16 to i8
  %15 = load i8*, i8** %dest.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 %conv17, i8* %arrayidx18, align 1
  %16 = load i32, i32* %tg, align 4
  %shr19 = lshr i32 %16, 8
  %17 = load i32, i32* %tg, align 4
  %add20 = add i32 %shr19, %17
  %shr21 = lshr i32 %add20, 8
  %conv22 = trunc i32 %shr21 to i8
  %18 = load i8*, i8** %dest.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %18, i64 1
  store i8 %conv22, i8* %arrayidx23, align 1
  %19 = load i32, i32* %tr, align 4
  %shr24 = lshr i32 %19, 8
  %20 = load i32, i32* %tr, align 4
  %add25 = add i32 %shr24, %20
  %shr26 = lshr i32 %add25, 8
  %conv27 = trunc i32 %shr26 to i8
  %21 = load i8*, i8** %dest.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %21, i64 2
  store i8 %conv27, i8* %arrayidx28, align 1
  %22 = load i8*, i8** %src.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx29, align 1
  %24 = load i8*, i8** %dest.addr, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %24, i64 3
  store i8 %23, i8* %arrayidx30, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %25 = load i8*, i8** %src.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %25, i64 2
  store i8* %add.ptr, i8** %src.addr, align 8
  %26 = load i8*, i8** %dest.addr, align 8
  %add.ptr31 = getelementptr inbounds i8, i8* %26, i64 4
  store i8* %add.ptr31, i8** %dest.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @convert_from_indexed(i8* %src, i8* %dest, i32 %pixels, i8* %cmap) #4 {
entry:
  %src.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %pixels.addr = alloca i32, align 4
  %cmap.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %pixels, i32* %pixels.addr, align 4
  store i8* %cmap, i8** %cmap.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end, %entry
  %0 = load i32, i32* %pixels.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %pixels.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %mul = mul nsw i32 3, %conv
  store i32 %mul, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %while.body
  %3 = load i32, i32* %i, align 4
  %add = add nsw i32 %3, 2
  %idxprom = sext i32 %add to i64
  %4 = load i8*, i8** %cmap.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx1, align 1
  %6 = load i8*, i8** %dest.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %6, i64 0
  store i8 %5, i8* %arrayidx2, align 1
  %7 = load i32, i32* %i, align 4
  %add3 = add nsw i32 %7, 1
  %idxprom4 = sext i32 %add3 to i64
  %8 = load i8*, i8** %cmap.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %idxprom4
  %9 = load i8, i8* %arrayidx5, align 1
  %10 = load i8*, i8** %dest.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %10, i64 1
  store i8 %9, i8* %arrayidx6, align 1
  %11 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %11 to i64
  %12 = load i8*, i8** %cmap.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %idxprom7
  %13 = load i8, i8* %arrayidx8, align 1
  %14 = load i8*, i8** %dest.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %14, i64 2
  store i8 %13, i8* %arrayidx9, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %15 = load i8*, i8** %src.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 1
  store i8* %add.ptr, i8** %src.addr, align 8
  %16 = load i8*, i8** %dest.addr, align 8
  %add.ptr10 = getelementptr inbounds i8, i8* %16, i64 4
  store i8* %add.ptr10, i8** %dest.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @convert_from_indexeda(i8* %src, i8* %dest, i32 %pixels, i8* %cmap) #4 {
entry:
  %src.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %pixels.addr = alloca i32, align 4
  %cmap.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %tr = alloca i32, align 4
  %tg = alloca i32, align 4
  %tb = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %pixels, i32* %pixels.addr, align 4
  store i8* %cmap, i8** %cmap.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end, %entry
  %0 = load i32, i32* %pixels.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %pixels.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %mul = mul nsw i32 3, %conv
  store i32 %mul, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %while.body
  %3 = load i8*, i8** %src.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %4 to i32
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i8*, i8** %cmap.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %7 to i32
  %mul5 = mul nsw i32 %conv2, %conv4
  %add = add nsw i32 %mul5, 128
  store i32 %add, i32* %tr, align 4
  %8 = load i8*, i8** %src.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %9 to i32
  %10 = load i32, i32* %i, align 4
  %add8 = add nsw i32 %10, 1
  %idxprom9 = sext i32 %add8 to i64
  %11 = load i8*, i8** %cmap.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %11, i64 %idxprom9
  %12 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %12 to i32
  %mul12 = mul nsw i32 %conv7, %conv11
  %add13 = add nsw i32 %mul12, 128
  store i32 %add13, i32* %tg, align 4
  %13 = load i8*, i8** %src.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %14 to i32
  %15 = load i32, i32* %i, align 4
  %add16 = add nsw i32 %15, 2
  %idxprom17 = sext i32 %add16 to i64
  %16 = load i8*, i8** %cmap.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %16, i64 %idxprom17
  %17 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %17 to i32
  %mul20 = mul nsw i32 %conv15, %conv19
  %add21 = add nsw i32 %mul20, 128
  store i32 %add21, i32* %tb, align 4
  %18 = load i32, i32* %tb, align 4
  %shr = lshr i32 %18, 8
  %19 = load i32, i32* %tb, align 4
  %add22 = add i32 %shr, %19
  %shr23 = lshr i32 %add22, 8
  %conv24 = trunc i32 %shr23 to i8
  %20 = load i8*, i8** %dest.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 %conv24, i8* %arrayidx25, align 1
  %21 = load i32, i32* %tg, align 4
  %shr26 = lshr i32 %21, 8
  %22 = load i32, i32* %tg, align 4
  %add27 = add i32 %shr26, %22
  %shr28 = lshr i32 %add27, 8
  %conv29 = trunc i32 %shr28 to i8
  %23 = load i8*, i8** %dest.addr, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %23, i64 1
  store i8 %conv29, i8* %arrayidx30, align 1
  %24 = load i32, i32* %tr, align 4
  %shr31 = lshr i32 %24, 8
  %25 = load i32, i32* %tr, align 4
  %add32 = add i32 %shr31, %25
  %shr33 = lshr i32 %add32, 8
  %conv34 = trunc i32 %shr33 to i8
  %26 = load i8*, i8** %dest.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %26, i64 2
  store i8 %conv34, i8* %arrayidx35, align 1
  %27 = load i8*, i8** %src.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %27, i64 1
  %28 = load i8, i8* %arrayidx36, align 1
  %29 = load i8*, i8** %dest.addr, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %29, i64 3
  store i8 %28, i8* %arrayidx37, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %30 = load i8*, i8** %src.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %30, i64 2
  store i8* %add.ptr, i8** %src.addr, align 8
  %31 = load i8*, i8** %dest.addr, align 8
  %add.ptr38 = getelementptr inbounds i8, i8* %31, i64 4
  store i8* %add.ptr38, i8** %dest.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @gimp_progress_update(double) #1

declare i8* @gimp_pixel_rgns_process(i8*) #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare void @cairo_surface_mark_dirty(%struct._cairo_surface*) #1

declare double @gtk_print_context_get_width(%struct._GtkPrintContext*) #1

declare double @gtk_print_context_get_height(%struct._GtkPrintContext*) #1

declare void @cairo_move_to(%struct._cairo*, double, double) #1

declare void @cairo_line_to(%struct._cairo*, double, double) #1

declare void @cairo_set_source_rgb(%struct._cairo*, double, double, double) #1

declare void @cairo_set_line_width(%struct._cairo*, double) #1

declare void @cairo_stroke(%struct._cairo*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
