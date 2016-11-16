; ModuleID = './app/widgets/gimpcairo.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cairo_user_data_key = type { i32 }
%struct._cairo_pattern = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._cairo_surface = type opaque
%struct._cairo = type opaque
%struct._GimpSegment = type { i32, i32, i32, i32 }
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

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_cairo_stipple_pattern_create = private unnamed_addr constant [34 x i8] c"gimp_cairo_stipple_pattern_create\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"fg != NULL\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"bg != NULL\00", align 1
@surface_data_key = internal global %struct._cairo_user_data_key zeroinitializer, align 4
@__func__.gimp_cairo_add_arc = private unnamed_addr constant [19 x i8] c"gimp_cairo_add_arc\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"cr != NULL\00", align 1
@__func__.gimp_cairo_add_segments = private unnamed_addr constant [24 x i8] c"gimp_cairo_add_segments\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"segs != NULL && n_segs > 0\00", align 1
@__func__.gimp_cairo_draw_toolbox_wilber = private unnamed_addr constant [31 x i8] c"gimp_cairo_draw_toolbox_wilber\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"GTK_IS_WIDGET (widget)\00", align 1
@__func__.gimp_cairo_draw_drop_wilber = private unnamed_addr constant [28 x i8] c"gimp_cairo_draw_drop_wilber\00", align 1

; Function Attrs: nounwind uwtable
define %struct._cairo_pattern* @gimp_cairo_stipple_pattern_create(%struct._GimpRGB* %fg, %struct._GimpRGB* %bg, i32 %index) #0 {
entry:
  %retval = alloca %struct._cairo_pattern*, align 8
  %fg.addr = alloca %struct._GimpRGB*, align 8
  %bg.addr = alloca %struct._GimpRGB*, align 8
  %index.addr = alloca i32, align 4
  %surface = alloca %struct._cairo_surface*, align 8
  %pattern = alloca %struct._cairo_pattern*, align 8
  %data = alloca i8*, align 8
  %d = alloca i8*, align 8
  %fg_r = alloca i8, align 1
  %fg_g = alloca i8, align 1
  %fg_b = alloca i8, align 1
  %fg_a = alloca i8, align 1
  %bg_r = alloca i8, align 1
  %bg_g = alloca i8, align 1
  %bg_b = alloca i8, align 1
  %bg_a = alloca i8, align 1
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %tr = alloca i32, align 4
  %tg = alloca i32, align 4
  %tb = alloca i32, align 4
  %tr42 = alloca i32, align 4
  %tg47 = alloca i32, align 4
  %tb52 = alloca i32, align 4
  store %struct._GimpRGB* %fg, %struct._GimpRGB** %fg.addr, align 8
  store %struct._GimpRGB* %bg, %struct._GimpRGB** %bg.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRGB*, %struct._GimpRGB** %fg.addr, align 8
  %cmp = icmp ne %struct._GimpRGB* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_cairo_stipple_pattern_create, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  store %struct._cairo_pattern* null, %struct._cairo_pattern** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpRGB*, %struct._GimpRGB** %bg.addr, align 8
  %cmp2 = icmp ne %struct._GimpRGB* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_cairo_stipple_pattern_create, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0))
  store %struct._cairo_pattern* null, %struct._cairo_pattern** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %call = call noalias i8* @g_malloc(i64 256)
  store i8* %call, i8** %data, align 8
  %2 = load %struct._GimpRGB*, %struct._GimpRGB** %fg.addr, align 8
  call void @gimp_rgba_get_uchar(%struct._GimpRGB* %2, i8* %fg_r, i8* %fg_g, i8* %fg_b, i8* %fg_a)
  %3 = load %struct._GimpRGB*, %struct._GimpRGB** %bg.addr, align 8
  call void @gimp_rgba_get_uchar(%struct._GimpRGB* %3, i8* %bg_r, i8* %bg_g, i8* %bg_b, i8* %bg_a)
  %4 = load i8*, i8** %data, align 8
  store i8* %4, i8** %d, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.75, %do.end.6
  %5 = load i32, i32* %y, align 4
  %cmp7 = icmp slt i32 %5, 8
  br i1 %cmp7, label %for.body, label %for.end.77

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %x, align 4
  %cmp9 = icmp slt i32 %6, 8
  br i1 %cmp9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.8
  %7 = load i32, i32* %x, align 4
  %8 = load i32, i32* %y, align 4
  %add = add nsw i32 %7, %8
  %9 = load i32, i32* %index.addr, align 4
  %add11 = add nsw i32 %add, %9
  %rem = srem i32 %add11, 8
  %cmp12 = icmp sge i32 %rem, 4
  br i1 %cmp12, label %if.then.13, label %if.else.40

