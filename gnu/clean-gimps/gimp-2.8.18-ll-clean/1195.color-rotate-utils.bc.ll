; ModuleID = './plug-ins/color-rotate/color-rotate-utils.bc'
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
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpPreviewArea = type { %struct._GtkDrawingArea, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }

@Current = external global %struct.RcmParams, align 8
@__func__.rcm_render_preview = private unnamed_addr constant [19 x i8] c"rcm_render_preview\00", align 1
@.str = private unnamed_addr constant [16 x i8] c"preview != NULL\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mode\00", align 1

; Function Attrs: nounwind uwtable
define float @arctg(float %y, float %x) #0 {
entry:
  %y.addr = alloca float, align 4
  %x.addr = alloca float, align 4
  %temp = alloca float, align 4
  store float %y, float* %y.addr, align 4
  store float %x, float* %x.addr, align 4
  %0 = load float, float* %y.addr, align 4
  %conv = fpext float %0 to double
  %1 = load float, float* %x.addr, align 4
  %conv1 = fpext float %1 to double
  %call = call double @atan2(double %conv, double %conv1) #4
  %conv2 = fptrunc double %call to float
  store float %conv2, float* %temp, align 4
  %2 = load float, float* %temp, align 4
  %cmp = fcmp olt float %2, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load float, float* %temp, align 4
  %conv4 = fpext float %3 to double
  %add = fadd double %conv4, 0x401921FB54442D18
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load float, float* %temp, align 4
  %conv5 = fpext float %4 to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %add, %cond.true ], [ %conv5, %cond.false ]
  %conv6 = fptrunc double %cond to float
  ret float %conv6
}

; Function Attrs: nounwind
declare double @atan2(double, double) #1

; Function Attrs: nounwind uwtable
define float @min_prox(float %alpha, float %beta, float %angle) #0 {
entry:
  %alpha.addr = alloca float, align 4
  %beta.addr = alloca float, align 4
  %angle.addr = alloca float, align 4
  %temp1 = alloca float, align 4
  %temp2 = alloca float, align 4
  store float %alpha, float* %alpha.addr, align 4
  store float %beta, float* %beta.addr, align 4
  store float %angle, float* %angle.addr, align 4
  %0 = load float, float* %alpha.addr, align 4
  %1 = load float, float* %angle.addr, align 4
  %sub = fsub float %0, %1
  %call = call float @angle_mod_2PI(float %sub)
  %conv = fpext float %call to double
  %2 = load float, float* %alpha.addr, align 4
  %3 = load float, float* %angle.addr, align 4
  %sub1 = fsub float %2, %3
  %call2 = call float @angle_mod_2PI(float %sub1)
  %conv3 = fpext float %call2 to double
  %sub4 = fsub double 0x401921FB54442D18, %conv3
  %cmp = fcmp olt double %conv, %sub4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load float, float* %alpha.addr, align 4
  %5 = load float, float* %angle.addr, align 4
  %sub6 = fsub float %4, %5
  %call7 = call float @angle_mod_2PI(float %sub6)
  %conv8 = fpext float %call7 to double
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load float, float* %alpha.addr, align 4
  %7 = load float, float* %angle.addr, align 4
  %sub9 = fsub float %6, %7
  %call10 = call float @angle_mod_2PI(float %sub9)
  %conv11 = fpext float %call10 to double
  %sub12 = fsub double 0x401921FB54442D18, %conv11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %conv8, %cond.true ], [ %sub12, %cond.false ]
  %conv13 = fptrunc double %cond to float
  store float %conv13, float* %temp1, align 4
  %8 = load float, float* %beta.addr, align 4
  %9 = load float, float* %angle.addr, align 4
  %sub14 = fsub float %8, %9
  %call15 = call float @angle_mod_2PI(float %sub14)
  %conv16 = fpext float %call15 to double
  %10 = load float, float* %beta.addr, align 4
  %11 = load float, float* %angle.addr, align 4
  %sub17 = fsub float %10, %11
  %call18 = call float @angle_mod_2PI(float %sub17)
  %conv19 = fpext float %call18 to double
  %sub20 = fsub double 0x401921FB54442D18, %conv19
  %cmp21 = fcmp olt double %conv16, %sub20
  br i1 %cmp21, label %cond.true.23, label %cond.false.27

cond.true.23:                                     ; preds = %cond.end
  %12 = load float, float* %beta.addr, align 4
  %13 = load float, float* %angle.addr, align 4
  %sub24 = fsub float %12, %13
  %call25 = call float @angle_mod_2PI(float %sub24)
  %conv26 = fpext float %call25 to double
  br label %cond.end.32

cond.false.27:                                    ; preds = %cond.end
  %14 = load float, float* %beta.addr, align 4
  %15 = load float, float* %angle.addr, align 4
  %sub28 = fsub float %14, %15
  %call29 = call float @angle_mod_2PI(float %sub28)
  %conv30 = fpext float %call29 to double
  %sub31 = fsub double 0x401921FB54442D18, %conv30
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.27, %cond.true.23
  %cond33 = phi double [ %conv26, %cond.true.23 ], [ %sub31, %cond.false.27 ]
  %conv34 = fptrunc double %cond33 to float
  store float %conv34, float* %temp2, align 4
  %16 = load float, float* %temp1, align 4
  %17 = load float, float* %temp2, align 4
  %cmp35 = fcmp olt float %16, %17
  br i1 %cmp35, label %cond.true.37, label %cond.false.38

cond.true.37:                                     ; preds = %cond.end.32
  %18 = load float, float* %temp1, align 4
  br label %cond.end.39

cond.false.38:                                    ; preds = %cond.end.32
  %19 = load float, float* %temp2, align 4
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.38, %cond.true.37
  %cond40 = phi float [ %18, %cond.true.37 ], [ %19, %cond.false.38 ]
  ret float %cond40
}

; Function Attrs: nounwind uwtable
define float @angle_mod_2PI(float %angle) #0 {
entry:
  %retval = alloca float, align 4
  %angle.addr = alloca float, align 4
  store float %angle, float* %angle.addr, align 4
  %0 = load float, float* %angle.addr, align 4
  %cmp = fcmp olt float %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load float, float* %angle.addr, align 4
  %conv = fpext float %1 to double
  %add = fadd double %conv, 0x401921FB54442D18
  %conv1 = fptrunc double %add to float
  store float %conv1, float* %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load float, float* %angle.addr, align 4
  %conv2 = fpext float %2 to double
  %cmp3 = fcmp ogt double %conv2, 0x401921FB54442D18
  br i1 %cmp3, label %if.then.5, label %if.else.8

if.then.5:                                        ; preds = %if.else
  %3 = load float, float* %angle.addr, align 4
  %conv6 = fpext float %3 to double
  %sub = fsub double %conv6, 0x401921FB54442D18
  %conv7 = fptrunc double %sub to float
  store float %conv7, float* %retval
  br label %return

if.else.8:                                        ; preds = %if.else
  %4 = load float, float* %angle.addr, align 4
  store float %4, float* %retval
  br label %return

return:                                           ; preds = %if.else.8, %if.then.5, %if.then
  %5 = load float, float* %retval
  ret float %5
}

; Function Attrs: nounwind uwtable
define float* @closest(float* %alpha, float* %beta, float %angle) #0 {
entry:
  %retval = alloca float*, align 8
  %alpha.addr = alloca float*, align 8
  %beta.addr = alloca float*, align 8
  %angle.addr = alloca float, align 4
  %temp_alpha = alloca float, align 4
  %temp_beta = alloca float, align 4
  store float* %alpha, float** %alpha.addr, align 8
  store float* %beta, float** %beta.addr, align 8
  store float %angle, float* %angle.addr, align 4
  %0 = load float*, float** %alpha.addr, align 8
  %1 = load float, float* %0, align 4
  %2 = load float, float* %angle.addr, align 4
  %sub = fsub float %1, %2
  %call = call float @angle_mod_2PI(float %sub)
  %conv = fpext float %call to double
  %3 = load float*, float** %alpha.addr, align 8
  %4 = load float, float* %3, align 4
  %5 = load float, float* %angle.addr, align 4
  %sub1 = fsub float %4, %5
  %call2 = call float @angle_mod_2PI(float %sub1)
  %conv3 = fpext float %call2 to double
  %sub4 = fsub double 0x401921FB54442D18, %conv3
  %cmp = fcmp olt double %conv, %sub4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load float*, float** %alpha.addr, align 8
  %7 = load float, float* %6, align 4
  %8 = load float, float* %angle.addr, align 4
  %sub6 = fsub float %7, %8
  %call7 = call float @angle_mod_2PI(float %sub6)
  %conv8 = fpext float %call7 to double
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load float*, float** %alpha.addr, align 8
  %10 = load float, float* %9, align 4
  %11 = load float, float* %angle.addr, align 4
  %sub9 = fsub float %10, %11
  %call10 = call float @angle_mod_2PI(float %sub9)
  %conv11 = fpext float %call10 to double
  %sub12 = fsub double 0x401921FB54442D18, %conv11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %conv8, %cond.true ], [ %sub12, %cond.false ]
  %conv13 = fptrunc double %cond to float
  store float %conv13, float* %temp_alpha, align 4
  %12 = load float*, float** %beta.addr, align 8
  %13 = load float, float* %12, align 4
  %14 = load float, float* %angle.addr, align 4
  %sub14 = fsub float %13, %14
  %call15 = call float @angle_mod_2PI(float %sub14)
  %conv16 = fpext float %call15 to double
  %15 = load float*, float** %beta.addr, align 8
  %16 = load float, float* %15, align 4
  %17 = load float, float* %angle.addr, align 4
  %sub17 = fsub float %16, %17
  %call18 = call float @angle_mod_2PI(float %sub17)
  %conv19 = fpext float %call18 to double
  %sub20 = fsub double 0x401921FB54442D18, %conv19
  %cmp21 = fcmp olt double %conv16, %sub20
  br i1 %cmp21, label %cond.true.23, label %cond.false.27

cond.true.23:                                     ; preds = %cond.end
  %18 = load float*, float** %beta.addr, align 8
  %19 = load float, float* %18, align 4
  %20 = load float, float* %angle.addr, align 4
  %sub24 = fsub float %19, %20
  %call25 = call float @angle_mod_2PI(float %sub24)
  %conv26 = fpext float %call25 to double
  br label %cond.end.32

cond.false.27:                                    ; preds = %cond.end
  %21 = load float*, float** %beta.addr, align 8
  %22 = load float, float* %21, align 4
  %23 = load float, float* %angle.addr, align 4
  %sub28 = fsub float %22, %23
  %call29 = call float @angle_mod_2PI(float %sub28)
  %conv30 = fpext float %call29 to double
  %sub31 = fsub double 0x401921FB54442D18, %conv30
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.27, %cond.true.23
  %cond33 = phi double [ %conv26, %cond.true.23 ], [ %sub31, %cond.false.27 ]
  %conv34 = fptrunc double %cond33 to float
  store float %conv34, float* %temp_beta, align 4
  %24 = load float, float* %temp_alpha, align 4
  %25 = load float, float* %temp_beta, align 4
  %sub35 = fsub float %24, %25
  %cmp36 = fcmp olt float %sub35, 0.000000e+00
  br i1 %cmp36, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.32
  %26 = load float*, float** %alpha.addr, align 8
  store float* %26, float** %retval
  br label %return

if.else:                                          ; preds = %cond.end.32
  %27 = load float*, float** %beta.addr, align 8
  store float* %27, float** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %28 = load float*, float** %retval
  ret float* %28
}

; Function Attrs: nounwind uwtable
define float @rcm_linear(float %A, float %B, float %C, float %D, float %x) #0 {
entry:
  %retval = alloca float, align 4
  %A.addr = alloca float, align 4
  %B.addr = alloca float, align 4
  %C.addr = alloca float, align 4
  %D.addr = alloca float, align 4
  %x.addr = alloca float, align 4
  store float %A, float* %A.addr, align 4
  store float %B, float* %B.addr, align 4
  store float %C, float* %C.addr, align 4
  store float %D, float* %D.addr, align 4
  store float %x, float* %x.addr, align 4
  %0 = load float, float* %B.addr, align 4
  %1 = load float, float* %A.addr, align 4
  %cmp = fcmp ogt float %0, %1
  br i1 %cmp, label %if.then, label %if.else.30

