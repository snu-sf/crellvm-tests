; ModuleID = './plug-ins/gimpressionist/preview.bc'
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
%struct.ppm = type { i32, i32, i8* }
%struct._GimpPreviewArea = type { %struct._GtkDrawingArea, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }

@previewbutton = internal global %struct._GtkWidget* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"use-underline\00", align 1
@preview_ppm = internal global %struct.ppm zeroinitializer, align 8
@alpha_ppm = internal global %struct.ppm zeroinitializer, align 8
@backup_ppm = internal global %struct.ppm zeroinitializer, align 8
@alpha_backup_ppm = internal global %struct.ppm zeroinitializer, align 8
@img_has_alpha = external global i32, align 4
@preview = internal global %struct._GtkWidget* null, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"size-allocate\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"_Update\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Refresh the Preview window\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"gimp-reset\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Revert to the original image\00", align 1

; Function Attrs: nounwind uwtable
define void @preview_set_button_label(i8* %text) #0 {
entry:
  %text.addr = alloca i8*, align 8
  store i8* %text, i8** %text.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** @previewbutton, align 8
  %1 = bitcast %struct._GtkWidget* %0 to i8*
  %2 = load i8*, i8** %text.addr, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 1, i8* null)
  ret void
}

declare void @g_object_set(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @preview_free_resources() #0 {
entry:
  call void @ppm_kill(%struct.ppm* @preview_ppm)
  call void @ppm_kill(%struct.ppm* @alpha_ppm)
  call void @ppm_kill(%struct.ppm* @backup_ppm)
  call void @ppm_kill(%struct.ppm* @alpha_backup_ppm)
  ret void
}

declare void @ppm_kill(%struct.ppm*) #1

; Function Attrs: nounwind uwtable
define void @updatepreview(%struct._GtkWidget* %wg, i8* %d) #0 {
entry:
  %wg.addr = alloca %struct._GtkWidget*, align 8
  %d.addr = alloca i8*, align 8
  store %struct._GtkWidget* %wg, %struct._GtkWidget** %wg.addr, align 8
  store i8* %d, i8** %d.addr, align 8
  %0 = load i8*, i8** getelementptr inbounds (%struct.ppm, %struct.ppm* @backup_ppm, i32 0, i32 2), align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.end.11, label %if.then

if.then:                                          ; preds = %entry
  call void @infile_copy_to_ppm(%struct.ppm* @backup_ppm)
  %1 = load i32, i32* getelementptr inbounds (%struct.ppm, %struct.ppm* @backup_ppm, i32 0, i32 0), align 4
  %cmp1 = icmp ne i32 %1, 150
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %2 = load i32, i32* getelementptr inbounds (%struct.ppm, %struct.ppm* @backup_ppm, i32 0, i32 1), align 4
  %cmp2 = icmp ne i32 %2, 150
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %lor.lhs.false, %if.then
  call void @resize_fast(%struct.ppm* @backup_ppm, i32 150, i32 150)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %lor.lhs.false
  %3 = load i32, i32* @img_has_alpha, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.4, label %if.end.10

if.then.4:                                        ; preds = %if.end
  call void @infile_copy_alpha_to_ppm(%struct.ppm* @alpha_backup_ppm)
  %4 = load i32, i32* getelementptr inbounds (%struct.ppm, %struct.ppm* @alpha_backup_ppm, i32 0, i32 0), align 4
  %cmp5 = icmp ne i32 %4, 150
  br i1 %cmp5, label %if.then.8, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %if.then.4
  %5 = load i32, i32* getelementptr inbounds (%struct.ppm, %struct.ppm* @alpha_backup_ppm, i32 0, i32 1), align 4
  %cmp7 = icmp ne i32 %5, 150
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false.6, %if.then.4
  call void @resize_fast(%struct.ppm* @alpha_backup_ppm, i32 150, i32 150)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %lor.lhs.false.6
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %entry
  %6 = load i8*, i8** getelementptr inbounds (%struct.ppm, %struct.ppm* @preview_ppm, i32 0, i32 2), align 8
  %cmp12 = icmp ne i8* %6, null
  br i1 %cmp12, label %if.end.17, label %if.then.13