if.then.13:                                       ; preds = %for.body.10
  br label %do.body.14

do.body.14:                                       ; preds = %if.then.13
  %10 = load i8, i8* %fg_a, align 1
  %conv = zext i8 %10 to i32
  %11 = load i8, i8* %fg_r, align 1
  %conv15 = zext i8 %11 to i32
  %mul = mul nsw i32 %conv, %conv15
  %add16 = add nsw i32 %mul, 128
  store i32 %add16, i32* %tr, align 4
  %12 = load i8, i8* %fg_a, align 1
  %conv17 = zext i8 %12 to i32
  %13 = load i8, i8* %fg_g, align 1
  %conv18 = zext i8 %13 to i32
  %mul19 = mul nsw i32 %conv17, %conv18
  %add20 = add nsw i32 %mul19, 128
  store i32 %add20, i32* %tg, align 4
  %14 = load i8, i8* %fg_a, align 1
  %conv21 = zext i8 %14 to i32
  %15 = load i8, i8* %fg_b, align 1
  %conv22 = zext i8 %15 to i32
  %mul23 = mul nsw i32 %conv21, %conv22
  %add24 = add nsw i32 %mul23, 128
  store i32 %add24, i32* %tb, align 4
  %16 = load i32, i32* %tb, align 4
  %shr = lshr i32 %16, 8
  %17 = load i32, i32* %tb, align 4
  %add25 = add i32 %shr, %17
  %shr26 = lshr i32 %add25, 8
  %conv27 = trunc i32 %shr26 to i8
  %18 = load i8*, i8** %d, align 8
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 0
  store i8 %conv27, i8* %arrayidx, align 1
  %19 = load i32, i32* %tg, align 4
  %shr28 = lshr i32 %19, 8
  %20 = load i32, i32* %tg, align 4
  %add29 = add i32 %shr28, %20
  %shr30 = lshr i32 %add29, 8
  %conv31 = trunc i32 %shr30 to i8
  %21 = load i8*, i8** %d, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %21, i64 1
  store i8 %conv31, i8* %arrayidx32, align 1
  %22 = load i32, i32* %tr, align 4
  %shr33 = lshr i32 %22, 8
  %23 = load i32, i32* %tr, align 4
  %add34 = add i32 %shr33, %23
  %shr35 = lshr i32 %add34, 8
  %conv36 = trunc i32 %shr35 to i8
  %24 = load i8*, i8** %d, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %24, i64 2
  store i8 %conv36, i8* %arrayidx37, align 1
  %25 = load i8, i8* %fg_a, align 1
  %26 = load i8*, i8** %d, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %26, i64 3
  store i8 %25, i8* %arrayidx38, align 1
  br label %do.end.39

do.end.39:                                        ; preds = %do.body.14
  br label %if.end.74

if.else.40:                                       ; preds = %for.body.10
  br label %do.body.41

do.body.41:                                       ; preds = %if.else.40
  %27 = load i8, i8* %bg_a, align 1
  %conv43 = zext i8 %27 to i32
  %28 = load i8, i8* %bg_r, align 1
  %conv44 = zext i8 %28 to i32
  %mul45 = mul nsw i32 %conv43, %conv44
  %add46 = add nsw i32 %mul45, 128
  store i32 %add46, i32* %tr42, align 4
  %29 = load i8, i8* %bg_a, align 1
  %conv48 = zext i8 %29 to i32
  %30 = load i8, i8* %bg_g, align 1
  %conv49 = zext i8 %30 to i32
  %mul50 = mul nsw i32 %conv48, %conv49
  %add51 = add nsw i32 %mul50, 128
  store i32 %add51, i32* %tg47, align 4
  %31 = load i8, i8* %bg_a, align 1
  %conv53 = zext i8 %31 to i32
  %32 = load i8, i8* %bg_b, align 1
  %conv54 = zext i8 %32 to i32
  %mul55 = mul nsw i32 %conv53, %conv54
  %add56 = add nsw i32 %mul55, 128
  store i32 %add56, i32* %tb52, align 4
  %33 = load i32, i32* %tb52, align 4
  %shr57 = lshr i32 %33, 8
  %34 = load i32, i32* %tb52, align 4
  %add58 = add i32 %shr57, %34
  %shr59 = lshr i32 %add58, 8
  %conv60 = trunc i32 %shr59 to i8
  %35 = load i8*, i8** %d, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %35, i64 0
  store i8 %conv60, i8* %arrayidx61, align 1
  %36 = load i32, i32* %tg47, align 4
  %shr62 = lshr i32 %36, 8
  %37 = load i32, i32* %tg47, align 4
  %add63 = add i32 %shr62, %37
  %shr64 = lshr i32 %add63, 8
  %conv65 = trunc i32 %shr64 to i8
  %38 = load i8*, i8** %d, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %38, i64 1
  store i8 %conv65, i8* %arrayidx66, align 1
  %39 = load i32, i32* %tr42, align 4
  %shr67 = lshr i32 %39, 8
  %40 = load i32, i32* %tr42, align 4
  %add68 = add i32 %shr67, %40
  %shr69 = lshr i32 %add68, 8
  %conv70 = trunc i32 %shr69 to i8
  %41 = load i8*, i8** %d, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %41, i64 2
  store i8 %conv70, i8* %arrayidx71, align 1
  %42 = load i8, i8* %bg_a, align 1
  %43 = load i8*, i8** %d, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %43, i64 3
  store i8 %42, i8* %arrayidx72, align 1
  br label %do.end.73