if.then:                                          ; preds = %entry
  %2 = load float, float* %A.addr, align 4
  %3 = load float, float* %x.addr, align 4
  %cmp1 = fcmp ole float %2, %3
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %4 = load float, float* %x.addr, align 4
  %5 = load float, float* %B.addr, align 4
  %cmp2 = fcmp ole float %4, %5
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %land.lhs.true
  %6 = load float, float* %C.addr, align 4
  %7 = load float, float* %D.addr, align 4
  %8 = load float, float* %C.addr, align 4
  %sub = fsub float %7, %8
  %9 = load float, float* %B.addr, align 4
  %10 = load float, float* %A.addr, align 4
  %sub4 = fsub float %9, %10
  %div = fdiv float %sub, %sub4
  %11 = load float, float* %x.addr, align 4
  %12 = load float, float* %A.addr, align 4
  %sub5 = fsub float %11, %12
  %mul = fmul float %div, %sub5
  %add = fadd float %6, %mul
  store float %add, float* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.then
  %13 = load float, float* %A.addr, align 4
  %conv = fpext float %13 to double
  %14 = load float, float* %x.addr, align 4
  %conv6 = fpext float %14 to double
  %add7 = fadd double %conv6, 0x401921FB54442D18
  %cmp8 = fcmp ole double %conv, %add7
  br i1 %cmp8, label %land.lhs.true.10, label %if.else.29

land.lhs.true.10:                                 ; preds = %if.else
  %15 = load float, float* %x.addr, align 4
  %conv11 = fpext float %15 to double
  %add12 = fadd double %conv11, 0x401921FB54442D18
  %16 = load float, float* %B.addr, align 4
  %conv13 = fpext float %16 to double
  %cmp14 = fcmp ole double %add12, %conv13
  br i1 %cmp14, label %if.then.16, label %if.else.29

if.then.16:                                       ; preds = %land.lhs.true.10
  %17 = load float, float* %C.addr, align 4
  %conv17 = fpext float %17 to double
  %18 = load float, float* %D.addr, align 4
  %19 = load float, float* %C.addr, align 4
  %sub18 = fsub float %18, %19
  %20 = load float, float* %B.addr, align 4
  %21 = load float, float* %A.addr, align 4
  %sub19 = fsub float %20, %21
  %div20 = fdiv float %sub18, %sub19
  %conv21 = fpext float %div20 to double
  %22 = load float, float* %x.addr, align 4
  %conv22 = fpext float %22 to double
  %add23 = fadd double %conv22, 0x401921FB54442D18
  %23 = load float, float* %A.addr, align 4
  %conv24 = fpext float %23 to double
  %sub25 = fsub double %add23, %conv24
  %mul26 = fmul double %conv21, %sub25
  %add27 = fadd double %conv17, %mul26
  %conv28 = fptrunc double %add27 to float
  store float %conv28, float* %retval
  br label %return

if.else.29:                                       ; preds = %land.lhs.true.10, %if.else
  %24 = load float, float* %x.addr, align 4
  store float %24, float* %retval
  br label %return

if.else.30:                                       ; preds = %entry
  %25 = load float, float* %B.addr, align 4
  %26 = load float, float* %x.addr, align 4
  %cmp31 = fcmp ole float %25, %26
  br i1 %cmp31, label %land.lhs.true.33, label %if.else.43

land.lhs.true.33:                                 ; preds = %if.else.30
  %27 = load float, float* %x.addr, align 4
  %28 = load float, float* %A.addr, align 4
  %cmp34 = fcmp ole float %27, %28
  br i1 %cmp34, label %if.then.36, label %if.else.43

if.then.36:                                       ; preds = %land.lhs.true.33
  %29 = load float, float* %C.addr, align 4
  %30 = load float, float* %D.addr, align 4
  %31 = load float, float* %C.addr, align 4
  %sub37 = fsub float %30, %31
  %32 = load float, float* %B.addr, align 4
  %33 = load float, float* %A.addr, align 4
  %sub38 = fsub float %32, %33
  %div39 = fdiv float %sub37, %sub38
  %34 = load float, float* %x.addr, align 4
  %35 = load float, float* %A.addr, align 4
  %sub40 = fsub float %34, %35
  %mul41 = fmul float %div39, %sub40
  %add42 = fadd float %29, %mul41
  store float %add42, float* %retval
  br label %return

if.else.43:                                       ; preds = %land.lhs.true.33, %if.else.30
  %36 = load float, float* %B.addr, align 4
  %conv44 = fpext float %36 to double
  %37 = load float, float* %x.addr, align 4
  %conv45 = fpext float %37 to double
  %add46 = fadd double %conv45, 0x401921FB54442D18
  %cmp47 = fcmp ole double %conv44, %add46
  br i1 %cmp47, label %land.lhs.true.49, label %if.else.68

land.lhs.true.49:                                 ; preds = %if.else.43
  %38 = load float, float* %x.addr, align 4
  %conv50 = fpext float %38 to double
  %add51 = fadd double %conv50, 0x401921FB54442D18
  %39 = load float, float* %A.addr, align 4
  %conv52 = fpext float %39 to double
  %cmp53 = fcmp ole double %add51, %conv52
  br i1 %cmp53, label %if.then.55, label %if.else.68

if.then.55:                                       ; preds = %land.lhs.true.49
  %40 = load float, float* %C.addr, align 4
  %conv56 = fpext float %40 to double
  %41 = load float, float* %D.addr, align 4
  %42 = load float, float* %C.addr, align 4
  %sub57 = fsub float %41, %42
  %43 = load float, float* %B.addr, align 4
  %44 = load float, float* %A.addr, align 4
  %sub58 = fsub float %43, %44
  %div59 = fdiv float %sub57, %sub58
  %conv60 = fpext float %div59 to double
  %45 = load float, float* %x.addr, align 4
  %conv61 = fpext float %45 to double
  %add62 = fadd double %conv61, 0x401921FB54442D18
  %46 = load float, float* %A.addr, align 4
  %conv63 = fpext float %46 to double
  %sub64 = fsub double %add62, %conv63
  %mul65 = fmul double %conv60, %sub64
  %add66 = fadd double %conv56, %mul65
  %conv67 = fptrunc double %add66 to float
  store float %conv67, float* %retval
  br label %return

if.else.68:                                       ; preds = %land.lhs.true.49, %if.else.43
  %47 = load float, float* %x.addr, align 4
  store float %47, float* %retval
  br label %return

return:                                           ; preds = %if.else.68, %if.then.55, %if.then.36, %if.else.29, %if.then.16, %if.then.3
  %48 = load float, float* %retval
  ret float %48
}

; Function Attrs: nounwind uwtable
define float @rcm_left_end(%struct.RcmAngle* %angle) #0 {
entry:
  %retval = alloca float, align 4
  %angle.addr = alloca %struct.RcmAngle*, align 8
  %alpha = alloca float, align 4
  %beta = alloca float, align 4
  %cw_ccw = alloca i32, align 4
  store %struct.RcmAngle* %angle, %struct.RcmAngle** %angle.addr, align 8
  %0 = load %struct.RcmAngle*, %struct.RcmAngle** %angle.addr, align 8
  %alpha1 = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %0, i32 0, i32 0
  %1 = load float, float* %alpha1, align 4
  store float %1, float* %alpha, align 4
  %2 = load %struct.RcmAngle*, %struct.RcmAngle** %angle.addr, align 8
  %beta2 = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %2, i32 0, i32 1
  %3 = load float, float* %beta2, align 4
  store float %3, float* %beta, align 4
  %4 = load %struct.RcmAngle*, %struct.RcmAngle** %angle.addr, align 8
  %cw_ccw3 = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %4, i32 0, i32 2
  %5 = load i32, i32* %cw_ccw3, align 4
  store i32 %5, i32* %cw_ccw, align 4
  %6 = load i32, i32* %cw_ccw, align 4
  switch i32 %6, label %sw.default [
    i32 -1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %7 = load float, float* %alpha, align 4
  %8 = load float, float* %beta, align 4
  %cmp = fcmp olt float %7, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %9 = load float, float* %alpha, align 4
  %conv = fpext float %9 to double
  %add = fadd double %conv, 0x401921FB54442D18
  %conv4 = fptrunc double %add to float
  store float %conv4, float* %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.default

sw.default:                                       ; preds = %entry, %if.end
  %10 = load float, float* %alpha, align 4
  store float %10, float* %retval
  br label %return

return:                                           ; preds = %sw.default, %if.then
  %11 = load float, float* %retval
  ret float %11
}

; Function Attrs: nounwind uwtable
define float @rcm_right_end(%struct.RcmAngle* %angle) #0 {
entry:
  %retval = alloca float, align 4
  %angle.addr = alloca %struct.RcmAngle*, align 8
  %alpha = alloca float, align 4
  %beta = alloca float, align 4
  %cw_ccw = alloca i32, align 4
  store %struct.RcmAngle* %angle, %struct.RcmAngle** %angle.addr, align 8
  %0 = load %struct.RcmAngle*, %struct.RcmAngle** %angle.addr, align 8
  %alpha1 = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %0, i32 0, i32 0
  %1 = load float, float* %alpha1, align 4
  store float %1, float* %alpha, align 4
  %2 = load %struct.RcmAngle*, %struct.RcmAngle** %angle.addr, align 8
  %beta2 = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %2, i32 0, i32 1
  %3 = load float, float* %beta2, align 4
  store float %3, float* %beta, align 4
  %4 = load %struct.RcmAngle*, %struct.RcmAngle** %angle.addr, align 8
  %cw_ccw3 = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %4, i32 0, i32 2
  %5 = load i32, i32* %cw_ccw3, align 4
  store i32 %5, i32* %cw_ccw, align 4
  %6 = load i32, i32* %cw_ccw, align 4
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %7 = load float, float* %beta, align 4
  %8 = load float, float* %alpha, align 4
  %cmp = fcmp olt float %7, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %9 = load float, float* %beta, align 4
  %conv = fpext float %9 to double
  %add = fadd double %conv, 0x401921FB54442D18
  %conv4 = fptrunc double %add to float
  store float %conv4, float* %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.default

sw.default:                                       ; preds = %entry, %if.end
  %10 = load float, float* %beta, align 4
  store float %10, float* %retval
  br label %return

return:                                           ; preds = %sw.default, %if.then
  %11 = load float, float* %retval
  ret float %11
}

; Function Attrs: nounwind uwtable
define float @rcm_angle_inside_slice(float %angle, %struct.RcmAngle* %slice) #0 {
entry:
  %angle.addr = alloca float, align 4
  %slice.addr = alloca %struct.RcmAngle*, align 8
  store float %angle, float* %angle.addr, align 4
  store %struct.RcmAngle* %slice, %struct.RcmAngle** %slice.addr, align 8
  %0 = load %struct.RcmAngle*, %struct.RcmAngle** %slice.addr, align 8
  %cw_ccw = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %0, i32 0, i32 2
  %1 = load i32, i32* %cw_ccw, align 4
  %conv = sitofp i32 %1 to float
  %2 = load %struct.RcmAngle*, %struct.RcmAngle** %slice.addr, align 8
  %beta = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %2, i32 0, i32 1
  %3 = load float, float* %beta, align 4
  %4 = load float, float* %angle.addr, align 4
  %sub = fsub float %3, %4
  %mul = fmul float %conv, %sub
  %call = call float @angle_mod_2PI(float %mul)
  %5 = load %struct.RcmAngle*, %struct.RcmAngle** %slice.addr, align 8
  %cw_ccw1 = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %5, i32 0, i32 2
  %6 = load i32, i32* %cw_ccw1, align 4
  %conv2 = sitofp i32 %6 to float
  %7 = load %struct.RcmAngle*, %struct.RcmAngle** %slice.addr, align 8
  %beta3 = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %7, i32 0, i32 1
  %8 = load float, float* %beta3, align 4
  %9 = load %struct.RcmAngle*, %struct.RcmAngle** %slice.addr, align 8
  %alpha = getelementptr inbounds %struct.RcmAngle, %struct.RcmAngle* %9, i32 0, i32 0
  %10 = load float, float* %alpha, align 4
  %sub4 = fsub float %8, %10
  %mul5 = fmul float %conv2, %sub4
  %call6 = call float @angle_mod_2PI(float %mul5)
  %div = fdiv float %call, %call6
  ret float %div
}

; Function Attrs: nounwind uwtable
define i32 @rcm_is_gray(float %s) #0 {
entry:
  %s.addr = alloca float, align 4
  store float %s, float* %s.addr, align 4
  %0 = load float, float* %s.addr, align 4
  %1 = load %struct.RcmGray*, %struct.RcmGray** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 9), align 8
  %gray_sat = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %1, i32 0, i32 2
  %2 = load float, float* %gray_sat, align 4
  %cmp = fcmp ole float %0, %2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define %struct.ReducedImage* @rcm_reduce_image(%struct._GimpDrawable* %drawable, %struct._GimpDrawable* %mask, i32 %LongerSize, i32 %Slctn) #0 {
