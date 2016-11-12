; ModuleID = './libgimpwidgets/gimpcairo-utils.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cairo = type opaque
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
%struct._GdkPixbuf = type opaque

@.str = private unnamed_addr constant [15 x i8] c"LibGimpWidgets\00", align 1
@__func__.gimp_cairo_set_focus_line_pattern = private unnamed_addr constant [34 x i8] c"gimp_cairo_set_focus_line_pattern\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"cr != NULL\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"GTK_IS_WIDGET (widget)\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"focus-line-pattern\00", align 1
@__func__.gimp_cairo_surface_create_from_pixbuf = private unnamed_addr constant [38 x i8] c"gimp_cairo_surface_create_from_pixbuf\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"GDK_IS_PIXBUF (pixbuf)\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"gimpcairo-utils.c\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_cairo_set_focus_line_pattern(%struct._cairo* %cr, %struct._GtkWidget* %widget) #0 {
entry:
  %retval = alloca i32, align 4
  %cr.addr = alloca %struct._cairo*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %dash_list = alloca i8*, align 8
  %retval1 = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %n_dashes = alloca i32, align 4
  %dashes = alloca double*, align 8
  %total_length = alloca double, align 8
  %i = alloca i32, align 4
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 0, i32* %retval1, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %cmp = icmp ne %struct._cairo* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_cairo_set_focus_line_pattern, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #5
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else.4, label %if.then.3

if.then.3:                                        ; preds = %do.body.2
  store i32 0, i32* %__r, align 4
  br label %if.end.12

if.else.4:                                        ; preds = %do.body.2
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool5 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool5, label %land.lhs.true, label %if.else.9

land.lhs.true:                                    ; preds = %if.else.4
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp7 = icmp eq i64 %8, %9
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.11

if.else.9:                                        ; preds = %land.lhs.true, %if.else.4
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call10 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #6
  store i32 %call10, i32* %__r, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.9, %if.then.8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then.3
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool13 = icmp ne i32 %13, 0
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.end.12
  br label %if.end.16

if.else.15:                                       ; preds = %if.end.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_cairo_set_focus_line_pattern, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %15 = bitcast i8** %dash_list to i8*
  call void (%struct._GtkWidget*, i8*, ...) @gtk_widget_style_get(%struct._GtkWidget* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i8* %15, i8* null)
  %16 = load i8*, i8** %dash_list, align 8
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 0
  %17 = load i8, i8* %arrayidx, align 1
  %tobool18 = icmp ne i8 %17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.37

if.then.19:                                       ; preds = %do.end.17
  %18 = load i8*, i8** %dash_list, align 8
  %call21 = call i64 @strlen(i8* %18) #6
  %conv = trunc i64 %call21 to i32
  store i32 %conv, i32* %n_dashes, align 4
  %19 = load i32, i32* %n_dashes, align 4
  %conv23 = sext i32 %19 to i64
  %call24 = call noalias i8* @g_malloc_n(i64 %conv23, i64 8)
  %20 = bitcast i8* %call24 to double*
  store double* %20, double** %dashes, align 8
  store double 0.000000e+00, double* %total_length, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.19
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %n_dashes, align 4
  %cmp27 = icmp slt i32 %21, %22
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %i, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load i8*, i8** %dash_list, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %24, i64 %idxprom
  %25 = load i8, i8* %arrayidx29, align 1
  %conv30 = sitofp i8 %25 to double
  %26 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %26 to i64
  %27 = load double*, double** %dashes, align 8
  %arrayidx32 = getelementptr inbounds double, double* %27, i64 %idxprom31
  store double %conv30, double* %arrayidx32, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %28 to i64
  %29 = load i8*, i8** %dash_list, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %29, i64 %idxprom33
  %30 = load i8, i8* %arrayidx34, align 1
  %conv35 = sext i8 %30 to i32
  %conv36 = sitofp i32 %conv35 to double
  %31 = load double, double* %total_length, align 8
  %add = fadd double %31, %conv36
  store double %add, double* %total_length, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %34 = load double*, double** %dashes, align 8
  %35 = load i32, i32* %n_dashes, align 4
  call void @cairo_set_dash(%struct._cairo* %33, double* %34, i32 %35, double 5.000000e-01)
  %36 = load double*, double** %dashes, align 8
  %37 = bitcast double* %36 to i8*
  call void @g_free(i8* %37)
  store i32 1, i32* %retval1, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %for.end, %do.end.17
  %38 = load i8*, i8** %dash_list, align 8
  call void @g_free(i8* %38)
  %39 = load i32, i32* %retval1, align 4
  store i32 %39, i32* %retval
  br label %return