do.end.73:                                        ; preds = %do.body.41
  br label %if.end.74

if.end.74:                                        ; preds = %do.end.73, %do.end.39
  %44 = load i8*, i8** %d, align 8
  %add.ptr = getelementptr inbounds i8, i8* %44, i64 4
  store i8* %add.ptr, i8** %d, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.74
  %45 = load i32, i32* %x, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.end
  %46 = load i32, i32* %y, align 4
  %inc76 = add nsw i32 %46, 1
  store i32 %inc76, i32* %y, align 4
  br label %for.cond

for.end.77:                                       ; preds = %for.cond
  %47 = load i8*, i8** %data, align 8
  %call78 = call %struct._cairo_surface* @cairo_image_surface_create_for_data(i8* %47, i32 0, i32 8, i32 8, i32 32)
  store %struct._cairo_surface* %call78, %struct._cairo_surface** %surface, align 8
  %48 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %49 = load i8*, i8** %data, align 8
  %call79 = call i32 @cairo_surface_set_user_data(%struct._cairo_surface* %48, %struct._cairo_user_data_key* @surface_data_key, i8* %49, void (i8*)* @g_free)
  %50 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  %call80 = call %struct._cairo_pattern* @cairo_pattern_create_for_surface(%struct._cairo_surface* %50)
  store %struct._cairo_pattern* %call80, %struct._cairo_pattern** %pattern, align 8
  %51 = load %struct._cairo_pattern*, %struct._cairo_pattern** %pattern, align 8
  call void @cairo_pattern_set_extend(%struct._cairo_pattern* %51, i32 1)
  %52 = load %struct._cairo_surface*, %struct._cairo_surface** %surface, align 8
  call void @cairo_surface_destroy(%struct._cairo_surface* %52)
  %53 = load %struct._cairo_pattern*, %struct._cairo_pattern** %pattern, align 8
  store %struct._cairo_pattern* %53, %struct._cairo_pattern** %retval
  br label %return

return:                                           ; preds = %for.end.77, %if.else.4, %if.else
  %54 = load %struct._cairo_pattern*, %struct._cairo_pattern** %retval
  ret %struct._cairo_pattern* %54
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare noalias i8* @g_malloc(i64) #1

declare void @gimp_rgba_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*, i8*) #1

declare %struct._cairo_surface* @cairo_image_surface_create_for_data(i8*, i32, i32, i32, i32) #1

declare i32 @cairo_surface_set_user_data(%struct._cairo_surface*, %struct._cairo_user_data_key*, i8*, void (i8*)*) #1

declare void @g_free(i8*) #1

declare %struct._cairo_pattern* @cairo_pattern_create_for_surface(%struct._cairo_surface*) #1

declare void @cairo_pattern_set_extend(%struct._cairo_pattern*, i32) #1

declare void @cairo_surface_destroy(%struct._cairo_surface*) #1

; Function Attrs: nounwind uwtable
define void @gimp_cairo_add_arc(%struct._cairo* %cr, double %center_x, double %center_y, double %radius, double %start_angle, double %slice_angle) #0 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %center_x.addr = alloca double, align 8
  %center_y.addr = alloca double, align 8
  %radius.addr = alloca double, align 8
  %start_angle.addr = alloca double, align 8
  %slice_angle.addr = alloca double, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store double %center_x, double* %center_x.addr, align 8
  store double %center_y, double* %center_y.addr, align 8
  store double %radius, double* %radius.addr, align 8
  store double %start_angle, double* %start_angle.addr, align 8
  store double %slice_angle, double* %slice_angle.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %cmp = icmp ne %struct._cairo* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_cairo_add_arc, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.9

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load double, double* %slice_angle.addr, align 8
  %cmp1 = fcmp oge double %1, 0.000000e+00
  br i1 %cmp1, label %if.then.2, label %if.else.5