entry:
  %retval = alloca %struct.ReducedImage*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %mask.addr = alloca %struct._GimpDrawable*, align 8
  %LongerSize.addr = alloca i32, align 4
  %Slctn.addr = alloca i32, align 4
  %image = alloca i32, align 4
  %srcPR = alloca %struct._GimpPixelRgn, align 8
  %srcMask = alloca %struct._GimpPixelRgn, align 8
  %temp = alloca %struct.ReducedImage*, align 8
  %tempRGB = alloca i8*, align 8
  %src_row = alloca i8*, align 8
  %tempmask = alloca i8*, align 8
  %src_mask_row = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %RH = alloca i32, align 4
  %RW = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bytes = alloca i32, align 4
  %NoSelectionMade = alloca i32, align 4
  %offx = alloca i32, align 4
  %offy = alloca i32, align 4
  %tempHSV = alloca double*, align 8
  %H = alloca double, align 8
  %S = alloca double, align 8
  %V = alloca double, align 8
  %whichcol = alloca i32, align 4
  %whichrow = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpDrawable* %mask, %struct._GimpDrawable** %mask.addr, align 8
  store i32 %LongerSize, i32* %LongerSize.addr, align 4
  store i32 %Slctn, i32* %Slctn.addr, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 3
  %1 = load i32, i32* %bpp, align 4
  store i32 %1, i32* %bytes, align 4
  %call = call noalias i8* @g_malloc0_n(i64 1, i64 32)
  %2 = bitcast i8* %call to %struct.ReducedImage*
  store %struct.ReducedImage* %2, %struct.ReducedImage** %temp, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 0
  %4 = load i32, i32* %drawable_id, align 4
  %call1 = call i32 @gimp_drawable_mask_bounds(i32 %4, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %5 = load i32, i32* %x2, align 4
  %6 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %5, %6
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width2 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 1
  %8 = load i32, i32* %width2, align 4
  %cmp = icmp ne i32 %sub, %8
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load i32, i32* %y2, align 4
  %10 = load i32, i32* %y1, align 4
  %sub3 = sub nsw i32 %9, %10
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height4 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 2
  %12 = load i32, i32* %height4, align 4
  %cmp5 = icmp ne i32 %sub3, %12
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %NoSelectionMade, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  store i32 1, i32* %NoSelectionMade, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load i32, i32* %Slctn.addr, align 4
  switch i32 %13, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %if.end
  store i32 0, i32* %x1, align 4
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width6 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %14, i32 0, i32 1
  %15 = load i32, i32* %width6, align 4
  store i32 %15, i32* %x2, align 4
  store i32 0, i32* %y1, align 4
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height7 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %16, i32 0, i32 2
  %17 = load i32, i32* %height7, align 4
  store i32 %17, i32* %y2, align 4
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.end
  %18 = load i32, i32* %x1, align 4
  %conv = sitofp i32 %18 to double
  %19 = load i32, i32* %x2, align 4
  %20 = load i32, i32* %x1, align 4
  %sub9 = sub nsw i32 %19, %20
  %conv10 = sitofp i32 %sub9 to double
  %div = fdiv double %conv10, 2.000000e+00
  %sub11 = fsub double %conv, %div
  %cmp12 = fcmp ogt double 0.000000e+00, %sub11
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.8
  %21 = load i32, i32* %x1, align 4
  %conv14 = sitofp i32 %21 to double
  %22 = load i32, i32* %x2, align 4
  %23 = load i32, i32* %x1, align 4
  %sub15 = sub nsw i32 %22, %23
  %conv16 = sitofp i32 %sub15 to double
  %div17 = fdiv double %conv16, 2.000000e+00
  %sub18 = fsub double %conv14, %div17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %sub18, %cond.false ]
  %conv19 = fptosi double %cond to i32
  store i32 %conv19, i32* %x1, align 4
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width20 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %24, i32 0, i32 1
  %25 = load i32, i32* %width20, align 4
  %conv21 = uitofp i32 %25 to double
  %26 = load i32, i32* %x2, align 4
  %conv22 = sitofp i32 %26 to double
  %27 = load i32, i32* %x2, align 4
  %28 = load i32, i32* %x1, align 4
  %sub23 = sub nsw i32 %27, %28
  %conv24 = sitofp i32 %sub23 to double
  %div25 = fdiv double %conv24, 2.000000e+00
  %add = fadd double %conv22, %div25
  %cmp26 = fcmp olt double %conv21, %add
  br i1 %cmp26, label %cond.true.28, label %cond.false.31

cond.true.28:                                     ; preds = %cond.end
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width29 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %29, i32 0, i32 1
  %30 = load i32, i32* %width29, align 4
  %conv30 = uitofp i32 %30 to double
  br label %cond.end.37

cond.false.31:                                    ; preds = %cond.end
  %31 = load i32, i32* %x2, align 4
  %conv32 = sitofp i32 %31 to double
  %32 = load i32, i32* %x2, align 4
  %33 = load i32, i32* %x1, align 4
  %sub33 = sub nsw i32 %32, %33
  %conv34 = sitofp i32 %sub33 to double
  %div35 = fdiv double %conv34, 2.000000e+00
  %add36 = fadd double %conv32, %div35
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.31, %cond.true.28
  %cond38 = phi double [ %conv30, %cond.true.28 ], [ %add36, %cond.false.31 ]
  %conv39 = fptosi double %cond38 to i32
  store i32 %conv39, i32* %x2, align 4
  %34 = load i32, i32* %y1, align 4
  %conv40 = sitofp i32 %34 to double
  %35 = load i32, i32* %y2, align 4
  %36 = load i32, i32* %y1, align 4
  %sub41 = sub nsw i32 %35, %36
  %conv42 = sitofp i32 %sub41 to double
  %div43 = fdiv double %conv42, 2.000000e+00
  %sub44 = fsub double %conv40, %div43
  %cmp45 = fcmp ogt double 0.000000e+00, %sub44
  br i1 %cmp45, label %cond.true.47, label %cond.false.48

cond.true.47:                                     ; preds = %cond.end.37
  br label %cond.end.54

cond.false.48:                                    ; preds = %cond.end.37
  %37 = load i32, i32* %y1, align 4
  %conv49 = sitofp i32 %37 to double
  %38 = load i32, i32* %y2, align 4
  %39 = load i32, i32* %y1, align 4
  %sub50 = sub nsw i32 %38, %39
  %conv51 = sitofp i32 %sub50 to double
  %div52 = fdiv double %conv51, 2.000000e+00
  %sub53 = fsub double %conv49, %div52
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.false.48, %cond.true.47
  %cond55 = phi double [ 0.000000e+00, %cond.true.47 ], [ %sub53, %cond.false.48 ]
  %conv56 = fptosi double %cond55 to i32
  store i32 %conv56, i32* %y1, align 4
  %40 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height57 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %40, i32 0, i32 2
  %41 = load i32, i32* %height57, align 4
  %conv58 = uitofp i32 %41 to double
  %42 = load i32, i32* %y2, align 4
  %conv59 = sitofp i32 %42 to double
  %43 = load i32, i32* %y2, align 4
  %44 = load i32, i32* %y1, align 4
  %sub60 = sub nsw i32 %43, %44
  %conv61 = sitofp i32 %sub60 to double
  %div62 = fdiv double %conv61, 2.000000e+00
  %add63 = fadd double %conv59, %div62
  %cmp64 = fcmp olt double %conv58, %add63
  br i1 %cmp64, label %cond.true.66, label %cond.false.69

cond.true.66:                                     ; preds = %cond.end.54
  %45 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height67 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %45, i32 0, i32 2
  %46 = load i32, i32* %height67, align 4
  %conv68 = uitofp i32 %46 to double
  br label %cond.end.75

cond.false.69:                                    ; preds = %cond.end.54
  %47 = load i32, i32* %y2, align 4
  %conv70 = sitofp i32 %47 to double
  %48 = load i32, i32* %y2, align 4
  %49 = load i32, i32* %y1, align 4
  %sub71 = sub nsw i32 %48, %49
  %conv72 = sitofp i32 %sub71 to double
  %div73 = fdiv double %conv72, 2.000000e+00
  %add74 = fadd double %conv70, %div73
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.false.69, %cond.true.66
  %cond76 = phi double [ %conv68, %cond.true.66 ], [ %add74, %cond.false.69 ]
  %conv77 = fptosi double %cond76 to i32
  store i32 %conv77, i32* %y2, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %cond.end.75, %sw.bb
  %50 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id78 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %50, i32 0, i32 0
  %51 = load i32, i32* %drawable_id78, align 4
  %call79 = call i32 @gimp_drawable_offsets(i32 %51, i32* %offx, i32* %offy)
  %52 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %drawable_id80 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %52, i32 0, i32 0
  %53 = load i32, i32* %drawable_id80, align 4
  %call81 = call i32 @gimp_item_get_image(i32 %53)
  store i32 %call81, i32* %image, align 4
  %54 = load i32, i32* %x1, align 4
  %55 = load i32, i32* %image, align 4
  %call82 = call i32 @gimp_image_width(i32 %55)
  %56 = load i32, i32* %offx, align 4
  %sub83 = sub nsw i32 %call82, %56
  %cmp84 = icmp sgt i32 %54, %sub83
  br i1 %cmp84, label %cond.true.86, label %cond.false.89

cond.true.86:                                     ; preds = %sw.epilog
  %57 = load i32, i32* %image, align 4
  %call87 = call i32 @gimp_image_width(i32 %57)
  %58 = load i32, i32* %offx, align 4
  %sub88 = sub nsw i32 %call87, %58
  br label %cond.end.98

cond.false.89:                                    ; preds = %sw.epilog
  %59 = load i32, i32* %x1, align 4
  %60 = load i32, i32* %offx, align 4
  %sub90 = sub nsw i32 0, %60
  %cmp91 = icmp slt i32 %59, %sub90
  br i1 %cmp91, label %cond.true.93, label %cond.false.95

cond.true.93:                                     ; preds = %cond.false.89
  %61 = load i32, i32* %offx, align 4
  %sub94 = sub nsw i32 0, %61
  br label %cond.end.96

cond.false.95:                                    ; preds = %cond.false.89
  %62 = load i32, i32* %x1, align 4
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.false.95, %cond.true.93
  %cond97 = phi i32 [ %sub94, %cond.true.93 ], [ %62, %cond.false.95 ]
  br label %cond.end.98

cond.end.98:                                      ; preds = %cond.end.96, %cond.true.86
  %cond99 = phi i32 [ %sub88, %cond.true.86 ], [ %cond97, %cond.end.96 ]
  store i32 %cond99, i32* %x1, align 4
  %63 = load i32, i32* %x2, align 4
  %64 = load i32, i32* %image, align 4
  %call100 = call i32 @gimp_image_width(i32 %64)
  %65 = load i32, i32* %offx, align 4
  %sub101 = sub nsw i32 %call100, %65
  %cmp102 = icmp sgt i32 %63, %sub101
  br i1 %cmp102, label %cond.true.104, label %cond.false.107

cond.true.104:                                    ; preds = %cond.end.98
  %66 = load i32, i32* %image, align 4
  %call105 = call i32 @gimp_image_width(i32 %66)
  %67 = load i32, i32* %offx, align 4
  %sub106 = sub nsw i32 %call105, %67
  br label %cond.end.116

cond.false.107:                                   ; preds = %cond.end.98
  %68 = load i32, i32* %x2, align 4
  %69 = load i32, i32* %offx, align 4
  %sub108 = sub nsw i32 0, %69
  %cmp109 = icmp slt i32 %68, %sub108
  br i1 %cmp109, label %cond.true.111, label %cond.false.113

cond.true.111:                                    ; preds = %cond.false.107
  %70 = load i32, i32* %offx, align 4
  %sub112 = sub nsw i32 0, %70
  br label %cond.end.114

cond.false.113:                                   ; preds = %cond.false.107
  %71 = load i32, i32* %x2, align 4
  br label %cond.end.114

cond.end.114:                                     ; preds = %cond.false.113, %cond.true.111
  %cond115 = phi i32 [ %sub112, %cond.true.111 ], [ %71, %cond.false.113 ]
  br label %cond.end.116

cond.end.116:                                     ; preds = %cond.end.114, %cond.true.104
  %cond117 = phi i32 [ %sub106, %cond.true.104 ], [ %cond115, %cond.end.114 ]
  store i32 %cond117, i32* %x2, align 4
  %72 = load i32, i32* %y1, align 4
  %73 = load i32, i32* %image, align 4
  %call118 = call i32 @gimp_image_height(i32 %73)
  %74 = load i32, i32* %offy, align 4
  %sub119 = sub nsw i32 %call118, %74
  %cmp120 = icmp sgt i32 %72, %sub119
  br i1 %cmp120, label %cond.true.122, label %cond.false.125

cond.true.122:                                    ; preds = %cond.end.116
  %75 = load i32, i32* %image, align 4
  %call123 = call i32 @gimp_image_height(i32 %75)
  %76 = load i32, i32* %offy, align 4
  %sub124 = sub nsw i32 %call123, %76
  br label %cond.end.134