return:                                           ; preds = %if.end.37, %if.else.15, %if.else
  %40 = load i32, i32* %retval
  ret i32 %40
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare void @gtk_widget_style_get(%struct._GtkWidget*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @cairo_set_dash(%struct._cairo*, double*, i32, double) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._cairo_surface* @gimp_cairo_surface_create_from_pixbuf(%struct._GdkPixbuf* %pixbuf) #0 {
entry:
  %retval = alloca %struct._cairo_surface*, align 8
  %pixbuf.addr = alloca %struct._GdkPixbuf*, align 8
  %surface = alloca %struct._cairo_surface*, align 8
  %format = alloca i32, align 4
  %dest = alloca i8*, align 8
  %src = alloca i8*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %src_stride = alloca i32, align 4
  %dest_stride = alloca i32, align 4
  %y = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %s = alloca i8*, align 8
  %d = alloca i8*, align 8
  %w = alloca i32, align 4
  %s44 = alloca i8*, align 8
  %d46 = alloca i8*, align 8
  %w48 = alloca i32, align 4
  %tr = alloca i32, align 4
  %tg = alloca i32, align 4
  %tb = alloca i32, align 4
  store %struct._GdkPixbuf* %pixbuf, %struct._GdkPixbuf** %pixbuf.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %1 = bitcast %struct._GdkPixbuf* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gdk_pixbuf_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_cairo_surface_create_from_pixbuf, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0))
  store %struct._cairo_surface* null, %struct._cairo_surface** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call11 = call i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf* %13)
  store i32 %call11, i32* %width, align 4
  %14 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call12 = call i32 @gdk_pixbuf_get_height(%struct._GdkPixbuf* %14)
  store i32 %call12, i32* %height, align 4
  %15 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call13 = call i32 @gdk_pixbuf_get_n_channels(%struct._GdkPixbuf* %15)
  switch i32 %call13, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %do.end
  store i32 1, i32* %format, align 4
  br label %sw.epilog

sw.bb.14:                                         ; preds = %do.end
  store i32 0, i32* %format, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %do.body.15

do.body.15:                                       ; preds = %sw.default
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 138, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_cairo_surface_create_from_pixbuf, i32 0, i32 0), i8* null) #7
  unreachable

do.end.16:                                        ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.16, %sw.bb.14, %sw.bb
  %16 = load i32, i32* %format, align 4
  %17 = load i32, i32* %width, align 4
  %18 = load i32, i32* %height, align 4
  %call17 = call %struct._cairo_surface* @cairo_image_surface_create(i32 %16, i32 %17, i32 %18)
  store %struct._cairo_surface* %call17, %struct._cairo_surface** %surface, align 8
  %19 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  call void @cairo_surface_flush(%struct._cairo_surface* %19)
  %20 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call18 = call i8* @gdk_pixbuf_get_pixels(%struct._GdkPixbuf* %20)
  store i8* %call18, i8** %src, align 8
  %21 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call19 = call i32 @gdk_pixbuf_get_rowstride(%struct._GdkPixbuf* %21)
  store i32 %call19, i32* %src_stride, align 4
  %22 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %call20 = call i8* @cairo_image_surface_get_data(%struct._cairo_surface* %22)
  store i8* %call20, i8** %dest, align 8
  %23 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %call21 = call i32 @cairo_image_surface_get_stride(%struct._cairo_surface* %23)
  store i32 %call21, i32* %dest_stride, align 4
  %24 = load i32, i32* %format, align 4
  switch i32 %24, label %sw.default.99 [
    i32 1, label %sw.bb.22
    i32 0, label %sw.bb.39
  ]

sw.bb.22:                                         ; preds = %sw.epilog
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.22
  %25 = load i32, i32* %y, align 4
  %26 = load i32, i32* %height, align 4
  %cmp23 = icmp slt i32 %25, %26
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i8*, i8** %src, align 8
  store i8* %27, i8** %s, align 8
  %28 = load i8*, i8** %dest, align 8
  store i8* %28, i8** %d, align 8
  %29 = load i32, i32* %width, align 4
  store i32 %29, i32* %w, align 4
  br label %while.cond

while.cond:                                       ; preds = %do.end.34, %for.body
  %30 = load i32, i32* %w, align 4
  %dec = add nsw i32 %30, -1
  store i32 %dec, i32* %w, align 4
  %tobool27 = icmp ne i32 %30, 0
  br i1 %tobool27, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body.28