if.then.2:                                        ; preds = %do.end
  %2 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %3 = load double, double* %center_x.addr, align 8
  %4 = load double, double* %center_y.addr, align 8
  %5 = load double, double* %radius.addr, align 8
  %6 = load double, double* %start_angle.addr, align 8
  %sub = fsub double -0.000000e+00, %6
  %7 = load double, double* %start_angle.addr, align 8
  %sub3 = fsub double -0.000000e+00, %7
  %8 = load double, double* %slice_angle.addr, align 8
  %sub4 = fsub double %sub3, %8
  call void @cairo_arc_negative(%struct._cairo* %2, double %3, double %4, double %5, double %sub, double %sub4)
  br label %if.end.9

if.else.5:                                        ; preds = %do.end
  %9 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %10 = load double, double* %center_x.addr, align 8
  %11 = load double, double* %center_y.addr, align 8
  %12 = load double, double* %radius.addr, align 8
  %13 = load double, double* %start_angle.addr, align 8
  %sub6 = fsub double -0.000000e+00, %13
  %14 = load double, double* %start_angle.addr, align 8
  %sub7 = fsub double -0.000000e+00, %14
  %15 = load double, double* %slice_angle.addr, align 8
  %sub8 = fsub double %sub7, %15
  call void @cairo_arc(%struct._cairo* %9, double %10, double %11, double %12, double %sub6, double %sub8)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.else.5, %if.then.2
  ret void
}

declare void @cairo_arc_negative(%struct._cairo*, double, double, double, double, double) #1

declare void @cairo_arc(%struct._cairo*, double, double, double, double, double) #1

; Function Attrs: nounwind uwtable
define void @gimp_cairo_add_segments(%struct._cairo* %cr, %struct._GimpSegment* %segs, i32 %n_segs) #0 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %segs.addr = alloca %struct._GimpSegment*, align 8
  %n_segs.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store %struct._GimpSegment* %segs, %struct._GimpSegment** %segs.addr, align 8
  store i32 %n_segs, i32* %n_segs.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %cmp = icmp ne %struct._cairo* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_cairo_add_segments, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0))
  br label %for.end

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpSegment*, %struct._GimpSegment** %segs.addr, align 8
  %cmp2 = icmp ne %struct._GimpSegment* %1, null
  br i1 %cmp2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %do.body.1
  %2 = load i32, i32* %n_segs.addr, align 4
  %cmp3 = icmp sgt i32 %2, 0
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  br label %if.end.6

if.else.5:                                        ; preds = %land.lhs.true, %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_cairo_add_segments, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0))
  br label %for.end

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.7
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n_segs.addr, align 4
  %cmp8 = icmp slt i32 %3, %4
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct._GimpSegment*, %struct._GimpSegment** %segs.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %6, i64 %idxprom
  %x1 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx, i32 0, i32 0
  %7 = load i32, i32* %x1, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %8 to i64
  %9 = load %struct._GimpSegment*, %struct._GimpSegment** %segs.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %9, i64 %idxprom9
  %x2 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx10, i32 0, i32 2
  %10 = load i32, i32* %x2, align 4
  %cmp11 = icmp eq i32 %7, %10
  br i1 %cmp11, label %if.then.12, label %if.else.28

if.then.12:                                       ; preds = %for.body
  %11 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %12 to i64
  %13 = load %struct._GimpSegment*, %struct._GimpSegment** %segs.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %13, i64 %idxprom13
  %x115 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx14, i32 0, i32 0
  %14 = load i32, i32* %x115, align 4
  %conv = sitofp i32 %14 to double
  %add = fadd double %conv, 5.000000e-01
  %15 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %15 to i64
  %16 = load %struct._GimpSegment*, %struct._GimpSegment** %segs.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %16, i64 %idxprom16
  %y1 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx17, i32 0, i32 1
  %17 = load i32, i32* %y1, align 4
  %conv18 = sitofp i32 %17 to double
  %add19 = fadd double %conv18, 5.000000e-01
  call void @cairo_move_to(%struct._cairo* %11, double %add, double %add19)
  %18 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %19 to i64
  %20 = load %struct._GimpSegment*, %struct._GimpSegment** %segs.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %20, i64 %idxprom20
  %x222 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx21, i32 0, i32 2
  %21 = load i32, i32* %x222, align 4
  %conv23 = sitofp i32 %21 to double
  %add24 = fadd double %conv23, 5.000000e-01
  %22 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %22 to i64
  %23 = load %struct._GimpSegment*, %struct._GimpSegment** %segs.addr, align 8
  %arrayidx26 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %23, i64 %idxprom25
  %y2 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx26, i32 0, i32 3
  %24 = load i32, i32* %y2, align 4
  %conv27 = sitofp i32 %24 to double
  %sub = fsub double %conv27, 5.000000e-01
  call void @cairo_line_to(%struct._cairo* %18, double %add24, double %sub)
  br label %if.end.49