cond.false.125:                                   ; preds = %cond.end.116
  %77 = load i32, i32* %y1, align 4
  %78 = load i32, i32* %offy, align 4
  %sub126 = sub nsw i32 0, %78
  %cmp127 = icmp slt i32 %77, %sub126
  br i1 %cmp127, label %cond.true.129, label %cond.false.131

cond.true.129:                                    ; preds = %cond.false.125
  %79 = load i32, i32* %offy, align 4
  %sub130 = sub nsw i32 0, %79
  br label %cond.end.132

cond.false.131:                                   ; preds = %cond.false.125
  %80 = load i32, i32* %y1, align 4
  br label %cond.end.132

cond.end.132:                                     ; preds = %cond.false.131, %cond.true.129
  %cond133 = phi i32 [ %sub130, %cond.true.129 ], [ %80, %cond.false.131 ]
  br label %cond.end.134

cond.end.134:                                     ; preds = %cond.end.132, %cond.true.122
  %cond135 = phi i32 [ %sub124, %cond.true.122 ], [ %cond133, %cond.end.132 ]
  store i32 %cond135, i32* %y1, align 4
  %81 = load i32, i32* %y2, align 4
  %82 = load i32, i32* %image, align 4
  %call136 = call i32 @gimp_image_height(i32 %82)
  %83 = load i32, i32* %offy, align 4
  %sub137 = sub nsw i32 %call136, %83
  %cmp138 = icmp sgt i32 %81, %sub137
  br i1 %cmp138, label %cond.true.140, label %cond.false.143

cond.true.140:                                    ; preds = %cond.end.134
  %84 = load i32, i32* %image, align 4
  %call141 = call i32 @gimp_image_height(i32 %84)
  %85 = load i32, i32* %offy, align 4
  %sub142 = sub nsw i32 %call141, %85
  br label %cond.end.152

cond.false.143:                                   ; preds = %cond.end.134
  %86 = load i32, i32* %y2, align 4
  %87 = load i32, i32* %offy, align 4
  %sub144 = sub nsw i32 0, %87
  %cmp145 = icmp slt i32 %86, %sub144
  br i1 %cmp145, label %cond.true.147, label %cond.false.149

cond.true.147:                                    ; preds = %cond.false.143
  %88 = load i32, i32* %offy, align 4
  %sub148 = sub nsw i32 0, %88
  br label %cond.end.150

cond.false.149:                                   ; preds = %cond.false.143
  %89 = load i32, i32* %y2, align 4
  br label %cond.end.150

cond.end.150:                                     ; preds = %cond.false.149, %cond.true.147
  %cond151 = phi i32 [ %sub148, %cond.true.147 ], [ %89, %cond.false.149 ]
  br label %cond.end.152

cond.end.152:                                     ; preds = %cond.end.150, %cond.true.140
  %cond153 = phi i32 [ %sub142, %cond.true.140 ], [ %cond151, %cond.end.150 ]
  store i32 %cond153, i32* %y2, align 4
  %90 = load i32, i32* %x2, align 4
  %91 = load i32, i32* %x1, align 4
  %sub154 = sub nsw i32 %90, %91
  store i32 %sub154, i32* %width, align 4
  %92 = load i32, i32* %y2, align 4
  %93 = load i32, i32* %y1, align 4
  %sub155 = sub nsw i32 %92, %93
  store i32 %sub155, i32* %height, align 4
  %94 = load i32, i32* %width, align 4
  %cmp156 = icmp slt i32 %94, 1
  br i1 %cmp156, label %if.then.161, label %lor.lhs.false.158

lor.lhs.false.158:                                ; preds = %cond.end.152
  %95 = load i32, i32* %height, align 4
  %cmp159 = icmp slt i32 %95, 1
  br i1 %cmp159, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %lor.lhs.false.158, %cond.end.152
  %96 = load %struct.ReducedImage*, %struct.ReducedImage** %temp, align 8
  store %struct.ReducedImage* %96, %struct.ReducedImage** %retval
  br label %return

if.end.162:                                       ; preds = %lor.lhs.false.158
  %97 = load i32, i32* %width, align 4
  %98 = load i32, i32* %height, align 4
  %cmp163 = icmp sgt i32 %97, %98
  br i1 %cmp163, label %if.then.165, label %if.else.171

if.then.165:                                      ; preds = %if.end.162
  %99 = load i32, i32* %LongerSize.addr, align 4
  store i32 %99, i32* %RW, align 4
  %100 = load i32, i32* %height, align 4
  %conv166 = sitofp i32 %100 to float
  %101 = load i32, i32* %LongerSize.addr, align 4
  %conv167 = sitofp i32 %101 to float
  %mul = fmul float %conv166, %conv167
  %102 = load i32, i32* %width, align 4
  %conv168 = sitofp i32 %102 to float
  %div169 = fdiv float %mul, %conv168
  %conv170 = fptosi float %div169 to i32
  store i32 %conv170, i32* %RH, align 4
  br label %if.end.178

if.else.171:                                      ; preds = %if.end.162
  %103 = load i32, i32* %LongerSize.addr, align 4
  store i32 %103, i32* %RH, align 4
  %104 = load i32, i32* %width, align 4
  %conv172 = sitofp i32 %104 to float
  %105 = load i32, i32* %LongerSize.addr, align 4
  %conv173 = sitofp i32 %105 to float
  %mul174 = fmul float %conv172, %conv173
  %106 = load i32, i32* %height, align 4
  %conv175 = sitofp i32 %106 to float
  %div176 = fdiv float %mul174, %conv175
  %conv177 = fptosi float %div176 to i32
  store i32 %conv177, i32* %RW, align 4
  br label %if.end.178

if.end.178:                                       ; preds = %if.else.171, %if.then.165
  %107 = load i32, i32* %RW, align 4
  %108 = load i32, i32* %RH, align 4
  %mul179 = mul nsw i32 %107, %108
  %109 = load i32, i32* %bytes, align 4
  %mul180 = mul nsw i32 %mul179, %109
  %conv181 = sext i32 %mul180 to i64
  %call182 = call noalias i8* @g_malloc_n(i64 %conv181, i64 1)
  store i8* %call182, i8** %tempRGB, align 8
  %110 = load i32, i32* %RW, align 4
  %111 = load i32, i32* %RH, align 4
  %mul183 = mul nsw i32 %110, %111
  %112 = load i32, i32* %bytes, align 4
  %mul184 = mul nsw i32 %mul183, %112
  %conv185 = sext i32 %mul184 to i64
  %call186 = call noalias i8* @g_malloc_n(i64 %conv185, i64 8)
  %113 = bitcast i8* %call186 to double*
  store double* %113, double** %tempHSV, align 8
  %114 = load i32, i32* %RW, align 4
  %115 = load i32, i32* %RH, align 4
  %mul187 = mul nsw i32 %114, %115
  %conv188 = sext i32 %mul187 to i64
  %call189 = call noalias i8* @g_malloc_n(i64 %conv188, i64 1)
  store i8* %call189, i8** %tempmask, align 8
  %116 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %117 = load i32, i32* %x1, align 4
  %118 = load i32, i32* %y1, align 4
  %119 = load i32, i32* %width, align 4
  %120 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %srcPR, %struct._GimpDrawable* %116, i32 %117, i32 %118, i32 %119, i32 %120, i32 0, i32 0)
  %121 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mask.addr, align 8
  %122 = load i32, i32* %x1, align 4
  %123 = load i32, i32* %offx, align 4
  %add190 = add nsw i32 %122, %123
  %124 = load i32, i32* %y1, align 4
  %125 = load i32, i32* %offy, align 4
  %add191 = add nsw i32 %124, %125
  %126 = load i32, i32* %width, align 4
  %127 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %srcMask, %struct._GimpDrawable* %121, i32 %add190, i32 %add191, i32 %126, i32 %127, i32 0, i32 0)
  %128 = load i32, i32* %width, align 4
  %129 = load i32, i32* %bytes, align 4
  %mul192 = mul nsw i32 %128, %129
  %conv193 = sext i32 %mul192 to i64
  %call194 = call noalias i8* @g_malloc_n(i64 %conv193, i64 1)
  store i8* %call194, i8** %src_row, align 8
  %130 = load i32, i32* %width, align 4
  %131 = load i32, i32* %bytes, align 4
  %mul195 = mul nsw i32 %130, %131
  %conv196 = sext i32 %mul195 to i64
  %call197 = call noalias i8* @g_malloc_n(i64 %conv196, i64 1)
  store i8* %call197, i8** %src_mask_row, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.303, %if.end.178
  %132 = load i32, i32* %i, align 4
  %133 = load i32, i32* %RH, align 4
  %cmp198 = icmp slt i32 %132, %133
  br i1 %cmp198, label %for.body, label %for.end.305

for.body:                                         ; preds = %for.cond
  %134 = load i32, i32* %i, align 4
  %conv200 = sitofp i32 %134 to float
  %135 = load i32, i32* %height, align 4
  %conv201 = sitofp i32 %135 to float
  %mul202 = fmul float %conv200, %conv201
  %136 = load i32, i32* %RH, align 4
  %conv203 = sitofp i32 %136 to float
  %div204 = fdiv float %mul202, %conv203
  %conv205 = fptosi float %div204 to i32
  store i32 %conv205, i32* %whichrow, align 4
  %137 = load i8*, i8** %src_row, align 8
  %138 = load i32, i32* %x1, align 4
  %139 = load i32, i32* %y1, align 4
  %140 = load i32, i32* %whichrow, align 4
  %add206 = add nsw i32 %139, %140
  %141 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %srcPR, i8* %137, i32 %138, i32 %add206, i32 %141)
  %142 = load i8*, i8** %src_mask_row, align 8
  %143 = load i32, i32* %x1, align 4
  %144 = load i32, i32* %offx, align 4
  %add207 = add nsw i32 %143, %144
  %145 = load i32, i32* %y1, align 4
  %146 = load i32, i32* %offy, align 4
  %add208 = add nsw i32 %145, %146
  %147 = load i32, i32* %whichrow, align 4
  %add209 = add nsw i32 %add208, %147
  %148 = load i32, i32* %width, align 4
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %srcMask, i8* %142, i32 %add207, i32 %add209, i32 %148)
  store i32 0, i32* %j, align 4
  br label %for.cond.210

for.cond.210:                                     ; preds = %for.inc, %for.body
  %149 = load i32, i32* %j, align 4
  %150 = load i32, i32* %RW, align 4
  %cmp211 = icmp slt i32 %149, %150
  br i1 %cmp211, label %for.body.213, label %for.end

for.body.213:                                     ; preds = %for.cond.210
  %151 = load i32, i32* %j, align 4
  %conv214 = sitofp i32 %151 to float
  %152 = load i32, i32* %width, align 4
  %conv215 = sitofp i32 %152 to float
  %mul216 = fmul float %conv214, %conv215
  %153 = load i32, i32* %RW, align 4
  %conv217 = sitofp i32 %153 to float
  %div218 = fdiv float %mul216, %conv217
  %conv219 = fptosi float %div218 to i32
  store i32 %conv219, i32* %whichcol, align 4
  %154 = load i32, i32* %NoSelectionMade, align 4
  %tobool = icmp ne i32 %154, 0
  br i1 %tobool, label %if.then.220, label %if.else.223

if.then.220:                                      ; preds = %for.body.213
  %155 = load i32, i32* %i, align 4
  %156 = load i32, i32* %RW, align 4
  %mul221 = mul nsw i32 %155, %156
  %157 = load i32, i32* %j, align 4
  %add222 = add nsw i32 %mul221, %157
  %idxprom = sext i32 %add222 to i64
  %158 = load i8*, i8** %tempmask, align 8
  %arrayidx = getelementptr inbounds i8, i8* %158, i64 %idxprom
  store i8 -1, i8* %arrayidx, align 1
  br label %if.end.230

if.else.223:                                      ; preds = %for.body.213
  %159 = load i32, i32* %whichcol, align 4
  %idxprom224 = sext i32 %159 to i64
  %160 = load i8*, i8** %src_mask_row, align 8
  %arrayidx225 = getelementptr inbounds i8, i8* %160, i64 %idxprom224
  %161 = load i8, i8* %arrayidx225, align 1
  %162 = load i32, i32* %i, align 4
  %163 = load i32, i32* %RW, align 4
  %mul226 = mul nsw i32 %162, %163
  %164 = load i32, i32* %j, align 4
  %add227 = add nsw i32 %mul226, %164
  %idxprom228 = sext i32 %add227 to i64
  %165 = load i8*, i8** %tempmask, align 8
  %arrayidx229 = getelementptr inbounds i8, i8* %165, i64 %idxprom228
  store i8 %161, i8* %arrayidx229, align 1
  br label %if.end.230