if.then.13:                                       ; preds = %if.end.11
  call void @ppm_copy(%struct.ppm* @backup_ppm, %struct.ppm* @preview_ppm)
  %7 = load i32, i32* @img_has_alpha, align 4
  %tobool14 = icmp ne i32 %7, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.13
  call void @ppm_copy(%struct.ppm* @alpha_backup_ppm, %struct.ppm* @alpha_ppm)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.then.13
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end.11
  %8 = load i8*, i8** %d.addr, align 8
  %tobool18 = icmp ne i8* %8, null
  br i1 %tobool18, label %if.then.19, label %if.end.24

if.then.19:                                       ; preds = %if.end.17
  call void @store_values()
  %9 = load i8*, i8** %d.addr, align 8
  %10 = ptrtoint i8* %9 to i64
  %conv = trunc i64 %10 to i32
  %cmp20 = icmp ne i32 %conv, 2
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.19
  call void @repaint(%struct.ppm* @preview_ppm, %struct.ppm* @alpha_ppm)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.then.19
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.17
  %11 = load i32, i32* @img_has_alpha, align 4
  %tobool25 = icmp ne i32 %11, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.24
  call void @drawalpha(%struct.ppm* @preview_ppm, %struct.ppm* @alpha_ppm)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end.24
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call = call i64 @gimp_preview_area_get_type() #4
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call)
  %14 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpPreviewArea*
  %15 = load i8*, i8** getelementptr inbounds (%struct.ppm, %struct.ppm* @preview_ppm, i32 0, i32 2), align 8
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %14, i32 0, i32 0, i32 150, i32 150, i32 0, i8* %15, i32 450)
  call void @ppm_kill(%struct.ppm* @preview_ppm)
  %16 = load i32, i32* @img_has_alpha, align 4
  %tobool29 = icmp ne i32 %16, 0
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.27
  call void @ppm_kill(%struct.ppm* @alpha_ppm)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.end.27
  ret void
}

declare void @infile_copy_to_ppm(%struct.ppm*) #1

declare void @resize_fast(%struct.ppm*, i32, i32) #1

declare void @infile_copy_alpha_to_ppm(%struct.ppm*) #1

declare void @ppm_copy(%struct.ppm*, %struct.ppm*) #1

declare void @store_values() #1

declare void @repaint(%struct.ppm*, %struct.ppm*) #1

; Function Attrs: nounwind uwtable
define internal void @drawalpha(%struct.ppm* %p, %struct.ppm* %a) #0 {
entry:
  %p.addr = alloca %struct.ppm*, align 8
  %a.addr = alloca %struct.ppm*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %g = alloca i32, align 4
  %v = alloca double, align 8
  %gridsize = alloca i32, align 4
  %rowstride = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct.ppm* %p, %struct.ppm** %p.addr, align 8
  store %struct.ppm* %a, %struct.ppm** %a.addr, align 8
  store i32 16, i32* %gridsize, align 4
  %0 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width = getelementptr inbounds %struct.ppm, %struct.ppm* %0, i32 0, i32 0
  %1 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %1, 3
  store i32 %mul, i32* %rowstride, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.65, %entry
  %2 = load i32, i32* %y, align 4
  %3 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height = getelementptr inbounds %struct.ppm, %struct.ppm* %3, i32 0, i32 1
  %4 = load i32, i32* %height, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end.67

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %x, align 4
  %6 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width2 = getelementptr inbounds %struct.ppm, %struct.ppm* %6, i32 0, i32 0
  %7 = load i32, i32* %width2, align 4
  %cmp3 = icmp slt i32 %5, %7
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.1
  %8 = load i32, i32* %y, align 4
  %9 = load i32, i32* %rowstride, align 4
  %mul5 = mul nsw i32 %8, %9
  %10 = load i32, i32* %x, align 4
  %mul6 = mul nsw i32 %10, 3
  %add = add nsw i32 %mul5, %mul6
  store i32 %add, i32* %k, align 4
  %11 = load i32, i32* %k, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.ppm*, %struct.ppm** %a.addr, align 8
  %col = getelementptr inbounds %struct.ppm, %struct.ppm* %12, i32 0, i32 2
  %13 = load i8*, i8** %col, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %idxprom
  %14 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %14, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body.4
  br label %for.inc