if.else.28:                                       ; preds = %for.body
  %25 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %26 to i64
  %27 = load %struct._GimpSegment*, %struct._GimpSegment** %segs.addr, align 8
  %arrayidx30 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %27, i64 %idxprom29
  %x131 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx30, i32 0, i32 0
  %28 = load i32, i32* %x131, align 4
  %conv32 = sitofp i32 %28 to double
  %add33 = fadd double %conv32, 5.000000e-01
  %29 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %29 to i64
  %30 = load %struct._GimpSegment*, %struct._GimpSegment** %segs.addr, align 8
  %arrayidx35 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %30, i64 %idxprom34
  %y136 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx35, i32 0, i32 1
  %31 = load i32, i32* %y136, align 4
  %conv37 = sitofp i32 %31 to double
  %add38 = fadd double %conv37, 5.000000e-01
  call void @cairo_move_to(%struct._cairo* %25, double %add33, double %add38)
  %32 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %33 to i64
  %34 = load %struct._GimpSegment*, %struct._GimpSegment** %segs.addr, align 8
  %arrayidx40 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %34, i64 %idxprom39
  %x241 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx40, i32 0, i32 2
  %35 = load i32, i32* %x241, align 4
  %conv42 = sitofp i32 %35 to double
  %sub43 = fsub double %conv42, 5.000000e-01
  %36 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %36 to i64
  %37 = load %struct._GimpSegment*, %struct._GimpSegment** %segs.addr, align 8
  %arrayidx45 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %37, i64 %idxprom44
  %y246 = getelementptr inbounds %struct._GimpSegment, %struct._GimpSegment* %arrayidx45, i32 0, i32 3
  %38 = load i32, i32* %y246, align 4
  %conv47 = sitofp i32 %38 to double
  %add48 = fadd double %conv47, 5.000000e-01
  call void @cairo_line_to(%struct._cairo* %32, double %sub43, double %add48)
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.28, %if.then.12
  br label %for.inc

for.inc:                                          ; preds = %if.end.49
  %39 = load i32, i32* %i, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else, %if.else.5, %for.cond
  ret void
}

declare void @cairo_move_to(%struct._cairo*, double, double) #1

declare void @cairo_line_to(%struct._cairo*, double, double) #1

; Function Attrs: nounwind uwtable
define void @gimp_cairo_draw_toolbox_wilber(%struct._GtkWidget* %widget, %struct._cairo* %cr) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %state = alloca i32, align 4
  %allocation = alloca %struct._GdkRectangle, align 4
  %wilber_width = alloca double, align 8
  %wilber_height = alloca double, align 8
  %factor = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_cairo_draw_toolbox_wilber, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %cmp12 = icmp ne %struct._cairo* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_cairo_draw_toolbox_wilber, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call17 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %14)
  store %struct._GtkStyle* %call17, %struct._GtkStyle** %style, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call18 = call i32 @gtk_widget_get_state(%struct._GtkWidget* %15)
  store i32 %call18, i32* %state, align 4
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %16, %struct._GdkRectangle* %allocation)
  %17 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @gimp_cairo_wilber_get_size(%struct._cairo* %17, double* %wilber_width, double* %wilber_height)
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %18 = load i32, i32* %width, align 4
  %conv = sitofp i32 %18 to double
  %19 = load double, double* %wilber_width, align 8
  %div = fdiv double %conv, %19
  %mul = fmul double %div, 9.000000e-01
  store double %mul, double* %factor, align 8
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call19 = call i32 @gtk_widget_get_has_window(%struct._GtkWidget* %20)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end.24, label %if.then.21