if.end.230:                                       ; preds = %if.else.223, %if.then.220
  %166 = load i32, i32* %whichcol, align 4
  %167 = load i32, i32* %bytes, align 4
  %mul231 = mul nsw i32 %166, %167
  %idxprom232 = sext i32 %mul231 to i64
  %168 = load i8*, i8** %src_row, align 8
  %arrayidx233 = getelementptr inbounds i8, i8* %168, i64 %idxprom232
  call void @gimp_rgb_to_hsv4(i8* %arrayidx233, double* %H, double* %S, double* %V)
  %169 = load i32, i32* %whichcol, align 4
  %170 = load i32, i32* %bytes, align 4
  %mul234 = mul nsw i32 %169, %170
  %add235 = add nsw i32 %mul234, 0
  %idxprom236 = sext i32 %add235 to i64
  %171 = load i8*, i8** %src_row, align 8
  %arrayidx237 = getelementptr inbounds i8, i8* %171, i64 %idxprom236
  %172 = load i8, i8* %arrayidx237, align 1
  %173 = load i32, i32* %i, align 4
  %174 = load i32, i32* %RW, align 4
  %mul238 = mul nsw i32 %173, %174
  %175 = load i32, i32* %bytes, align 4
  %mul239 = mul nsw i32 %mul238, %175
  %176 = load i32, i32* %j, align 4
  %177 = load i32, i32* %bytes, align 4
  %mul240 = mul nsw i32 %176, %177
  %add241 = add nsw i32 %mul239, %mul240
  %add242 = add nsw i32 %add241, 0
  %idxprom243 = sext i32 %add242 to i64
  %178 = load i8*, i8** %tempRGB, align 8
  %arrayidx244 = getelementptr inbounds i8, i8* %178, i64 %idxprom243
  store i8 %172, i8* %arrayidx244, align 1
  %179 = load i32, i32* %whichcol, align 4
  %180 = load i32, i32* %bytes, align 4
  %mul245 = mul nsw i32 %179, %180
  %add246 = add nsw i32 %mul245, 1
  %idxprom247 = sext i32 %add246 to i64
  %181 = load i8*, i8** %src_row, align 8
  %arrayidx248 = getelementptr inbounds i8, i8* %181, i64 %idxprom247
  %182 = load i8, i8* %arrayidx248, align 1
  %183 = load i32, i32* %i, align 4
  %184 = load i32, i32* %RW, align 4
  %mul249 = mul nsw i32 %183, %184
  %185 = load i32, i32* %bytes, align 4
  %mul250 = mul nsw i32 %mul249, %185
  %186 = load i32, i32* %j, align 4
  %187 = load i32, i32* %bytes, align 4
  %mul251 = mul nsw i32 %186, %187
  %add252 = add nsw i32 %mul250, %mul251
  %add253 = add nsw i32 %add252, 1
  %idxprom254 = sext i32 %add253 to i64
  %188 = load i8*, i8** %tempRGB, align 8
  %arrayidx255 = getelementptr inbounds i8, i8* %188, i64 %idxprom254
  store i8 %182, i8* %arrayidx255, align 1
  %189 = load i32, i32* %whichcol, align 4
  %190 = load i32, i32* %bytes, align 4
  %mul256 = mul nsw i32 %189, %190
  %add257 = add nsw i32 %mul256, 2
  %idxprom258 = sext i32 %add257 to i64
  %191 = load i8*, i8** %src_row, align 8
  %arrayidx259 = getelementptr inbounds i8, i8* %191, i64 %idxprom258
  %192 = load i8, i8* %arrayidx259, align 1
  %193 = load i32, i32* %i, align 4
  %194 = load i32, i32* %RW, align 4
  %mul260 = mul nsw i32 %193, %194
  %195 = load i32, i32* %bytes, align 4
  %mul261 = mul nsw i32 %mul260, %195
  %196 = load i32, i32* %j, align 4
  %197 = load i32, i32* %bytes, align 4
  %mul262 = mul nsw i32 %196, %197
  %add263 = add nsw i32 %mul261, %mul262
  %add264 = add nsw i32 %add263, 2
  %idxprom265 = sext i32 %add264 to i64
  %198 = load i8*, i8** %tempRGB, align 8
  %arrayidx266 = getelementptr inbounds i8, i8* %198, i64 %idxprom265
  store i8 %192, i8* %arrayidx266, align 1
  %199 = load double, double* %H, align 8
  %200 = load i32, i32* %i, align 4
  %201 = load i32, i32* %RW, align 4
  %mul267 = mul nsw i32 %200, %201
  %202 = load i32, i32* %bytes, align 4
  %mul268 = mul nsw i32 %mul267, %202
  %203 = load i32, i32* %j, align 4
  %204 = load i32, i32* %bytes, align 4
  %mul269 = mul nsw i32 %203, %204
  %add270 = add nsw i32 %mul268, %mul269
  %add271 = add nsw i32 %add270, 0
  %idxprom272 = sext i32 %add271 to i64
  %205 = load double*, double** %tempHSV, align 8
  %arrayidx273 = getelementptr inbounds double, double* %205, i64 %idxprom272
  store double %199, double* %arrayidx273, align 8
  %206 = load double, double* %S, align 8
  %207 = load i32, i32* %i, align 4
  %208 = load i32, i32* %RW, align 4
  %mul274 = mul nsw i32 %207, %208
  %209 = load i32, i32* %bytes, align 4
  %mul275 = mul nsw i32 %mul274, %209
  %210 = load i32, i32* %j, align 4
  %211 = load i32, i32* %bytes, align 4
  %mul276 = mul nsw i32 %210, %211
  %add277 = add nsw i32 %mul275, %mul276
  %add278 = add nsw i32 %add277, 1
  %idxprom279 = sext i32 %add278 to i64
  %212 = load double*, double** %tempHSV, align 8
  %arrayidx280 = getelementptr inbounds double, double* %212, i64 %idxprom279
  store double %206, double* %arrayidx280, align 8
  %213 = load double, double* %V, align 8
  %214 = load i32, i32* %i, align 4
  %215 = load i32, i32* %RW, align 4
  %mul281 = mul nsw i32 %214, %215
  %216 = load i32, i32* %bytes, align 4
  %mul282 = mul nsw i32 %mul281, %216
  %217 = load i32, i32* %j, align 4
  %218 = load i32, i32* %bytes, align 4
  %mul283 = mul nsw i32 %217, %218
  %add284 = add nsw i32 %mul282, %mul283
  %add285 = add nsw i32 %add284, 2
  %idxprom286 = sext i32 %add285 to i64
  %219 = load double*, double** %tempHSV, align 8
  %arrayidx287 = getelementptr inbounds double, double* %219, i64 %idxprom286
  store double %213, double* %arrayidx287, align 8
  %220 = load i32, i32* %bytes, align 4
  %cmp288 = icmp eq i32 %220, 4
  br i1 %cmp288, label %if.then.290, label %if.end.302

if.then.290:                                      ; preds = %if.end.230
  %221 = load i32, i32* %whichcol, align 4
  %222 = load i32, i32* %bytes, align 4
  %mul291 = mul nsw i32 %221, %222
  %add292 = add nsw i32 %mul291, 3
  %idxprom293 = sext i32 %add292 to i64
  %223 = load i8*, i8** %src_row, align 8
  %arrayidx294 = getelementptr inbounds i8, i8* %223, i64 %idxprom293
  %224 = load i8, i8* %arrayidx294, align 1
  %225 = load i32, i32* %i, align 4
  %226 = load i32, i32* %RW, align 4
  %mul295 = mul nsw i32 %225, %226
  %227 = load i32, i32* %bytes, align 4
  %mul296 = mul nsw i32 %mul295, %227
  %228 = load i32, i32* %j, align 4
  %229 = load i32, i32* %bytes, align 4
  %mul297 = mul nsw i32 %228, %229
  %add298 = add nsw i32 %mul296, %mul297
  %add299 = add nsw i32 %add298, 3
  %idxprom300 = sext i32 %add299 to i64
  %230 = load i8*, i8** %tempRGB, align 8
  %arrayidx301 = getelementptr inbounds i8, i8* %230, i64 %idxprom300
  store i8 %224, i8* %arrayidx301, align 1
  br label %if.end.302

if.end.302:                                       ; preds = %if.then.290, %if.end.230
  br label %for.inc

for.inc:                                          ; preds = %if.end.302
  %231 = load i32, i32* %j, align 4
  %inc = add nsw i32 %231, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.210

for.end:                                          ; preds = %for.cond.210
  br label %for.inc.303

for.inc.303:                                      ; preds = %for.end
  %232 = load i32, i32* %i, align 4
  %inc304 = add nsw i32 %232, 1
  store i32 %inc304, i32* %i, align 4
  br label %for.cond

for.end.305:                                      ; preds = %for.cond
  %233 = load i32, i32* %RW, align 4
  %234 = load %struct.ReducedImage*, %struct.ReducedImage** %temp, align 8
  %width306 = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %234, i32 0, i32 0
  store i32 %233, i32* %width306, align 4
  %235 = load i32, i32* %RH, align 4
  %236 = load %struct.ReducedImage*, %struct.ReducedImage** %temp, align 8
  %height307 = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %236, i32 0, i32 1
  store i32 %235, i32* %height307, align 4
  %237 = load i8*, i8** %tempRGB, align 8
  %238 = load %struct.ReducedImage*, %struct.ReducedImage** %temp, align 8
  %rgb = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %238, i32 0, i32 2
  store i8* %237, i8** %rgb, align 8
  %239 = load double*, double** %tempHSV, align 8
  %240 = load %struct.ReducedImage*, %struct.ReducedImage** %temp, align 8
  %hsv = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %240, i32 0, i32 3
  store double* %239, double** %hsv, align 8
  %241 = load i8*, i8** %tempmask, align 8
  %242 = load %struct.ReducedImage*, %struct.ReducedImage** %temp, align 8
  %mask308 = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %242, i32 0, i32 4
  store i8* %241, i8** %mask308, align 8
  %243 = load %struct.ReducedImage*, %struct.ReducedImage** %temp, align 8
  store %struct.ReducedImage* %243, %struct.ReducedImage** %retval
  br label %return

return:                                           ; preds = %for.end.305, %if.then.161
  %244 = load %struct.ReducedImage*, %struct.ReducedImage** %retval
  ret %struct.ReducedImage* %244
}

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare i32 @gimp_drawable_mask_bounds(i32, i32*, i32*, i32*, i32*) #2

declare i32 @gimp_drawable_offsets(i32, i32*, i32*) #2

declare i32 @gimp_item_get_image(i32) #2

declare i32 @gimp_image_width(i32) #2

declare i32 @gimp_image_height(i32) #2

declare noalias i8* @g_malloc_n(i64, i64) #2

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #2

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #2

declare void @gimp_rgb_to_hsv4(i8*, double*, double*, double*) #2

; Function Attrs: nounwind uwtable
define void @rcm_render_preview(%struct._GtkWidget* %preview) #0 {
entry:
  %preview.addr = alloca %struct._GtkWidget*, align 8
  %reduced = alloca %struct.ReducedImage*, align 8
  %version = alloca i32, align 4
  %RW = alloca i32, align 4
  %RH = alloca i32, align 4
  %bytes = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca i8*, align 8
  %rgb_array = alloca i8*, align 8
  %hsv_array = alloca double*, align 8
  %degree = alloca float, align 4
  %H = alloca double, align 8
  %S = alloca double, align 8
  %V = alloca double, align 8
  %rgb8 = alloca [3 x i8], align 1
  %unchanged = alloca i32, align 4
  %skip = alloca i32, align 4
  store %struct._GtkWidget* %preview, %struct._GtkWidget** %preview.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %preview.addr, align 8
  %cmp = icmp ne %struct._GtkWidget* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.rcm_render_preview, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %preview.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 80)
  %3 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %4 = ptrtoint i8* %call1 to i64
  %conv = trunc i64 %4 to i32
  store i32 %conv, i32* %version, align 4
  %5 = load %struct.ReducedImage*, %struct.ReducedImage** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 6), align 8
  store %struct.ReducedImage* %5, %struct.ReducedImage** %reduced, align 8
  %6 = load %struct.ReducedImage*, %struct.ReducedImage** %reduced, align 8
  %width = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %6, i32 0, i32 0
  %7 = load i32, i32* %width, align 4
  store i32 %7, i32* %RW, align 4
  %8 = load %struct.ReducedImage*, %struct.ReducedImage** %reduced, align 8
  %height = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %8, i32 0, i32 1
  %9 = load i32, i32* %height, align 4
  store i32 %9, i32* %RH, align 4
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 4), align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 3
  %11 = load i32, i32* %bpp, align 4
  store i32 %11, i32* %bytes, align 4
  %12 = load %struct.ReducedImage*, %struct.ReducedImage** %reduced, align 8
  %hsv = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %12, i32 0, i32 3
  %13 = load double*, double** %hsv, align 8
  store double* %13, double** %hsv_array, align 8
  %14 = load %struct.ReducedImage*, %struct.ReducedImage** %reduced, align 8
  %rgb = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %14, i32 0, i32 2
  %15 = load i8*, i8** %rgb, align 8
  store i8* %15, i8** %rgb_array, align 8
  %16 = load i32, i32* %RW, align 4
  %mul = mul nsw i32 4, %16
  %17 = load i32, i32* %RH, align 4
  %mul2 = mul nsw i32 %mul, %17
  %conv3 = sext i32 %mul2 to i64
  %call4 = call noalias i8* @g_malloc_n(i64 %conv3, i64 1)
  store i8* %call4, i8** %a, align 8
  %18 = load i32, i32* %version, align 4
  %cmp5 = icmp eq i32 %18, 7
  br i1 %cmp5, label %if.then.7, label %if.else.187