if.end:                                           ; preds = %for.body.4
  %15 = load i32, i32* %k, align 4
  %idxprom7 = sext i32 %15 to i64
  %16 = load %struct.ppm*, %struct.ppm** %a.addr, align 8
  %col8 = getelementptr inbounds %struct.ppm, %struct.ppm* %16, i32 0, i32 2
  %17 = load i8*, i8** %col8, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %17, i64 %idxprom7
  %18 = load i8, i8* %arrayidx9, align 1
  %conv = zext i8 %18 to i32
  %conv10 = sitofp i32 %conv to double
  %div = fdiv double %conv10, 2.550000e+02
  %sub = fsub double 1.000000e+00, %div
  store double %sub, double* %v, align 8
  %19 = load i32, i32* %x, align 4
  %20 = load i32, i32* %gridsize, align 4
  %div11 = sdiv i32 %19, %20
  %21 = load i32, i32* %y, align 4
  %22 = load i32, i32* %gridsize, align 4
  %div12 = sdiv i32 %21, %22
  %add13 = add nsw i32 %div11, %div12
  %rem = srem i32 %add13, 2
  %mul14 = mul nsw i32 %rem, 60
  %add15 = add nsw i32 %mul14, 100
  store i32 %add15, i32* %g, align 4
  %23 = load double, double* %v, align 8
  %24 = load i32, i32* %k, align 4
  %add16 = add nsw i32 %24, 0
  %idxprom17 = sext i32 %add16 to i64
  %25 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col18 = getelementptr inbounds %struct.ppm, %struct.ppm* %25, i32 0, i32 2
  %26 = load i8*, i8** %col18, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %26, i64 %idxprom17
  %27 = load i8, i8* %arrayidx19, align 1
  %conv20 = uitofp i8 %27 to double
  %mul21 = fmul double %conv20, %23
  %conv22 = fptoui double %mul21 to i8
  store i8 %conv22, i8* %arrayidx19, align 1
  %28 = load double, double* %v, align 8
  %29 = load i32, i32* %k, align 4
  %add23 = add nsw i32 %29, 1
  %idxprom24 = sext i32 %add23 to i64
  %30 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col25 = getelementptr inbounds %struct.ppm, %struct.ppm* %30, i32 0, i32 2
  %31 = load i8*, i8** %col25, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %31, i64 %idxprom24
  %32 = load i8, i8* %arrayidx26, align 1
  %conv27 = uitofp i8 %32 to double
  %mul28 = fmul double %conv27, %28
  %conv29 = fptoui double %mul28 to i8
  store i8 %conv29, i8* %arrayidx26, align 1
  %33 = load double, double* %v, align 8
  %34 = load i32, i32* %k, align 4
  %add30 = add nsw i32 %34, 2
  %idxprom31 = sext i32 %add30 to i64
  %35 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col32 = getelementptr inbounds %struct.ppm, %struct.ppm* %35, i32 0, i32 2
  %36 = load i8*, i8** %col32, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %36, i64 %idxprom31
  %37 = load i8, i8* %arrayidx33, align 1
  %conv34 = uitofp i8 %37 to double
  %mul35 = fmul double %conv34, %33
  %conv36 = fptoui double %mul35 to i8
  store i8 %conv36, i8* %arrayidx33, align 1
  %38 = load double, double* %v, align 8
  %sub37 = fsub double 1.000000e+00, %38
  store double %sub37, double* %v, align 8
  %39 = load i32, i32* %g, align 4
  %conv38 = sitofp i32 %39 to double
  %40 = load double, double* %v, align 8
  %mul39 = fmul double %conv38, %40
  %41 = load i32, i32* %k, align 4
  %add40 = add nsw i32 %41, 0
  %idxprom41 = sext i32 %add40 to i64
  %42 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col42 = getelementptr inbounds %struct.ppm, %struct.ppm* %42, i32 0, i32 2
  %43 = load i8*, i8** %col42, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %43, i64 %idxprom41
  %44 = load i8, i8* %arrayidx43, align 1
  %conv44 = uitofp i8 %44 to double
  %add45 = fadd double %conv44, %mul39
  %conv46 = fptoui double %add45 to i8
  store i8 %conv46, i8* %arrayidx43, align 1
  %45 = load i32, i32* %g, align 4
  %conv47 = sitofp i32 %45 to double
  %46 = load double, double* %v, align 8
  %mul48 = fmul double %conv47, %46
  %47 = load i32, i32* %k, align 4
  %add49 = add nsw i32 %47, 1
  %idxprom50 = sext i32 %add49 to i64
  %48 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col51 = getelementptr inbounds %struct.ppm, %struct.ppm* %48, i32 0, i32 2
  %49 = load i8*, i8** %col51, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %49, i64 %idxprom50
  %50 = load i8, i8* %arrayidx52, align 1
  %conv53 = uitofp i8 %50 to double
  %add54 = fadd double %conv53, %mul48
  %conv55 = fptoui double %add54 to i8
  store i8 %conv55, i8* %arrayidx52, align 1
  %51 = load i32, i32* %g, align 4
  %conv56 = sitofp i32 %51 to double
  %52 = load double, double* %v, align 8
  %mul57 = fmul double %conv56, %52
  %53 = load i32, i32* %k, align 4
  %add58 = add nsw i32 %53, 2
  %idxprom59 = sext i32 %add58 to i64
  %54 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col60 = getelementptr inbounds %struct.ppm, %struct.ppm* %54, i32 0, i32 2
  %55 = load i8*, i8** %col60, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %55, i64 %idxprom59
  %56 = load i8, i8* %arrayidx61, align 1
  %conv62 = uitofp i8 %56 to double
  %add63 = fadd double %conv62, %mul57
  %conv64 = fptoui double %add63 to i8
  store i8 %conv64, i8* %arrayidx61, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %57 = load i32, i32* %x, align 4
  %inc = add nsw i32 %57, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.end
  %58 = load i32, i32* %y, align 4
  %inc66 = add nsw i32 %58, 1
  store i32 %inc66, i32* %y, align 4
  br label %for.cond