if.then.21:                                       ; preds = %do.end.16
  %21 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 0
  %22 = load i32, i32* %x, align 4
  %conv22 = sitofp i32 %22 to double
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 1
  %23 = load i32, i32* %y, align 4
  %conv23 = sitofp i32 %23 to double
  call void @cairo_translate(%struct._cairo* %21, double %conv22, double %conv23)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %do.end.16
  %24 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %25 = load double, double* %factor, align 8
  %26 = load double, double* %factor, align 8
  call void @cairo_scale(%struct._cairo* %24, double %25, double %26)
  %27 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %width25 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %28 = load i32, i32* %width25, align 4
  %conv26 = sitofp i32 %28 to double
  %29 = load double, double* %factor, align 8
  %div27 = fdiv double %conv26, %29
  %30 = load double, double* %wilber_width, align 8
  %sub = fsub double %div27, %30
  %div28 = fdiv double %sub, 2.000000e+00
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %31 = load i32, i32* %height, align 4
  %conv29 = sitofp i32 %31 to double
  %32 = load double, double* %factor, align 8
  %div30 = fdiv double %conv29, %32
  %33 = load double, double* %wilber_height, align 8
  %sub31 = fsub double %div30, %33
  %div32 = fdiv double %sub31, 2.000000e+00
  call void @gimp_cairo_wilber(%struct._cairo* %27, double %div28, double %div32)
  %34 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %35 = load i32, i32* %state, align 4
  %idxprom = zext i32 %35 to i64
  %36 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %fg = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %36, i32 0, i32 1
  %arrayidx = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %fg, i32 0, i64 %idxprom
  %red = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %arrayidx, i32 0, i32 1
  %37 = load i16, i16* %red, align 2
  %conv33 = zext i16 %37 to i32
  %conv34 = sitofp i32 %conv33 to double
  %div35 = fdiv double %conv34, 6.553500e+04
  %38 = load i32, i32* %state, align 4
  %idxprom36 = zext i32 %38 to i64
  %39 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %fg37 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %39, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %fg37, i32 0, i64 %idxprom36
  %green = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %arrayidx38, i32 0, i32 2
  %40 = load i16, i16* %green, align 2
  %conv39 = zext i16 %40 to i32
  %conv40 = sitofp i32 %conv39 to double
  %div41 = fdiv double %conv40, 6.553500e+04
  %41 = load i32, i32* %state, align 4
  %idxprom42 = zext i32 %41 to i64
  %42 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %fg43 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %42, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %fg43, i32 0, i64 %idxprom42
  %blue = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %arrayidx44, i32 0, i32 3
  %43 = load i16, i16* %blue, align 2
  %conv45 = zext i16 %43 to i32
  %conv46 = sitofp i32 %conv45 to double
  %div47 = fdiv double %conv46, 6.553500e+04
  call void @cairo_set_source_rgba(%struct._cairo* %34, double %div35, double %div41, double %div47, double 1.000000e-01)
  %44 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_fill(%struct._cairo* %44)
  br label %return

return:                                           ; preds = %if.end.24, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare i32 @gtk_widget_get_state(%struct._GtkWidget*) #1

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare void @gimp_cairo_wilber_get_size(%struct._cairo*, double*, double*) #1

declare i32 @gtk_widget_get_has_window(%struct._GtkWidget*) #1

declare void @cairo_translate(%struct._cairo*, double, double) #1

declare void @cairo_scale(%struct._cairo*, double, double) #1

declare void @gimp_cairo_wilber(%struct._cairo*, double, double) #1

declare void @cairo_set_source_rgba(%struct._cairo*, double, double, double, double) #1

declare void @cairo_fill(%struct._cairo*) #1

; Function Attrs: nounwind uwtable
define void @gimp_cairo_draw_drop_wilber(%struct._GtkWidget* %widget, %struct._cairo* %cr) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %style = alloca %struct._GtkStyle*, align 8
  %state = alloca i32, align 4
  %allocation = alloca %struct._GdkRectangle, align 4
  %wilber_width = alloca double, align 8
  %wilber_height = alloca double, align 8
  %width = alloca double, align 8
  %height = alloca double, align 8
  %side = alloca double, align 8
  %factor = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_widget_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_cairo_draw_drop_wilber, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %cmp12 = icmp ne %struct._cairo* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_cairo_draw_drop_wilber, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call17 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %14)
  store %struct._GtkStyle* %call17, %struct._GtkStyle** %style, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call18 = call i32 @gtk_widget_get_state(%struct._GtkWidget* %15)
  store i32 %call18, i32* %state, align 4
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %16, %struct._GdkRectangle* %allocation)
  %17 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @gimp_cairo_wilber_get_size(%struct._cairo* %17, double* %wilber_width, double* %wilber_height)
  %18 = load double, double* %wilber_width, align 8
  %div = fdiv double %18, 2.000000e+00
  store double %div, double* %wilber_width, align 8
  %19 = load double, double* %wilber_height, align 8
  %div19 = fdiv double %19, 2.000000e+00
  store double %div19, double* %wilber_height, align 8
  %width20 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %20 = load i32, i32* %width20, align 4
  %height21 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %21 = load i32, i32* %height21, align 4
  %cmp22 = icmp slt i32 %20, %21
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.16
  %width23 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %22 = load i32, i32* %width23, align 4
  br label %cond.end