if.then.7:                                        ; preds = %do.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.184, %if.then.7
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %RH, align 4
  %cmp9 = icmp slt i32 %19, %20
  br i1 %cmp9, label %for.body, label %for.end.186

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %for.body
  %21 = load i32, i32* %j, align 4
  %22 = load i32, i32* %RW, align 4
  %cmp12 = icmp slt i32 %21, %22
  br i1 %cmp12, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.11
  store i32 0, i32* %unchanged, align 4
  store i32 0, i32* %skip, align 4
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %RW, align 4
  %mul15 = mul nsw i32 %23, %24
  %25 = load i32, i32* %bytes, align 4
  %mul16 = mul nsw i32 %mul15, %25
  %26 = load i32, i32* %j, align 4
  %27 = load i32, i32* %bytes, align 4
  %mul17 = mul nsw i32 %26, %27
  %add = add nsw i32 %mul16, %mul17
  %add18 = add nsw i32 %add, 0
  %idxprom = sext i32 %add18 to i64
  %28 = load double*, double** %hsv_array, align 8
  %arrayidx = getelementptr inbounds double, double* %28, i64 %idxprom
  %29 = load double, double* %arrayidx, align 8
  store double %29, double* %H, align 8
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %RW, align 4
  %mul19 = mul nsw i32 %30, %31
  %32 = load i32, i32* %bytes, align 4
  %mul20 = mul nsw i32 %mul19, %32
  %33 = load i32, i32* %j, align 4
  %34 = load i32, i32* %bytes, align 4
  %mul21 = mul nsw i32 %33, %34
  %add22 = add nsw i32 %mul20, %mul21
  %add23 = add nsw i32 %add22, 1
  %idxprom24 = sext i32 %add23 to i64
  %35 = load double*, double** %hsv_array, align 8
  %arrayidx25 = getelementptr inbounds double, double* %35, i64 %idxprom24
  %36 = load double, double* %arrayidx25, align 8
  store double %36, double* %S, align 8
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %RW, align 4
  %mul26 = mul nsw i32 %37, %38
  %39 = load i32, i32* %bytes, align 4
  %mul27 = mul nsw i32 %mul26, %39
  %40 = load i32, i32* %j, align 4
  %41 = load i32, i32* %bytes, align 4
  %mul28 = mul nsw i32 %40, %41
  %add29 = add nsw i32 %mul27, %mul28
  %add30 = add nsw i32 %add29, 2
  %idxprom31 = sext i32 %add30 to i64
  %42 = load double*, double** %hsv_array, align 8
  %arrayidx32 = getelementptr inbounds double, double* %42, i64 %idxprom31
  %43 = load double, double* %arrayidx32, align 8
  store double %43, double* %V, align 8
  %44 = load double, double* %S, align 8
  %conv33 = fptrunc double %44 to float
  %call34 = call i32 @rcm_is_gray(float %conv33)
  %tobool = icmp ne i32 %call34, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.58

land.lhs.true:                                    ; preds = %for.body.14
  %45 = load i32, i32* %i, align 4
  %46 = load i32, i32* %RW, align 4
  %mul35 = mul nsw i32 %45, %46
  %47 = load i32, i32* %j, align 4
  %add36 = add nsw i32 %mul35, %47
  %idxprom37 = sext i32 %add36 to i64
  %48 = load %struct.ReducedImage*, %struct.ReducedImage** %reduced, align 8
  %mask = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %48, i32 0, i32 4
  %49 = load i8*, i8** %mask, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %49, i64 %idxprom37
  %50 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %50 to i32
  %cmp40 = icmp ne i32 %conv39, 0
  br i1 %cmp40, label %if.then.42, label %if.end.58

if.then.42:                                       ; preds = %land.lhs.true
  %51 = load i32, i32* getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 3), align 4
  switch i32 %51, label %sw.default [
    i32 5, label %sw.bb
    i32 6, label %sw.bb.52
  ]

sw.bb:                                            ; preds = %if.then.42
  %52 = load %struct.RcmGray*, %struct.RcmGray** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 9), align 8
  %hue = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %52, i32 0, i32 3
  %53 = load float, float* %hue, align 4
  %54 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 8), align 8
  %angle = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %54, i32 0, i32 19
  %55 = load %struct.RcmAngle*, %struct.RcmAngle** %angle, align 8
  %call43 = call float @rcm_angle_inside_slice(float %53, %struct.RcmAngle* %55)
  %cmp44 = fcmp ole float %call43, 1.000000e+00
  br i1 %cmp44, label %if.then.46, label %if.else.50

if.then.46:                                       ; preds = %sw.bb
  %56 = load %struct.RcmGray*, %struct.RcmGray** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 9), align 8
  %hue47 = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %56, i32 0, i32 3
  %57 = load float, float* %hue47, align 4
  %conv48 = fpext float %57 to double
  %div = fdiv double %conv48, 0x401921FB54442D18
  store double %div, double* %H, align 8
  %58 = load %struct.RcmGray*, %struct.RcmGray** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 9), align 8
  %satur = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %58, i32 0, i32 4
  %59 = load float, float* %satur, align 4
  %conv49 = fpext float %59 to double
  store double %conv49, double* %S, align 8
  br label %if.end.51

if.else.50:                                       ; preds = %sw.bb
  store i32 1, i32* %skip, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.50, %if.then.46
  br label %sw.epilog

sw.bb.52:                                         ; preds = %if.then.42
  store i32 0, i32* %unchanged, align 4
  store i32 1, i32* %skip, align 4
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %rgb8, i32 0, i32 0
  %60 = load %struct.RcmGray*, %struct.RcmGray** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 9), align 8
  %hue53 = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %60, i32 0, i32 3
  %61 = load float, float* %hue53, align 4
  %conv54 = fpext float %61 to double
  %div55 = fdiv double %conv54, 0x401921FB54442D18
  %62 = load %struct.RcmGray*, %struct.RcmGray** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 9), align 8
  %satur56 = getelementptr inbounds %struct.RcmGray, %struct.RcmGray* %62, i32 0, i32 4
  %63 = load float, float* %satur56, align 4
  %conv57 = fpext float %63 to double
  %64 = load double, double* %V, align 8
  call void @gimp_hsv_to_rgb4(i8* %arraydecay, double %div55, double %conv57, double %64)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.42
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.52, %if.end.51
  br label %if.end.58

if.end.58:                                        ; preds = %sw.epilog, %land.lhs.true, %for.body.14
  %65 = load i32, i32* %skip, align 4
  %tobool59 = icmp ne i32 %65, 0
  br i1 %tobool59, label %if.end.78, label %if.then.60

if.then.60:                                       ; preds = %if.end.58
  store i32 0, i32* %unchanged, align 4
  %66 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 8), align 8
  %angle61 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %66, i32 0, i32 19
  %67 = load %struct.RcmAngle*, %struct.RcmAngle** %angle61, align 8
  %call62 = call float @rcm_left_end(%struct.RcmAngle* %67)
  %68 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 8), align 8
  %angle63 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %68, i32 0, i32 19
  %69 = load %struct.RcmAngle*, %struct.RcmAngle** %angle63, align 8
  %call64 = call float @rcm_right_end(%struct.RcmAngle* %69)
  %70 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 7), align 8
  %angle65 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %70, i32 0, i32 19
  %71 = load %struct.RcmAngle*, %struct.RcmAngle** %angle65, align 8
  %call66 = call float @rcm_left_end(%struct.RcmAngle* %71)
  %72 = load %struct.RcmCircle*, %struct.RcmCircle** getelementptr inbounds (%struct.RcmParams, %struct.RcmParams* @Current, i32 0, i32 7), align 8
  %angle67 = getelementptr inbounds %struct.RcmCircle, %struct.RcmCircle* %72, i32 0, i32 19
  %73 = load %struct.RcmAngle*, %struct.RcmAngle** %angle67, align 8
  %call68 = call float @rcm_right_end(%struct.RcmAngle* %73)
  %74 = load double, double* %H, align 8
  %mul69 = fmul double %74, 0x401921FB54442D18
  %conv70 = fptrunc double %mul69 to float
  %call71 = call float @rcm_linear(float %call62, float %call64, float %call66, float %call68, float %conv70)
  %conv72 = fpext float %call71 to double
  store double %conv72, double* %H, align 8
  %75 = load double, double* %H, align 8
  %conv73 = fptrunc double %75 to float
  %call74 = call float @angle_mod_2PI(float %conv73)
  %conv75 = fpext float %call74 to double
  %div76 = fdiv double %conv75, 0x401921FB54442D18
  store double %div76, double* %H, align 8
  %arraydecay77 = getelementptr inbounds [3 x i8], [3 x i8]* %rgb8, i32 0, i32 0
  %76 = load double, double* %H, align 8
  %77 = load double, double* %S, align 8
  %78 = load double, double* %V, align 8
  call void @gimp_hsv_to_rgb4(i8* %arraydecay77, double %76, double %77, double %78)
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.60, %if.end.58
  %79 = load i32, i32* %unchanged, align 4
  %tobool79 = icmp ne i32 %79, 0
  br i1 %tobool79, label %if.then.80, label %if.else.81

if.then.80:                                       ; preds = %if.end.78
  store float 0.000000e+00, float* %degree, align 4
  br label %if.end.91