do.body.28:                                       ; preds = %while.body
  %31 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %31, i64 2
  %32 = load i8, i8* %arrayidx, align 1
  %33 = load i8*, i8** %d, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %33, i64 0
  store i8 %32, i8* %arrayidx29, align 1
  %34 = load i8*, i8** %s, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %34, i64 1
  %35 = load i8, i8* %arrayidx30, align 1
  %36 = load i8*, i8** %d, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %36, i64 1
  store i8 %35, i8* %arrayidx31, align 1
  %37 = load i8*, i8** %s, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %37, i64 0
  %38 = load i8, i8* %arrayidx32, align 1
  %39 = load i8*, i8** %d, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %39, i64 2
  store i8 %38, i8* %arrayidx33, align 1
  br label %do.end.34

do.end.34:                                        ; preds = %do.body.28
  %40 = load i8*, i8** %s, align 8
  %add.ptr = getelementptr inbounds i8, i8* %40, i64 3
  store i8* %add.ptr, i8** %s, align 8
  %41 = load i8*, i8** %d, align 8
  %add.ptr35 = getelementptr inbounds i8, i8* %41, i64 4
  store i8* %add.ptr35, i8** %d, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %42 = load i32, i32* %src_stride, align 4
  %43 = load i8*, i8** %src, align 8
  %idx.ext = sext i32 %42 to i64
  %add.ptr36 = getelementptr inbounds i8, i8* %43, i64 %idx.ext
  store i8* %add.ptr36, i8** %src, align 8
  %44 = load i32, i32* %dest_stride, align 4
  %45 = load i8*, i8** %dest, align 8
  %idx.ext37 = sext i32 %44 to i64
  %add.ptr38 = getelementptr inbounds i8, i8* %45, i64 %idx.ext37
  store i8* %add.ptr38, i8** %dest, align 8
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %46 = load i32, i32* %y, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog.100

sw.bb.39:                                         ; preds = %sw.epilog
  store i32 0, i32* %y, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.96, %sw.bb.39
  %47 = load i32, i32* %y, align 4
  %48 = load i32, i32* %height, align 4
  %cmp41 = icmp slt i32 %47, %48
  br i1 %cmp41, label %for.body.42, label %for.end.98

for.body.42:                                      ; preds = %for.cond.40
  %49 = load i8*, i8** %src, align 8
  store i8* %49, i8** %s44, align 8
  %50 = load i8*, i8** %dest, align 8
  store i8* %50, i8** %d46, align 8
  %51 = load i32, i32* %width, align 4
  store i32 %51, i32* %w48, align 4
  br label %while.cond.49

while.cond.49:                                    ; preds = %do.end.88, %for.body.42
  %52 = load i32, i32* %w48, align 4
  %dec50 = add nsw i32 %52, -1
  store i32 %dec50, i32* %w48, align 4
  %tobool51 = icmp ne i32 %52, 0
  br i1 %tobool51, label %while.body.52, label %while.end.91

while.body.52:                                    ; preds = %while.cond.49
  br label %do.body.53