cond.false:                                       ; preds = %do.end.16
  %height24 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %23 = load i32, i32* %height24, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %22, %cond.true ], [ %23, %cond.false ]
  %width25 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %24 = load i32, i32* %width25, align 4
  %height26 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %25 = load i32, i32* %height26, align 4
  %cmp27 = icmp sgt i32 %24, %25
  br i1 %cmp27, label %cond.true.28, label %cond.false.30

cond.true.28:                                     ; preds = %cond.end
  %width29 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %26 = load i32, i32* %width29, align 4
  br label %cond.end.32

cond.false.30:                                    ; preds = %cond.end
  %height31 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %27 = load i32, i32* %height31, align 4
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.30, %cond.true.28
  %cond33 = phi i32 [ %26, %cond.true.28 ], [ %27, %cond.false.30 ]
  %div34 = sdiv i32 %cond33, 2
  %cmp35 = icmp slt i32 %cond, %div34
  br i1 %cmp35, label %cond.true.36, label %cond.false.46

cond.true.36:                                     ; preds = %cond.end.32
  %width37 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %28 = load i32, i32* %width37, align 4
  %height38 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %29 = load i32, i32* %height38, align 4
  %cmp39 = icmp slt i32 %28, %29
  br i1 %cmp39, label %cond.true.40, label %cond.false.42

cond.true.40:                                     ; preds = %cond.true.36
  %width41 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %30 = load i32, i32* %width41, align 4
  br label %cond.end.44

cond.false.42:                                    ; preds = %cond.true.36
  %height43 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %31 = load i32, i32* %height43, align 4
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.42, %cond.true.40
  %cond45 = phi i32 [ %30, %cond.true.40 ], [ %31, %cond.false.42 ]
  br label %cond.end.57

cond.false.46:                                    ; preds = %cond.end.32
  %width47 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %32 = load i32, i32* %width47, align 4
  %height48 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %33 = load i32, i32* %height48, align 4
  %cmp49 = icmp sgt i32 %32, %33
  br i1 %cmp49, label %cond.true.50, label %cond.false.52

cond.true.50:                                     ; preds = %cond.false.46
  %width51 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %34 = load i32, i32* %width51, align 4
  br label %cond.end.54

cond.false.52:                                    ; preds = %cond.false.46
  %height53 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %35 = load i32, i32* %height53, align 4
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.false.52, %cond.true.50
  %cond55 = phi i32 [ %34, %cond.true.50 ], [ %35, %cond.false.52 ]
  %div56 = sdiv i32 %cond55, 2
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.end.54, %cond.end.44
  %cond58 = phi i32 [ %cond45, %cond.end.44 ], [ %div56, %cond.end.54 ]
  %conv = sitofp i32 %cond58 to double
  store double %conv, double* %side, align 8
  %36 = load double, double* %wilber_width, align 8
  %37 = load double, double* %side, align 8
  %cmp59 = fcmp ogt double %36, %37
  br i1 %cmp59, label %cond.true.61, label %cond.false.62

cond.true.61:                                     ; preds = %cond.end.57
  %38 = load double, double* %wilber_width, align 8
  br label %cond.end.63

cond.false.62:                                    ; preds = %cond.end.57
  %39 = load double, double* %side, align 8
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.62, %cond.true.61
  %cond64 = phi double [ %38, %cond.true.61 ], [ %39, %cond.false.62 ]
  store double %cond64, double* %width, align 8
  %40 = load double, double* %wilber_height, align 8
  %41 = load double, double* %side, align 8
  %cmp65 = fcmp ogt double %40, %41
  br i1 %cmp65, label %cond.true.67, label %cond.false.68

cond.true.67:                                     ; preds = %cond.end.63
  %42 = load double, double* %wilber_height, align 8
  br label %cond.end.69