if.else.81:                                       ; preds = %if.end.78
  %80 = load i32, i32* %i, align 4
  %81 = load i32, i32* %RW, align 4
  %mul82 = mul nsw i32 %80, %81
  %82 = load i32, i32* %j, align 4
  %add83 = add nsw i32 %mul82, %82
  %idxprom84 = sext i32 %add83 to i64
  %83 = load %struct.ReducedImage*, %struct.ReducedImage** %reduced, align 8
  %mask85 = getelementptr inbounds %struct.ReducedImage, %struct.ReducedImage* %83, i32 0, i32 4
  %84 = load i8*, i8** %mask85, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %84, i64 %idxprom84
  %85 = load i8, i8* %arrayidx86, align 1
  %conv87 = zext i8 %85 to i32
  %conv88 = sitofp i32 %conv87 to double
  %div89 = fdiv double %conv88, 2.550000e+02
  %conv90 = fptrunc double %div89 to float
  store float %conv90, float* %degree, align 4
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.81, %if.then.80
  %86 = load float, float* %degree, align 4
  %sub = fsub float 1.000000e+00, %86
  %87 = load i32, i32* %i, align 4
  %88 = load i32, i32* %RW, align 4
  %mul92 = mul nsw i32 %87, %88
  %89 = load i32, i32* %bytes, align 4
  %mul93 = mul nsw i32 %mul92, %89
  %90 = load i32, i32* %j, align 4
  %91 = load i32, i32* %bytes, align 4
  %mul94 = mul nsw i32 %90, %91
  %add95 = add nsw i32 %mul93, %mul94
  %add96 = add nsw i32 %add95, 0
  %idxprom97 = sext i32 %add96 to i64
  %92 = load i8*, i8** %rgb_array, align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %92, i64 %idxprom97
  %93 = load i8, i8* %arrayidx98, align 1
  %conv99 = zext i8 %93 to i32
  %conv100 = sitofp i32 %conv99 to float
  %mul101 = fmul float %sub, %conv100
  %94 = load float, float* %degree, align 4
  %arrayidx102 = getelementptr inbounds [3 x i8], [3 x i8]* %rgb8, i32 0, i64 0
  %95 = load i8, i8* %arrayidx102, align 1
  %conv103 = zext i8 %95 to i32
  %conv104 = sitofp i32 %conv103 to float
  %mul105 = fmul float %94, %conv104
  %add106 = fadd float %mul101, %mul105
  %conv107 = fptoui float %add106 to i8
  %96 = load i32, i32* %i, align 4
  %97 = load i32, i32* %RW, align 4
  %mul108 = mul nsw i32 %96, %97
  %98 = load i32, i32* %j, align 4
  %add109 = add nsw i32 %mul108, %98
  %mul110 = mul nsw i32 %add109, 4
  %add111 = add nsw i32 %mul110, 0
  %idxprom112 = sext i32 %add111 to i64
  %99 = load i8*, i8** %a, align 8
  %arrayidx113 = getelementptr inbounds i8, i8* %99, i64 %idxprom112
  store i8 %conv107, i8* %arrayidx113, align 1
  %100 = load float, float* %degree, align 4
  %sub114 = fsub float 1.000000e+00, %100
  %101 = load i32, i32* %i, align 4
  %102 = load i32, i32* %RW, align 4
  %mul115 = mul nsw i32 %101, %102
  %103 = load i32, i32* %bytes, align 4
  %mul116 = mul nsw i32 %mul115, %103
  %104 = load i32, i32* %j, align 4
  %105 = load i32, i32* %bytes, align 4
  %mul117 = mul nsw i32 %104, %105
  %add118 = add nsw i32 %mul116, %mul117
  %add119 = add nsw i32 %add118, 1
  %idxprom120 = sext i32 %add119 to i64
  %106 = load i8*, i8** %rgb_array, align 8
  %arrayidx121 = getelementptr inbounds i8, i8* %106, i64 %idxprom120
  %107 = load i8, i8* %arrayidx121, align 1
  %conv122 = zext i8 %107 to i32
  %conv123 = sitofp i32 %conv122 to float
  %mul124 = fmul float %sub114, %conv123
  %108 = load float, float* %degree, align 4
  %arrayidx125 = getelementptr inbounds [3 x i8], [3 x i8]* %rgb8, i32 0, i64 1
  %109 = load i8, i8* %arrayidx125, align 1
  %conv126 = zext i8 %109 to i32
  %conv127 = sitofp i32 %conv126 to float
  %mul128 = fmul float %108, %conv127
  %add129 = fadd float %mul124, %mul128
  %conv130 = fptoui float %add129 to i8
  %110 = load i32, i32* %i, align 4
  %111 = load i32, i32* %RW, align 4
  %mul131 = mul nsw i32 %110, %111
  %112 = load i32, i32* %j, align 4
  %add132 = add nsw i32 %mul131, %112
  %mul133 = mul nsw i32 %add132, 4
  %add134 = add nsw i32 %mul133, 1
  %idxprom135 = sext i32 %add134 to i64
  %113 = load i8*, i8** %a, align 8
  %arrayidx136 = getelementptr inbounds i8, i8* %113, i64 %idxprom135
  store i8 %conv130, i8* %arrayidx136, align 1
  %114 = load float, float* %degree, align 4
  %sub137 = fsub float 1.000000e+00, %114
  %115 = load i32, i32* %i, align 4
  %116 = load i32, i32* %RW, align 4
  %mul138 = mul nsw i32 %115, %116
  %117 = load i32, i32* %bytes, align 4
  %mul139 = mul nsw i32 %mul138, %117
  %118 = load i32, i32* %j, align 4
  %119 = load i32, i32* %bytes, align 4
  %mul140 = mul nsw i32 %118, %119
  %add141 = add nsw i32 %mul139, %mul140
  %add142 = add nsw i32 %add141, 2
  %idxprom143 = sext i32 %add142 to i64
  %120 = load i8*, i8** %rgb_array, align 8
  %arrayidx144 = getelementptr inbounds i8, i8* %120, i64 %idxprom143
  %121 = load i8, i8* %arrayidx144, align 1
  %conv145 = zext i8 %121 to i32
  %conv146 = sitofp i32 %conv145 to float
  %mul147 = fmul float %sub137, %conv146
  %122 = load float, float* %degree, align 4
  %arrayidx148 = getelementptr inbounds [3 x i8], [3 x i8]* %rgb8, i32 0, i64 2
  %123 = load i8, i8* %arrayidx148, align 1
  %conv149 = zext i8 %123 to i32
  %conv150 = sitofp i32 %conv149 to float
  %mul151 = fmul float %122, %conv150
  %add152 = fadd float %mul147, %mul151
  %conv153 = fptoui float %add152 to i8
  %124 = load i32, i32* %i, align 4
  %125 = load i32, i32* %RW, align 4
  %mul154 = mul nsw i32 %124, %125
  %126 = load i32, i32* %j, align 4
  %add155 = add nsw i32 %mul154, %126
  %mul156 = mul nsw i32 %add155, 4
  %add157 = add nsw i32 %mul156, 2
  %idxprom158 = sext i32 %add157 to i64
  %127 = load i8*, i8** %a, align 8
  %arrayidx159 = getelementptr inbounds i8, i8* %127, i64 %idxprom158
  store i8 %conv153, i8* %arrayidx159, align 1
  %128 = load i32, i32* %bytes, align 4
  %cmp160 = icmp eq i32 %128, 4
  br i1 %cmp160, label %if.then.162, label %if.else.176

if.then.162:                                      ; preds = %if.end.91
  %129 = load i32, i32* %i, align 4
  %130 = load i32, i32* %RW, align 4
  %mul163 = mul nsw i32 %129, %130
  %131 = load i32, i32* %bytes, align 4
  %mul164 = mul nsw i32 %mul163, %131
  %132 = load i32, i32* %j, align 4
  %133 = load i32, i32* %bytes, align 4
  %mul165 = mul nsw i32 %132, %133
  %add166 = add nsw i32 %mul164, %mul165
  %add167 = add nsw i32 %add166, 3
  %idxprom168 = sext i32 %add167 to i64
  %134 = load i8*, i8** %rgb_array, align 8
  %arrayidx169 = getelementptr inbounds i8, i8* %134, i64 %idxprom168
  %135 = load i8, i8* %arrayidx169, align 1
  %136 = load i32, i32* %i, align 4
  %137 = load i32, i32* %RW, align 4
  %mul170 = mul nsw i32 %136, %137
  %138 = load i32, i32* %j, align 4
  %add171 = add nsw i32 %mul170, %138
  %mul172 = mul nsw i32 %add171, 4
  %add173 = add nsw i32 %mul172, 3
  %idxprom174 = sext i32 %add173 to i64
  %139 = load i8*, i8** %a, align 8
  %arrayidx175 = getelementptr inbounds i8, i8* %139, i64 %idxprom174
  store i8 %135, i8* %arrayidx175, align 1
  br label %if.end.183

if.else.176:                                      ; preds = %if.end.91
  %140 = load i32, i32* %i, align 4
  %141 = load i32, i32* %RW, align 4
  %mul177 = mul nsw i32 %140, %141
  %142 = load i32, i32* %j, align 4
  %add178 = add nsw i32 %mul177, %142
  %mul179 = mul nsw i32 %add178, 4
  %add180 = add nsw i32 %mul179, 3
  %idxprom181 = sext i32 %add180 to i64
  %143 = load i8*, i8** %a, align 8
  %arrayidx182 = getelementptr inbounds i8, i8* %143, i64 %idxprom181
  store i8 -1, i8* %arrayidx182, align 1
  br label %if.end.183

if.end.183:                                       ; preds = %if.else.176, %if.then.162
  br label %for.inc

for.inc:                                          ; preds = %if.end.183
  %144 = load i32, i32* %j, align 4
  %inc = add nsw i32 %144, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  br label %for.inc.184

for.inc.184:                                      ; preds = %for.end
  %145 = load i32, i32* %i, align 4
  %inc185 = add nsw i32 %145, 1
  store i32 %inc185, i32* %i, align 4
  br label %for.cond

for.end.186:                                      ; preds = %for.cond
  br label %if.end.265

if.else.187:                                      ; preds = %do.end
  store i32 0, i32* %i, align 4
  br label %for.cond.188

for.cond.188:                                     ; preds = %for.inc.262, %if.else.187
  %146 = load i32, i32* %i, align 4
  %147 = load i32, i32* %RH, align 4
  %cmp189 = icmp slt i32 %146, %147
  br i1 %cmp189, label %for.body.191, label %for.end.264

for.body.191:                                     ; preds = %for.cond.188
  store i32 0, i32* %j, align 4
  br label %for.cond.192

for.cond.192:                                     ; preds = %for.inc.259, %for.body.191
  %148 = load i32, i32* %j, align 4
  %149 = load i32, i32* %RW, align 4
  %cmp193 = icmp slt i32 %148, %149
  br i1 %cmp193, label %for.body.195, label %for.end.261

for.body.195:                                     ; preds = %for.cond.192
  %150 = load i32, i32* %i, align 4
  %151 = load i32, i32* %RW, align 4
  %mul196 = mul nsw i32 %150, %151
  %152 = load i32, i32* %bytes, align 4
  %mul197 = mul nsw i32 %mul196, %152
  %153 = load i32, i32* %j, align 4
  %154 = load i32, i32* %bytes, align 4
  %mul198 = mul nsw i32 %153, %154
  %add199 = add nsw i32 %mul197, %mul198
  %add200 = add nsw i32 %add199, 0
  %idxprom201 = sext i32 %add200 to i64
  %155 = load i8*, i8** %rgb_array, align 8
  %arrayidx202 = getelementptr inbounds i8, i8* %155, i64 %idxprom201
  %156 = load i8, i8* %arrayidx202, align 1
  %157 = load i32, i32* %i, align 4
  %158 = load i32, i32* %RW, align 4
  %mul203 = mul nsw i32 %157, %158
  %159 = load i32, i32* %j, align 4
  %add204 = add nsw i32 %mul203, %159
  %mul205 = mul nsw i32 %add204, 4
  %add206 = add nsw i32 %mul205, 0
  %idxprom207 = sext i32 %add206 to i64
  %160 = load i8*, i8** %a, align 8
  %arrayidx208 = getelementptr inbounds i8, i8* %160, i64 %idxprom207
  store i8 %156, i8* %arrayidx208, align 1
  %161 = load i32, i32* %i, align 4
  %162 = load i32, i32* %RW, align 4
  %mul209 = mul nsw i32 %161, %162
  %163 = load i32, i32* %bytes, align 4
  %mul210 = mul nsw i32 %mul209, %163
  %164 = load i32, i32* %j, align 4
  %165 = load i32, i32* %bytes, align 4
  %mul211 = mul nsw i32 %164, %165
  %add212 = add nsw i32 %mul210, %mul211
  %add213 = add nsw i32 %add212, 1
  %idxprom214 = sext i32 %add213 to i64
  %166 = load i8*, i8** %rgb_array, align 8
  %arrayidx215 = getelementptr inbounds i8, i8* %166, i64 %idxprom214
  %167 = load i8, i8* %arrayidx215, align 1
  %168 = load i32, i32* %i, align 4
  %169 = load i32, i32* %RW, align 4
  %mul216 = mul nsw i32 %168, %169
  %170 = load i32, i32* %j, align 4
  %add217 = add nsw i32 %mul216, %170
  %mul218 = mul nsw i32 %add217, 4
  %add219 = add nsw i32 %mul218, 1
  %idxprom220 = sext i32 %add219 to i64
  %171 = load i8*, i8** %a, align 8
  %arrayidx221 = getelementptr inbounds i8, i8* %171, i64 %idxprom220
  store i8 %167, i8* %arrayidx221, align 1
  %172 = load i32, i32* %i, align 4
  %173 = load i32, i32* %RW, align 4
  %mul222 = mul nsw i32 %172, %173
  %174 = load i32, i32* %bytes, align 4
  %mul223 = mul nsw i32 %mul222, %174
  %175 = load i32, i32* %j, align 4
  %176 = load i32, i32* %bytes, align 4
  %mul224 = mul nsw i32 %175, %176
  %add225 = add nsw i32 %mul223, %mul224
  %add226 = add nsw i32 %add225, 2
  %idxprom227 = sext i32 %add226 to i64
  %177 = load i8*, i8** %rgb_array, align 8
  %arrayidx228 = getelementptr inbounds i8, i8* %177, i64 %idxprom227
  %178 = load i8, i8* %arrayidx228, align 1
  %179 = load i32, i32* %i, align 4
  %180 = load i32, i32* %RW, align 4
  %mul229 = mul nsw i32 %179, %180
  %181 = load i32, i32* %j, align 4
  %add230 = add nsw i32 %mul229, %181
  %mul231 = mul nsw i32 %add230, 4
  %add232 = add nsw i32 %mul231, 2
  %idxprom233 = sext i32 %add232 to i64
  %182 = load i8*, i8** %a, align 8
  %arrayidx234 = getelementptr inbounds i8, i8* %182, i64 %idxprom233
  store i8 %178, i8* %arrayidx234, align 1
  %183 = load i32, i32* %bytes, align 4
  %cmp235 = icmp eq i32 %183, 4
  br i1 %cmp235, label %if.then.237, label %if.else.251