do.body.53:                                       ; preds = %while.body.52
  %53 = load i8*, i8** %s44, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %53, i64 3
  %54 = load i8, i8* %arrayidx55, align 1
  %conv = zext i8 %54 to i32
  %55 = load i8*, i8** %s44, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %55, i64 0
  %56 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %56 to i32
  %mul = mul nsw i32 %conv, %conv57
  %add = add nsw i32 %mul, 128
  store i32 %add, i32* %tr, align 4
  %57 = load i8*, i8** %s44, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %57, i64 3
  %58 = load i8, i8* %arrayidx59, align 1
  %conv60 = zext i8 %58 to i32
  %59 = load i8*, i8** %s44, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %59, i64 1
  %60 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %60 to i32
  %mul63 = mul nsw i32 %conv60, %conv62
  %add64 = add nsw i32 %mul63, 128
  store i32 %add64, i32* %tg, align 4
  %61 = load i8*, i8** %s44, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %61, i64 3
  %62 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %62 to i32
  %63 = load i8*, i8** %s44, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %63, i64 2
  %64 = load i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %64 to i32
  %mul70 = mul nsw i32 %conv67, %conv69
  %add71 = add nsw i32 %mul70, 128
  store i32 %add71, i32* %tb, align 4
  %65 = load i32, i32* %tb, align 4
  %shr = lshr i32 %65, 8
  %66 = load i32, i32* %tb, align 4
  %add72 = add i32 %shr, %66
  %shr73 = lshr i32 %add72, 8
  %conv74 = trunc i32 %shr73 to i8
  %67 = load i8*, i8** %d46, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %67, i64 0
  store i8 %conv74, i8* %arrayidx75, align 1
  %68 = load i32, i32* %tg, align 4
  %shr76 = lshr i32 %68, 8
  %69 = load i32, i32* %tg, align 4
  %add77 = add i32 %shr76, %69
  %shr78 = lshr i32 %add77, 8
  %conv79 = trunc i32 %shr78 to i8
  %70 = load i8*, i8** %d46, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %70, i64 1
  store i8 %conv79, i8* %arrayidx80, align 1
  %71 = load i32, i32* %tr, align 4
  %shr81 = lshr i32 %71, 8
  %72 = load i32, i32* %tr, align 4
  %add82 = add i32 %shr81, %72
  %shr83 = lshr i32 %add82, 8
  %conv84 = trunc i32 %shr83 to i8
  %73 = load i8*, i8** %d46, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %73, i64 2
  store i8 %conv84, i8* %arrayidx85, align 1
  %74 = load i8*, i8** %s44, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %74, i64 3
  %75 = load i8, i8* %arrayidx86, align 1
  %76 = load i8*, i8** %d46, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %76, i64 3
  store i8 %75, i8* %arrayidx87, align 1
  br label %do.end.88

do.end.88:                                        ; preds = %do.body.53
  %77 = load i8*, i8** %s44, align 8
  %add.ptr89 = getelementptr inbounds i8, i8* %77, i64 4
  store i8* %add.ptr89, i8** %s44, align 8
  %78 = load i8*, i8** %d46, align 8
  %add.ptr90 = getelementptr inbounds i8, i8* %78, i64 4
  store i8* %add.ptr90, i8** %d46, align 8
  br label %while.cond.49

while.end.91:                                     ; preds = %while.cond.49
  %79 = load i32, i32* %src_stride, align 4
  %80 = load i8*, i8** %src, align 8
  %idx.ext92 = sext i32 %79 to i64
  %add.ptr93 = getelementptr inbounds i8, i8* %80, i64 %idx.ext92
  store i8* %add.ptr93, i8** %src, align 8
  %81 = load i32, i32* %dest_stride, align 4
  %82 = load i8*, i8** %dest, align 8
  %idx.ext94 = sext i32 %81 to i64
  %add.ptr95 = getelementptr inbounds i8, i8* %82, i64 %idx.ext94
  store i8* %add.ptr95, i8** %dest, align 8
  br label %for.inc.96

for.inc.96:                                       ; preds = %while.end.91
  %83 = load i32, i32* %y, align 4
  %inc97 = add nsw i32 %83, 1
  store i32 %inc97, i32* %y, align 4
  br label %for.cond.40

for.end.98:                                       ; preds = %for.cond.40
  br label %sw.epilog.100

sw.default.99:                                    ; preds = %sw.epilog
  br label %sw.epilog.100

sw.epilog.100:                                    ; preds = %sw.default.99, %for.end.98, %for.end
  %84 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  call void @cairo_surface_mark_dirty(%struct._cairo_surface* %84)
  %85 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  store %struct._cairo_surface* %85, %struct._cairo_surface** %retval
  br label %return

return:                                           ; preds = %sw.epilog.100, %if.else.9
  %86 = load %struct._cairo_surface*, %struct._cairo_surface** %retval
  ret %struct._cairo_surface* %86
}

; Function Attrs: nounwind readnone
declare i64 @gdk_pixbuf_get_type() #2

declare i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf*) #1

declare i32 @gdk_pixbuf_get_height(%struct._GdkPixbuf*) #1

declare i32 @gdk_pixbuf_get_n_channels(%struct._GdkPixbuf*) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #4

declare %struct._cairo_surface* @cairo_image_surface_create(i32, i32, i32) #1

declare void @cairo_surface_flush(%struct._cairo_surface*) #1

declare i8* @gdk_pixbuf_get_pixels(%struct._GdkPixbuf*) #1

declare i32 @gdk_pixbuf_get_rowstride(%struct._GdkPixbuf*) #1

declare i8* @cairo_image_surface_get_data(%struct._cairo_surface*) #1

declare i32 @cairo_image_surface_get_stride(%struct._cairo_surface*) #1

declare void @cairo_surface_mark_dirty(%struct._cairo_surface*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