cond.false.68:                                    ; preds = %cond.end.63
  %43 = load double, double* %side, align 8
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.68, %cond.true.67
  %cond70 = phi double [ %42, %cond.true.67 ], [ %43, %cond.false.68 ]
  store double %cond70, double* %height, align 8
  %44 = load double, double* %width, align 8
  %45 = load double, double* %wilber_width, align 8
  %div71 = fdiv double %44, %45
  %46 = load double, double* %height, align 8
  %47 = load double, double* %wilber_height, align 8
  %div72 = fdiv double %46, %47
  %cmp73 = fcmp olt double %div71, %div72
  br i1 %cmp73, label %cond.true.75, label %cond.false.77

cond.true.75:                                     ; preds = %cond.end.69
  %48 = load double, double* %width, align 8
  %49 = load double, double* %wilber_width, align 8
  %div76 = fdiv double %48, %49
  br label %cond.end.79

cond.false.77:                                    ; preds = %cond.end.69
  %50 = load double, double* %height, align 8
  %51 = load double, double* %wilber_height, align 8
  %div78 = fdiv double %50, %51
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.false.77, %cond.true.75
  %cond80 = phi double [ %div76, %cond.true.75 ], [ %div78, %cond.false.77 ]
  store double %cond80, double* %factor, align 8
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call81 = call i32 @gtk_widget_get_has_window(%struct._GtkWidget* %52)
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.end.86, label %if.then.83

if.then.83:                                       ; preds = %cond.end.79
  %53 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 0
  %54 = load i32, i32* %x, align 4
  %conv84 = sitofp i32 %54 to double
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 1
  %55 = load i32, i32* %y, align 4
  %conv85 = sitofp i32 %55 to double
  call void @cairo_translate(%struct._cairo* %53, double %conv84, double %conv85)
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.83, %cond.end.79
  %56 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %57 = load double, double* %factor, align 8
  %58 = load double, double* %factor, align 8
  call void @cairo_scale(%struct._cairo* %56, double %57, double %58)
  %59 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %60 = load double, double* %wilber_width, align 8
  %sub = fsub double -0.000000e+00, %60
  %mul = fmul double %sub, 6.000000e-01
  %height87 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %61 = load i32, i32* %height87, align 4
  %conv88 = sitofp i32 %61 to double
  %62 = load double, double* %factor, align 8
  %div89 = fdiv double %conv88, %62
  %63 = load double, double* %wilber_height, align 8
  %mul90 = fmul double %63, 1.100000e+00
  %sub91 = fsub double %div89, %mul90
  call void @gimp_cairo_wilber(%struct._cairo* %59, double %mul, double %sub91)
  %64 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %65 = load i32, i32* %state, align 4
  %idxprom = zext i32 %65 to i64
  %66 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %fg = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %66, i32 0, i32 1
  %arrayidx = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %fg, i32 0, i64 %idxprom
  %red = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %arrayidx, i32 0, i32 1
  %67 = load i16, i16* %red, align 2
  %conv92 = zext i16 %67 to i32
  %conv93 = sitofp i32 %conv92 to double
  %div94 = fdiv double %conv93, 6.553500e+04
  %68 = load i32, i32* %state, align 4
  %idxprom95 = zext i32 %68 to i64
  %69 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %fg96 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %69, i32 0, i32 1
  %arrayidx97 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %fg96, i32 0, i64 %idxprom95
  %green = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %arrayidx97, i32 0, i32 2
  %70 = load i16, i16* %green, align 2
  %conv98 = zext i16 %70 to i32
  %conv99 = sitofp i32 %conv98 to double
  %div100 = fdiv double %conv99, 6.553500e+04
  %71 = load i32, i32* %state, align 4
  %idxprom101 = zext i32 %71 to i64
  %72 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %fg102 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %72, i32 0, i32 1
  %arrayidx103 = getelementptr inbounds [5 x %struct._GdkColor], [5 x %struct._GdkColor]* %fg102, i32 0, i64 %idxprom101
  %blue = getelementptr inbounds %struct._GdkColor, %struct._GdkColor* %arrayidx103, i32 0, i32 3
  %73 = load i16, i16* %blue, align 2
  %conv104 = zext i16 %73 to i32
  %conv105 = sitofp i32 %conv104 to double
  %div106 = fdiv double %conv105, 6.553500e+04
  call void @cairo_set_source_rgba(%struct._cairo* %64, double %div94, double %div100, double %div106, double 1.500000e-01)
  %74 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_fill(%struct._cairo* %74)
  br label %return

return:                                           ; preds = %if.end.86, %if.else.14, %if.else.9
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