if.then.237:                                      ; preds = %for.body.195
  %184 = load i32, i32* %i, align 4
  %185 = load i32, i32* %RW, align 4
  %mul238 = mul nsw i32 %184, %185
  %186 = load i32, i32* %bytes, align 4
  %mul239 = mul nsw i32 %mul238, %186
  %187 = load i32, i32* %j, align 4
  %188 = load i32, i32* %bytes, align 4
  %mul240 = mul nsw i32 %187, %188
  %add241 = add nsw i32 %mul239, %mul240
  %add242 = add nsw i32 %add241, 3
  %idxprom243 = sext i32 %add242 to i64
  %189 = load i8*, i8** %rgb_array, align 8
  %arrayidx244 = getelementptr inbounds i8, i8* %189, i64 %idxprom243
  %190 = load i8, i8* %arrayidx244, align 1
  %191 = load i32, i32* %i, align 4
  %192 = load i32, i32* %RW, align 4
  %mul245 = mul nsw i32 %191, %192
  %193 = load i32, i32* %j, align 4
  %add246 = add nsw i32 %mul245, %193
  %mul247 = mul nsw i32 %add246, 4
  %add248 = add nsw i32 %mul247, 3
  %idxprom249 = sext i32 %add248 to i64
  %194 = load i8*, i8** %a, align 8
  %arrayidx250 = getelementptr inbounds i8, i8* %194, i64 %idxprom249
  store i8 %190, i8* %arrayidx250, align 1
  br label %if.end.258

if.else.251:                                      ; preds = %for.body.195
  %195 = load i32, i32* %i, align 4
  %196 = load i32, i32* %RW, align 4
  %mul252 = mul nsw i32 %195, %196
  %197 = load i32, i32* %j, align 4
  %add253 = add nsw i32 %mul252, %197
  %mul254 = mul nsw i32 %add253, 4
  %add255 = add nsw i32 %mul254, 3
  %idxprom256 = sext i32 %add255 to i64
  %198 = load i8*, i8** %a, align 8
  %arrayidx257 = getelementptr inbounds i8, i8* %198, i64 %idxprom256
  store i8 -1, i8* %arrayidx257, align 1
  br label %if.end.258

if.end.258:                                       ; preds = %if.else.251, %if.then.237
  br label %for.inc.259

for.inc.259:                                      ; preds = %if.end.258
  %199 = load i32, i32* %j, align 4
  %inc260 = add nsw i32 %199, 1
  store i32 %inc260, i32* %j, align 4
  br label %for.cond.192

for.end.261:                                      ; preds = %for.cond.192
  br label %for.inc.262

for.inc.262:                                      ; preds = %for.end.261
  %200 = load i32, i32* %i, align 4
  %inc263 = add nsw i32 %200, 1
  store i32 %inc263, i32* %i, align 4
  br label %for.cond.188

for.end.264:                                      ; preds = %for.cond.188
  br label %if.end.265

if.end.265:                                       ; preds = %for.end.264, %for.end.186
  %201 = load %struct._GtkWidget*, %struct._GtkWidget** %preview.addr, align 8
  %202 = bitcast %struct._GtkWidget* %201 to %struct._GTypeInstance*
  %call266 = call i64 @gimp_preview_area_get_type() #5
  %call267 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %202, i64 %call266)
  %203 = bitcast %struct._GTypeInstance* %call267 to %struct._GimpPreviewArea*
  %204 = load i32, i32* %RW, align 4
  %205 = load i32, i32* %RH, align 4
  %206 = load i8*, i8** %a, align 8
  %207 = load i32, i32* %RW, align 4
  %mul268 = mul nsw i32 %207, 4
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %203, i32 0, i32 0, i32 %204, i32 %205, i32 1, i8* %206, i32 %mul268)
  %208 = load i8*, i8** %a, align 8
  call void @g_free(i8* %208)
  br label %return

return:                                           ; preds = %if.end.265, %if.else
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare i8* @g_object_get_data(%struct._GObject*, i8*) #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #2

declare void @gimp_hsv_to_rgb4(i8*, double, double, double) #2

declare void @gimp_preview_area_draw(%struct._GimpPreviewArea*, i32, i32, i32, i32, i32, i8*, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_preview_area_get_type() #3

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define void @rcm_render_circle(%struct._GtkWidget* %preview, i32 %sum, i32 %margin) #0 {
entry:
  %preview.addr = alloca %struct._GtkWidget*, align 8
  %sum.addr = alloca i32, align 4
  %margin.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %h = alloca double, align 8
  %s = alloca double, align 8
  %v = alloca double, align 8
  %a = alloca i8*, align 8
  store %struct._GtkWidget* %preview, %struct._GtkWidget** %preview.addr, align 8
  store i32 %sum, i32* %sum.addr, align 4
  store i32 %margin, i32* %margin.addr, align 4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %preview.addr, align 8
  %cmp = icmp eq %struct._GtkWidget* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %sum.addr, align 4
  %mul = mul nsw i32 3, %1
  %2 = load i32, i32* %sum.addr, align 4
  %mul1 = mul nsw i32 %mul, %2
  %conv = sext i32 %mul1 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call, i8** %a, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.78, %if.end
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %sum.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end.80

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %sum.addr, align 4
  %cmp5 = icmp slt i32 %5, %6
  br i1 %cmp5, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.4
  %7 = load i32, i32* %i, align 4
  %conv8 = sitofp i32 %7 to double
  %8 = load i32, i32* %sum.addr, align 4
  %conv9 = sitofp i32 %8 to double
  %div = fdiv double %conv9, 2.000000e+00
  %sub = fsub double %conv8, %div
  %9 = load i32, i32* %i, align 4
  %conv10 = sitofp i32 %9 to double
  %10 = load i32, i32* %sum.addr, align 4
  %conv11 = sitofp i32 %10 to double
  %div12 = fdiv double %conv11, 2.000000e+00
  %sub13 = fsub double %conv10, %div12
  %mul14 = fmul double %sub, %sub13
  %11 = load i32, i32* %j, align 4
  %conv15 = sitofp i32 %11 to double
  %12 = load i32, i32* %sum.addr, align 4
  %conv16 = sitofp i32 %12 to double
  %div17 = fdiv double %conv16, 2.000000e+00
  %sub18 = fsub double %conv15, %div17
  %13 = load i32, i32* %j, align 4
  %conv19 = sitofp i32 %13 to double
  %14 = load i32, i32* %sum.addr, align 4
  %conv20 = sitofp i32 %14 to double
  %div21 = fdiv double %conv20, 2.000000e+00
  %sub22 = fsub double %conv19, %div21
  %mul23 = fmul double %sub18, %sub22
  %add = fadd double %mul14, %mul23
  %15 = load i32, i32* %sum.addr, align 4
  %conv24 = sitofp i32 %15 to double
  %div25 = fdiv double %conv24, 2.000000e+00
  %16 = load i32, i32* %margin.addr, align 4
  %conv26 = sitofp i32 %16 to double
  %sub27 = fsub double %div25, %conv26
  %17 = load i32, i32* %sum.addr, align 4
  %conv28 = sitofp i32 %17 to double
  %div29 = fdiv double %conv28, 2.000000e+00
  %18 = load i32, i32* %margin.addr, align 4
  %conv30 = sitofp i32 %18 to double
  %sub31 = fsub double %div29, %conv30
  %mul32 = fmul double %sub27, %sub31
  %conv33 = fptrunc double %mul32 to float
  %conv34 = fpext float %conv33 to double
  %div35 = fdiv double %add, %conv34
  %call36 = call double @sqrt(double %div35) #4
  store double %call36, double* %s, align 8
  %19 = load double, double* %s, align 8
  %cmp37 = fcmp ogt double %19, 1.000000e+00
  br i1 %cmp37, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %for.body.7
  %20 = load i32, i32* %j, align 4
  %21 = load i32, i32* %sum.addr, align 4
  %mul40 = mul nsw i32 %20, %21
  %22 = load i32, i32* %i, align 4
  %add41 = add nsw i32 %mul40, %22
  %mul42 = mul nsw i32 %add41, 3
  %add43 = add nsw i32 %mul42, 0
  %idxprom = sext i32 %add43 to i64
  %23 = load i8*, i8** %a, align 8
  %arrayidx = getelementptr inbounds i8, i8* %23, i64 %idxprom
  store i8 -1, i8* %arrayidx, align 1
  %24 = load i32, i32* %j, align 4
  %25 = load i32, i32* %sum.addr, align 4
  %mul44 = mul nsw i32 %24, %25
  %26 = load i32, i32* %i, align 4
  %add45 = add nsw i32 %mul44, %26
  %mul46 = mul nsw i32 %add45, 3
  %add47 = add nsw i32 %mul46, 1
  %idxprom48 = sext i32 %add47 to i64
  %27 = load i8*, i8** %a, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %27, i64 %idxprom48
  store i8 -1, i8* %arrayidx49, align 1
  %28 = load i32, i32* %j, align 4
  %29 = load i32, i32* %sum.addr, align 4
  %mul50 = mul nsw i32 %28, %29
  %30 = load i32, i32* %i, align 4
  %add51 = add nsw i32 %mul50, %30
  %mul52 = mul nsw i32 %add51, 3
  %add53 = add nsw i32 %mul52, 2
  %idxprom54 = sext i32 %add53 to i64
  %31 = load i8*, i8** %a, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %31, i64 %idxprom54
  store i8 -1, i8* %arrayidx55, align 1
  br label %if.end.77

if.else:                                          ; preds = %for.body.7
  %32 = load i32, i32* %sum.addr, align 4
  %conv56 = sitofp i32 %32 to double
  %div57 = fdiv double %conv56, 2.000000e+00
  %33 = load i32, i32* %j, align 4
  %conv58 = sitofp i32 %33 to double
  %sub59 = fsub double %div57, %conv58
  %conv60 = fptrunc double %sub59 to float
  %34 = load i32, i32* %i, align 4
  %conv61 = sitofp i32 %34 to double
  %35 = load i32, i32* %sum.addr, align 4
  %conv62 = sitofp i32 %35 to double
  %div63 = fdiv double %conv62, 2.000000e+00
  %sub64 = fsub double %conv61, %div63
  %conv65 = fptrunc double %sub64 to float
  %call66 = call float @arctg(float %conv60, float %conv65)
  %conv67 = fpext float %call66 to double
  %div68 = fdiv double %conv67, 0x401921FB54442D18
  store double %div68, double* %h, align 8
  %36 = load double, double* %s, align 8
  %call69 = call double @sqrt(double %36) #4
  %div70 = fdiv double %call69, 4.000000e+00
  %sub71 = fsub double 1.000000e+00, %div70
  store double %sub71, double* %v, align 8
  %37 = load i32, i32* %j, align 4
  %38 = load i32, i32* %sum.addr, align 4
  %mul72 = mul nsw i32 %37, %38
  %39 = load i32, i32* %i, align 4
  %add73 = add nsw i32 %mul72, %39
  %mul74 = mul nsw i32 %add73, 3
  %idxprom75 = sext i32 %mul74 to i64
  %40 = load i8*, i8** %a, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %40, i64 %idxprom75
  %41 = load double, double* %h, align 8
  %42 = load double, double* %s, align 8
  %43 = load double, double* %v, align 8
  call void @gimp_hsv_to_rgb4(i8* %arrayidx76, double %41, double %42, double %43)
  br label %if.end.77

if.end.77:                                        ; preds = %if.else, %if.then.39
  br label %for.inc

for.inc:                                          ; preds = %if.end.77
  %44 = load i32, i32* %i, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.78

for.inc.78:                                       ; preds = %for.end
  %45 = load i32, i32* %j, align 4
  %inc79 = add nsw i32 %45, 1
  store i32 %inc79, i32* %j, align 4
  br label %for.cond

for.end.80:                                       ; preds = %for.cond
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %preview.addr, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call81 = call i64 @gimp_preview_area_get_type() #5
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call81)
  %48 = bitcast %struct._GTypeInstance* %call82 to %struct._GimpPreviewArea*
  %49 = load i32, i32* %sum.addr, align 4
  %50 = load i32, i32* %sum.addr, align 4
  %51 = load i8*, i8** %a, align 8
  %52 = load i32, i32* %sum.addr, align 4
  %mul83 = mul nsw i32 %52, 3
  call void @gimp_preview_area_draw(%struct._GimpPreviewArea* %48, i32 0, i32 0, i32 %49, i32 %50, i32 0, i8* %51, i32 %mul83)
  %53 = load i8*, i8** %a, align 8
  call void @g_free(i8* %53)
  br label %return

return:                                           ; preds = %for.end.80, %if.then
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