for.end.67:                                       ; preds = %for.cond
  ret void
}

declare void @gimp_preview_area_draw(%struct._GimpPreviewArea*, i32, i32, i32, i32, i32, i8*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_area_get_type() #2

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @create_preview() #0 {
entry:
  %hbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %call = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %vbox, align 8
  %call1 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %frame, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_frame_get_type() #4
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call2)
  %2 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %2, i32 1)
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_box_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkBox*
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %5, %struct._GtkWidget* %6, i32 0, i32 0, i32 5)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %7)
  %call6 = call %struct._GtkWidget* @gimp_preview_area_new()
  store %struct._GtkWidget* %call6, %struct._GtkWidget** @preview, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %8, i32 150, i32 150)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_container_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkContainer*
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  call void @gtk_container_add(%struct._GtkContainer* %11, %struct._GtkWidget* %12)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %13)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** @preview, align 8
  %15 = bitcast %struct._GtkWidget* %14 to i8*
  %call9 = call i64 @g_signal_connect_data(i8* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @preview_size_allocate to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %call10 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %hbox, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_box_get_type() #4
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call11)
  %18 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkBox*
  call void @gtk_box_set_homogeneous(%struct._GtkBox* %18, i32 1)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_box_get_type() #4
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call13)
  %21 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkBox*
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %21, %struct._GtkWidget* %22, i32 0, i32 0, i32 0)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %23)
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)) #5
  %call16 = call %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8* %call15)
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %button, align 8
  store %struct._GtkWidget* %call16, %struct._GtkWidget** @previewbutton, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %25 = bitcast %struct._GtkWidget* %24 to i8*
  %call17 = call i64 @g_signal_connect_data(i8* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @updatepreview to void ()*), i8* inttoptr (i64 1 to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_box_get_type() #4
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call18)
  %28 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkBox*
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %28, %struct._GtkWidget* %29, i32 1, i32 1, i32 0)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %30)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %31, i8* %call20, i8* null)
  %call21 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GtkWidget* %call21, %struct._GtkWidget** %button, align 8
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %33 = bitcast %struct._GtkWidget* %32 to i8*
  %call22 = call i64 @g_signal_connect_data(i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @updatepreview to void ()*), i8* inttoptr (i64 2 to i8*), void (i8*, %struct._GClosure*)* null, i32 0)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_box_get_type() #4
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call23)
  %36 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBox*
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %36, %struct._GtkWidget* %37, i32 1, i32 1, i32 0)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %38)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %39, i8* %call25, i8* null)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  ret %struct._GtkWidget* %40
}

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #2

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_preview_area_new() #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @preview_size_allocate(%struct._GtkWidget* %preview) #0 {
entry:
  %preview.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %preview, %struct._GtkWidget** %preview.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %preview.addr, align 8
  call void @updatepreview(%struct._GtkWidget* %0, i8* null)
  ret void
}

declare void @gtk_box_set_homogeneous(%struct._GtkBox*, i32) #1

declare %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare %struct._GtkWidget* @gtk_button_new_from_stock(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
